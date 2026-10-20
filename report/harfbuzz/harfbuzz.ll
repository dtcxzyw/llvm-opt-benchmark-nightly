Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35471
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 169
loop-unroll.NumRuntimeUnrolled: 273
loop-unroll.NumUnrolled: 472
begin_hunk_0_@_ZL24hb_ot_tags_from_languagePKcS0_PjS1_:bb.a
  br i1 %i.afi, label %.lr.ph320.preheader, label %.critedge5.loopexit

.lr.ph320.preheader:                              ; preds = %.lr.ph243
  %invariant.gep344 = getelementptr [8 x i8], ptr @_ZL13ot_languages2, i64 %i.afh
  %i.afj = load i32, ptr %i.afg, align 8, !tbaa !1427
  br label %.lr.ph320

bb.jo:                                            ; preds = %bb.jp
  %i.afk = add nuw nsw i64 %indvars.iv.next260, %i.afh
  %i.afl = icmp ult i64 %i.afk, 204
  br i1 %i.afl, label %.lr.ph320, label %.critedge5.loopexit, !llvm.loop !3062

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %bb.jo
  %indvars.iv259319 = phi i64 [ %indvars.iv.next260, %bb.jo ], [ 0, %.lr.ph320.preheader ] ; 4 uses
  %gep345 = getelementptr [8 x i8], ptr %invariant.gep344, i64 %indvars.iv259319 ; 2 uses
  %i.afm = load i32, ptr %gep345, align 8, !tbaa !1427
  %i.afn = icmp eq i32 %i.afm, %i.afj
  br i1 %i.afn, label %bb.jp, label %.critedge5.loopexit

bb.jp:                                            ; preds = %.lr.ph320
  %i.afo = getelementptr inbounds nuw i8, ptr %gep345, i64 4
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !1428
  %i.afq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv259319
  store i32 %i.afp, ptr %i.afq, align 4, !tbaa !324
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259319, 1 ; 5 uses
  %i.afr = load i32, ptr %2, align 4, !tbaa !324
  %i.afs = zext i32 %i.afr to i64
  %i.aft = icmp samesign ult i64 %indvars.iv.next260, %i.afs
  br i1 %i.aft, label %bb.jo, label %..critedge5.loopexit_crit_edge322, !llvm.loop !3062

..critedge5.loopexit_crit_edge322:                ; preds = %bb.jp
  br label %.critedge5.loopexit, !llvm.loop !3062

.critedge5.loopexit:                              ; preds = %.lr.ph320, %bb.jo, %..critedge5.loopexit_crit_edge322, %.lr.ph243
  %.078.lcssa.ph.in = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next260, %..critedge5.loopexit_crit_edge322 ], [ %indvars.iv259319, %.lr.ph320 ], [ %indvars.iv.next260, %bb.jo ]
  %.078.lcssa.ph = trunc i64 %.078.lcssa.ph.in to i32
  br label %.critedge106

bb.jq:                                            ; preds = %hb_tag_from_string.exit
  %i.afu = load atomic i32, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_3.0 monotonic, align 4 ; 3 uses
  %i.afv = icmp ult i32 %i.afu, 779
  br i1 %i.afv, label %bb.jr, label %.lr.ph.i.i.i116.preheader, !prof !268

bb.jr:                                            ; preds = %bb.jq
  %i.afw = zext nneg i32 %i.afu to i64
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 8, !tbaa !1427
  %i.afz = icmp eq i32 %i.afy, %.019.i
  br i1 %i.afz, label %.critedge7, label %.lr.ph.i.i.i116.preheader, !prof !268

.lr.ph.i.i.i116.preheader:                        ; preds = %bb.jr, %bb.jq
  br label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %.lr.ph.i.i.i116.preheader, %bb.jv
  %.0203.i.i.i117 = phi i32 [ %.2.i.i.i121, %bb.jv ], [ 778, %.lr.ph.i.i.i116.preheader ] ; 2 uses
  %.0212.i.i.i118 = phi i32 [ %.223.i.i.i120, %bb.jv ], [ 0, %.lr.ph.i.i.i116.preheader ] ; 2 uses
  %i.aga = add i32 %.0212.i.i.i118, %.0203.i.i.i117
  %i.agb = lshr i32 %i.aga, 1                     ; 4 uses
  %i.agc = zext nneg i32 %i.agb to i64
  %i.agd = shl nuw nsw i64 %i.agc, 3
  %i.age = getelementptr inbounds nuw i8, ptr @_ZL13ot_languages3, i64 %i.agd
  %i.agf = load i32, ptr %i.age, align 8, !tbaa !1427 ; 2 uses
  %i.agg = icmp ult i32 %.019.i, %i.agf
  br i1 %i.agg, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %.lr.ph.i.i.i116
  %i.agh = add nsw i32 %i.agb, -1
  br label %bb.jv

bb.jt:                                            ; preds = %.lr.ph.i.i.i116
  %.not28.i.i.i119 = icmp eq i32 %.019.i, %i.agf
  br i1 %.not28.i.i.i119, label %.critedge7, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.agi = add nuw nsw i32 %i.agb, 1
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.js
  %.223.i.i.i120 = phi i32 [ %i.agi, %bb.ju ], [ %.0212.i.i.i118, %bb.js ] ; 2 uses
  %.2.i.i.i121 = phi i32 [ %.0203.i.i.i117, %bb.ju ], [ %i.agh, %bb.js ] ; 2 uses
  %.not.not.i.i.i122 = icmp sgt i32 %.223.i.i.i120, %.2.i.i.i121
  br i1 %.not.not.i.i.i122, label %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124, label %.lr.ph.i.i.i116, !llvm.loop !3060

.critedge7:                                       ; preds = %bb.jt, %bb.jr
  %.0205 = phi i32 [ %i.afu, %bb.jr ], [ %i.agb, %bb.jt ] ; 2 uses
  store atomic i32 %.0205, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E14last_tag_idx_3.0 monotonic, align 4
  %i.agj = load i32, ptr %2, align 4, !tbaa !324
  %.not91 = icmp eq i32 %i.agj, 0
  br i1 %.not91, label %.critedge106, label %bb.jw

bb.jw:                                            ; preds = %.critedge7
  %i.agk = zext nneg i32 %.0205 to i64
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %i.agk
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 4
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !1428
  store i32 %i.agn, ptr %3, align 4, !tbaa !324
  br label %.critedge106

_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124: ; preds = %bb.jv
  %i.ago = load atomic i32, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E20last_tag_idx_3_multi.0 monotonic, align 4 ; 3 uses
  %i.agp = icmp ult i32 %i.ago, 137
  br i1 %i.agp, label %bb.jx, label %.lr.ph.i.i.i132.preheader, !prof !268

bb.jx:                                            ; preds = %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124
  %i.agq = zext nneg i32 %i.ago to i64
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %i.agq
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !1430
  %i.agt = icmp eq i32 %i.ags, %.019.i
  br i1 %i.agt, label %.critedge9, label %.lr.ph.i.i.i132.preheader, !prof !268

.lr.ph.i.i.i132.preheader:                        ; preds = %bb.jx, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124
  br label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %.lr.ph.i.i.i132.preheader, %bb.kb
  %.0203.i.i.i133 = phi i32 [ %.2.i.i.i137, %bb.kb ], [ 136, %.lr.ph.i.i.i132.preheader ] ; 2 uses
  %.0212.i.i.i134 = phi i32 [ %.223.i.i.i136, %bb.kb ], [ 0, %.lr.ph.i.i.i132.preheader ] ; 2 uses
  %i.agu = add i32 %.0212.i.i.i134, %.0203.i.i.i133
  %i.agv = lshr i32 %i.agu, 1                     ; 4 uses
  %i.agw = zext nneg i32 %i.agv to i64
  %i.agx = shl nuw nsw i64 %i.agw, 3
  %i.agy = getelementptr inbounds nuw i8, ptr @_ZL19ot_languages3_multi, i64 %i.agx
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !1430 ; 2 uses
  %i.aha = icmp ult i32 %.019.i, %i.agz
  br i1 %i.aha, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %.lr.ph.i.i.i132
  %i.ahb = add nsw i32 %i.agv, -1
  br label %bb.kb

bb.jz:                                            ; preds = %.lr.ph.i.i.i132
  %.not28.i.i.i135 = icmp eq i32 %.019.i, %i.agz
  br i1 %.not28.i.i.i135, label %.critedge9, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.ahc = add nuw nsw i32 %i.agv, 1
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jy
  %.223.i.i.i136 = phi i32 [ %i.ahc, %bb.ka ], [ %.0212.i.i.i134, %bb.jy ] ; 2 uses
  %.2.i.i.i137 = phi i32 [ %.0203.i.i.i133, %bb.ka ], [ %i.ahb, %bb.jy ] ; 2 uses
  %.not.not.i.i.i138 = icmp sgt i32 %.223.i.i.i136, %.2.i.i.i137
  br i1 %.not.not.i.i.i138, label %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %.lr.ph.i.i.i132, !llvm.loop !3063

.critedge9:                                       ; preds = %bb.jz, %bb.jx
  %.0204 = phi i32 [ %i.ago, %bb.jx ], [ %i.agv, %bb.jz ] ; 2 uses
  store atomic i32 %.0204, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E20last_tag_idx_3_multi.0 monotonic, align 4
  %i.ahd = load i32, ptr %2, align 4, !tbaa !324
  %.not249 = icmp eq i32 %i.ahd, 0
  br i1 %.not249, label %.critedge106, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge9
  %i.ahe = zext nneg i32 %.0204 to i64
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %i.ahe ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 6
  %i.ahh = load i8, ptr %i.ahg, align 2, !tbaa !1431 ; 2 uses
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  %wide.trip.count = zext i8 %i.ahh to i64
  %i.ahk = load i16, ptr %i.ahj, align 4, !tbaa !1432
  %i.ahl = zext i16 %i.ahk to i64
  %invariant.gep = getelementptr inbounds [4 x i8], ptr @_ZL26ot_languages3_multi_values, i64 %i.ahl
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kd
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge106, label %bb.kd, !llvm.loop !3064

bb.kd:                                            ; preds = %.lr.ph, %bb.kc
  %indvars.iv312 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.kc ] ; 3 uses
  %gep = getelementptr inbounds [4 x i8], ptr %invariant.gep, i64 %indvars.iv312
  %i.ahm = load i32, ptr %gep, align 4, !tbaa !324
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  store i32 %i.ahm, ptr %i.ahn, align 4, !tbaa !324
  %indvars.iv.next = add nuw nsw i64 %indvars.iv312, 1 ; 4 uses
  %i.aho = load i32, ptr %2, align 4, !tbaa !324
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = icmp samesign ult i64 %indvars.iv.next, %i.ahp
  br i1 %i.ahq, label %bb.kc, label %.critedge11.loopexit.split.loop.exit, !llvm.loop !3064

.critedge11.loopexit.split.loop.exit:             ; preds = %bb.kd
  %indvars.le = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge106

_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.kb, %bb.kg
  %.0152.i = phi i32 [ %.2.i, %bb.kg ], [ 162, %bb.kb ] ; 2 uses
  %.0161.i = phi i32 [ %.218.i, %bb.kg ], [ 0, %bb.kb ] ; 3 uses
  %i.ahr = sub nuw i32 %.0152.i, %.0161.i
  %i.ahs = lshr i32 %i.ahr, 1
  %i.aht = add i32 %i.ahs, %.0161.i               ; 3 uses
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr @_ZL21ot_languages3_blocked, i64 %i.ahu
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !324 ; 2 uses
  %i.ahx = icmp ult i32 %.019.i, %i.ahw
  br i1 %i.ahx, label %bb.kg, label %bb.ke

bb.ke:                                            ; preds = %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %i.ahy = icmp ugt i32 %.019.i, %i.ahw
  br i1 %i.ahy, label %bb.kf, label %.critedge106

bb.kf:                                            ; preds = %bb.ke
  %i.ahz = add nuw i32 %i.aht, 1
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %.218.i = phi i32 [ %.0161.i, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %i.ahz, %bb.kf ] ; 2 uses
  %.2.i = phi i32 [ %i.aht, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %.0152.i, %bb.kf ] ; 2 uses
  %i.aia = icmp ult i32 %.218.i, %.2.i
  br i1 %i.aia, label %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %_ZL9bfind_tagPKjjj.exit, !llvm.loop !3065

_ZL9bfind_tagPKjjj.exit:                          ; preds = %bb.kg
  %i.aib = and i32 %.019.i, -538976257
  store i32 %i.aib, ptr %3, align 4, !tbaa !324
  br label %.critedge106

_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.jm, %hb_tag_from_string.exit.thread, %hb_tag_from_string.exit
  br i1 %.not, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %i.aic = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.181) #64
  %i.aid = getelementptr inbounds nuw i8, ptr %.181, i64 %i.aic
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %.079 = phi ptr [ %i.acy, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %i.aid, %bb.kh ]
  %i.aie = ptrtoint ptr %.079 to i64
  %i.aif = sub i64 %i.aie, %.pre-phi
  %i.aig = icmp eq i64 %i.aif, 3
  br i1 %i.aig, label %bb.kj, label %.critedge106

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.aih = load i8, ptr %.181, align 1, !tbaa !280 ; 2 uses
  %.not.i142 = icmp eq i8 %i.aih, 0
  br i1 %.not.i142, label %hb_tag_from_string.exit154, label %.preheader.1

.preheader.1:                                     ; preds = %bb.kj
  store i8 %i.aih, ptr %i.a, align 1, !tbaa !280
  %i.aii = getelementptr inbounds nuw i8, ptr %.181, i64 1
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !280 ; 2 uses
  %.not23.i144.1 = icmp eq i8 %i.aij, 0
  br i1 %.not23.i144.1, label %.lr.ph.preheader.i150, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.aik = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aij, ptr %i.aik, align 1, !tbaa !280
  %i.ail = getelementptr inbounds nuw i8, ptr %.181, i64 2
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !280 ; 2 uses
  %.not23.i144.2 = icmp eq i8 %i.aim, 0
  br i1 %.not23.i144.2, label %.lr.ph.preheader.i150, label %.lr.ph.preheader.i150.loopexit

.lr.ph.preheader.i150.loopexit:                   ; preds = %.preheader.2
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.aim, ptr %i.ain, align 1, !tbaa !280
  br label %.lr.ph.preheader.i150

.lr.ph.preheader.i150:                            ; preds = %.preheader.1, %.preheader.2, %.lr.ph.preheader.i150.loopexit
  %.0.lcssa.i148230 = phi i32 [ 3, %.lr.ph.preheader.i150.loopexit ], [ 2, %.preheader.2 ], [ 1, %.preheader.1 ] ; 2 uses
  %i.aio = zext nneg i32 %.0.lcssa.i148230 to i64
  %scevgep.i151 = getelementptr i8, ptr %i.a, i64 %i.aio
  %narrow.i152 = sub nuw nsw i32 4, %.0.lcssa.i148230
  %i.aip = zext nneg i32 %narrow.i152 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i151, i8 32, i64 %i.aip, i1 false), !tbaa !280
  %i.aiq = load i8, ptr %i.a, align 1, !tbaa !280
  %i.air = zext i8 %i.aiq to i32
  %i.ais = shl nuw i32 %i.air, 24
  %i.ait = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !280
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = shl nuw nsw i32 %i.aiv, 16
  %i.aix = or disjoint i32 %i.aiw, %i.ais
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !280
  %i.aja = zext i8 %i.aiz to i32
  %i.ajb = shl nuw nsw i32 %i.aja, 8
  %i.ajc = or disjoint i32 %i.aix, %i.ajb
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !280
  %i.ajf = zext i8 %i.aje to i32
  %.masked = and i32 %i.ajc, -538976512
  %i.ajg = or disjoint i32 %.masked, %i.ajf
  br label %hb_tag_from_string.exit154

hb_tag_from_string.exit154:                       ; preds = %bb.kj, %.lr.ph.preheader.i150
  %.019.i141 = phi i32 [ %i.ajg, %.lr.ph.preheader.i150 ], [ 0, %bb.kj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  store i32 %.019.i141, ptr %3, align 4, !tbaa !324
  br label %.critedge106

.critedge106:                                     ; preds = %bb.ke, %bb.kc, %bb.ki, %.critedge9, %.critedge11.loopexit.split.loop.exit, %bb.jw, %.critedge7, %.critedge3, %.critedge5.loopexit, %bb.ir, %bb.ip, %.preheader1643.1.i, %.preheader1643.preheader.i, %bb.in, %bb.il, %bb.ik, %bb.ij, %bb.ig, %bb.if, %bb.ie, %.preheader1644.i, %bb.id, %bb.ia, %bb.hx, %bb.hv, %.preheader1641.1.i, %.preheader1641.preheader.i, %bb.ht, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %.preheader1642.i, %bb.hn, %bb.hk, %bb.hi, %.preheader1639.1.i, %.preheader1639.preheader.i, %bb.hg, %bb.he, %bb.hd, %bb.hc, %bb.hb, %.preheader1640.i, %bb.ha, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.1.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.preheader.preheader.i, %bb.gw, %bb.gu, %bb.gt, %bb.gr, %.preheader1637.1.i, %.preheader1637.preheader.i, %bb.gp, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %.preheader1638.i, %bb.gj, %bb.gg, %bb.ge, %bb.gc, %.preheader1635.1.i, %.preheader1635.preheader.i, %bb.ga, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %.preheader1636.i, %bb.fu, %bb.fr, %bb.fp, %.preheader1633.1.i, %.preheader1633.preheader.i, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %.preheader1634.i, %bb.fg, %bb.fd, %bb.fb, %bb.ez, %.preheader1632.1.i, %.preheader1632.preheader.i, %bb.ex, %bb.ev, %.preheader1628.1.i, %.preheader1628.preheader.i, %bb.et, %bb.er, %bb.ep, %.preheader1627.1.i, %.preheader1627.preheader.i, %bb.en, %bb.el, %bb.ej, %.preheader1626.1.i, %.preheader1626.preheader.i, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %.preheader1629.i, %bb.dx, %bb.dw, %bb.dv, %.preheader1630.i, %bb.du, %bb.dt, %bb.ds, %.preheader1631.i, %bb.dr, %bb.do, %bb.dm, %.preheader1624.1.i, %.preheader1624.preheader.i, %bb.dk, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %.preheader1625.i, %bb.dd, %bb.da, %bb.cy, %.preheader1615.1.i, %.preheader1615.preheader.i, %bb.cw, %bb.cu, %bb.cs, %.preheader1614.1.i, %.preheader1614.preheader.i, %bb.cq, %bb.co, %bb.cm, %.preheader1613.1.i, %.preheader1613.preheader.i, %bb.ck, %bb.ci, %bb.cg, %.preheader1612.1.i, %.preheader1612.preheader.i, %bb.ce, %bb.cc, %bb.ca, %.preheader1611.1.i, %.preheader1611.preheader.i, %bb.by, %bb.bw, %bb.bu, %.preheader1610.1.i, %.preheader1610.preheader.i, %bb.bs, %bb.bq, %bb.bo, %.preheader1609.1.i, %.preheader1609.preheader.i, %bb.bm, %bb.bk, %bb.bi, %.preheader.1.i, %.preheader.preheader.i, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.preheader1616.i, %bb.am, %bb.al, %bb.ak, %.preheader1617.i, %bb.aj, %bb.ai, %bb.ah, %.preheader1618.i, %bb.ag, %bb.af, %bb.ae, %.preheader1619.i, %bb.ad, %bb.ac, %bb.ab, %.preheader1620.i, %bb.aa, %bb.z, %bb.y, %.preheader1621.i, %bb.x, %bb.w, %bb.v, %.preheader1622.i, %bb.u, %bb.t, %bb.s, %.preheader1623.i, %bb.r, %bb.o, %bb.l, %_ZL14subtag_matchesPKcS0_S0_j.exit, %_ZL14subtag_matchesPKcS0_S0_j.exit165, %_ZL14subtag_matchesPKcS0_S0_j.exit173, %_ZL14subtag_matchesPKcS0_S0_j.exit181, %_ZL14subtag_matchesPKcS0_S0_j.exit1058.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1050.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1042.i, %_ZL14subtag_matchesPKcS0_S0_j.exit.i, %_ZL9bfind_tagPKjjj.exit, %hb_tag_from_string.exit154
  %.078.lcssa.sink = phi i32 [ 1, %.preheader1643.1.i ], [ 0, %.critedge7 ], [ 0, %bb.ki ], [ 1, %_ZL9bfind_tagPKjjj.exit ], [ %.078.lcssa.ph, %.critedge5.loopexit ], [ %i.ahi, %bb.kc ], [ 1, %hb_tag_from_string.exit154 ], [ 1, %bb.l ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit165 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit173 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit181 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1058.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1050.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1042.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit.i ], [ 1, %bb.ir ], [ 1, %bb.ie ], [ 1, %bb.in ], [ 1, %bb.il ], [ 1, %bb.ik ], [ 1, %bb.ij ], [ 1, %bb.ig ], [ 1, %.preheader1641.1.i ], [ 1, %bb.id ], [ 1, %bb.ia ], [ 1, %bb.hx ], [ 1, %bb.ho ], [ 1, %bb.ht ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %.preheader1639.1.i ], [ 1, %bb.hn ], [ 1, %bb.hk ], [ 1, %bb.hb ], [ 1, %bb.hg ], [ 1, %bb.he ], [ 1, %bb.hd ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.i ], [ 1, %bb.ha ], [ 1, %.preheader1637.1.i ], [ 1, %bb.gw ], [ 1, %bb.gu ], [ 1, %bb.gt ], [ 1, %bb.gk ], [ 1, %bb.gp ], [ 1, %bb.gn ], [ 1, %bb.gm ], [ 1, %.preheader1635.1.i ], [ 1, %bb.gj ], [ 1, %bb.gg ], [ 1, %bb.ge ], [ 1, %bb.fv ], [ 1, %bb.ga ], [ 1, %bb.fy ], [ 1, %bb.fx ], [ 1, %.preheader1633.1.i ], [ 1, %bb.fu ], [ 1, %bb.fr ], [ 1, %bb.fh ], [ 1, %bb.fn ], [ 1, %bb.fl ], [ 1, %bb.fk ], [ 1, %bb.fj ], [ 1, %.preheader1632.1.i ], [ 1, %bb.fg ], [ 1, %bb.fd ], [ 1, %bb.fb ], [ 1, %.preheader1628.1.i ], [ 1, %bb.ex ], [ 1, %.preheader1627.1.i ], [ 1, %bb.et ], [ 1, %bb.er ], [ 1, %.preheader1626.1.i ], [ 1, %bb.en ], [ 1, %bb.el ], [ 1, %bb.dy ], [ 1, %bb.eh ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ed ], [ 1, %bb.ec ], [ 1, %bb.eb ], [ 1, %bb.ea ], [ 1, %bb.dv ], [ 1, %bb.dx ], [ 1, %bb.ds ], [ 1, %bb.du ], [ 1, %.preheader1624.1.i ], [ 1, %bb.dr ], [ 1, %bb.do ], [ 1, %bb.de ], [ 1, %bb.dk ], [ 1, %bb.di ], [ 1, %bb.dh ], [ 1, %bb.dg ], [ 1, %.preheader1615.1.i ], [ 1, %bb.dd ], [ 1, %bb.da ], [ 1, %.preheader1614.1.i ], [ 1, %bb.cw ], [ 1, %bb.cu ], [ 1, %.preheader1613.1.i ], [ 1, %bb.cq ], [ 1, %bb.co ], [ 1, %.preheader1612.1.i ], [ 1, %bb.ck ], [ 1, %bb.ci ], [ 1, %.preheader1611.1.i ], [ 1, %bb.ce ], [ 1, %bb.cc ], [ 1, %.preheader1610.1.i ], [ 1, %bb.by ], [ 1, %bb.bw ], [ 1, %.preheader1609.1.i ], [ 1, %bb.bs ], [ 1, %bb.bq ], [ 1, %.preheader.1.i ], [ 1, %bb.bm ], [ 1, %bb.bk ], [ 1, %bb.an ], [ 1, %bb.bg ], [ 1, %bb.be ], [ 1, %bb.bd ], [ 1, %bb.bc ], [ 1, %bb.bb ], [ 1, %bb.ba ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.as ], [ 1, %bb.ar ], [ 1, %bb.aq ], [ 1, %bb.ap ], [ 1, %bb.ak ], [ 1, %bb.am ], [ 1, %bb.ah ], [ 1, %bb.aj ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.y ], [ 1, %bb.aa ], [ 1, %bb.v ], [ 1, %bb.x ], [ 1, %bb.s ], [ 1, %bb.u ], [ 1, %bb.o ], [ 1, %bb.r ], [ 2, %bb.t ], [ 0, %.preheader1623.i ], [ 2, %bb.w ], [ 0, %.preheader1622.i ], [ 2, %bb.z ], [ 0, %.preheader1621.i ], [ 2, %bb.ac ], [ 0, %.preheader1620.i ], [ 2, %bb.af ], [ 0, %.preheader1619.i ], [ 2, %bb.ai ], [ 0, %.preheader1618.i ], [ 2, %bb.al ], [ 0, %.preheader1617.i ], [ 2, %bb.ao ], [ 0, %.preheader1616.i ], [ 2, %bb.bi ], [ 0, %.preheader.preheader.i ], [ 2, %bb.bo ], [ 0, %.preheader1609.preheader.i ], [ 2, %bb.bu ], [ 0, %.preheader1610.preheader.i ], [ 2, %bb.ca ], [ 0, %.preheader1611.preheader.i ], [ 2, %bb.cg ], [ 0, %.preheader1612.preheader.i ], [ 2, %bb.cm ], [ 0, %.preheader1613.preheader.i ], [ 2, %bb.cs ], [ 0, %.preheader1614.preheader.i ], [ 2, %bb.cy ], [ 0, %.preheader1615.preheader.i ], [ 2, %bb.df ], [ 0, %.preheader1625.i ], [ 2, %bb.dm ], [ 0, %.preheader1624.preheader.i ], [ 2, %bb.dt ], [ 0, %.preheader1631.i ], [ 2, %bb.dw ], [ 0, %.preheader1630.i ], [ 2, %bb.dz ], [ 0, %.preheader1629.i ], [ 2, %bb.ej ], [ 0, %.preheader1626.preheader.i ], [ 2, %bb.ep ], [ 0, %.preheader1627.preheader.i ], [ 2, %bb.ev ], [ 0, %.preheader1628.preheader.i ], [ 2, %bb.ez ], [ 0, %.preheader1632.preheader.i ], [ 2, %bb.fi ], [ 0, %.preheader1634.i ], [ 2, %bb.fp ], [ 0, %.preheader1633.preheader.i ], [ 2, %bb.fw ], [ 0, %.preheader1636.i ], [ 2, %bb.gc ], [ 0, %.preheader1635.preheader.i ], [ 2, %bb.gl ], [ 0, %.preheader1638.i ], [ 2, %bb.gr ], [ 0, %.preheader1637.preheader.i ], [ 2, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.1.i ], [ 0, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.preheader.preheader.i ], [ 2, %bb.hc ], [ 0, %.preheader1640.i ], [ 2, %bb.hi ], [ 0, %.preheader1639.preheader.i ], [ 2, %bb.hp ], [ 0, %.preheader1642.i ], [ 2, %bb.hv ], [ 0, %.preheader1641.preheader.i ], [ 2, %bb.if ], [ 0, %.preheader1644.i ], [ 2, %bb.ip ], [ 0, %.preheader1643.preheader.i ], [ 0, %.critedge3 ], [ 1, %bb.jw ], [ 0, %.critedge9 ], [ %indvars.le, %.critedge11.loopexit.split.loop.exit ], [ 0, %bb.ke ]
  store i32 %.078.lcssa.sink, ptr %2, align 4, !tbaa !324
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_ot_tag_to_language(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %i.d = alloca [20 x i8], align 16               ; 12 uses
  %i.e = icmp eq i32 %0, 1684434036
  br i1 %i.e, label %hb_language_from_string.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader [
    i32 1095521312, label %bb.c
    i32 1095782472, label %bb.d
    i32 1095912224, label %bb.e
    i32 1096042528, label %bb.f
    i32 1111642656, label %bb.g
    i32 1112099616, label %bb.h
    i32 1112820512, label %bb.i
    i32 1129336864, label %bb.j
    i32 1129468448, label %bb.k
    i32 1145524768, label %bb.l
    i32 1145981728, label %bb.m
    i32 1146243360, label %bb.n
    i32 1196379680, label %bb.o
    i32 1213022496, label %bb.p
    i32 1213025824, label %bb.q
    i32 1213088800, label %bb.r
    i32 1213809952, label %bb.s
    i32 1229078816, label %bb.t
    i32 1229606688, label %bb.u
    i32 1230000200, label %bb.v
    i32 1230132256, label %bb.w
    i32 1246316832, label %bb.x
    i32 1262570528, label %bb.y
    i32 1262961952, label %bb.z
    i32 1263487008, label %bb.aa
    i32 1263487776, label %bb.ab
    i32 1263553568, label %bb.ac
    i32 1263685152, label %bb.ad
    i32 1263880480, label %bb.ae
    i32 1280131360, label %bb.af
    i32 1280657440, label %bb.ag
    i32 1296127776, label %bb.ah
    i32 1296849184, label %bb.ai
    i32 1296976672, label %bb.aj
    i32 1297042464, label %bb.ak
    i32 1297043028, label %bb.al
    i32 1297698336, label %bb.am
    i32 1312901152, label %bb.an
    i32 1313428256, label %bb.ao
    i32 1313821216, label %bb.ap
    i32 1346851360, label %bb.aq
    i32 1347571488, label %bb.ar
    i32 1364543520, label %bb.as
    i32 1364609312, label %bb.at
    i32 1364674592, label %bb.au
    i32 1380010528, label %bb.av
    i32 1380928800, label %bb.aw
    i32 1380931872, label %bb.ax
    i32 1397178656, label %bb.ay
    i32 1397899808, label %bb.az
    i32 1398297632, label %bb.ba
    i32 1398362656, label %bb.bb
    i32 1398362693, label %bb.bc
    i32 1398362698, label %bb.bd
    i32 1398362702, label %bb.be
    i32 1414350880, label %bb.bf
    i32 1414480928, label %bb.bg
    i32 1464095776, label %bb.bh
    i32 1465470496, label %bb.bi
    i32 1514686496, label %bb.bj
    i32 1514689312, label %bb.bk
    i32 1514689568, label %bb.bl
    i32 1514689613, label %bb.bm
    i32 1515864352, label %bb.bn
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.295) ; 2 uses
  %.not11.i.i = icmp eq ptr %i.f, null
  br i1 %.not11.i.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !267

bb.d:                                             ; preds = %bb.b
  %i.g = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.296) ; 2 uses
  %.not11.i1.i = icmp eq ptr %i.g, null
  br i1 %.not11.i1.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !267

bb.e:                                             ; preds = %bb.b
  %i.h = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.297) ; 2 uses
  %.not11.i4.i = icmp eq ptr %i.h, null
  br i1 %.not11.i4.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !267

bb.f:                                             ; preds = %bb.b
  %i.i = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.298) ; 2 uses
  %.not11.i7.i = icmp eq ptr %i.i, null
  br i1 %.not11.i7.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !267

bb.g:                                             ; preds = %bb.b
  %i.j = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.299) ; 2 uses
  %.not11.i10.i = icmp eq ptr %i.j, null
  br i1 %.not11.i10.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !267

bb.h:                                             ; preds = %bb.b
  %i.k = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.300) ; 2 uses
  %.not11.i13.i = icmp eq ptr %i.k, null
  br i1 %.not11.i13.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !267
end_hunk_0
