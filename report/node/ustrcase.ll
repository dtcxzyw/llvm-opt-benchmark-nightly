inline.NumInlined: 43
inline.NumDeleted: 10
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_112appendResultEPDsiiiPKDsijPNS_5EditsE:bb.a

bb.n:                                             ; preds = %bb.e, %bb.l, %bb.m
  %.172 = phi i32 [ %.071, %bb.l ], [ %.071, %bb.m ], [ %i.e, %bb.e ] ; 6 uses
  %.1 = phi i32 [ %.070, %bb.l ], [ %.070, %bb.m ], [ %5, %bb.e ] ; 12 uses
  %i.t = sub nsw i32 2147483647, %1
  %i.u = icmp sgt i32 %.1, %i.t
  br i1 %i.u, label %.loopexit, label %bb.o
end_hunk_0
begin_hunk_1_@_ZN6icu_7812_GLOBAL__N_112appendResultEPDsiiiPKDsijPNS_5EditsE:bb.a
  br i1 %i.as, label %.lr.ph.preheader.a, label %.loopexit

.lr.ph.preheader.a:                               ; preds = %.preheader
  %i.at = sext i32 %1 to i64                      ; 7 uses
  %i.au = zext nneg i32 %.1 to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %.1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader116, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.a
end_hunk_1
begin_hunk_2_@_ZN6icu_7812_GLOBAL__N_112appendResultEPDsiiiPKDsijPNS_5EditsE:bb.a
  %i.aw = add i64 %i.av, %i.b
  %i.ax = sub i64 %i.aw, %i.a
  %diff.check = icmp ult i64 %i.ax, 32
  br i1 %diff.check, label %.lr.ph.preheader116, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check112 = icmp ult i32 %.1, 16
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.au, 12
  %n.vec = and i64 %i.au, 2147483632              ; 6 uses
  %i.ay = add nsw i64 %n.vec, %i.at               ; 2 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.az = sub nsw i32 %.1, %.cast
end_hunk_2
begin_hunk_3_@_ZN6icu_7812_GLOBAL__N_112appendResultEPDsiiiPKDsijPNS_5EditsE:bb.a
  store <8 x i16> %wide.load113, ptr %i.bd, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.au
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader116, label %vec.epilog.ph, !prof !11

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec118 = and i64 %i.au, 2147483644           ; 5 uses
  %8 = add nsw i64 %n.vec118, %i.at               ; 2 uses
  %.cast119 = trunc nuw nsw i64 %n.vec118 to i32
  %9 = sub nsw i32 %.1, %.cast119
  %10 = shl nuw nsw i64 %n.vec118, 1
  %11 = getelementptr i8, ptr %4, i64 %10
  %invariant.gep130 = getelementptr [2 x i8], ptr %0, i64 %i.at
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next123, %vec.epilog.vector.body ] ; 3 uses
  %12 = shl i64 %index120, 1
  %next.gep121 = getelementptr i8, ptr %4, i64 %12
  %wide.load122 = load <4 x i16>, ptr %next.gep121, align 2
  %gep131 = getelementptr [2 x i8], ptr %invariant.gep130, i64 %index120
  store <4 x i16> %wide.load122, ptr %gep131, align 2
  %index.next123 = add nuw i64 %index120, 4       ; 2 uses
  %13 = icmp eq i64 %index.next123, %n.vec118
  br i1 %13, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !12

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %n.vec118, %i.au
  br i1 %cmp.n.a, label %.loopexit.loopexit, label %.lr.ph.preheader116

.lr.ph.preheader116:                              ; preds = %vector.memcheck, %.lr.ph.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %indvars.iv.ph = phi i64 [ %i.at, %.lr.ph.preheader.a ], [ %i.at, %vector.memcheck ], [ %i.ay, %vec.epilog.iter.check ], [ %8, %middle.block.a ]
  %.2101.ph = phi i32 [ %.1, %.lr.ph.preheader.a ], [ %.1, %vector.memcheck ], [ %i.az, %vec.epilog.iter.check ], [ %9, %middle.block.a ]
  %.07799.ph = phi ptr [ %4, %.lr.ph.preheader.a ], [ %4, %vector.memcheck ], [ %i.bb, %vec.epilog.iter.check ], [ %11, %middle.block.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader116, %.lr.ph
end_hunk_3
begin_hunk_4_@_ZN6icu_7812_GLOBAL__N_112appendResultEPDsiiiPKDsijPNS_5EditsE:bb.a
  store i16 %i.bg, ptr %i.bh, align 2
  %i.bi = add nsw i32 %.2101, -1
  %i.bj = icmp samesign ugt i32 %.2101, 1
  br i1 %i.bj, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !13

bb.x:                                             ; preds = %bb.o
  %i.bk = add nsw i32 %.1, %1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %.lr.ph, %middle.block.a, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %8, %middle.block.a ], [ %i.ay, %middle.block ], [ %indvars.iv.next, %.lr.ph ]
  %i.bl = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

end_hunk_4
begin_hunk_5_@_ZN6icu_7812_GLOBAL__N_17toLowerEijPDsiPKDsP12UCaseContextiiPNS_5EditsER10UErrorCode:bb.a
  %i.ao = ashr i16 %i.aj, 7                       ; 2 uses
  %i.ap = icmp eq i16 %i.ao, 0
  %or.cond305 = or i1 %.not167, %i.ap
  br i1 %or.cond305, label %.thread187, label %bb.m, !llvm.loop !14

bb.m:                                             ; preds = %bb.l, %bb.i
  %.4148 = phi i32 [ %i.w, %bb.i ], [ %i.am, %bb.l ] ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN6icu_7810GreekUpper7toUpperEjPDsiPKDsiPNS_5EditsER10UErrorCode:bb.a
  %i.ee = add nuw nsw i32 %.3147285, 1            ; 2 uses
  %i.ef = add nsw i32 %.4166284, -1
  %i.eg = icmp samesign ugt i32 %.4166284, 1
  br i1 %i.eg, label %.lr.ph286, label %._crit_edge.thread316, !llvm.loop !15

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_111appendUCharEPDsiiDs.exit242
  %i.eh = icmp slt i32 %.2146, 0
end_hunk_6
begin_hunk_7_@_ZN6icu_7810GreekUpper7toUpperEjPDsiPKDsiPNS_5EditsER10UErrorCode:bb.a
  %.1159 = phi i32 [ %.1179, %._crit_edge ], [ %.1179, %bb.am ], [ %.0178, %.critedge233 ], [ %.1179, %_ZN6icu_7812_GLOBAL__N_111appendUCharEPDsiiDs.exit244 ]
  %.7 = phi i32 [ %.2146, %._crit_edge ], [ %.0144291, %bb.am ], [ %i.el, %.critedge233 ], [ %i.ee, %_ZN6icu_7812_GLOBAL__N_111appendUCharEPDsiiDs.exit244 ] ; 2 uses
  %.not223 = icmp slt i32 %.1161, %4
  br i1 %.not223, label %bb.b, label %.thread267, !llvm.loop !16

.thread267:                                       ; preds = %._crit_edge.thread316, %bb.a, %._crit_edge.thread, %bb.az
  %spec.select234 = phi i32 [ 0, %bb.az ], [ 0, %._crit_edge.thread ], [ 0, %bb.a ], [ %.7, %._crit_edge.thread316 ]
end_hunk_7
begin_hunk_8_@ustrcase_internalToUpper_78:bb.a
  %i.an = ashr i16 %i.ai, 7                       ; 2 uses
  %i.ao = icmp eq i16 %i.an, 0
  %or.cond289.i = or i1 %i.ao, %.not154.i
  br i1 %or.cond289.i, label %.thread173.i, label %bb.j, !llvm.loop !17

bb.j:                                             ; preds = %bb.i, %bb.f
  %.4136.i = phi i32 [ %i.v, %bb.f ], [ %i.al, %bb.i ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %i.y = getelementptr inbounds [24 x i8], ptr %7, i64 %indvars.iv.next ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.preheader7.us, label %bb.h, !llvm.loop !18

bb.h:                                             ; preds = %.preheader7.us
  %i.ab = trunc nsw i64 %indvars.iv.next to i32
end_hunk_9
begin_hunk_10_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  br label %.preheader9.split.us, !llvm.loop !19

.preheader9.split:                                ; preds = %.preheader9, %bb.k
  %.1214 = phi ptr [ %i.ap, %bb.k ], [ %.0213, %.preheader9 ] ; 2 uses
end_hunk_10
begin_hunk_11_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %i.ao = getelementptr inbounds [24 x i8], ptr %7, i64 %indvars.iv.next172 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.preheader7, label %bb.k, !llvm.loop !18

bb.k:                                             ; preds = %.preheader7
  %i.ar = trunc nsw i64 %indvars.iv.next172 to i32
end_hunk_11
begin_hunk_12_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  br label %.preheader9.split, !llvm.loop !19

.loopexit10:                                      ; preds = %bb.g, %bb.j, %.split.us, %bb.e
  %.2215 = phi ptr [ %.0213, %bb.e ], [ %.us-phi89, %.split.us ], [ %.1214, %bb.j ], [ %.1214.us, %bb.g ] ; 6 uses
end_hunk_12
begin_hunk_13_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %i.bf = getelementptr inbounds [24 x i8], ptr %8, i64 %indvars.iv.next175 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.preheader, label %bb.o, !llvm.loop !20

bb.o:                                             ; preds = %.preheader
  %i.bi = trunc nsw i64 %indvars.iv.next175 to i32
end_hunk_13
begin_hunk_14_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %.preheader8, !llvm.loop !21

.loopexit:                                        ; preds = %bb.m, %bb.n, %.loopexit10
  %.2221 = phi ptr [ %.0219, %.loopexit10 ], [ %i.be, %bb.n ], [ %.1220, %bb.m ] ; 18 uses
end_hunk_14
begin_hunk_15_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %spec.select = select i1 %i.bq, ptr %.ph22, ptr null
  %.0164 = select i1 %i.bp, ptr %.2199, ptr %spec.select ; 2 uses
  %.not246 = icmp eq ptr %.0164, null
  br i1 %.not246, label %.outer, label %bb.r, !llvm.loop !22

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq i32 %.3179, 0
end_hunk_15
begin_hunk_16_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
  %.not247 = icmp eq ptr %.0163, null             ; 2 uses
  %spec.select251 = select i1 %.not247, ptr %.0192.ph.ph, ptr %.0164
  %spec.select252 = select i1 %.not247, ptr %.0186, ptr %.0163
  br label %.outer.outer, !llvm.loop !22

bb.s:                                             ; preds = %.loopexit
  br i1 %i.bo, label %.thread, label %bb.t
end_hunk_16
begin_hunk_17_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
bb.av:                                            ; preds = %bb.at, %bb.au, %bb.ar
  %.0184 = phi i64 [ %i.du, %bb.ar ], [ 1, %bb.at ], [ 2, %bb.au ]
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %.0184
  br label %.outer12, !llvm.loop !22

bb.aw:                                            ; preds = %bb.al, %bb.ak
  %i.ee = icmp eq i32 %.3179, 0
end_hunk_17
begin_hunk_18_@_ZL8_cmpFoldPKDsiS0_ijPiS1_P10UErrorCode:bb.a
bb.bh:                                            ; preds = %bb.bf, %bb.bg, %bb.bd
  %.1185 = phi i64 [ %i.es, %bb.bd ], [ 1, %bb.bf ], [ 2, %bb.bg ]
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.1185
  br label %bb.e, !llvm.loop !22

bb.bi:                                            ; preds = %bb.ax, %bb.aw
  %i.fc = icmp samesign ult i32 %.1172, 55296
end_hunk_18
begin_hunk_19_@llvm.smin.i32
!8 = distinct !{!8, !6, !9, !10}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = !{!"branch_weights", i32 4, i32 12}
!12 = distinct !{!12, !6, !9, !10}
!13 = distinct !{!13, !6, !9}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
end_hunk_19
begin_hunk_20_@llvm.smin.i32
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
end_hunk_20
