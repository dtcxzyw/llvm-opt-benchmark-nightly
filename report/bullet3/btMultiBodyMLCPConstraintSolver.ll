inline.NumInlined: 604
inline.NumDeleted: 179
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN31btMultiBodyMLCPConstraintSolver23createMLCPFastRigidBodyERK19btContactSolverInfo:bb.a
  store float %.sink.i.i.us, ptr %i.abn, align 4, !tbaa !22
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i.us

_ZN9btMatrixXIfE7addElemEiif.exit.i.us:           ; preds = %.sink.split.i.i.us, %bb.cl
  %i.abt = phi i32 [ %i.aai, %bb.cl ], [ %i.abs, %.sink.split.i.i.us ] ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.03335.i.us, i64 32
  %i.abv = add nuw nsw i32 %.03236.i.us, 1        ; 2 uses
  %exitcond.not.i544.us = icmp eq i32 %i.abv, %i.zl
  br i1 %exitcond.not.i544.us, label %._crit_edge.i.us, label %bb.cl, !llvm.loop !115

._crit_edge.i.us:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i.us
  %i.abw = getelementptr inbounds nuw i8, ptr %.038.i.us, i64 32
  %i.abx = add nuw nsw i32 %.03437.i.us, 1        ; 2 uses
  %exitcond40.not.i.us = icmp eq i32 %i.abx, %.fr814961966
  br i1 %exitcond40.not.i.us, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, label %.preheader.i.us, !llvm.loop !116

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us: ; preds = %._crit_edge.i.us, %.preheader.lr.ph.i.us, %.lr.ph788.split.us
  %i.aby = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %.0278.us = load i32, ptr %i.aby, align 4, !tbaa !59 ; 2 uses
  %i.abz = icmp sgt i32 %.0278.us, -1
  br i1 %i.abz, label %.lr.ph788.split.us, label %._crit_edge789, !llvm.loop !117

._crit_edge789:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us, %.thread956, %bb.ci
  %i.aca = phi ptr [ %i.yv, %.thread956 ], [ %i.yp, %bb.ci ], [ %i.yz, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ]
  %.fr814960 = phi i32 [ 1, %.thread956 ], [ %i.yn, %bb.ci ], [ %.fr814961966, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit.us ] ; 4 uses
  %i.acb = sext i32 %i.yi to i64
  %i.acc = getelementptr inbounds [4 x i8], ptr %.sroa.10698.2, i64 %i.acb
  %.0277790 = load i32, ptr %i.acc, align 4, !tbaa !59 ; 2 uses
  %i.acd = icmp sgt i32 %.0277790, -1
  br i1 %i.acd, label %.lr.ph793, label %._crit_edge794

.lr.ph793:                                        ; preds = %._crit_edge789
  %i.ace = sext i32 %.fr814960 to i64
  %.idx352 = shl nsw i64 %i.ace, 5
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 %.idx352
  %i.acg = icmp sgt i32 %.fr814960, 0
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph793, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559
  %.0277791 = phi i32 [ %.0277790, %.lr.ph793 ], [ %.0277, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559 ]
  %i.ach = zext nneg i32 %.0277791 to i64
  %i.aci = getelementptr inbounds nuw [16 x i8], ptr %.sroa.22664.0.lcssa, i64 %i.ach ; 3 uses
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !91
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 12
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !92 ; 2 uses
  %i.acm = sext i32 %i.acj to i64                 ; 3 uses
  %i.acn = icmp sgt i64 %indvars.iv875, %i.acm
  br i1 %i.acn, label %bb.cq, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559

bb.cq:                                            ; preds = %bb.cp
  %i.aco = icmp slt i32 %i.acl, %i.xq
  br i1 %i.aco, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.acp = load ptr, ptr %i.xr, align 8, !tbaa !81
  %i.acq = getelementptr inbounds [8 x i8], ptr %i.acp, i64 %i.acm
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !85
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %i.acs = phi i32 [ %i.acr, %bb.cr ], [ 1, %bb.cq ] ; 3 uses
  %i.act = sext i32 %i.acl to i64
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.act
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !44
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 156
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !71
  %i.acy = icmp eq i32 %i.acx, %i.yi
  %i.acz = shl nsw i32 %i.acs, 3
  %i.ada = select i1 %i.acy, i32 %i.acz, i32 0
  %i.adb = sext i32 %i.ada to i64
  %i.adc = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.acm
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !59 ; 2 uses
  %i.ade = sext i32 %i.add to i64
  %.idx353 = shl nsw i64 %i.ade, 6
  %i.adf = getelementptr inbounds nuw i8, ptr %i.mf, i64 %.idx353
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.adf, i64 %i.adb
  %i.adh = icmp sgt i32 %i.acs, 0
  %or.cond = select i1 %i.acg, i1 %i.adh, i1 false
  br i1 %or.cond, label %.preheader.preheader.i546, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559

.preheader.preheader.i546:                        ; preds = %bb.cs
  %.promoted.i547 = load i32, ptr %i.xu, align 8
  br label %.preheader.i548

.preheader.i548:                                  ; preds = %._crit_edge.i555, %.preheader.preheader.i546
  %i.adi = phi i32 [ %i.afc, %._crit_edge.i555 ], [ %.promoted.i547, %.preheader.preheader.i546 ]
  %.038.i549 = phi ptr [ %i.adp, %._crit_edge.i555 ], [ %i.acf, %.preheader.preheader.i546 ] ; 7 uses
  %.03437.i550 = phi i32 [ %i.adq, %._crit_edge.i555 ], [ 0, %.preheader.preheader.i546 ] ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.038.i549, i64 4
  %i.adk = getelementptr inbounds nuw i8, ptr %.038.i549, i64 8
  %i.adl = getelementptr inbounds nuw i8, ptr %.038.i549, i64 16
  %i.adm = getelementptr inbounds nuw i8, ptr %.038.i549, i64 20
  %i.adn = getelementptr inbounds nuw i8, ptr %.038.i549, i64 24
  %i.ado = add nsw i32 %.03437.i550, %i.yb
  br label %bb.ct

._crit_edge.i555:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i553
  %i.adp = getelementptr inbounds nuw i8, ptr %.038.i549, i64 32
  %i.adq = add nuw nsw i32 %.03437.i550, 1        ; 2 uses
  %exitcond40.not.i556 = icmp eq i32 %i.adq, %.fr814960
  br i1 %exitcond40.not.i556, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559, label %.preheader.i548, !llvm.loop !116

bb.ct:                                            ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i553, %.preheader.i548
  %i.adr = phi i32 [ %i.adi, %.preheader.i548 ], [ %i.afc, %_ZN9btMatrixXIfE7addElemEiif.exit.i553 ] ; 3 uses
  %.03236.i551 = phi i32 [ 0, %.preheader.i548 ], [ %i.afe, %_ZN9btMatrixXIfE7addElemEiif.exit.i553 ] ; 2 uses
  %.03335.i552 = phi ptr [ %i.adg, %.preheader.i548 ], [ %i.afd, %_ZN9btMatrixXIfE7addElemEiif.exit.i553 ] ; 7 uses
  %i.ads = load float, ptr %.038.i549, align 4, !tbaa !22
  %i.adt = load float, ptr %.03335.i552, align 4, !tbaa !22
  %i.adu = fmul float %i.ads, %i.adt
  %i.adv = load float, ptr %i.adj, align 4, !tbaa !22
  %i.adw = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 4
  %i.adx = load float, ptr %i.adw, align 4, !tbaa !22
  %i.ady = call float @llvm.fmuladd.f32(float %i.adv, float %i.adx, float %i.adu)
  %i.adz = load float, ptr %i.adk, align 4, !tbaa !22
  %i.aea = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 8
  %i.aeb = load float, ptr %i.aea, align 4, !tbaa !22
  %i.aec = call float @llvm.fmuladd.f32(float %i.adz, float %i.aeb, float %i.ady)
  %i.aed = load float, ptr %i.adl, align 4, !tbaa !22
  %i.aee = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 16
  %i.aef = load float, ptr %i.aee, align 4, !tbaa !22
  %i.aeg = call float @llvm.fmuladd.f32(float %i.aed, float %i.aef, float %i.aec)
  %i.aeh = load float, ptr %i.adm, align 4, !tbaa !22
  %i.aei = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 20
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !22
  %i.aek = call float @llvm.fmuladd.f32(float %i.aeh, float %i.aej, float %i.aeg)
  %i.ael = load float, ptr %i.adn, align 4, !tbaa !22
  %i.aem = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 24
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !22
  %i.aeo = call float @llvm.fmuladd.f32(float %i.ael, float %i.aen, float %i.aek) ; 3 uses
  %i.aep = fcmp une float %i.aeo, 0.000000e+00
  br i1 %i.aep, label %bb.cu, label %_ZN9btMatrixXIfE7addElemEiif.exit.i553

bb.cu:                                            ; preds = %bb.ct
  %i.aeq = add nsw i32 %.03236.i551, %i.add
  %i.aer = load i32, ptr %i.xs, align 4, !tbaa !94
  %i.aes = mul nsw i32 %i.aer, %i.ado
  %i.aet = add nsw i32 %i.aeq, %i.aes
  %i.aeu = load ptr, ptr %i.xt, align 8, !tbaa !21
  %i.aev = sext i32 %i.aet to i64
  %i.aew = getelementptr inbounds [4 x i8], ptr %i.aeu, i64 %i.aev ; 2 uses
  %i.aex = load float, ptr %i.aew, align 4, !tbaa !22 ; 2 uses
  %i.aey = fcmp oeq float %i.aex, 0.000000e+00
  br i1 %i.aey, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.aez = add nsw i32 %i.adr, 1                  ; 2 uses
  store i32 %i.aez, ptr %i.xu, align 8, !tbaa !99
  br label %.sink.split.i.i557

bb.cw:                                            ; preds = %bb.cu
  %i.afa = fadd float %i.aeo, %i.aex
  br label %.sink.split.i.i557

.sink.split.i.i557:                               ; preds = %bb.cw, %bb.cv
  %i.afb = phi i32 [ %i.aez, %bb.cv ], [ %i.adr, %bb.cw ]
  %.sink.i.i558 = phi float [ %i.aeo, %bb.cv ], [ %i.afa, %bb.cw ]
  store float %.sink.i.i558, ptr %i.aew, align 4, !tbaa !22
  br label %_ZN9btMatrixXIfE7addElemEiif.exit.i553

_ZN9btMatrixXIfE7addElemEiif.exit.i553:           ; preds = %.sink.split.i.i557, %bb.ct
  %i.afc = phi i32 [ %i.adr, %bb.ct ], [ %i.afb, %.sink.split.i.i557 ] ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.03335.i552, i64 32
  %i.afe = add nuw nsw i32 %.03236.i551, 1        ; 2 uses
  %exitcond.not.i554 = icmp eq i32 %i.afe, %i.acs
  br i1 %exitcond.not.i554, label %._crit_edge.i555, label %bb.ct, !llvm.loop !115

_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559: ; preds = %._crit_edge.i555, %bb.cs, %bb.cp
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aci, i64 8
  %.0277 = load i32, ptr %i.aff, align 4, !tbaa !59 ; 2 uses
  %i.afg = icmp sgt i32 %.0277, -1
  br i1 %i.afg, label %bb.cp, label %._crit_edge794, !llvm.loop !118

._crit_edge794:                                   ; preds = %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit559, %._crit_edge789
  %i.afh = add nsw i32 %.fr814960, %.0279797      ; 2 uses
  %indvars.iv.next876 = add nuw nsw i64 %indvars.iv875, 1
  %i.afi = icmp slt i32 %i.afh, %i.xj
  br i1 %i.afi, label %bb.ch, label %._crit_edge799, !llvm.loop !119

bb.cx:                                            ; preds = %._crit_edge799
  %i.afj = load i32, ptr %i.a, align 4, !tbaa !9  ; 2 uses
  %i.afk = icmp sgt i32 %i.afj, 0
  br i1 %i.afk, label %.lr.ph804, label %._crit_edge805

.lr.ph804:                                        ; preds = %bb.cx
  %i.afl = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !37
  %i.afn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !72
  %i.afp = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.afq = load i32, ptr %i.afp, align 4, !tbaa !78
  %i.afr = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.afs = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 4 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %0, i64 796 ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %scevgep1042 = getelementptr i8, ptr %i.mb, i64 28
  %scevgep1047 = getelementptr i8, ptr %i.mf, i64 -4
  br label %bb.cy

bb.cy:                                            ; preds = %.lr.ph804, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585
  %indvars.iv878 = phi i64 [ 0, %.lr.ph804 ], [ %indvars.iv.next879, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585 ] ; 2 uses
  %.0276800 = phi i32 [ 0, %.lr.ph804 ], [ %i.aon, %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585 ] ; 9 uses
  %i.afv = sext i32 %.0276800 to i64              ; 3 uses
  %i.afw = getelementptr inbounds [8 x i8], ptr %i.afm, i64 %i.afv
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !44
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 156
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !71
  %i.aga = sext i32 %i.afz to i64
  %i.agb = getelementptr inbounds [248 x i8], ptr %i.afo, i64 %i.aga
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 240
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !73
  %i.age = icmp slt i32 %.0276800, %i.afq
  br i1 %i.age, label %bb.cz, label %.preheader.lr.ph.i560

bb.cz:                                            ; preds = %bb.cy
  %i.agf = load ptr, ptr %i.afr, align 8, !tbaa !81
  %i.agg = getelementptr inbounds nuw [8 x i8], ptr %i.agf, i64 %indvars.iv878
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !85 ; 3 uses
  %i.agi = icmp sgt i32 %i.agh, 0
  br i1 %i.agi, label %.preheader.lr.ph.i560, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585

.preheader.lr.ph.i560:                            ; preds = %bb.cy, %bb.cz
  %i.agj = phi i32 [ %i.agh, %bb.cz ], [ 1, %bb.cy ] ; 11 uses
  %.pn977 = shl nsw i64 %i.afv, 4                 ; 2 uses
  %i.agk = getelementptr [4 x i8], ptr %i.mb, i64 %.pn977 ; 3 uses
  %i.agl = getelementptr [4 x i8], ptr %i.mf, i64 %.pn977 ; 10 uses
  %i.agm = load i32, ptr %i.aft, align 4          ; 5 uses
  %i.agn = load ptr, ptr %i.afu, align 8          ; 4 uses
  %.promoted40.i = load i32, ptr %i.afs, align 8
  %wide.trip.count.i562 = zext nneg i32 %i.agj to i64 ; 6 uses
  %i.ago = add nsw i64 %wide.trip.count.i562, -1  ; 2 uses
  %19 = add i32 %i.agm, 1
  %20 = mul i32 %.0276800, %19
  %i.agp = shl nsw i64 %i.afv, 6                  ; 2 uses
  %i.agq = add nsw i32 %i.agj, -1
  %i.agr = zext i32 %i.agq to i64
  %i.ags = shl nuw nsw i64 %i.agr, 5
  %i.agt = getelementptr i8, ptr %scevgep1042, i64 %i.agp
  %scevgep1043 = getelementptr i8, ptr %i.agt, i64 %i.ags
  %i.agu = add i32 %i.agm, 1
  %i.agv = mul i32 %.0276800, %i.agu
  %i.agw = shl nuw nsw i64 %wide.trip.count.i562, 2
  %scevgep1045 = getelementptr i8, ptr %i.agn, i64 %i.agw
  %i.agx = shl nuw nsw i64 %wide.trip.count.i562, 5
  %i.agy = getelementptr i8, ptr %scevgep1047, i64 %i.agp
  %scevgep1048 = getelementptr i8, ptr %i.agy, i64 %i.agx
  %min.iters.check1053 = icmp samesign ult i32 %i.agj, 5
  %i.agz = trunc nsw i64 %i.ago to i32
  %i.aha = icmp ugt i64 %i.ago, 4294967295
  %i.ahb = and i64 %wide.trip.count.i562, 3       ; 2 uses
  %i.ahc = icmp eq i64 %i.ahb, 0
  %i.ahd = select i1 %i.ahc, i64 4, i64 %i.ahb
  %n.vec1055 = sub nsw i64 %wide.trip.count.i562, %i.ahd ; 3 uses
  %i.ahe = shl nsw i64 %n.vec1055, 5
  %i.ahf = getelementptr i8, ptr %i.agl, i64 %i.ahe
  br label %.preheader.i563

.preheader.i563:                                  ; preds = %._crit_edge.i570, %.preheader.lr.ph.i560
  %.038.i564 = phi ptr [ %i.alf, %._crit_edge.i570 ], [ %i.agk, %.preheader.lr.ph.i560 ] ; 8 uses
  %.03437.i565 = phi i32 [ %i.alg, %._crit_edge.i570 ], [ 0, %.preheader.lr.ph.i560 ] ; 4 uses
  %i.ahg = mul i32 %i.agm, %.03437.i565
  %i.ahh = add i32 %i.agv, %i.ahg
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = shl nsw i64 %i.ahi, 2                  ; 2 uses
  %scevgep1044 = getelementptr i8, ptr %i.agn, i64 %i.ahj ; 2 uses
  %scevgep1046 = getelementptr i8, ptr %scevgep1045, i64 %i.ahj ; 2 uses
  %i.ahk = getelementptr inbounds nuw i8, ptr %.038.i564, i64 4 ; 2 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %.038.i564, i64 8 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %.038.i564, i64 16 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %.038.i564, i64 20 ; 2 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %.038.i564, i64 24 ; 2 uses
  %i.ahp = add nsw i32 %.03437.i565, %.0276800
  %i.ahq = mul nsw i32 %i.ahp, %i.agm
  %invariant.op.i = add i32 %i.ahq, %.0276800     ; 2 uses
  br i1 %min.iters.check1053, label %scalar.ph1052.preheader, label %vector.scevcheck

scalar.ph1052.preheader:                          ; preds = %vector.body1056, %vector.memcheck1041, %vector.scevcheck, %.preheader.i563
  %indvars.iv.i566.ph = phi i64 [ 0, %vector.memcheck1041 ], [ 0, %vector.scevcheck ], [ 0, %.preheader.i563 ], [ %n.vec1055, %vector.body1056 ]
  %.03335.i567.ph = phi ptr [ %i.agl, %vector.memcheck1041 ], [ %i.agl, %vector.scevcheck ], [ %i.agl, %.preheader.i563 ], [ %i.ahf, %vector.body1056 ]
  br label %scalar.ph1052

vector.scevcheck:                                 ; preds = %.preheader.i563
  %21 = mul i32 %i.agm, %.03437.i565
  %22 = add i32 %20, %21                          ; 2 uses
  %i.ahr = add i32 %22, %i.agz
  %i.ahs = icmp slt i32 %i.ahr, %22
  %i.aht = or i1 %i.ahs, %i.aha
  br i1 %i.aht, label %scalar.ph1052.preheader, label %vector.memcheck1041

vector.memcheck1041:                              ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.agk, %scevgep1046
  %bound1 = icmp ult ptr %scevgep1044, %scevgep1043
  %found.conflict = and i1 %bound0, %bound1
  %bound01049 = icmp ult ptr %i.agl, %scevgep1046
  %bound11050 = icmp ult ptr %scevgep1044, %scevgep1048
  %found.conflict1051 = and i1 %bound01049, %bound11050
  %conflict.rdx = or i1 %found.conflict, %found.conflict1051
  br i1 %conflict.rdx, label %scalar.ph1052.preheader, label %vector.ph1054

vector.ph1054:                                    ; preds = %vector.memcheck1041
  %i.ahu = load float, ptr %.038.i564, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ahu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahv = load float, ptr %i.ahk, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1061 = insertelement <4 x float> poison, float %i.ahv, i64 0
  %broadcast.splat1062 = shufflevector <4 x float> %broadcast.splatinsert1061, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahw = load float, ptr %i.ahl, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1063 = insertelement <4 x float> poison, float %i.ahw, i64 0
  %broadcast.splat1064 = shufflevector <4 x float> %broadcast.splatinsert1063, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahx = load float, ptr %i.ahm, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1065 = insertelement <4 x float> poison, float %i.ahx, i64 0
  %broadcast.splat1066 = shufflevector <4 x float> %broadcast.splatinsert1065, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahy = load float, ptr %i.ahn, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1067 = insertelement <4 x float> poison, float %i.ahy, i64 0
  %broadcast.splat1068 = shufflevector <4 x float> %broadcast.splatinsert1067, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahz = load float, ptr %i.aho, align 4, !tbaa !22, !alias.scope !120, !noalias !123
  %broadcast.splatinsert1069 = insertelement <4 x float> poison, float %i.ahz, i64 0
  %broadcast.splat1070 = shufflevector <4 x float> %broadcast.splatinsert1069, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1056

vector.body1056:                                  ; preds = %vector.body1056, %vector.ph1054
  %index1057 = phi i64 [ 0, %vector.ph1054 ], [ %index.next1071, %vector.body1056 ] ; 3 uses
  %i.aia = shl i64 %index1057, 5                  ; 4 uses
  %next.gep = getelementptr i8, ptr %i.agl, i64 %i.aia ; 6 uses
  %i.aib = getelementptr i8, ptr %i.agl, i64 %i.aia ; 6 uses
  %next.gep1058 = getelementptr i8, ptr %i.aib, i64 32
  %i.aic = getelementptr i8, ptr %i.agl, i64 %i.aia ; 6 uses
  %next.gep1059 = getelementptr i8, ptr %i.aic, i64 64
  %i.aid = getelementptr i8, ptr %i.agl, i64 %i.aia ; 6 uses
  %next.gep1060 = getelementptr i8, ptr %i.aid, i64 96
  %i.aie = load float, ptr %next.gep, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aif = load float, ptr %next.gep1058, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aig = load float, ptr %next.gep1059, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aih = load float, ptr %next.gep1060, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aii = insertelement <4 x float> poison, float %i.aie, i64 0
  %i.aij = insertelement <4 x float> %i.aii, float %i.aif, i64 1
  %i.aik = insertelement <4 x float> %i.aij, float %i.aig, i64 2
  %i.ail = insertelement <4 x float> %i.aik, float %i.aih, i64 3
  %i.aim = fmul <4 x float> %broadcast.splat, %i.ail
  %i.ain = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.aio = getelementptr i8, ptr %i.aib, i64 36
  %i.aip = getelementptr i8, ptr %i.aic, i64 68
  %i.aiq = getelementptr i8, ptr %i.aid, i64 100
  %i.air = load float, ptr %i.ain, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ais = load float, ptr %i.aio, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ait = load float, ptr %i.aip, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aiu = load float, ptr %i.aiq, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aiv = insertelement <4 x float> poison, float %i.air, i64 0
  %i.aiw = insertelement <4 x float> %i.aiv, float %i.ais, i64 1
  %i.aix = insertelement <4 x float> %i.aiw, float %i.ait, i64 2
  %i.aiy = insertelement <4 x float> %i.aix, float %i.aiu, i64 3
  %i.aiz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1062, <4 x float> %i.aiy, <4 x float> %i.aim)
  %i.aja = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ajb = getelementptr i8, ptr %i.aib, i64 40
  %i.ajc = getelementptr i8, ptr %i.aic, i64 72
  %i.ajd = getelementptr i8, ptr %i.aid, i64 104
  %i.aje = load float, ptr %i.aja, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajf = load float, ptr %i.ajb, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajg = load float, ptr %i.ajc, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajh = load float, ptr %i.ajd, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aji = insertelement <4 x float> poison, float %i.aje, i64 0
  %i.ajj = insertelement <4 x float> %i.aji, float %i.ajf, i64 1
  %i.ajk = insertelement <4 x float> %i.ajj, float %i.ajg, i64 2
  %i.ajl = insertelement <4 x float> %i.ajk, float %i.ajh, i64 3
  %i.ajm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1064, <4 x float> %i.ajl, <4 x float> %i.aiz)
  %i.ajn = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ajo = getelementptr i8, ptr %i.aib, i64 48
  %i.ajp = getelementptr i8, ptr %i.aic, i64 80
  %i.ajq = getelementptr i8, ptr %i.aid, i64 112
  %i.ajr = load float, ptr %i.ajn, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajs = load float, ptr %i.ajo, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajt = load float, ptr %i.ajp, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aju = load float, ptr %i.ajq, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.ajv = insertelement <4 x float> poison, float %i.ajr, i64 0
  %i.ajw = insertelement <4 x float> %i.ajv, float %i.ajs, i64 1
  %i.ajx = insertelement <4 x float> %i.ajw, float %i.ajt, i64 2
  %i.ajy = insertelement <4 x float> %i.ajx, float %i.aju, i64 3
  %i.ajz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1066, <4 x float> %i.ajy, <4 x float> %i.ajm)
  %i.aka = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.akb = getelementptr i8, ptr %i.aib, i64 52
  %i.akc = getelementptr i8, ptr %i.aic, i64 84
  %i.akd = getelementptr i8, ptr %i.aid, i64 116
  %i.ake = load float, ptr %i.aka, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akf = load float, ptr %i.akb, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akg = load float, ptr %i.akc, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akh = load float, ptr %i.akd, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aki = insertelement <4 x float> poison, float %i.ake, i64 0
  %i.akj = insertelement <4 x float> %i.aki, float %i.akf, i64 1
  %i.akk = insertelement <4 x float> %i.akj, float %i.akg, i64 2
  %i.akl = insertelement <4 x float> %i.akk, float %i.akh, i64 3
  %i.akm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1068, <4 x float> %i.akl, <4 x float> %i.ajz)
  %i.akn = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.ako = getelementptr i8, ptr %i.aib, i64 56
  %i.akp = getelementptr i8, ptr %i.aic, i64 88
  %i.akq = getelementptr i8, ptr %i.aid, i64 120
  %i.akr = load float, ptr %i.akn, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aks = load float, ptr %i.ako, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akt = load float, ptr %i.akp, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.aku = load float, ptr %i.akq, align 4, !tbaa !22, !alias.scope !125, !noalias !123
  %i.akv = insertelement <4 x float> poison, float %i.akr, i64 0
  %i.akw = insertelement <4 x float> %i.akv, float %i.aks, i64 1
  %i.akx = insertelement <4 x float> %i.akw, float %i.akt, i64 2
  %i.aky = insertelement <4 x float> %i.akx, float %i.aku, i64 3
  %i.akz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1070, <4 x float> %i.aky, <4 x float> %i.akm)
  %i.ala = trunc nuw nsw i64 %index1057 to i32
  %i.alb = add i32 %invariant.op.i, %i.ala
  %i.alc = sext i32 %i.alb to i64
  %i.ald = getelementptr inbounds [4 x i8], ptr %i.agn, i64 %i.alc
  store <4 x float> %i.akz, ptr %i.ald, align 4, !tbaa !22, !alias.scope !123
  %index.next1071 = add nuw i64 %index1057, 4     ; 2 uses
  %i.ale = icmp eq i64 %index.next1071, %n.vec1055
  br i1 %i.ale, label %scalar.ph1052.preheader, label %vector.body1056, !llvm.loop !127

._crit_edge.i570:                                 ; preds = %scalar.ph1052
  %i.alf = getelementptr inbounds nuw i8, ptr %.038.i564, i64 32
  %i.alg = add nuw nsw i32 %.03437.i565, 1        ; 2 uses
  %exitcond44.not.i = icmp eq i32 %i.alg, %i.agj
  br i1 %exitcond44.not.i, label %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit, label %.preheader.i563, !llvm.loop !128

scalar.ph1052:                                    ; preds = %scalar.ph1052.preheader, %scalar.ph1052
  %indvars.iv.i566 = phi i64 [ %indvars.iv.next.i568, %scalar.ph1052 ], [ %indvars.iv.i566.ph, %scalar.ph1052.preheader ] ; 2 uses
  %.03335.i567 = phi ptr [ %i.amh, %scalar.ph1052 ], [ %.03335.i567.ph, %scalar.ph1052.preheader ] ; 7 uses
  %i.alh = load float, ptr %.038.i564, align 4, !tbaa !22
  %i.ali = load float, ptr %.03335.i567, align 4, !tbaa !22
  %i.alj = fmul float %i.alh, %i.ali
  %i.alk = load float, ptr %i.ahk, align 4, !tbaa !22
  %i.all = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 4
  %i.alm = load float, ptr %i.all, align 4, !tbaa !22
  %i.aln = call float @llvm.fmuladd.f32(float %i.alk, float %i.alm, float %i.alj)
  %i.alo = load float, ptr %i.ahl, align 4, !tbaa !22
  %i.alp = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 8
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !22
  %i.alr = call float @llvm.fmuladd.f32(float %i.alo, float %i.alq, float %i.aln)
  %i.als = load float, ptr %i.ahm, align 4, !tbaa !22
  %i.alt = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 16
  %i.alu = load float, ptr %i.alt, align 4, !tbaa !22
  %i.alv = call float @llvm.fmuladd.f32(float %i.als, float %i.alu, float %i.alr)
  %i.alw = load float, ptr %i.ahn, align 4, !tbaa !22
  %i.alx = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 20
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !22
  %i.alz = call float @llvm.fmuladd.f32(float %i.alw, float %i.aly, float %i.alv)
  %i.ama = load float, ptr %i.aho, align 4, !tbaa !22
  %i.amb = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 24
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !22
  %i.amd = call float @llvm.fmuladd.f32(float %i.ama, float %i.amc, float %i.alz)
  %i.ame = trunc nuw nsw i64 %indvars.iv.i566 to i32
  %.reass.i = add i32 %invariant.op.i, %i.ame
  %i.amf = sext i32 %.reass.i to i64
  %i.amg = getelementptr inbounds [4 x i8], ptr %i.agn, i64 %i.amf
  store float %i.amd, ptr %i.amg, align 4, !tbaa !22
  %i.amh = getelementptr inbounds nuw i8, ptr %.03335.i567, i64 32
  %indvars.iv.next.i568 = add nuw nsw i64 %indvars.iv.i566, 1 ; 2 uses
  %exitcond.not.i569 = icmp eq i64 %indvars.iv.next.i568, %wide.trip.count.i562
  br i1 %exitcond.not.i569, label %._crit_edge.i570, label %scalar.ph1052, !llvm.loop !129

_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit:  ; preds = %._crit_edge.i570
  %i.ami = mul i32 %i.agj, %i.agj
  %i.amj = add i32 %.promoted40.i, %i.ami
  store i32 %i.amj, ptr %i.afs, align 8, !tbaa !99
  %.not349 = icmp eq ptr %i.agd, null
  br i1 %.not349, label %_ZN9btMatrixXIfE16multiplyAdd2_p8rEPKfS2_iiii.exit585, label %.preheader.lr.ph.i571

.preheader.lr.ph.i571:                            ; preds = %_ZN9btMatrixXIfE13multiply2_p8rEPKfS2_iiii.exit
  %i.amk = zext nneg i32 %i.agj to i64
  %i.aml = shl nuw nsw i64 %i.amk, 3              ; 2 uses
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %i.aml
  %i.amn = getelementptr inbounds nuw [4 x i8], ptr %i.agk, i64 %i.aml
  %.promoted.i573 = load i32, ptr %i.afs, align 8
  br label %.preheader.i574

.preheader.i574:                                  ; preds = %._crit_edge.i581, %.preheader.lr.ph.i571
  %i.amo = phi i32 [ %i.aoi, %._crit_edge.i581 ], [ %.promoted.i573, %.preheader.lr.ph.i571 ]
  %.038.i575 = phi ptr [ %i.amv, %._crit_edge.i581 ], [ %i.amn, %.preheader.lr.ph.i571 ] ; 7 uses
  %.03437.i576 = phi i32 [ %i.amw, %._crit_edge.i581 ], [ 0, %.preheader.lr.ph.i571 ] ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %.038.i575, i64 4
  %i.amq = getelementptr inbounds nuw i8, ptr %.038.i575, i64 8
  %i.amr = getelementptr inbounds nuw i8, ptr %.038.i575, i64 16
  %i.ams = getelementptr inbounds nuw i8, ptr %.038.i575, i64 20
  %i.amt = getelementptr inbounds nuw i8, ptr %.038.i575, i64 24
  %i.amu = add nsw i32 %.03437.i576, %.0276800
  br label %bb.da

._crit_edge.i581:                                 ; preds = %_ZN9btMatrixXIfE7addElemEiif.exit.i579
  %i.amv = getelementptr inbounds nuw i8, ptr %.038.i575, i64 32
  %i.amw = add nuw nsw i32 %.03437.i576, 1        ; 2 uses
  %exitcond40.not.i582 = icmp eq i32 %i.amw, %i.agj
end_hunk_0
