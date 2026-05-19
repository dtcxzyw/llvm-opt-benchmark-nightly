inline.NumInlined: 1072
inline.NumDeleted: 47
begin_hunk_0_@_ZN6disasm15DisassemblerX6414AVXInstructionEPh:bb.a
  br label %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3426

_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3426: ; preds = %bb.ask, %bb.asl
  %.0.i3425 = phi ptr [ %i.hnw, %bb.asl ], [ %i.hnr, %bb.ask ]
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.326, ptr noundef %.0.i3425)
  %i.hnx = tail call noundef range(i32 1, 7) i32 @_ZN6disasm15DisassemblerX6423PrintRightOperandHelperEPhMS0_KFPKciE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull readonly %i.b, i64 ptrtoint (ptr @_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi to i64), i64 0)
  %i.hny = zext nneg i32 %i.hnx to i64
  %i.hnz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hny
  br label %bb.ast

bb.asm:                                           ; preds = %bb.adt
  %i.hoa = load ptr, ptr %0, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.hob = load ptr, ptr %i.hoa, align 8
  %i.hoc = getelementptr inbounds nuw i8, ptr %i.hob, i64 32
  %i.hod = load ptr, ptr %i.hoc, align 8
  %i.hoe = tail call noundef ptr %i.hod(ptr noundef nonnull align 8 dereferenceable(152) %i.hoa, i32 noundef %i.euf) #16, !inline_history !14
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.327, ptr noundef %i.hoe)
  %i.hof = tail call noundef range(i32 1, 7) i32 @_ZN6disasm15DisassemblerX6423PrintRightOperandHelperEPhMS0_KFPKciE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull readonly %i.b, i64 ptrtoint (ptr @_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi to i64), i64 0)
  %i.hog = zext nneg i32 %i.hof to i64
  %i.hoh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hog
  br label %bb.ast

bb.asn:                                           ; preds = %bb.adt
  %i.hoi = and i8 %i.f, 4
  %.not.i3429 = icmp eq i8 %i.hoi, 0
  br i1 %.not.i3429, label %bb.asp, label %bb.aso

bb.aso:                                           ; preds = %bb.asn
  %i.hoj = zext nneg i8 %i.eue to i64
  %i.hok = getelementptr inbounds nuw [8 x i8], ptr @_ZN6disasmL8ymm_regsE, i64 %i.hoj
  %i.hol = load ptr, ptr %i.hok, align 8
  br label %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3432

bb.asp:                                           ; preds = %bb.asn
  %i.hom = load ptr, ptr %0, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.hon = load ptr, ptr %i.hom, align 8
  %i.hoo = getelementptr inbounds nuw i8, ptr %i.hon, i64 32
  %i.hop = load ptr, ptr %i.hoo, align 8
  %i.hoq = tail call noundef ptr %i.hop(ptr noundef nonnull align 8 dereferenceable(152) %i.hom, i32 noundef %i.euf) #16, !inline_history !16
  br label %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3432

_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3432: ; preds = %bb.aso, %bb.asp
  %.0.i3431 = phi ptr [ %i.hoq, %bb.asp ], [ %i.hol, %bb.aso ]
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.328, ptr noundef %.0.i3431)
  %i.hor = tail call noundef range(i32 1, 7) i32 @_ZN6disasm15DisassemblerX6423PrintRightOperandHelperEPhMS0_KFPKciE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull readonly %i.b, i64 ptrtoint (ptr @_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi to i64), i64 0)
  %i.hos = zext nneg i32 %i.hor to i64
  %i.hot = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hos
  br label %bb.ast

bb.asq:                                           ; preds = %bb.adt
  %i.hou = load ptr, ptr %0, align 8, !nonnull !9, !align !10 ; 2 uses
  %i.hov = load ptr, ptr %i.hou, align 8
  %i.how = getelementptr inbounds nuw i8, ptr %i.hov, i64 32
  %i.hox = load ptr, ptr %i.how, align 8
  %i.hoy = tail call noundef ptr %i.hox(ptr noundef nonnull align 8 dereferenceable(152) %i.hou, i32 noundef %i.euf) #16, !inline_history !14
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.329, ptr noundef %i.hoy)
  %i.hoz = tail call noundef range(i32 1, 7) i32 @_ZN6disasm15DisassemblerX6423PrintRightOperandHelperEPhMS0_KFPKciE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull readonly %i.b, i64 ptrtoint (ptr @_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi to i64), i64 0)
  %i.hpa = zext nneg i32 %i.hoz to i64
  %i.hpb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hpa
  br label %bb.ast

bb.asr:                                           ; preds = %bb.adt
  tail call void @_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %bb.ast

default.unreachable:                              ; preds = %bb.a
  unreachable

.thread3733:                                      ; preds = %bb.xn, %.thread3730, %bb.ye, %.thread3734
  %i.hpc = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.hpd = load i8, ptr %i.hpc, align 4, !range !13, !noundef !9
  %i.hpe = trunc nuw i8 %i.hpd to i1
  br i1 %i.hpe, label %bb.ass, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit

bb.ass:                                           ; preds = %.thread3733
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit: ; preds = %.thread3733
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %bb.ast

bb.ast:                                           ; preds = %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2538, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2544, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2550, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2556, %bb.aeg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2562, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2568, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2574, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2580, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2586, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2592, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2598, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2610, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2622, %bb.afm, %bb.afn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2634, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2646, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2658, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2670, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2682, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2694, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2706, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2718, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2730, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2742, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2754, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2766, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2778, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2790, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2802, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2814, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2826, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2838, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2850, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2862, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2874, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2886, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2898, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2910, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2922, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2934, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2946, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2958, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2970, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2982, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2994, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3006, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3018, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3030, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3042, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3054, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3066, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3078, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3090, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3102, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3114, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3126, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3138, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3150, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3162, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3174, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3186, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3198, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3210, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3222, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3234, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3246, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3258, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3270, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3282, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3294, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3306, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3318, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3330, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3342, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3354, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3366, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3378, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3390, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3402, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3414, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3420, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3426, %bb.asm, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3432, %bb.asq, %bb.asr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2257, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2263, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2293, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2323, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2329, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2335, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2341, %bb.aap, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2353, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2365, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2371, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2377, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2383, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2389, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2395, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2407, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2419, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2431, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2443, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2455, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2467, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2479, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2491, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2503, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2515, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2527, %bb.ads, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2287, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2275, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2317, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2305, %bb.yv, %bb.yw, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2233, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2237, %bb.ym, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2204, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2208, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2212, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2224, %bb.yd, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2183, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2187, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2191, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2195, %bb.xm, %bb.tz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2024, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2030, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2042, %bb.up, %bb.uq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2048, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2054, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2066, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2078, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2090, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2102, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2114, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2126, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2138, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2150, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2162, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2174, %bb.wv, %bb.qr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1839, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1845, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1857, %bb.rh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1869, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1881, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1893, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1905, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1911, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1923, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1935, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1947, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1959, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1965, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1971, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1977, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1983, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1995, %bb.tq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1600, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1612, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1618, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1624, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1636, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1648, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1660, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1672, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1678, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1684, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1690, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1696, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1702, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1708, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1720, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1732, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1744, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1756, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1774, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1792, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1810, %bb.qi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit797, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit803, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit815, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit827, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit839, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit851, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit863, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit875, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit887, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit899, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit911, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit923, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit935, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit947, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit959, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit971, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit983, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit995, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1007, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1019, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1031, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1043, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1055, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1067, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1073, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1079, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1085, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1091, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1097, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1103, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1109, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1115, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1121, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1127, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1133, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1139, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1145, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1151, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1157, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1385, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1397, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1409, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1421, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1433, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1445, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1457, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1469, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1481, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1493, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1505, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1517, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1529, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1541, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1553, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1565, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1577, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1589, %bb.mq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1169, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1181, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1193, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1205, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1217, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1229, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1241, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1253, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1265, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1277, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1289, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1301, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1313, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1325, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1337, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1349, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1361, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1373, %bb.jc, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit
  %.10 = phi ptr [ %i.b, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit ], [ %i.adl, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1157 ], [ %i.cer, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1810 ], [ %i.cva, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1995 ], [ %i.dks, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2174 ], [ %i.dot, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2195 ], [ %i.dsv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2224 ], [ %i.duy, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2237 ], [ %i.b, %bb.yw ], [ %i.etq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2527 ], [ %i.b, %bb.jc ], [ %i.aek, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1169 ], [ %i.afi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1181 ], [ %i.agg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1193 ], [ %i.ahe, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1205 ], [ %i.aic, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1217 ], [ %i.aja, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1229 ], [ %i.ajy, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1241 ], [ %i.akw, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1253 ], [ %i.alu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1265 ], [ %i.ams, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1277 ], [ %i.anq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1289 ], [ %i.aoo, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1301 ], [ %i.apm, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1313 ], [ %i.aqk, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1325 ], [ %i.ari, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1337 ], [ %i.asg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1349 ], [ %i.ate, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1361 ], [ %i.auc, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1373 ], [ %i.b, %bb.mq ], [ %i.ava, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1385 ], [ %i.avy, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1397 ], [ %i.aww, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1409 ], [ %i.axu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1421 ], [ %i.ays, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1433 ], [ %i.azq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1445 ], [ %i.bao, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1457 ], [ %i.bbm, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1469 ], [ %i.bck, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1481 ], [ %i.bdi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1493 ], [ %i.beg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1505 ], [ %i.bfe, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1517 ], [ %i.bgc, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1529 ], [ %i.bha, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1541 ], [ %i.bhy, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1553 ], [ %i.biw, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1565 ], [ %i.bju, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1577 ], [ %i.bks, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1589 ], [ %i.ak, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit ], [ %i.aw, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit797 ], [ %i.bi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit803 ], [ %i.ca, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit ], [ %i.dd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit815 ], [ %i.eb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit827 ], [ %i.ez, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit839 ], [ %i.fx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit851 ], [ %i.gv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit863 ], [ %i.ht, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit875 ], [ %i.ir, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit887 ], [ %i.jp, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit899 ], [ %i.kn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit911 ], [ %i.ll, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit923 ], [ %i.mj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit935 ], [ %i.nh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit947 ], [ %i.of, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit959 ], [ %i.pd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit971 ], [ %i.qb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit983 ], [ %i.qz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit995 ], [ %i.rx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1007 ], [ %i.sv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1019 ], [ %i.tt, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1031 ], [ %i.ur, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1043 ], [ %i.vp, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1055 ], [ %i.wn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1067 ], [ %i.wz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1073 ], [ %i.xl, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1079 ], [ %i.xx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1085 ], [ %i.yj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1091 ], [ %i.yv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1097 ], [ %i.zh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1103 ], [ %i.zt, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1109 ], [ %i.aaf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1115 ], [ %i.aar, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1121 ], [ %i.abd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1127 ], [ %i.abp, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1133 ], [ %i.acb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1139 ], [ %i.acn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1145 ], [ %i.acz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1151 ], [ %i.b, %bb.qi ], [ %i.blt, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1600 ], [ %i.bmu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1612 ], [ %i.bnj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1618 ], [ %i.bny, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1624 ], [ %i.boz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1636 ], [ %i.bqa, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1648 ], [ %i.brb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1660 ], [ %i.bsc, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1672 ], [ %i.bsu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1678 ], [ %i.btm, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1684 ], [ %i.bug, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1690 ], [ %i.buy, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1696 ], [ %i.bvq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1702 ], [ %i.bwi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1708 ], [ %i.bxj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1720 ], [ %i.byk, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1732 ], [ %i.bzn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1744 ], [ %i.cao, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1756 ], [ %i.cbp, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1774 ], [ %i.cdd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1792 ], [ %i.b, %bb.tq ], [ %i.cgw, %bb.qr ], [ %i.cgz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1839 ], [ %i.cik, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1845 ], [ %i.cjm, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1857 ], [ %i.cjz, %bb.rh ], [ %i.ckx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1869 ], [ %i.clv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1881 ], [ %i.cmt, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1893 ], [ %i.cnr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1905 ], [ %i.cod, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1911 ], [ %i.cpb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1923 ], [ %i.cpz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1935 ], [ %i.cqx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1947 ], [ %i.crv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1959 ], [ %i.csh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1965 ], [ %i.csu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1971 ], [ %i.csz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1977 ], [ %i.ctx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit1983 ], [ %i.b, %bb.wv ], [ %i.cwq, %bb.tz ], [ %i.cwt, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2024 ], [ %i.cye, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2030 ], [ %i.czg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2042 ], [ %i.czt, %bb.up ], [ %i.dag, %bb.uq ], [ %i.das, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2048 ], [ %i.dbf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2054 ], [ %i.dcf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2066 ], [ %i.ddi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2078 ], [ %i.deg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2090 ], [ %i.dfe, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2102 ], [ %i.dgc, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2114 ], [ %i.dha, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2126 ], [ %i.dhy, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2138 ], [ %i.diw, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2150 ], [ %i.dju, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2162 ], [ %i.b, %bb.xm ], [ %i.dme, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2183 ], [ %i.dmw, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2187 ], [ %i.dnt, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2191 ], [ %i.b, %bb.yd ], [ %i.dqd, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2204 ], [ %i.dra, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2208 ], [ %i.drs, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2212 ], [ %i.b, %bb.ym ], [ %i.dug, %_ZN6disasm15DisassemblerX6417operand_size_codeEv.exit2233 ], [ %i.dwr, %bb.yv ], [ %i.b, %bb.ads ], [ %i.dxu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2257 ], [ %i.dxx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2263 ], [ %i.dzi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2275 ], [ %i.eaf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2287 ], [ %i.eai, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2293 ], [ %i.ebt, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2305 ], [ %i.ecq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2317 ], [ %i.ect, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2323 ], [ %i.edr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2329 ], [ %i.edu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2335 ], [ %i.ees, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2341 ], [ %i.efa, %bb.aap ], [ %i.egd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2353 ], [ %i.ehc, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2365 ], [ %i.ehq, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2371 ], [ %i.eic, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2377 ], [ %i.eio, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2383 ], [ %i.eja, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2389 ], [ %i.ejm, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2395 ], [ %i.ekk, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2407 ], [ %i.eli, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2419 ], [ %i.emg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2431 ], [ %i.ene, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2443 ], [ %i.eoc, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2455 ], [ %i.epa, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2467 ], [ %i.epy, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2479 ], [ %i.eqw, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2491 ], [ %i.eru, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2503 ], [ %i.ess, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2515 ], [ %i.b, %bb.asr ], [ %i.eur, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2538 ], [ %i.euu, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2544 ], [ %i.evs, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2550 ], [ %i.evv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2556 ], [ %i.ewp, %bb.aeg ], [ %i.exg, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2562 ], [ %i.exs, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2568 ], [ %i.eyf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2574 ], [ %i.eyy, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2580 ], [ %i.ezr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2586 ], [ %i.fak, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2592 ], [ %i.fau, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2598 ], [ %i.fcj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2610 ], [ %i.fdi, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2622 ], [ %i.fdt, %bb.afm ], [ %i.fed, %bb.afn ], [ %i.ffb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2634 ], [ %i.ffz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2646 ], [ %i.fgx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2658 ], [ %i.fhv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2670 ], [ %i.fit, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2682 ], [ %i.fjr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2694 ], [ %i.fkp, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2706 ], [ %i.fln, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2718 ], [ %i.fml, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2730 ], [ %i.fnj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2742 ], [ %i.foh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2754 ], [ %i.fpf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2766 ], [ %i.fqd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2778 ], [ %i.frb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2790 ], [ %i.frz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2802 ], [ %i.fsx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2814 ], [ %i.ftv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2826 ], [ %i.fut, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2838 ], [ %i.fvr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2850 ], [ %i.fwp, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2862 ], [ %i.fxn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2874 ], [ %i.fyl, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2886 ], [ %i.fzj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2898 ], [ %i.gah, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2910 ], [ %i.gbf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2922 ], [ %i.gcd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2934 ], [ %i.gdb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2946 ], [ %i.gdz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2958 ], [ %i.gex, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2970 ], [ %i.gfv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2982 ], [ %i.ggt, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit2994 ], [ %i.ghr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3006 ], [ %i.gip, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3018 ], [ %i.gjn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3030 ], [ %i.gkl, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3042 ], [ %i.glj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3054 ], [ %i.gmh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3066 ], [ %i.gnf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3078 ], [ %i.god, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3090 ], [ %i.gpb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3102 ], [ %i.gpz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3114 ], [ %i.gqx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3126 ], [ %i.grv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3138 ], [ %i.gst, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3150 ], [ %i.gtr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3162 ], [ %i.gup, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3174 ], [ %i.gvn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3186 ], [ %i.gwl, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3198 ], [ %i.gxj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3210 ], [ %i.gyh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3222 ], [ %i.gzf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3234 ], [ %i.had, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3246 ], [ %i.hbb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3258 ], [ %i.hbz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3270 ], [ %i.hcx, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3282 ], [ %i.hdv, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3294 ], [ %i.het, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3306 ], [ %i.hfr, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3318 ], [ %i.hgp, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3330 ], [ %i.hhn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3342 ], [ %i.hil, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3354 ], [ %i.hjj, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3366 ], [ %i.hkh, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3378 ], [ %i.hlf, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3390 ], [ %i.hmd, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3402 ], [ %i.hnb, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3414 ], [ %i.hnn, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3420 ], [ %i.hnz, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3426 ], [ %i.hoh, %bb.asm ], [ %i.hot, %_ZNK6disasm15DisassemblerX6417NameOfAVXRegisterEi.exit3432 ], [ %i.hpb, %bb.asq ]
  %i.hpf = ptrtoint ptr %.10 to i64
  %i.hpg = ptrtoint ptr %1 to i64
  %i.hph = sub i64 %i.hpf, %i.hpg
  %i.hpi = trunc i64 %i.hph to i32
  ret i32 %i.hpi
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 2, 8) i32 @_ZN6disasm15DisassemblerX6414FPUInstructionEPh(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = icmp ugt i8 %i.c, -65
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext i8 %i.a to i32
  %i.f = tail call noundef i32 @_ZN6disasm15DisassemblerX6422RegisterFPUInstructionEih(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %i.e, i8 noundef zeroext %i.c) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = zext i8 %i.c to i32
  %i.h = zext i8 %i.a to i32
  %i.i = tail call noundef i32 @_ZN6disasm15DisassemblerX6420MemoryFPUInstructionEiiPh(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %i.h, i32 noundef %i.g, ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 2, %bb.b ], [ %i.i, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6disasm15DisassemblerX6422RegisterFPUInstructionEih(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 align 2 {
bb.a:
  switch i32 %1, label %bb.z [
    i32 216, label %bb.b
    i32 217, label %bb.d
    i32 218, label %bb.h
    i32 219, label %bb.k
    i32 220, label %bb.o
    i32 221, label %bb.r
    i32 222, label %bb.v
    i32 223, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.b = load i8, ptr %i.a, align 4, !range !13, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit: ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %.thread

bb.d:                                             ; preds = %bb.a
  %trunc = and i8 %2, -8
  switch i8 %trunc, label %bb.f [
    i8 -64, label %.thread31
    i8 -56, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %.thread31

bb.f:                                             ; preds = %bb.d
  %switch.tableidx = add i8 %2, 32                ; 2 uses
  %i.d = icmp ugt i8 %2, -33
  br i1 %i.d, label %switch.hole_check, label %bb.g

bb.g:                                             ; preds = %switch.hole_check, %bb.f
  tail call void @_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %.thread

bb.h:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %2, -23
  br i1 %i.e, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.g = load i8, ptr %i.f, align 4, !range !13, !noundef !9
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.j, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit22

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit22: ; preds = %bb.i
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %.thread

bb.k:                                             ; preds = %bb.a
  %i.i = and i8 %2, -8
  %i.j = icmp eq i8 %i.i, -24
  br i1 %i.j, label %.thread31, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i8 %2, label %bb.n [
    i8 -30, label %.thread
    i8 -29, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %.thread

bb.n:                                             ; preds = %bb.l
  tail call void @_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %.thread

bb.o:                                             ; preds = %bb.a
  %3 = zext i8 %2 to i32
  %4 = add nsw i32 %3, -192                       ; 2 uses
  %5 = lshr i32 %4, 3                             ; 2 uses
  %i.k = icmp ult i32 %4, 64
  %switch.maskindex38 = trunc i32 %5 to i8
  %switch.shifted39 = lshr i8 -93, %switch.maskindex38
  %switch.lobit40 = trunc i8 %switch.shifted39 to i1
  %or.cond = select i1 %i.k, i1 %switch.lobit40, i1 false
  br i1 %or.cond, label %switch.lookup37, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.m = load i8, ptr %i.l, align 4, !range !13, !noundef !9
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.q, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit23

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit23: ; preds = %bb.p
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %.thread31

bb.r:                                             ; preds = %bb.a
  %i.o = and i8 %2, -8
  switch i8 %i.o, label %bb.t [
    i8 -64, label %.thread31
    i8 -40, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %.thread31

bb.t:                                             ; preds = %bb.r
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.q = load i8, ptr %i.p, align 4, !range !13, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.u, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit24

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit24: ; preds = %bb.t
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %.thread31

bb.v:                                             ; preds = %bb.a
  %i.s = icmp eq i8 %2, -39
  br i1 %i.s, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %6 = zext i8 %2 to i32
  %7 = add nsw i32 %6, -192                       ; 2 uses
  %8 = lshr i32 %7, 3                             ; 2 uses
  %i.t = icmp ult i32 %7, 64
  %switch.maskindex46 = trunc i32 %8 to i8
  %switch.shifted47 = lshr i8 -93, %switch.maskindex46
  %switch.lobit48 = trunc i8 %switch.shifted47 to i1
  %or.cond51 = select i1 %i.t, i1 %switch.lobit48, i1 false
  br i1 %or.cond51, label %switch.lookup45, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv(ptr noundef nonnull align 8 dereferenceable(176) %0)
  br label %.thread31

bb.y:                                             ; preds = %bb.a
  %i.u = icmp eq i8 %2, -32
  br i1 %i.u, label %.thread, label %bb.ab

bb.z:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.w = load i8, ptr %i.v, align 4, !range !13, !noundef !9
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.aa, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit25

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit25: ; preds = %bb.z
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %.thread

bb.ab:                                            ; preds = %bb.y
  %i.y = and i8 %2, -8
  %i.z = icmp eq i8 %i.y, -24
  br i1 %i.z, label %.thread31, label %.thread

switch.lookup37:                                  ; preds = %bb.o
  %i.aa = zext nneg i32 %5 to i64
  %switch.gep41 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6disasm15DisassemblerX6422RegisterFPUInstructionEih.3, i64 %i.aa
  %switch.load42 = load ptr, ptr %switch.gep41, align 8
  br label %.thread31

switch.lookup45:                                  ; preds = %bb.w
  %i.ab = zext nneg i32 %8 to i64
  %switch.gep49 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6disasm15DisassemblerX6422RegisterFPUInstructionEih.4, i64 %i.ab
  %switch.load50 = load ptr, ptr %switch.gep49, align 8
  br label %.thread31

.thread31:                                        ; preds = %switch.lookup45, %switch.lookup37, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit23, %bb.k, %bb.x, %bb.r, %bb.e, %bb.s, %bb.d, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit24, %bb.ab
  %.034 = phi ptr [ @.str.376, %bb.ab ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit24 ], [ %switch.load42, %switch.lookup37 ], [ @.str.342, %bb.e ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit23 ], [ @.str.369, %bb.s ], [ @.str.341, %bb.d ], [ @.str.362, %bb.k ], [ %switch.load50, %switch.lookup45 ], [ @.str.198, %bb.x ], [ @.str.368, %bb.r ]
  %i.ac = and i8 %2, 7
  %i.ad = zext nneg i8 %i.ac to i32
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.377, ptr noundef nonnull %.034, i32 noundef %i.ad)
  br label %bb.ac

switch.hole_check:                                ; preds = %bb.f
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 -240686821, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.g

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ae = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6disasm15DisassemblerX6422RegisterFPUInstructionEih, i64 %i.ae
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %.thread

.thread:                                          ; preds = %switch.lookup, %bb.y, %bb.v, %bb.l, %bb.n, %bb.m, %bb.h, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit22, %bb.g, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit25, %bb.ab
  %.028 = phi ptr [ @.str.198, %bb.ab ], [ @.str.375, %bb.y ], [ @.str.370, %bb.v ], [ @.str.363, %bb.l ], [ @.str.198, %bb.n ], [ @.str.345, %bb.m ], [ @.str.361, %bb.h ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit22 ], [ %switch.load, %switch.lookup ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit25 ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit ], [ @.str.198, %bb.g ]
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %.028)
  br label %bb.ac

bb.ac:                                            ; preds = %.thread, %.thread31
  ret i32 2
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 2, 8) i32 @_ZN6disasm15DisassemblerX6420MemoryFPUInstructionEiiPh(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = lshr i32 %2, 3
  %i.b = and i32 %i.a, 7                          ; 5 uses
  switch i32 %1, label %bb.r [
    i32 217, label %bb.b
    i32 219, label %bb.g
    i32 221, label %bb.j
    i32 223, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.t
    i32 3, label %bb.c
    i32 7, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.d = load i8, ptr %i.c, align 4, !range !13, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.f, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit: ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %i.b, 4
  br i1 %i.f, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.h = load i8, ptr %i.g, align 4, !range !13, !noundef !9
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.i, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit9

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit9: ; preds = %bb.h
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.l [
    i32 0, label %bb.t
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.t

bb.l:                                             ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.k = load i8, ptr %i.j, align 4, !range !13, !noundef !9
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.m, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit10

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit10: ; preds = %bb.l
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %bb.t

bb.n:                                             ; preds = %bb.a
  switch i32 %i.b, label %bb.p [
    i32 5, label %bb.t
    i32 7, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.n = load i8, ptr %i.m, align 4, !range !13, !noundef !9
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.q, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit11

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit11: ; preds = %bb.p
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %bb.t

bb.r:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.q = load i8, ptr %i.p, align 4, !range !13, !noundef !9
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.s, label %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit12

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.659) #17
  unreachable

_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit12: ; preds = %bb.r
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.659)
  br label %bb.t

switch.lookup:                                    ; preds = %bb.g
  %i.s = zext nneg i32 %i.b to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6disasm15DisassemblerX6420MemoryFPUInstructionEiiPh, i64 %i.s
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.t

bb.t:                                             ; preds = %switch.lookup, %bb.n, %bb.j, %bb.b, %bb.o, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit11, %bb.k, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit10, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit9, %bb.c, %bb.d, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit12
  %.0 = phi ptr [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit12 ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit ], [ @.str.340, %bb.o ], [ @.str.331, %bb.c ], [ @.str.332, %bb.d ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit9 ], [ @.str.330, %bb.b ], [ @.str.339, %bb.n ], [ @.str.337, %bb.j ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit11 ], [ @.str.198, %_ZN6disasm15DisassemblerX6424UnimplementedInstructionEv.exit10 ], [ %switch.load, %switch.lookup ], [ @.str.338, %bb.k ]
  tail call void (ptr, ptr, ...) @_ZN6disasm15DisassemblerX6414AppendToBufferEPKcz(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %.0)
  %i.t = tail call noundef range(i32 1, 7) i32 @_ZN6disasm15DisassemblerX6423PrintRightOperandHelperEPhMS0_KFPKciE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef readonly %3, i64 ptrtoint (ptr @_ZNK6disasm15DisassemblerX6417NameOfCPURegisterEi to i64), i64 0)
  %i.u = add nuw nsw i32 %i.t, 1
  ret i32 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6disasm15DisassemblerX6424TwoByteOpcodeInstructionEPh(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1               ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 169 uses
  %i.d = tail call noundef ptr @_ZN6disasm15DisassemblerX6415TwoByteMnemonicEh(ptr noundef nonnull align 8 dereferenceable(176) %0, i8 noundef zeroext %i.b) ; 10 uses
  %i.e = load i8, ptr %i.c, align 1               ; 20 uses
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = lshr i32 %i.f, 6                         ; 4 uses
  %i.h = lshr i32 %i.f, 3
  %i.i = and i32 %i.h, 7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 157 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1               ; 14 uses
  %i.l = shl i8 %i.k, 1
  %i.m = and i8 %i.l, 8                           ; 19 uses
  %i.n = zext nneg i8 %i.m to i32
  %i.o = or disjoint i32 %i.i, %i.n               ; 22 uses
  %i.p = and i32 %i.f, 7
  %i.q = trunc i8 %i.k to i1
  %i.r = select i1 %i.q, i32 8, i32 0             ; 2 uses
  %i.s = or disjoint i32 %i.r, %i.p               ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 158 ; 3 uses
  %i.u = load i8, ptr %i.t, align 2               ; 11 uses
  %i.v = icmp eq i8 %i.u, 102
  br i1 %i.v, label %bb.b, label %bb.cy

bb.b:                                             ; preds = %bb.a
  switch i8 %i.b, label %bb.ad [
    i8 -63, label %bb.c
    i8 31, label %bb.f
    i8 16, label %bb.j
    i8 17, label %bb.k
    i8 40, label %bb.l
    i8 41, label %bb.m
    i8 110, label %bb.n
    i8 111, label %bb.o
end_hunk_0
