Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVode:bb.a
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
  %5 = add nsw i64 %i.agb, -1                     ; 2 uses
  %xtraiter1162 = and i64 %i.agb, 1
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %.preheader.i15.i.i.i.epil.preheader, label %.preheader.i15.i.i.i.preheader.new

.preheader.i15.i.i.i.preheader.new:               ; preds = %.preheader.i15.i.i.i.preheader
  %unroll_iter1167 = and i64 %i.agb, 2147483646
  br label %.preheader.i15.i.i.i

cvAltSum.exit28.thread.i.i.i:                     ; preds = %bb.hn
  store double 1.000000e+00, ptr %i.qx, align 8, !tbaa !29
  br label %._crit_edge.i.i.i.i

.preheader.i15.i.i.i:                             ; preds = %.preheader.i15.i.i.i, %.preheader.i15.i.i.i.preheader.new
  %indvars.iv.i16.i.i.i = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %indvars.iv.next.i17.i.i.i.1, %.preheader.i15.i.i.i ] ; 4 uses
  %.018.i.i.i.i = phi double [ 0.000000e+00, %.preheader.i15.i.i.i.preheader.new ], [ %i.ajd, %.preheader.i15.i.i.i ]
  %niter1168 = phi i64 [ 0, %.preheader.i15.i.i.i.preheader.new ], [ %niter1168.next.1, %.preheader.i15.i.i.i ]
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i16.i.i.i
  %i.air = load double, ptr %i.aiq, align 16, !tbaa !29
  %i.ais = trunc i64 %indvars.iv.i16.i.i.i to i32
  %i.ait = or disjoint i32 %i.ais, 1
  %i.aiu = uitofp nneg i32 %i.ait to double
  %i.aiv = fdiv double %i.air, %i.aiu
  %i.aiw = fadd double %i.aiv, %.018.i.i.i.i
  %indvars.iv.next.i17.i.i.i = or disjoint i64 %indvars.iv.i16.i.i.i, 1 ; 2 uses
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i17.i.i.i
  %i.aiy = load double, ptr %i.aix, align 8, !tbaa !29
  %i.aiz = trunc i64 %indvars.iv.next.i17.i.i.i to i32
  %i.aja = add i32 %i.aiz, 1
  %i.ajb = uitofp nneg i32 %i.aja to double
  %i.ajc = fdiv double %i.aiy, %i.ajb
  %i.ajd = fsub double %i.aiw, %i.ajc             ; 3 uses
  %indvars.iv.next.i17.i.i.i.1 = add nuw nsw i64 %indvars.iv.i16.i.i.i, 2 ; 2 uses
  %niter1168.next.1 = add i64 %niter1168, 2       ; 2 uses
  %niter1168.ncmp.1 = icmp eq i64 %niter1168.next.1, %unroll_iter1167
  br i1 %niter1168.ncmp.1, label %.preheader.i21.i.i.i.preheader.unr-lcssa, label %.preheader.i15.i.i.i

.preheader.i21.i.i.i.preheader.unr-lcssa:         ; preds = %.preheader.i15.i.i.i
  %lcmp.mod1164.not = icmp eq i64 %xtraiter1162, 0
  br i1 %lcmp.mod1164.not, label %.preheader.i21.i.i.i.preheader, label %.preheader.i15.i.i.i.epil.preheader

.preheader.i15.i.i.i.epil.preheader:              ; preds = %.preheader.i21.i.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.i.preheader
  %indvars.iv.i16.i.i.i.epil.init = phi i64 [ 0, %.preheader.i15.i.i.i.preheader ], [ %indvars.iv.next.i17.i.i.i.1, %.preheader.i21.i.i.i.preheader.unr-lcssa ] ; 2 uses
  %.018.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i15.i.i.i.preheader ], [ %i.ajd, %.preheader.i21.i.i.i.preheader.unr-lcssa ]
  %lcmp.mod1166 = trunc i32 %i.afv to i1
  call void @llvm.assume(i1 %lcmp.mod1166)
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i16.i.i.i.epil.init
  %i.ajf = load double, ptr %i.aje, align 8, !tbaa !29
  %i.ajg = trunc i64 %indvars.iv.i16.i.i.i.epil.init to i32
  %i.ajh = add i32 %i.ajg, 1
  %i.aji = uitofp nneg i32 %i.ajh to double
  %i.ajj = fdiv double %i.ajf, %i.aji
  %i.ajk = fadd double %i.ajj, %.018.i.i.i.i.epil.init
  br label %.preheader.i21.i.i.i.preheader

.preheader.i21.i.i.i.preheader:                   ; preds = %.preheader.i21.i.i.i.preheader.unr-lcssa, %.preheader.i15.i.i.i.epil.preheader
  %.lcssa1135 = phi double [ %i.ajd, %.preheader.i21.i.i.i.preheader.unr-lcssa ], [ %i.ajk, %.preheader.i15.i.i.i.epil.preheader ]
  %xtraiter1169 = and i64 %i.agb, 1
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %.preheader.i21.i.i.i.epil.preheader, label %.preheader.i21.i.i.i.preheader.new

.preheader.i21.i.i.i.preheader.new:               ; preds = %.preheader.i21.i.i.i.preheader
  %unroll_iter1174 = and i64 %i.agb, 2147483646
  br label %.preheader.i21.i.i.i

.preheader.i21.i.i.i:                             ; preds = %.preheader.i21.i.i.i, %.preheader.i21.i.i.i.preheader.new
  %indvars.iv.i22.i.i.i = phi i64 [ 0, %.preheader.i21.i.i.i.preheader.new ], [ %indvars.iv.next.i25.i.i.i.1, %.preheader.i21.i.i.i ] ; 4 uses
  %.018.i23.i.i.i = phi double [ 0.000000e+00, %.preheader.i21.i.i.i.preheader.new ], [ %i.ajy, %.preheader.i21.i.i.i ]
  %niter1175 = phi i64 [ 0, %.preheader.i21.i.i.i.preheader.new ], [ %niter1175.next.1, %.preheader.i21.i.i.i ]
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i22.i.i.i
  %i.ajm = load double, ptr %i.ajl, align 16, !tbaa !29
  %i.ajn = trunc i64 %indvars.iv.i22.i.i.i to i32
  %i.ajo = add i32 %i.ajn, 2
  %i.ajp = uitofp nneg i32 %i.ajo to double
  %i.ajq = fdiv double %i.ajm, %i.ajp
  %i.ajr = fadd double %i.ajq, %.018.i23.i.i.i
  %indvars.iv.next.i25.i.i.i = or disjoint i64 %indvars.iv.i22.i.i.i, 1 ; 2 uses
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i25.i.i.i
  %i.ajt = load double, ptr %i.ajs, align 8, !tbaa !29
  %i.aju = trunc i64 %indvars.iv.next.i25.i.i.i to i32
  %i.ajv = add i32 %i.aju, 2
  %i.ajw = uitofp nneg i32 %i.ajv to double
  %i.ajx = fdiv double %i.ajt, %i.ajw
  %i.ajy = fsub double %i.ajr, %i.ajx             ; 3 uses
  %indvars.iv.next.i25.i.i.i.1 = add nuw nsw i64 %indvars.iv.i22.i.i.i, 2 ; 2 uses
  %niter1175.next.1 = add i64 %niter1175, 2       ; 2 uses
  %niter1175.ncmp.1 = icmp eq i64 %niter1175.next.1, %unroll_iter1174
  br i1 %niter1175.ncmp.1, label %cvAltSum.exit28.i.i.i.unr-lcssa, label %.preheader.i21.i.i.i

cvAltSum.exit28.i.i.i.unr-lcssa:                  ; preds = %.preheader.i21.i.i.i
  %lcmp.mod1171.not = icmp eq i64 %xtraiter1169, 0
  br i1 %lcmp.mod1171.not, label %cvAltSum.exit28.i.i.i, label %.preheader.i21.i.i.i.epil.preheader

.preheader.i21.i.i.i.epil.preheader:              ; preds = %cvAltSum.exit28.i.i.i.unr-lcssa, %.preheader.i21.i.i.i.preheader
  %indvars.iv.i22.i.i.i.epil.init = phi i64 [ 0, %.preheader.i21.i.i.i.preheader ], [ %indvars.iv.next.i25.i.i.i.1, %cvAltSum.exit28.i.i.i.unr-lcssa ] ; 2 uses
  %.018.i23.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.i21.i.i.i.preheader ], [ %i.ajy, %cvAltSum.exit28.i.i.i.unr-lcssa ]
  %lcmp.mod1173 = trunc i32 %i.afv to i1
  call void @llvm.assume(i1 %lcmp.mod1173)
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i22.i.i.i.epil.init
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !29
  %i.akb = trunc i64 %indvars.iv.i22.i.i.i.epil.init to i32
  %i.akc = add i32 %i.akb, 2
  %i.akd = uitofp nneg i32 %i.akc to double
  %i.ake = fdiv double %i.aka, %i.akd
  %i.akf = fadd double %i.ake, %.018.i23.i.i.i.epil.init
  br label %cvAltSum.exit28.i.i.i

cvAltSum.exit28.i.i.i:                            ; preds = %cvAltSum.exit28.i.i.i.unr-lcssa, %.preheader.i21.i.i.i.epil.preheader
  %.lcssa1136 = phi double [ %i.ajy, %cvAltSum.exit28.i.i.i.unr-lcssa ], [ %i.akf, %.preheader.i21.i.i.i.epil.preheader ]
  %i.akg = fdiv double 1.000000e+00, %.lcssa1135  ; 4 uses
  store double 1.000000e+00, ptr %i.qx, align 8, !tbaa !29
  %i.akh = add nuw i32 %i.afv, 1
  %wide.trip.count.i29.i.i.i = zext i32 %i.akh to i64
  %i.aki = zext nneg i32 %i.afv to i64            ; 3 uses
  %n.vec1013 = and i64 %i.aki, 2147483646         ; 2 uses
  %i.akj = or i64 %i.aki, 1
  %broadcast.splatinsert1014 = insertelement <2 x double> poison, double %i.akg, i64 0
  %broadcast.splat1015 = shufflevector <2 x double> %broadcast.splatinsert1014, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body1016

vector.body1016:                                  ; preds = %vector.body1016, %cvAltSum.exit28.i.i.i
  %index1017 = phi i64 [ 0, %cvAltSum.exit28.i.i.i ], [ %index.next1020, %vector.body1016 ] ; 2 uses
  %vec.ind1018 = phi <2 x i32> [ <i32 1, i32 2>, %cvAltSum.exit28.i.i.i ], [ %vec.ind.next1021, %vector.body1016 ] ; 2 uses
  %i.akk = or disjoint i64 %index1017, 1          ; 2 uses
  %i.akl = getelementptr [8 x i8], ptr %i.o, i64 %i.akk
  %i.akm = getelementptr i8, ptr %i.akl, i64 -8
  %wide.load1019 = load <2 x double>, ptr %i.akm, align 16, !tbaa !29
  %i.akn = uitofp nneg <2 x i32> %vec.ind1018 to <2 x double>
  %i.ako = fdiv <2 x double> %wide.load1019, %i.akn
  %i.akp = fmul <2 x double> %broadcast.splat1015, %i.ako
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.akk
  store <2 x double> %i.akp, ptr %i.akq, align 8, !tbaa !29
  %index.next1020 = add nuw i64 %index1017, 2     ; 2 uses
  %vec.ind.next1021 = add <2 x i32> %vec.ind1018, splat (i32 2)
  %i.akr = icmp eq i64 %index.next1020, %n.vec1013
  br i1 %i.akr, label %middle.block1022, label %vector.body1016, !llvm.loop !267

middle.block1022:                                 ; preds = %vector.body1016
  %cmp.n1023 = icmp eq i64 %n.vec1013, %i.aki
  br i1 %cmp.n1023, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %middle.block1022, %.lr.ph.i.i.i.i
  %indvars.iv.i30.i.i.i = phi i64 [ %indvars.iv.next.i31.i.i.i, %.lr.ph.i.i.i.i ], [ %i.akj, %middle.block1022 ] ; 4 uses
  %i.aks = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv.i30.i.i.i
  %i.akt = getelementptr i8, ptr %i.aks, i64 -8
  %i.aku = load double, ptr %i.akt, align 8, !tbaa !29
  %i.akv = trunc nuw nsw i64 %indvars.iv.i30.i.i.i to i32
  %i.akw = uitofp nneg i32 %i.akv to double
  %i.akx = fdiv double %i.aku, %i.akw
  %i.aky = fmul double %i.akg, %i.akx
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %indvars.iv.i30.i.i.i
  store double %i.aky, ptr %i.akz, align 8, !tbaa !29
  %indvars.iv.next.i31.i.i.i = add nuw nsw i64 %indvars.iv.i30.i.i.i, 1 ; 2 uses
  %exitcond.not.i32.i.i.i = icmp eq i64 %indvars.iv.next.i31.i.i.i, %wide.trip.count.i29.i.i.i
  br i1 %exitcond.not.i32.i.i.i, label %._crit_edge.i.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !268

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph.i.i.i.i, %middle.block1022
  %i.ala = fmul double %i.akg, %.lcssa1136
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.loopexit.i.i.i, %cvAltSum.exit28.thread.i.i.i
  %.034.lcssa.i55.i.i.i = phi double [ %i.aga, %cvAltSum.exit28.thread.i.i.i ], [ %i.aip, %._crit_edge.i.loopexit.i.i.i ]
  %i.alb = phi double [ +inf, %cvAltSum.exit28.thread.i.i.i ], [ %i.akg, %._crit_edge.i.loopexit.i.i.i ]
  %.014.i2745.i.i.i = phi double [ +qnan, %cvAltSum.exit28.thread.i.i.i ], [ %i.ala, %._crit_edge.i.loopexit.i.i.i ]
  %i.alc = fdiv double %.034.lcssa.i55.i.i.i, %i.aga ; 3 uses
  %i.ald = fdiv double 1.000000e+00, %i.alc       ; 2 uses
  %i.ale = fdiv double %.014.i2745.i.i.i, %i.alc  ; 2 uses
  store double %i.ale, ptr %i.ra, align 8, !tbaa !29
  %i.alf = sext i32 %i.afv to i64
  %i.alg = getelementptr inbounds [8 x i8], ptr %i.qx, i64 %i.alf
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !29
  %i.ali = fdiv double %i.alc, %i.alh
  store double %i.ali, ptr %i.rb, align 8, !tbaa !29
  %i.alj = load i32, ptr %i.qr, align 4, !tbaa !81
  %i.alk = icmp eq i32 %i.alj, 1
  br i1 %i.alk, label %.preheader.i33.i.i.i, label %cvAdamsFinish.exit.i.i.i

.preheader.i33.i.i.i:                             ; preds = %._crit_edge.i.i.i.i
  %i.all = icmp sgt i32 %i.afv, 0
  br i1 %i.all, label %.lr.ph44.preheader.i.i.i.i, label %._crit_edge45.i.i.i.i

.lr.ph44.preheader.i.i.i.i:                       ; preds = %.preheader.i33.i.i.i
  %i.alm = zext nneg i32 %i.afv to i64            ; 5 uses
  %min.iters.check991 = icmp ult i32 %i.afv, 4
  br i1 %min.iters.check991, label %.lr.ph44.i.i.i.i.preheader, label %vector.ph992

vector.ph992:                                     ; preds = %.lr.ph44.preheader.i.i.i.i
  %n.vec993 = and i64 %i.alm, 2147483644          ; 2 uses
  %i.aln = and i64 %i.alm, 3
  %broadcast.splatinsert994 = insertelement <2 x double> poison, double %i.ald, i64 0 ; 2 uses
  %i.alo = shufflevector <2 x double> %broadcast.splatinsert994, <2 x double> poison, <2 x i32> zeroinitializer
  %i.alp = shufflevector <2 x double> %broadcast.splatinsert994, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body996

vector.body996:                                   ; preds = %vector.body996, %vector.ph992
  %index997 = phi i64 [ 0, %vector.ph992 ], [ %index.next1006, %vector.body996 ] ; 2 uses
  %i.alq = sub i64 %i.alm, %index997
  %i.alr = getelementptr [8 x i8], ptr %i.o, i64 %i.alq ; 4 uses
  %i.als = getelementptr i8, ptr %i.alr, i64 -16
  %i.alt = getelementptr i8, ptr %i.alr, i64 -32
  %wide.load = load <2 x double>, ptr %i.als, align 8, !tbaa !29
  %wide.load998 = load <2 x double>, ptr %i.alt, align 8, !tbaa !29
  %i.alu = getelementptr i8, ptr %i.alr, i64 -8   ; 2 uses
  %i.alv = getelementptr i8, ptr %i.alr, i64 -24  ; 2 uses
  %wide.load1000 = load <2 x double>, ptr %i.alu, align 8, !tbaa !29
  %wide.load1001 = load <2 x double>, ptr %i.alv, align 8, !tbaa !29
  %reverse1004 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.alo, <2 x double> %wide.load1000)
  %reverse1005 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load998, <2 x double> %i.alp, <2 x double> %wide.load1001)
  store <2 x double> %reverse1004, ptr %i.alu, align 8, !tbaa !29
  store <2 x double> %reverse1005, ptr %i.alv, align 8, !tbaa !29
  %index.next1006 = add nuw i64 %index997, 4      ; 2 uses
  %i.alw = icmp eq i64 %index.next1006, %n.vec993
  br i1 %i.alw, label %middle.block1007, label %vector.body996, !llvm.loop !269

middle.block1007:                                 ; preds = %vector.body996
  %cmp.n1008 = icmp eq i64 %n.vec993, %i.alm
  br i1 %cmp.n1008, label %.preheader.preheader.i.i.i.i.i, label %.lr.ph44.i.i.i.i.preheader

.lr.ph44.i.i.i.i.preheader:                       ; preds = %.lr.ph44.preheader.i.i.i.i, %middle.block1007
  %indvars.iv47.i.i.i.i.ph = phi i64 [ %i.alm, %.lr.ph44.preheader.i.i.i.i ], [ %i.aln, %middle.block1007 ]
  br label %.lr.ph44.i.i.i.i

.lr.ph44.i.i.i.i:                                 ; preds = %.lr.ph44.i.i.i.i.preheader, %.lr.ph44.i.i.i.i
  %indvars.iv47.i.i.i.i = phi i64 [ %indvars.iv.next48.i.i.i.i, %.lr.ph44.i.i.i.i ], [ %indvars.iv47.i.i.i.i.ph, %.lr.ph44.i.i.i.i.preheader ] ; 3 uses
  %i.alx = getelementptr [8 x i8], ptr %i.o, i64 %indvars.iv47.i.i.i.i ; 3 uses
  %i.aly = getelementptr i8, ptr %i.alx, i64 -8
  %i.alz = load double, ptr %i.aly, align 8, !tbaa !29
  %i.ama = load double, ptr %i.alx, align 8, !tbaa !29
  %i.amb = call double @llvm.fmuladd.f64(double %i.alz, double %i.ald, double %i.ama)
  store double %i.amb, ptr %i.alx, align 8, !tbaa !29
  %indvars.iv.next48.i.i.i.i = add nsw i64 %indvars.iv47.i.i.i.i, -1
  %i.amc = icmp samesign ugt i64 %indvars.iv47.i.i.i.i, 1
  br i1 %i.amc, label %.lr.ph44.i.i.i.i, label %.preheader.preheader.i.i.i.i.i, !llvm.loop !270

._crit_edge45.i.i.i.i:                            ; preds = %.preheader.i33.i.i.i
  %i.amd = icmp slt i32 %i.afv, 0
  br i1 %i.amd, label %cvAltSum.exit.i.i.i.i, label %.preheader.preheader.i.i.i.i.i

.preheader.preheader.i.i.i.i.i:                   ; preds = %.lr.ph44.i.i.i.i, %middle.block1007, %._crit_edge45.i.i.i.i
  %i.ame = add nuw i32 %i.afv, 1                  ; 2 uses
  %wide.trip.count.i.i34.i.i.i = zext i32 %i.ame to i64 ; 2 uses
  %xtraiter1176 = and i64 %wide.trip.count.i.i34.i.i.i, 1
  %i.amf = icmp eq i32 %i.afv, 0
  br i1 %i.amf, label %.preheader.i.i35.i.i.i.epil.preheader, label %.preheader.preheader.i.i.i.i.i.new

.preheader.preheader.i.i.i.i.i.new:               ; preds = %.preheader.preheader.i.i.i.i.i
  %unroll_iter1181 = and i64 %wide.trip.count.i.i34.i.i.i, 4294967294
  br label %.preheader.i.i35.i.i.i

.preheader.i.i35.i.i.i:                           ; preds = %.preheader.i.i35.i.i.i, %.preheader.preheader.i.i.i.i.i.new
  %indvars.iv.i.i36.i.i.i = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %indvars.iv.next.i.i39.i.i.i.1, %.preheader.i.i35.i.i.i ] ; 4 uses
  %.018.i.i37.i.i.i = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i.new ], [ %i.amt, %.preheader.i.i35.i.i.i ]
  %niter1182 = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i.new ], [ %niter1182.next.1, %.preheader.i.i35.i.i.i ]
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i
  %i.amh = load double, ptr %i.amg, align 16, !tbaa !29
  %i.ami = trunc i64 %indvars.iv.i.i36.i.i.i to i32
  %i.amj = add i32 %i.ami, 2
  %i.amk = uitofp nneg i32 %i.amj to double
  %i.aml = fdiv double %i.amh, %i.amk
  %i.amm = fadd double %i.aml, %.018.i.i37.i.i.i
  %indvars.iv.next.i.i39.i.i.i = or disjoint i64 %indvars.iv.i.i36.i.i.i, 1 ; 2 uses
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i.i39.i.i.i
  %i.amo = load double, ptr %i.amn, align 8, !tbaa !29
  %i.amp = trunc i64 %indvars.iv.next.i.i39.i.i.i to i32
  %i.amq = add i32 %i.amp, 2
  %i.amr = uitofp nneg i32 %i.amq to double
  %i.ams = fdiv double %i.amo, %i.amr
  %i.amt = fsub double %i.amm, %i.ams             ; 3 uses
  %indvars.iv.next.i.i39.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i36.i.i.i, 2 ; 2 uses
  %niter1182.next.1 = add i64 %niter1182, 2       ; 2 uses
  %niter1182.ncmp.1 = icmp eq i64 %niter1182.next.1, %unroll_iter1181
  br i1 %niter1182.ncmp.1, label %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, label %.preheader.i.i35.i.i.i

cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa:         ; preds = %.preheader.i.i35.i.i.i
  %lcmp.mod1178.not = icmp eq i64 %xtraiter1176, 0
  br i1 %lcmp.mod1178.not, label %cvAltSum.exit.i.i.i.i, label %.preheader.i.i35.i.i.i.epil.preheader

.preheader.i.i35.i.i.i.epil.preheader:            ; preds = %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %.preheader.preheader.i.i.i.i.i
  %indvars.iv.i.i36.i.i.i.epil.init = phi i64 [ 0, %.preheader.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i39.i.i.i.1, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.018.i.i37.i.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.preheader.i.i.i.i.i ], [ %i.amt, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1180 = trunc i32 %i.ame to i1
  call void @llvm.assume(i1 %lcmp.mod1180)
  %i.amu = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.i36.i.i.i.epil.init
  %i.amv = load double, ptr %i.amu, align 8, !tbaa !29
  %i.amw = trunc i64 %indvars.iv.i.i36.i.i.i.epil.init to i32
  %i.amx = add i32 %i.amw, 2
  %i.amy = uitofp nneg i32 %i.amx to double
  %i.amz = fdiv double %i.amv, %i.amy
  %i.ana = fadd double %i.amz, %.018.i.i37.i.i.i.epil.init
  br label %cvAltSum.exit.i.i.i.i

cvAltSum.exit.i.i.i.i:                            ; preds = %.preheader.i.i35.i.i.i.epil.preheader, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa, %._crit_edge45.i.i.i.i
  %.014.i.i.i.i.i = phi double [ 0.000000e+00, %._crit_edge45.i.i.i.i ], [ %i.amt, %cvAltSum.exit.i.i.i.i.loopexit.unr-lcssa ], [ %i.ana, %.preheader.i.i35.i.i.i.epil.preheader ]
  %i.anb = fmul double %i.alb, %.014.i.i.i.i.i
  %i.anc = load i32, ptr %i.qq, align 8, !tbaa !80
  %i.and = sitofp i32 %i.anc to double
  %i.ane = fdiv double %i.anb, %i.and
  store double %i.ane, ptr %i.re, align 8, !tbaa !29
  br label %cvAdamsFinish.exit.i.i.i

cvAdamsFinish.exit.i.i.i:                         ; preds = %cvAltSum.exit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.anf = load double, ptr %i.rf, align 8, !tbaa !34
  %i.ang = fdiv double %i.anf, %i.ale
  br label %cvSetAdams.exit.i.i

end_hunk_0
