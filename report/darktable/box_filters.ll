inline.NumInlined: 200
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 68
begin_hunk_0_@dt_box_mean:bb.a
  %i.aeu = bitcast i64 %i.aet to <2 x float>
  %i.aev = fadd reassoc nsz arcp contract afn <2 x float> %i.aes, %i.aeu ; 4 uses
  %i.aew = fmul reassoc nsz arcp contract afn <2 x float> %i.aev, %i.aeh
  store <2 x float> %i.aew, ptr %i.aeq, align 4, !tbaa !18, !alias.scope !330, !noalias !333
  %i.aex = add i64 %.270121.i.us.i, 1             ; 3 uses
  %i.aey = add i64 %i.aex, %4                     ; 2 uses
  %i.aez = icmp ult i64 %i.aey, %2
  br i1 %i.aez, label %.peel.next158.i.us.i, label %.preheader.i.us.i120.loopexit, !llvm.loop !343

.preheader.i.us.i120.loopexit:                    ; preds = %.peel.next158.i.us.i
  %i.afa = extractelement <2 x float> %i.aev, i64 1
  %i.afb = extractelement <2 x float> %i.aev, i64 0
  br label %.preheader.i.us.i120

.preheader.i.us.i120:                             ; preds = %.preheader.i.us.i120.loopexit, %.lr.ph122.i.us.i, %.preheader93.i.us.i
  %.sroa.10.1.i.us.i121 = phi nsz float [ %i.abx, %.preheader93.i.us.i ], [ %i.aea, %.lr.ph122.i.us.i ], [ %i.afa, %.preheader.i.us.i120.loopexit ]
  %.lcssa120.i.us.i = phi float [ %.lcssa109.i.us.i, %.preheader93.i.us.i ], [ %i.adz, %.lr.ph122.i.us.i ], [ %i.afb, %.preheader.i.us.i120.loopexit ]
  %.270.lcssa.i.us.i122 = phi i64 [ %.169.lcssa.i.us.i119, %.preheader93.i.us.i ], [ %i.aee, %.lr.ph122.i.us.i ], [ %i.aex, %.preheader.i.us.i120.loopexit ] ; 8 uses
  %i.afc = icmp ult i64 %.270.lcssa.i.us.i122, %2
  br i1 %i.afc, label %.lr.ph135.i.us.i, label %_ZL16_blur_horizontalILm2ELb1EEvPfmmS0_.exit.us.i

.lr.ph135.i.us.i:                                 ; preds = %.preheader.i.us.i120
  %i.afd = add i64 %.270.lcssa.i.us.i122, %i.yo
  %i.afe = add i64 %.1.lcssa.i.us.i118, -1        ; 2 uses
  %sext.peel.i.us.i = shl i64 %i.afd, 32
  %i.aff = ashr exact i64 %sext.peel.i.us.i, 29
  %i.afg = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.aff
  %i.afh = load <2 x float>, ptr %i.afg, align 8, !tbaa !18, !alias.scope !344, !noalias !347
  %i.afi = insertelement <2 x float> poison, float %.lcssa120.i.us.i, i64 0
  %i.afj = insertelement <2 x float> %i.afi, float %.sroa.10.1.i.us.i121, i64 1
  %i.afk = fsub reassoc nsz arcp contract afn <2 x float> %i.afj, %i.afh ; 3 uses
  %.idx.peel.i.us.i = shl i64 %.270.lcssa.i.us.i122, 3
  %i.afl = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx.peel.i.us.i
  %i.afm = uitofp reassoc nsz arcp contract afn i64 %i.afe to float
  %i.afn = insertelement <2 x float> poison, float %i.afm, i64 0
  %i.afo = shufflevector <2 x float> %i.afn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afp = fdiv reassoc nsz arcp contract afn <2 x float> %i.afk, %i.afo
  store <2 x float> %i.afp, ptr %i.afl, align 4, !tbaa !18, !alias.scope !350, !noalias !353
  %i.afq = add nuw i64 %.270.lcssa.i.us.i122, 1   ; 3 uses
  %exitcond160.peel.not.i.us.i = icmp eq i64 %i.afq, %2
  br i1 %exitcond160.peel.not.i.us.i, label %_ZL16_blur_horizontalILm2ELb1EEvPfmmS0_.exit.us.i, label %.peel.next162.i.us.i.preheader

.peel.next162.i.us.i.preheader:                   ; preds = %.lr.ph135.i.us.i
  %i.afr = sub i64 %.270.lcssa.i.us.i122, %2
  %i.afs = and i64 %i.afr, 1
  %lcmp.mod.not.not = icmp eq i64 %i.afs, 0
  br i1 %lcmp.mod.not.not, label %.peel.next162.i.us.i.prol, label %.peel.next162.i.us.i.prol.loopexit

.peel.next162.i.us.i.prol:                        ; preds = %.peel.next162.i.us.i.preheader
  %i.aft = sub i64 %.270.lcssa.i.us.i122, %4
  %i.afu = add i64 %.1.lcssa.i.us.i118, -2        ; 2 uses
  %sext.i.us.i127.prol = shl i64 %i.aft, 32
  %i.afv = ashr exact i64 %sext.i.us.i127.prol, 29
  %i.afw = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.afv
  %.idx.i.us.i128.prol = shl i64 %i.afq, 3
  %i.afx = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx.i.us.i128.prol
  %i.afy = uitofp reassoc nsz arcp contract afn i64 %i.afu to float
  %i.afz = load <2 x float>, ptr %i.afw, align 8, !tbaa !18, !alias.scope !355, !noalias !357
  %i.aga = fsub reassoc nsz arcp contract afn <2 x float> %i.afk, %i.afz ; 2 uses
  %i.agb = insertelement <2 x float> poison, float %i.afy, i64 0
  %i.agc = shufflevector <2 x float> %i.agb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agd = fdiv reassoc nsz arcp contract afn <2 x float> %i.aga, %i.agc
  store <2 x float> %i.agd, ptr %i.afx, align 4, !tbaa !18, !alias.scope !350, !noalias !353
  %i.age = add nuw i64 %.270.lcssa.i.us.i122, 2
  br label %.peel.next162.i.us.i.prol.loopexit

.peel.next162.i.us.i.prol.loopexit:               ; preds = %.peel.next162.i.us.i.prol, %.peel.next162.i.us.i.preheader
  %.2134.i.us.i.unr = phi i64 [ %i.afe, %.peel.next162.i.us.i.preheader ], [ %i.afu, %.peel.next162.i.us.i.prol ]
  %.3133.i.us.i.unr = phi i64 [ %i.afq, %.peel.next162.i.us.i.preheader ], [ %i.age, %.peel.next162.i.us.i.prol ]
  %.unr = phi <2 x float> [ %i.afk, %.peel.next162.i.us.i.preheader ], [ %i.aga, %.peel.next162.i.us.i.prol ]
  %i.agf = icmp eq i64 %i.yr, %.270.lcssa.i.us.i122
  br i1 %i.agf, label %_ZL16_blur_horizontalILm2ELb1EEvPfmmS0_.exit.us.i, label %.peel.next162.i.us.i

.peel.next162.i.us.i:                             ; preds = %.peel.next162.i.us.i.prol.loopexit, %.peel.next162.i.us.i
  %.2134.i.us.i = phi i64 [ %i.agt, %.peel.next162.i.us.i ], [ %.2134.i.us.i.unr, %.peel.next162.i.us.i.prol.loopexit ] ; 2 uses
  %.3133.i.us.i = phi i64 [ %i.ahf, %.peel.next162.i.us.i ], [ %.3133.i.us.i.unr, %.peel.next162.i.us.i.prol.loopexit ] ; 5 uses
  %i.agg = phi <2 x float> [ %i.ahb, %.peel.next162.i.us.i ], [ %.unr, %.peel.next162.i.us.i.prol.loopexit ]
  %i.agh = add i64 %.3133.i.us.i, %i.yo
  %i.agi = add i64 %.2134.i.us.i, -1
  %sext.i.us.i127 = shl i64 %i.agh, 32
  %i.agj = ashr exact i64 %sext.i.us.i127, 29
  %i.agk = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.agj
  %.idx.i.us.i128 = shl i64 %.3133.i.us.i, 3
  %i.agl = getelementptr inbounds nuw i8, ptr %i.yz, i64 %.idx.i.us.i128
  %i.agm = uitofp reassoc nsz arcp contract afn i64 %i.agi to float
  %i.agn = load <2 x float>, ptr %i.agk, align 8, !tbaa !18, !alias.scope !355, !noalias !357
  %i.ago = fsub reassoc nsz arcp contract afn <2 x float> %i.agg, %i.agn ; 2 uses
  %i.agp = insertelement <2 x float> poison, float %i.agm, i64 0
  %i.agq = shufflevector <2 x float> %i.agp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agr = fdiv reassoc nsz arcp contract afn <2 x float> %i.ago, %i.agq
  store <2 x float> %i.agr, ptr %i.agl, align 4, !tbaa !18, !alias.scope !350, !noalias !353
  %i.ags = sub i64 %.3133.i.us.i, %4
  %i.agt = add i64 %.2134.i.us.i, -2              ; 2 uses
  %sext.i.us.i127.1 = shl i64 %i.ags, 32
  %i.agu = ashr exact i64 %sext.i.us.i127.1, 29
  %i.agv = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.agu
  %i.agw = shl i64 %.3133.i.us.i, 3
  %i.agx = getelementptr i8, ptr %i.yz, i64 %i.agw
  %i.agy = getelementptr i8, ptr %i.agx, i64 8
  %i.agz = uitofp reassoc nsz arcp contract afn i64 %i.agt to float
  %i.aha = load <2 x float>, ptr %i.agv, align 8, !tbaa !18, !alias.scope !355, !noalias !357
  %i.ahb = fsub reassoc nsz arcp contract afn <2 x float> %i.ago, %i.aha ; 2 uses
  %i.ahc = insertelement <2 x float> poison, float %i.agz, i64 0
  %i.ahd = shufflevector <2 x float> %i.ahc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahe = fdiv reassoc nsz arcp contract afn <2 x float> %i.ahb, %i.ahd
  store <2 x float> %i.ahe, ptr %i.agy, align 4, !tbaa !18, !alias.scope !350, !noalias !353
  %i.ahf = add nuw i64 %.3133.i.us.i, 2           ; 2 uses
  %exitcond160.not.i.us.i.1 = icmp eq i64 %i.ahf, %2
  br i1 %exitcond160.not.i.us.i.1, label %_ZL16_blur_horizontalILm2ELb1EEvPfmmS0_.exit.us.i, label %.peel.next162.i.us.i, !llvm.loop !360

_ZL16_blur_horizontalILm2ELb1EEvPfmmS0_.exit.us.i: ; preds = %.peel.next162.i.us.i.prol.loopexit, %.peel.next162.i.us.i, %.lr.ph135.i.us.i, %.preheader.i.us.i120
  %i.ahg = add nuw i64 %.032.us.i111, 1           ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %i.ahg, %1
  br i1 %exitcond.not.i123, label %._crit_edge.us.i124, label %bb.o, !llvm.loop !361

._crit_edge.us.i124:                              ; preds = %_ZL16_blur_horizontalILm2ELb1EEvPfmmS0_.exit.us.i
  tail call fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noundef %0, i64 noundef %1, i64 noundef %i.ya, i64 noundef %4, ptr noundef %i.yg)
  %i.ahh = add nuw i32 %.02233.us.i110, 1         ; 2 uses
  %exitcond43.not.i125 = icmp eq i32 %i.ahh, %5
  br i1 %exitcond43.not.i125, label %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit.sink.split, label %.preheader.us.i109, !llvm.loop !362

.preheader.i136:                                  ; preds = %.preheader.lr.ph.i107, %.preheader.i136
  %.02233.i137 = phi i32 [ %i.ahi, %.preheader.i136 ], [ 0, %.preheader.lr.ph.i107 ]
  tail call fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noundef %0, i64 noundef 0, i64 noundef %i.ya, i64 noundef %4, ptr noundef %i.yg)
  %i.ahi = add nuw i32 %.02233.i137, 1            ; 2 uses
  %exitcond44.not.i138 = icmp eq i32 %i.ahi, %5
  br i1 %exitcond44.not.i138, label %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit.sink.split, label %.preheader.i136, !llvm.loop !362

bb.q:                                             ; preds = %bb.a
  %i.ahj = shl i64 %4, 1                          ; 2 uses
  %.not.i.i.i139 = icmp eq i64 %i.ahj, 0
  br i1 %.not.i.i.i139, label %_ZL20_alloc_scratch_spacemmmmPm.exit.i144, label %.lr.ph.preheader.i.i.i140

.lr.ph.preheader.i.i.i140:                        ; preds = %bb.q
  %i.ahk = or disjoint i64 %i.ahj, 1
  br label %.lr.ph.i.i.i141

.lr.ph.i.i.i141:                                  ; preds = %.lr.ph.i.i.i141, %.lr.ph.preheader.i.i.i140
  %.011.i.i.i142 = phi i64 [ %i.ahm, %.lr.ph.i.i.i141 ], [ %i.ahk, %.lr.ph.preheader.i.i.i140 ] ; 2 uses
  %.0910.i.i.i143 = phi i64 [ %i.ahl, %.lr.ph.i.i.i141 ], [ 2, %.lr.ph.preheader.i.i.i140 ]
  %i.ahl = shl i64 %.0910.i.i.i143, 1             ; 2 uses
  %i.ahm = lshr i64 %.011.i.i.i142, 1
  %i.ahn = icmp ugt i64 %.011.i.i.i142, 3
  br i1 %i.ahn, label %.lr.ph.i.i.i141, label %_ZL20_alloc_scratch_spacemmmmPm.exit.i144, !llvm.loop !11

_ZL20_alloc_scratch_spacemmmmPm.exit.i144:        ; preds = %.lr.ph.i.i.i141, %bb.q
  %.09.lcssa.i.i.i145 = phi i64 [ 2, %bb.q ], [ %i.ahl, %.lr.ph.i.i.i141 ]
  %i.aho = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 %.09.lcssa.i.i.i145, i64 %1)
  %i.ahp = shl i64 %2, 2                          ; 4 uses
  %i.ahq = shl i64 %i.aho, 4
  %i.ahr = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.ahq)
  %..i.i146 = tail call i64 @llvm.umax.i64(i64 %i.ahp, i64 %i.ahr)
  %i.ahs = shl i64 %..i.i146, 2
  %i.aht = add i64 %i.ahs, 60
  %i.ahu = and i64 %i.aht, -64
  %i.ahv = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.ahu) ; 8 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ahv, i64 64) ]
  %i.ahw = icmp eq ptr %i.ahv, null
  br i1 %i.ahw, label %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit, label %.preheader25.i147

.preheader25.i147:                                ; preds = %_ZL20_alloc_scratch_spacemmmmPm.exit.i144
  %.not.i148 = icmp eq i32 %5, 0
  br i1 %.not.i148, label %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit.sink.split, label %.preheader.lr.ph.i149

.preheader.lr.ph.i149:                            ; preds = %.preheader25.i147
  %.not29.i = icmp eq i64 %1, 0
  br i1 %.not29.i, label %.preheader.i153, label %.preheader.us.i150

.preheader.us.i150:                               ; preds = %.preheader.lr.ph.i149, %._crit_edge.us.i152
  %.02227.us.i = phi i32 [ %i.aia, %._crit_edge.us.i152 ], [ 0, %.preheader.lr.ph.i149 ]
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader.us.i150
  %.026.us.i = phi i64 [ 0, %.preheader.us.i150 ], [ %i.ahz, %bb.r ] ; 2 uses
  %i.ahx = mul i64 %.026.us.i, %i.ahp
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ahx
  tail call fastcc void @_ZL16_blur_horizontalILm4ELb1EEvPfmmS0_(ptr noundef %i.ahy, i64 noundef %2, i64 noundef %4, ptr noundef %i.ahv)
  %i.ahz = add nuw i64 %.026.us.i, 1              ; 2 uses
  %exitcond.not.i151 = icmp eq i64 %i.ahz, %1
  br i1 %exitcond.not.i151, label %._crit_edge.us.i152, label %bb.r, !llvm.loop !363

._crit_edge.us.i152:                              ; preds = %bb.r
  tail call fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noundef %0, i64 noundef %1, i64 noundef %i.ahp, i64 noundef %4, ptr noundef %i.ahv)
  %i.aia = add nuw i32 %.02227.us.i, 1            ; 2 uses
  %exitcond31.not.i = icmp eq i32 %i.aia, %5
  br i1 %exitcond31.not.i, label %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit.sink.split, label %.preheader.us.i150, !llvm.loop !364

.preheader.i153:                                  ; preds = %.preheader.lr.ph.i149, %.preheader.i153
  %.02227.i = phi i32 [ %i.aib, %.preheader.i153 ], [ 0, %.preheader.lr.ph.i149 ]
  tail call fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noundef %0, i64 noundef 0, i64 noundef %i.ahp, i64 noundef %4, ptr noundef %i.ahv)
  %i.aib = add nuw i32 %.02227.i, 1               ; 2 uses
  %exitcond32.not.i = icmp eq i32 %i.aib, %5
  br i1 %exitcond32.not.i, label %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit.sink.split, label %.preheader.i153, !llvm.loop !364

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 631, ptr noundef nonnull @__FUNCTION__.dt_box_mean)
  unreachable

_ZL9_box_meanILm1ELb0EEvPfmmmj.exit.sink.split:   ; preds = %._crit_edge.us.i152, %.preheader.i153, %._crit_edge.us.i124, %.preheader.i136, %._crit_edge.us.i88, %.preheader.i96, %._crit_edge.us.i51, %.preheader.i57, %._crit_edge.us.i, %.preheader.i, %.preheader25.i147, %.preheader25.i105, %.preheader25.i66, %.preheader25.i37, %.preheader25.i
  %.sink = phi ptr [ %i.yg, %.preheader25.i105 ], [ %i.pt, %.preheader25.i66 ], [ %i.gr, %.preheader25.i37 ], [ %i.l, %.preheader25.i ], [ %i.yg, %.preheader.i136 ], [ %i.ahv, %.preheader25.i147 ], [ %i.ahv, %.preheader.i153 ], [ %i.yg, %._crit_edge.us.i124 ], [ %i.l, %._crit_edge.us.i ], [ %i.l, %.preheader.i ], [ %i.gr, %._crit_edge.us.i51 ], [ %i.gr, %.preheader.i57 ], [ %i.pt, %._crit_edge.us.i88 ], [ %i.pt, %.preheader.i96 ], [ %i.ahv, %._crit_edge.us.i152 ]
  tail call void @free(ptr noundef nonnull %.sink) #11
  br label %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit

_ZL9_box_meanILm1ELb0EEvPfmmmj.exit:              ; preds = %_ZL9_box_meanILm1ELb0EEvPfmmmj.exit.sink.split, %_ZL20_alloc_scratch_spacemmmmPm.exit.i144, %_ZL20_alloc_scratch_spacemmmmPm.exit.i102, %_ZL20_alloc_scratch_spacemmmmPm.exit.i63, %_ZL20_alloc_scratch_spacemmmmPm.exit.i34, %_ZL20_alloc_scratch_spacemmmmPm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @dt_box_mean_horizontal(ptr noalias nofree noundef %0, i64 noundef %1, i32 noundef %2, i64 noundef %3, ptr noalias noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.m [
    i32 16777220, label %bb.b
    i32 16777225, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %4, null
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = tail call i64 @dt_round_size(i64 noundef %1, i64 noundef 16)
  %i.b = shl i64 %i.a, 4
  %i.c = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.b) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.c, i64 64) ]
  %.not26 = icmp eq ptr %i.c, null
  br i1 %.not26, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZL16_blur_horizontalILm4ELb1EEvPfmmS0_(ptr noundef %0, i64 noundef %1, i64 noundef %3, ptr noundef %4)
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZL16_blur_horizontalILm4ELb1EEvPfmmS0_(ptr noundef %0, i64 noundef %1, i64 noundef %3, ptr noundef %i.c)
  tail call void @free(ptr noundef nonnull %i.c) #11
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.h, label %.thread29

bb.h:                                             ; preds = %bb.g
  %i.d = tail call i64 @dt_round_size(i64 noundef %1, i64 noundef 16)
  %i.e = mul i64 %i.d, 36
  %i.f = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.e) ; 3 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.f, i64 64) ]
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %bb.l, label %.thread29

.thread29:                                        ; preds = %bb.g, %bb.h
  %i.g = phi ptr [ %i.f, %bb.h ], [ %4, %bb.g ]   ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.h = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) ; 9 uses
  %.not258.i = icmp eq i64 %i.h, 0
  br i1 %.not258.i, label %.preheader145.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.thread29
  %i.i = mul nuw i64 %i.h, 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.g, ptr align 4 %0, i64 %i.i, i1 false), !tbaa !18, !alias.scope !370, !noalias !374
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load float, ptr %i.l, align 4, !tbaa !18, !alias.scope !377, !noalias !379 ; 4 uses
  %i.n = load <4 x float>, ptr %i.k, align 4, !tbaa !18, !alias.scope !377, !noalias !379 ; 7 uses
  %i.o = load float, ptr %i.j, align 4, !tbaa !18, !alias.scope !377, !noalias !379 ; 4 uses
  %i.p = load <2 x float>, ptr %0, align 4, !tbaa !18, !alias.scope !377, !noalias !379 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load float, ptr %i.q, align 4, !tbaa !18, !alias.scope !377, !noalias !379 ; 4 uses
  %exitcond.peel.not.i = icmp eq i64 %i.h, 1
  %i.s = extractelement <2 x float> %i.p, i64 0   ; 2 uses
  %i.t = extractelement <2 x float> %i.p, i64 1   ; 2 uses
  br i1 %exitcond.peel.not.i, label %.preheader145.i, label %iter.check

iter.check:                                       ; preds = %.lr.ph.i
  %i.u = add i64 %i.h, -1                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.h, 5
  br i1 %min.iters.check, label %.peel.next.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check153 = icmp ult i64 %i.h, 17
  %i.v = extractelement <4 x float> %i.n, i64 0
  %i.w = extractelement <4 x float> %i.n, i64 1
  %i.x = extractelement <4 x float> %i.n, i64 2
  %i.y = extractelement <4 x float> %i.n, i64 3
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.z = and i64 %i.u, 12
  %n.vec = and i64 %i.u, -16                      ; 4 uses
  %i.aa = or disjoint i64 %n.vec, 1               ; 2 uses
  %i.ab = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.r, i64 0
  %i.ac = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.m, i64 0
  %i.ad = shufflevector <4 x float> %i.n, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.ae = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ad, <8 x i32> <i32 11, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ad, <8 x i32> <i32 10, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ag = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.ad, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ah = shufflevector <8 x float> %i.ad, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ai = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.o, i64 0
  %i.aj = shufflevector <2 x float> %i.p, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.ak = shufflevector <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x float> %i.aj, <8 x i32> <i32 9, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.al = shufflevector <8 x float> %i.aj, <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <8 x float> [ %i.ab, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi154 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi155 = phi <8 x float> [ %i.ac, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi156 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi157 = phi <8 x float> [ %i.ae, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi158 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %vec.phi159 = phi <8 x float> [ %i.af, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi160 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi161 = phi <8 x float> [ %i.ag, %vector.ph ], [ %i.ax, %vector.body ]
  %vec.phi162 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.ay, %vector.body ]
  %vec.phi163 = phi <8 x float> [ %i.ah, %vector.ph ], [ %i.av, %vector.body ]
  %vec.phi164 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.aw, %vector.body ]
  %vec.phi165 = phi <8 x float> [ %i.ai, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi166 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi167 = phi <8 x float> [ %i.ak, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi168 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.as, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi169 = phi <8 x float> [ %i.al, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi170 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.am = mul <8 x i64> %vec.ind, splat (i64 36)
  %i.an = mul <8 x i64> %vec.ind, splat (i64 36)
  %i.ao = add <8 x i64> %i.an, splat (i64 288)
  %wide.gep = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.am ; 9 uses
  %wide.gep171 = getelementptr inbounds nuw i8, ptr %0, <8 x i64> %i.ao ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather172 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep171, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.ap = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %vec.phi169 ; 2 uses
  %i.aq = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather172, %vec.phi170 ; 2 uses
  %wide.gep173 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.gep174 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 4
  %wide.masked.gather175 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep173, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather176 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep174, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.ar = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather175, %vec.phi167 ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather176, %vec.phi168 ; 2 uses
  %wide.gep177 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.gep178 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 8
  %wide.masked.gather179 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep177, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather180 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep178, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.at = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather179, %vec.phi165 ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather180, %vec.phi166 ; 2 uses
  %wide.gep181 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.gep182 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 12
  %wide.masked.gather183 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep181, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather184 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep182, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather183, %vec.phi163 ; 2 uses
  %i.aw = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather184, %vec.phi164 ; 2 uses
  %wide.gep185 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.gep186 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 16
  %wide.masked.gather187 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep185, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather188 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep186, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.ax = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather187, %vec.phi161 ; 2 uses
  %i.ay = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather188, %vec.phi162 ; 2 uses
  %wide.gep189 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.gep190 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 20
  %wide.masked.gather191 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep189, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather192 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep190, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.az = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather191, %vec.phi159 ; 2 uses
  %i.ba = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather192, %vec.phi160 ; 2 uses
  %wide.gep193 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.gep194 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 24
  %wide.masked.gather195 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep193, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather196 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep194, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.bb = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather195, %vec.phi157 ; 2 uses
  %i.bc = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather196, %vec.phi158 ; 2 uses
  %wide.gep197 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.gep198 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 28
  %wide.masked.gather199 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep197, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather200 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep198, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather199, %vec.phi155 ; 2 uses
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather200, %vec.phi156 ; 2 uses
  %wide.gep201 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep202 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep171, i64 32
  %wide.masked.gather203 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep201, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %wide.masked.gather204 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep202, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.bf = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather203, %vec.phi ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather204, %vec.phi154 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <8 x float> %i.bg, %i.bf
  %i.bi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx) ; 3 uses
  %bin.rdx205 = fadd reassoc nsz arcp contract afn <8 x float> %i.be, %i.bd
  %i.bj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx205) ; 3 uses
  %bin.rdx206 = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bb
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx206) ; 2 uses
  %bin.rdx207 = fadd reassoc nsz arcp contract afn <8 x float> %i.ba, %i.az
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx207) ; 2 uses
  %bin.rdx208 = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.ax
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx208) ; 2 uses
  %bin.rdx209 = fadd reassoc nsz arcp contract afn <8 x float> %i.aw, %i.av
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx209) ; 2 uses
  %bin.rdx210 = fadd reassoc nsz arcp contract afn <8 x float> %i.au, %i.at
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx210) ; 3 uses
  %bin.rdx211 = fadd reassoc nsz arcp contract afn <8 x float> %i.as, %i.ar
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx211) ; 3 uses
  %bin.rdx212 = fadd reassoc nsz arcp contract afn <8 x float> %i.aq, %i.ap
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx212) ; 3 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  %i.br = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bm, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bl, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bk, i64 3 ; 2 uses
  br i1 %cmp.n, label %.preheader145.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  %i.bv = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bp, i64 1
  br i1 %min.epilog.iters.check, label %.peel.next.i.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bi, %vec.epilog.iter.check ], [ %i.r, %vector.main.loop.iter.check ]
  %bc.merge.rdx213 = phi float [ %i.bj, %vec.epilog.iter.check ], [ %i.m, %vector.main.loop.iter.check ]
  %bc.merge.rdx214 = phi float [ %i.bk, %vec.epilog.iter.check ], [ %i.y, %vector.main.loop.iter.check ]
  %bc.merge.rdx215 = phi float [ %i.bl, %vec.epilog.iter.check ], [ %i.x, %vector.main.loop.iter.check ]
  %bc.merge.rdx216 = phi float [ %i.bm, %vec.epilog.iter.check ], [ %i.w, %vector.main.loop.iter.check ]
  %bc.merge.rdx217 = phi float [ %i.bn, %vec.epilog.iter.check ], [ %i.v, %vector.main.loop.iter.check ]
  %bc.merge.rdx218 = phi float [ %i.bo, %vec.epilog.iter.check ], [ %i.o, %vector.main.loop.iter.check ]
  %bc.merge.rdx219 = phi float [ %i.bp, %vec.epilog.iter.check ], [ %i.t, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.aa, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %bc.merge.rdx220 = phi float [ %i.bq, %vec.epilog.iter.check ], [ %i.s, %vector.main.loop.iter.check ]
  %n.vec221 = and i64 %i.u, -4                    ; 3 uses
  %i.bx = or disjoint i64 %n.vec221, 1
  %i.by = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.bz = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx213, i64 0
  %i.ca = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx214, i64 0
  %i.cb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx215, i64 0
  %i.cc = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx216, i64 0
  %i.cd = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx217, i64 0
  %i.ce = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx218, i64 0
  %i.cf = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx219, i64 0
  %i.cg = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx220, i64 0
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index222 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next251, %vec.epilog.vector.body ]
  %vec.phi223 = phi <4 x float> [ %i.by, %vec.epilog.ph ], [ %i.cq, %vec.epilog.vector.body ]
  %vec.phi224 = phi <4 x float> [ %i.bz, %vec.epilog.ph ], [ %i.cp, %vec.epilog.vector.body ]
  %vec.phi225 = phi <4 x float> [ %i.ca, %vec.epilog.ph ], [ %i.co, %vec.epilog.vector.body ]
  %vec.phi226 = phi <4 x float> [ %i.cb, %vec.epilog.ph ], [ %i.cn, %vec.epilog.vector.body ]
  %vec.phi227 = phi <4 x float> [ %i.cc, %vec.epilog.ph ], [ %i.cm, %vec.epilog.vector.body ]
  %vec.phi228 = phi <4 x float> [ %i.cd, %vec.epilog.ph ], [ %i.cl, %vec.epilog.vector.body ]
  %vec.phi229 = phi <4 x float> [ %i.ce, %vec.epilog.ph ], [ %i.ck, %vec.epilog.vector.body ]
  %vec.phi230 = phi <4 x float> [ %i.cf, %vec.epilog.ph ], [ %i.cj, %vec.epilog.vector.body ]
  %vec.ind231 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next252, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi232 = phi <4 x float> [ %i.cg, %vec.epilog.ph ], [ %i.ci, %vec.epilog.vector.body ]
  %i.ch = mul <4 x i64> %vec.ind231, splat (i64 36)
  %wide.gep233 = getelementptr inbounds nuw i8, ptr %0, <4 x i64> %i.ch ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %wide.masked.gather234 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep233, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.ci = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather234, %vec.phi232 ; 2 uses
  %wide.gep235 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 4
  %wide.masked.gather236 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep235, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.cj = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather236, %vec.phi230 ; 2 uses
  %wide.gep237 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 8
  %wide.masked.gather238 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep237, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.ck = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather238, %vec.phi229 ; 2 uses
  %wide.gep239 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 12
  %wide.masked.gather240 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep239, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.cl = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather240, %vec.phi228 ; 2 uses
  %wide.gep241 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 16
  %wide.masked.gather242 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep241, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather242, %vec.phi227 ; 2 uses
  %wide.gep243 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 20
  %wide.masked.gather244 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep243, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather244, %vec.phi226 ; 2 uses
  %wide.gep245 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 24
  %wide.masked.gather246 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep245, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather246, %vec.phi225 ; 2 uses
  %wide.gep247 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 28
  %wide.masked.gather248 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep247, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather248, %vec.phi224 ; 2 uses
  %wide.gep249 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep233, i64 32
  %wide.masked.gather250 = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep249, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !18, !alias.scope !384, !noalias !385
  %i.cq = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.gather250, %vec.phi223 ; 2 uses
  %index.next251 = add nuw i64 %index222, 4       ; 2 uses
  %vec.ind.next252 = add nuw <4 x i64> %vec.ind231, splat (i64 4)
  %i.cr = icmp eq i64 %index.next251, %n.vec221
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !387

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cq) ; 2 uses
  %i.ct = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cp) ; 2 uses
  %i.cu = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.co)
  %i.cv = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cn)
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cm)
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cl)
  %i.cy = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ck) ; 2 uses
  %i.cz = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cj) ; 2 uses
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ci) ; 2 uses
  %cmp.n253 = icmp eq i64 %i.u, %n.vec221
  %i.db = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.dc = insertelement <4 x float> %i.db, float %i.cw, i64 1
  %i.dd = insertelement <4 x float> %i.dc, float %i.cv, i64 2
  %i.de = insertelement <4 x float> %i.dd, float %i.cu, i64 3 ; 2 uses
  %i.df = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dg = insertelement <2 x float> %i.df, float %i.cz, i64 1
  br i1 %cmp.n253, label %.preheader145.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi float [ %i.r, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.cs, %vec.epilog.middle.block ]
  %.ph281 = phi float [ %i.m, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.ct, %vec.epilog.middle.block ]
  %.ph282 = phi float [ %i.o, %iter.check ], [ %i.bo, %vec.epilog.iter.check ], [ %i.cy, %vec.epilog.middle.block ]
  %.066150.i.ph = phi i64 [ 1, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.bx, %vec.epilog.middle.block ]
  %.ph283 = phi <4 x float> [ %i.n, %iter.check ], [ %i.bu, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ]
  %.ph284 = phi <2 x float> [ %i.p, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %.peel.next.i

.preheader145.i.loopexit:                         ; preds = %.peel.next.i
  %i.dh = extractelement <2 x float> %i.ek, i64 1
  %i.di = extractelement <2 x float> %i.ek, i64 0
  br label %.preheader145.i

.preheader145.i:                                  ; preds = %.preheader145.i.loopexit, %middle.block, %vec.epilog.middle.block, %.lr.ph.i, %.thread29
  %.sroa.0300.0.i = phi nsz float [ 0.000000e+00, %.thread29 ], [ %i.s, %.lr.ph.i ], [ %i.da, %vec.epilog.middle.block ], [ %i.bq, %middle.block ], [ %i.di, %.preheader145.i.loopexit ] ; 2 uses
  %.sroa.13.0.i = phi nsz float [ 0.000000e+00, %.thread29 ], [ %i.t, %.lr.ph.i ], [ %i.cz, %vec.epilog.middle.block ], [ %i.bp, %middle.block ], [ %i.dh, %.preheader145.i.loopexit ] ; 2 uses
  %.sroa.23.0.i = phi nsz float [ 0.000000e+00, %.thread29 ], [ %i.o, %.lr.ph.i ], [ %i.cy, %vec.epilog.middle.block ], [ %i.bo, %middle.block ], [ %i.en, %.preheader145.i.loopexit ] ; 2 uses
  %.sroa.73.0.i = phi nsz float [ 0.000000e+00, %.thread29 ], [ %i.m, %.lr.ph.i ], [ %i.ct, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.et, %.preheader145.i.loopexit ] ; 2 uses
  %.sroa.83.0.i = phi nsz float [ 0.000000e+00, %.thread29 ], [ %i.r, %.lr.ph.i ], [ %i.cs, %vec.epilog.middle.block ], [ %i.bi, %middle.block ], [ %i.ew, %.preheader145.i.loopexit ] ; 2 uses
  %i.dj = phi <4 x float> [ zeroinitializer, %.thread29 ], [ %i.n, %.lr.ph.i ], [ %i.de, %vec.epilog.middle.block ], [ %i.bu, %middle.block ], [ %i.eq, %.preheader145.i.loopexit ] ; 2 uses
  %i.dk = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %3) ; 4 uses
  %exitcond289.peel.not.not.i = icmp ugt i64 %1, %3
  br i1 %exitcond289.peel.not.not.i, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.preheader145.i
  %i.dl = add i64 %i.h, 1                         ; 3 uses
  %sext80.peel.i = shl i64 %3, 32
  %i.dm = ashr exact i64 %sext80.peel.i, 32
  %i.dn = mul nsw i64 %i.dm, 9                    ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.dn ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.do, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.dp, i64 36, i1 false), !tbaa !18, !alias.scope !391, !noalias !393
  %5 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  %7 = load float, ptr %i.dq, align 4, !tbaa !18, !alias.scope !396, !noalias !397
  %8 = load float, ptr %5, align 4, !tbaa !18, !alias.scope !396, !noalias !397
  %9 = fadd reassoc nsz arcp contract afn float %7, %.sroa.73.0.i ; 4 uses
  %10 = load <4 x float>, ptr %6, align 4, !tbaa !18, !alias.scope !396, !noalias !397
  %11 = fadd reassoc nsz arcp contract afn <4 x float> %10, %i.dj ; 4 uses
  %12 = fadd reassoc nsz arcp contract afn float %8, %.sroa.23.0.i ; 4 uses
  %13 = load <2 x float>, ptr %i.dp, align 4, !tbaa !18, !alias.scope !396, !noalias !397
  %14 = insertelement <2 x float> poison, float %.sroa.0300.0.i, i64 0
  %15 = insertelement <2 x float> %14, float %.sroa.13.0.i, i64 1
  %16 = fadd reassoc nsz arcp contract afn <2 x float> %13, %15 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !18, !alias.scope !396, !noalias !397
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, %.sroa.83.0.i ; 4 uses
  %i.du = uitofp reassoc nsz arcp contract afn i64 %i.dl to float ; 2 uses
  %i.dv = extractelement <2 x float> %16, i64 0   ; 2 uses
  %i.dw = extractelement <2 x float> %16, i64 1   ; 2 uses
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %18 = shufflevector <4 x float> %17, <4 x float> %11, <8 x i32> <i32 0, i32 1, i32 poison, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %19 = insertelement <8 x float> %18, float %12, i64 2
  %20 = insertelement <8 x float> %19, float %9, i64 7
  %i.dx = insertelement <8 x float> poison, float %i.du, i64 0
  %i.dy = shufflevector <8 x float> %i.dx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dz = fdiv reassoc nsz arcp contract afn <8 x float> %20, %i.dy
  store <8 x float> %i.dz, ptr %0, align 4, !tbaa !18, !alias.scope !398, !noalias !401
  %i.ea = fdiv reassoc nsz arcp contract afn float %i.dt, %i.du
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ea, ptr %i.eb, align 4, !tbaa !18, !alias.scope !398, !noalias !401
  %.not.peel.i = icmp eq i64 %3, 0
  br i1 %.not.peel.i, label %.critedge.i, label %.peel.next291.i.preheader

.peel.next291.i.preheader:                        ; preds = %bb.i
  %exitcond289.not.i120 = icmp eq i64 %i.dk, 1
  br i1 %exitcond289.not.i120, label %.critedge.i, label %.lr.ph

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.peel.next.i
  %i.ec = phi float [ %i.ew, %.peel.next.i ], [ %.ph, %.peel.next.i.preheader ]
  %i.ed = phi float [ %i.et, %.peel.next.i ], [ %.ph281, %.peel.next.i.preheader ]
  %i.ee = phi float [ %i.en, %.peel.next.i ], [ %.ph282, %.peel.next.i.preheader ]
  %.066150.i = phi i64 [ %i.eh, %.peel.next.i ], [ %.066150.i.ph, %.peel.next.i.preheader ] ; 2 uses
  %i.ef = phi <4 x float> [ %i.eq, %.peel.next.i ], [ %.ph283, %.peel.next.i.preheader ]
  %i.eg = phi <2 x float> [ %i.ek, %.peel.next.i ], [ %.ph284, %.peel.next.i.preheader ]
  %i.eh = add nuw i64 %.066150.i, 1               ; 2 uses
  %.idx310.i = mul i64 %.066150.i, 36
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %.idx310.i ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  %i.ej = load <2 x float>, ptr %i.ei, align 4, !tbaa !18, !alias.scope !384, !noalias !385
  %i.ek = fadd reassoc nsz arcp contract afn <2 x float> %i.ej, %i.eg ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !18, !alias.scope !384, !noalias !385
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %i.ee ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 12
  %i.ep = load <4 x float>, ptr %i.eo, align 4, !tbaa !18, !alias.scope !384, !noalias !385
  %i.eq = fadd reassoc nsz arcp contract afn <4 x float> %i.ep, %i.ef ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.es = load float, ptr %i.er, align 4, !tbaa !18, !alias.scope !384, !noalias !385
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, %i.ed ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !18, !alias.scope !384, !noalias !385
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.ec ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eh, %i.h
  br i1 %exitcond.not.i, label %.preheader145.i.loopexit, label %.peel.next.i, !llvm.loop !403

.peel.next291.i:                                  ; preds = %.lr.ph
  %exitcond289.not.i = icmp eq i64 %i.fr, %i.dk
  br i1 %exitcond289.not.i, label %.critedge.i.loopexit, label %.lr.ph, !llvm.loop !404

.lr.ph:                                           ; preds = %.peel.next291.i.preheader, %.peel.next291.i
  %.068177.i131 = phi i64 [ %i.fr, %.peel.next291.i ], [ 1, %.peel.next291.i.preheader ] ; 3 uses
  %.1178.i130 = phi i64 [ %i.ez, %.peel.next291.i ], [ %i.dl, %.peel.next291.i.preheader ]
  %.sroa.83.1.i129 = phi float [ %i.fj, %.peel.next291.i ], [ %i.dt, %.peel.next291.i.preheader ]
  %.sroa.73.1.i128 = phi float [ %29, %.peel.next291.i ], [ %9, %.peel.next291.i.preheader ]
  %.sroa.83.1.i129.a = phi float [ %26, %.peel.next291.i ], [ %12, %.peel.next291.i.preheader ]
  %i.ex = phi <4 x float> [ %i.fg, %.peel.next291.i ], [ %11, %.peel.next291.i.preheader ]
  %21 = phi <2 x float> [ %23, %.peel.next291.i ], [ %16, %.peel.next291.i.preheader ]
  %i.ey = add nuw i64 %.068177.i131, %3
  %i.ez = add i64 %.1178.i130, 1                  ; 3 uses
  %sext80.i = shl i64 %i.ey, 32
  %i.fa = ashr exact i64 %sext80.i, 32
  %i.fb = mul nsw i64 %i.fa, 9                    ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.fb
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fb ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.fc, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.fd, i64 36, i1 false), !tbaa !18, !alias.scope !407, !noalias !409
  %22 = load <2 x float>, ptr %i.fd, align 4, !tbaa !18, !alias.scope !412, !noalias !413
  %23 = fadd reassoc nsz arcp contract afn <2 x float> %22, %21 ; 6 uses
  %24 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %25 = load float, ptr %24, align 4, !tbaa !18, !alias.scope !412, !noalias !413
  %26 = fadd reassoc nsz arcp contract afn float %25, %.sroa.83.1.i129.a ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load <4 x float>, ptr %i.fe, align 4, !tbaa !18, !alias.scope !412, !noalias !413
  %i.fg = fadd reassoc nsz arcp contract afn <4 x float> %i.ff, %i.ex ; 4 uses
  %27 = getelementptr inbounds nuw i8, ptr %i.fd, i64 28
  %28 = load float, ptr %27, align 4, !tbaa !18, !alias.scope !412, !noalias !413
  %29 = fadd reassoc nsz arcp contract afn float %28, %.sroa.73.1.i128 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !18, !alias.scope !412, !noalias !413
  %i.fj = fadd reassoc nsz arcp contract afn float %i.fi, %.sroa.83.1.i129 ; 4 uses
  %.idx81.i = mul i64 %.068177.i131, 36
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 %.idx81.i ; 2 uses
  %i.fl = uitofp reassoc nsz arcp contract afn i64 %i.ez to float ; 2 uses
  %30 = shufflevector <4 x float> %i.fg, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison>
  %31 = shufflevector <2 x float> %23, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <8 x float> %31, <8 x float> %30, <8 x i32> <i32 0, i32 1, i32 poison, i32 11, i32 12, i32 13, i32 14, i32 poison>
  %33 = insertelement <8 x float> %32, float %26, i64 2
  %34 = insertelement <8 x float> %33, float %29, i64 7
  %i.fm = insertelement <8 x float> poison, float %i.fl, i64 0
  %i.fn = shufflevector <8 x float> %i.fm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.fo = fdiv reassoc nsz arcp contract afn <8 x float> %34, %i.fn
  store <8 x float> %i.fo, ptr %i.fk, align 4, !tbaa !18, !alias.scope !398, !noalias !401
  %i.fp = fdiv reassoc nsz arcp contract afn float %i.fj, %i.fl
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 32
  store float %i.fp, ptr %i.fq, align 4, !tbaa !18, !alias.scope !398, !noalias !401
  %i.fr = add i64 %.068177.i131, 1                ; 4 uses
  %.not.i = icmp ugt i64 %i.fr, %3
  br i1 %.not.i, label %..critedge.i.loopexit_crit_edge, label %.peel.next291.i, !llvm.loop !404

..critedge.i.loopexit_crit_edge:                  ; preds = %.lr.ph
  %i.fs = extractelement <2 x float> %23, i64 0
  %i.ft = extractelement <2 x float> %23, i64 1
  br label %.critedge.i, !llvm.loop !404

.critedge.i.loopexit:                             ; preds = %.peel.next291.i
  %i.fu = extractelement <2 x float> %23, i64 1
  %i.fv = extractelement <2 x float> %23, i64 0
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit, %.peel.next291.i.preheader, %..critedge.i.loopexit_crit_edge, %bb.i, %.preheader145.i
  %.sroa.0300.2.i = phi nsz float [ %i.dv, %bb.i ], [ %.sroa.0300.0.i, %.preheader145.i ], [ %i.dv, %.peel.next291.i.preheader ], [ %i.fs, %..critedge.i.loopexit_crit_edge ], [ %i.fv, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.13.2.i = phi nsz float [ %i.dw, %bb.i ], [ %.sroa.13.0.i, %.preheader145.i ], [ %i.dw, %.peel.next291.i.preheader ], [ %i.ft, %..critedge.i.loopexit_crit_edge ], [ %i.fu, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.23.2.i = phi nsz float [ %12, %bb.i ], [ %.sroa.23.0.i, %.preheader145.i ], [ %12, %.peel.next291.i.preheader ], [ %26, %..critedge.i.loopexit_crit_edge ], [ %26, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.73.2.i = phi nsz float [ %9, %bb.i ], [ %.sroa.73.0.i, %.preheader145.i ], [ %9, %.peel.next291.i.preheader ], [ %29, %..critedge.i.loopexit_crit_edge ], [ %29, %.critedge.i.loopexit ] ; 2 uses
  %.sroa.83.2.i = phi nsz float [ %i.dt, %bb.i ], [ %.sroa.83.0.i, %.preheader145.i ], [ %i.dt, %.peel.next291.i.preheader ], [ %i.fj, %..critedge.i.loopexit_crit_edge ], [ %i.fj, %.critedge.i.loopexit ] ; 3 uses
  %.068.lcssa.i = phi i64 [ 1, %bb.i ], [ 0, %.preheader145.i ], [ %i.dk, %.peel.next291.i.preheader ], [ %i.fr, %..critedge.i.loopexit_crit_edge ], [ %i.dk, %.critedge.i.loopexit ] ; 4 uses
  %.1.lcssa.i = phi i64 [ %i.dl, %bb.i ], [ %i.h, %.preheader145.i ], [ %1, %.peel.next291.i.preheader ], [ %i.ez, %..critedge.i.loopexit_crit_edge ], [ %1, %.critedge.i.loopexit ] ; 4 uses
  %i.fw = phi <4 x float> [ %11, %bb.i ], [ %i.dj, %.preheader145.i ], [ %11, %.peel.next291.i.preheader ], [ %i.fg, %..critedge.i.loopexit_crit_edge ], [ %i.fg, %.critedge.i.loopexit ] ; 2 uses
  %i.fx = icmp ule i64 %.068.lcssa.i, %3
  %i.fy = icmp ult i64 %.068.lcssa.i, %1
  %i.fz = and i1 %i.fx, %i.fy
  br i1 %i.fz, label %.lr.ph196.i, label %.preheader144.i

.lr.ph196.i:                                      ; preds = %.critedge.i
  %i.ga = uitofp reassoc nsz arcp contract afn i64 %.1.lcssa.i to float ; 2 uses
  %35 = shufflevector <4 x float> %i.fw, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison>
  %36 = insertelement <8 x float> %35, float %.sroa.0300.2.i, i64 0
  %37 = insertelement <8 x float> %36, float %.sroa.13.2.i, i64 1
  %38 = insertelement <8 x float> %37, float %.sroa.23.2.i, i64 2
  %39 = insertelement <8 x float> %38, float %.sroa.73.2.i, i64 7
  %i.gb = insertelement <8 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <8 x float> %i.gb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gd = fdiv reassoc nsz arcp contract afn <8 x float> %39, %i.gc
  %i.ge = fdiv reassoc nsz arcp contract afn float %.sroa.83.2.i, %i.ga
  br label %bb.j

.preheader144.i:                                  ; preds = %bb.j, %.critedge.i
  %.169.lcssa.i = phi i64 [ %.068.lcssa.i, %.critedge.i ], [ %i.ht, %bb.j ] ; 5 uses
  %i.gf = add i64 %.169.lcssa.i, %3               ; 2 uses
  %i.gg = icmp ult i64 %i.gf, %1
  %i.gh = insertelement <8 x float> poison, float %.sroa.0300.2.i, i64 0
  %i.gi = insertelement <8 x float> %i.gh, float %.sroa.13.2.i, i64 1
  %i.gj = insertelement <8 x float> %i.gi, float %.sroa.23.2.i, i64 2
  %i.gk = shufflevector <4 x float> %i.fw, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gl = shufflevector <8 x float> %i.gj, <8 x float> %i.gk, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 10, i32 11, i32 poison>
  %i.gm = insertelement <8 x float> %i.gl, float %.sroa.73.2.i, i64 7 ; 2 uses
  br i1 %i.gg, label %.lr.ph201.i, label %.preheader.i

.lr.ph201.i:                                      ; preds = %.preheader144.i
  %i.gn = xor i64 %3, -1                          ; 2 uses
  %i.go = uitofp reassoc nsz arcp contract afn i64 %.1.lcssa.i to float ; 3 uses
  %i.gp = add i64 %.169.lcssa.i, %i.gn
  %sext75.peel.i = shl i64 %i.gp, 32
  %i.gq = ashr exact i64 %sext75.peel.i, 32
  %.idx76.peel.i = mul nsw i64 %i.gq, 36
  %i.gr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx76.peel.i ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !18, !alias.scope !414, !noalias !417
  %i.gu = fsub reassoc nsz arcp contract afn float %.sroa.83.2.i, %i.gt
  %sext77.peel.i = shl i64 %i.gf, 32
  %i.gv = ashr exact i64 %sext77.peel.i, 32
  %i.gw = mul nsw i64 %i.gv, 9                    ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gw ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.gz = load <8 x float>, ptr %i.gr, align 4, !tbaa !18, !alias.scope !414, !noalias !417
  %i.ha = fsub reassoc nsz arcp contract afn <8 x float> %i.gm, %i.gz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.gx, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.gy, i64 36, i1 false), !tbaa !18, !alias.scope !423, !noalias !425
  %i.hb = load <8 x float>, ptr %i.gy, align 4, !tbaa !18, !alias.scope !428, !noalias !429
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %i.hb, %i.ha ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.he = load float, ptr %i.hd, align 4, !tbaa !18, !alias.scope !428, !noalias !429
  %i.hf = fadd reassoc nsz arcp contract afn float %i.he, %i.gu ; 3 uses
  %.idx78.peel.i = mul i64 %.169.lcssa.i, 36
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx78.peel.i ; 2 uses
  %i.hh = insertelement <8 x float> poison, float %i.go, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hj = fdiv reassoc nsz arcp contract afn <8 x float> %i.hc, %i.hi
  store <8 x float> %i.hj, ptr %i.hg, align 4, !tbaa !18, !alias.scope !430, !noalias !433
  %i.hk = fdiv reassoc nsz arcp contract afn float %i.hf, %i.go
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store float %i.hk, ptr %i.hl, align 4, !tbaa !18, !alias.scope !430, !noalias !433
  %i.hm = add i64 %.169.lcssa.i, 1                ; 3 uses
  %i.hn = add i64 %i.hm, %3                       ; 2 uses
  %i.ho = icmp ult i64 %i.hn, %1
  br i1 %i.ho, label %.peel.next294.i.preheader, label %.preheader.i

.peel.next294.i.preheader:                        ; preds = %.lr.ph201.i
  %i.hp = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.hi
  %i.hq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.go
  br label %.peel.next294.i

bb.j:                                             ; preds = %bb.j, %.lr.ph196.i
  %.169195.i = phi i64 [ %.068.lcssa.i, %.lr.ph196.i ], [ %i.ht, %bb.j ] ; 3 uses
  %.idx79.i = mul i64 %.169195.i, 36
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 %.idx79.i ; 2 uses
  store <8 x float> %i.gd, ptr %i.hr, align 4, !tbaa !18, !alias.scope !435, !noalias !438
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 32
  store float %i.ge, ptr %i.hs, align 4, !tbaa !18, !alias.scope !435, !noalias !438
  %i.ht = add nuw i64 %.169195.i, 1               ; 3 uses
  %i.hu = icmp ult i64 %.169195.i, %3
  %i.hv = icmp ult i64 %i.ht, %1
  %i.hw = and i1 %i.hu, %i.hv
  br i1 %i.hw, label %bb.j, label %.preheader144.i, !llvm.loop !440

.preheader.i:                                     ; preds = %.peel.next294.i, %.lr.ph201.i, %.preheader144.i
  %.sroa.83.3.i = phi nsz float [ %.sroa.83.2.i, %.preheader144.i ], [ %i.hf, %.lr.ph201.i ], [ %i.kg, %.peel.next294.i ]
  %.270.lcssa.i = phi i64 [ %.169.lcssa.i, %.preheader144.i ], [ %i.hm, %.lr.ph201.i ], [ %i.kk, %.peel.next294.i ] ; 8 uses
  %i.hx = phi <8 x float> [ %i.gm, %.preheader144.i ], [ %i.hc, %.lr.ph201.i ], [ %i.ke, %.peel.next294.i ]
  %i.hy = icmp ult i64 %.270.lcssa.i, %1
  br i1 %i.hy, label %.lr.ph232.i, label %_ZL16_blur_horizontalILm9ELb1EEvPfmmS0_.exit

.lr.ph232.i:                                      ; preds = %.preheader.i
  %i.hz = xor i64 %3, -1                          ; 2 uses
  %i.ia = add i64 %.270.lcssa.i, %i.hz
  %i.ib = add i64 %.1.lcssa.i, -1                 ; 2 uses
  %sext.peel.i = shl i64 %i.ia, 32
  %i.ic = ashr exact i64 %sext.peel.i, 32
  %.idx.peel.i = mul nsw i64 %i.ic, 36
  %i.id = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.peel.i ; 2 uses
  %i.ie = load <8 x float>, ptr %i.id, align 4, !tbaa !18, !alias.scope !441, !noalias !444
  %i.if = fsub reassoc nsz arcp contract afn <8 x float> %i.hx, %i.ie ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !18, !alias.scope !441, !noalias !444
  %i.ii = fsub reassoc nsz arcp contract afn float %.sroa.83.3.i, %i.ih ; 3 uses
  %.idx74.peel.i = mul i64 %.270.lcssa.i, 36
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 %.idx74.peel.i ; 2 uses
  %i.ik = uitofp reassoc nsz arcp contract afn i64 %i.ib to float ; 2 uses
  %i.il = insertelement <8 x float> poison, float %i.ik, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = fdiv reassoc nsz arcp contract afn <8 x float> %i.if, %i.im
  store <8 x float> %i.in, ptr %i.ij, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.io = fdiv reassoc nsz arcp contract afn float %i.ii, %i.ik
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  store float %i.io, ptr %i.ip, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.iq = add nuw i64 %.270.lcssa.i, 1            ; 3 uses
  %exitcond296.peel.not.i = icmp eq i64 %i.iq, %1
  br i1 %exitcond296.peel.not.i, label %_ZL16_blur_horizontalILm9ELb1EEvPfmmS0_.exit, label %.peel.next298.i.preheader

.peel.next298.i.preheader:                        ; preds = %.lr.ph232.i
  %i.ir = add i64 %1, -2
  %i.is = sub i64 %.270.lcssa.i, %1
  %i.it = and i64 %i.is, 1
  %lcmp.mod.not.not = icmp eq i64 %i.it, 0
  br i1 %lcmp.mod.not.not, label %.peel.next298.i.prol, label %.peel.next298.i.prol.loopexit

.peel.next298.i.prol:                             ; preds = %.peel.next298.i.preheader
  %i.iu = sub i64 %.270.lcssa.i, %3
  %i.iv = add i64 %.1.lcssa.i, -2                 ; 2 uses
  %sext.i.prol = shl i64 %i.iu, 32
  %i.iw = ashr exact i64 %sext.i.prol, 32
  %.idx.i.prol = mul nsw i64 %i.iw, 36
  %i.ix = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.prol ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !18, !alias.scope !452, !noalias !454
  %i.ja = fsub reassoc nsz arcp contract afn float %i.ii, %i.iz ; 2 uses
  %.idx74.i.prol = mul i64 %i.iq, 36
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 %.idx74.i.prol ; 2 uses
  %i.jc = uitofp reassoc nsz arcp contract afn i64 %i.iv to float ; 2 uses
  %i.jd = load <8 x float>, ptr %i.ix, align 4, !tbaa !18, !alias.scope !452, !noalias !454
  %i.je = fsub reassoc nsz arcp contract afn <8 x float> %i.if, %i.jd ; 2 uses
  %i.jf = insertelement <8 x float> poison, float %i.jc, i64 0
  %i.jg = shufflevector <8 x float> %i.jf, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jh = fdiv reassoc nsz arcp contract afn <8 x float> %i.je, %i.jg
  store <8 x float> %i.jh, ptr %i.jb, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.ji = fdiv reassoc nsz arcp contract afn float %i.ja, %i.jc
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  store float %i.ji, ptr %i.jj, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.jk = add nuw i64 %.270.lcssa.i, 2
  br label %.peel.next298.i.prol.loopexit

.peel.next298.i.prol.loopexit:                    ; preds = %.peel.next298.i.prol, %.peel.next298.i.preheader
  %.unr = phi float [ %i.ii, %.peel.next298.i.preheader ], [ %i.ja, %.peel.next298.i.prol ]
  %.2231.i.unr = phi i64 [ %i.ib, %.peel.next298.i.preheader ], [ %i.iv, %.peel.next298.i.prol ]
  %.3230.i.unr = phi i64 [ %i.iq, %.peel.next298.i.preheader ], [ %i.jk, %.peel.next298.i.prol ]
  %.unr318 = phi <8 x float> [ %i.if, %.peel.next298.i.preheader ], [ %i.je, %.peel.next298.i.prol ]
  %i.jl = icmp eq i64 %i.ir, %.270.lcssa.i
  br i1 %i.jl, label %_ZL16_blur_horizontalILm9ELb1EEvPfmmS0_.exit, label %.peel.next298.i

.peel.next294.i:                                  ; preds = %.peel.next294.i.preheader, %.peel.next294.i
  %i.jm = phi float [ %i.kg, %.peel.next294.i ], [ %i.hf, %.peel.next294.i.preheader ]
  %i.jn = phi i64 [ %i.kl, %.peel.next294.i ], [ %i.hn, %.peel.next294.i.preheader ]
  %.270200.i = phi i64 [ %i.kk, %.peel.next294.i ], [ %i.hm, %.peel.next294.i.preheader ] ; 3 uses
  %i.jo = phi <8 x float> [ %i.ke, %.peel.next294.i ], [ %i.hc, %.peel.next294.i.preheader ]
  %i.jp = add i64 %.270200.i, %i.gn
  %sext75.i = shl i64 %i.jp, 32
  %i.jq = ashr exact i64 %sext75.i, 32
  %.idx76.i = mul nsw i64 %i.jq, 36
  %i.jr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx76.i ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.jt = load float, ptr %i.js, align 4, !tbaa !18, !alias.scope !414, !noalias !417
  %i.ju = fsub reassoc nsz arcp contract afn float %i.jm, %i.jt
  %sext77.i = shl i64 %i.jn, 32
  %i.jv = ashr exact i64 %sext77.i, 32
  %i.jw = mul nsw i64 %i.jv, 9                    ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.jw
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.jw ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %.idx78.i = mul i64 %.270200.i, 36
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 %.idx78.i ; 2 uses
  %i.kb = load <8 x float>, ptr %i.jr, align 4, !tbaa !18, !alias.scope !414, !noalias !417
  %i.kc = fsub reassoc nsz arcp contract afn <8 x float> %i.jo, %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.jx, ptr noundef nonnull readonly align 4 dereferenceable(36) %i.jy, i64 36, i1 false), !tbaa !18, !alias.scope !459, !noalias !425
  %i.kd = load <8 x float>, ptr %i.jy, align 4, !tbaa !18, !alias.scope !428, !noalias !460
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.kd, %i.kc ; 3 uses
  %i.kf = load float, ptr %i.jz, align 4, !tbaa !18, !alias.scope !428, !noalias !460
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kf, %i.ju ; 3 uses
  %i.kh = fmul reassoc nsz arcp contract afn <8 x float> %i.ke, %i.hp
  store <8 x float> %i.kh, ptr %i.ka, align 4, !tbaa !18, !alias.scope !430, !noalias !433
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kg, %i.hq
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  store float %i.ki, ptr %i.kj, align 4, !tbaa !18, !alias.scope !430, !noalias !433
  %i.kk = add i64 %.270200.i, 1                   ; 3 uses
  %i.kl = add i64 %i.kk, %3                       ; 2 uses
  %i.km = icmp ult i64 %i.kl, %1
  br i1 %i.km, label %.peel.next294.i, label %.preheader.i, !llvm.loop !461

.peel.next298.i:                                  ; preds = %.peel.next298.i.prol.loopexit, %.peel.next298.i
  %i.kn = phi float [ %i.ll, %.peel.next298.i ], [ %.unr, %.peel.next298.i.prol.loopexit ]
  %.2231.i = phi i64 [ %i.lg, %.peel.next298.i ], [ %.2231.i.unr, %.peel.next298.i.prol.loopexit ] ; 2 uses
  %.3230.i = phi i64 [ %i.lx, %.peel.next298.i ], [ %.3230.i.unr, %.peel.next298.i.prol.loopexit ] ; 5 uses
  %i.ko = phi <8 x float> [ %i.lr, %.peel.next298.i ], [ %.unr318, %.peel.next298.i.prol.loopexit ]
  %i.kp = add i64 %.3230.i, %i.hz
  %i.kq = add i64 %.2231.i, -1
  %sext.i = shl i64 %i.kp, 32
  %i.kr = ashr exact i64 %sext.i, 32
  %.idx.i = mul nsw i64 %i.kr, 36
  %i.ks = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 32
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !18, !alias.scope !452, !noalias !454
  %i.kv = fsub reassoc nsz arcp contract afn float %i.kn, %i.ku ; 2 uses
  %.idx74.i = mul i64 %.3230.i, 36
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 %.idx74.i ; 2 uses
  %i.kx = uitofp reassoc nsz arcp contract afn i64 %i.kq to float ; 2 uses
  %i.ky = load <8 x float>, ptr %i.ks, align 4, !tbaa !18, !alias.scope !452, !noalias !454
  %i.kz = fsub reassoc nsz arcp contract afn <8 x float> %i.ko, %i.ky ; 2 uses
  %i.la = insertelement <8 x float> poison, float %i.kx, i64 0
  %i.lb = shufflevector <8 x float> %i.la, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lc = fdiv reassoc nsz arcp contract afn <8 x float> %i.kz, %i.lb
  store <8 x float> %i.lc, ptr %i.kw, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.ld = fdiv reassoc nsz arcp contract afn float %i.kv, %i.kx
  %i.le = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  store float %i.ld, ptr %i.le, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.lf = sub i64 %.3230.i, %3
  %i.lg = add i64 %.2231.i, -2                    ; 2 uses
  %sext.i.1 = shl i64 %i.lf, 32
  %i.lh = ashr exact i64 %sext.i.1, 32
  %.idx.i.1 = mul nsw i64 %i.lh, 36
  %i.li = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.1 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !18, !alias.scope !452, !noalias !454
  %i.ll = fsub reassoc nsz arcp contract afn float %i.kv, %i.lk ; 2 uses
  %i.lm = mul i64 %.3230.i, 36
  %i.ln = getelementptr i8, ptr %0, i64 %i.lm     ; 2 uses
  %i.lo = getelementptr i8, ptr %i.ln, i64 36
  %i.lp = uitofp reassoc nsz arcp contract afn i64 %i.lg to float ; 2 uses
  %i.lq = load <8 x float>, ptr %i.li, align 4, !tbaa !18, !alias.scope !452, !noalias !454
  %i.lr = fsub reassoc nsz arcp contract afn <8 x float> %i.kz, %i.lq ; 2 uses
  %i.ls = insertelement <8 x float> poison, float %i.lp, i64 0
  %i.lt = shufflevector <8 x float> %i.ls, <8 x float> poison, <8 x i32> zeroinitializer
  %i.lu = fdiv reassoc nsz arcp contract afn <8 x float> %i.lr, %i.lt
  store <8 x float> %i.lu, ptr %i.lo, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.lv = fdiv reassoc nsz arcp contract afn float %i.ll, %i.lp
  %i.lw = getelementptr i8, ptr %i.ln, i64 68
  store float %i.lv, ptr %i.lw, align 4, !tbaa !18, !alias.scope !447, !noalias !450
  %i.lx = add nuw i64 %.3230.i, 2                 ; 2 uses
  %exitcond296.not.i.1 = icmp eq i64 %i.lx, %1
  br i1 %exitcond296.not.i.1, label %_ZL16_blur_horizontalILm9ELb1EEvPfmmS0_.exit, label %.peel.next298.i, !llvm.loop !462

_ZL16_blur_horizontalILm9ELb1EEvPfmmS0_.exit:     ; preds = %.peel.next298.i.prol.loopexit, %.peel.next298.i, %.preheader.i, %.lr.ph232.i
  br i1 %.not, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZL16_blur_horizontalILm9ELb1EEvPfmmS0_.exit
  tail call void @free(ptr noundef nonnull %i.g) #11
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 667, ptr noundef nonnull @__FUNCTION__.dt_box_mean_horizontal)
  unreachable

bb.n:                                             ; preds = %bb.d, %bb.k, %_ZL16_blur_horizontalILm9ELb1EEvPfmmS0_.exit, %bb.l, %bb.e, %bb.f
  ret void
}

declare i64 @dt_round_size(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL16_blur_horizontalILm4ELb1EEvPfmmS0_(ptr noalias nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
.preheader109:
  %i.a = tail call i64 @llvm.umin.i64(i64 %2, i64 %1) ; 10 uses
  %.not177 = icmp eq i64 %i.a, 0
  br i1 %.not177, label %.preheader108, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader109
  %i.b = shl nuw i64 %i.a, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %3, ptr align 4 %0, i64 %i.b, i1 false), !tbaa !18, !alias.scope !463, !noalias !467
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !18, !alias.scope !470, !noalias !472 ; 4 uses
  %i.g = load float, ptr %i.d, align 4, !tbaa !18, !alias.scope !470, !noalias !472 ; 4 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !18, !alias.scope !470, !noalias !472 ; 4 uses
  %i.i = load float, ptr %0, align 4, !tbaa !18, !alias.scope !470, !noalias !472 ; 4 uses
  %exitcond.peel.not = icmp eq i64 %i.a, 1
  br i1 %exitcond.peel.not, label %.preheader108, label %iter.check

iter.check:                                       ; preds = %.lr.ph
  %i.j = add i64 %i.a, -1                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.a, 5
  br i1 %min.iters.check, label %.peel.next.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check258 = icmp ult i64 %i.a, 17
  br i1 %min.iters.check258, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  %i.l = or disjoint i64 %n.vec, 1
  %i.m = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.f, i64 0
  %i.n = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.g, i64 0
  %i.o = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.h, i64 0
  %i.p = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <4 x float> [ %i.m, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi259 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi260 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi261 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %vec.phi262 = phi <4 x float> [ %i.n, %vector.ph ], [ %i.ak, %vector.body ]
  %vec.phi263 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi264 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi265 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi266 = phi <4 x float> [ %i.o, %vector.ph ], [ %i.ag, %vector.body ]
  %vec.phi267 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ah, %vector.body ]
  %vec.phi268 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ai, %vector.body ]
  %vec.phi269 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.aj, %vector.body ]
  %vec.phi270 = phi <4 x float> [ %i.p, %vector.ph ], [ %i.ac, %vector.body ]
  %vec.phi271 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ad, %vector.body ]
  %vec.phi272 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.ae, %vector.body ]
  %vec.phi273 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.af, %vector.body ]
  %i.q = shl i64 %index, 4
  %i.r = shl i64 %index, 4
  %i.s = shl i64 %index, 4
  %i.t = shl i64 %index, 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %wide.vec = load <16 x float>, ptr %i.v, align 4, !tbaa !18, !alias.scope !477, !noalias !478 ; 4 uses
  %strided.vec = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec274 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec275 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec276 = shufflevector <16 x float> %wide.vec, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec277 = load <16 x float>, ptr %i.x, align 4, !tbaa !18, !alias.scope !477, !noalias !478 ; 4 uses
  %strided.vec278 = shufflevector <16 x float> %wide.vec277, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec279 = shufflevector <16 x float> %wide.vec277, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec280 = shufflevector <16 x float> %wide.vec277, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec281 = shufflevector <16 x float> %wide.vec277, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec282 = load <16 x float>, ptr %i.z, align 4, !tbaa !18, !alias.scope !477, !noalias !478 ; 4 uses
  %strided.vec283 = shufflevector <16 x float> %wide.vec282, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec284 = shufflevector <16 x float> %wide.vec282, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec285 = shufflevector <16 x float> %wide.vec282, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec286 = shufflevector <16 x float> %wide.vec282, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec287 = load <16 x float>, ptr %i.ab, align 4, !tbaa !18, !alias.scope !477, !noalias !478 ; 4 uses
  %strided.vec288 = shufflevector <16 x float> %wide.vec287, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec289 = shufflevector <16 x float> %wide.vec287, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec290 = shufflevector <16 x float> %wide.vec287, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec291 = shufflevector <16 x float> %wide.vec287, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.ac = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec, %vec.phi270 ; 2 uses
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec278, %vec.phi271 ; 2 uses
  %i.ae = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec283, %vec.phi272 ; 2 uses
  %i.af = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec288, %vec.phi273 ; 2 uses
  %i.ag = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec274, %vec.phi266 ; 2 uses
  %i.ah = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec279, %vec.phi267 ; 2 uses
  %i.ai = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec284, %vec.phi268 ; 2 uses
  %i.aj = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec289, %vec.phi269 ; 2 uses
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec275, %vec.phi262 ; 2 uses
  %i.al = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec280, %vec.phi263 ; 2 uses
  %i.am = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec285, %vec.phi264 ; 2 uses
  %i.an = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec290, %vec.phi265 ; 2 uses
  %i.ao = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec276, %vec.phi ; 2 uses
  %i.ap = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec281, %vec.phi259 ; 2 uses
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec286, %vec.phi260 ; 2 uses
  %i.ar = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec291, %vec.phi261 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd reassoc nsz arcp contract afn <4 x float> %i.ap, %i.ao
  %bin.rdx292 = fadd reassoc nsz arcp contract afn <4 x float> %i.aq, %bin.rdx
  %bin.rdx293 = fadd reassoc nsz arcp contract afn <4 x float> %i.ar, %bin.rdx292
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx293) ; 3 uses
  %bin.rdx294 = fadd reassoc nsz arcp contract afn <4 x float> %i.al, %i.ak
  %bin.rdx295 = fadd reassoc nsz arcp contract afn <4 x float> %i.am, %bin.rdx294
  %bin.rdx296 = fadd reassoc nsz arcp contract afn <4 x float> %i.an, %bin.rdx295
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx296) ; 3 uses
  %bin.rdx297 = fadd reassoc nsz arcp contract afn <4 x float> %i.ah, %i.ag
  %bin.rdx298 = fadd reassoc nsz arcp contract afn <4 x float> %i.ai, %bin.rdx297
  %bin.rdx299 = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %bin.rdx298
  %i.av = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx299) ; 3 uses
  %bin.rdx300 = fadd reassoc nsz arcp contract afn <4 x float> %i.ad, %i.ac
  %bin.rdx301 = fadd reassoc nsz arcp contract afn <4 x float> %i.ae, %bin.rdx300
  %bin.rdx302 = fadd reassoc nsz arcp contract afn <4 x float> %i.af, %bin.rdx301
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx302) ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.preheader108, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.peel.next.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.at, %vec.epilog.iter.check ], [ %i.f, %vector.main.loop.iter.check ]
  %bc.merge.rdx303 = phi float [ %i.au, %vec.epilog.iter.check ], [ %i.g, %vector.main.loop.iter.check ]
  %bc.merge.rdx304 = phi float [ %i.av, %vec.epilog.iter.check ], [ %i.h, %vector.main.loop.iter.check ]
  %bc.merge.rdx305 = phi float [ %i.aw, %vec.epilog.iter.check ], [ %i.i, %vector.main.loop.iter.check ]
  %n.vec306 = and i64 %i.j, -4                    ; 3 uses
  %i.ax = or disjoint i64 %n.vec306, 1
  %i.ay = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.az = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx303, i64 0
  %i.ba = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx304, i64 0
  %i.bb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx305, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index307 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next317, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi308 = phi <4 x float> [ %i.ay, %vec.epilog.ph ], [ %i.bi, %vec.epilog.vector.body ]
  %vec.phi309 = phi <4 x float> [ %i.az, %vec.epilog.ph ], [ %i.bh, %vec.epilog.vector.body ]
  %vec.phi310 = phi <4 x float> [ %i.ba, %vec.epilog.ph ], [ %i.bg, %vec.epilog.vector.body ]
  %vec.phi311 = phi <4 x float> [ %i.bb, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.bc = shl i64 %index307, 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %wide.vec312 = load <16 x float>, ptr %i.be, align 4, !tbaa !18, !alias.scope !477, !noalias !478 ; 4 uses
  %strided.vec313 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec314 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec315 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec316 = shufflevector <16 x float> %wide.vec312, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.bf = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec313, %vec.phi311 ; 2 uses
  %i.bg = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec314, %vec.phi310 ; 2 uses
  %i.bh = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec315, %vec.phi309 ; 2 uses
  %i.bi = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec316, %vec.phi308 ; 2 uses
  %index.next317 = add nuw i64 %index307, 4       ; 2 uses
  %i.bj = icmp eq i64 %index.next317, %n.vec306
  br i1 %i.bj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !480

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bk = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bi) ; 2 uses
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bh) ; 2 uses
  %i.bm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bg) ; 2 uses
  %i.bn = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bf) ; 2 uses
  %cmp.n318 = icmp eq i64 %i.j, %n.vec306
  br i1 %cmp.n318, label %.preheader108, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi float [ %i.f, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  %.ph350 = phi float [ %i.g, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ]
  %.ph351 = phi float [ %i.h, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  %.066114.ph = phi i64 [ 1, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
end_hunk_0
begin_hunk_1_@_ZL16_blur_horizontalILm4ELb1EEvPfmmS0_:.preheader109
  %i.fn = fdiv reassoc nsz arcp contract afn <4 x float> %i.fj, %i.fm
  store <4 x float> %i.fn, ptr %i.fk, align 4, !tbaa !18, !alias.scope !524, !noalias !527
  %i.fo = add i64 %.169.lcssa, 1                  ; 3 uses
  %i.fp = add i64 %i.fo, %2                       ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %1
  br i1 %i.fq, label %.peel.next204.preheader, label %.preheader

.peel.next204.preheader:                          ; preds = %.lr.ph146
  %i.fr = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.fm
  br label %.peel.next204

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.169138 = phi i64 [ %i.ft, %scalar.ph ], [ %.169138.ph, %scalar.ph.preheader ] ; 3 uses
  %.idx77 = shl i64 %.169138, 4
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %.idx77
  store <4 x float> %i.eh, ptr %i.fs, align 4, !tbaa !18, !alias.scope !502, !noalias !505
  %i.ft = add nuw i64 %.169138, 1                 ; 3 uses
  %i.fu = icmp ult i64 %.169138, %2
  %i.fv = icmp ult i64 %i.ft, %1
  %i.fw = and i1 %i.fu, %i.fv
  br i1 %i.fw, label %scalar.ph, label %.preheader107, !llvm.loop !529

.preheader:                                       ; preds = %.peel.next204, %.lr.ph146, %.preheader107
  %.270.lcssa = phi i64 [ %.169.lcssa, %.preheader107 ], [ %i.fo, %.lr.ph146 ], [ %i.hq, %.peel.next204 ] ; 8 uses
  %i.fx = phi <4 x float> [ %i.ex, %.preheader107 ], [ %i.fj, %.lr.ph146 ], [ %i.ho, %.peel.next204 ]
  %i.fy = icmp ult i64 %.270.lcssa, %1
  br i1 %i.fy, label %.lr.ph165, label %._crit_edge

.lr.ph165:                                        ; preds = %.preheader
  %i.fz = xor i64 %2, -1                          ; 2 uses
  %i.ga = add i64 %.270.lcssa, %i.fz
  %i.gb = add i64 %.1.lcssa, -1                   ; 2 uses
  %sext.peel = shl i64 %i.ga, 32
  %i.gc = ashr exact i64 %sext.peel, 28
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 %i.gc
  %i.ge = load <4 x float>, ptr %i.gd, align 4, !tbaa !18, !alias.scope !530, !noalias !533
  %i.gf = fsub reassoc nsz arcp contract afn <4 x float> %i.fx, %i.ge ; 3 uses
  %.idx.peel = shl i64 %.270.lcssa, 4
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.peel
  %i.gh = uitofp reassoc nsz arcp contract afn i64 %i.gb to float
  %i.gi = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gk = fdiv reassoc nsz arcp contract afn <4 x float> %i.gf, %i.gj
  store <4 x float> %i.gk, ptr %i.gg, align 4, !tbaa !18, !alias.scope !536, !noalias !539
  %i.gl = add nuw i64 %.270.lcssa, 1              ; 3 uses
  %exitcond206.peel.not = icmp eq i64 %i.gl, %1
  br i1 %exitcond206.peel.not, label %._crit_edge, label %.peel.next208.preheader

.peel.next208.preheader:                          ; preds = %.lr.ph165
  %i.gm = add i64 %1, -2
  %i.gn = sub i64 %.270.lcssa, %1
  %i.go = and i64 %i.gn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.go, 0
  br i1 %lcmp.mod.not.not, label %.peel.next208.prol, label %.peel.next208.prol.loopexit

.peel.next208.prol:                               ; preds = %.peel.next208.preheader
  %i.gp = sub i64 %.270.lcssa, %2
  %i.gq = add i64 %.1.lcssa, -2                   ; 2 uses
  %sext.prol = shl i64 %i.gp, 32
  %i.gr = ashr exact i64 %sext.prol, 28
  %i.gs = getelementptr inbounds nuw i8, ptr %3, i64 %i.gr
  %.idx.prol = shl i64 %i.gl, 4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.prol
  %i.gu = uitofp reassoc nsz arcp contract afn i64 %i.gq to float
  %i.gv = load <4 x float>, ptr %i.gs, align 4, !tbaa !18, !alias.scope !541, !noalias !543
  %i.gw = fsub reassoc nsz arcp contract afn <4 x float> %i.gf, %i.gv ; 2 uses
  %i.gx = insertelement <4 x float> poison, float %i.gu, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fdiv reassoc nsz arcp contract afn <4 x float> %i.gw, %i.gy
  store <4 x float> %i.gz, ptr %i.gt, align 4, !tbaa !18, !alias.scope !536, !noalias !539
  %i.ha = add nuw i64 %.270.lcssa, 2
  br label %.peel.next208.prol.loopexit

.peel.next208.prol.loopexit:                      ; preds = %.peel.next208.prol, %.peel.next208.preheader
  %.2164.unr = phi i64 [ %i.gb, %.peel.next208.preheader ], [ %i.gq, %.peel.next208.prol ]
  %.3163.unr = phi i64 [ %i.gl, %.peel.next208.preheader ], [ %i.ha, %.peel.next208.prol ]
  %.unr = phi <4 x float> [ %i.gf, %.peel.next208.preheader ], [ %i.gw, %.peel.next208.prol ]
  %i.hb = icmp eq i64 %i.gm, %.270.lcssa
  br i1 %i.hb, label %._crit_edge, label %.peel.next208

.peel.next204:                                    ; preds = %.peel.next204.preheader, %.peel.next204
  %i.hc = phi i64 [ %i.hr, %.peel.next204 ], [ %i.fp, %.peel.next204.preheader ]
  %.270145 = phi i64 [ %i.hq, %.peel.next204 ], [ %i.fo, %.peel.next204.preheader ] ; 3 uses
  %i.hd = phi <4 x float> [ %i.ho, %.peel.next204 ], [ %i.fj, %.peel.next204.preheader ]
  %i.he = add i64 %.270145, %i.ey
  %sext74 = shl i64 %i.he, 32
  %i.hf = ashr exact i64 %sext74, 28
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 %i.hf
  %sext75 = shl i64 %i.hc, 32
  %i.hh = ashr exact i64 %sext75, 30              ; 2 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hh
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.hh ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !546)
  %.idx76 = shl i64 %.270145, 4
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 %.idx76
  %i.hl = load <4 x float>, ptr %i.hg, align 4, !tbaa !18, !alias.scope !511, !noalias !514
  %i.hm = fsub reassoc nsz arcp contract afn <4 x float> %i.hd, %i.hl
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hi, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.hj, i64 16, i1 false), !tbaa !18, !alias.scope !548, !noalias !519
  %i.hn = load <4 x float>, ptr %i.hj, align 4, !tbaa !18, !alias.scope !522, !noalias !549
  %i.ho = fadd reassoc nsz arcp contract afn <4 x float> %i.hn, %i.hm ; 3 uses
  %i.hp = fmul reassoc nsz arcp contract afn <4 x float> %i.ho, %i.fr
  store <4 x float> %i.hp, ptr %i.hk, align 4, !tbaa !18, !alias.scope !524, !noalias !527
  %i.hq = add i64 %.270145, 1                     ; 3 uses
  %i.hr = add i64 %i.hq, %2                       ; 2 uses
  %i.hs = icmp ult i64 %i.hr, %1
  br i1 %i.hs, label %.peel.next204, label %.preheader, !llvm.loop !550

.peel.next208:                                    ; preds = %.peel.next208.prol.loopexit, %.peel.next208
  %.2164 = phi i64 [ %i.ig, %.peel.next208 ], [ %.2164.unr, %.peel.next208.prol.loopexit ] ; 2 uses
  %.3163 = phi i64 [ %i.is, %.peel.next208 ], [ %.3163.unr, %.peel.next208.prol.loopexit ] ; 5 uses
  %i.ht = phi <4 x float> [ %i.io, %.peel.next208 ], [ %.unr, %.peel.next208.prol.loopexit ]
  %i.hu = add i64 %.3163, %i.fz
  %i.hv = add i64 %.2164, -1
  %sext = shl i64 %i.hu, 32
  %i.hw = ashr exact i64 %sext, 28
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 %i.hw
  %.idx = shl i64 %.3163, 4
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.hz = uitofp reassoc nsz arcp contract afn i64 %i.hv to float
  %i.ia = load <4 x float>, ptr %i.hx, align 4, !tbaa !18, !alias.scope !541, !noalias !543
  %i.ib = fsub reassoc nsz arcp contract afn <4 x float> %i.ht, %i.ia ; 2 uses
  %i.ic = insertelement <4 x float> poison, float %i.hz, i64 0
  %i.id = shufflevector <4 x float> %i.ic, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ie = fdiv reassoc nsz arcp contract afn <4 x float> %i.ib, %i.id
  store <4 x float> %i.ie, ptr %i.hy, align 4, !tbaa !18, !alias.scope !536, !noalias !539
  %i.if = sub i64 %.3163, %2
  %i.ig = add i64 %.2164, -2                      ; 2 uses
  %sext.1 = shl i64 %i.if, 32
  %i.ih = ashr exact i64 %sext.1, 28
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 %i.ih
  %i.ij = shl i64 %.3163, 4
  %i.ik = getelementptr i8, ptr %0, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  %i.im = uitofp reassoc nsz arcp contract afn i64 %i.ig to float
  %i.in = load <4 x float>, ptr %i.ii, align 4, !tbaa !18, !alias.scope !541, !noalias !543
  %i.io = fsub reassoc nsz arcp contract afn <4 x float> %i.ib, %i.in ; 2 uses
  %i.ip = insertelement <4 x float> poison, float %i.im, i64 0
  %i.iq = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = fdiv reassoc nsz arcp contract afn <4 x float> %i.io, %i.iq
  store <4 x float> %i.ir, ptr %i.il, align 4, !tbaa !18, !alias.scope !536, !noalias !539
  %i.is = add nuw i64 %.3163, 2                   ; 2 uses
  %exitcond206.not.1 = icmp eq i64 %i.is, %1
  br i1 %exitcond206.not.1, label %._crit_edge, label %.peel.next208, !llvm.loop !551

._crit_edge:                                      ; preds = %.peel.next208.prol.loopexit, %.peel.next208, %.lr.ph165, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @dt_box_mean_vertical(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 16777216
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %3, -16777217                    ; 2 uses
  %i.c = icmp ult i32 %i.b, 17
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  %i.e = shl i64 %4, 1                            ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %_ZL20_alloc_scratch_spacemmmmPm.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.f = or disjoint i64 %i.e, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.f, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0910.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ 2, %.lr.ph.preheader.i.i ]
  %i.g = shl i64 %.0910.i.i, 1                    ; 2 uses
  %i.h = lshr i64 %.011.i.i, 1
  %i.i = icmp ugt i64 %.011.i.i, 3
  br i1 %i.i, label %.lr.ph.i.i, label %_ZL20_alloc_scratch_spacemmmmPm.exit, !llvm.loop !11

_ZL20_alloc_scratch_spacemmmmPm.exit:             ; preds = %.lr.ph.i.i, %bb.c
  %.09.lcssa.i.i = phi i64 [ 2, %bb.c ], [ %i.g, %.lr.ph.i.i ]
  %i.j = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 %.09.lcssa.i.i, i64 %1)
  %i.k = mul i64 %2, %i.d                         ; 2 uses
  %i.l = shl i64 %i.j, 4
  %i.m = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.l)
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.m)
  %i.n = shl i64 %..i, 2
  %i.o = add i64 %i.n, 60
  %i.p = and i64 %i.o, -64
  %i.q = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.p) ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZL20_alloc_scratch_spacemmmmPm.exit
  tail call fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noundef %0, i64 noundef %1, i64 noundef %i.k, i64 noundef %4, ptr noundef %i.q)
  tail call void @free(ptr noundef nonnull %i.q) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 687, ptr noundef nonnull @__FUNCTION__.dt_box_mean_vertical)
  unreachable

bb.f:                                             ; preds = %bb.d, %_ZL20_alloc_scratch_spacemmmmPm.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL18_blur_vertical_1chILb1EEvPfmmmS0_m(ptr noalias nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %.not140 = icmp eq i64 %2, 0
  br i1 %.not140, label %._crit_edge, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ]
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not406.i = icmp eq i64 %i.a, 0                ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) ; 18 uses
  %.not407.i = icmp eq i64 %i.c, 0                ; 3 uses
  %exitcond.peel.not.i = icmp eq i64 %i.c, 1      ; 2 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %3) ; 11 uses
  %exitcond460.peel.not.not.i = icmp ugt i64 %1, %3 ; 2 uses
  %i.e = add i64 %i.c, 1                          ; 5 uses
  %sext96.peel.i = shl i64 %3, 32
  %i.f = ashr exact i64 %sext96.peel.i, 32        ; 3 uses
  %i.g = mul i64 %i.f, %2                         ; 2 uses
  %i.h = uitofp reassoc nsz arcp contract afn i64 %i.e to float ; 2 uses
  %.not.peel.i = icmp eq i64 %3, 0                ; 4 uses
  %i.i = xor i64 %3, -1                           ; 12 uses
  %i.j = and i64 %2, -4                           ; 2 uses
  %i.k = insertelement <8 x float> poison, float %i.h, i64 0
  %i.l = shufflevector <8 x float> %i.k, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.m = add i64 %i.c, -1                         ; 4 uses
  %i.n = add i64 %i.c, -2                         ; 2 uses
  %i.o = add i64 %1, -2
  %i.p = add i64 %1, -2
  %i.q = xor i64 %3, -1
  %i.r = add i64 %1, %i.q
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.s = icmp ult i64 %i.n, 3
  %unroll_iter = and i64 %i.m, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod241 = icmp ne i64 %xtraiter, 0
  %i.t = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.l
  %i.u = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.l
  %exitcond460.not.i55 = icmp eq i64 %i.d, 1
  %xtraiter246 = and i64 %i.m, 3                  ; 3 uses
  %i.v = icmp ult i64 %i.n, 3
  %unroll_iter253 = and i64 %i.m, -4
  %lcmp.mod250.not = icmp eq i64 %xtraiter246, 0
  %lcmp.mod252 = icmp ne i64 %xtraiter246, 0
  %i.w = insertelement <4 x float> poison, float %i.h, i64 0
  %i.x = shufflevector <4 x float> %i.w, <4 x float> poison, <4 x i32> zeroinitializer
  %i.y = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.x
  %exitcond220.not.i110 = icmp eq i64 %i.d, 1
  %min.iters.check148 = icmp ugt i64 %i.c, 3
  %ident.check147.not = icmp eq i64 %2, 1
  %or.cond = and i1 %min.iters.check148, %ident.check147.not
  %min.iters.check150 = icmp ult i64 %i.c, 32
  %i.z = and i64 %i.c, 28
  %n.vec152 = and i64 %i.c, -32                   ; 4 uses
  %cmp.n170 = icmp eq i64 %i.c, %n.vec152
  %min.epilog.iters.check175 = icmp eq i64 %i.z, 0
  %n.vec177 = and i64 %i.c, -4                    ; 3 uses
  %cmp.n191 = icmp eq i64 %i.c, %n.vec177
  %xtraiter258 = and i64 %i.c, 3                  ; 2 uses
  %lcmp.mod259.not = icmp eq i64 %xtraiter258, 0
  %exitcond140.not.i126.not = icmp ugt i64 %1, %3
  %ident.check.not = icmp eq i64 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL14_blur_verticalILm16ELb1EEvPfmmmS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph139, %_ZL14_blur_verticalILm16ELb1EEvPfmmmS0_.exit
  %.031138 = phi i64 [ 0, %.lr.ph139 ], [ %i.aa, %_ZL14_blur_verticalILm16ELb1EEvPfmmmS0_.exit ] ; 5 uses
  %i.aa = add i64 %.031138, 16                    ; 3 uses
  %.not = icmp ugt i64 %i.aa, %2
  br i1 %.not, label %.preheader83, label %bb.c

.preheader83:                                     ; preds = %bb.b
  %i.ab = icmp ult i64 %.031138, %i.j
  br i1 %i.ab, label %.lr.ph, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.031138 ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !552)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !555)
  br i1 %.not406.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.ae, %.lr.ph.i ] ; 15 uses
  br i1 %.not407.i, label %.preheader211.i, label %.lr.ph219.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0214.i = phi i64 [ %i.ae, %.lr.ph.i ], [ 1, %bb.c ]
  %.082213.i = phi i64 [ %i.af, %.lr.ph.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.ad = shl i64 %.0214.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = lshr i64 %.082213.i, 1
  %i.ag = icmp ugt i64 %.082213.i, 3
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !557

.lr.ph219.i:                                      ; preds = %._crit_edge.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !558)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %4, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ac, i64 64, i1 false), !tbaa !18, !alias.scope !561, !noalias !563
  %i.ah = load <8 x float>, ptr %i.ac, align 4, !tbaa !18, !alias.scope !566, !noalias !567 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.aj = load <8 x float>, ptr %i.ai, align 4, !tbaa !18, !alias.scope !566, !noalias !567 ; 3 uses
  br i1 %exitcond.peel.not.i, label %.preheader211.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %.lr.ph219.i
  br i1 %i.s, label %.peel.next.i.epil.preheader, label %.peel.next.i

.preheader211.i.loopexit.unr-lcssa:               ; preds = %.peel.next.i
  br i1 %lcmp.mod.not, label %.preheader211.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %.preheader211.i.loopexit.unr-lcssa, %.peel.next.i.preheader
  %.084218.i.epil.init = phi i64 [ 1, %.peel.next.i.preheader ], [ %i.cp, %.preheader211.i.loopexit.unr-lcssa ]
  %.epil.init = phi <8 x float> [ %i.aj, %.peel.next.i.preheader ], [ %i.cy, %.preheader211.i.loopexit.unr-lcssa ]
  %.epil.init238 = phi <8 x float> [ %i.ah, %.peel.next.i.preheader ], [ %i.cv, %.preheader211.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod241)
  br label %.peel.next.i.epil

.peel.next.i.epil:                                ; preds = %.peel.next.i.epil, %.peel.next.i.epil.preheader
  %.084218.i.epil = phi i64 [ %i.am, %.peel.next.i.epil ], [ %.084218.i.epil.init, %.peel.next.i.epil.preheader ] ; 3 uses
  %i.ak = phi <8 x float> [ %i.av, %.peel.next.i.epil ], [ %.epil.init, %.peel.next.i.epil.preheader ]
  %i.al = phi <8 x float> [ %i.as, %.peel.next.i.epil ], [ %.epil.init238, %.peel.next.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.peel.next.i.epil ], [ 0, %.peel.next.i.epil.preheader ]
  %i.am = add nuw i64 %.084218.i.epil, 1
  %i.an = and i64 %.084218.i.epil, %.0.lcssa.i
  %.idx98.i.epil = shl i64 %i.an, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i.epil
  %i.ap = mul i64 %.084218.i.epil, %2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ap ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ao, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.aq, i64 64, i1 false), !tbaa !18, !alias.scope !570, !noalias !572
  %i.ar = load <8 x float>, ptr %i.aq, align 4, !tbaa !18, !alias.scope !575, !noalias !576
  %i.as = fadd reassoc nsz arcp contract afn <8 x float> %i.ar, %i.al ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.au = load <8 x float>, ptr %i.at, align 4, !tbaa !18, !alias.scope !575, !noalias !576
  %i.av = fadd reassoc nsz arcp contract afn <8 x float> %i.au, %i.ak ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader211.i, label %.peel.next.i.epil, !llvm.loop !577

.preheader211.i:                                  ; preds = %.preheader211.i.loopexit.unr-lcssa, %.peel.next.i.epil, %.lr.ph219.i, %._crit_edge.i
  %i.aw = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.aj, %.lr.ph219.i ], [ %i.cy, %.preheader211.i.loopexit.unr-lcssa ], [ %i.av, %.peel.next.i.epil ] ; 2 uses
  %i.ax = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.ah, %.lr.ph219.i ], [ %i.cv, %.preheader211.i.loopexit.unr-lcssa ], [ %i.as, %.peel.next.i.epil ] ; 2 uses
  br i1 %exitcond460.peel.not.not.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.preheader211.i
  %i.ay = and i64 %.0.lcssa.i, %i.f
  %.idx97.peel.i = shl i64 %i.ay, 6
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 %.idx97.peel.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.g ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.az, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ba, i64 64, i1 false), !tbaa !18, !alias.scope !581, !noalias !583
  %i.bb = load <8 x float>, ptr %i.ba, align 4, !tbaa !18, !alias.scope !586, !noalias !587
  %i.bc = fadd reassoc nsz arcp contract afn <8 x float> %i.bb, %i.ax ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.be = load <8 x float>, ptr %i.bd, align 4, !tbaa !18, !alias.scope !586, !noalias !587
  %i.bf = fadd reassoc nsz arcp contract afn <8 x float> %i.be, %i.aw ; 4 uses
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %i.bc, %i.t
  store <8 x float> %i.bg, ptr %i.ac, align 4, !tbaa !18, !alias.scope !588, !noalias !591
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %i.bf, %i.u
  store <8 x float> %i.bi, ptr %i.bh, align 4, !tbaa !18, !alias.scope !588, !noalias !591
  br i1 %.not.peel.i, label %.critedge.i, label %.peel.next462.i.preheader

.peel.next462.i.preheader:                        ; preds = %bb.d
  br i1 %exitcond460.not.i55, label %.critedge.i, label %.lr.ph74

.peel.next.i:                                     ; preds = %.peel.next.i.preheader, %.peel.next.i
  %.084218.i = phi i64 [ %i.cp, %.peel.next.i ], [ 1, %.peel.next.i.preheader ] ; 6 uses
  %i.bj = phi <8 x float> [ %i.cy, %.peel.next.i ], [ %i.aj, %.peel.next.i.preheader ]
  %i.bk = phi <8 x float> [ %i.cv, %.peel.next.i ], [ %i.ah, %.peel.next.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.peel.next.i ], [ 0, %.peel.next.i.preheader ]
  %i.bl = add nuw nsw i64 %.084218.i, 1           ; 2 uses
  %i.bm = and i64 %.084218.i, %.0.lcssa.i
  %.idx98.i = shl i64 %i.bm, 6
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i
  %i.bo = mul i64 %.084218.i, %2
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.bo ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bn, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.bp, i64 64, i1 false), !tbaa !18, !alias.scope !570, !noalias !572
  %i.bq = load <8 x float>, ptr %i.bp, align 4, !tbaa !18, !alias.scope !575, !noalias !576
  %i.br = fadd reassoc nsz arcp contract afn <8 x float> %i.bq, %i.bk
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bt = load <8 x float>, ptr %i.bs, align 4, !tbaa !18, !alias.scope !575, !noalias !576
  %i.bu = fadd reassoc nsz arcp contract afn <8 x float> %i.bt, %i.bj
  %i.bv = add nuw nsw i64 %.084218.i, 2           ; 2 uses
  %i.bw = and i64 %i.bl, %.0.lcssa.i
  %.idx98.i.1 = shl i64 %i.bw, 6
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i.1
  %i.by = mul i64 %i.bl, %2
end_hunk_1
begin_hunk_2_@dt_box_min:bb.a
  %.05262.i111.i = phi i64 [ %i.sr, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ] ; 10 uses
  %.sroa.0.161.i.i = phi float [ %i.sq, %.lr.ph.i110.i ], [ f0x7F7FFFFF, %.lr.ph.i110.i.preheader ]
  %niter437 = phi i64 [ %niter437.next.3, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ]
  %i.re = add nuw nsw i64 %.05262.i111.i, 24
  %i.rf = mul i64 %i.re, %i.mo
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rf
  tail call void @llvm.prefetch.p0(ptr %i.rg, i32 0, i32 0, i32 1), !noalias !957
  %i.rh = and i64 %.05262.i111.i, %i.mk
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rh
  %i.rj = mul nsw i64 %.05262.i111.i, %i.mo
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !18, !alias.scope !967, !noalias !968 ; 2 uses
  store float %i.rl, ptr %i.ri, align 16, !tbaa !18, !alias.scope !968, !noalias !967
  %i.rm = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.161.i.i, float %i.rl)
  %i.rn = or disjoint i64 %.05262.i111.i, 1       ; 2 uses
  %i.ro = add nuw nsw i64 %.05262.i111.i, 25
  %i.rp = mul i64 %i.ro, %i.mo
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rp
  tail call void @llvm.prefetch.p0(ptr %i.rq, i32 0, i32 0, i32 1), !noalias !957
  %i.rr = and i64 %i.rn, %i.mk
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.rr
  %i.rt = mul nsw i64 %i.rn, %i.mo
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !18, !alias.scope !974, !noalias !975 ; 2 uses
  store float %i.rv, ptr %i.rs, align 4, !tbaa !18, !alias.scope !975, !noalias !974
  %i.rw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rm, float %i.rv)
  %i.rx = or disjoint i64 %.05262.i111.i, 2       ; 2 uses
  %i.ry = add nuw nsw i64 %.05262.i111.i, 26
  %i.rz = mul i64 %i.ry, %i.mo
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.rz
  tail call void @llvm.prefetch.p0(ptr %i.sa, i32 0, i32 0, i32 1), !noalias !957
  %i.sb = and i64 %i.rx, %i.mk
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.sb
  %i.sd = mul nsw i64 %i.rx, %i.mo
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.sd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.sf = load float, ptr %i.se, align 4, !tbaa !18, !alias.scope !980, !noalias !981 ; 2 uses
  store float %i.sf, ptr %i.sc, align 8, !tbaa !18, !alias.scope !981, !noalias !980
  %i.sg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rw, float %i.sf)
  %i.sh = or disjoint i64 %.05262.i111.i, 3       ; 2 uses
  %i.si = add nuw nsw i64 %.05262.i111.i, 27
  %i.sj = mul i64 %i.si, %i.mo
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.sj
  tail call void @llvm.prefetch.p0(ptr %i.sk, i32 0, i32 0, i32 1), !noalias !957
  %i.sl = and i64 %i.sh, %i.mk
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.sl
  %i.sn = mul nsw i64 %i.sh, %i.mo
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.sn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.sp = load float, ptr %i.so, align 4, !tbaa !18, !alias.scope !986, !noalias !987 ; 2 uses
  store float %i.sp, ptr %i.sm, align 4, !tbaa !18, !alias.scope !987, !noalias !986
  %i.sq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sg, float %i.sp) ; 3 uses
  %i.sr = add nuw nsw i64 %.05262.i111.i, 4       ; 2 uses
  %niter437.next.3 = add i64 %niter437, 4         ; 2 uses
  %niter437.ncmp.3 = icmp eq i64 %niter437.next.3, %unroll_iter436
  br i1 %niter437.ncmp.3, label %.preheader.i113.i.loopexit.unr-lcssa, label %.lr.ph.i110.i, !llvm.loop !988

.lr.ph70.i.i:                                     ; preds = %.preheader.i113.i, %bb.r
  %indvars.iv.i114.i = phi i64 [ %indvars.iv.next.i121.i, %bb.r ], [ %i.mq, %.preheader.i113.i ] ; 3 uses
  %.05169.i.i = phi i64 [ %i.uk, %bb.r ], [ 0, %.preheader.i113.i ] ; 7 uses
  %.sroa.0.268.i.i = phi float [ %.sroa.0.5.i.i, %bb.r ], [ %.sroa.0.1.lcssa.i.i, %.preheader.i113.i ] ; 2 uses
  %umin319 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.mp)
  %i.ss = xor i64 %.05169.i.i, -1
  %i.st = add nsw i64 %i.c, %i.ss
  %i.su = add i64 %umin319, %i.st                 ; 3 uses
  %umin.i115.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.mp)
  %i.sv = add nuw nsw i64 %.05169.i.i, 24
  %i.sw = mul i64 %i.sv, %i.mo
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.sw
  tail call void @llvm.prefetch.p0(ptr %i.sx, i32 0, i32 0, i32 1), !noalias !957
  %i.sy = mul nsw i64 %.05169.i.i, %i.mo
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.sy
  store float %.sroa.0.268.i.i, ptr %i.sz, align 4, !tbaa !18, !alias.scope !989, !noalias !957
  %.not.i116.i = icmp samesign ult i64 %.05169.i.i, %i.c
  %.pre.i117.i = add nuw nsw i64 %.05169.i.i, %i.mq ; 4 uses
  br i1 %.not.i116.i, label %.loopexit.i120.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph70.i.i
  %..i118.i = tail call i64 @llvm.umin.i64(i64 %.pre.i117.i, i64 %i.mp)
  %.063.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05169.i.i, %invariant.op483 ; 4 uses
  %i.ta = icmp samesign ult i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %..i118.i
  br i1 %i.ta, label %.lr.ph66.i.i.preheader, label %.loopexit.i120.i

.lr.ph66.i.i.preheader:                           ; preds = %bb.p
  %min.iters.check321 = icmp ult i64 %i.su, 32
  br i1 %min.iters.check321, label %.lr.ph66.i.i.preheader356, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph66.i.i.preheader
  %n.vec323 = and i64 %i.su, -32                  ; 3 uses
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction328 = add nuw nsw <8 x i64> %broadcast.splat327, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph322
  %index330 = phi i64 [ 0, %vector.ph322 ], [ %index.next345, %vector.body329 ] ; 2 uses
  %vec.ind331 = phi <8 x i64> [ %induction328, %vector.ph322 ], [ %vec.ind.next346, %vector.body329 ] ; 5 uses
  %vec.phi332 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.tf, %vector.body329 ] ; 2 uses
  %vec.phi333 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.tg, %vector.body329 ] ; 2 uses
  %vec.phi334 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.th, %vector.body329 ] ; 2 uses
  %vec.phi335 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph322 ], [ %i.ti, %vector.body329 ] ; 2 uses
  %step.add336 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 24)
  %i.tb = and <8 x i64> %vec.ind331, %broadcast.splat325
  %i.tc = and <8 x i64> %step.add336, %broadcast.splat325
  %i.td = and <8 x i64> %step.add.2, %broadcast.splat325
  %i.te = and <8 x i64> %step.add.3, %broadcast.splat325
  %wide.gep337 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tb
  %wide.gep338 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tc
  %wide.gep339 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.td
  %wide.gep340 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.te
  %wide.masked.gather341 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep337, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %wide.masked.gather342 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep338, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %wide.masked.gather343 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep339, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %wide.masked.gather344 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep340, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !992, !noalias !960 ; 2 uses
  %i.tf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi332, <8 x float> %wide.masked.gather341) ; 2 uses
  %i.tg = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi333, <8 x float> %wide.masked.gather342) ; 2 uses
  %i.th = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi334, <8 x float> %wide.masked.gather343) ; 2 uses
  %i.ti = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %vec.phi335, <8 x float> %wide.masked.gather344) ; 2 uses
  %index.next345 = add nuw i64 %index330, 32      ; 2 uses
  %i.tj = fcmp uno <8 x float> %wide.masked.gather341, %wide.masked.gather342
  %i.tk = fcmp uno <8 x float> %wide.masked.gather343, %wide.masked.gather344
  %i.tl = freeze <8 x i1> %i.tj
  %i.tm = freeze <8 x i1> %i.tk
  %i.tn = or <8 x i1> %i.tl, %i.tm
  %i.to = bitcast <8 x i1> %i.tn to i8
  %i.tp = icmp ne i8 %i.to, 0                     ; 7 uses
  %i.tq = icmp eq i64 %index.next345, %n.vec323
  %i.tr = or i1 %i.tp, %i.tq
  %vec.ind.next346 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 32)
  br i1 %i.tr, label %middle.block347, label %vector.body329, !llvm.loop !995

middle.block347:                                  ; preds = %vector.body329
  %i.ts = select i1 %i.tp, <8 x float> %vec.phi332, <8 x float> %i.tf
  %i.tt = select i1 %i.tp, <8 x float> %vec.phi333, <8 x float> %i.tg
  %i.tu = select i1 %i.tp, <8 x float> %vec.phi334, <8 x float> %i.th
  %i.tv = select i1 %i.tp, <8 x float> %vec.phi335, <8 x float> %i.ti
  %i.tw = select i1 %i.tp, i64 %index330, i64 %n.vec323
  %rdx.minmax348 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.ts, <8 x float> %i.tt)
  %rdx.minmax349 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax348, <8 x float> %i.tu)
  %rdx.minmax350 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax349, <8 x float> %i.tv)
  %i.tx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax350) ; 2 uses
  %i.ty = add i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %i.tw
  %cmp.n351 = icmp ne i64 %i.su, %n.vec323
  %.not355 = or i1 %cmp.n351, %i.tp
  br i1 %.not355, label %.lr.ph66.i.i.preheader356, label %.loopexit.i120.i

.lr.ph66.i.i.preheader356:                        ; preds = %.lr.ph66.i.i.preheader, %middle.block347
  %.065.i.i.ph = phi i64 [ %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph66.i.i.preheader ], [ %i.ty, %middle.block347 ]
  %.sroa.0.364.i.i.ph = phi float [ f0x7F7FFFFF, %.lr.ph66.i.i.preheader ], [ %i.tx, %middle.block347 ]
  br label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader356, %.lr.ph66.i.i
  %.065.i.i = phi i64 [ %.0.i122.i, %.lr.ph66.i.i ], [ %.065.i.i.ph, %.lr.ph66.i.i.preheader356 ] ; 2 uses
  %.sroa.0.364.i.i = phi float [ %i.uc, %.lr.ph66.i.i ], [ %.sroa.0.364.i.i.ph, %.lr.ph66.i.i.preheader356 ]
  %i.tz = and i64 %.065.i.i, %i.mk
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.tz
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !18, !alias.scope !992, !noalias !960
  %i.uc = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.364.i.i, float %i.ub) ; 2 uses
  %.0.i122.i = add nuw nsw i64 %.065.i.i, 1       ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %.0.i122.i, %umin.i115.i
  br i1 %exitcond74.not.i.i, label %.loopexit.i120.i, label %.lr.ph66.i.i, !llvm.loop !996

.loopexit.i120.i:                                 ; preds = %.lr.ph66.i.i, %middle.block347, %bb.p, %.lr.ph70.i.i
  %.sroa.0.4.i.i = phi nsz float [ %.sroa.0.268.i.i, %.lr.ph70.i.i ], [ f0x7F7FFFFF, %bb.p ], [ %i.tx, %middle.block347 ], [ %i.uc, %.lr.ph66.i.i ] ; 2 uses
  %i.ud = icmp samesign ult i64 %.pre.i117.i, %i.mp
  br i1 %i.ud, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit.i120.i
  %i.ue = and i64 %.pre.i117.i, %i.mk
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ue
  %i.ug = mul nsw i64 %.pre.i117.i, %i.mo
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.qt, i64 %i.ug
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !18, !alias.scope !1002, !noalias !1003 ; 2 uses
  store float %i.ui, ptr %i.uf, align 4, !tbaa !18, !alias.scope !1003, !noalias !1002
  %i.uj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.0.4.i.i, float %i.ui)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.i120.i
  %.sroa.0.5.i.i = phi nsz float [ %i.uj, %bb.q ], [ %.sroa.0.4.i.i, %.loopexit.i120.i ]
  %i.uk = add nuw nsw i64 %.05169.i.i, 1          ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i114.i, 1
  %exitcond75.not.i.i = icmp eq i64 %i.uk, %i.mp
  br i1 %exitcond75.not.i.i, label %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, label %.lr.ph70.i.i, !llvm.loop !1004

_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i:        ; preds = %bb.r, %.preheader.i113.i
  %i.ul = add nuw i64 %.1192.i, 1                 ; 2 uses
  %exitcond244.not.i = icmp eq i64 %i.ul, %2
  br i1 %exitcond244.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1005

._crit_edge.i:                                    ; preds = %_ZL13_box_min_vertILm1EEvjPfS0_ijm.exit.i, %.preheader.i
  tail call void @free(ptr noundef %i.o) #11
  br label %_ZL12_box_min_1chPfmmj.exit

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 701, ptr noundef nonnull @__FUNCTION__.dt_box_min)
  unreachable

_ZL12_box_min_1chPfmmj.exit:                      ; preds = %._crit_edge.i, %_ZL25_compute_effective_heightmm.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @dt_box_max(ptr nofree noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.b = trunc i64 %4 to i32                      ; 6 uses
  %i.c = and i64 %4, 4294967295                   ; 13 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZL25_compute_effective_heightmm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.d = shl nuw nsw i64 %i.c, 1
  %i.e = or disjoint i64 %i.d, 1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.011.i.i = phi i64 [ %i.g, %.lr.ph.i.i ], [ %i.e, %.lr.ph.preheader.i.i ] ; 2 uses
  %.0910.i.i = phi i64 [ %i.f, %.lr.ph.i.i ], [ 2, %.lr.ph.preheader.i.i ]
  %i.f = shl nuw nsw i64 %.0910.i.i, 1            ; 2 uses
  %i.g = lshr i64 %.011.i.i, 1
  %i.h = icmp samesign ugt i64 %.011.i.i, 3
  br i1 %i.h, label %.lr.ph.i.i, label %_ZL25_compute_effective_heightmm.exit.i, !llvm.loop !11

_ZL25_compute_effective_heightmm.exit.i:          ; preds = %.lr.ph.i.i, %bb.b
  %.09.lcssa.i.i = phi i64 [ 2, %bb.b ], [ %i.f, %.lr.ph.i.i ]
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 %.09.lcssa.i.i, i64 %1) ; 4 uses
  %i.j = shl i64 %i.i, 4
  %i.k = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.j)
  %..i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.k)
  %i.l = shl i64 %..i, 2
  %i.m = add i64 %i.l, 60
  %i.n = and i64 %i.m, -64
  %i.o = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.n) ; 49 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.o, i64 64) ]
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZL12_box_max_1chPfmmj.exit, label %.preheader125.i

.preheader125.i:                                  ; preds = %_ZL25_compute_effective_heightmm.exit.i
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.preheader124.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader125.i
  %i.q = shl i64 %2, 2                            ; 10 uses
  %i.r = trunc i64 %2 to i32                      ; 5 uses
  %i.s = add i32 %i.b, 1                          ; 2 uses
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.r) ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  %wide.trip.count.i.i.i = zext i32 %i.t to i64   ; 2 uses
  %i.v = icmp sgt i32 %i.r, 0
  %i.w = add i32 %i.b, 2
  %sext = shl i64 %4, 32
  %i.x = ashr exact i64 %sext, 32
  %wide.trip.count.i.i = and i64 %2, 2147483647
  br i1 %i.v, label %.lr.ph.split.us.i.preheader, label %_ZL11_window_maxPKfi.exit.i.i.preheader

_ZL11_window_maxPKfi.exit.i.i.preheader:          ; preds = %.lr.ph.i
  %xtraiter = and i64 %1, 7                       ; 3 uses
  %i.y = icmp ult i64 %1, 8
  br i1 %i.y, label %_ZL11_window_maxPKfi.exit.i.i.epil.preheader, label %_ZL11_window_maxPKfi.exit.i.i.preheader.new

_ZL11_window_maxPKfi.exit.i.i.preheader.new:      ; preds = %_ZL11_window_maxPKfi.exit.i.i.preheader
  %unroll_iter = and i64 %1, -8
  br label %_ZL11_window_maxPKfi.exit.i.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %i.z = add i64 %4, 2
  %i.aa = add i64 %4, 4294967295
  %xtraiter401 = and i64 %wide.trip.count.i.i.i, 7 ; 3 uses
  %i.ab = icmp ult i32 %i.t, 8
  %unroll_iter406 = and i64 %wide.trip.count.i.i.i, 2147483640
  %lcmp.mod403.not = icmp eq i64 %xtraiter401, 0
  %lcmp.mod405 = icmp ne i64 %xtraiter401, 0
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i
  %.062169.us.i = phi i64 [ %i.dv, %_ZL10box_max_1diPKfPfi.exit.loopexit.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.ac = mul i64 %.062169.us.i, %2
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ac ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 64 %i.o, ptr align 4 %i.ad, i64 %i.q, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  br i1 %i.u, label %.lr.ph.i.i.us.i.preheader, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader

.lr.ph.i.i.us.i.preheader:                        ; preds = %.lr.ph.split.us.i
  br i1 %i.ab, label %.lr.ph.i.i.us.i.epil.preheader, label %.lr.ph.i.i.us.i

.lr.ph.i.i.us.i:                                  ; preds = %.lr.ph.i.i.us.i.preheader, %.lr.ph.i.i.us.i
  %indvars.iv.i.i.us.i = phi i64 [ %indvars.iv.next.i.i.us.i.7, %.lr.ph.i.i.us.i ], [ 0, %.lr.ph.i.i.us.i.preheader ] ; 9 uses
  %.0911.i.i.us.i = phi float [ %.09..i.i.us.i.7, %.lr.ph.i.i.us.i ], [ f0xFF7FFFFF, %.lr.ph.i.i.us.i.preheader ] ; 2 uses
  %niter407 = phi i64 [ %niter407.next.7, %.lr.ph.i.i.us.i ], [ 0, %.lr.ph.i.i.us.i.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.af = load float, ptr %i.ae, align 32, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ogt float %.0911.i.i.us.i, %i.af
  %.09..i.i.us.i = select reassoc nsz arcp contract afn i1 %i.ag, float %.0911.i.i.us.i, float %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i, %i.aj
  %.09..i.i.us.i.1 = select reassoc nsz arcp contract afn i1 %i.ak, float %.09..i.i.us.i, float %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load float, ptr %i.am, align 8, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ao = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.1, %i.an
  %.09..i.i.us.i.2 = select reassoc nsz arcp contract afn i1 %i.ao, float %.09..i.i.us.i.1, float %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.2, %i.ar
  %.09..i.i.us.i.3 = select reassoc nsz arcp contract afn i1 %i.as, float %.09..i.i.us.i.2, float %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load float, ptr %i.au, align 16, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.3, %i.av
  %.09..i.i.us.i.4 = select reassoc nsz arcp contract afn i1 %i.aw, float %.09..i.i.us.i.3, float %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.az = load float, ptr %i.ay, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.4, %i.az
  %.09..i.i.us.i.5 = select reassoc nsz arcp contract afn i1 %i.ba, float %.09..i.i.us.i.4, float %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load float, ptr %i.bc, align 8, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.be = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.5, %i.bd
  %.09..i.i.us.i.6 = select reassoc nsz arcp contract afn i1 %i.be, float %.09..i.i.us.i.5, float %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.bi = fcmp reassoc nsz arcp contract afn ogt float %.09..i.i.us.i.6, %i.bh
  %.09..i.i.us.i.7 = select reassoc nsz arcp contract afn i1 %i.bi, float %.09..i.i.us.i.6, float %i.bh ; 3 uses
  %indvars.iv.next.i.i.us.i.7 = add nuw nsw i64 %indvars.iv.i.i.us.i, 8 ; 2 uses
  %niter407.next.7 = add i64 %niter407, 8         ; 2 uses
  %niter407.ncmp.7 = icmp eq i64 %niter407.next.7, %unroll_iter406
  br i1 %niter407.ncmp.7, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, label %.lr.ph.i.i.us.i, !llvm.loop !1011

_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.us.i
  br i1 %lcmp.mod403.not, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader, label %.lr.ph.i.i.us.i.epil.preheader

.lr.ph.i.i.us.i.epil.preheader:                   ; preds = %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.us.i.preheader
  %indvars.iv.i.i.us.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.us.i.preheader ], [ %indvars.iv.next.i.i.us.i.7, %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ]
  %.0911.i.i.us.i.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.i.i.us.i.preheader ], [ %.09..i.i.us.i.7, %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod405)
  br label %.lr.ph.i.i.us.i.epil

.lr.ph.i.i.us.i.epil:                             ; preds = %.lr.ph.i.i.us.i.epil, %.lr.ph.i.i.us.i.epil.preheader
  %indvars.iv.i.i.us.i.epil = phi i64 [ %indvars.iv.next.i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ], [ %indvars.iv.i.i.us.i.epil.init, %.lr.ph.i.i.us.i.epil.preheader ] ; 2 uses
  %.0911.i.i.us.i.epil = phi float [ %.09..i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ], [ %.0911.i.i.us.i.epil.init, %.lr.ph.i.i.us.i.epil.preheader ] ; 2 uses
  %epil.iter402 = phi i64 [ %epil.iter402.next, %.lr.ph.i.i.us.i.epil ], [ 0, %.lr.ph.i.i.us.i.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i.i.us.i.epil
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009 ; 2 uses
  %i.bl = fcmp reassoc nsz arcp contract afn ogt float %.0911.i.i.us.i.epil, %i.bk
  %.09..i.i.us.i.epil = select reassoc nsz arcp contract afn i1 %i.bl, float %.0911.i.i.us.i.epil, float %i.bk ; 2 uses
  %indvars.iv.next.i.i.us.i.epil = add nuw nsw i64 %indvars.iv.i.i.us.i.epil, 1
  %epil.iter402.next = add i64 %epil.iter402, 1   ; 2 uses
  %epil.iter402.cmp.not = icmp eq i64 %epil.iter402.next, %xtraiter401
  br i1 %epil.iter402.cmp.not, label %_ZL11_window_maxPKfi.exit.i.us.i.preheader, label %.lr.ph.i.i.us.i.epil, !llvm.loop !1012

_ZL11_window_maxPKfi.exit.i.us.i.preheader:       ; preds = %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.us.i.epil, %.lr.ph.split.us.i
  %.03854.i.us.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph.split.us.i ], [ %.09..i.i.us.i.7, %_ZL11_window_maxPKfi.exit.i.us.i.preheader.loopexit.unr-lcssa ], [ %.09..i.i.us.i.epil, %.lr.ph.i.i.us.i.epil ]
  br label %_ZL11_window_maxPKfi.exit.i.us.i

_ZL11_window_maxPKfi.exit.i.us.i:                 ; preds = %_ZL11_window_maxPKfi.exit.i.us.i.preheader, %bb.f
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %bb.f ], [ 0, %_ZL11_window_maxPKfi.exit.i.us.i.preheader ] ; 7 uses
  %.03854.i.us.i = phi float [ %.2.i.us.i, %bb.f ], [ %.03854.i.us.i.ph, %_ZL11_window_maxPKfi.exit.i.us.i.preheader ] ; 4 uses
  %i.bm = add i64 %i.z, %indvars.iv.i.us.i
  %i.bn = trunc i64 %i.bm to i32
  %smin = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.r)
  %i.bo = sub i64 %i.aa, %indvars.iv.i.us.i
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = add i32 %smin, %i.bp                    ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.us.i
  store float %.03854.i.us.i, ptr %i.bs, align 4, !tbaa !18, !alias.scope !1009, !noalias !1006
  %i.bt = sub nsw i64 %indvars.iv.i.us.i, %i.x    ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, -1
  br i1 %i.bu, label %bb.c, label %_ZL11_window_maxPKfi.exit53.i.us.i

bb.c:                                             ; preds = %_ZL11_window_maxPKfi.exit.i.us.i
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.bt
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !18, !alias.scope !1006, !noalias !1009
  %i.bx = fcmp reassoc nsz arcp contract afn oeq float %i.bw, %.03854.i.us.i
  br i1 %i.bx, label %bb.d, label %_ZL11_window_maxPKfi.exit53.i.us.i

bb.d:                                             ; preds = %bb.c
  %i.by = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.by ; 9 uses
  %i.ca = trunc nuw nsw i64 %indvars.iv.i.us.i to i32
  %i.cb = add i32 %i.w, %i.ca
  %..i.us.i = tail call i32 @llvm.smin.i32(i32 %i.cb, i32 %i.r)
end_hunk_2
begin_hunk_3_@dt_box_max:bb.a
  %.05262.i111.i = phi i64 [ %i.so, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ] ; 10 uses
  %.sroa.0.161.i.i = phi float [ %i.sn, %.lr.ph.i110.i ], [ f0xFF7FFFFF, %.lr.ph.i110.i.preheader ]
  %niter437 = phi i64 [ %niter437.next.3, %.lr.ph.i110.i ], [ 0, %.lr.ph.i110.i.preheader ]
  %i.rb = add nuw nsw i64 %.05262.i111.i, 24
  %i.rc = mul i64 %i.rb, %2
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rc
  tail call void @llvm.prefetch.p0(ptr %i.rd, i32 0, i32 0, i32 1), !noalias !1087
  %i.re = and i64 %.05262.i111.i, %i.mi
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.re
  %i.rg = mul i64 %.05262.i111.i, %2
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1095)
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !18, !alias.scope !1097, !noalias !1098 ; 2 uses
  store float %i.ri, ptr %i.rf, align 16, !tbaa !18, !alias.scope !1098, !noalias !1097
  %i.rj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.161.i.i, float %i.ri)
  %i.rk = or disjoint i64 %.05262.i111.i, 1       ; 2 uses
  %i.rl = add nuw nsw i64 %.05262.i111.i, 25
  %i.rm = mul i64 %i.rl, %2
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rm
  tail call void @llvm.prefetch.p0(ptr %i.rn, i32 0, i32 0, i32 1), !noalias !1087
  %i.ro = and i64 %i.rk, %i.mi
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ro
  %i.rq = mul i64 %i.rk, %2
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !18, !alias.scope !1104, !noalias !1105 ; 2 uses
  store float %i.rs, ptr %i.rp, align 4, !tbaa !18, !alias.scope !1105, !noalias !1104
  %i.rt = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rj, float %i.rs)
  %i.ru = or disjoint i64 %.05262.i111.i, 2       ; 2 uses
  %i.rv = add nuw nsw i64 %.05262.i111.i, 26
  %i.rw = mul i64 %i.rv, %2
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.rw
  tail call void @llvm.prefetch.p0(ptr %i.rx, i32 0, i32 0, i32 1), !noalias !1087
  %i.ry = and i64 %i.ru, %i.mi
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ry
  %i.sa = mul i64 %i.ru, %2
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.sa
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1108)
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !18, !alias.scope !1110, !noalias !1111 ; 2 uses
  store float %i.sc, ptr %i.rz, align 8, !tbaa !18, !alias.scope !1111, !noalias !1110
  %i.sd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rt, float %i.sc)
  %i.se = or disjoint i64 %.05262.i111.i, 3       ; 2 uses
  %i.sf = add nuw nsw i64 %.05262.i111.i, 27
  %i.sg = mul i64 %i.sf, %2
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.sg
  tail call void @llvm.prefetch.p0(ptr %i.sh, i32 0, i32 0, i32 1), !noalias !1087
  %i.si = and i64 %i.se, %i.mi
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.si
  %i.sk = mul i64 %i.se, %2
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.sk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1114)
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !18, !alias.scope !1116, !noalias !1117 ; 2 uses
  store float %i.sm, ptr %i.sj, align 4, !tbaa !18, !alias.scope !1117, !noalias !1116
  %i.sn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sd, float %i.sm) ; 3 uses
  %i.so = add nuw nsw i64 %.05262.i111.i, 4       ; 2 uses
  %niter437.next.3 = add i64 %niter437, 4         ; 2 uses
  %niter437.ncmp.3 = icmp eq i64 %niter437.next.3, %unroll_iter436
  br i1 %niter437.ncmp.3, label %.preheader.i113.i.loopexit.unr-lcssa, label %.lr.ph.i110.i, !llvm.loop !1118

.lr.ph70.i.i:                                     ; preds = %.preheader.i113.i, %bb.r
  %indvars.iv.i114.i = phi i64 [ %indvars.iv.next.i121.i, %bb.r ], [ %i.mn, %.preheader.i113.i ] ; 3 uses
  %.05169.i.i = phi i64 [ %i.uh, %bb.r ], [ 0, %.preheader.i113.i ] ; 7 uses
  %.sroa.0.268.i.i = phi float [ %.sroa.0.5.i.i, %bb.r ], [ %.sroa.0.1.lcssa.i.i, %.preheader.i113.i ] ; 2 uses
  %umin319 = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.mm)
  %i.sp = xor i64 %.05169.i.i, -1
  %i.sq = add nsw i64 %i.c, %i.sp
  %i.sr = add i64 %umin319, %i.sq                 ; 3 uses
  %umin.i115.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv.i114.i, i64 %i.mm)
  %i.ss = add nuw nsw i64 %.05169.i.i, 24
  %i.st = mul i64 %i.ss, %2
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.st
  tail call void @llvm.prefetch.p0(ptr %i.su, i32 0, i32 0, i32 1), !noalias !1087
  %i.sv = mul i64 %.05169.i.i, %2
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.sv
  store float %.sroa.0.268.i.i, ptr %i.sw, align 4, !tbaa !18, !alias.scope !1119, !noalias !1087
  %.not.i116.i = icmp samesign ult i64 %.05169.i.i, %i.c
  %.pre.i117.i = add nuw nsw i64 %.05169.i.i, %i.mn ; 4 uses
  br i1 %.not.i116.i, label %.loopexit.i120.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph70.i.i
  %..i118.i = tail call i64 @llvm.umin.i64(i64 %.pre.i117.i, i64 %i.mm)
  %.063.reass.reass.i.reass.reass.i.reass.reass.reass = add i64 %.05169.i.i, %invariant.op483 ; 4 uses
  %i.sx = icmp samesign ult i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %..i118.i
  br i1 %i.sx, label %.lr.ph66.i.i.preheader, label %.loopexit.i120.i

.lr.ph66.i.i.preheader:                           ; preds = %bb.p
  %min.iters.check321 = icmp ult i64 %i.sr, 32
  br i1 %min.iters.check321, label %.lr.ph66.i.i.preheader356, label %vector.ph322

vector.ph322:                                     ; preds = %.lr.ph66.i.i.preheader
  %n.vec323 = and i64 %i.sr, -32                  ; 3 uses
  %broadcast.splatinsert326 = insertelement <8 x i64> poison, i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, i64 0
  %broadcast.splat327 = shufflevector <8 x i64> %broadcast.splatinsert326, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction328 = add nuw nsw <8 x i64> %broadcast.splat327, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph322
  %index330 = phi i64 [ 0, %vector.ph322 ], [ %index.next345, %vector.body329 ] ; 2 uses
  %vec.ind331 = phi <8 x i64> [ %induction328, %vector.ph322 ], [ %vec.ind.next346, %vector.body329 ] ; 5 uses
  %vec.phi332 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.tc, %vector.body329 ] ; 2 uses
  %vec.phi333 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.td, %vector.body329 ] ; 2 uses
  %vec.phi334 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.te, %vector.body329 ] ; 2 uses
  %vec.phi335 = phi <8 x float> [ splat (float f0xFF7FFFFF), %vector.ph322 ], [ %i.tf, %vector.body329 ] ; 2 uses
  %step.add336 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 24)
  %i.sy = and <8 x i64> %vec.ind331, %broadcast.splat325
  %i.sz = and <8 x i64> %step.add336, %broadcast.splat325
  %i.ta = and <8 x i64> %step.add.2, %broadcast.splat325
  %i.tb = and <8 x i64> %step.add.3, %broadcast.splat325
  %wide.gep337 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sy
  %wide.gep338 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.sz
  %wide.gep339 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.ta
  %wide.gep340 = getelementptr inbounds nuw [4 x i8], ptr %i.o, <8 x i64> %i.tb
  %wide.masked.gather341 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep337, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %wide.masked.gather342 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep338, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %wide.masked.gather343 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep339, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %wide.masked.gather344 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep340, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !18, !alias.scope !1122, !noalias !1090 ; 2 uses
  %i.tc = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi332, <8 x float> %wide.masked.gather341) ; 2 uses
  %i.td = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi333, <8 x float> %wide.masked.gather342) ; 2 uses
  %i.te = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi334, <8 x float> %wide.masked.gather343) ; 2 uses
  %i.tf = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi335, <8 x float> %wide.masked.gather344) ; 2 uses
  %index.next345 = add nuw i64 %index330, 32      ; 2 uses
  %i.tg = fcmp uno <8 x float> %wide.masked.gather341, %wide.masked.gather342
  %i.th = fcmp uno <8 x float> %wide.masked.gather343, %wide.masked.gather344
  %i.ti = freeze <8 x i1> %i.tg
  %i.tj = freeze <8 x i1> %i.th
  %i.tk = or <8 x i1> %i.ti, %i.tj
  %i.tl = bitcast <8 x i1> %i.tk to i8
  %i.tm = icmp ne i8 %i.tl, 0                     ; 7 uses
  %i.tn = icmp eq i64 %index.next345, %n.vec323
  %i.to = or i1 %i.tm, %i.tn
  %vec.ind.next346 = add nuw nsw <8 x i64> %vec.ind331, splat (i64 32)
  br i1 %i.to, label %middle.block347, label %vector.body329, !llvm.loop !1125

middle.block347:                                  ; preds = %vector.body329
  %i.tp = select i1 %i.tm, <8 x float> %vec.phi332, <8 x float> %i.tc
  %i.tq = select i1 %i.tm, <8 x float> %vec.phi333, <8 x float> %i.td
  %i.tr = select i1 %i.tm, <8 x float> %vec.phi334, <8 x float> %i.te
  %i.ts = select i1 %i.tm, <8 x float> %vec.phi335, <8 x float> %i.tf
  %i.tt = select i1 %i.tm, i64 %index330, i64 %n.vec323
  %rdx.minmax348 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.tp, <8 x float> %i.tq)
  %rdx.minmax349 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax348, <8 x float> %i.tr)
  %rdx.minmax350 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax349, <8 x float> %i.ts)
  %i.tu = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax350) ; 2 uses
  %i.tv = add i64 %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %i.tt
  %cmp.n351 = icmp ne i64 %i.sr, %n.vec323
  %.not355 = or i1 %cmp.n351, %i.tm
  br i1 %.not355, label %.lr.ph66.i.i.preheader356, label %.loopexit.i120.i

.lr.ph66.i.i.preheader356:                        ; preds = %.lr.ph66.i.i.preheader, %middle.block347
  %.065.i.i.ph = phi i64 [ %.063.reass.reass.i.reass.reass.i.reass.reass.reass, %.lr.ph66.i.i.preheader ], [ %i.tv, %middle.block347 ]
  %.sroa.0.364.i.i.ph = phi float [ f0xFF7FFFFF, %.lr.ph66.i.i.preheader ], [ %i.tu, %middle.block347 ]
  br label %.lr.ph66.i.i

.lr.ph66.i.i:                                     ; preds = %.lr.ph66.i.i.preheader356, %.lr.ph66.i.i
  %.065.i.i = phi i64 [ %.0.i122.i, %.lr.ph66.i.i ], [ %.065.i.i.ph, %.lr.ph66.i.i.preheader356 ] ; 2 uses
  %.sroa.0.364.i.i = phi float [ %i.tz, %.lr.ph66.i.i ], [ %.sroa.0.364.i.i.ph, %.lr.ph66.i.i.preheader356 ]
  %i.tw = and i64 %.065.i.i, %i.mi
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.tw
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !18, !alias.scope !1122, !noalias !1090
  %i.tz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.364.i.i, float %i.ty) ; 2 uses
  %.0.i122.i = add nuw nsw i64 %.065.i.i, 1       ; 2 uses
  %exitcond74.not.i.i = icmp eq i64 %.0.i122.i, %umin.i115.i
  br i1 %exitcond74.not.i.i, label %.loopexit.i120.i, label %.lr.ph66.i.i, !llvm.loop !1126

.loopexit.i120.i:                                 ; preds = %.lr.ph66.i.i, %middle.block347, %bb.p, %.lr.ph70.i.i
  %.sroa.0.4.i.i = phi nsz float [ %.sroa.0.268.i.i, %.lr.ph70.i.i ], [ f0xFF7FFFFF, %bb.p ], [ %i.tu, %middle.block347 ], [ %i.tz, %.lr.ph66.i.i ] ; 2 uses
  %i.ua = icmp samesign ult i64 %.pre.i117.i, %i.mm
  br i1 %i.ua, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit.i120.i
  %i.ub = and i64 %.pre.i117.i, %i.mi
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ub
  %i.ud = mul i64 %.pre.i117.i, %2
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %i.ud
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1130)
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !18, !alias.scope !1132, !noalias !1133 ; 2 uses
  store float %i.uf, ptr %i.uc, align 4, !tbaa !18, !alias.scope !1133, !noalias !1132
  %i.ug = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.4.i.i, float %i.uf)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit.i120.i
  %.sroa.0.5.i.i = phi nsz float [ %i.ug, %bb.q ], [ %.sroa.0.4.i.i, %.loopexit.i120.i ]
  %i.uh = add nuw nsw i64 %.05169.i.i, 1          ; 2 uses
  %indvars.iv.next.i121.i = add nuw nsw i64 %indvars.iv.i114.i, 1
  %exitcond75.not.i.i = icmp eq i64 %i.uh, %i.mm
  br i1 %exitcond75.not.i.i, label %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, label %.lr.ph70.i.i, !llvm.loop !1134

_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i:        ; preds = %bb.r, %.preheader.i113.i
  %i.ui = add nuw i64 %.1187.i, 1                 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %i.ui, %2
  br i1 %exitcond239.not.i, label %._crit_edge.i, label %bb.o, !llvm.loop !1135

._crit_edge.i:                                    ; preds = %_ZL13_box_max_vertILm1EEvjPfS0_mjm.exit.i, %.preheader.i
  tail call void @free(ptr noundef %i.o) #11
  br label %_ZL12_box_max_1chPfmmj.exit

bb.s:                                             ; preds = %bb.a
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 715, ptr noundef nonnull @__FUNCTION__.dt_box_max)
  unreachable

_ZL12_box_max_1chPfmmj.exit:                      ; preds = %._crit_edge.i, %_ZL25_compute_effective_heightmm.exit.i
  ret void
}

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_ZL18_blur_vertical_1chILb0EEvPfmmmS0_m(ptr noalias nofree noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #2 {
bb.a:
  %.not133 = icmp eq i64 %2, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph132

.lr.ph132:                                        ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "align"(ptr %4, i64 64) ]
  %i.a = shl i64 %3, 1                            ; 2 uses
  %.not231.i = icmp eq i64 %i.a, 0                ; 3 uses
  %i.b = or disjoint i64 %i.a, 1                  ; 3 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %3, i64 %1) ; 20 uses
  %.not232.i = icmp eq i64 %i.c, 0                ; 3 uses
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %3) ; 9 uses
  %i.e = xor i64 %3, -1                           ; 11 uses
  %i.f = and i64 %2, -4                           ; 2 uses
  %i.g = xor i64 %3, -1
  %i.h = add i64 %1, %i.g
  %i.i = xor i64 %3, -1
  %i.j = add i64 %1, %i.i
  %xtraiter = and i64 %i.c, 3                     ; 3 uses
  %i.k = icmp ult i64 %i.c, 4
  %unroll_iter = and i64 %i.c, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod243 = icmp ne i64 %xtraiter, 0
  %exitcond284.not.i53.not = icmp ugt i64 %1, %3
  %xtraiter248 = and i64 %i.c, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.c, 4
  %unroll_iter255 = and i64 %i.c, -4
  %lcmp.mod252.not = icmp eq i64 %xtraiter248, 0
  %lcmp.mod254 = icmp ne i64 %xtraiter248, 0
  %exitcond169.not.i109.not = icmp ugt i64 %1, %3
  %min.iters.check149 = icmp ugt i64 %i.c, 3
  %ident.check148.not = icmp eq i64 %2, 1
  %or.cond = and i1 %min.iters.check149, %ident.check148.not
  %min.iters.check151 = icmp ult i64 %i.c, 32
  %i.m = and i64 %i.c, 28
  %n.vec153 = and i64 %i.c, -32                   ; 4 uses
  %cmp.n171 = icmp eq i64 %i.c, %n.vec153
  %min.epilog.iters.check176 = icmp eq i64 %i.m, 0
  %n.vec178 = and i64 %i.c, -4                    ; 3 uses
  %cmp.n192 = icmp eq i64 %i.c, %n.vec178
  %xtraiter264 = and i64 %i.c, 3                  ; 2 uses
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  %exitcond137.not.i126.not = icmp ugt i64 %1, %3
  %ident.check.not = icmp eq i64 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph132, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit
  %.031131 = phi i64 [ 0, %.lr.ph132 ], [ %i.n, %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit ] ; 5 uses
  %i.n = add i64 %.031131, 16                     ; 3 uses
  %.not = icmp ugt i64 %i.n, %2
  br i1 %.not, label %.preheader76, label %bb.c

.preheader76:                                     ; preds = %bb.b
  %i.o = icmp ult i64 %.031131, %i.f
  br i1 %i.o, label %.lr.ph, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.031131 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  br i1 %.not231.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ 1, %bb.c ], [ %i.r, %.lr.ph.i ] ; 11 uses
  br i1 %.not232.i, label %.preheader100.i, label %.lr.ph107.i.preheader

.lr.ph107.i.preheader:                            ; preds = %._crit_edge.i
  br i1 %i.k, label %.lr.ph107.i.epil.preheader, label %.lr.ph107.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.0103.i = phi i64 [ %i.r, %.lr.ph.i ], [ 1, %bb.c ]
  %.082102.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.q = shl i64 %.0103.i, 1
  %i.r = or disjoint i64 %i.q, 1                  ; 2 uses
  %i.s = lshr i64 %.082102.i, 1
  %i.t = icmp ugt i64 %.082102.i, 3
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1141

.preheader100.i.loopexit.unr-lcssa:               ; preds = %.lr.ph107.i
  %i.u = shufflevector <16 x float> %i.bn, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.v = shufflevector <16 x float> %i.bn, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.w = shufflevector <16 x float> %i.bn, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br i1 %lcmp.mod.not, label %.preheader100.i, label %.lr.ph107.i.epil.preheader

.lr.ph107.i.epil.preheader:                       ; preds = %.preheader100.i.loopexit.unr-lcssa, %.lr.ph107.i.preheader
  %.084106.i.epil.init = phi i64 [ 0, %.lr.ph107.i.preheader ], [ %i.bh, %.preheader100.i.loopexit.unr-lcssa ]
  %.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph107.i.preheader ], [ %i.bn, %.preheader100.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod243)
  br label %.lr.ph107.i.epil

.lr.ph107.i.epil:                                 ; preds = %.lr.ph107.i.epil, %.lr.ph107.i.epil.preheader
  %.084106.i.epil = phi i64 [ %i.y, %.lr.ph107.i.epil ], [ %.084106.i.epil.init, %.lr.ph107.i.epil.preheader ] ; 3 uses
  %i.x = phi <16 x float> [ %i.ae, %.lr.ph107.i.epil ], [ %.epil.init, %.lr.ph107.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph107.i.epil ], [ 0, %.lr.ph107.i.epil.preheader ]
  %i.y = add nuw i64 %.084106.i.epil, 1
  %i.z = and i64 %.084106.i.epil, %.0.lcssa.i
  %.idx98.i.epil = shl i64 %i.z, 6
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i.epil
  %i.ab = mul i64 %.084106.i.epil, %2
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ac, i64 64, i1 false), !tbaa !18, !alias.scope !1145, !noalias !1147
  %i.ad = load <16 x float>, ptr %i.ac, align 4, !tbaa !18, !alias.scope !1149, !noalias !1150
  %i.ae = fadd reassoc nsz arcp contract afn <16 x float> %i.ad, %i.x ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader100.i.loopexit.epilog-lcssa, label %.lr.ph107.i.epil, !llvm.loop !1151

.preheader100.i.loopexit.epilog-lcssa:            ; preds = %.lr.ph107.i.epil
  %i.af = shufflevector <16 x float> %i.ae, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ag = shufflevector <16 x float> %i.ae, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ah = shufflevector <16 x float> %i.ae, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.preheader100.i

.preheader100.i:                                  ; preds = %.preheader100.i.loopexit.epilog-lcssa, %.preheader100.i.loopexit.unr-lcssa, %._crit_edge.i
  %i.ai = phi <8 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.w, %.preheader100.i.loopexit.unr-lcssa ], [ %i.ah, %.preheader100.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.aj = phi <4 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.v, %.preheader100.i.loopexit.unr-lcssa ], [ %i.ag, %.preheader100.i.loopexit.epilog-lcssa ] ; 2 uses
  %i.ak = phi <4 x float> [ zeroinitializer, %._crit_edge.i ], [ %i.u, %.preheader100.i.loopexit.unr-lcssa ], [ %i.af, %.preheader100.i.loopexit.epilog-lcssa ] ; 2 uses
  br i1 %exitcond284.not.i53.not, label %.lr.ph72, label %.critedge.i

.lr.ph107.i:                                      ; preds = %.lr.ph107.i.preheader, %.lr.ph107.i
  %.084106.i = phi i64 [ %i.bh, %.lr.ph107.i ], [ 0, %.lr.ph107.i.preheader ] ; 6 uses
  %i.al = phi <16 x float> [ %i.bn, %.lr.ph107.i ], [ zeroinitializer, %.lr.ph107.i.preheader ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph107.i ], [ 0, %.lr.ph107.i.preheader ]
  %i.am = or disjoint i64 %.084106.i, 1           ; 2 uses
  %i.an = and i64 %.084106.i, %.0.lcssa.i
  %.idx98.i = shl i64 %i.an, 6
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i
  %i.ap = mul i64 %.084106.i, %2
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.ao, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.aq, i64 64, i1 false), !tbaa !18, !alias.scope !1145, !noalias !1147
  %i.ar = load <16 x float>, ptr %i.aq, align 4, !tbaa !18, !alias.scope !1149, !noalias !1150
  %i.as = fadd reassoc nsz arcp contract afn <16 x float> %i.ar, %i.al
  %i.at = or disjoint i64 %.084106.i, 2           ; 2 uses
  %i.au = and i64 %i.am, %.0.lcssa.i
  %.idx98.i.1 = shl i64 %i.au, 6
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i.1
  %i.aw = mul i64 %i.am, %2
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aw ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.av, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.ax, i64 64, i1 false), !tbaa !18, !alias.scope !1154, !noalias !1147
  %i.ay = load <16 x float>, ptr %i.ax, align 4, !tbaa !18, !alias.scope !1149, !noalias !1155
  %i.az = fadd reassoc nsz arcp contract afn <16 x float> %i.ay, %i.as
  %i.ba = or disjoint i64 %.084106.i, 3           ; 2 uses
  %i.bb = and i64 %i.at, %.0.lcssa.i
  %.idx98.i.2 = shl i64 %i.bb, 6
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i.2
  %i.bd = mul i64 %i.at, %2
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bd ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bc, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.be, i64 64, i1 false), !tbaa !18, !alias.scope !1158, !noalias !1147
  %i.bf = load <16 x float>, ptr %i.be, align 4, !tbaa !18, !alias.scope !1149, !noalias !1159
  %i.bg = fadd reassoc nsz arcp contract afn <16 x float> %i.bf, %i.az
  %i.bh = add nuw i64 %.084106.i, 4               ; 2 uses
  %i.bi = and i64 %i.ba, %.0.lcssa.i
  %.idx98.i.3 = shl i64 %i.bi, 6
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 %.idx98.i.3
  %i.bk = mul i64 %i.ba, %2
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bk ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.bj, ptr noundef nonnull readonly align 4 dereferenceable(64) %i.bl, i64 64, i1 false), !tbaa !18, !alias.scope !1162, !noalias !1147
  %i.bm = load <16 x float>, ptr %i.bl, align 4, !tbaa !18, !alias.scope !1149, !noalias !1163
  %i.bn = fadd reassoc nsz arcp contract afn <16 x float> %i.bm, %i.bg ; 5 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader100.i.loopexit.unr-lcssa, label %.lr.ph107.i, !llvm.loop !1164

end_hunk_3
begin_hunk_4_@_ZL18_blur_vertical_1chILb0EEvPfmmmS0_m:bb.a
  %i.tb = mul i64 %.186.lcssa.i69, %2
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.tb
  %i.td = fdiv reassoc nsz arcp contract afn float %i.ta, %i.sl
  store float %i.td, ptr %i.tc, align 4, !tbaa !18, !alias.scope !1381, !noalias !1306
  %i.te = add i64 %.186.lcssa.i69, 1              ; 3 uses
  %i.tf = add i64 %i.te, %3
  br label %.prol.loopexit267

.prol.loopexit267:                                ; preds = %.prol.loopexit267.unr-lcssa, %.lr.ph123.i
  %.unr271 = phi i64 [ %i.sj, %.lr.ph123.i ], [ %i.tf, %.prol.loopexit267.unr-lcssa ]
  %.287122.i.unr = phi i64 [ %.186.lcssa.i69, %.lr.ph123.i ], [ %i.te, %.prol.loopexit267.unr-lcssa ]
  %.sroa.0102.3121.i.unr = phi float [ %.sroa.0102.2.lcssa.i, %.lr.ph123.i ], [ %i.ta, %.prol.loopexit267.unr-lcssa ]
  %.lcssa239.unr = phi float [ poison, %.lr.ph123.i ], [ %i.ta, %.prol.loopexit267.unr-lcssa ]
  %.lcssa238.unr = phi i64 [ poison, %.lr.ph123.i ], [ %i.te, %.prol.loopexit267.unr-lcssa ]
  %i.tg = icmp eq i64 %i.j, %.186.lcssa.i69
  br i1 %i.tg, label %.preheader.i70, label %.lr.ph123.i.new

.lr.ph123.i.new:                                  ; preds = %.prol.loopexit267
  %i.th = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sl
  %i.ti = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sl
  br label %bb.k

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.186118.i = phi i64 [ %i.tl, %vec.epilog.scalar.ph ], [ %.186118.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.tj = mul i64 %.186118.i, %2
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.tj
  store float %i.rs, ptr %i.tk, align 4, !tbaa !18, !alias.scope !1361, !noalias !1306
  %i.tl = add nuw i64 %.186118.i, 1               ; 3 uses
  %i.tm = icmp ult i64 %.186118.i, %3
  %i.tn = icmp ult i64 %i.tl, %1
  %i.to = and i1 %i.tm, %i.tn
  br i1 %i.to, label %vec.epilog.scalar.ph, label %.preheader103.i, !llvm.loop !1384

.preheader.i70:                                   ; preds = %.prol.loopexit267, %bb.k, %.preheader103.i
  %.sroa.0102.3.lcssa.i = phi float [ %.sroa.0102.2.lcssa.i, %.preheader103.i ], [ %.lcssa239.unr, %.prol.loopexit267 ], [ %i.vj, %bb.k ] ; 2 uses
  %.287.lcssa.i71 = phi i64 [ %.186.lcssa.i69, %.preheader103.i ], [ %.lcssa238.unr, %.prol.loopexit267 ], [ %i.vn, %bb.k ] ; 7 uses
  %i.tp = icmp ult i64 %.287.lcssa.i71, %1
  br i1 %i.tp, label %.lr.ph129.i73.preheader, label %_ZL14_blur_verticalILm1ELb0EEvPfmmmS0_.exit

.lr.ph129.i73.preheader:                          ; preds = %.preheader.i70
  %i.tq = sub nuw i64 %1, %.287.lcssa.i71
  %.neg276 = add i64 %.287.lcssa.i71, 1
  %xtraiter272 = and i64 %i.tq, 1
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %.lr.ph129.i73.prol.loopexit, label %.lr.ph129.i73.prol

.lr.ph129.i73.prol:                               ; preds = %.lr.ph129.i73.preheader
  %i.tr = add i64 %.287.lcssa.i71, %i.e
  %i.ts = add i64 %.1.lcssa.i68, -1               ; 2 uses
  %sext.i74.prol = shl i64 %i.tr, 32
  %i.tt = ashr exact i64 %sext.i74.prol, 32
  %i.tu = and i64 %i.tt, %.0.lcssa.i62
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tu
  %i.tw = load float, ptr %i.tv, align 4, !tbaa !18, !alias.scope !1385, !noalias !1388
  %i.tx = fsub reassoc nsz arcp contract afn float %.sroa.0102.3.lcssa.i, %i.tw ; 2 uses
  %i.ty = mul i64 %.287.lcssa.i71, %2
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.ty
  %i.ua = uitofp reassoc nsz arcp contract afn i64 %i.ts to float
  %i.ub = fdiv reassoc nsz arcp contract afn float %i.tx, %i.ua
  store float %i.ub, ptr %i.tz, align 4, !tbaa !18, !alias.scope !1390, !noalias !1306
  %i.uc = add nuw i64 %.287.lcssa.i71, 1
  br label %.lr.ph129.i73.prol.loopexit

.lr.ph129.i73.prol.loopexit:                      ; preds = %.lr.ph129.i73.prol, %.lr.ph129.i73.preheader
  %.2128.i.unr = phi i64 [ %.1.lcssa.i68, %.lr.ph129.i73.preheader ], [ %i.ts, %.lr.ph129.i73.prol ]
  %.3127.i.unr = phi i64 [ %.287.lcssa.i71, %.lr.ph129.i73.preheader ], [ %i.uc, %.lr.ph129.i73.prol ]
  %.sroa.0102.4126.i.unr = phi float [ %.sroa.0102.3.lcssa.i, %.lr.ph129.i73.preheader ], [ %i.tx, %.lr.ph129.i73.prol ]
  %i.ud = icmp eq i64 %1, %.neg276
  br i1 %i.ud, label %_ZL14_blur_verticalILm1ELb0EEvPfmmmS0_.exit, label %.lr.ph129.i73

bb.k:                                             ; preds = %bb.k, %.lr.ph123.i.new
  %i.ue = phi i64 [ %.unr271, %.lr.ph123.i.new ], [ %i.vo, %bb.k ]
  %.287122.i = phi i64 [ %.287122.i.unr, %.lr.ph123.i.new ], [ %i.vn, %bb.k ] ; 5 uses
  %.sroa.0102.3121.i = phi float [ %.sroa.0102.3121.i.unr, %.lr.ph123.i.new ], [ %i.vj, %bb.k ]
  %i.uf = add i64 %.287122.i, %i.e
  %sext92.i75 = shl i64 %i.uf, 32
  %i.ug = ashr exact i64 %sext92.i75, 32
  %i.uh = and i64 %i.ug, %.0.lcssa.i62
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.uh
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !18, !alias.scope !1366, !noalias !1369
  %i.uk = fsub reassoc nsz arcp contract afn float %.sroa.0102.3121.i, %i.uj
  %sext93.i = shl i64 %i.ue, 32
  %i.ul = ashr exact i64 %sext93.i, 32            ; 2 uses
  %i.um = and i64 %i.ul, %.0.lcssa.i62
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.um
  %i.uo = mul i64 %i.ul, %2
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.uo
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  %i.uq = load float, ptr %i.up, align 4, !tbaa !18, !alias.scope !1376, !noalias !1377 ; 2 uses
  store float %i.uq, ptr %i.un, align 4, !tbaa !18, !alias.scope !1379, !noalias !1380
  %i.ur = fadd reassoc nsz arcp contract afn float %i.uq, %i.uk ; 2 uses
  %i.us = mul i64 %.287122.i, %2
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.us
  %i.uu = fmul reassoc nsz arcp contract afn float %i.ur, %i.th
  store float %i.uu, ptr %i.ut, align 4, !tbaa !18, !alias.scope !1381, !noalias !1306
  %i.uv = add i64 %.287122.i, 1                   ; 2 uses
  %i.uw = add i64 %i.uv, %3
  %i.ux = sub i64 %.287122.i, %3
  %sext92.i75.1 = shl i64 %i.ux, 32
  %i.uy = ashr exact i64 %sext92.i75.1, 32
  %i.uz = and i64 %i.uy, %.0.lcssa.i62
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.uz
  %i.vb = load float, ptr %i.va, align 4, !tbaa !18, !alias.scope !1366, !noalias !1369
  %i.vc = fsub reassoc nsz arcp contract afn float %i.ur, %i.vb
  %sext93.i.1 = shl i64 %i.uw, 32
  %i.vd = ashr exact i64 %sext93.i.1, 32          ; 2 uses
  %i.ve = and i64 %i.vd, %.0.lcssa.i62
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ve
  %i.vg = mul i64 %i.vd, %2
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.vg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !18, !alias.scope !1397, !noalias !1398 ; 2 uses
  store float %i.vi, ptr %i.vf, align 4, !tbaa !18, !alias.scope !1399, !noalias !1400
  %i.vj = fadd reassoc nsz arcp contract afn float %i.vi, %i.vc ; 3 uses
  %i.vk = mul i64 %i.uv, %2
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.vk
  %i.vm = fmul reassoc nsz arcp contract afn float %i.vj, %i.ti
  store float %i.vm, ptr %i.vl, align 4, !tbaa !18, !alias.scope !1381, !noalias !1306
  %i.vn = add i64 %.287122.i, 2                   ; 3 uses
  %i.vo = add i64 %i.vn, %3                       ; 2 uses
  %i.vp = icmp ult i64 %i.vo, %1
  br i1 %i.vp, label %bb.k, label %.preheader.i70, !llvm.loop !1401

.lr.ph129.i73:                                    ; preds = %.lr.ph129.i73.prol.loopexit, %.lr.ph129.i73
  %.2128.i = phi i64 [ %i.wd, %.lr.ph129.i73 ], [ %.2128.i.unr, %.lr.ph129.i73.prol.loopexit ] ; 2 uses
  %.3127.i = phi i64 [ %i.wn, %.lr.ph129.i73 ], [ %.3127.i.unr, %.lr.ph129.i73.prol.loopexit ] ; 5 uses
  %.sroa.0102.4126.i = phi float [ %i.wi, %.lr.ph129.i73 ], [ %.sroa.0102.4126.i.unr, %.lr.ph129.i73.prol.loopexit ]
  %i.vq = add i64 %.3127.i, %i.e
  %i.vr = add i64 %.2128.i, -1
  %sext.i74 = shl i64 %i.vq, 32
  %i.vs = ashr exact i64 %sext.i74, 32
  %i.vt = and i64 %i.vs, %.0.lcssa.i62
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.vt
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !18, !alias.scope !1385, !noalias !1388
  %i.vw = fsub reassoc nsz arcp contract afn float %.sroa.0102.4126.i, %i.vv ; 2 uses
  %i.vx = mul i64 %.3127.i, %2
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.vx
  %i.vz = uitofp reassoc nsz arcp contract afn i64 %i.vr to float
  %i.wa = fdiv reassoc nsz arcp contract afn float %i.vw, %i.vz
  store float %i.wa, ptr %i.vy, align 4, !tbaa !18, !alias.scope !1390, !noalias !1306
  %i.wb = add nuw i64 %.3127.i, 1
  %i.wc = sub i64 %.3127.i, %3
  %i.wd = add i64 %.2128.i, -2                    ; 2 uses
  %sext.i74.1 = shl i64 %i.wc, 32
  %i.we = ashr exact i64 %sext.i74.1, 32
  %i.wf = and i64 %i.we, %.0.lcssa.i62
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !18, !alias.scope !1385, !noalias !1388
  %i.wi = fsub reassoc nsz arcp contract afn float %i.vw, %i.wh ; 2 uses
  %i.wj = mul i64 %i.wb, %2
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.wj
  %i.wl = uitofp reassoc nsz arcp contract afn i64 %i.wd to float
  %i.wm = fdiv reassoc nsz arcp contract afn float %i.wi, %i.wl
  store float %i.wm, ptr %i.wk, align 4, !tbaa !18, !alias.scope !1390, !noalias !1306
  %i.wn = add nuw i64 %.3127.i, 2                 ; 2 uses
  %exitcond138.not.i.1 = icmp eq i64 %i.wn, %1
  br i1 %exitcond138.not.i.1, label %_ZL14_blur_verticalILm1ELb0EEvPfmmmS0_.exit, label %.lr.ph129.i73, !llvm.loop !1402

_ZL14_blur_verticalILm1ELb0EEvPfmmmS0_.exit:      ; preds = %.lr.ph129.i73.prol.loopexit, %.lr.ph129.i73, %.preheader.i70
  %i.wo = add nuw i64 %.1129, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.wo, %2
  br i1 %exitcond.not, label %_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit, label %.lr.ph130, !llvm.loop !1403

_ZL14_blur_verticalILm16ELb0EEvPfmmmS0_.exit:     ; preds = %.lr.ph198.i.prol.loopexit, %.lr.ph198.i, %_ZL14_blur_verticalILm1ELb0EEvPfmmmS0_.exit, %.preheader, %.preheader.i
  %i.wp = icmp ult i64 %i.n, %2
  br i1 %i.wp, label %bb.b, label %._crit_edge, !llvm.loop !1404
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.minnum.v16f32(<16 x float>, <16 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.maxnum.v16f32(<16 x float>, <16 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZL16_blur_horizontalILm1ELb0EEvPfmmS0_: argument 0"}
!15 = distinct !{!15, !"_ZL16_blur_horizontalILm1ELb0EEvPfmmS0_"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"_ZL16_blur_horizontalILm1ELb0EEvPfmmS0_: argument 1"}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !9, i64 0}
!20 = !{!21, !23, !14, !17}
!21 = distinct !{!21, !22, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 0"}
!22 = distinct !{!22, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_"}
!23 = distinct !{!23, !22, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 2"}
!24 = !{!25}
!25 = distinct !{!25, !22, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 1"}
!26 = !{!21}
!27 = !{!23, !14}
!28 = !{!21, !25, !17}
!29 = distinct !{!29, !12, !30, !31}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"branch_weights", i32 4, i32 28}
!33 = distinct !{!33, !12, !30, !31}
!34 = distinct !{!34, !12, !31, !30}
!35 = distinct !{!35, !12}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 0"}
!38 = distinct !{!38, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_"}
!39 = !{!40}
!40 = distinct !{!40, !38, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 2"}
!41 = !{!40, !14}
!42 = !{!37, !43, !17}
!43 = distinct !{!43, !38, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 1"}
!44 = !{!37, !17}
!45 = !{!43, !40, !14}
!46 = !{!47, !14}
!47 = distinct !{!47, !48, !"_ZL13_store_scaledILm1EEvPfPKff: argument 0"}
!48 = distinct !{!48, !"_ZL13_store_scaledILm1EEvPfPKff"}
!49 = !{!50, !14}
!50 = distinct !{!50, !51, !"_ZL13_store_scaledILm1EEvPfPKff: argument 0"}
!51 = distinct !{!51, !"_ZL13_store_scaledILm1EEvPfPKff"}
!52 = distinct !{!52, !12, !30, !31}
!53 = distinct !{!53, !12, !30, !31}
!54 = distinct !{!54, !12, !31, !30}
!55 = !{!56, !17}
!56 = distinct !{!56, !57, !"_ZL4_subILm1ELb0EEvPfPKfS0_: argument 1"}
!57 = distinct !{!57, !"_ZL4_subILm1ELb0EEvPfPKfS0_"}
!58 = !{!59, !14}
!59 = distinct !{!59, !57, !"_ZL4_subILm1ELb0EEvPfPKfS0_: argument 0"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 0"}
!62 = distinct !{!62, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_"}
!63 = !{!64}
!64 = distinct !{!64, !62, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 2"}
!65 = !{!64, !14}
!66 = !{!61, !67, !17}
!67 = distinct !{!67, !62, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 1"}
!68 = !{!61, !17}
!69 = !{!67, !64, !14}
!70 = !{!71, !14}
!71 = distinct !{!71, !72, !"_ZL13_store_scaledILm1EEvPfPKff: argument 0"}
!72 = distinct !{!72, !"_ZL13_store_scaledILm1EEvPfPKff"}
!73 = !{!74}
!74 = distinct !{!74, !62, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 0:It1"}
!75 = !{!76}
!76 = distinct !{!76, !62, !"_ZL9_load_addILm1ELb0EEvPfS0_PKfS0_: argument 2:It1"}
!77 = !{!76, !14}
!78 = !{!74, !67, !17}
!79 = !{!74, !17}
!80 = !{!67, !76, !14}
!81 = distinct !{!81, !12}
!82 = !{!83, !17}
!83 = distinct !{!83, !84, !"_ZL4_subILm1ELb0EEvPfPKfS0_: argument 1"}
!84 = distinct !{!84, !"_ZL4_subILm1ELb0EEvPfPKfS0_"}
!85 = !{!86, !14}
!86 = distinct !{!86, !84, !"_ZL4_subILm1ELb0EEvPfPKfS0_: argument 0"}
!87 = !{!88, !14}
!88 = distinct !{!88, !89, !"_ZL13_store_scaledILm1EEvPfPKff: argument 0"}
!89 = distinct !{!89, !"_ZL13_store_scaledILm1EEvPfPKff"}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_ZL16_blur_horizontalILm2ELb0EEvPfmmS0_: argument 0"}
!97 = distinct !{!97, !"_ZL16_blur_horizontalILm2ELb0EEvPfmmS0_"}
!98 = !{!99}
!99 = distinct !{!99, !97, !"_ZL16_blur_horizontalILm2ELb0EEvPfmmS0_: argument 1"}
!100 = !{!101, !103, !96, !99}
!101 = distinct !{!101, !102, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 0"}
!102 = distinct !{!102, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_"}
!103 = distinct !{!103, !102, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 2"}
!104 = !{!105}
!105 = distinct !{!105, !102, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 1"}
!106 = !{!101}
!107 = !{!103, !96}
!108 = !{!101, !105, !99}
!109 = distinct !{!109, !12, !30, !31}
!110 = distinct !{!110, !12, !30, !31}
!111 = distinct !{!111, !12, !31, !30}
!112 = distinct !{!112, !12}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 0"}
!115 = distinct !{!115, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_"}
!116 = !{!117}
!117 = distinct !{!117, !115, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 2"}
!118 = !{!117, !96}
!119 = !{!114, !120, !99}
!120 = distinct !{!120, !115, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 1"}
!121 = !{!114, !99}
!122 = !{!120, !117, !96}
!123 = !{!124, !96}
!124 = distinct !{!124, !125, !"_ZL13_store_scaledILm2EEvPfPKff: argument 0"}
!125 = distinct !{!125, !"_ZL13_store_scaledILm2EEvPfPKff"}
!126 = !{!127, !99}
!127 = distinct !{!127, !125, !"_ZL13_store_scaledILm2EEvPfPKff: argument 1"}
!128 = !{!129, !96}
!129 = distinct !{!129, !130, !"_ZL13_store_scaledILm2EEvPfPKff: argument 0"}
!130 = distinct !{!130, !"_ZL13_store_scaledILm2EEvPfPKff"}
!131 = !{!132, !99}
!132 = distinct !{!132, !130, !"_ZL13_store_scaledILm2EEvPfPKff: argument 1"}
!133 = distinct !{!133, !12, !30, !31}
!134 = distinct !{!134, !12, !30, !31}
!135 = distinct !{!135, !12, !31, !30}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 0"}
!138 = distinct !{!138, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_"}
!139 = !{!140}
!140 = distinct !{!140, !138, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 2"}
!141 = !{!142, !99}
!142 = distinct !{!142, !143, !"_ZL4_subILm2ELb0EEvPfPKfS0_: argument 1"}
!143 = distinct !{!143, !"_ZL4_subILm2ELb0EEvPfPKfS0_"}
!144 = !{!145, !96}
!145 = distinct !{!145, !143, !"_ZL4_subILm2ELb0EEvPfPKfS0_: argument 0"}
!146 = !{!140, !96}
!147 = !{!137, !148, !99}
!148 = distinct !{!148, !138, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 1"}
!149 = !{!137, !99}
!150 = !{!148, !140, !96}
!151 = !{!152, !96}
!152 = distinct !{!152, !153, !"_ZL13_store_scaledILm2EEvPfPKff: argument 0"}
!153 = distinct !{!153, !"_ZL13_store_scaledILm2EEvPfPKff"}
!154 = !{!155, !99}
!155 = distinct !{!155, !153, !"_ZL13_store_scaledILm2EEvPfPKff: argument 1"}
!156 = !{!157}
!157 = distinct !{!157, !138, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 0:It1"}
!158 = !{!159}
!159 = distinct !{!159, !138, !"_ZL9_load_addILm2ELb0EEvPfS0_PKfS0_: argument 2:It1"}
!160 = !{!159, !96}
!161 = !{!157, !148, !99}
!162 = !{!157, !99}
!163 = !{!148, !159, !96}
!164 = distinct !{!164, !12}
!165 = !{!166, !99}
!166 = distinct !{!166, !167, !"_ZL4_subILm2ELb0EEvPfPKfS0_: argument 1"}
!167 = distinct !{!167, !"_ZL4_subILm2ELb0EEvPfPKfS0_"}
!168 = !{!169, !96}
!169 = distinct !{!169, !167, !"_ZL4_subILm2ELb0EEvPfPKfS0_: argument 0"}
!170 = !{!171, !96}
!171 = distinct !{!171, !172, !"_ZL13_store_scaledILm2EEvPfPKff: argument 0"}
!172 = distinct !{!172, !"_ZL13_store_scaledILm2EEvPfPKff"}
!173 = !{!174, !99}
!174 = distinct !{!174, !172, !"_ZL13_store_scaledILm2EEvPfPKff: argument 1"}
!175 = distinct !{!175, !12}
!176 = distinct !{!176, !12}
!177 = distinct !{!177, !12}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZL16_blur_horizontalILm4ELb0EEvPfmmS0_: argument 0"}
!180 = distinct !{!180, !"_ZL16_blur_horizontalILm4ELb0EEvPfmmS0_"}
!181 = !{!182}
!182 = distinct !{!182, !180, !"_ZL16_blur_horizontalILm4ELb0EEvPfmmS0_: argument 1"}
!183 = !{!184, !186, !179, !182}
!184 = distinct !{!184, !185, !"_ZL9_load_addILm4ELb0EEvPfS0_PKfS0_: argument 0"}
!185 = distinct !{!185, !"_ZL9_load_addILm4ELb0EEvPfS0_PKfS0_"}
!186 = distinct !{!186, !185, !"_ZL9_load_addILm4ELb0EEvPfS0_PKfS0_: argument 2"}
!187 = !{!188}
!188 = distinct !{!188, !185, !"_ZL9_load_addILm4ELb0EEvPfS0_PKfS0_: argument 1"}
!189 = !{!184}
!190 = !{!186, !179}
!191 = !{!184, !188, !182}
!192 = distinct !{!192, !12, !30, !31}
!193 = !{!"branch_weights", i32 4, i32 12}
!194 = distinct !{!194, !12, !30, !31}
end_hunk_4
