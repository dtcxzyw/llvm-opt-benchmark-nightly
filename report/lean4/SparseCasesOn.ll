inline.NumInlined: 1621
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@l_Lean_Meta_mkSparseCasesOn:bb.a
bb.vf:                                            ; preds = %lean_inc.exit1436
  %i.ahe = getelementptr i8, ptr %i.agz, i64 4
  %.val.i1806 = load i32, ptr %i.ahe, align 4
  %i.ahf = lshr i32 %.val.i1806, 24
  br label %lean_obj_tag.exit1807

lean_obj_tag.exit1807:                            ; preds = %bb.ve, %bb.vf
  %.0.i1805 = phi i32 [ %i.ahd, %bb.ve ], [ %i.ahf, %bb.vf ]
  %i.ahg = icmp eq i32 %.0.i1805, 0
  br i1 %i.ahg, label %bb.vg, label %bb.yy

bb.vg:                                            ; preds = %lean_obj_tag.exit1807
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.ahi = load ptr, ptr %i.ahh, align 8, !tbaa !13
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agz, i64 8 ; 2 uses
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !13 ; 23 uses
  %i.ahl = ptrtoint ptr %i.ahk to i64
  %i.ahm = and i64 %i.ahl, 1
  %.not.i1433 = icmp eq i64 %i.ahm, 0             ; 3 uses
  br i1 %.not.i1433, label %bb.vh, label %lean_inc.exit1434

bb.vh:                                            ; preds = %bb.vg
  %.val.i.i1808 = load i32, ptr %i.ahk, align 4, !tbaa !10 ; 3 uses
  %i.ahn = icmp sgt i32 %.val.i.i1808, 0
  br i1 %i.ahn, label %bb.vi, label %bb.vj, !prof !12

bb.vi:                                            ; preds = %bb.vh
  %i.aho = add nuw i32 %.val.i.i1808, 1
  store i32 %i.aho, ptr %i.ahk, align 4, !tbaa !10
  br label %lean_inc.exit1434

bb.vj:                                            ; preds = %bb.vh
  %.not.i.i1809 = icmp eq i32 %.val.i.i1808, 0
  br i1 %.not.i.i1809, label %lean_inc.exit1434, label %bb.vk

bb.vk:                                            ; preds = %bb.vj
  %i.ahp = atomicrmw sub ptr %i.ahk, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1434

lean_inc.exit1434:                                ; preds = %bb.vk, %bb.vj, %bb.vi, %bb.vg
  %.val.i1811 = load i32, ptr %i.agz, align 8, !tbaa !10 ; 4 uses
  %i.ahq = icmp eq i32 %.val.i1811, 1
  br i1 %i.ahq, label %.preheader.i1813.preheader, label %bb.vp

.preheader.i1813.preheader:                       ; preds = %lean_inc.exit1434
  %i.ahr = load ptr, ptr %i.ahj, align 8, !tbaa !13 ; 4 uses
  %i.ahs = ptrtoint ptr %i.ahr to i64
  %i.aht = and i64 %i.ahs, 1
  %.not.i.i1815 = icmp eq i64 %i.aht, 0
  br i1 %.not.i.i1815, label %bb.vl, label %lean_dec.exit.i1816

bb.vl:                                            ; preds = %.preheader.i1813.preheader
  %i.ahu = load i32, ptr %i.ahr, align 4, !tbaa !10 ; 3 uses
  %i.ahv = icmp sgt i32 %i.ahu, 1
  br i1 %i.ahv, label %bb.vm, label %bb.vn, !prof !12

bb.vm:                                            ; preds = %bb.vl
  %i.ahw = add nsw i32 %i.ahu, -1
  store i32 %i.ahw, ptr %i.ahr, align 4, !tbaa !10
  br label %lean_dec.exit.i1816

bb.vn:                                            ; preds = %bb.vl
  %.not.i7.i1819 = icmp eq i32 %i.ahu, 0
  br i1 %.not.i7.i1819, label %lean_dec.exit.i1816, label %bb.vo

bb.vo:                                            ; preds = %bb.vn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahr) #5
  br label %lean_dec.exit.i1816

lean_dec.exit.i1816:                              ; preds = %bb.vo, %bb.vn, %bb.vm, %.preheader.i1813.preheader
  tail call void @lean_free_object(ptr noundef nonnull %i.agz) #5
  br label %lean_dec_ref_known.exit1820

bb.vp:                                            ; preds = %lean_inc.exit1434
  %i.ahx = icmp sgt i32 %.val.i1811, 1
  br i1 %i.ahx, label %bb.vq, label %bb.vr, !prof !12

bb.vq:                                            ; preds = %bb.vp
  %i.ahy = add nsw i32 %.val.i1811, -1
  store i32 %i.ahy, ptr %i.agz, align 8, !tbaa !10
  br label %lean_dec_ref_known.exit1820

bb.vr:                                            ; preds = %bb.vp
  %.not.i8.i1812 = icmp eq i32 %.val.i1811, 0
  br i1 %.not.i8.i1812, label %lean_dec_ref_known.exit1820, label %bb.vs

bb.vs:                                            ; preds = %bb.vr
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.agz) #5
  br label %lean_dec_ref_known.exit1820

lean_dec_ref_known.exit1820:                      ; preds = %lean_dec.exit.i1816, %bb.vq, %bb.vr, %bb.vs
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !13
  br i1 %.not.i1423, label %bb.vt, label %lean_inc.exit1432

bb.vt:                                            ; preds = %lean_dec_ref_known.exit1820
  %.val.i.i1821 = load i32, ptr %0, align 4, !tbaa !10 ; 3 uses
  %i.aib = icmp sgt i32 %.val.i.i1821, 0
  br i1 %i.aib, label %bb.vu, label %bb.vv, !prof !12

bb.vu:                                            ; preds = %bb.vt
  %i.aic = add nuw i32 %.val.i.i1821, 1
  store i32 %i.aic, ptr %0, align 4, !tbaa !10
  br label %lean_inc.exit1432

bb.vv:                                            ; preds = %bb.vt
  %.not.i.i1822 = icmp eq i32 %.val.i.i1821, 0
  br i1 %.not.i.i1822, label %lean_inc.exit1432, label %bb.vw

bb.vw:                                            ; preds = %bb.vv
  %i.aid = atomicrmw sub ptr %0, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1432

lean_inc.exit1432:                                ; preds = %bb.vw, %bb.vv, %bb.vu, %lean_dec_ref_known.exit1820
  %i.aie = tail call ptr @l_mkCtorIdxName(ptr noundef %0) #5 ; 9 uses
  %i.aif = tail call ptr @l_Lean_ConstantInfo_levelParams(ptr noundef %i.ahk) #5 ; 5 uses
  %i.aig = tail call ptr @l_List_lengthTR___redArg(ptr noundef %i.aif) #5 ; 6 uses
  %i.aih = ptrtoint ptr %i.aif to i64
  %i.aii = and i64 %i.aih, 1
  %.not.i1079 = icmp eq i64 %i.aii, 0
  br i1 %.not.i1079, label %bb.vx, label %lean_dec.exit1080

bb.vx:                                            ; preds = %lean_inc.exit1432
  %i.aij = load i32, ptr %i.aif, align 4, !tbaa !10 ; 3 uses
  %i.aik = icmp sgt i32 %i.aij, 1
  br i1 %i.aik, label %bb.vy, label %bb.vz, !prof !12

bb.vy:                                            ; preds = %bb.vx
  %i.ail = add nsw i32 %i.aij, -1
  store i32 %i.ail, ptr %i.aif, align 4, !tbaa !10
  br label %lean_dec.exit1080

bb.vz:                                            ; preds = %bb.vx
  %.not.i1260 = icmp eq i32 %i.aij, 0
  br i1 %.not.i1260, label %lean_dec.exit1080, label %bb.wa

bb.wa:                                            ; preds = %bb.vz
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aif) #5
  br label %lean_dec.exit1080

lean_dec.exit1080:                                ; preds = %bb.wa, %bb.vz, %bb.vy, %lean_inc.exit1432
  %i.aim = tail call ptr @l_List_lengthTR___redArg(ptr noundef %i.aia) #5 ; 5 uses
  %i.ain = ptrtoint ptr %i.aim to i64             ; 2 uses
  %i.aio = and i64 %i.ain, 1
  %.not.i = icmp eq i64 %i.aio, 0
  br i1 %.not.i, label %bb.we, label %bb.wb, !prof !9

bb.wb:                                            ; preds = %lean_dec.exit1080
  %i.aip = lshr i64 %i.ain, 1
  %i.aiq = add nuw i64 %i.aip, 1                  ; 2 uses
  %i.air = icmp sgt i64 %i.aiq, -1
  br i1 %i.air, label %bb.wc, label %bb.wd, !prof !12

bb.wc:                                            ; preds = %bb.wb
  %i.ais = shl nuw i64 %i.aiq, 1
  %i.ait = or disjoint i64 %i.ais, 1
  %i.aiu = inttoptr i64 %i.ait to ptr
  br label %lean_dec.exit1078

bb.wd:                                            ; preds = %bb.wb
  %i.aiv = tail call ptr @lean_big_usize_to_nat(i64 noundef -9223372036854775808) #5
  br label %lean_dec.exit1078

bb.we:                                            ; preds = %lean_dec.exit1080
  %i.aiw = tail call ptr @lean_nat_big_add(ptr noundef %i.aim, ptr noundef nonnull inttoptr (i64 3 to ptr)) #5 ; 3 uses
  %i.aix = load i32, ptr %i.aim, align 4, !tbaa !10 ; 3 uses
  %i.aiy = icmp sgt i32 %i.aix, 1
  br i1 %i.aiy, label %bb.wf, label %bb.wg, !prof !12

bb.wf:                                            ; preds = %bb.we
  %i.aiz = add nsw i32 %i.aix, -1
  store i32 %i.aiz, ptr %i.aim, align 4, !tbaa !10
  br label %lean_dec.exit1078

bb.wg:                                            ; preds = %bb.we
  %.not.i1262 = icmp eq i32 %i.aix, 0
  br i1 %.not.i1262, label %lean_dec.exit1078, label %bb.wh

bb.wh:                                            ; preds = %bb.wg
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aim) #5
  br label %lean_dec.exit1078

lean_dec.exit1078:                                ; preds = %bb.wc, %bb.wd, %bb.wh, %bb.wg, %bb.wf
  %.0.i1980 = phi ptr [ %i.aiw, %bb.wh ], [ %i.aiw, %bb.wf ], [ %i.aiw, %bb.wg ], [ %i.aiv, %bb.wd ], [ %i.aiu, %bb.wc ] ; 6 uses
  %i.aja = ptrtoint ptr %i.aig to i64
  %.not.i1543 = trunc i64 %i.aja to i1            ; 2 uses
  %i.ajb = ptrtoint ptr %.0.i1980 to i64          ; 2 uses
  %i.ajc = trunc i64 %i.ajb to i1
  %or.cond = select i1 %.not.i1543, i1 %i.ajc, i1 false, !prof !24
  br i1 %or.cond, label %bb.wi, label %.critedge.i1544, !prof !24

bb.wi:                                            ; preds = %lean_dec.exit1078
  %i.ajd = icmp eq ptr %i.aig, %.0.i1980
  br label %lean_nat_eq.exit

.critedge.i1544:                                  ; preds = %lean_dec.exit1078
  %i.aje = tail call zeroext i1 @lean_nat_big_eq(ptr noundef %i.aig, ptr noundef %.0.i1980) #5
  br label %lean_nat_eq.exit

lean_nat_eq.exit:                                 ; preds = %bb.wi, %.critedge.i1544
  %.0.i1545 = phi i1 [ %i.ajd, %bb.wi ], [ %i.aje, %.critedge.i1544 ]
  %i.ajf = and i64 %i.ajb, 1
  %.not.i1075 = icmp eq i64 %i.ajf, 0
  br i1 %.not.i1075, label %bb.wj, label %lean_dec.exit1076

bb.wj:                                            ; preds = %lean_nat_eq.exit
  %i.ajg = load i32, ptr %.0.i1980, align 4, !tbaa !10 ; 3 uses
  %i.ajh = icmp sgt i32 %i.ajg, 1
  br i1 %i.ajh, label %bb.wk, label %bb.wl, !prof !12

bb.wk:                                            ; preds = %bb.wj
  %i.aji = add nsw i32 %i.ajg, -1
  store i32 %i.aji, ptr %.0.i1980, align 4, !tbaa !10
  br label %lean_dec.exit1076

bb.wl:                                            ; preds = %bb.wj
  %.not.i1264 = icmp eq i32 %i.ajg, 0
  br i1 %.not.i1264, label %lean_dec.exit1076, label %bb.wm

bb.wm:                                            ; preds = %bb.wl
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %.0.i1980) #5
  br label %lean_dec.exit1076

lean_dec.exit1076:                                ; preds = %bb.wm, %bb.wl, %bb.wk, %lean_nat_eq.exit
  br i1 %.not.i1543, label %lean_dec.exit1074, label %bb.wn

bb.wn:                                            ; preds = %lean_dec.exit1076
  %i.ajj = load i32, ptr %i.aig, align 4, !tbaa !10 ; 3 uses
  %i.ajk = icmp sgt i32 %i.ajj, 1
  br i1 %i.ajk, label %bb.wo, label %bb.wp, !prof !12

bb.wo:                                            ; preds = %bb.wn
  %i.ajl = add nsw i32 %i.ajj, -1
  store i32 %i.ajl, ptr %i.aig, align 4, !tbaa !10
  br label %lean_dec.exit1074

bb.wp:                                            ; preds = %bb.wn
  %.not.i1266 = icmp eq i32 %i.ajj, 0
  br i1 %.not.i1266, label %lean_dec.exit1074, label %bb.wq

bb.wq:                                            ; preds = %bb.wp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aig) #5
  br label %lean_dec.exit1074

lean_dec.exit1074:                                ; preds = %bb.wq, %bb.wp, %bb.wo, %lean_dec.exit1076
  br i1 %.0.i1545, label %bb.yt, label %bb.wr

bb.wr:                                            ; preds = %lean_dec.exit1074
  %i.ajm = ptrtoint ptr %i.aie to i64
  %i.ajn = and i64 %i.ajm, 1
  %.not.i1071 = icmp eq i64 %i.ajn, 0
  br i1 %.not.i1071, label %bb.ws, label %lean_dec.exit1072

bb.ws:                                            ; preds = %bb.wr
  %i.ajo = load i32, ptr %i.aie, align 4, !tbaa !10 ; 3 uses
  %i.ajp = icmp sgt i32 %i.ajo, 1
  br i1 %i.ajp, label %bb.wt, label %bb.wu, !prof !12

bb.wt:                                            ; preds = %bb.ws
  %i.ajq = add nsw i32 %i.ajo, -1
  store i32 %i.ajq, ptr %i.aie, align 4, !tbaa !10
  br label %lean_dec.exit1072

bb.wu:                                            ; preds = %bb.ws
  %.not.i1268 = icmp eq i32 %i.ajo, 0
  br i1 %.not.i1268, label %lean_dec.exit1072, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aie) #5
  br label %lean_dec.exit1072

lean_dec.exit1072:                                ; preds = %bb.wv, %bb.wu, %bb.wt, %bb.wr
  br i1 %.not.i1433, label %bb.ww, label %lean_dec.exit1068

bb.ww:                                            ; preds = %lean_dec.exit1072
  %i.ajr = load i32, ptr %i.ahk, align 4, !tbaa !10 ; 3 uses
  %i.ajs = icmp sgt i32 %i.ajr, 1
  br i1 %i.ajs, label %bb.wx, label %bb.wy, !prof !12

bb.wx:                                            ; preds = %bb.ww
  %i.ajt = add nsw i32 %i.ajr, -1
  store i32 %i.ajt, ptr %i.ahk, align 4, !tbaa !10
  br label %lean_dec.exit1068

bb.wy:                                            ; preds = %bb.ww
  %.not.i1270 = icmp eq i32 %i.ajr, 0
  br i1 %.not.i1270, label %lean_dec.exit1068, label %bb.wz

bb.wz:                                            ; preds = %bb.wy
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.ahk) #5
  br label %lean_dec.exit1068

lean_dec.exit1068:                                ; preds = %lean_dec.exit1072, %bb.wx, %bb.wy, %bb.wz
  %i.aju = load i32, ptr %i.arn, align 8, !tbaa !10 ; 3 uses
  %i.ajv = icmp sgt i32 %i.aju, 1
  br i1 %i.ajv, label %bb.xa, label %bb.xb, !prof !12

bb.xa:                                            ; preds = %lean_dec.exit1068
  %i.ajw = add nsw i32 %i.aju, -1
  store i32 %i.ajw, ptr %i.arn, align 8, !tbaa !10
  br label %lean_dec_ref.exit1363

bb.xb:                                            ; preds = %lean_dec.exit1068
  %.not.i1362 = icmp eq i32 %i.aju, 0
  br i1 %.not.i1362, label %lean_dec_ref.exit1363, label %bb.xc

bb.xc:                                            ; preds = %bb.xb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arn) #5
  br label %lean_dec_ref.exit1363

lean_dec_ref.exit1363:                            ; preds = %bb.xa, %bb.xb, %bb.xc
  br i1 %.not.i1419, label %bb.xd, label %lean_dec.exit1066

bb.xd:                                            ; preds = %lean_dec_ref.exit1363
  %i.ajx = load i32, ptr %i.aqs, align 4, !tbaa !10 ; 3 uses
  %i.ajy = icmp sgt i32 %i.ajx, 1
  br i1 %i.ajy, label %bb.xe, label %bb.xf, !prof !12

bb.xe:                                            ; preds = %bb.xd
  %i.ajz = add nsw i32 %i.ajx, -1
  store i32 %i.ajz, ptr %i.aqs, align 4, !tbaa !10
  br label %lean_dec.exit1066

bb.xf:                                            ; preds = %bb.xd
  %.not.i1274 = icmp eq i32 %i.ajx, 0
  br i1 %.not.i1274, label %lean_dec.exit1066, label %bb.xg

bb.xg:                                            ; preds = %bb.xf
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqs) #5
  br label %lean_dec.exit1066

lean_dec.exit1066:                                ; preds = %bb.xg, %bb.xf, %bb.xe, %lean_dec_ref.exit1363
  br i1 %.not.i1407, label %bb.xh, label %lean_dec.exit1064

bb.xh:                                            ; preds = %lean_dec.exit1066
  %i.aka = load i32, ptr %i.atn, align 4, !tbaa !10 ; 3 uses
  %i.akb = icmp sgt i32 %i.aka, 1
  br i1 %i.akb, label %bb.xi, label %bb.xj, !prof !12

bb.xi:                                            ; preds = %bb.xh
  %i.akc = add nsw i32 %i.aka, -1
  store i32 %i.akc, ptr %i.atn, align 4, !tbaa !10
  br label %lean_dec.exit1064

bb.xj:                                            ; preds = %bb.xh
  %.not.i1276 = icmp eq i32 %i.aka, 0
  br i1 %.not.i1276, label %lean_dec.exit1064, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atn) #5
  br label %lean_dec.exit1064

lean_dec.exit1064:                                ; preds = %bb.xk, %bb.xj, %bb.xi, %lean_dec.exit1066
  br i1 %.not.i1409, label %bb.xl, label %lean_dec.exit1062

bb.xl:                                            ; preds = %lean_dec.exit1064
  %i.akd = load i32, ptr %i.atg, align 4, !tbaa !10 ; 3 uses
  %i.ake = icmp sgt i32 %i.akd, 1
  br i1 %i.ake, label %bb.xm, label %bb.xn, !prof !12

bb.xm:                                            ; preds = %bb.xl
  %i.akf = add nsw i32 %i.akd, -1
  store i32 %i.akf, ptr %i.atg, align 4, !tbaa !10
  br label %lean_dec.exit1062

bb.xn:                                            ; preds = %bb.xl
  %.not.i1278 = icmp eq i32 %i.akd, 0
  br i1 %.not.i1278, label %lean_dec.exit1062, label %bb.xo

bb.xo:                                            ; preds = %bb.xn
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atg) #5
  br label %lean_dec.exit1062

lean_dec.exit1062:                                ; preds = %bb.xo, %bb.xn, %bb.xm, %lean_dec.exit1064
  %i.akg = load i32, ptr %i.atw, align 8, !tbaa !10 ; 3 uses
  %i.akh = icmp sgt i32 %i.akg, 1
  br i1 %i.akh, label %bb.xp, label %bb.xq, !prof !12

bb.xp:                                            ; preds = %lean_dec.exit1062
  %i.aki = add nsw i32 %i.akg, -1
  store i32 %i.aki, ptr %i.atw, align 8, !tbaa !10
  br label %lean_dec_ref.exit1361

bb.xq:                                            ; preds = %lean_dec.exit1062
  %.not.i1360 = icmp eq i32 %i.akg, 0
  br i1 %.not.i1360, label %lean_dec_ref.exit1361, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.atw) #5
  br label %lean_dec_ref.exit1361

lean_dec_ref.exit1361:                            ; preds = %bb.xp, %bb.xq, %bb.xr
  br i1 %.not.i1411, label %bb.xs, label %lean_dec.exit1060

bb.xs:                                            ; preds = %lean_dec_ref.exit1361
  %i.akj = load i32, ptr %i.asz, align 4, !tbaa !10 ; 3 uses
  %i.akk = icmp sgt i32 %i.akj, 1
  br i1 %i.akk, label %bb.xt, label %bb.xu, !prof !12

bb.xt:                                            ; preds = %bb.xs
  %i.akl = add nsw i32 %i.akj, -1
  store i32 %i.akl, ptr %i.asz, align 4, !tbaa !10
  br label %lean_dec.exit1060

bb.xu:                                            ; preds = %bb.xs
  %.not.i1280 = icmp eq i32 %i.akj, 0
  br i1 %.not.i1280, label %lean_dec.exit1060, label %bb.xv

bb.xv:                                            ; preds = %bb.xu
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.asz) #5
  br label %lean_dec.exit1060

lean_dec.exit1060:                                ; preds = %bb.xv, %bb.xu, %bb.xt, %lean_dec_ref.exit1361
  %i.akm = load i32, ptr %1, align 8, !tbaa !10   ; 3 uses
  %i.akn = icmp sgt i32 %i.akm, 1
  br i1 %i.akn, label %bb.xw, label %bb.xx, !prof !12

bb.xw:                                            ; preds = %lean_dec.exit1060
  %i.ako = add nsw i32 %i.akm, -1
  store i32 %i.ako, ptr %1, align 8, !tbaa !10
  br label %lean_dec_ref.exit1359

bb.xx:                                            ; preds = %lean_dec.exit1060
  %.not.i1358 = icmp eq i32 %i.akm, 0
  br i1 %.not.i1358, label %lean_dec_ref.exit1359, label %bb.xy

bb.xy:                                            ; preds = %bb.xx
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %1) #5
  br label %lean_dec_ref.exit1359

lean_dec_ref.exit1359:                            ; preds = %bb.xw, %bb.xx, %bb.xy
  br i1 %.not.i1423, label %bb.xz, label %lean_dec.exit1058

bb.xz:                                            ; preds = %lean_dec_ref.exit1359
  %i.akp = load i32, ptr %0, align 4, !tbaa !10   ; 3 uses
  %i.akq = icmp sgt i32 %i.akp, 1
  br i1 %i.akq, label %bb.ya, label %bb.yb, !prof !12

bb.ya:                                            ; preds = %bb.xz
  %i.akr = add nsw i32 %i.akp, -1
  store i32 %i.akr, ptr %0, align 4, !tbaa !10
  br label %lean_dec.exit1058

bb.yb:                                            ; preds = %bb.xz
  %.not.i1282 = icmp eq i32 %i.akp, 0
  br i1 %.not.i1282, label %lean_dec.exit1058, label %bb.yc

bb.yc:                                            ; preds = %bb.yb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %0) #5
  br label %lean_dec.exit1058

lean_dec.exit1058:                                ; preds = %bb.yc, %bb.yb, %bb.ya, %lean_dec_ref.exit1359
  %i.aks = load atomic i32, ptr @l_Lean_Meta_mkSparseCasesOn___closed__4_once seq_cst, align 4, !tbaa !18
  %i.akt = icmp eq i32 %i.aks, 1
  br i1 %i.akt, label %bb.yd, label %bb.ye, !prof !12

bb.yd:                                            ; preds = %lean_dec.exit1058
  %i.aku = load ptr, ptr @l_Lean_Meta_mkSparseCasesOn___closed__4, align 8, !tbaa !13
  br label %lean_obj_once.exit1827

bb.ye:                                            ; preds = %lean_dec.exit1058
  %i.akv = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_Meta_mkSparseCasesOn___closed__4, ptr noundef nonnull @l_Lean_Meta_mkSparseCasesOn___closed__4_once, ptr noundef nonnull @_init_l_Lean_Meta_mkSparseCasesOn___closed__4) #5
  br label %lean_obj_once.exit1827

lean_obj_once.exit1827:                           ; preds = %bb.yd, %bb.ye
  %.0.i1826 = phi ptr [ %i.aku, %bb.yd ], [ %i.akv, %bb.ye ]
  %i.akw = tail call ptr @l_Lean_MessageData_ofConstName(ptr noundef %i.agt, i8 noundef zeroext 0) #5
  tail call void @lean_inc_heartbeat() #5
  %i.akx = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.aky = icmp eq ptr %i.akx, null
  br i1 %i.aky, label %bb.yf, label %lean_alloc_ctor.exit1828

bb.yf:                                            ; preds = %lean_obj_once.exit1827
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit1828:                         ; preds = %lean_obj_once.exit1827
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akx, i64 4
  store i32 1, ptr %i.akx, align 4, !tbaa !10
  store i32 117571608, ptr %i.akz, align 4
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akx, i64 8
  store ptr %.0.i1826, ptr %i.ala, align 8, !tbaa !13
  %i.alb = getelementptr inbounds nuw i8, ptr %i.akx, i64 16
  store ptr %i.akw, ptr %i.alb, align 8, !tbaa !13
  %i.alc = load atomic i32, ptr @l_Lean_getConstInfoCtor___at___00Lean_Meta_mkSparseCasesOn_spec__0___closed__1_once seq_cst, align 4, !tbaa !18
  %i.ald = icmp eq i32 %i.alc, 1
  br i1 %i.ald, label %bb.yg, label %bb.yh, !prof !12

bb.yg:                                            ; preds = %lean_alloc_ctor.exit1828
  %i.ale = load ptr, ptr @l_Lean_getConstInfoCtor___at___00Lean_Meta_mkSparseCasesOn_spec__0___closed__1, align 8, !tbaa !13
  br label %lean_obj_once.exit1830

bb.yh:                                            ; preds = %lean_alloc_ctor.exit1828
  %i.alf = tail call ptr @lean_obj_once_cold(ptr noundef nonnull @l_Lean_getConstInfoCtor___at___00Lean_Meta_mkSparseCasesOn_spec__0___closed__1, ptr noundef nonnull @l_Lean_getConstInfoCtor___at___00Lean_Meta_mkSparseCasesOn_spec__0___closed__1_once, ptr noundef nonnull @_init_l_Lean_getConstInfoCtor___at___00Lean_Meta_mkSparseCasesOn_spec__0___closed__1) #5
  br label %lean_obj_once.exit1830

lean_obj_once.exit1830:                           ; preds = %bb.yg, %bb.yh
  %.0.i1829 = phi ptr [ %i.ale, %bb.yg ], [ %i.alf, %bb.yh ]
  tail call void @lean_inc_heartbeat() #5
  %i.alg = tail call noalias ptr @mi_malloc_small(i64 noundef 24) #5 ; 6 uses
  %i.alh = icmp eq ptr %i.alg, null
  br i1 %i.alh, label %bb.yi, label %lean_alloc_ctor.exit1831

bb.yi:                                            ; preds = %lean_obj_once.exit1830
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit1831:                         ; preds = %lean_obj_once.exit1830
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alg, i64 4
  store i32 1, ptr %i.alg, align 4, !tbaa !10
  store i32 117571608, ptr %i.ali, align 4
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alg, i64 8
  store ptr %i.akx, ptr %i.alj, align 8, !tbaa !13
  %i.alk = getelementptr inbounds nuw i8, ptr %i.alg, i64 16
  store ptr %.0.i1829, ptr %i.alk, align 8, !tbaa !13
  %i.all = tail call ptr @l_Lean_throwError___at___00Lean_Meta_mkSparseCasesOn_spec__13___redArg(ptr noundef nonnull %i.alg, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) ; 6 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.aln = load ptr, ptr %i.alm, align 8, !tbaa !13 ; 5 uses
  %.val1557 = load i32, ptr %i.all, align 8, !tbaa !10
  %i.alo = icmp eq i32 %.val1557, 1
  br i1 %i.alo, label %lean_dec.exit1126, label %bb.yj

bb.yj:                                            ; preds = %lean_alloc_ctor.exit1831
  %i.alp = ptrtoint ptr %i.aln to i64
  %i.alq = and i64 %i.alp, 1
  %.not.i1429 = icmp eq i64 %i.alq, 0
  br i1 %.not.i1429, label %bb.yk, label %lean_inc.exit1430

bb.yk:                                            ; preds = %bb.yj
  %.val.i.i1832 = load i32, ptr %i.aln, align 4, !tbaa !10 ; 3 uses
  %i.alr = icmp sgt i32 %.val.i.i1832, 0
  br i1 %i.alr, label %bb.yl, label %bb.ym, !prof !12

bb.yl:                                            ; preds = %bb.yk
  %i.als = add nuw i32 %.val.i.i1832, 1
  store i32 %i.als, ptr %i.aln, align 4, !tbaa !10
  br label %lean_inc.exit1430

bb.ym:                                            ; preds = %bb.yk
  %.not.i.i1833 = icmp eq i32 %.val.i.i1832, 0
  br i1 %.not.i.i1833, label %lean_inc.exit1430, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %i.alt = atomicrmw sub ptr %i.aln, i32 1 monotonic, align 4 ; 0 uses
  br label %lean_inc.exit1430

lean_inc.exit1430:                                ; preds = %bb.yj, %bb.yl, %bb.ym, %bb.yn
  %i.alu = load i32, ptr %i.all, align 8, !tbaa !10 ; 3 uses
  %i.alv = icmp sgt i32 %i.alu, 1
  br i1 %i.alv, label %bb.yo, label %bb.yp, !prof !12

bb.yo:                                            ; preds = %lean_inc.exit1430
  %i.alw = add nsw i32 %i.alu, -1
  store i32 %i.alw, ptr %i.all, align 8, !tbaa !10
  br label %bb.yr

bb.yp:                                            ; preds = %lean_inc.exit1430
  %.not.i1284 = icmp eq i32 %i.alu, 0
  br i1 %.not.i1284, label %bb.yr, label %bb.yq

bb.yq:                                            ; preds = %bb.yp
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.all) #5
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yo, %bb.yp, %bb.yq
  tail call void @lean_inc_heartbeat() #5
  %i.alx = tail call noalias ptr @mi_malloc_small(i64 noundef 16) #5 ; 5 uses
  %i.aly = icmp eq ptr %i.alx, null
  br i1 %i.aly, label %bb.ys, label %lean_alloc_ctor.exit1835

bb.ys:                                            ; preds = %bb.yr
  tail call void @lean_internal_panic_out_of_memory() #6
  unreachable

lean_alloc_ctor.exit1835:                         ; preds = %bb.yr
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alx, i64 4
  store i32 1, ptr %i.alx, align 4, !tbaa !10
  store i32 16842768, ptr %i.alz, align 4
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alx, i64 8
  store ptr %i.aln, ptr %i.ama, align 8, !tbaa !13
  br label %lean_dec.exit1126

bb.yt:                                            ; preds = %lean_dec.exit1074
  br i1 %.not.i1433, label %bb.yu, label %bb.n

bb.yu:                                            ; preds = %bb.yt
  %.val.i.i1836 = load i32, ptr %i.ahk, align 4, !tbaa !10 ; 3 uses
  %i.amb = icmp sgt i32 %.val.i.i1836, 0
  br i1 %i.amb, label %bb.yv, label %bb.yw, !prof !12

bb.yv:                                            ; preds = %bb.yu
  %i.amc = add nuw i32 %.val.i.i1836, 1
  store i32 %i.amc, ptr %i.ahk, align 4, !tbaa !10
  br label %bb.n

bb.yw:                                            ; preds = %bb.yu
  %.not.i.i1837 = icmp eq i32 %.val.i.i1836, 0
  br i1 %.not.i.i1837, label %bb.n, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.amd = atomicrmw sub ptr %i.ahk, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.n

bb.yy:                                            ; preds = %lean_obj_tag.exit1807
  br i1 %.not.i1435, label %bb.yz, label %lean_dec.exit1052

bb.yz:                                            ; preds = %bb.yy
  %i.ame = load i32, ptr %i.agt, align 4, !tbaa !10 ; 3 uses
  %i.amf = icmp sgt i32 %i.ame, 1
  br i1 %i.amf, label %bb.za, label %bb.zb, !prof !12

bb.za:                                            ; preds = %bb.yz
  %i.amg = add nsw i32 %i.ame, -1
  store i32 %i.amg, ptr %i.agt, align 4, !tbaa !10
  br label %lean_dec.exit1052

bb.zb:                                            ; preds = %bb.yz
  %.not.i1286 = icmp eq i32 %i.ame, 0
  br i1 %.not.i1286, label %lean_dec.exit1052, label %bb.zc

bb.zc:                                            ; preds = %bb.zb
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.agt) #5
  br label %lean_dec.exit1052

lean_dec.exit1052:                                ; preds = %bb.yy, %bb.za, %bb.zb, %bb.zc
  %i.amh = load i32, ptr %i.arn, align 8, !tbaa !10 ; 3 uses
  %i.ami = icmp sgt i32 %i.amh, 1
  br i1 %i.ami, label %bb.zd, label %bb.ze, !prof !12

bb.zd:                                            ; preds = %lean_dec.exit1052
  %i.amj = add nsw i32 %i.amh, -1
  store i32 %i.amj, ptr %i.arn, align 8, !tbaa !10
  br label %lean_dec_ref.exit1357

bb.ze:                                            ; preds = %lean_dec.exit1052
  %.not.i1356 = icmp eq i32 %i.amh, 0
  br i1 %.not.i1356, label %lean_dec_ref.exit1357, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.arn) #5
  br label %lean_dec_ref.exit1357

lean_dec_ref.exit1357:                            ; preds = %bb.zd, %bb.ze, %bb.zf
  br i1 %.not.i1419, label %bb.zg, label %lean_dec.exit1050

bb.zg:                                            ; preds = %lean_dec_ref.exit1357
  %i.amk = load i32, ptr %i.aqs, align 4, !tbaa !10 ; 3 uses
  %i.aml = icmp sgt i32 %i.amk, 1
  br i1 %i.aml, label %bb.zh, label %bb.zi, !prof !12

bb.zh:                                            ; preds = %bb.zg
  %i.amm = add nsw i32 %i.amk, -1
  store i32 %i.amm, ptr %i.aqs, align 4, !tbaa !10
  br label %lean_dec.exit1050

bb.zi:                                            ; preds = %bb.zg
  %.not.i1290 = icmp eq i32 %i.amk, 0
  br i1 %.not.i1290, label %lean_dec.exit1050, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  tail call void @lean_dec_ref_cold(ptr noundef nonnull %i.aqs) #5
  br label %lean_dec.exit1050

lean_dec.exit1050:                                ; preds = %bb.zj, %bb.zi, %bb.zh, %lean_dec_ref.exit1357
  br i1 %.not.i1407, label %bb.zk, label %lean_dec.exit1048

bb.zk:                                            ; preds = %lean_dec.exit1050
end_hunk_0
