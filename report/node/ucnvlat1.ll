inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
.lr.ph.preheader.a:                               ; preds = %.loopexit.thread, %.loopexit
  %.2129 = phi i32 [ 0, %.loopexit.thread ], [ %.2, %.loopexit ] ; 4 uses
  %.271127 = phi ptr [ null, %.loopexit.thread ], [ %.271, %.loopexit ] ; 4 uses
  %.174126 = phi i32 [ %i.bd, %.loopexit.thread ], [ %.174, %.loopexit ] ; 10 uses
  %.180124 = phi ptr [ %i.az, %.loopexit.thread ], [ %.180, %.loopexit ] ; 6 uses
  %.183122 = phi ptr [ %i.ba, %.loopexit.thread ], [ %.183, %.loopexit ] ; 6 uses
  %i.bo = zext nneg i32 %.174126 to i64           ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.174126, 24
  br i1 %min.iters.check, label %.lr.ph.preheader169, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.a
end_hunk_0
begin_hunk_1_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %bound0 = icmp ult ptr %.180124, %scevgep147
  %bound1 = icmp ult ptr %.183122, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader169, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bo, 2147483632              ; 5 uses
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %i.bu = sub nsw i32 %.174126, %.cast
  %i.bv = shl nuw nsw i64 %n.vec, 1
end_hunk_1
begin_hunk_2_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store <8 x i16> %i.ca, ptr %i.cb, align 2, !alias.scope !11, !noalias !8
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block.a, label %vector.body, !llvm.loop !13

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %n.vec, %i.bo
  br i1 %cmp.n.a, label %._crit_edge, label %.lr.ph.preheader169

.lr.ph.preheader169:                              ; preds = %vector.memcheck, %.lr.ph.preheader.a, %middle.block.a
  %.27897.ph = phi i32 [ %.174126, %vector.memcheck ], [ %.174126, %.lr.ph.preheader.a ], [ %i.bu, %middle.block.a ]
  %.28196.ph = phi ptr [ %.180124, %vector.memcheck ], [ %.180124, %.lr.ph.preheader.a ], [ %i.bw, %middle.block.a ]
  %.28495.ph = phi ptr [ %.183122, %vector.memcheck ], [ %.183122, %.lr.ph.preheader.a ], [ %i.bx, %middle.block.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader169, %.lr.ph
end_hunk_2
begin_hunk_3_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i16 %i.cf, ptr %.28196, align 2
  %i.ch = add nsw i32 %.27897, -1
  %i.ci = icmp samesign ugt i32 %.27897, 1
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %.lr.ph, %middle.block.a
  %.lcssa142 = phi ptr [ %i.bx, %middle.block.a ], [ %i.cd, %.lr.ph ]
  %.lcssa141 = phi ptr [ %i.bw, %middle.block.a ], [ %i.cg, %.lr.ph ]
  store ptr %.lcssa142, ptr %i.a, align 8
  store ptr %.lcssa141, ptr %i.c, align 8
  %.not90 = icmp eq ptr %.271127, null
end_hunk_3
begin_hunk_4_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %index.next163 = add nuw i64 %index160, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cp = icmp eq i64 %index.next163, %n.vec157
  br i1 %i.cp, label %middle.block164, label %vector.body159, !llvm.loop !17

middle.block164:                                  ; preds = %vector.body159
  %cmp.n165 = icmp eq i64 %n.vec157, %i.ck
end_hunk_4
begin_hunk_5_@_ZL27_Latin1ToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %.372100, i64 4 ; 2 uses
  store i32 %.3101, ptr %.372100, align 4
  %exitcond.not = icmp eq i32 %i.cq, %i.cj
  br i1 %exitcond.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !18

._crit_edge103:                                   ; preds = %.lr.ph102, %middle.block164, %._crit_edge.thread
  %.372.lcssa = phi ptr [ %.271, %._crit_edge.thread ], [ %i.cn, %middle.block164 ], [ %i.cr, %.lr.ph102 ]
end_hunk_5
begin_hunk_6_@_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %.0171, i64 32 ; 2 uses
  %i.di = add nsw i32 %.0187, -1
  %i.dj = icmp sgt i32 %.0187, 1
  br i1 %i.dj, label %bb.d, label %bb.f, !llvm.loop !19

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1188 = phi i32 [ 0, %bb.e ], [ %.0187, %bb.d ] ; 3 uses
end_hunk_6
begin_hunk_7_@_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  store <4 x i32> %i.ex, ptr %i.ey, align 4
  %i.fb = add nsw i32 %.2189230, -2
  %i.fc = icmp sgt i32 %.2189230, 2
  br i1 %i.fc, label %.lr.ph, label %.loopexit227, !llvm.loop !20

.loopexit227:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.g, %bb.f, %bb.b
  %.2205 = phi ptr [ %i.p, %bb.b ], [ null, %bb.f ], [ %i.p, %bb.g ], [ %.lcssa274.unr, %.lr.ph.prol.loopexit ], [ %i.fa, %.lr.ph ] ; 4 uses
end_hunk_7
begin_hunk_8_@_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  store i8 %i.fh, ptr %.3175233, align 1
  %i.fj = add nsw i32 %.2186232, -1
  %i.fk = icmp sgt i32 %.2186232, 1
  br i1 %i.fk, label %.lr.ph235, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %.lr.ph235, %bb.h
  %.3175.lcssa.ph = phi ptr [ %.3175233, %.lr.ph235 ], [ %i.fi, %bb.h ] ; 3 uses
end_hunk_8
begin_hunk_9_@_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gb, %n.vec
end_hunk_9
begin_hunk_10_@_ZL29_Latin1FromUnicodeWithOffsetsP25UConverterFromUnicodeArgsP10UErrorCode:bb.a
  store i32 %.6196245, ptr %.6209244, align 4
  %i.gk = add i64 %.0246, -1                      ; 2 uses
  %.not221 = icmp eq i64 %i.gk, 0
  br i1 %.not221, label %.loopexit, label %.lr.ph247, !llvm.loop !23

.loopexit:                                        ; preds = %.lr.ph247, %middle.block, %bb.m, %.critedge.thread
  %.7210 = phi ptr [ null, %.critedge.thread ], [ %.5208, %bb.m ], [ %i.gf, %middle.block ], [ %i.gj, %.lr.ph247 ]
end_hunk_10
begin_hunk_11_@_ZL19ucnv_Latin1FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
.lr.ph:                                           ; preds = %bb.o
  %.2 = add nsw i32 %.198123, -1
  %i.ak = icmp sgt i32 %.198123, 1
  br i1 %i.ak, label %.lr.ph126, label %.loopexit.thread, !llvm.loop !24

.lr.ph126:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.17596125 = phi ptr [ %.276, %.lr.ph ], [ %.074, %.lr.ph.preheader ] ; 4 uses
end_hunk_11
begin_hunk_12_@_ZL19ucnv_Latin1FromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i8 %storemerge, ptr %.17197124, align 1
  %.272 = getelementptr inbounds nuw i8, ptr %.17197124, i64 1 ; 3 uses
  %i.au = icmp ult ptr %.276, %.073
  br i1 %i.au, label %.lr.ph, label %.loopexit, !llvm.loop !24

.loopexit:                                        ; preds = %bb.o, %bb.j
  %.17595.ph = phi ptr [ %.074, %bb.j ], [ %.276, %bb.o ] ; 5 uses
end_hunk_12
begin_hunk_13_@_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %.095, i64 16 ; 2 uses
  %i.bj = add nsw i32 %.0101, -1
  %i.bk = icmp sgt i32 %.0101, 1
  br i1 %i.bk, label %bb.c, label %bb.e, !llvm.loop !25

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1102 = phi i32 [ %.0101, %bb.c ], [ 0, %bb.d ] ; 2 uses
end_hunk_13
begin_hunk_14_@_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %.0110137, i64 64 ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.loopexit132.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !26

.loopexit132.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_14
begin_hunk_15_@_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i16 %i.cr, ptr %.398142, align 2
  %i.ct = add nsw i32 %.2117141, -1
  %i.cu = icmp sgt i32 %.2117141, 1
  br i1 %i.cu, label %.lr.ph144, label %.critedge, !llvm.loop !27

bb.h:                                             ; preds = %.lr.ph144
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_15
begin_hunk_16_@_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.de, %n.vec
end_hunk_16
begin_hunk_17_@_ZL26_ASCIIToUnicodeWithOffsetsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i32 %.3109149, ptr %.3113148, align 4
  %i.dn = add i64 %.0150, -1                      ; 2 uses
  %.not126 = icmp eq i64 %i.dn, 0
  br i1 %.not126, label %.loopexit, label %.lr.ph151, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph151, %middle.block, %bb.k, %bb.j
  %.4114 = phi ptr [ null, %bb.j ], [ %.2112, %bb.k ], [ %i.di, %middle.block ], [ %i.dm, %.lr.ph151 ]
end_hunk_17
begin_hunk_18_@_ZL18ucnv_ASCIIFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  %i.ci = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.cj = add nsw i32 %.089, -1
  %i.ck = icmp sgt i32 %.089, 1
  br i1 %i.ck, label %bb.e, label %bb.g, !llvm.loop !30

bb.g:                                             ; preds = %bb.e, %bb.f
  %.190 = phi i32 [ 0, %bb.f ], [ %.089, %bb.e ]
end_hunk_18
begin_hunk_19_@_ZL18ucnv_ASCIIFromUTF8P25UConverterFromUnicodeArgsP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i8 %i.cn, ptr %.388107, align 1
  %i.cr = add nsw i32 %.295106, -1
  %i.cs = icmp sgt i32 %.295106, 1
  br i1 %i.cs, label %.lr.ph, label %.critedge101, !llvm.loop !31

.critedge101:                                     ; preds = %bb.i, %bb.h
  %.388.lcssa = phi ptr [ %.287, %bb.h ], [ %i.cq, %bb.i ] ; 4 uses
end_hunk_19
begin_hunk_20_@llvm.assume
!13 = distinct !{!13, !6, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !6, !14}
!17 = distinct !{!17, !6, !14, !15}
!18 = distinct !{!18, !6, !15, !14}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6, !14, !15}
!23 = distinct !{!23, !6, !15, !14}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6, !14, !15}
!29 = distinct !{!29, !6, !15, !14}
!30 = distinct !{!30, !6}
!31 = distinct !{!31, !6}
end_hunk_20
