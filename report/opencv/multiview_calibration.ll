Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/multiview_calibration?download=true
inline.NumInlined: 2702
inline.NumDeleted: 898
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN2cv18calibrateMultiviewERKNS_11_InputArrayERKSt6vectorIS3_INS_3MatESaIS4_EESaIS6_EERKS3_INS_5Size_IiEESaISC_EES2_S2_RKNS_17_InputOutputArrayESJ_SJ_SJ_RKNS_12_OutputArrayESM_SM_SM_S2_iNS_12TermCriteriaE:bb.a
bb.sf:                                            ; preds = %bb.se, %bb.sd, %bb.sc
  %.1109.us.us.i = phi double [ %i.bgt, %bb.se ], [ %.0108295.us.us.i, %bb.sc ], [ %.0108295.us.us.i, %bb.sd ] ; 2 uses
  %.1107.us.us.i = phi i32 [ %i.bfa, %bb.se ], [ %.0106296.us.us.i, %bb.sc ], [ %.0106296.us.us.i, %bb.sd ] ; 5 uses
  %indvars.iv.next.i1133 = add nuw nsw i64 %indvars.iv.i1132, 1 ; 2 uses
  %exitcond.not.i1134 = icmp eq i64 %indvars.iv.next.i1133, %wide.trip.count.i1130
  br i1 %exitcond.not.i1134, label %._crit_edge.us.us.i, label %bb.sc, !llvm.loop !236

bb.sg:                                            ; preds = %._crit_edge.us.us.i
  %i.bgu = getelementptr inbounds nuw [24 x i8], ptr %i.beh, i64 %indvars.iv314.i
  %i.bgv = load ptr, ptr %i.bgu, align 8, !tbaa !75
  %i.bgw = getelementptr inbounds nuw [4 x i8], ptr %i.bgv, i64 %indvars.iv319.i
  store i32 %.1107.us.us.i, ptr %i.bgw, align 4, !tbaa !36
  %i.bgx = load ptr, ptr %i.bei, align 8, !tbaa !75
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bgx, i64 %indvars.iv314.i
  store i32 %.1107.us.us.i, ptr %i.bgy, align 4, !tbaa !36
  %i.bgz = uitofp nneg i32 %.1107.us.us.i to double
  %i.bha = fadd double %.1109.us.us.i, %i.bgz     ; 2 uses
  %i.bhb = getelementptr inbounds nuw [24 x i8], ptr %i.bdt, i64 %indvars.iv314.i
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !157
  %i.bhd = getelementptr inbounds nuw [8 x i8], ptr %i.bhc, i64 %indvars.iv319.i
  store double %i.bha, ptr %i.bhd, align 8, !tbaa !149
  %i.bhe = load ptr, ptr %i.bee, align 8, !tbaa !157
  %i.bhf = getelementptr inbounds nuw [8 x i8], ptr %i.bhe, i64 %indvars.iv314.i
  store double %i.bha, ptr %i.bhf, align 8, !tbaa !149
  br label %bb.sh

bb.sh:                                            ; preds = %._crit_edge.us.us.i, %bb.sg
  %indvars.iv.next315.i = add nuw nsw i64 %indvars.iv314.i, 1 ; 2 uses
  %exitcond318.not.i = icmp eq i64 %indvars.iv.next315.i, %i.li
  br i1 %exitcond318.not.i, label %.loopexit.us.i1131, label %.preheader294.us.us.i, !llvm.loop !237

._crit_edge.us.us.i:                              ; preds = %bb.sf
  %i.bhg = icmp sgt i32 %.1107.us.us.i, 0
  br i1 %i.bhg, label %bb.sg, label %bb.sh

.split.us.i:                                      ; preds = %.loopexit.us.i1131, %_ZNSt6vectorIdSaIdEED2Ev.exit.i
  %i.bhh = add nuw nsw i64 %i.li, 63
  %i.bhi = lshr i64 %i.bhh, 3
  %i.bhj = and i64 %i.bhi, 536870904              ; 4 uses
  %i.bhk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bhj) #25
          to label %bb.so unwind label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i1125 ; 7 uses

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i1125:     ; preds = %.split.us.i
  %i.bhl = landingpad { ptr, i32 }
          cleanup
  br label %.body162.i

bb.si:                                            ; preds = %.noexc1113
  %i.bhm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165.i

bb.sj:                                            ; preds = %.noexc.i1117
  %i.bhn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i1118

.body.i1118:                                      ; preds = %bb.sj, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bhn, %bb.sj ], [ %i.bci, %_ZNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EED2Ev.exit.i.i ] ; 2 uses
  %i.bho = load ptr, ptr %114, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i164.i = icmp eq ptr %i.bho, null
  br i1 %.not.i.i.i164.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit165.i, label %bb.sk

bb.sk:                                            ; preds = %.body.i1118
  %i.bhp = load ptr, ptr %i.bcd, align 8, !tbaa !78
  %i.bhq = ptrtoint ptr %i.bhp to i64
  %i.bhr = ptrtoint ptr %i.bho to i64
  %i.bhs = sub i64 %i.bhq, %i.bhr
  call void @_ZdlPvm(ptr noundef nonnull %i.bho, i64 noundef %i.bhs) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165.i

_ZNSt6vectorIiSaIiEED2Ev.exit165.i:               ; preds = %bb.sk, %.body.i1118, %bb.si
  %.pn.i1115 = phi { ptr, i32 } [ %i.bhm, %bb.si ], [ %eh.lpad-body.i, %.body.i1118 ], [ %eh.lpad-body.i, %bb.sk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #23
  br label %.body1135.thread

bb.sl:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i1124
  %i.bht = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit167.i

bb.sm:                                            ; preds = %.loopexit
  %i.bhu = landingpad { ptr, i32 }
          cleanup
  br label %.body158.i

.body158.i:                                       ; preds = %bb.sm, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit.i.i
  %eh.lpad-body159.i = phi { ptr, i32 } [ %i.bhu, %bb.sm ], [ %i.bdv, %_ZNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EED2Ev.exit.i.i ] ; 2 uses
  %i.bhv = load ptr, ptr %115, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i166.i = icmp eq ptr %i.bhv, null
  br i1 %.not.i.i.i166.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit167.i, label %bb.sn

bb.sn:                                            ; preds = %.body158.i
  %i.bhw = load ptr, ptr %i.bdh, align 8, !tbaa !160
  %i.bhx = ptrtoint ptr %i.bhw to i64
  %i.bhy = ptrtoint ptr %i.bhv to i64
  %i.bhz = sub i64 %i.bhx, %i.bhy
  call void @_ZdlPvm(ptr noundef nonnull %i.bhv, i64 noundef %i.bhz) #24
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit167.i

_ZNSt6vectorIdSaIdEED2Ev.exit167.i:               ; preds = %bb.sn, %.body158.i, %bb.sl
  %.pn133.i = phi { ptr, i32 } [ %i.bht, %bb.sl ], [ %eh.lpad-body159.i, %.body158.i ], [ %eh.lpad-body159.i, %bb.sn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #23
  br label %.body1135.thread

bb.so:                                            ; preds = %.split.us.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bhk, i8 0, i64 %i.bhj, i1 false)
  %i.bia = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bde) #25
          to label %.noexc179.i unwind label %bb.sp ; 11 uses

.noexc179.i:                                      ; preds = %bb.so
  %i.bib = getelementptr inbounds nuw i8, ptr %i.bia, i64 %i.bde
  %i.bic = add nsw i64 %i.bde, -8                 ; 2 uses
  %i.bid = lshr exact i64 %i.bic, 3
  %i.bie = add nuw nsw i64 %i.bid, 1              ; 2 uses
  %min.iters.check3693 = icmp ult i64 %i.bic, 24
  br i1 %min.iters.check3693, label %.lr.ph.i.i.i.i.i.i.i.i.i176.i.preheader, label %vector.ph3694

vector.ph3694:                                    ; preds = %.noexc179.i
  %n.vec3695 = and i64 %i.bie, 4611686018427387900 ; 3 uses
  %i.bif = shl i64 %n.vec3695, 3
  %i.big = getelementptr i8, ptr %i.bia, i64 %i.bif
  br label %vector.body3696

vector.body3696:                                  ; preds = %vector.body3696, %vector.ph3694
  %index3697 = phi i64 [ 0, %vector.ph3694 ], [ %index.next3699, %vector.body3696 ] ; 2 uses
  %i.bih = shl i64 %index3697, 3
  %next.gep3698 = getelementptr i8, ptr %i.bia, i64 %i.bih ; 2 uses
  %i.bii = getelementptr i8, ptr %next.gep3698, i64 16
  store <2 x double> splat (double f0x0010000000000000), ptr %next.gep3698, align 8, !tbaa !149
  store <2 x double> splat (double f0x0010000000000000), ptr %i.bii, align 8, !tbaa !149
  %index.next3699 = add nuw i64 %index3697, 4     ; 2 uses
  %i.bij = icmp eq i64 %index.next3699, %n.vec3695
  br i1 %i.bij, label %middle.block3700, label %vector.body3696, !llvm.loop !238

middle.block3700:                                 ; preds = %vector.body3696
  %cmp.n3701 = icmp eq i64 %i.bie, %n.vec3695
  br i1 %cmp.n3701, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180.i, label %.lr.ph.i.i.i.i.i.i.i.i.i176.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i176.i.preheader:          ; preds = %.noexc179.i, %middle.block3700
  %.07.i.i.i.i.i.i.i.i.i177.i.ph = phi ptr [ %i.bia, %.noexc179.i ], [ %i.big, %middle.block3700 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i176.i

.lr.ph.i.i.i.i.i.i.i.i.i176.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i176.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i176.i
  %.07.i.i.i.i.i.i.i.i.i177.i = phi ptr [ %i.bik, %.lr.ph.i.i.i.i.i.i.i.i.i176.i ], [ %.07.i.i.i.i.i.i.i.i.i177.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i176.i.preheader ] ; 2 uses
  store double f0x0010000000000000, ptr %.07.i.i.i.i.i.i.i.i.i177.i, align 8, !tbaa !149
  %i.bik = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i.i.i177.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i178.i = icmp eq ptr %i.bik, %i.bib
  br i1 %.not.i.i.i.i.i.i.i.i.i178.i, label %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180.i, label %.lr.ph.i.i.i.i.i.i.i.i.i176.i, !llvm.loop !239

_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i176.i, %middle.block3700
  %i.bil = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #25
          to label %.preheader.preheader.i unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit210.i ; 5 uses

.preheader.preheader.i:                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bil, i8 -1, i64 %i.mw, i1 false), !tbaa !36
  store double f0x7FEFFFFFFFFFFFFF, ptr %i.bia, align 8, !tbaa !149
  %i.bim = add nsw i32 %i.jg, -2
  %i.bin = load ptr, ptr %284, align 8
  %xtraiter = and i64 %i.li, 1
  %unroll_iter = and i64 %i.li, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod3844 = trunc i32 %i.jg to i1
  br label %.preheader.i1127

.preheader.i1127:                                 ; preds = %bb.tb, %.preheader.preheader.i
  %.0104306.i = phi i32 [ %i.bkt, %bb.tb ], [ 0, %.preheader.preheader.i ] ; 2 uses
  br label %bb.sr

bb.sp:                                            ; preds = %bb.so
  %i.bio = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit212.i

_ZNSt6vectorIdSaIdEED2Ev.exit210.i:               ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKdRKS0_.exit180.i
  %i.bip = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bia, i64 noundef %i.bde) #24
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit212.i

.unr-lcssa:                                       ; preds = %.critedge.i.1
  br i1 %lcmp.mod.not, label %.critedge.i.epil, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  call void @llvm.assume(i1 %lcmp.mod3844)
  %i.biq = trunc nuw nsw i64 %indvars.iv.next325.i.1 to i32
  %i.bir = lshr i64 %indvars.iv.next325.i.1, 6
  %.zext279.i.epil = and i64 %i.bir, 67108863
  %i.bis = getelementptr inbounds nuw [8 x i8], ptr %i.bhk, i64 %.zext279.i.epil
  %i.bit = and i64 %indvars.iv.next325.i.1, 63
  %i.biu = shl nuw i64 1, %i.bit
  %i.biv = load i64, ptr %i.bis, align 8, !tbaa !38
  %i.biw = and i64 %i.biv, %i.biu
  %.not288.i.epil = icmp eq i64 %i.biw, 0
  br i1 %.not288.i.epil, label %bb.sq, label %.critedge.i.epil

bb.sq:                                            ; preds = %.epil.preheader
  %i.bix = getelementptr inbounds nuw [8 x i8], ptr %i.bia, i64 %indvars.iv.next325.i.1
  %i.biy = load double, ptr %i.bix, align 8, !tbaa !149
  %i.biz = fcmp olt double %.1.i.1, %i.biy
  %spec.select = select i1 %i.biz, i32 %i.biq, i32 %.1103.i.1
  br label %.critedge.i.epil

.critedge.i.epil:                                 ; preds = %bb.sq, %.epil.preheader, %.unr-lcssa
  %.1103.i.lcssa = phi i32 [ %.1103.i.1, %.unr-lcssa ], [ %spec.select, %bb.sq ], [ %.1103.i.1, %.epil.preheader ] ; 4 uses
  %.not.not.i.not = icmp eq i32 %.1103.i.lcssa, -1 ; 2 uses
  br i1 %.not.not.i.not, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i1128, label %bb.sw

bb.sr:                                            ; preds = %.critedge.i.1, %.preheader.i1127
  %indvars.iv324.i = phi i64 [ 0, %.preheader.i1127 ], [ %indvars.iv.next325.i.1, %.critedge.i.1 ] ; 6 uses
  %.0101302.i = phi double [ f0x0010000000000000, %.preheader.i1127 ], [ %.1.i.1, %.critedge.i.1 ] ; 3 uses
  %.0102301.i = phi i32 [ -1, %.preheader.i1127 ], [ %.1103.i.1, %.critedge.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.preheader.i1127 ], [ %niter.next.1, %.critedge.i.1 ]
  %i.bja = trunc nuw nsw i64 %indvars.iv324.i to i32
  %i.bjb = lshr i64 %indvars.iv324.i, 6
  %.zext279.i = and i64 %i.bjb, 67108863
  %i.bjc = getelementptr inbounds nuw [8 x i8], ptr %i.bhk, i64 %.zext279.i
  %i.bjd = and i64 %indvars.iv324.i, 62
  %i.bje = shl nuw nsw i64 1, %i.bjd
  %i.bjf = load i64, ptr %i.bjc, align 8, !tbaa !38 ; 2 uses
  %i.bjg = and i64 %i.bjf, %i.bje
  %.not288.i = icmp eq i64 %i.bjg, 0
  br i1 %.not288.i, label %bb.ss, label %.critedge.i

bb.ss:                                            ; preds = %bb.sr
  %i.bjh = getelementptr inbounds nuw [8 x i8], ptr %i.bia, i64 %indvars.iv324.i
  %i.bji = load double, ptr %i.bjh, align 8, !tbaa !149 ; 2 uses
  %i.bjj = fcmp olt double %.0101302.i, %i.bji
  br i1 %i.bjj, label %bb.st, label %.critedge.i

bb.st:                                            ; preds = %bb.ss
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.st, %bb.ss, %bb.sr
  %.1103.i = phi i32 [ %.0102301.i, %bb.ss ], [ %i.bja, %bb.st ], [ %.0102301.i, %bb.sr ] ; 2 uses
  %.1.i = phi double [ %.0101302.i, %bb.ss ], [ %i.bji, %bb.st ], [ %.0101302.i, %bb.sr ] ; 3 uses
  %indvars.iv.next325.i = or disjoint i64 %indvars.iv324.i, 1 ; 3 uses
  %i.bjk = trunc nuw nsw i64 %indvars.iv.next325.i to i32
  %i.bjl = and i64 %indvars.iv.next325.i, 63
  %i.bjm = shl nuw i64 1, %i.bjl
  %i.bjn = and i64 %i.bjf, %i.bjm
  %.not288.i.1 = icmp eq i64 %i.bjn, 0
  br i1 %.not288.i.1, label %bb.su, label %.critedge.i.1

bb.su:                                            ; preds = %.critedge.i
  %i.bjo = getelementptr inbounds nuw [8 x i8], ptr %i.bia, i64 %indvars.iv.next325.i
  %i.bjp = load double, ptr %i.bjo, align 8, !tbaa !149 ; 2 uses
  %i.bjq = fcmp olt double %.1.i, %i.bjp
  br i1 %i.bjq, label %bb.sv, label %.critedge.i.1

bb.sv:                                            ; preds = %bb.su
  br label %.critedge.i.1

.critedge.i.1:                                    ; preds = %bb.sv, %bb.su, %.critedge.i
  %.1103.i.1 = phi i32 [ %.1103.i, %bb.su ], [ %i.bjk, %bb.sv ], [ %.1103.i, %.critedge.i ] ; 4 uses
  %.1.i.1 = phi double [ %.1.i, %bb.su ], [ %i.bjp, %bb.sv ], [ %.1.i, %.critedge.i ] ; 2 uses
  %indvars.iv.next325.i.1 = add nuw nsw i64 %indvars.iv324.i, 2 ; 5 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.sr, !llvm.loop !240

bb.sw:                                            ; preds = %.critedge.i.epil
  %i.bjr = sext i32 %.1103.i.lcssa to i64         ; 4 uses
  %i.bjs = sdiv i32 %.1103.i.lcssa, 64
  %.sext.i1129 = sext i32 %i.bjs to i64
  %i.bjt = getelementptr inbounds [8 x i8], ptr %i.bhk, i64 %.sext.i1129
  %i.bju = and i64 %i.bjr, -9223372036854775745
  %i.bjv = icmp ugt i64 %i.bju, -9223372036854775808
  %storemerge.idx.i.i.i.i.i191.i = select i1 %i.bjv, i64 -8, i64 0
  %storemerge.i.i.i.i.i192.i = getelementptr inbounds i8, ptr %i.bjt, i64 %storemerge.idx.i.i.i.i.i191.i ; 2 uses
  %i.bjw = and i64 %i.bjr, 63
  %i.bjx = shl nuw i64 1, %i.bjw
  %i.bjy = load i64, ptr %storemerge.i.i.i.i.i192.i, align 8, !tbaa !38
  %i.bjz = or i64 %i.bjy, %i.bjx
  store i64 %i.bjz, ptr %storemerge.i.i.i.i.i192.i, align 8, !tbaa !38
  %i.bka = getelementptr inbounds nuw [24 x i8], ptr %i.bdt, i64 %i.bjr
  %i.bkb = getelementptr inbounds nuw [24 x i8], ptr %i.bin, i64 %i.bjr
  br label %bb.sx

bb.sx:                                            ; preds = %.critedge3.i, %bb.sw
  %indvars.iv329.i = phi i64 [ 0, %bb.sw ], [ %indvars.iv.next330.i, %.critedge3.i ] ; 7 uses
  %i.bkc = lshr i64 %indvars.iv329.i, 6
  %.zext282.i = and i64 %i.bkc, 67108863
  %i.bkd = getelementptr inbounds nuw [8 x i8], ptr %i.bhk, i64 %.zext282.i
  %i.bke = and i64 %indvars.iv329.i, 63
  %i.bkf = shl nuw i64 1, %i.bke
  %i.bkg = load i64, ptr %i.bkd, align 8, !tbaa !38
  %i.bkh = and i64 %i.bkf, %i.bkg
  %.not287.i = icmp eq i64 %i.bkh, 0
  br i1 %.not287.i, label %bb.sy, label %.critedge3.i

bb.sy:                                            ; preds = %bb.sx
  %i.bki = load ptr, ptr %i.bkb, align 8, !tbaa !75
  %i.bkj = getelementptr inbounds nuw [4 x i8], ptr %i.bki, i64 %indvars.iv329.i
  %i.bkk = load i32, ptr %i.bkj, align 4, !tbaa !36
  %i.bkl = icmp sgt i32 %i.bkk, 0
  br i1 %i.bkl, label %bb.sz, label %.critedge3.i

bb.sz:                                            ; preds = %bb.sy
  %i.bkm = getelementptr inbounds nuw [8 x i8], ptr %i.bia, i64 %indvars.iv329.i ; 2 uses
  %i.bkn = load double, ptr %i.bkm, align 8, !tbaa !149
  %i.bko = load ptr, ptr %i.bka, align 8, !tbaa !157
  %i.bkp = getelementptr inbounds nuw [8 x i8], ptr %i.bko, i64 %indvars.iv329.i
  %i.bkq = load double, ptr %i.bkp, align 8, !tbaa !149 ; 2 uses
  %i.bkr = fcmp olt double %i.bkn, %i.bkq
  br i1 %i.bkr, label %bb.ta, label %.critedge3.i

bb.ta:                                            ; preds = %bb.sz
  store double %i.bkq, ptr %i.bkm, align 8, !tbaa !149
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %i.bil, i64 %indvars.iv329.i
  store i32 %.1103.i.lcssa, ptr %i.bks, align 4, !tbaa !36
  br label %.critedge3.i

.critedge3.i:                                     ; preds = %bb.ta, %bb.sz, %bb.sy, %bb.sx
  %indvars.iv.next330.i = add nuw nsw i64 %indvars.iv329.i, 1 ; 2 uses
  %exitcond333.not.i = icmp eq i64 %indvars.iv.next330.i, %i.li
  br i1 %exitcond333.not.i, label %bb.tb, label %bb.sx, !llvm.loop !241

bb.tb:                                            ; preds = %.critedge3.i
  %i.bkt = add nuw nsw i32 %.0104306.i, 1
  %exitcond334.not.i = icmp eq i32 %.0104306.i, %i.bim
  br i1 %exitcond334.not.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i1128, label %.preheader.i1127, !llvm.loop !242

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i1128:       ; preds = %bb.tb, %.critedge.i.epil
  call void @_ZdlPvm(ptr noundef nonnull %i.bia, i64 noundef %i.bde) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.bhk, i64 noundef %i.bhj) #24
  %.not4.i.i.i201.i = icmp eq ptr %i.bdt, %i.bdu
  br i1 %.not4.i.i.i201.i, label %.loopexit1849, label %.lr.ph.i.i.i202.i

.lr.ph.i.i.i202.i:                                ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i1128, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i
  %.05.i.i.i203.i = phi ptr [ %i.bla, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i ], [ %i.bdt, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i1128 ] ; 3 uses
  %i.bku = load ptr, ptr %.05.i.i.i203.i, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i.i.i.i204.i = icmp eq ptr %i.bku, null
  br i1 %.not.i.i.i.i.i.i.i204.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i, label %bb.tc

bb.tc:                                            ; preds = %.lr.ph.i.i.i202.i
  %i.bkv = getelementptr inbounds nuw i8, ptr %.05.i.i.i203.i, i64 16
  %i.bkw = load ptr, ptr %i.bkv, align 8, !tbaa !160
  %i.bkx = ptrtoint ptr %i.bkw to i64
  %i.bky = ptrtoint ptr %i.bku to i64
  %i.bkz = sub i64 %i.bkx, %i.bky
  call void @_ZdlPvm(ptr noundef nonnull %i.bku, i64 noundef %i.bkz) #24
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i: ; preds = %bb.tc, %.lr.ph.i.i.i202.i
  %i.bla = getelementptr inbounds nuw i8, ptr %.05.i.i.i203.i, i64 24 ; 2 uses
  %.not.i.i.i205.i = icmp eq ptr %i.bla, %i.bdu
  br i1 %.not.i.i.i205.i, label %.loopexit1849, label %.lr.ph.i.i.i202.i, !llvm.loop !243

_ZNSt13_Bvector_baseISaIbEED2Ev.exit212.i:        ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit210.i, %bb.sp
  %.pn136.pn.pn.i = phi { ptr, i32 } [ %i.bip, %_ZNSt6vectorIdSaIdEED2Ev.exit210.i ], [ %i.bio, %bb.sp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bhk, i64 noundef %i.bhj) #24
  br label %.body162.i

.body162.i:                                       ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit212.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i1125
  %.pn141.i = phi { ptr, i32 } [ %i.bhl, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i1125 ], [ %.pn136.pn.pn.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit212.i ]
  %.not4.i.i.i213.i = icmp eq ptr %i.bdt, %i.bdu
  br i1 %.not4.i.i.i213.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit224.i, label %.lr.ph.i.i.i214.i

.lr.ph.i.i.i214.i:                                ; preds = %.body162.i, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i217.i
  %.05.i.i.i215.i = phi ptr [ %i.blh, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i217.i ], [ %i.bdt, %.body162.i ] ; 3 uses
  %i.blb = load ptr, ptr %.05.i.i.i215.i, align 8, !tbaa !157 ; 3 uses
  %.not.i.i.i.i.i.i.i216.i = icmp eq ptr %i.blb, null
  br i1 %.not.i.i.i.i.i.i.i216.i, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i217.i, label %bb.td

bb.td:                                            ; preds = %.lr.ph.i.i.i214.i
  %i.blc = getelementptr inbounds nuw i8, ptr %.05.i.i.i215.i, i64 16
  %i.bld = load ptr, ptr %i.blc, align 8, !tbaa !160
  %i.ble = ptrtoint ptr %i.bld to i64
  %i.blf = ptrtoint ptr %i.blb to i64
  %i.blg = sub i64 %i.ble, %i.blf
  call void @_ZdlPvm(ptr noundef nonnull %i.blb, i64 noundef %i.blg) #24
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i217.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i217.i: ; preds = %bb.td, %.lr.ph.i.i.i214.i
  %i.blh = getelementptr inbounds nuw i8, ptr %.05.i.i.i215.i, i64 24 ; 2 uses
  %.not.i.i.i218.i = icmp eq ptr %i.blh, %i.bdu
  br i1 %.not.i.i.i218.i, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit224.i, label %.lr.ph.i.i.i214.i, !llvm.loop !243

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit224.i:    ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i217.i, %.body162.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bdt, i64 noundef %i.ade) #24
  br label %.body1135.thread

.loopexit1849:                                    ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i1128
  call void @_ZdlPvm(ptr noundef nonnull %i.bdt, i64 noundef %i.ade) #24
  br i1 %.not.not.i.not, label %bb.te, label %bb.tl

bb.te:                                            ; preds = %.loopexit1849
  call void @llvm.lifetime.start.p0(ptr nonnull %285) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %286) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %285, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %286)
          to label %bb.tf unwind label %bb.tj

bb.tf:                                            ; preds = %bb.te
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -3, ptr noundef nonnull align 8 dereferenceable(32) %285, ptr noundef nonnull @__func__._ZN2cv18calibrateMultiviewERKNS_11_InputArrayERKSt6vectorIS3_INS_3MatESaIS4_EESaIS6_EERKS3_INS_5Size_IiEESaISC_EES2_S2_RKNS_17_InputOutputArrayESJ_SJ_SJ_RKNS_12_OutputArrayESM_SM_SM_S2_iNS_12TermCriteriaE, ptr noundef nonnull @.str.1, i32 noundef 795) #22
          to label %bb.tg unwind label %bb.tk

bb.tg:                                            ; preds = %bb.tf
  unreachable

bb.th:                                            ; preds = %bb.pb, %.loopexit1857
  %i.bli = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IbSaIbEESaIS1_EED2Ev.exit2799

end_hunk_0
