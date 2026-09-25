Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVode:bb.a
  %.not14.i.i = icmp eq i32 %i.adi, 0
  br i1 %.not14.i.i, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.adj = sub nsw i32 %i.adg, %i.adh
  call fastcc void @cvAdjustOrder(ptr noundef nonnull %0, i32 noundef %i.adj)
  %.pre.i.i = load i32, ptr %i.qo, align 4, !tbaa !312
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.adk = phi i32 [ %.pre.i.i, %bb.gs ], [ %i.adg, %bb.gr ] ; 2 uses
  store i32 %i.adk, ptr %i.pl, align 8, !tbaa !79
  %i.adl = add nsw i32 %i.adk, 1                  ; 2 uses
  store i32 %i.adl, ptr %i.qq, align 8, !tbaa !80
  store i32 %i.adl, ptr %i.qr, align 4, !tbaa !81
  br label %cvAdjustParams.exit.i

cvAdjustParams.exit.i:                            ; preds = %bb.gt, %bb.gq
  call void @cvRescale(ptr noundef nonnull %0)
  br label %bb.gu

bb.gu:                                            ; preds = %cvAdjustParams.exit.i, %bb.gp, %.loopexit351.i
  %i.adm = load i32, ptr %i.qs, align 8, !tbaa !303
  %.not214.i = icmp eq i32 %i.adm, 0
  br i1 %.not214.i, label %bb.gy, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.adn = load ptr, ptr %i.qt, align 8, !tbaa !194 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.adp = load i64, ptr %i.ado, align 8, !tbaa !314 ; 2 uses
  %i.adq = icmp sgt i64 %i.adp, 0
  br i1 %i.adq, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %i.adr = load i64, ptr %i.aj, align 8, !tbaa !301 ; 2 uses
  %i.ads = icmp eq i64 %i.adr, 0
  br i1 %i.ads, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adn, i64 24
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !315
  %i.adv = add nsw i64 %i.adu, %i.adp
  %.not219.i = icmp slt i64 %i.adr, %i.adv
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gu
  %.0185.i = phi i1 [ true, %bb.gu ], [ true, %bb.gv ], [ false, %bb.gw ], [ %.not219.i, %bb.gx ]
  %i.adw = load double, ptr %i.qi, align 8, !tbaa !77 ; 12 uses
  store i32 6, ptr %i.t, align 4, !tbaa !56
  %or.cond.i = or i1 %i.acs, %i.act
  br label %bb.gz

bb.gz:                                            ; preds = %.backedge.i, %bb.gy
  %i.adx = phi double [ %i.adw, %bb.gy ], [ %.pre783, %.backedge.i ]
  %.0310.i = phi i32 [ 0, %bb.gy ], [ %.0310.be.i, %.backedge.i ] ; 11 uses
  %i.ady = load double, ptr %i.pj, align 8, !tbaa !197 ; 2 uses
  %i.adz = fadd double %i.ady, %i.adx             ; 2 uses
  store double %i.adz, ptr %i.qi, align 8, !tbaa !77
  %i.aea = load i32, ptr %i.qu, align 8, !tbaa !305
  %.not.i245.i = icmp eq i32 %i.aea, 0
  br i1 %.not.i245.i, label %bb.hc, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.aeb = load double, ptr %i.qv, align 8, !tbaa !306 ; 2 uses
  %i.aec = fsub double %i.adz, %i.aeb
  %i.aed = fmul double %i.ady, %i.aec
  %i.aee = fcmp ogt double %i.aed, 0.000000e+00
  br i1 %i.aee, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %bb.ha
  store double %i.aeb, ptr %i.qi, align 8, !tbaa !77
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.aef = load i32, ptr %i.pl, align 8, !tbaa !79 ; 3 uses
  %.not7292.i.i = icmp slt i32 %i.aef, 1
  br i1 %.not7292.i.i, label %cvPredict.exit.i, label %.preheader90.i.i

.preheader90.i.i:                                 ; preds = %bb.hc, %bb.he
  %indvars.iv104.i.i = phi i64 [ %indvars.iv.next105.i.i, %bb.he ], [ 1, %bb.hc ] ; 3 uses
  %i.aeg = phi i32 [ %i.aem, %bb.he ], [ %i.aef, %bb.hc ]
  %i.aeh = sext i32 %i.aeg to i64
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hd, %.preheader90.i.i
  %indvars.iv.i.i614 = phi i64 [ %i.aeh, %.preheader90.i.i ], [ %indvars.iv.next.i.i615, %bb.hd ] ; 3 uses
  %i.aei = getelementptr [8 x i8], ptr %i.po, i64 %indvars.iv.i.i614 ; 2 uses
  %i.aej = getelementptr i8, ptr %i.aei, i64 -8
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !52 ; 2 uses
  %i.ael = load ptr, ptr %i.aei, align 8, !tbaa !52
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aek, double noundef 1.000000e+00, ptr noundef %i.ael, ptr noundef %i.aek) #13
  %indvars.iv.next.i.i615 = add nsw i64 %indvars.iv.i.i614, -1
  %.not82.not.i.i = icmp sgt i64 %indvars.iv.i.i614, %indvars.iv104.i.i
  br i1 %.not82.not.i.i, label %bb.hd, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %indvars.iv.next105.i.i = add nuw nsw i64 %indvars.iv104.i.i, 1
  %i.aem = load i32, ptr %i.pl, align 8, !tbaa !79 ; 5 uses
  %i.aen = sext i32 %i.aem to i64
  %.not72.not.i.i = icmp slt i64 %indvars.iv104.i.i, %i.aen
  br i1 %.not72.not.i.i, label %.preheader90.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.he
  %i.aeo = load i32, ptr %i.pr, align 8, !tbaa !121
  %.not73.i.i = icmp eq i32 %i.aeo, 0
  %.not7495.i.i = icmp slt i32 %i.aem, 1
  %or.cond.i.i = or i1 %.not7495.i.i, %.not73.i.i
  br i1 %or.cond.i.i, label %.loopexit89.i.i, label %.preheader87.i.i

.preheader87.i.i:                                 ; preds = %._crit_edge.i.i, %bb.hg
  %indvars.iv110.i.i = phi i64 [ %indvars.iv.next111.i.i, %bb.hg ], [ 1, %._crit_edge.i.i ] ; 3 uses
  %i.aep = phi i32 [ %i.aev, %bb.hg ], [ %i.aem, %._crit_edge.i.i ]
  %i.aeq = sext i32 %i.aep to i64
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hf, %.preheader87.i.i
  %indvars.iv107.i.i = phi i64 [ %i.aeq, %.preheader87.i.i ], [ %indvars.iv.next108.i.i, %bb.hf ] ; 3 uses
  %i.aer = getelementptr [8 x i8], ptr %i.pt, i64 %indvars.iv107.i.i ; 2 uses
  %i.aes = getelementptr i8, ptr %i.aer, i64 -8
  %i.aet = load ptr, ptr %i.aes, align 8, !tbaa !52 ; 2 uses
  %i.aeu = load ptr, ptr %i.aer, align 8, !tbaa !52
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.aet, double noundef 1.000000e+00, ptr noundef %i.aeu, ptr noundef %i.aet) #13
  %indvars.iv.next108.i.i = add nsw i64 %indvars.iv107.i.i, -1
  %.not81.not.i.i = icmp sgt i64 %indvars.iv107.i.i, %indvars.iv110.i.i
  br i1 %.not81.not.i.i, label %bb.hf, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %indvars.iv.next111.i.i = add nuw nsw i64 %indvars.iv110.i.i, 1
  %i.aev = load i32, ptr %i.pl, align 8, !tbaa !79 ; 3 uses
  %i.aew = sext i32 %i.aev to i64
  %.not74.not.i.i = icmp slt i64 %indvars.iv110.i.i, %i.aew
  br i1 %.not74.not.i.i, label %.preheader87.i.i, label %.loopexit89.i.i

.loopexit89.i.i:                                  ; preds = %bb.hg, %._crit_edge.i.i
  %i.aex = phi i32 [ %i.aem, %._crit_edge.i.i ], [ %i.aev, %bb.hg ] ; 3 uses
  %i.aey = load i32, ptr %i.pv, align 4, !tbaa !141
  %.not75.i.i = icmp eq i32 %i.aey, 0
  %.not7698.i.i = icmp slt i32 %i.aex, 1
  %or.cond132.i.i = or i1 %.not7698.i.i, %.not75.i.i
  br i1 %or.cond132.i.i, label %.loopexit86.i.i, label %.preheader84.i.i

.preheader84.i.i:                                 ; preds = %.loopexit89.i.i, %bb.hi
  %indvars.iv116.i.i = phi i64 [ %indvars.iv.next117.i.i, %bb.hi ], [ 1, %.loopexit89.i.i ] ; 3 uses
  %i.aez = phi i32 [ %i.afh, %bb.hi ], [ %i.aex, %.loopexit89.i.i ]
  %i.afa = sext i32 %i.aez to i64
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hh, %.preheader84.i.i
  %indvars.iv113.i.i = phi i64 [ %i.afa, %.preheader84.i.i ], [ %indvars.iv.next114.i.i, %bb.hh ] ; 3 uses
  %i.afb = load i32, ptr %i.qe, align 8, !tbaa !129
  %i.afc = getelementptr [8 x i8], ptr %i.pw, i64 %indvars.iv113.i.i ; 2 uses
  %i.afd = getelementptr i8, ptr %i.afc, i64 -8
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !135 ; 2 uses
  %i.aff = load ptr, ptr %i.afc, align 8, !tbaa !135
  %i.afg = call i32 @N_VLinearSumVectorArray(i32 noundef %i.afb, double noundef 1.000000e+00, ptr noundef %i.afe, double noundef 1.000000e+00, ptr noundef %i.aff, ptr noundef %i.afe) #13 ; 0 uses
  %indvars.iv.next114.i.i = add nsw i64 %indvars.iv113.i.i, -1
  %.not80.not.i.i = icmp sgt i64 %indvars.iv113.i.i, %indvars.iv116.i.i
  br i1 %.not80.not.i.i, label %bb.hh, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %indvars.iv.next117.i.i = add nuw nsw i64 %indvars.iv116.i.i, 1
  %i.afh = load i32, ptr %i.pl, align 8, !tbaa !79 ; 3 uses
  %i.afi = sext i32 %i.afh to i64
  %.not76.not.i.i = icmp slt i64 %indvars.iv116.i.i, %i.afi
  br i1 %.not76.not.i.i, label %.preheader84.i.i, label %.loopexit86.i.i

.loopexit86.i.i:                                  ; preds = %bb.hi, %.loopexit89.i.i
  %i.afj = phi i32 [ %i.aex, %.loopexit89.i.i ], [ %i.afh, %bb.hi ] ; 3 uses
  %i.afk = load i32, ptr %i.py, align 8, !tbaa !173
  %.not77.i.i = icmp eq i32 %i.afk, 0
  %.not78101.i.i = icmp slt i32 %i.afj, 1
  %or.cond133.i.i = or i1 %.not78101.i.i, %.not77.i.i
  br i1 %or.cond133.i.i, label %cvPredict.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit86.i.i, %bb.hk
  %indvars.iv122.i.i = phi i64 [ %indvars.iv.next123.i.i, %bb.hk ], [ 1, %.loopexit86.i.i ] ; 3 uses
  %i.afl = phi i32 [ %i.aft, %bb.hk ], [ %i.afj, %.loopexit86.i.i ]
  %i.afm = sext i32 %i.afl to i64
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hj, %.preheader.i.i
  %indvars.iv119.i.i = phi i64 [ %i.afm, %.preheader.i.i ], [ %indvars.iv.next120.i.i, %bb.hj ] ; 3 uses
  %i.afn = load i32, ptr %i.qe, align 8, !tbaa !129
  %i.afo = getelementptr [8 x i8], ptr %i.qa, i64 %indvars.iv119.i.i ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 -8
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !135 ; 2 uses
  %i.afr = load ptr, ptr %i.afo, align 8, !tbaa !135
  %i.afs = call i32 @N_VLinearSumVectorArray(i32 noundef %i.afn, double noundef 1.000000e+00, ptr noundef %i.afq, double noundef 1.000000e+00, ptr noundef %i.afr, ptr noundef %i.afq) #13 ; 0 uses
  %indvars.iv.next120.i.i = add nsw i64 %indvars.iv119.i.i, -1
  %.not79.not.i.i = icmp sgt i64 %indvars.iv119.i.i, %indvars.iv122.i.i
  br i1 %.not79.not.i.i, label %bb.hj, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %indvars.iv.next123.i.i = add nuw nsw i64 %indvars.iv122.i.i, 1
  %i.aft = load i32, ptr %i.pl, align 8, !tbaa !79 ; 3 uses
  %i.afu = sext i32 %i.aft to i64
  %.not78.not.i.i = icmp slt i64 %indvars.iv122.i.i, %i.afu
  br i1 %.not78.not.i.i, label %.preheader.i.i, label %cvPredict.exit.i

cvPredict.exit.i:                                 ; preds = %bb.hk, %.loopexit86.i.i, %bb.hc
  %i.afv = phi i32 [ %i.afj, %.loopexit86.i.i ], [ %i.aef, %bb.hc ], [ %i.aft, %bb.hk ] ; 30 uses
  %i.afw = load i32, ptr %i.qw, align 8, !tbaa !23
  switch i32 %i.afw, label %bb.hv [
    i32 1, label %bb.hl
    i32 2, label %bb.hr
  ]

bb.hl:                                            ; preds = %cvPredict.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  %i.afx = icmp eq i32 %i.afv, 1
  br i1 %i.afx, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  store double 1.000000e+00, ptr %i.qy, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.rb, align 8, !tbaa !29
  store <2 x double> <double 1.000000e+00, double 5.000000e-01>, ptr %i.rc, align 8, !tbaa !29
  store double f0x3FB5555555555555, ptr %i.re, align 8, !tbaa !29
  %i.afy = load double, ptr %i.rf, align 8, !tbaa !34
  %i.afz = fmul double %i.afy, 2.000000e+00
  br label %cvSetAdams.exit.i.i

bb.hn:                                            ; preds = %bb.hl
  %i.aga = load double, ptr %i.pj, align 8, !tbaa !197 ; 4 uses
  store double 1.000000e+00, ptr %i.o, align 16, !tbaa !29
  %.not37.i.i.i.i = icmp slt i32 %i.afv, 1
  br i1 %.not37.i.i.i.i, label %cvAltSum.exit28.thread.i.i.i, label %.lr.ph42.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %bb.hn
  %i.agb = zext nneg i32 %i.afv to i64            ; 8 uses
  %i.agc = shl nuw nsw i64 %i.agb, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.i.i.i.i, i8 0, i64 %i.agc, i1 false), !tbaa !29
  %i.agd = add nsw i32 %i.afv, -1                 ; 3 uses
  %wide.trip.count.i.i.i.i.i = zext nneg i32 %i.agd to i64 ; 3 uses
  %i.age = uitofp nneg i32 %i.afv to double
  %i.agf = getelementptr [8 x i8], ptr %i.o, i64 %i.agb
  %i.agg = getelementptr i8, ptr %i.agf, i64 -16
  %xtraiter1155 = and i64 %wide.trip.count.i.i.i.i.i, 1
  %i.agh = icmp eq i32 %i.agd, 1
  %unroll_iter1160 = and i64 %wide.trip.count.i.i.i.i.i, 2147483646
  %lcmp.mod1157.not = icmp eq i64 %xtraiter1155, 0
  %lcmp.mod1159 = trunc i32 %i.agd to i1
  br label %bb.ho

bb.ho:                                            ; preds = %.loopexit1124, %.lr.ph42.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 1, %.lr.ph42.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.loopexit1124 ] ; 9 uses
  %.03440.i.i.i.i = phi double [ %i.aga, %.lr.ph42.i.i.i.i ], [ %i.aip, %.loopexit1124 ] ; 2 uses
  %i.agi = icmp eq i64 %indvars.iv.i.i.i.i, %wide.trip.count.i.i.i.i.i
  br i1 %i.agi, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.agj = load i32, ptr %i.qr, align 4, !tbaa !81
  %i.agk = icmp eq i32 %i.agj, 1
  br i1 %i.agk, label %.preheader.i.i.i.i.i.preheader, label %bb.hq

.preheader.i.i.i.i.i.preheader:                   ; preds = %bb.hp
  br i1 %i.agh, label %.preheader.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.preheader.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %.018.i.i.i.i.i = phi double [ %i.agy, %.preheader.i.i.i.i.i ], [ 0.000000e+00, %.preheader.i.i.i.i.i.preheader ]
  %niter1161 = phi i64 [ %niter1161.next.1, %.preheader.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ]
  %i.agl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i
  %i.agm = load double, ptr %i.agl, align 16, !tbaa !29
  %i.agn = trunc i64 %indvars.iv.i.i.i.i.i to i32
  %i.ago = add i32 %i.agn, 2
  %i.agp = uitofp nneg i32 %i.ago to double
  %i.agq = fdiv double %i.agm, %i.agp
  %i.agr = fadd double %i.agq, %.018.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i.i.i.i
  %i.agt = load double, ptr %i.ags, align 8, !tbaa !29
  %i.agu = trunc i64 %indvars.iv.next.i.i.i.i.i to i32
  %i.agv = add i32 %i.agu, 2
  %i.agw = uitofp nneg i32 %i.agv to double
  %i.agx = fdiv double %i.agt, %i.agw
  %i.agy = fsub double %i.agr, %i.agx             ; 3 uses
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 2 ; 2 uses
  %niter1161.next.1 = add i64 %niter1161, 2       ; 2 uses
  %niter1161.ncmp.1 = icmp eq i64 %niter1161.next.1, %unroll_iter1160
  br i1 %niter1161.ncmp.1, label %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i

cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa:         ; preds = %.preheader.i.i.i.i.i
  br i1 %lcmp.mod1157.not, label %cvAltSum.exit.loopexit.i.i.i.i, label %.preheader.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.epil.preheader:              ; preds = %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.1, %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i.i.i.i.i.preheader ], [ %i.agy, %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod1159)
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i.i.i.i.epil.init
  %i.aha = load double, ptr %i.agz, align 8, !tbaa !29
  %i.ahb = trunc i64 %indvars.iv.i.i.i.i.i.epil.init to i32
  %i.ahc = add i32 %i.ahb, 2
  %i.ahd = uitofp nneg i32 %i.ahc to double
  %i.ahe = fdiv double %i.aha, %i.ahd
  %i.ahf = fadd double %i.ahe, %.018.i.i.i.i.i.epil.init
  br label %cvAltSum.exit.loopexit.i.i.i.i

cvAltSum.exit.loopexit.i.i.i.i:                   ; preds = %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.i.epil.preheader
  %.lcssa1133 = phi double [ %i.agy, %cvAltSum.exit.loopexit.i.i.i.i.unr-lcssa ], [ %i.ahf, %.preheader.i.i.i.i.i.epil.preheader ]
  %i.ahg = fmul double %.lcssa1133, %i.age
  %i.ahh = load double, ptr %i.agg, align 8, !tbaa !29
  %i.ahi = fdiv double %i.ahg, %i.ahh
  store double %i.ahi, ptr %i.rc, align 8, !tbaa !29
  br label %bb.hq

bb.hq:                                            ; preds = %cvAltSum.exit.loopexit.i.i.i.i, %bb.hp, %bb.ho
  %i.ahj = fdiv double %i.aga, %.03440.i.i.i.i    ; 4 uses
  %min.iters.check1026 = icmp samesign ult i64 %indvars.iv.i.i.i.i, 4
  br i1 %min.iters.check1026, label %scalar.ph1025, label %vector.ph1027

vector.ph1027:                                    ; preds = %bb.hq
  %n.vec1028 = and i64 %indvars.iv.i.i.i.i, 9223372036854775804 ; 2 uses
  %i.ahk = and i64 %indvars.iv.i.i.i.i, 3
  %broadcast.splatinsert1029 = insertelement <2 x double> poison, double %i.ahj, i64 0 ; 2 uses
  %i.ahl = shufflevector <2 x double> %broadcast.splatinsert1029, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahm = shufflevector <2 x double> %broadcast.splatinsert1029, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1031

vector.body1031:                                  ; preds = %vector.body1031, %vector.ph1027
  %index1032 = phi i64 [ 0, %vector.ph1027 ], [ %index.next1043, %vector.body1031 ] ; 2 uses
  %i.ahn = sub i64 %indvars.iv.i.i.i.i, %index1032
  %i.aho = getelementptr [8 x i8], ptr %i.o, i64 %i.ahn ; 4 uses
  %i.ahp = getelementptr i8, ptr %i.aho, i64 -16
  %i.ahq = getelementptr i8, ptr %i.aho, i64 -32
  %wide.load1033 = load <2 x double>, ptr %i.ahp, align 8, !tbaa !29
  %wide.load1034 = load <2 x double>, ptr %i.ahq, align 8, !tbaa !29
  %i.ahr = getelementptr i8, ptr %i.aho, i64 -8   ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.aho, i64 -24  ; 2 uses
  %wide.load1037 = load <2 x double>, ptr %i.ahr, align 8, !tbaa !29
  %wide.load1038 = load <2 x double>, ptr %i.ahs, align 8, !tbaa !29
  %reverse1041 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1033, <2 x double> %i.ahl, <2 x double> %wide.load1037)
  %reverse1042 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1034, <2 x double> %i.ahm, <2 x double> %wide.load1038)
  store <2 x double> %reverse1041, ptr %i.ahr, align 8, !tbaa !29
  store <2 x double> %reverse1042, ptr %i.ahs, align 8, !tbaa !29
  %index.next1043 = add nuw i64 %index1032, 4     ; 2 uses
  %i.aht = icmp eq i64 %index.next1043, %n.vec1028
  br i1 %i.aht, label %middle.block1044, label %vector.body1031, !llvm.loop !266

middle.block1044:                                 ; preds = %vector.body1031
  %cmp.n1045 = icmp eq i64 %indvars.iv.i.i.i.i, %n.vec1028
  br i1 %cmp.n1045, label %.loopexit1124, label %scalar.ph1025

scalar.ph1025:                                    ; preds = %middle.block1044, %bb.hq
  %indvars.iv46.i.i.i.i.ph = phi i64 [ %indvars.iv.i.i.i.i, %bb.hq ], [ %i.ahk, %middle.block1044 ] ; 5 uses
  %i.ahu = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 3 uses
  %i.ahv = getelementptr i8, ptr %i.ahu, i64 -8
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !29
  %i.ahx = load double, ptr %i.ahu, align 8, !tbaa !29
  %i.ahy = call double @llvm.fmuladd.f64(double %i.ahw, double %i.ahj, double %i.ahx)
  store double %i.ahy, ptr %i.ahu, align 8, !tbaa !29
  %i.ahz = icmp samesign ugt i64 %indvars.iv46.i.i.i.i.ph, 1
  br i1 %i.ahz, label %scalar.ph1025.1, label %.loopexit1124

scalar.ph1025.1:                                  ; preds = %scalar.ph1025
  %i.aia = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 2 uses
  %i.aib = getelementptr i8, ptr %i.aia, i64 -8   ; 2 uses
  %i.aic = getelementptr i8, ptr %i.aia, i64 -16
  %i.aid = load double, ptr %i.aic, align 8, !tbaa !29
  %i.aie = load double, ptr %i.aib, align 8, !tbaa !29
  %i.aif = call double @llvm.fmuladd.f64(double %i.aid, double %i.ahj, double %i.aie)
  store double %i.aif, ptr %i.aib, align 8, !tbaa !29
  %i.aig = icmp eq i64 %indvars.iv46.i.i.i.i.ph, 3
  br i1 %i.aig, label %scalar.ph1025.2, label %.loopexit1124

scalar.ph1025.2:                                  ; preds = %scalar.ph1025.1
  %i.aih = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv46.i.i.i.i.ph ; 2 uses
  %i.aii = getelementptr i8, ptr %i.aih, i64 -16  ; 2 uses
  %i.aij = getelementptr i8, ptr %i.aih, i64 -24
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !29
  %i.ail = load double, ptr %i.aii, align 8, !tbaa !29
  %i.aim = call double @llvm.fmuladd.f64(double %i.aik, double %i.ahj, double %i.ail)
  store double %i.aim, ptr %i.aii, align 8, !tbaa !29
  br label %.loopexit1124

.loopexit1124:                                    ; preds = %scalar.ph1025, %scalar.ph1025.1, %scalar.ph1025.2, %middle.block1044
  %i.ain = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv.i.i.i.i
  %i.aio = load double, ptr %i.ain, align 8, !tbaa !29
  %i.aip = fadd double %.03440.i.i.i.i, %i.aio    ; 2 uses
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.agb
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i15.i.i.i.preheader, label %bb.ho

.preheader.i15.i.i.i.preheader:                   ; preds = %.loopexit1124
  %i.aiq = add nsw i64 %i.agb, -1                 ; 2 uses
  %xtraiter1162 = and i64 %i.agb, 1
  %i.air = icmp eq i64 %i.aiq, 0
  br i1 %i.air, label %.preheader.i15.i.i.i.epil.preheader, label %.preheader.i15.i.i.i.preheader.new

.preheader.i15.i.i.i.preheader.new:               ; preds = %.preheader.i15.i.i.i.preheader
  %unroll_iter1167 = and i64 %i.agb, 2147483646
  br label %.preheader.i15.i.i.i

cvAltSum.exit28.thread.i.i.i:                     ; preds = %bb.hn
  store double 1.000000e+00, ptr %i.qx, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

.preheader.i15.i.i.i:                             ; preds = %.preheader.i15.i.i.i, %.preheader.i15.i.i.i.preheader.new
  %indvars.iv.i16.i.i.i = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %indvars.iv.next.i17.i.i.i.1, %.preheader.i15.i.i.i ] ; 4 uses
  %.018.i.i.i.i = phi double [ 0.000000e+00, %.preheader.i15.i.i.i.preheader.new ], [ %i.ajf, %.preheader.i15.i.i.i ]
  %niter1168 = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %niter1168.next.1, %.preheader.i15.i.i.i ]
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i16.i.i.i
end_hunk_0
begin_hunk_1_@CVode:bb.a
  %i.aln = icmp eq i32 %i.alm, 1
  br i1 %i.aln, label %.preheader.i33.i.i.i, label %cvAdamsFinish.exit.i.i.i

.preheader.i33.i.i.i:                             ; preds = %._crit_edge.i.i.i.i
  %i.alo = icmp sgt i32 %i.afv, 0
  br i1 %i.alo, label %.lr.ph44.preheader.i.i.i.i, label %._crit_edge45.i.i.i.i

.lr.ph44.preheader.i.i.i.i:                       ; preds = %.preheader.i33.i.i.i
  %i.alp = zext nneg i32 %i.afv to i64            ; 5 uses
  %min.iters.check991 = icmp ult i32 %i.afv, 4
  br i1 %min.iters.check991, label %.lr.ph44.i.i.i.i.preheader, label %vector.ph992

vector.ph992:                                     ; preds = %.lr.ph44.preheader.i.i.i.i
  %n.vec993 = and i64 %i.alp, 2147483644          ; 2 uses
  %i.alq = and i64 %i.alp, 3
  %broadcast.splatinsert994 = insertelement <2 x double> poison, double %i.alg, i64 0 ; 2 uses
  %i.alr = shufflevector <2 x double> %broadcast.splatinsert994, <2 x double> poison, <2 x i32> zeroinitializer
  %i.als = shufflevector <2 x double> %broadcast.splatinsert994, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph992
  %index997 = phi i64 [ 0, %vector.ph992 ], [ %index.next1006, %vector.body996 ] ; 2 uses
  %i.alt = sub i64 %i.alp, %index997
  %i.alu = getelementptr [8 x i8], ptr %i.o, i64 %i.alt ; 4 uses
  %i.alv = getelementptr i8, ptr %i.alu, i64 -16
  %i.alw = getelementptr i8, ptr %i.alu, i64 -32
  %wide.load = load <2 x double>, ptr %i.alv, align 8, !tbaa !29
  %wide.load998 = load <2 x double>, ptr %i.alw, align 8, !tbaa !29
  %i.alx = getelementptr i8, ptr %i.alu, i64 -8   ; 2 uses
  %i.aly = getelementptr i8, ptr %i.alu, i64 -24  ; 2 uses
  %wide.load1000 = load <2 x double>, ptr %i.alx, align 8, !tbaa !29
  %wide.load1001 = load <2 x double>, ptr %i.aly, align 8, !tbaa !29
  %reverse1004 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.alr, <2 x double> %wide.load1000)
  %reverse1005 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load998, <2 x double> %i.als, <2 x double> %wide.load1001)
  store <2 x double> %reverse1004, ptr %i.alx, align 8, !tbaa !29
  store <2 x double> %reverse1005, ptr %i.aly, align 8, !tbaa !29
  %index.next1006 = add nuw i64 %index997, 4      ; 2 uses
  %i.alz = icmp eq i64 %index.next1006, %n.vec993
  br i1 %i.alz, label %middle.block1007, label %vector.body996, !llvm.loop !269

middle.block1007:                                 ; preds = %vector.body996
  %cmp.n1008 = icmp eq i64 %n.vec993, %i.alp
  br i1 %cmp.n1008, label %.preheader.preheader.i.i.i.i.i, label %.lr.ph44.i.i.i.i.preheader

.lr.ph44.i.i.i.i.preheader:                       ; preds = %.lr.ph44.preheader.i.i.i.i, %middle.block1007
  %indvars.iv47.i.i.i.i.ph = phi i64 [ %i.alp, %.lr.ph44.preheader.i.i.i.i ], [ %i.alq, %middle.block1007 ]
  br label %.lr.ph44.i.i.i.i

.lr.ph44.i.i.i.i:                                 ; preds = %.lr.ph44.i.i.i.i.preheader, %.lr.ph44.i.i.i.i
  %indvars.iv47.i.i.i.i = phi i64 [ %indvars.iv.next48.i.i.i.i, %.lr.ph44.i.i.i.i ], [ %indvars.iv47.i.i.i.i.ph, %.lr.ph44.i.i.i.i.preheader ] ; 3 uses
  %i.ama = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv47.i.i.i.i ; 3 uses
  %i.amb = getelementptr i8, ptr %i.ama, i64 -8
  %i.amc = load double, ptr %i.amb, align 8, !tbaa !29
  %i.amd = load double, ptr %i.ama, align 8, !tbaa !29
  %i.ame = call double @llvm.fmuladd.f64(double %i.amc, double %i.alg, double %i.amd)
  store double %i.ame, ptr %i.ama, align 8, !tbaa !29
  %indvars.iv.next48.i.i.i.i = add nsw i64 %indvars.iv47.i.i.i.i, -1
  %i.amf = icmp samesign ugt i64 %indvars.iv47.i.i.i.i, 1
  br i1 %i.amf, label %.lr.ph44.i.i.i.i, label %.preheader.preheader.i.i.i.i.i, !llvm.loop !270

._crit_edge45.i.i.i.i:                            ; preds = %.preheader.i33.i.i.i
  %i.amg = icmp slt i32 %i.afv, 0
  br i1 %i.amg, label %cvAltSum.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.lr.ph44.i.i.i.i, %middle.block1007, %._crit_edge45.i.i.i.i
  %i.amh = add nuw i32 %i.afv, 1                  ; 2 uses
  %wide.trip.count.i.i34.i.i.i = zext i32 %i.amh to i64 ; 2 uses
  %xtraiter1176 = and i64 %wide.trip.count.i.i34.i.i.i, 1
  %i.ami = icmp eq i32 %i.afv, 0
  br i1 %i.ami, label %.preheader.i.i35.i.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.i.new

.preheader.preheader.i.i.i.i.i.new:               ; preds = %.preheader.preheader.i.i.i.i.i
  %unroll_iter1181 = and i64 %wide.trip.count.i.i34.i.i.i, 4294967294
  br label %.preheader.i.i35.i.i.i

.preheader.i.i35.i.i.i:                           ; preds = %.preheader.i.i35.i.i.i, %.preheader.preheader.i.i.i.i.i.new
  %indvars.iv.i.i36.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %indvars.iv.next.i.i39.i.i.i.1, %.preheader.i.i35.i.i.i ] ; 4 uses
  %.018.i.i37.i.i.i = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i.new ], [ %i.amw, %.preheader.i.i35.i.i.i ]
  %niter1182 = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %niter1182.next.1, %.preheader.i.i35.i.i.i ]
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i
  %i.amk = load double, ptr %i.amj, align 16, !tbaa !29
  %i.aml = trunc i64 %indvars.iv.i.i36.i.i.i to i32
  %i.amm = add i32 %i.aml, 2
  %i.amn = uitofp nneg i32 %i.amm to double
  %i.amo = fdiv double %i.amk, %i.amn
  %i.amp = fadd double %i.amo, %.018.i.i37.i.i.i
  %indvars.iv.next.i.i39.i.i.i = or disjoint i64 %indvars.iv.i.i36.i.i.i, 1 ; 2 uses
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i39.i.i.i
  %i.amr = load double, ptr %i.amq, align 8, !tbaa !29
  %i.ams = trunc i64 %indvars.iv.next.i.i39.i.i.i to i32
  %i.amt = add i32 %i.ams, 2
  %i.amu = uitofp nneg i32 %i.amt to double
  %i.amv = fdiv double %i.amr, %i.amu
  %i.amw = fsub double %i.amp, %i.amv             ; 3 uses
  %indvars.iv.next.i.i39.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i36.i.i.i, 2 ; 2 uses
  %niter1182.next.1 = add i64 %niter1182, 2       ; 2 uses
  %niter1182.ncmp.1 = icmp eq i64 %niter1182.next.1, %unroll_iter1181
  br i1 %niter1182.ncmp.1, label %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i35.i.i.i

cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa:         ; preds = %.preheader.i.i35.i.i.i
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1176, 0
  br i1 %lcmp.mod1178.not, label %cvAltSum.exit.i.i.i.i, label %.preheader.i.i35.i.i.i.epil.preheader

.preheader.i.i35.i.i.i.epil.preheader:            ; preds = %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i.i.i.i
  %indvars.iv.i.i36.i.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i39.i.i.i.1, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.018.i.i37.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i ], [ %i.amw, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1180 = trunc i32 %i.amh to i1
  call void @llvm.assume(i1 %lcmp.mod1180)
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i.epil.init
  %i.amy = load double, ptr %i.amx, align 8, !tbaa !29
  %i.amz = trunc i64 %indvars.iv.i.i36.i.i.i.epil.init to i32
  %i.ana = add i32 %i.amz, 2
  %i.anb = uitofp nneg i32 %i.ana to double
  %i.anc = fdiv double %i.amy, %i.anb
  %i.and = fadd double %i.anc, %.018.i.i37.i.i.i.epil.init
  br label %cvAltSum.exit.i.i.i.i

cvAltSum.exit.i.i.i.i:                            ; preds = %.preheader.i.i35.i.i.i.epil.preheader, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %._crit_edge45.i.i.i.i
  %.014.i.i.i.i.i = phi double [ 0.000000e+00, %._crit_edge45.i.i.i.i ], [ %i.amw, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.and, %.preheader.i.i35.i.i.i.epil.preheader ]
  %i.ane = fmul double %i.ale, %.014.i.i.i.i.i
  %i.anf = load i32, ptr %i.qq, align 8, !tbaa !80
  %i.ang = sitofp i32 %i.anf to double
  %i.anh = fdiv double %i.ane, %i.ang
  store double %i.anh, ptr %i.re, align 8, !tbaa !29
  br label %cvAdamsFinish.exit.i.i.i

cvAdamsFinish.exit.i.i.i:                         ; preds = %cvAltSum.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.ani = load double, ptr %i.rf, align 8, !tbaa !34
  %i.anj = fdiv double %i.ani, %i.alh
  br label %cvSetAdams.exit.i.i

cvSetAdams.exit.i.i:                              ; preds = %cvAdamsFinish.exit.i.i.i, %bb.hm
  %.sink.i.i.i = phi double [ %i.anj, %cvAdamsFinish.exit.i.i.i ], [ %i.afz, %bb.hm ]
  store double %.sink.i.i.i, ptr %i.rg, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  br label %bb.hv

bb.hr:                                            ; preds = %cvPredict.exit.i
  store <2 x double> splat (double 1.000000e+00), ptr %i.qx, align 8, !tbaa !29
  %.not86.i.i.i = icmp slt i32 %i.afv, 2
  br i1 %.not86.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.hr
  %i.ank = add nsw i32 %i.afv, -1
  %i.anl = zext nneg i32 %i.ank to i64
  %i.anm = shl nuw nsw i64 %i.anl, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.i.i, i8 0, i64 %i.anm, i1 false), !tbaa !29
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.preheader.i.i.i, %bb.hr
  %i.ann = load double, ptr %i.pj, align 8, !tbaa !197 ; 6 uses
  %i.ano = load i32, ptr %i.qs, align 8, !tbaa !303
  %.not79.i.i.i = icmp eq i32 %i.ano, 0           ; 2 uses
  %.not8088.i.i.i = icmp slt i32 %i.afv, 0
  %or.cond.i.i.i = or i1 %.not8088.i.i.i, %.not79.i.i.i
  br i1 %or.cond.i.i.i, label %.loopexit85.i.i.i, label %.lr.ph90.i.i.i

.lr.ph90.i.i.i:                                   ; preds = %._crit_edge.i.i.i
  %i.anp = add nuw i32 %i.afv, 1
  %wide.trip.count.i.i.i = zext i32 %i.anp to i64 ; 3 uses
  %min.iters.check1114 = icmp eq i32 %i.afv, 0
  br i1 %min.iters.check1114, label %scalar.ph1113.preheader, label %vector.ph1115

vector.ph1115:                                    ; preds = %.lr.ph90.i.i.i
  %n.vec1116 = and i64 %wide.trip.count.i.i.i, 4294967294 ; 3 uses
  br label %vector.body1117

vector.body1117:                                  ; preds = %vector.body1117, %vector.ph1115
  %index1118 = phi i64 [ 0, %vector.ph1115 ], [ %index.next1120, %vector.body1117 ] ; 3 uses
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %index1118
  %wide.load1119 = load <2 x double>, ptr %i.anq, align 8, !tbaa !29
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %index1118
  store <2 x double> %wide.load1119, ptr %i.anr, align 8, !tbaa !29
  %index.next1120 = add nuw i64 %index1118, 2     ; 2 uses
  %i.ans = icmp eq i64 %index.next1120, %n.vec1116
  br i1 %i.ans, label %middle.block1121, label %vector.body1117, !llvm.loop !271

middle.block1121:                                 ; preds = %vector.body1117
  %cmp.n1122 = icmp eq i64 %n.vec1116, %wide.trip.count.i.i.i
  br i1 %cmp.n1122, label %.loopexit85.i.i.i, label %scalar.ph1113.preheader

scalar.ph1113.preheader:                          ; preds = %.lr.ph90.i.i.i, %middle.block1121
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph90.i.i.i ], [ %n.vec1116, %middle.block1121 ]
  br label %scalar.ph1113

scalar.ph1113:                                    ; preds = %scalar.ph1113.preheader, %scalar.ph1113
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph1113 ], [ %indvars.iv.i.i.i.ph, %scalar.ph1113.preheader ] ; 3 uses
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.i.i.i
  %i.anu = load double, ptr %i.ant, align 8, !tbaa !29
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv.i.i.i
  store double %i.anu, ptr %i.anv, align 8, !tbaa !29
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit85.i.i.i, label %scalar.ph1113, !llvm.loop !272

.loopexit85.i.i.i:                                ; preds = %scalar.ph1113, %middle.block1121, %._crit_edge.i.i.i
  %i.anw = icmp sgt i32 %i.afv, 1                 ; 2 uses
  br i1 %i.anw, label %.preheader83.i.i.i, label %.loopexit85..loopexit_crit_edge.i.i.i

.loopexit85..loopexit_crit_edge.i.i.i:            ; preds = %.loopexit85.i.i.i
  %.pre123.i.i.i = sitofp i32 %i.afv to double
  br label %.loopexit.i.i.i

.preheader83.i.i.i:                               ; preds = %.loopexit85.i.i.i
  %.not.i.i.i = icmp eq i32 %i.afv, 2
  br i1 %.not.i.i.i, label %._crit_edge96.i.i.i, label %.lr.ph95.preheader.i.i.i

.lr.ph95.preheader.i.i.i:                         ; preds = %.preheader83.i.i.i
  %wide.trip.count114.i.i.i = zext nneg i32 %i.afv to i64 ; 2 uses
  br label %.lr.ph95.i.i.i

.lr.ph95.i.i.i:                                   ; preds = %.loopexit1125, %.lr.ph95.preheader.i.i.i
  %indvars.iv108.i.i.i = phi i64 [ 2, %.lr.ph95.preheader.i.i.i ], [ %indvars.iv.next109.i.i.i, %.loopexit1125 ] ; 9 uses
  %.07193.i.i.i = phi double [ %i.ann, %.lr.ph95.preheader.i.i.i ], [ %i.aoa, %.loopexit1125 ]
  %.07692.i.i.i = phi double [ -1.000000e+00, %.lr.ph95.preheader.i.i.i ], [ %i.api, %.loopexit1125 ]
  %i.anx = getelementptr [8 x i8], ptr %0, i64 %indvars.iv108.i.i.i
  %i.any = getelementptr i8, ptr %i.anx, i64 1040
  %i.anz = load double, ptr %i.any, align 8, !tbaa !29
  %i.aoa = fadd double %.07193.i.i.i, %i.anz      ; 3 uses
  %i.aob = fdiv double %i.ann, %i.aoa             ; 4 uses
  %min.iters.check1092 = icmp samesign ult i64 %indvars.iv108.i.i.i, 4
  br i1 %min.iters.check1092, label %scalar.ph1091, label %vector.ph1093

vector.ph1093:                                    ; preds = %.lr.ph95.i.i.i
  %n.vec1094 = and i64 %indvars.iv108.i.i.i, 9223372036854775804 ; 2 uses
  %i.aoc = and i64 %indvars.iv108.i.i.i, 3
  %broadcast.splatinsert1095 = insertelement <2 x double> poison, double %i.aob, i64 0 ; 2 uses
  %i.aod = shufflevector <2 x double> %broadcast.splatinsert1095, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aoe = shufflevector <2 x double> %broadcast.splatinsert1095, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1097

vector.body1097:                                  ; preds = %vector.body1097, %vector.ph1093
  %index1098 = phi i64 [ 0, %vector.ph1093 ], [ %index.next1109, %vector.body1097 ] ; 2 uses
  %i.aof = sub i64 %indvars.iv108.i.i.i, %index1098
  %i.aog = getelementptr [8 x i8], ptr %i.qx, i64 %i.aof ; 4 uses
  %i.aoh = getelementptr i8, ptr %i.aog, i64 -16
  %i.aoi = getelementptr i8, ptr %i.aog, i64 -32
  %wide.load1099 = load <2 x double>, ptr %i.aoh, align 8, !tbaa !29
  %wide.load1100 = load <2 x double>, ptr %i.aoi, align 8, !tbaa !29
  %i.aoj = getelementptr i8, ptr %i.aog, i64 -8   ; 2 uses
  %i.aok = getelementptr i8, ptr %i.aog, i64 -24  ; 2 uses
  %wide.load1103 = load <2 x double>, ptr %i.aoj, align 8, !tbaa !29
  %wide.load1104 = load <2 x double>, ptr %i.aok, align 8, !tbaa !29
  %reverse1107 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1099, <2 x double> %i.aod, <2 x double> %wide.load1103)
  %reverse1108 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1100, <2 x double> %i.aoe, <2 x double> %wide.load1104)
  store <2 x double> %reverse1107, ptr %i.aoj, align 8, !tbaa !29
  store <2 x double> %reverse1108, ptr %i.aok, align 8, !tbaa !29
  %index.next1109 = add nuw i64 %index1098, 4     ; 2 uses
  %i.aol = icmp eq i64 %index.next1109, %n.vec1094
  br i1 %i.aol, label %middle.block1110, label %vector.body1097, !llvm.loop !273

middle.block1110:                                 ; preds = %vector.body1097
  %cmp.n1111 = icmp eq i64 %indvars.iv108.i.i.i, %n.vec1094
  br i1 %cmp.n1111, label %.loopexit1125, label %scalar.ph1091

scalar.ph1091:                                    ; preds = %middle.block1110, %.lr.ph95.i.i.i
  %indvars.iv110.i.i.i.ph = phi i64 [ %indvars.iv108.i.i.i, %.lr.ph95.i.i.i ], [ %i.aoc, %middle.block1110 ] ; 5 uses
  %i.aom = getelementptr [8 x i8], ptr %i.qx, i64 %indvars.iv110.i.i.i.ph ; 3 uses
  %i.aon = getelementptr i8, ptr %i.aom, i64 -8
  %i.aoo = load double, ptr %i.aon, align 8, !tbaa !29
  %i.aop = load double, ptr %i.aom, align 8, !tbaa !29
  %i.aoq = call double @llvm.fmuladd.f64(double %i.aoo, double %i.aob, double %i.aop)
  store double %i.aoq, ptr %i.aom, align 8, !tbaa !29
  %i.aor = icmp samesign ugt i64 %indvars.iv110.i.i.i.ph, 1
  br i1 %i.aor, label %scalar.ph1091.1, label %.loopexit1125

scalar.ph1091.1:                                  ; preds = %scalar.ph1091
  %i.aos = getelementptr [8 x i8], ptr %i.qx, i64 %indvars.iv110.i.i.i.ph ; 2 uses
  %i.aot = getelementptr i8, ptr %i.aos, i64 -8   ; 2 uses
  %i.aou = getelementptr i8, ptr %i.aos, i64 -16
  %i.aov = load double, ptr %i.aou, align 8, !tbaa !29
  %i.aow = load double, ptr %i.aot, align 8, !tbaa !29
  %i.aox = call double @llvm.fmuladd.f64(double %i.aov, double %i.aob, double %i.aow)
  store double %i.aox, ptr %i.aot, align 8, !tbaa !29
  %i.aoy = icmp eq i64 %indvars.iv110.i.i.i.ph, 3
  br i1 %i.aoy, label %scalar.ph1091.2, label %.loopexit1125

scalar.ph1091.2:                                  ; preds = %scalar.ph1091.1
  %i.aoz = getelementptr [8 x i8], ptr %i.qx, i64 %indvars.iv110.i.i.i.ph ; 2 uses
  %i.apa = getelementptr i8, ptr %i.aoz, i64 -16  ; 2 uses
  %i.apb = getelementptr i8, ptr %i.aoz, i64 -24
  %i.apc = load double, ptr %i.apb, align 8, !tbaa !29
  %i.apd = load double, ptr %i.apa, align 8, !tbaa !29
  %i.ape = call double @llvm.fmuladd.f64(double %i.apc, double %i.aob, double %i.apd)
  store double %i.ape, ptr %i.apa, align 8, !tbaa !29
  br label %.loopexit1125

.loopexit1125:                                    ; preds = %scalar.ph1091, %scalar.ph1091.1, %scalar.ph1091.2, %middle.block1110
  %i.apf = trunc nuw nsw i64 %indvars.iv108.i.i.i to i32
  %i.apg = uitofp nneg i32 %i.apf to double
  %i.aph = fdiv double 1.000000e+00, %i.apg
  %i.api = fsub double %.07692.i.i.i, %i.aph      ; 2 uses
  %indvars.iv.next109.i.i.i = add nuw nsw i64 %indvars.iv108.i.i.i, 1 ; 2 uses
  %exitcond115.not.i.i.i = icmp eq i64 %indvars.iv.next109.i.i.i, %wide.trip.count114.i.i.i
  br i1 %exitcond115.not.i.i.i, label %._crit_edge96.loopexit.i.i.i, label %.lr.ph95.i.i.i

._crit_edge96.loopexit.i.i.i:                     ; preds = %.loopexit1125
  %.pre.i.i.i = load double, ptr %i.qy, align 8, !tbaa !29
  br label %._crit_edge96.i.i.i

._crit_edge96.i.i.i:                              ; preds = %._crit_edge96.loopexit.i.i.i, %.preheader83.i.i.i
  %.pre-phi.i.i.i = phi i64 [ %wide.trip.count114.i.i.i, %._crit_edge96.loopexit.i.i.i ], [ 2, %.preheader83.i.i.i ] ; 11 uses
  %i.apj = phi double [ %.pre.i.i.i, %._crit_edge96.loopexit.i.i.i ], [ 1.000000e+00, %.preheader83.i.i.i ]
  %.076.lcssa.i.i.i = phi double [ %i.api, %._crit_edge96.loopexit.i.i.i ], [ -1.000000e+00, %.preheader83.i.i.i ]
  %.071.lcssa.i.i.i = phi double [ %i.aoa, %._crit_edge96.loopexit.i.i.i ], [ %i.ann, %.preheader83.i.i.i ]
  %i.apk = uitofp nneg i32 %i.afv to double       ; 3 uses
  %i.apl = fdiv double 1.000000e+00, %i.apk
  %i.apm = fsub double %.076.lcssa.i.i.i, %i.apl  ; 3 uses
  %i.apn = fneg double %i.apj                     ; 2 uses
  %i.apo = fsub double %i.apn, %i.apm             ; 4 uses
  %i.app = getelementptr [8 x i8], ptr %0, i64 %.pre-phi.i.i.i
  %i.apq = getelementptr i8, ptr %i.app, i64 1040
  %i.apr = load double, ptr %i.apq, align 8, !tbaa !29
  %i.aps = fadd double %.071.lcssa.i.i.i, %i.apr  ; 3 uses
  %i.apt = fdiv double %i.ann, %i.aps             ; 5 uses
  %i.apu = fsub double %i.apn, %i.apt             ; 2 uses
  br i1 %.not79.i.i.i, label %.lr.ph103.preheader.i.i.i, label %.lr.ph100.i.i.i.preheader

.lr.ph100.i.i.i.preheader:                        ; preds = %._crit_edge96.i.i.i
  %i.apv = call i64 @llvm.smax.i64(i64 %.pre-phi.i.i.i, i64 1) ; 2 uses
  %min.iters.check1070 = icmp samesign ult i64 %.pre-phi.i.i.i, 4
  br i1 %min.iters.check1070, label %.lr.ph100.i.i.i.preheader1126, label %vector.ph1071

vector.ph1071:                                    ; preds = %.lr.ph100.i.i.i.preheader
  %n.vec1072 = and i64 %i.apv, 2147483644         ; 3 uses
  %i.apw = sub nsw i64 %.pre-phi.i.i.i, %n.vec1072
  %broadcast.splatinsert1073 = insertelement <2 x double> poison, double %i.apt, i64 0 ; 2 uses
  %i.apx = shufflevector <2 x double> %broadcast.splatinsert1073, <2 x double> poison, <2 x i32> zeroinitializer
  %i.apy = shufflevector <2 x double> %broadcast.splatinsert1073, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %vector.ph1071
  %index1076 = phi i64 [ 0, %vector.ph1071 ], [ %index.next1087, %vector.body1075 ] ; 2 uses
  %i.apz = sub i64 %.pre-phi.i.i.i, %index1076    ; 2 uses
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.apz ; 2 uses
  %i.aqb = getelementptr inbounds i8, ptr %i.aqa, i64 -8
  %i.aqc = getelementptr inbounds i8, ptr %i.aqa, i64 -24
  %wide.load1077 = load <2 x double>, ptr %i.aqb, align 8, !tbaa !29
  %wide.load1078 = load <2 x double>, ptr %i.aqc, align 8, !tbaa !29
  %i.aqd = getelementptr [8 x i8], ptr %i.qz, i64 %i.apz ; 4 uses
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 -16
  %i.aqf = getelementptr i8, ptr %i.aqd, i64 -32
  %wide.load1081 = load <2 x double>, ptr %i.aqe, align 8, !tbaa !29
  %wide.load1082 = load <2 x double>, ptr %i.aqf, align 8, !tbaa !29
  %i.aqg = getelementptr i8, ptr %i.aqd, i64 -8
  %i.aqh = getelementptr i8, ptr %i.aqd, i64 -24
  %reverse1085 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1081, <2 x double> %i.apx, <2 x double> %wide.load1077)
  %reverse1086 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1082, <2 x double> %i.apy, <2 x double> %wide.load1078)
  store <2 x double> %reverse1085, ptr %i.aqg, align 8, !tbaa !29
  store <2 x double> %reverse1086, ptr %i.aqh, align 8, !tbaa !29
  %index.next1087 = add nuw i64 %index1076, 4     ; 2 uses
  %i.aqi = icmp eq i64 %index.next1087, %n.vec1072
  br i1 %i.aqi, label %middle.block1088, label %vector.body1075, !llvm.loop !274

middle.block1088:                                 ; preds = %vector.body1075
  %cmp.n1089 = icmp eq i64 %i.apv, %n.vec1072
  br i1 %cmp.n1089, label %.lr.ph103.preheader.i.i.i, label %.lr.ph100.i.i.i.preheader1126

.lr.ph100.i.i.i.preheader1126:                    ; preds = %.lr.ph100.i.i.i.preheader, %middle.block1088
  %indvars.iv116.i.i.i.ph = phi i64 [ %.pre-phi.i.i.i, %.lr.ph100.i.i.i.preheader ], [ %i.apw, %middle.block1088 ]
  br label %.lr.ph100.i.i.i

.lr.ph100.i.i.i:                                  ; preds = %.lr.ph100.i.i.i.preheader1126, %.lr.ph100.i.i.i
  %indvars.iv116.i.i.i = phi i64 [ %indvars.iv.next117.i.i.i, %.lr.ph100.i.i.i ], [ %indvars.iv116.i.i.i.ph, %.lr.ph100.i.i.i.preheader1126 ] ; 4 uses
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv116.i.i.i
  %i.aqk = load double, ptr %i.aqj, align 8, !tbaa !29
  %i.aql = getelementptr [8 x i8], ptr %i.qz, i64 %indvars.iv116.i.i.i ; 2 uses
  %i.aqm = getelementptr i8, ptr %i.aql, i64 -8
  %i.aqn = load double, ptr %i.aqm, align 8, !tbaa !29
  %i.aqo = call double @llvm.fmuladd.f64(double %i.aqn, double %i.apt, double %i.aqk)
  store double %i.aqo, ptr %i.aql, align 8, !tbaa !29
  %indvars.iv.next117.i.i.i = add nsw i64 %indvars.iv116.i.i.i, -1
  %i.aqp = icmp sgt i64 %indvars.iv116.i.i.i, 1
  br i1 %i.aqp, label %.lr.ph100.i.i.i, label %.lr.ph103.preheader.i.i.i, !llvm.loop !275

.lr.ph103.preheader.i.i.i:                        ; preds = %.lr.ph100.i.i.i, %middle.block1088, %._crit_edge96.i.i.i
  %i.aqq = call i64 @llvm.smax.i64(i64 %.pre-phi.i.i.i, i64 1) ; 2 uses
  %min.iters.check1048 = icmp samesign ult i64 %.pre-phi.i.i.i, 4
  br i1 %min.iters.check1048, label %.lr.ph103.i.i.i.preheader, label %vector.ph1049

vector.ph1049:                                    ; preds = %.lr.ph103.preheader.i.i.i
  %n.vec1050 = and i64 %i.aqq, 2147483644         ; 3 uses
  %i.aqr = sub nsw i64 %.pre-phi.i.i.i, %n.vec1050
  %broadcast.splatinsert1051 = insertelement <2 x double> poison, double %i.apo, i64 0 ; 2 uses
  %i.aqs = shufflevector <2 x double> %broadcast.splatinsert1051, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aqt = shufflevector <2 x double> %broadcast.splatinsert1051, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1053

vector.body1053:                                  ; preds = %vector.body1053, %vector.ph1049
  %index1054 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1065, %vector.body1053 ] ; 2 uses
  %i.aqu = sub i64 %.pre-phi.i.i.i, %index1054
  %i.aqv = getelementptr [8 x i8], ptr %i.qx, i64 %i.aqu ; 4 uses
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 -16
  %i.aqx = getelementptr i8, ptr %i.aqv, i64 -32
  %wide.load1055 = load <2 x double>, ptr %i.aqw, align 8, !tbaa !29
  %wide.load1056 = load <2 x double>, ptr %i.aqx, align 8, !tbaa !29
  %i.aqy = getelementptr i8, ptr %i.aqv, i64 -8   ; 2 uses
  %i.aqz = getelementptr i8, ptr %i.aqv, i64 -24  ; 2 uses
  %wide.load1059 = load <2 x double>, ptr %i.aqy, align 8, !tbaa !29
  %wide.load1060 = load <2 x double>, ptr %i.aqz, align 8, !tbaa !29
  %reverse1063 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1055, <2 x double> %i.aqs, <2 x double> %wide.load1059)
  %reverse1064 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1056, <2 x double> %i.aqt, <2 x double> %wide.load1060)
  store <2 x double> %reverse1063, ptr %i.aqy, align 8, !tbaa !29
  store <2 x double> %reverse1064, ptr %i.aqz, align 8, !tbaa !29
  %index.next1065 = add nuw i64 %index1054, 4     ; 2 uses
  %i.ara = icmp eq i64 %index.next1065, %n.vec1050
  br i1 %i.ara, label %middle.block1066, label %vector.body1053, !llvm.loop !276

middle.block1066:                                 ; preds = %vector.body1053
  %cmp.n1067 = icmp eq i64 %i.aqq, %n.vec1050
  br i1 %cmp.n1067, label %.loopexit.i.i.i, label %.lr.ph103.i.i.i.preheader

.lr.ph103.i.i.i.preheader:                        ; preds = %.lr.ph103.preheader.i.i.i, %middle.block1066
  %indvars.iv119.i.i.i.ph = phi i64 [ %.pre-phi.i.i.i, %.lr.ph103.preheader.i.i.i ], [ %i.aqr, %middle.block1066 ]
  br label %.lr.ph103.i.i.i

.lr.ph103.i.i.i:                                  ; preds = %.lr.ph103.i.i.i.preheader, %.lr.ph103.i.i.i
  %indvars.iv119.i.i.i = phi i64 [ %indvars.iv.next120.i.i.i, %.lr.ph103.i.i.i ], [ %indvars.iv119.i.i.i.ph, %.lr.ph103.i.i.i.preheader ] ; 3 uses
  %i.arb = getelementptr [8 x i8], ptr %i.qx, i64 %indvars.iv119.i.i.i ; 3 uses
  %i.arc = getelementptr i8, ptr %i.arb, i64 -8
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !29
  %i.are = load double, ptr %i.arb, align 8, !tbaa !29
  %i.arf = call double @llvm.fmuladd.f64(double %i.ard, double %i.apo, double %i.are)
  store double %i.arf, ptr %i.arb, align 8, !tbaa !29
  %indvars.iv.next120.i.i.i = add nsw i64 %indvars.iv119.i.i.i, -1
  %i.arg = icmp sgt i64 %indvars.iv119.i.i.i, 1
  br i1 %i.arg, label %.lr.ph103.i.i.i, label %.loopexit.i.i.i, !llvm.loop !277

.loopexit.i.i.i:                                  ; preds = %.lr.ph103.i.i.i, %middle.block1066, %.loopexit85..loopexit_crit_edge.i.i.i
  %.pre-phi124.i.i.i = phi double [ %.pre123.i.i.i, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apk, %middle.block1066 ], [ %i.apk, %.lr.ph103.i.i.i ]
  %.177.i.i.i = phi double [ -1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apm, %middle.block1066 ], [ %i.apm, %.lr.ph103.i.i.i ] ; 4 uses
  %.075.i.i.i = phi double [ -1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apu, %middle.block1066 ], [ %i.apu, %.lr.ph103.i.i.i ] ; 3 uses
  %.074.i.i.i = phi double [ 1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apt, %middle.block1066 ], [ %i.apt, %.lr.ph103.i.i.i ] ; 2 uses
  %.073.i.i.i = phi double [ 1.000000e+00, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.apo, %middle.block1066 ], [ %i.apo, %.lr.ph103.i.i.i ] ; 2 uses
  %.172.i.i.i = phi double [ %i.ann, %.loopexit85..loopexit_crit_edge.i.i.i ], [ %i.aps, %middle.block1066 ], [ %i.aps, %.lr.ph103.i.i.i ]
  %i.arh = fsub double 1.000000e+00, %.075.i.i.i
  %i.ari = fadd double %.177.i.i.i, %i.arh        ; 2 uses
  %i.arj = call double @llvm.fmuladd.f64(double %.pre-phi124.i.i.i, double %i.ari, double 1.000000e+00) ; 3 uses
  %i.ark = fmul double %.177.i.i.i, %i.arj
  %i.arl = fdiv double %i.ari, %i.ark
  %i.arm = call double @llvm.fabs.f64(double %i.arl) ; 2 uses
  store double %i.arm, ptr %i.ra, align 8, !tbaa !29
  %i.arn = fmul double %.073.i.i.i, %i.arj
  %i.aro = sext i32 %i.afv to i64                 ; 2 uses
  %i.arp = getelementptr inbounds [8 x i8], ptr %i.qx, i64 %i.aro
  %i.arq = load double, ptr %i.arp, align 8, !tbaa !29 ; 2 uses
  %i.arr = fmul double %.074.i.i.i, %i.arq
  %i.ars = fdiv double %i.arn, %i.arr
  %i.art = call double @llvm.fabs.f64(double %i.ars)
  store double %i.art, ptr %i.rb, align 8, !tbaa !29
  %i.aru = load i32, ptr %i.qr, align 4, !tbaa !81
  %i.arv = icmp eq i32 %i.aru, 1
  br i1 %i.arv, label %bb.hs, label %cvSetBDF.exit.i.i

bb.hs:                                            ; preds = %.loopexit.i.i.i
  br i1 %i.anw, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.arw = fdiv double %.073.i.i.i, %i.arq
  %5 = uitofp nneg i32 %i.afv to double
  %i.arx = fdiv double 1.000000e+00, %5
  %i.ary = fadd double %i.arx, %.177.i.i.i        ; 2 uses
  %i.arz = fadd double %.075.i.i.i, %.074.i.i.i
  %i.asa = fsub double 1.000000e+00, %i.arz
  %i.asb = fadd double %i.ary, %i.asa
  %i.asc = fdiv double %i.asb, %i.ary
  %i.asd = fmul double %i.asc, %i.arw
  %i.ase = call double @llvm.fabs.f64(double %i.asd)
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %.sink.i.i.i.i = phi double [ %i.ase, %bb.ht ], [ 1.000000e+00, %bb.hs ]
  store double %.sink.i.i.i.i, ptr %i.rc, align 8, !tbaa !29
  %i.asf = getelementptr inbounds [8 x i8], ptr %i.rd, i64 %i.aro
  %i.asg = load double, ptr %i.asf, align 8, !tbaa !29
  %i.ash = fadd double %.172.i.i.i, %i.asg
  %i.asi = fdiv double %i.ann, %i.ash             ; 2 uses
  %i.asj = add nsw i32 %i.afv, 1
  %6 = sitofp i32 %i.asj to double
  %i.ask = fdiv double 1.000000e+00, %6
  %i.asl = fsub double %.177.i.i.i, %i.ask        ; 2 uses
  %i.asm = fsub double %i.asi, %.075.i.i.i
  %i.asn = fadd double %i.asm, 1.000000e+00
  %i.aso = fadd double %i.asl, %i.asn
  %i.asp = fdiv double %i.aso, %i.arj
  %i.asq = add nsw i32 %i.afv, 2
  %7 = sitofp i32 %i.asq to double
  %i.asr = fmul double %i.asi, %7
  %i.ass = fmul double %i.asl, %i.asr
  %i.ast = fdiv double %i.asp, %i.ass
  %i.asu = call double @llvm.fabs.f64(double %i.ast)
  store double %i.asu, ptr %i.re, align 8, !tbaa !29
  br label %cvSetBDF.exit.i.i

cvSetBDF.exit.i.i:                                ; preds = %bb.hu, %.loopexit.i.i.i
  %i.asv = load double, ptr %i.rf, align 8, !tbaa !34
  %i.asw = fdiv double %i.asv, %i.arm
  store double %i.asw, ptr %i.rg, align 8, !tbaa !29
  br label %bb.hv

bb.hv:                                            ; preds = %cvSetBDF.exit.i.i, %cvSetAdams.exit.i.i, %cvPredict.exit.i
  %i.asx = load double, ptr %i.qy, align 8, !tbaa !29
  %i.asy = fdiv double 1.000000e+00, %i.asx       ; 2 uses
  store double %i.asy, ptr %i.rh, align 8, !tbaa !316
  %i.asz = load double, ptr %i.pj, align 8, !tbaa !197
  %i.ata = fmul double %i.asy, %i.asz             ; 3 uses
  store double %i.ata, ptr %i.ri, align 8, !tbaa !317
  %i.atb = load i64, ptr %i.aj, align 8, !tbaa !301 ; 3 uses
  %i.atc = icmp eq i64 %i.atb, 0                  ; 2 uses
  br i1 %i.atc, label %.thread.i.i, label %bb.hw

.thread.i.i:                                      ; preds = %bb.hv
  store double %i.ata, ptr %i.rj, align 8, !tbaa !318
  br label %cvSet.exit.i

bb.hw:                                            ; preds = %bb.hv
  %i.atd = icmp sgt i64 %i.atb, 0
  br i1 %i.atd, label %bb.hx, label %cvSet.exit.i

bb.hx:                                            ; preds = %bb.hw
  %i.ate = load double, ptr %i.rj, align 8, !tbaa !318
  %i.atf = fdiv double %i.ata, %i.ate
  br label %cvSet.exit.i

cvSet.exit.i:                                     ; preds = %bb.hx, %bb.hw, %.thread.i.i
  %i.atg = phi double [ %i.atf, %bb.hx ], [ 1.000000e+00, %bb.hw ], [ 1.000000e+00, %.thread.i.i ] ; 2 uses
  store double %i.atg, ptr %i.rk, align 8, !tbaa !319
  %i.ath = load i32, ptr %i.t, align 4, !tbaa !56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  store i64 0, ptr %i.m, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  store i64 0, ptr %i.n, align 8, !tbaa !65
  %i.ati = load i32, ptr %i.pv, align 4, !tbaa !141
  %.not.i246.i = icmp eq i32 %i.ati, 0
  br i1 %.not.i246.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %cvSet.exit.i
  %i.atj = load i32, ptr %i.ql, align 4, !tbaa !130
  %i.atk = icmp eq i32 %i.atj, 1
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %cvSet.exit.i
  %i.atl = phi i1 [ false, %cvSet.exit.i ], [ %i.atk, %bb.hy ] ; 3 uses
  %i.atm = load ptr, ptr %i.rl, align 8, !tbaa !320
  %.not80.i.i = icmp eq ptr %i.atm, null
  br i1 %.not80.i.i, label %bb.ih, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.atn = icmp eq i32 %i.ath, 6
  %i.ato = icmp eq i32 %i.ath, 9
  %i.atp = or i1 %i.atn, %i.ato
  %i.atq = select i1 %i.atp, i32 0, i32 2
  store i32 %i.atq, ptr %i.rm, align 8, !tbaa !321
  switch i32 %i.ath, label %bb.ib [
    i32 9, label %bb.if
    i32 7, label %bb.if
  ]

bb.ib:                                            ; preds = %bb.ia
  br i1 %i.atc, label %bb.if, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.atr = load i32, ptr %i.qp, align 8, !tbaa !310
  %.not81.i.i = icmp eq i32 %i.atr, 0
  br i1 %.not81.i.i, label %bb.id, label %bb.if

bb.id:                                            ; preds = %bb.ic
  %i.ats = load i64, ptr %i.rn, align 8, !tbaa !104
  %i.att = load i64, ptr %i.ro, align 8, !tbaa !35
  %i.atu = add nsw i64 %i.att, %i.ats
  %.not82.i.i = icmp slt i64 %i.atb, %i.atu
  br i1 %.not82.i.i, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.atv = fadd double %i.atg, -1.000000e+00
  %i.atw = call double @llvm.fabs.f64(double %i.atv)
  %i.atx = load double, ptr %i.rp, align 8, !tbaa !36
  %i.aty = fcmp ogt double %i.atw, %i.atx
  %i.atz = zext i1 %i.aty to i32
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.ia
  %i.aua = phi i32 [ 1, %bb.id ], [ 1, %bb.ic ], [ 1, %bb.ib ], [ %i.atz, %bb.ie ], [ 1, %bb.ia ], [ 1, %bb.ia ]
  %i.aub = load i32, ptr %i.rq, align 8, !tbaa !87
  %.not83.i.i = icmp eq i32 %i.aub, 0
  br i1 %.not83.i.i, label %bb.ii, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  store i32 2, ptr %i.rm, align 8, !tbaa !321
  br label %bb.ii

bb.ih:                                            ; preds = %bb.hz
  store <2 x double> splat (double 1.000000e+00), ptr %i.rr, align 8, !tbaa !29
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig, %bb.if
  %.0.i.i = phi i32 [ 1, %bb.ig ], [ %i.aua, %bb.if ], [ 0, %bb.ih ] ; 2 uses
  br i1 %i.atl, label %bb.ij, label %.thread.i247.i

bb.ij:                                            ; preds = %bb.ii
  %i.auc = load ptr, ptr %i.rv, align 8, !tbaa !204
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.auc) #13
  %i.aud = load ptr, ptr %i.rt, align 8, !tbaa !205 ; 2 uses
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 16
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !324
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 16
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !326
  %.not84.i.i = icmp eq ptr %i.auh, null
  br i1 %.not84.i.i, label %.thread95.i.i, label %bb.ik

.thread.i247.i:                                   ; preds = %bb.ii
  %i.aui = load ptr, ptr %i.ru, align 8, !tbaa !68
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.aui) #13
  %i.auj = load ptr, ptr %i.rt, align 8, !tbaa !205 ; 3 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 16
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !324
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 16
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !326
  %.not8489.i.i = icmp eq ptr %i.aun, null
  br i1 %.not8489.i.i, label %.thread91.i.i, label %.thread90.i.i

bb.ik:                                            ; preds = %bb.ij
  %i.auo = load ptr, ptr %i.rv, align 8, !tbaa !204
  %i.aup = call i32 @SUNNonlinSolSetup(ptr noundef nonnull %i.aud, ptr noundef %i.auo, ptr noundef nonnull %0) #13
  br label %bb.il

.thread90.i.i:                                    ; preds = %.thread.i247.i
  %i.auq = load ptr, ptr %i.ru, align 8, !tbaa !68
  %i.aur = call i32 @SUNNonlinSolSetup(ptr noundef nonnull %i.auj, ptr noundef %i.auq, ptr noundef nonnull %0) #13
  br label %bb.il

bb.il:                                            ; preds = %.thread90.i.i, %bb.ik
  %.077.i.i = phi i32 [ %i.aup, %bb.ik ], [ %i.aur, %.thread90.i.i ] ; 2 uses
  %i.aus = icmp slt i32 %.077.i.i, 0
  br i1 %i.aus, label %cvNls.exit.i, label %bb.im

bb.im:                                            ; preds = %bb.il
  %.not85.i.i = icmp eq i32 %.077.i.i, 0
  br i1 %.not85.i.i, label %bb.in, label %cvNls.exit.i

bb.in:                                            ; preds = %bb.im
  br i1 %i.atl, label %.thread95.i.i, label %..thread91_crit_edge.i.i

..thread91_crit_edge.i.i:                         ; preds = %bb.in
  %.pre.i248.i = load ptr, ptr %i.rt, align 8, !tbaa !205
  br label %.thread91.i.i

.thread95.i.i:                                    ; preds = %bb.in, %bb.ij
  %i.aut = load ptr, ptr %i.rx, align 8, !tbaa !158
  %i.auu = load ptr, ptr %i.ry, align 8, !tbaa !206
  %i.auv = load ptr, ptr %i.rv, align 8, !tbaa !204
  %i.auw = load ptr, ptr %i.rz, align 8, !tbaa !207
  %i.aux = load double, ptr %i.rg, align 8, !tbaa !29
  %i.auy = call i32 @SUNNonlinSolSolve(ptr noundef %i.aut, ptr noundef %i.auu, ptr noundef %i.auv, ptr noundef %i.auw, double noundef %i.aux, i32 noundef %.0.i.i, ptr noundef nonnull %0) #13
  br label %bb.io

.thread91.i.i:                                    ; preds = %..thread91_crit_edge.i.i, %.thread.i247.i
  %i.auz = phi ptr [ %.pre.i248.i, %..thread91_crit_edge.i.i ], [ %i.auj, %.thread.i247.i ]
  %i.ava = load ptr, ptr %i.po, align 8, !tbaa !52
  %i.avb = load ptr, ptr %i.ru, align 8, !tbaa !68
  %i.avc = load ptr, ptr %i.pp, align 8, !tbaa !58
  %i.avd = load double, ptr %i.rg, align 8, !tbaa !29
  %i.ave = call i32 @SUNNonlinSolSolve(ptr noundef %i.auz, ptr noundef %i.ava, ptr noundef %i.avb, ptr noundef %i.avc, double noundef %i.avd, i32 noundef %.0.i.i, ptr noundef nonnull %0) #13
  br label %bb.io

bb.io:                                            ; preds = %.thread91.i.i, %.thread95.i.i
  %.sink.in.i.i = phi ptr [ %i.rt, %.thread91.i.i ], [ %i.rx, %.thread95.i.i ] ; 2 uses
  %.1.i.i624 = phi i32 [ %i.ave, %.thread91.i.i ], [ %i.auy, %.thread95.i.i ] ; 2 uses
  %.sink.i625 = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !327
  %i.avf = call i32 @SUNNonlinSolGetNumIters(ptr noundef %.sink.i625, ptr noundef nonnull %i.m) #13 ; 0 uses
  %i.avg = load i64, ptr %i.m, align 8, !tbaa !65
  %i.avh = load i64, ptr %i.rw, align 8, !tbaa !90
  %i.avi = add nsw i64 %i.avh, %i.avg
  store i64 %i.avi, ptr %i.rw, align 8, !tbaa !90
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 8, !tbaa !327
  %i.avj = call i32 @SUNNonlinSolGetNumConvFails(ptr noundef %.sink.i.i, ptr noundef nonnull %i.n) #13 ; 0 uses
  %i.avk = load i64, ptr %i.n, align 8, !tbaa !65
  %i.avl = load i64, ptr %i.sa, align 8, !tbaa !91
  %i.avm = add nsw i64 %i.avl, %i.avk
  store i64 %i.avm, ptr %i.sa, align 8, !tbaa !91
  %.not86.i.i = icmp eq i32 %.1.i.i624, 0
  br i1 %.not86.i.i, label %bb.ip, label %cvNls.exit.i

bb.ip:                                            ; preds = %bb.io
  %i.avn = load ptr, ptr %i.po, align 8, !tbaa !52
  %i.avo = load ptr, ptr %i.ru, align 8, !tbaa !68
  %i.avp = load ptr, ptr %i.af, align 8, !tbaa !190
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.avn, double noundef 1.000000e+00, ptr noundef %i.avo, ptr noundef %i.avp) #13
end_hunk_1
