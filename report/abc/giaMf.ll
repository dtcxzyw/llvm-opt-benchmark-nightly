inline.NumInlined: 878
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Mf_ObjMergeOrder:bb.a
  %i.adg = and i32 %i.adf, 67108863               ; 2 uses
  %i.adh = lshr i32 %i.adg, %i.act
  %i.adi = zext nneg i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %i.adi
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !34
  %i.adl = and i32 %i.ada, %i.adg
  %i.adm = mul i32 %i.adl, %i.acy
  %i.adn = sext i32 %i.adm to i64
  %i.ado = getelementptr [8 x i8], ptr %i.adk, i64 %i.adn ; 3 uses
  %i.adp = lshr i32 %i.zm, 1
  %i.adq = and i32 %i.adp, 67108863               ; 2 uses
  %i.adr = lshr i32 %i.adq, %i.act
  %i.ads = zext nneg i32 %i.adr to i64
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.acr, i64 %i.ads
  %i.adu = load ptr, ptr %i.adt, align 8, !tbaa !34
  %i.adv = and i32 %i.ada, %i.adq
  %i.adw = mul i32 %i.adv, %i.acy
  %i.adx = sext i32 %i.adw to i64
  %i.ady = getelementptr [8 x i8], ptr %i.adu, i64 %i.adx ; 3 uses
  %i.adz = and i32 %i.zh, 1
  %.not.i72.i.us.us.us = icmp eq i32 %i.adz, %i.jw
  %.not179.i.us.us.us = icmp eq i32 %i.acl, 31    ; 16 uses
  br i1 %.not.i72.i.us.us.us, label %.preheader.i.i291.us.us.us, label %.preheader14.i.i.us.us.us

.preheader14.i.i.us.us.us:                        ; preds = %bb.aq
  br i1 %.not179.i.us.us.us, label %Abc_TtCopy.exit.i.us.us.us, label %.lr.ph.preheader.i.i281.us.us.us

.lr.ph.preheader.i.i281.us.us.us:                 ; preds = %.preheader14.i.i.us.us.us
  %wide.trip.count.i.i282.us.us.us = zext nneg i32 %i.acm to i64 ; 2 uses
  %min.iters.check1802 = icmp ult i32 %i.acl, 2
  br i1 %min.iters.check1802, label %.lr.ph.i.i283.us.us.us, label %vector.ph1803

vector.ph1803:                                    ; preds = %.lr.ph.preheader.i.i281.us.us.us
  %n.vec1804 = and i64 %wide.trip.count.i.i282.us.us.us, 2147483644
  br label %vector.body1805

vector.body1805:                                  ; preds = %vector.body1805, %vector.ph1803
  %index1806 = phi i64 [ 0, %vector.ph1803 ], [ %index.next1809, %vector.body1805 ] ; 3 uses
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %index1806 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %wide.load1807 = load <2 x i64>, ptr %i.aea, align 8, !tbaa !8
  %wide.load1808 = load <2 x i64>, ptr %i.aeb, align 8, !tbaa !8
  %i.aec = xor <2 x i64> %wide.load1807, splat (i64 -1)
  %i.aed = xor <2 x i64> %wide.load1808, splat (i64 -1)
  %i.aee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index1806 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aee, i64 16
  store <2 x i64> %i.aec, ptr %i.aee, align 16, !tbaa !8
  store <2 x i64> %i.aed, ptr %i.aef, align 16, !tbaa !8
  %index.next1809 = add nuw i64 %index1806, 4     ; 2 uses
  %i.aeg = icmp eq i64 %index.next1809, %n.vec1804
  br i1 %i.aeg, label %Abc_TtCopy.exit.i.us.us.us, label %vector.body1805, !llvm.loop !190

.lr.ph.i.i283.us.us.us:                           ; preds = %.lr.ph.preheader.i.i281.us.us.us, %.lr.ph.i.i283.us.us.us
  %indvars.iv.i.i284.us.us.us = phi i64 [ %indvars.iv.next.i.i285.us.us.us, %.lr.ph.i.i283.us.us.us ], [ 0, %.lr.ph.preheader.i.i281.us.us.us ] ; 3 uses
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.ade, i64 %indvars.iv.i.i284.us.us.us
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !8
  %i.aej = xor i64 %i.aei, -1
  %i.aek = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i284.us.us.us
  store i64 %i.aej, ptr %i.aek, align 8, !tbaa !8
  %indvars.iv.next.i.i285.us.us.us = add nuw nsw i64 %indvars.iv.i.i284.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i286.us.us.us = icmp eq i64 %indvars.iv.next.i.i285.us.us.us, %wide.trip.count.i.i282.us.us.us
  br i1 %exitcond.not.i.i286.us.us.us, label %Abc_TtCopy.exit.i.us.us.us, label %.lr.ph.i.i283.us.us.us, !llvm.loop !191

.preheader.i.i291.us.us.us:                       ; preds = %bb.aq
  br i1 %.not179.i.us.us.us, label %Abc_TtCopy.exit.i.us.us.us, label %.lr.ph18.preheader.i.i.us.us.us

.lr.ph18.preheader.i.i.us.us.us:                  ; preds = %.preheader.i.i291.us.us.us
  %wide.trip.count24.i.i.us.us.us = zext nneg i32 %i.acm to i64
  %i.ael = shl nuw nsw i64 %wide.trip.count24.i.i.us.us.us, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.ade, i64 %i.ael, i1 false), !tbaa !8
  br label %Abc_TtCopy.exit.i.us.us.us

Abc_TtCopy.exit.i.us.us.us:                       ; preds = %vector.body1805, %.lr.ph.i.i283.us.us.us, %.lr.ph18.preheader.i.i.us.us.us, %.preheader.i.i291.us.us.us, %.preheader14.i.i.us.us.us
  %i.aem = and i32 %i.zj, 1
  %.not.i73.i.us.us.us = icmp eq i32 %i.aem, %i.jz
  br i1 %.not.i73.i.us.us.us, label %.preheader.i81.i.us.us.us, label %.preheader14.i74.i.us.us.us

.preheader14.i74.i.us.us.us:                      ; preds = %Abc_TtCopy.exit.i.us.us.us
  br i1 %.not179.i.us.us.us, label %Abc_TtCopy.exit88.i.us.us.us, label %.lr.ph.preheader.i75.i.us.us.us

.lr.ph.preheader.i75.i.us.us.us:                  ; preds = %.preheader14.i74.i.us.us.us
  %wide.trip.count.i76.i.us.us.us = zext nneg i32 %i.acm to i64 ; 2 uses
  %min.iters.check1790 = icmp ult i32 %i.acl, 2
  br i1 %min.iters.check1790, label %.lr.ph.i77.i.us.us.us, label %vector.ph1791

vector.ph1791:                                    ; preds = %.lr.ph.preheader.i75.i.us.us.us
  %n.vec1792 = and i64 %wide.trip.count.i76.i.us.us.us, 2147483644
  br label %vector.body1793

vector.body1793:                                  ; preds = %vector.body1793, %vector.ph1791
  %index1794 = phi i64 [ 0, %vector.ph1791 ], [ %index.next1797, %vector.body1793 ] ; 3 uses
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %index1794 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %wide.load1795 = load <2 x i64>, ptr %i.aen, align 8, !tbaa !8
  %wide.load1796 = load <2 x i64>, ptr %i.aeo, align 8, !tbaa !8
  %i.aep = xor <2 x i64> %wide.load1795, splat (i64 -1)
  %i.aeq = xor <2 x i64> %wide.load1796, splat (i64 -1)
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index1794 ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 16
  store <2 x i64> %i.aep, ptr %i.aer, align 16, !tbaa !8
  store <2 x i64> %i.aeq, ptr %i.aes, align 16, !tbaa !8
  %index.next1797 = add nuw i64 %index1794, 4     ; 2 uses
  %i.aet = icmp eq i64 %index.next1797, %n.vec1792
  br i1 %i.aet, label %Abc_TtCopy.exit88.i.us.us.us, label %vector.body1793, !llvm.loop !192

.lr.ph.i77.i.us.us.us:                            ; preds = %.lr.ph.preheader.i75.i.us.us.us, %.lr.ph.i77.i.us.us.us
  %indvars.iv.i78.i.us.us.us = phi i64 [ %indvars.iv.next.i79.i.us.us.us, %.lr.ph.i77.i.us.us.us ], [ 0, %.lr.ph.preheader.i75.i.us.us.us ] ; 3 uses
  %i.aeu = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %indvars.iv.i78.i.us.us.us
  %i.aev = load i64, ptr %i.aeu, align 8, !tbaa !8
  %i.aew = xor i64 %i.aev, -1
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i78.i.us.us.us
  store i64 %i.aew, ptr %i.aex, align 8, !tbaa !8
  %indvars.iv.next.i79.i.us.us.us = add nuw nsw i64 %indvars.iv.i78.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i80.i.us.us.us = icmp eq i64 %indvars.iv.next.i79.i.us.us.us, %wide.trip.count.i76.i.us.us.us
  br i1 %exitcond.not.i80.i.us.us.us, label %Abc_TtCopy.exit88.i.us.us.us, label %.lr.ph.i77.i.us.us.us, !llvm.loop !193

.preheader.i81.i.us.us.us:                        ; preds = %Abc_TtCopy.exit.i.us.us.us
  br i1 %.not179.i.us.us.us, label %Abc_TtCopy.exit88.i.us.us.us, label %.lr.ph18.preheader.i82.i.us.us.us

.lr.ph18.preheader.i82.i.us.us.us:                ; preds = %.preheader.i81.i.us.us.us
  %wide.trip.count24.i83.i.us.us.us = zext nneg i32 %i.acm to i64
  %i.aey = shl nuw nsw i64 %wide.trip.count24.i83.i.us.us.us, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(1) %i.ado, i64 %i.aey, i1 false), !tbaa !8
  br label %Abc_TtCopy.exit88.i.us.us.us

Abc_TtCopy.exit88.i.us.us.us:                     ; preds = %vector.body1793, %.lr.ph.i77.i.us.us.us, %.lr.ph18.preheader.i82.i.us.us.us, %.preheader.i81.i.us.us.us, %.preheader14.i74.i.us.us.us
  %i.aez = and i32 %i.zm, 1
  %.not.i89.i.us.us.us = icmp eq i32 %i.aez, %i.xm
  br i1 %.not.i89.i.us.us.us, label %.preheader.i97.i.us.us.us, label %.preheader14.i90.i.us.us.us

.preheader14.i90.i.us.us.us:                      ; preds = %Abc_TtCopy.exit88.i.us.us.us
  br i1 %.not179.i.us.us.us, label %Abc_TtCopy.exit104.i.us.us.us, label %.lr.ph.preheader.i91.i.us.us.us

.lr.ph.preheader.i91.i.us.us.us:                  ; preds = %.preheader14.i90.i.us.us.us
  %wide.trip.count.i92.i.us.us.us = zext nneg i32 %i.acm to i64 ; 2 uses
  %min.iters.check1778 = icmp ult i32 %i.acl, 2
  br i1 %min.iters.check1778, label %.lr.ph.i93.i.us.us.us, label %vector.ph1779

vector.ph1779:                                    ; preds = %.lr.ph.preheader.i91.i.us.us.us
  %n.vec1780 = and i64 %wide.trip.count.i92.i.us.us.us, 2147483644
  br label %vector.body1781

vector.body1781:                                  ; preds = %vector.body1781, %vector.ph1779
  %index1782 = phi i64 [ 0, %vector.ph1779 ], [ %index.next1785, %vector.body1781 ] ; 3 uses
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %index1782 ; 2 uses
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 16
  %wide.load1783 = load <2 x i64>, ptr %i.afa, align 8, !tbaa !8
  %wide.load1784 = load <2 x i64>, ptr %i.afb, align 8, !tbaa !8
  %i.afc = xor <2 x i64> %wide.load1783, splat (i64 -1)
  %i.afd = xor <2 x i64> %wide.load1784, splat (i64 -1)
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index1782 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 16
  store <2 x i64> %i.afc, ptr %i.afe, align 16, !tbaa !8
  store <2 x i64> %i.afd, ptr %i.aff, align 16, !tbaa !8
  %index.next1785 = add nuw i64 %index1782, 4     ; 2 uses
  %i.afg = icmp eq i64 %index.next1785, %n.vec1780
  br i1 %i.afg, label %Abc_TtCopy.exit104.i.us.us.us, label %vector.body1781, !llvm.loop !194

.lr.ph.i93.i.us.us.us:                            ; preds = %.lr.ph.preheader.i91.i.us.us.us, %.lr.ph.i93.i.us.us.us
  %indvars.iv.i94.i.us.us.us = phi i64 [ %indvars.iv.next.i95.i.us.us.us, %.lr.ph.i93.i.us.us.us ], [ 0, %.lr.ph.preheader.i91.i.us.us.us ] ; 3 uses
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %indvars.iv.i94.i.us.us.us
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !8
  %i.afj = xor i64 %i.afi, -1
  %i.afk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i94.i.us.us.us
  store i64 %i.afj, ptr %i.afk, align 8, !tbaa !8
  %indvars.iv.next.i95.i.us.us.us = add nuw nsw i64 %indvars.iv.i94.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i96.i.us.us.us = icmp eq i64 %indvars.iv.next.i95.i.us.us.us, %wide.trip.count.i92.i.us.us.us
  br i1 %exitcond.not.i96.i.us.us.us, label %Abc_TtCopy.exit104.i.us.us.us, label %.lr.ph.i93.i.us.us.us, !llvm.loop !195

.preheader.i97.i.us.us.us:                        ; preds = %Abc_TtCopy.exit88.i.us.us.us
  br i1 %.not179.i.us.us.us, label %Abc_TtCopy.exit104.i.us.us.us, label %.lr.ph18.preheader.i98.i.us.us.us

.lr.ph18.preheader.i98.i.us.us.us:                ; preds = %.preheader.i97.i.us.us.us
  %wide.trip.count24.i99.i.us.us.us = zext nneg i32 %i.acm to i64
  %i.afl = shl nuw nsw i64 %wide.trip.count24.i99.i.us.us.us, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.ady, i64 %i.afl, i1 false), !tbaa !8
  br label %Abc_TtCopy.exit104.i.us.us.us

Abc_TtCopy.exit104.i.us.us.us:                    ; preds = %vector.body1781, %.lr.ph.i93.i.us.us.us, %.lr.ph18.preheader.i98.i.us.us.us, %.preheader.i97.i.us.us.us, %.preheader14.i90.i.us.us.us
  %i.afm = icmp ne i32 %i.ack, 0                  ; 3 uses
  %i.afn = icmp ne i32 %i.zi, 0
  %i.afo = and i1 %i.afn, %i.afm
  br i1 %i.afo, label %.lr.ph.preheader.i105.i.us.us.us, label %Abc_TtExpand.exit.i.us.us.us

.lr.ph.preheader.i105.i.us.us.us:                 ; preds = %Abc_TtCopy.exit104.i.us.us.us
  %i.afp = add nsw i32 %i.zi, -1
  %i.afq = zext nneg i32 %i.ack to i64
  %i.afr = sext i32 %i.acm to i64
  %.idx128.i584.us.us.us = shl nsw i64 %i.afr, 3
  %i.afs = getelementptr inbounds i8, ptr %i.m, i64 %.idx128.i584.us.us.us ; 2 uses
  %smax.i610.us.us.us = call i32 @llvm.smax.i32(i32 %i.acm, i32 1)
  %min.iters.check1714 = icmp slt i32 %i.acm, 4
  %i.aft = and i32 %smax.i610.us.us.us, 2147483644
  %n.vec1716 = zext nneg i32 %i.aft to i64
  %exitcond150.not.i614.us.us.us = icmp slt i32 %i.acm, 2
  %exitcond150.not.i614.us.us.us.1 = icmp eq i32 %i.acl, 1
  br label %.lr.ph.i106.i.us.us.us

.lr.ph.i106.i.us.us.us:                           ; preds = %bb.ay, %.lr.ph.preheader.i105.i.us.us.us
  %indvars.iv.i107.i.us.us.us = phi i64 [ %i.afq, %.lr.ph.preheader.i105.i.us.us.us ], [ %indvars.iv.next.i108.i.us.us.us, %bb.ay ] ; 4 uses
  %.017.i.i.us.us.us = phi i32 [ %i.afp, %.lr.ph.preheader.i105.i.us.us.us ], [ %.1.i.i290.us.us.us, %bb.ay ] ; 13 uses
  %indvars.iv.next.i108.i.us.us.us = add nsw i64 %indvars.iv.i107.i.us.us.us, -1 ; 5 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv.next.i108.i.us.us.us
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !15
  %i.afw = zext nneg i32 %.017.i.i.us.us.us to i64 ; 2 uses
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.yr, i64 %i.afw
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !15
  %i.afz = icmp sgt i32 %i.afv, %i.afy
  br i1 %i.afz, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i106.i.us.us.us
  %i.aga = icmp samesign ugt i64 %indvars.iv.next.i108.i.us.us.us, %i.afw
  br i1 %i.aga, label %bb.as, label %Abc_TtSwapVars.exit616.us.us.us

bb.as:                                            ; preds = %bb.ar
  %i.agb = trunc nuw nsw i64 %indvars.iv.next.i108.i.us.us.us to i32 ; 3 uses
  %i.agc = icmp slt i64 %indvars.iv.i107.i.us.us.us, 7
  br i1 %i.agc, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.agd = icmp slt i32 %.017.i.i.us.us.us, 6
  br i1 %i.agd, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit616.us.us.us, label %.preheader120.lr.ph.i586.us.us.us

.preheader120.lr.ph.i586.us.us.us:                ; preds = %bb.au
  %i.age = add nsw i32 %i.agb, -6                 ; 2 uses
  %i.agf = shl nuw nsw i32 1, %i.age              ; 2 uses
  %i.agg = add nsw i32 %.017.i.i.us.us.us, -6     ; 5 uses
  %i.agh = shl nuw nsw i32 1, %i.agg
  %i.agi = shl nuw nsw i32 2, %i.agg              ; 2 uses
  %i.agj = shl nuw nsw i32 2, %i.age
  %i.agk = zext nneg i32 %i.agj to i64
  %i.agl = zext nneg i32 %i.agi to i64            ; 3 uses
  %i.agm = zext nneg i32 %i.agh to i64            ; 6 uses
  %i.agn = zext nneg i32 %i.agf to i64            ; 4 uses
  %i.ago = shl nuw nsw i64 %i.agm, 3              ; 2 uses
  %umax1755 = call i64 @llvm.umax.i64(i64 %i.agl, i64 %i.agn)
  %i.agp = icmp samesign ult i32 %i.agi, %i.agf
  %umin1756 = zext i1 %i.agp to i64               ; 3 uses
  %i.agq = or disjoint i64 %umin1756, %i.agl
  %i.agr = sub nsw i64 %umax1755, %i.agq          ; 2 uses
  %7 = shl nuw nsw i64 %i.agm, 4
  %8 = shl nuw nsw i64 %i.agn, 3                  ; 2 uses
  %i.ags = add nsw i32 %.017.i.i.us.us.us, -5
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = lshr i64 %i.agr, %i.agt
  %i.agv = add i64 %i.agu, %umin1756
  %i.agw = shl i64 %i.agv, 3
  %i.agx = add nsw i32 %.017.i.i.us.us.us, -5
  %i.agy = zext nneg i32 %i.agx to i64
  %i.agz = shl i64 %i.agw, %i.agy
  %i.aha = add nuw i64 %indvars.iv.i107.i.us.us.us, 4294967290
  %i.ahb = and i64 %i.aha, 4294967295
  %i.ahc = add nuw nsw i64 %i.ahb, 3
  %i.ahd = getelementptr i8, ptr %i.m, i64 %i.ago
  %i.ahe = getelementptr i8, ptr %i.m, i64 %8
  %i.ahf = getelementptr i8, ptr %i.m, i64 %i.agz
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 %8
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 %i.ago
  %min.iters.check1764 = icmp ult i32 %i.agg, 4
  %9 = add nsw i32 %.017.i.i.us.us.us, -5
  %10 = zext nneg i32 %9 to i64
  %11 = lshr i64 %i.agr, %10
  %12 = add i64 %11, %umin1756
  %13 = shl i64 %12, 3
  %14 = add nsw i32 %.017.i.i.us.us.us, -5
  %15 = zext nneg i32 %14 to i64
  %16 = shl i64 %13, %15
  %i.ahi = getelementptr i8, ptr %i.m, i64 %16
  %invariant.gep2284 = getelementptr i8, ptr %i.ahi, i64 %7
  %n.vec1766 = and i64 %i.agm, 2147483644
  %xtraiter2177 = and i64 %i.agm, 1
  %i.ahj = icmp eq i32 %i.agg, 0
  %unroll_iter2180 = and i64 %i.agm, 2147483646
  %lcmp.mod2178.not = icmp eq i64 %xtraiter2177, 0
  %lcmp.mod2179 = icmp eq i32 %i.agg, 0
  br label %.preheader120.i587.us.us.us

.preheader120.i587.us.us.us:                      ; preds = %bb.av, %.preheader120.lr.ph.i586.us.us.us
  %indvar1752 = phi i64 [ %indvar.next1753, %bb.av ], [ 0, %.preheader120.lr.ph.i586.us.us.us ] ; 2 uses
  %.1124.i588.us.us.us = phi ptr [ %i.aid, %bb.av ], [ %i.m, %.preheader120.lr.ph.i586.us.us.us ] ; 3 uses
  %i.ahk = shl i64 %indvar1752, %i.ahc            ; 4 uses
  %scevgep1754 = getelementptr i8, ptr %i.ahd, i64 %i.ahk
  %scevgep1758 = getelementptr i8, ptr %i.ahe, i64 %i.ahk
  %scevgep1759 = getelementptr i8, ptr %i.ahh, i64 %i.ahk
  %invariant.gep157.i590.us.us.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i588.us.us.us, i64 %i.agm
  %invariant.gep157.i590.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i588.us.us.us, i64 %i.agn
  %scevgep1759.a = getelementptr i8, ptr %invariant.gep2284, i64 %i.ahk
  %bound01760 = icmp ult ptr %scevgep1754, %scevgep1759
  %bound11761 = icmp ult ptr %scevgep1758, %scevgep1759.a
  %found.conflict1762 = and i1 %bound01760, %bound11761
  br label %.preheader119.i591.us.us.us

.preheader119.i591.us.us.us:                      ; preds = %middle.block1774, %.preheader120.i587.us.us.us
  %indvars.iv138.i592.us.us.us = phi i64 [ 0, %.preheader120.i587.us.us.us ], [ %indvars.iv.next139.i598.us.us.us, %middle.block1774 ] ; 3 uses
  %gep.i593.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i590.us.us.us.a, i64 %indvars.iv138.i592.us.us.us ; 4 uses
  %gep158.i594.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i590.us.us.us, i64 %indvars.iv138.i592.us.us.us ; 4 uses
  %brmerge = select i1 %min.iters.check1764, i1 true, i1 %found.conflict1762
  br i1 %brmerge, label %scalar.ph1763.preheader, label %vector.body1767

scalar.ph1763.preheader:                          ; preds = %.preheader119.i591.us.us.us
  br i1 %i.ahj, label %scalar.ph1763.epil.preheader, label %scalar.ph1763

vector.body1767:                                  ; preds = %.preheader119.i591.us.us.us, %vector.body1767
  %index1768 = phi i64 [ %index.next1773, %vector.body1767 ], [ 0, %.preheader119.i591.us.us.us ] ; 3 uses
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %gep.i593.us.us.us, i64 %index1768 ; 3 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16 ; 2 uses
  %wide.load1769 = load <2 x i64>, ptr %i.ahl, align 8, !tbaa !8, !alias.scope !196, !noalias !199
  %wide.load1770 = load <2 x i64>, ptr %i.ahm, align 8, !tbaa !8, !alias.scope !196, !noalias !199
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %gep158.i594.us.us.us, i64 %index1768 ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 16 ; 2 uses
  %wide.load1771 = load <2 x i64>, ptr %i.ahn, align 8, !tbaa !8, !alias.scope !199
  %wide.load1772 = load <2 x i64>, ptr %i.aho, align 8, !tbaa !8, !alias.scope !199
  store <2 x i64> %wide.load1771, ptr %i.ahl, align 8, !tbaa !8, !alias.scope !196, !noalias !199
  store <2 x i64> %wide.load1772, ptr %i.ahm, align 8, !tbaa !8, !alias.scope !196, !noalias !199
  store <2 x i64> %wide.load1769, ptr %i.ahn, align 8, !tbaa !8, !alias.scope !199
  store <2 x i64> %wide.load1770, ptr %i.aho, align 8, !tbaa !8, !alias.scope !199
  %index.next1773 = add nuw i64 %index1768, 4     ; 2 uses
  %i.ahp = icmp eq i64 %index.next1773, %n.vec1766
  br i1 %i.ahp, label %middle.block1774, label %vector.body1767, !llvm.loop !201

scalar.ph1763:                                    ; preds = %scalar.ph1763.preheader, %scalar.ph1763
  %indvars.iv.i595.us.us.us = phi i64 [ %indvars.iv.next.i596.us.us.us.1, %scalar.ph1763 ], [ 0, %scalar.ph1763.preheader ] ; 4 uses
  %niter2181 = phi i64 [ %niter2181.next.1, %scalar.ph1763 ], [ 0, %scalar.ph1763.preheader ]
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %gep.i593.us.us.us, i64 %indvars.iv.i595.us.us.us ; 2 uses
  %i.ahr = load i64, ptr %i.ahq, align 8, !tbaa !8
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %gep158.i594.us.us.us, i64 %indvars.iv.i595.us.us.us ; 2 uses
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !8
  store i64 %i.aht, ptr %i.ahq, align 8, !tbaa !8
  store i64 %i.ahr, ptr %i.ahs, align 8, !tbaa !8
  %indvars.iv.next.i596.us.us.us = or disjoint i64 %indvars.iv.i595.us.us.us, 1 ; 2 uses
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %gep.i593.us.us.us, i64 %indvars.iv.next.i596.us.us.us ; 2 uses
  %i.ahv = load i64, ptr %i.ahu, align 8, !tbaa !8
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %gep158.i594.us.us.us, i64 %indvars.iv.next.i596.us.us.us ; 2 uses
  %i.ahx = load i64, ptr %i.ahw, align 8, !tbaa !8
  store i64 %i.ahx, ptr %i.ahu, align 8, !tbaa !8
  store i64 %i.ahv, ptr %i.ahw, align 8, !tbaa !8
  %indvars.iv.next.i596.us.us.us.1 = add nuw nsw i64 %indvars.iv.i595.us.us.us, 2 ; 2 uses
  %niter2181.next.1 = add i64 %niter2181, 2       ; 2 uses
  %niter2181.ncmp.1 = icmp eq i64 %niter2181.next.1, %unroll_iter2180
  br i1 %niter2181.ncmp.1, label %middle.block1774.loopexit.unr-lcssa, label %scalar.ph1763, !llvm.loop !202

middle.block1774.loopexit.unr-lcssa:              ; preds = %scalar.ph1763
  br i1 %lcmp.mod2178.not, label %middle.block1774, label %scalar.ph1763.epil.preheader

scalar.ph1763.epil.preheader:                     ; preds = %middle.block1774.loopexit.unr-lcssa, %scalar.ph1763.preheader
  %indvars.iv.i595.us.us.us.epil.init = phi i64 [ 0, %scalar.ph1763.preheader ], [ %indvars.iv.next.i596.us.us.us.1, %middle.block1774.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2179)
  %i.ahy = getelementptr inbounds nuw [8 x i8], ptr %gep.i593.us.us.us, i64 %indvars.iv.i595.us.us.us.epil.init ; 2 uses
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !8
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %gep158.i594.us.us.us, i64 %indvars.iv.i595.us.us.us.epil.init ; 2 uses
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !8
  store i64 %i.aib, ptr %i.ahy, align 8, !tbaa !8
  store i64 %i.ahz, ptr %i.aia, align 8, !tbaa !8
  br label %middle.block1774

middle.block1774:                                 ; preds = %vector.body1767, %scalar.ph1763.epil.preheader, %middle.block1774.loopexit.unr-lcssa
  %indvars.iv.next139.i598.us.us.us = add nuw nsw i64 %indvars.iv138.i592.us.us.us, %i.agl ; 2 uses
  %i.aic = icmp samesign ult i64 %indvars.iv.next139.i598.us.us.us, %i.agn
  br i1 %i.aic, label %.preheader119.i591.us.us.us, label %bb.av, !llvm.loop !203

bb.av:                                            ; preds = %middle.block1774
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %.1124.i588.us.us.us, i64 %i.agk ; 2 uses
  %i.aie = icmp ult ptr %i.aid, %i.afs
  %indvar.next1753 = add i64 %indvar1752, 1
  br i1 %i.aie, label %.preheader120.i587.us.us.us, label %Abc_TtSwapVars.exit616.us.us.us, !llvm.loop !204

bb.aw:                                            ; preds = %bb.at
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit616.us.us.us, label %.preheader.lr.ph.i599.us.us.us

.preheader.lr.ph.i599.us.us.us:                   ; preds = %bb.aw
  %i.aif = add nsw i32 %i.agb, -6                 ; 3 uses
  %i.aig = shl nuw nsw i32 1, %i.aif
  %i.aih = shl nuw nsw i32 1, %.017.i.i.us.us.us
  %i.aii = zext nneg i32 %.017.i.i.us.us.us to i64
  %i.aij = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.aii
  %i.aik = load i64, ptr %i.aij, align 8, !tbaa !8 ; 5 uses
  %i.ail = zext nneg i32 %i.aih to i64            ; 3 uses
  %i.aim = xor i64 %i.aik, -1                     ; 2 uses
  %i.ain = shl nuw nsw i32 2, %i.aif
  %i.aio = zext nneg i32 %i.ain to i64
  %i.aip = zext nneg i32 %i.aig to i64            ; 3 uses
  %min.iters.check1734 = icmp eq i32 %i.aif, 0
  %n.vec1736 = and i64 %i.aip, 2147483646
  %broadcast.splatinsert1737 = insertelement <2 x i64> poison, i64 %i.aik, i64 0
  %broadcast.splat1738 = shufflevector <2 x i64> %broadcast.splatinsert1737, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1739 = insertelement <2 x i64> poison, i64 %i.ail, i64 0
  %broadcast.splat1740 = shufflevector <2 x i64> %broadcast.splatinsert1739, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1741 = insertelement <2 x i64> poison, i64 %i.aim, i64 0
  %broadcast.splat1742 = shufflevector <2 x i64> %broadcast.splatinsert1741, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i600.us.us.us

.preheader.i600.us.us.us:                         ; preds = %middle.block1748, %.preheader.lr.ph.i599.us.us.us
  %.0126.i601.us.us.us = phi ptr [ %i.m, %.preheader.lr.ph.i599.us.us.us ], [ %i.ajm, %middle.block1748 ] ; 4 uses
  %invariant.gep159.i602.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i601.us.us.us, i64 %i.aip ; 2 uses
  br i1 %min.iters.check1734, label %scalar.ph1733, label %vector.body1743

vector.body1743:                                  ; preds = %.preheader.i600.us.us.us, %vector.body1743
  %index1744 = phi i64 [ %index.next1747, %vector.body1743 ], [ 0, %.preheader.i600.us.us.us ] ; 3 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %.0126.i601.us.us.us, i64 %index1744 ; 2 uses
  %wide.load1745 = load <2 x i64>, ptr %i.aiq, align 8, !tbaa !8 ; 2 uses
  %i.air = and <2 x i64> %wide.load1745, %broadcast.splat1738
  %i.ais = lshr <2 x i64> %i.air, %broadcast.splat1740
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i602.us.us.us, i64 %index1744 ; 2 uses
  %wide.load1746 = load <2 x i64>, ptr %i.ait, align 8, !tbaa !8 ; 2 uses
  %i.aiu = shl <2 x i64> %wide.load1746, %broadcast.splat1740
  %i.aiv = and <2 x i64> %i.aiu, %broadcast.splat1738
  %i.aiw = and <2 x i64> %wide.load1745, %broadcast.splat1742
  %i.aix = or <2 x i64> %i.aiv, %i.aiw
  store <2 x i64> %i.aix, ptr %i.aiq, align 8, !tbaa !8
  %i.aiy = and <2 x i64> %wide.load1746, %broadcast.splat1738
  %i.aiz = or <2 x i64> %i.aiy, %i.ais
  store <2 x i64> %i.aiz, ptr %i.ait, align 8, !tbaa !8
  %index.next1747 = add nuw i64 %index1744, 2     ; 2 uses
  %i.aja = icmp eq i64 %index.next1747, %n.vec1736
  br i1 %i.aja, label %middle.block1748, label %vector.body1743, !llvm.loop !205

scalar.ph1733:                                    ; preds = %.preheader.i600.us.us.us, %scalar.ph1733
  %indvars.iv141.i603.us.us.us = phi i64 [ %indvars.iv.next142.i605.us.us.us, %scalar.ph1733 ], [ 0, %.preheader.i600.us.us.us ] ; 3 uses
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %.0126.i601.us.us.us, i64 %indvars.iv141.i603.us.us.us ; 2 uses
  %i.ajc = load i64, ptr %i.ajb, align 8, !tbaa !8 ; 2 uses
  %i.ajd = and i64 %i.ajc, %i.aik
  %i.aje = lshr i64 %i.ajd, %i.ail
  %gep160.i604.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i602.us.us.us, i64 %indvars.iv141.i603.us.us.us ; 2 uses
  %i.ajf = load i64, ptr %gep160.i604.us.us.us, align 8, !tbaa !8 ; 2 uses
  %i.ajg = shl i64 %i.ajf, %i.ail
  %i.ajh = and i64 %i.ajg, %i.aik
  %i.aji = and i64 %i.ajc, %i.aim
  %i.ajj = or i64 %i.ajh, %i.aji
  store i64 %i.ajj, ptr %i.ajb, align 8, !tbaa !8
  %i.ajk = and i64 %i.ajf, %i.aik
  %i.ajl = or i64 %i.ajk, %i.aje
  store i64 %i.ajl, ptr %gep160.i604.us.us.us, align 8, !tbaa !8
  %indvars.iv.next142.i605.us.us.us = add nuw nsw i64 %indvars.iv141.i603.us.us.us, 1 ; 2 uses
  %exitcond145.not.i606.us.us.us = icmp eq i64 %indvars.iv.next142.i605.us.us.us, %i.aip
  br i1 %exitcond145.not.i606.us.us.us, label %middle.block1748, label %scalar.ph1733, !llvm.loop !206

middle.block1748:                                 ; preds = %vector.body1743, %scalar.ph1733
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %.0126.i601.us.us.us, i64 %i.aio ; 2 uses
  %i.ajn = icmp ult ptr %i.ajm, %i.afs
  br i1 %i.ajn, label %.preheader.i600.us.us.us, label %Abc_TtSwapVars.exit616.us.us.us, !llvm.loop !207

bb.ax:                                            ; preds = %bb.as
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit616.us.us.us, label %.lr.ph.i608.us.us.us

.lr.ph.i608.us.us.us:                             ; preds = %bb.ax
  %.neg.i609.us.us.us = shl nsw i32 -1, %.017.i.i.us.us.us
  %i.ajo = shl nuw nsw i32 1, %i.agb
  %i.ajp = add nsw i32 %.neg.i609.us.us.us, %i.ajo
  %i.ajq = zext nneg i32 %.017.i.i.us.us.us to i64
  %i.ajr = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.ajq
  %i.ajs = getelementptr inbounds [24 x i8], ptr %i.ajr, i64 %indvars.iv.next.i108.i.us.us.us ; 3 uses
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !8 ; 4 uses
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajs, i64 8
  %i.ajv = load i64, ptr %i.aju, align 8, !tbaa !8 ; 4 uses
  %i.ajw = zext i32 %i.ajp to i64                 ; 7 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajs, i64 16
  %i.ajy = load i64, ptr %i.ajx, align 8, !tbaa !8 ; 4 uses
  br i1 %min.iters.check1714, label %scalar.ph1713, label %vector.ph1715

vector.ph1715:                                    ; preds = %.lr.ph.i608.us.us.us
  %broadcast.splatinsert1717 = insertelement <2 x i64> poison, i64 %i.ajt, i64 0
  %broadcast.splat1718 = shufflevector <2 x i64> %broadcast.splatinsert1717, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1719 = insertelement <2 x i64> poison, i64 %i.ajv, i64 0
  %broadcast.splat1720 = shufflevector <2 x i64> %broadcast.splatinsert1719, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1721 = insertelement <2 x i64> poison, i64 %i.ajw, i64 0
  %broadcast.splat1722 = shufflevector <2 x i64> %broadcast.splatinsert1721, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1723 = insertelement <2 x i64> poison, i64 %i.ajy, i64 0
  %broadcast.splat1724 = shufflevector <2 x i64> %broadcast.splatinsert1723, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1725

vector.body1725:                                  ; preds = %vector.body1725, %vector.ph1715
  %index1726 = phi i64 [ 0, %vector.ph1715 ], [ %index.next1729, %vector.body1725 ] ; 2 uses
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index1726 ; 3 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 16 ; 2 uses
  %wide.load1727 = load <2 x i64>, ptr %i.ajz, align 16, !tbaa !8 ; 3 uses
  %wide.load1728 = load <2 x i64>, ptr %i.aka, align 16, !tbaa !8 ; 3 uses
  %i.akb = and <2 x i64> %wide.load1727, %broadcast.splat1718
  %i.akc = and <2 x i64> %wide.load1728, %broadcast.splat1718
  %i.akd = and <2 x i64> %wide.load1727, %broadcast.splat1720
  %i.ake = and <2 x i64> %wide.load1728, %broadcast.splat1720
  %i.akf = shl <2 x i64> %i.akd, %broadcast.splat1722
  %i.akg = shl <2 x i64> %i.ake, %broadcast.splat1722
  %i.akh = or <2 x i64> %i.akf, %i.akb
  %i.aki = or <2 x i64> %i.akg, %i.akc
  %i.akj = and <2 x i64> %wide.load1727, %broadcast.splat1724
  %i.akk = and <2 x i64> %wide.load1728, %broadcast.splat1724
  %i.akl = lshr <2 x i64> %i.akj, %broadcast.splat1722
  %i.akm = lshr <2 x i64> %i.akk, %broadcast.splat1722
  %i.akn = or <2 x i64> %i.akh, %i.akl
  %i.ako = or <2 x i64> %i.aki, %i.akm
  store <2 x i64> %i.akn, ptr %i.ajz, align 16, !tbaa !8
  store <2 x i64> %i.ako, ptr %i.aka, align 16, !tbaa !8
  %index.next1729 = add nuw i64 %index1726, 4     ; 2 uses
  %i.akp = icmp eq i64 %index.next1729, %n.vec1716
  br i1 %i.akp, label %Abc_TtSwapVars.exit616.us.us.us, label %vector.body1725, !llvm.loop !208

scalar.ph1713:                                    ; preds = %.lr.ph.i608.us.us.us
  %i.akq = load i64, ptr %i.m, align 16, !tbaa !8 ; 3 uses
  %i.akr = and i64 %i.akq, %i.ajt
  %i.aks = and i64 %i.akq, %i.ajv
  %i.akt = shl i64 %i.aks, %i.ajw
  %i.aku = or i64 %i.akt, %i.akr
  %i.akv = and i64 %i.akq, %i.ajy
  %i.akw = lshr i64 %i.akv, %i.ajw
  %i.akx = or i64 %i.aku, %i.akw
  store i64 %i.akx, ptr %i.m, align 16, !tbaa !8
  br i1 %exitcond150.not.i614.us.us.us, label %Abc_TtSwapVars.exit616.us.us.us, label %scalar.ph1713.1

scalar.ph1713.1:                                  ; preds = %scalar.ph1713
  %i.aky = load i64, ptr %i.yk, align 8, !tbaa !8 ; 3 uses
  %i.akz = and i64 %i.aky, %i.ajt
  %i.ala = and i64 %i.aky, %i.ajv
  %i.alb = shl i64 %i.ala, %i.ajw
  %i.alc = or i64 %i.alb, %i.akz
  %i.ald = and i64 %i.aky, %i.ajy
  %i.ale = lshr i64 %i.ald, %i.ajw
  %i.alf = or i64 %i.alc, %i.ale
  store i64 %i.alf, ptr %i.yk, align 8, !tbaa !8
  br i1 %exitcond150.not.i614.us.us.us.1, label %Abc_TtSwapVars.exit616.us.us.us, label %scalar.ph1713.2

scalar.ph1713.2:                                  ; preds = %scalar.ph1713.1
  %i.alg = load i64, ptr %i.yl, align 16, !tbaa !8 ; 3 uses
  %i.alh = and i64 %i.alg, %i.ajt
  %i.ali = and i64 %i.alg, %i.ajv
  %i.alj = shl i64 %i.ali, %i.ajw
  %i.alk = or i64 %i.alj, %i.alh
  %i.all = and i64 %i.alg, %i.ajy
  %i.alm = lshr i64 %i.all, %i.ajw
  %i.aln = or i64 %i.alk, %i.alm
  store i64 %i.aln, ptr %i.yl, align 16, !tbaa !8
  br label %Abc_TtSwapVars.exit616.us.us.us

Abc_TtSwapVars.exit616.us.us.us:                  ; preds = %bb.av, %middle.block1748, %vector.body1725, %scalar.ph1713, %scalar.ph1713.1, %scalar.ph1713.2, %bb.ax, %bb.aw, %bb.au, %bb.ar
  %i.alo = add nsw i32 %.017.i.i.us.us.us, -1
  br label %bb.ay

bb.ay:                                            ; preds = %Abc_TtSwapVars.exit616.us.us.us, %.lr.ph.i106.i.us.us.us
  %.1.i.i290.us.us.us = phi i32 [ %.017.i.i.us.us.us, %.lr.ph.i106.i.us.us.us ], [ %i.alo, %Abc_TtSwapVars.exit616.us.us.us ] ; 2 uses
  %i.alp = icmp samesign ugt i64 %indvars.iv.i107.i.us.us.us, 1
  %i.alq = icmp sgt i32 %.1.i.i290.us.us.us, -1
  %i.alr = select i1 %i.alp, i1 %i.alq, i1 false
  br i1 %i.alr, label %.lr.ph.i106.i.us.us.us, label %Abc_TtExpand.exit.i.us.us.us, !llvm.loop !209

Abc_TtExpand.exit.i.us.us.us:                     ; preds = %bb.ay, %Abc_TtCopy.exit104.i.us.us.us
  %i.als = icmp ne i32 %i.zk, 0
  %i.alt = and i1 %i.als, %i.afm
  br i1 %i.alt, label %.lr.ph.preheader.i109.i.us.us.us, label %Abc_TtExpand.exit115.i.us.us.us

.lr.ph.preheader.i109.i.us.us.us:                 ; preds = %Abc_TtExpand.exit.i.us.us.us
  %i.alu = add nsw i32 %i.zk, -1
  %i.alv = zext nneg i32 %i.ack to i64
  %i.alw = sext i32 %i.acm to i64
  %.idx128.i549.us.us.us = shl nsw i64 %i.alw, 3
  %i.alx = getelementptr inbounds i8, ptr %i.n, i64 %.idx128.i549.us.us.us ; 2 uses
  %smax.i575.us.us.us = call i32 @llvm.smax.i32(i32 %i.acm, i32 1)
  %min.iters.check1650 = icmp slt i32 %i.acm, 4
  %i.aly = and i32 %smax.i575.us.us.us, 2147483644
  %n.vec1652 = zext nneg i32 %i.aly to i64
  %exitcond150.not.i579.us.us.us = icmp slt i32 %i.acm, 2
  %exitcond150.not.i579.us.us.us.1 = icmp eq i32 %i.acl, 1
  br label %.lr.ph.i110.i.us.us.us

.lr.ph.i110.i.us.us.us:                           ; preds = %bb.bg, %.lr.ph.preheader.i109.i.us.us.us
  %indvars.iv.i111.i.us.us.us = phi i64 [ %i.alv, %.lr.ph.preheader.i109.i.us.us.us ], [ %indvars.iv.next.i113.i.us.us.us, %bb.bg ] ; 4 uses
  %.017.i112.i.us.us.us = phi i32 [ %i.alu, %.lr.ph.preheader.i109.i.us.us.us ], [ %.1.i114.i.us.us.us, %bb.bg ] ; 13 uses
  %indvars.iv.next.i113.i.us.us.us = add nsw i64 %indvars.iv.i111.i.us.us.us, -1 ; 5 uses
  %i.alz = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv.next.i113.i.us.us.us
  %i.ama = load i32, ptr %i.alz, align 4, !tbaa !15
  %i.amb = zext nneg i32 %.017.i112.i.us.us.us to i64 ; 2 uses
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.yt, i64 %i.amb
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !15
  %i.ame = icmp sgt i32 %i.ama, %i.amd
  br i1 %i.ame, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i110.i.us.us.us
  %i.amf = icmp samesign ugt i64 %indvars.iv.next.i113.i.us.us.us, %i.amb
  br i1 %i.amf, label %bb.ba, label %Abc_TtSwapVars.exit581.us.us.us

bb.ba:                                            ; preds = %bb.az
  %i.amg = trunc nuw nsw i64 %indvars.iv.next.i113.i.us.us.us to i32 ; 3 uses
  %i.amh = icmp slt i64 %indvars.iv.i111.i.us.us.us, 7
  br i1 %i.amh, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ami = icmp slt i32 %.017.i112.i.us.us.us, 6
  br i1 %i.ami, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit581.us.us.us, label %.preheader120.lr.ph.i551.us.us.us

.preheader120.lr.ph.i551.us.us.us:                ; preds = %bb.bc
  %i.amj = add nsw i32 %i.amg, -6                 ; 2 uses
  %i.amk = shl nuw nsw i32 1, %i.amj              ; 2 uses
  %i.aml = add nsw i32 %.017.i112.i.us.us.us, -6  ; 5 uses
  %i.amm = shl nuw nsw i32 1, %i.aml
  %i.amn = shl nuw nsw i32 2, %i.aml              ; 2 uses
  %i.amo = shl nuw nsw i32 2, %i.amj
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = zext nneg i32 %i.amn to i64            ; 3 uses
  %i.amr = zext nneg i32 %i.amm to i64            ; 6 uses
  %i.ams = zext nneg i32 %i.amk to i64            ; 4 uses
  %i.amt = shl nuw nsw i64 %i.amr, 3              ; 2 uses
  %umax1691 = call i64 @llvm.umax.i64(i64 %i.amq, i64 %i.ams)
  %i.amu = icmp samesign ult i32 %i.amn, %i.amk
  %umin1692 = zext i1 %i.amu to i64               ; 3 uses
  %i.amv = or disjoint i64 %umin1692, %i.amq
  %i.amw = sub nsw i64 %umax1691, %i.amv          ; 2 uses
  %17 = shl nuw nsw i64 %i.amr, 4
  %18 = shl nuw nsw i64 %i.ams, 3                 ; 2 uses
  %i.amx = add nsw i32 %.017.i112.i.us.us.us, -5
  %i.amy = zext nneg i32 %i.amx to i64
  %i.amz = lshr i64 %i.amw, %i.amy
  %i.ana = add i64 %i.amz, %umin1692
  %i.anb = shl i64 %i.ana, 3
  %i.anc = add nsw i32 %.017.i112.i.us.us.us, -5
  %i.and = zext nneg i32 %i.anc to i64
  %i.ane = shl i64 %i.anb, %i.and
  %i.anf = add nuw i64 %indvars.iv.i111.i.us.us.us, 4294967290
  %i.ang = and i64 %i.anf, 4294967295
  %i.anh = add nuw nsw i64 %i.ang, 3
  %i.ani = getelementptr i8, ptr %i.n, i64 %i.amt
  %i.anj = getelementptr i8, ptr %i.n, i64 %18
  %i.ank = getelementptr i8, ptr %i.n, i64 %i.ane
  %i.anl = getelementptr i8, ptr %i.ank, i64 %18
  %i.anm = getelementptr i8, ptr %i.anl, i64 %i.amt
  %min.iters.check1700 = icmp ult i32 %i.aml, 4
  %19 = add nsw i32 %.017.i112.i.us.us.us, -5
  %20 = zext nneg i32 %19 to i64
  %21 = lshr i64 %i.amw, %20
  %22 = add i64 %21, %umin1692
  %23 = shl i64 %22, 3
  %24 = add nsw i32 %.017.i112.i.us.us.us, -5
  %25 = zext nneg i32 %24 to i64
  %26 = shl i64 %23, %25
  %i.ann = getelementptr i8, ptr %i.n, i64 %26
  %invariant.gep2287 = getelementptr i8, ptr %i.ann, i64 %17
  %n.vec1702 = and i64 %i.amr, 2147483644
  %xtraiter2182 = and i64 %i.amr, 1
  %i.ano = icmp eq i32 %i.aml, 0
  %unroll_iter2185 = and i64 %i.amr, 2147483646
  %lcmp.mod2183.not = icmp eq i64 %xtraiter2182, 0
  %lcmp.mod2184 = icmp eq i32 %i.aml, 0
  br label %.preheader120.i552.us.us.us

.preheader120.i552.us.us.us:                      ; preds = %bb.bd, %.preheader120.lr.ph.i551.us.us.us
  %indvar1688 = phi i64 [ %indvar.next1689, %bb.bd ], [ 0, %.preheader120.lr.ph.i551.us.us.us ] ; 2 uses
  %.1124.i553.us.us.us = phi ptr [ %i.aoi, %bb.bd ], [ %i.n, %.preheader120.lr.ph.i551.us.us.us ] ; 3 uses
  %i.anp = shl i64 %indvar1688, %i.anh            ; 4 uses
  %scevgep1690 = getelementptr i8, ptr %i.ani, i64 %i.anp
  %scevgep1694 = getelementptr i8, ptr %i.anj, i64 %i.anp
  %scevgep1695 = getelementptr i8, ptr %i.anm, i64 %i.anp
  %invariant.gep157.i555.us.us.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i553.us.us.us, i64 %i.amr
  %invariant.gep157.i555.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i553.us.us.us, i64 %i.ams
  %scevgep1695.a = getelementptr i8, ptr %invariant.gep2287, i64 %i.anp
  %bound01696 = icmp ult ptr %scevgep1690, %scevgep1695
  %bound11697 = icmp ult ptr %scevgep1694, %scevgep1695.a
  %found.conflict1698 = and i1 %bound01696, %bound11697
  br label %.preheader119.i556.us.us.us

.preheader119.i556.us.us.us:                      ; preds = %middle.block1710, %.preheader120.i552.us.us.us
  %indvars.iv138.i557.us.us.us = phi i64 [ 0, %.preheader120.i552.us.us.us ], [ %indvars.iv.next139.i563.us.us.us, %middle.block1710 ] ; 3 uses
  %gep.i558.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i555.us.us.us.a, i64 %indvars.iv138.i557.us.us.us ; 4 uses
  %gep158.i559.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i555.us.us.us, i64 %indvars.iv138.i557.us.us.us ; 4 uses
  %brmerge2284 = select i1 %min.iters.check1700, i1 true, i1 %found.conflict1698
  br i1 %brmerge2284, label %scalar.ph1699.preheader, label %vector.body1703

scalar.ph1699.preheader:                          ; preds = %.preheader119.i556.us.us.us
  br i1 %i.ano, label %scalar.ph1699.epil.preheader, label %scalar.ph1699

vector.body1703:                                  ; preds = %.preheader119.i556.us.us.us, %vector.body1703
  %index1704 = phi i64 [ %index.next1709, %vector.body1703 ], [ 0, %.preheader119.i556.us.us.us ] ; 3 uses
  %i.anq = getelementptr inbounds nuw [8 x i8], ptr %gep.i558.us.us.us, i64 %index1704 ; 3 uses
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 16 ; 2 uses
  %wide.load1705 = load <2 x i64>, ptr %i.anq, align 8, !tbaa !8, !alias.scope !210, !noalias !213
  %wide.load1706 = load <2 x i64>, ptr %i.anr, align 8, !tbaa !8, !alias.scope !210, !noalias !213
  %i.ans = getelementptr inbounds nuw [8 x i8], ptr %gep158.i559.us.us.us, i64 %index1704 ; 3 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 16 ; 2 uses
  %wide.load1707 = load <2 x i64>, ptr %i.ans, align 8, !tbaa !8, !alias.scope !213
  %wide.load1708 = load <2 x i64>, ptr %i.ant, align 8, !tbaa !8, !alias.scope !213
  store <2 x i64> %wide.load1707, ptr %i.anq, align 8, !tbaa !8, !alias.scope !210, !noalias !213
  store <2 x i64> %wide.load1708, ptr %i.anr, align 8, !tbaa !8, !alias.scope !210, !noalias !213
  store <2 x i64> %wide.load1705, ptr %i.ans, align 8, !tbaa !8, !alias.scope !213
  store <2 x i64> %wide.load1706, ptr %i.ant, align 8, !tbaa !8, !alias.scope !213
  %index.next1709 = add nuw i64 %index1704, 4     ; 2 uses
  %i.anu = icmp eq i64 %index.next1709, %n.vec1702
  br i1 %i.anu, label %middle.block1710, label %vector.body1703, !llvm.loop !215

scalar.ph1699:                                    ; preds = %scalar.ph1699.preheader, %scalar.ph1699
  %indvars.iv.i560.us.us.us = phi i64 [ %indvars.iv.next.i561.us.us.us.1, %scalar.ph1699 ], [ 0, %scalar.ph1699.preheader ] ; 4 uses
  %niter2186 = phi i64 [ %niter2186.next.1, %scalar.ph1699 ], [ 0, %scalar.ph1699.preheader ]
  %i.anv = getelementptr inbounds nuw [8 x i8], ptr %gep.i558.us.us.us, i64 %indvars.iv.i560.us.us.us ; 2 uses
  %i.anw = load i64, ptr %i.anv, align 8, !tbaa !8
  %i.anx = getelementptr inbounds nuw [8 x i8], ptr %gep158.i559.us.us.us, i64 %indvars.iv.i560.us.us.us ; 2 uses
  %i.any = load i64, ptr %i.anx, align 8, !tbaa !8
  store i64 %i.any, ptr %i.anv, align 8, !tbaa !8
  store i64 %i.anw, ptr %i.anx, align 8, !tbaa !8
  %indvars.iv.next.i561.us.us.us = or disjoint i64 %indvars.iv.i560.us.us.us, 1 ; 2 uses
  %i.anz = getelementptr inbounds nuw [8 x i8], ptr %gep.i558.us.us.us, i64 %indvars.iv.next.i561.us.us.us ; 2 uses
  %i.aoa = load i64, ptr %i.anz, align 8, !tbaa !8
  %i.aob = getelementptr inbounds nuw [8 x i8], ptr %gep158.i559.us.us.us, i64 %indvars.iv.next.i561.us.us.us ; 2 uses
  %i.aoc = load i64, ptr %i.aob, align 8, !tbaa !8
  store i64 %i.aoc, ptr %i.anz, align 8, !tbaa !8
  store i64 %i.aoa, ptr %i.aob, align 8, !tbaa !8
  %indvars.iv.next.i561.us.us.us.1 = add nuw nsw i64 %indvars.iv.i560.us.us.us, 2 ; 2 uses
  %niter2186.next.1 = add i64 %niter2186, 2       ; 2 uses
  %niter2186.ncmp.1 = icmp eq i64 %niter2186.next.1, %unroll_iter2185
  br i1 %niter2186.ncmp.1, label %middle.block1710.loopexit.unr-lcssa, label %scalar.ph1699, !llvm.loop !216

middle.block1710.loopexit.unr-lcssa:              ; preds = %scalar.ph1699
  br i1 %lcmp.mod2183.not, label %middle.block1710, label %scalar.ph1699.epil.preheader

scalar.ph1699.epil.preheader:                     ; preds = %middle.block1710.loopexit.unr-lcssa, %scalar.ph1699.preheader
  %indvars.iv.i560.us.us.us.epil.init = phi i64 [ 0, %scalar.ph1699.preheader ], [ %indvars.iv.next.i561.us.us.us.1, %middle.block1710.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2184)
  %i.aod = getelementptr inbounds nuw [8 x i8], ptr %gep.i558.us.us.us, i64 %indvars.iv.i560.us.us.us.epil.init ; 2 uses
  %i.aoe = load i64, ptr %i.aod, align 8, !tbaa !8
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %gep158.i559.us.us.us, i64 %indvars.iv.i560.us.us.us.epil.init ; 2 uses
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !8
  store i64 %i.aog, ptr %i.aod, align 8, !tbaa !8
  store i64 %i.aoe, ptr %i.aof, align 8, !tbaa !8
  br label %middle.block1710

middle.block1710:                                 ; preds = %vector.body1703, %scalar.ph1699.epil.preheader, %middle.block1710.loopexit.unr-lcssa
  %indvars.iv.next139.i563.us.us.us = add nuw nsw i64 %indvars.iv138.i557.us.us.us, %i.amq ; 2 uses
  %i.aoh = icmp samesign ult i64 %indvars.iv.next139.i563.us.us.us, %i.ams
  br i1 %i.aoh, label %.preheader119.i556.us.us.us, label %bb.bd, !llvm.loop !203

bb.bd:                                            ; preds = %middle.block1710
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %.1124.i553.us.us.us, i64 %i.amp ; 2 uses
  %i.aoj = icmp ult ptr %i.aoi, %i.alx
  %indvar.next1689 = add i64 %indvar1688, 1
  br i1 %i.aoj, label %.preheader120.i552.us.us.us, label %Abc_TtSwapVars.exit581.us.us.us, !llvm.loop !204

bb.be:                                            ; preds = %bb.bb
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit581.us.us.us, label %.preheader.lr.ph.i564.us.us.us

.preheader.lr.ph.i564.us.us.us:                   ; preds = %bb.be
  %i.aok = add nsw i32 %i.amg, -6                 ; 3 uses
  %i.aol = shl nuw nsw i32 1, %i.aok
  %i.aom = shl nuw nsw i32 1, %.017.i112.i.us.us.us
  %i.aon = zext nneg i32 %.017.i112.i.us.us.us to i64
  %i.aoo = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.aon
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !8 ; 5 uses
  %i.aoq = zext nneg i32 %i.aom to i64            ; 3 uses
  %i.aor = xor i64 %i.aop, -1                     ; 2 uses
  %i.aos = shl nuw nsw i32 2, %i.aok
  %i.aot = zext nneg i32 %i.aos to i64
  %i.aou = zext nneg i32 %i.aol to i64            ; 3 uses
  %min.iters.check1670 = icmp eq i32 %i.aok, 0
  %n.vec1672 = and i64 %i.aou, 2147483646
  %broadcast.splatinsert1673 = insertelement <2 x i64> poison, i64 %i.aop, i64 0
  %broadcast.splat1674 = shufflevector <2 x i64> %broadcast.splatinsert1673, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1675 = insertelement <2 x i64> poison, i64 %i.aoq, i64 0
  %broadcast.splat1676 = shufflevector <2 x i64> %broadcast.splatinsert1675, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1677 = insertelement <2 x i64> poison, i64 %i.aor, i64 0
  %broadcast.splat1678 = shufflevector <2 x i64> %broadcast.splatinsert1677, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i565.us.us.us

.preheader.i565.us.us.us:                         ; preds = %middle.block1684, %.preheader.lr.ph.i564.us.us.us
  %.0126.i566.us.us.us = phi ptr [ %i.n, %.preheader.lr.ph.i564.us.us.us ], [ %i.apr, %middle.block1684 ] ; 4 uses
  %invariant.gep159.i567.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i566.us.us.us, i64 %i.aou ; 2 uses
  br i1 %min.iters.check1670, label %scalar.ph1669, label %vector.body1679

vector.body1679:                                  ; preds = %.preheader.i565.us.us.us, %vector.body1679
  %index1680 = phi i64 [ %index.next1683, %vector.body1679 ], [ 0, %.preheader.i565.us.us.us ] ; 3 uses
  %i.aov = getelementptr inbounds nuw [8 x i8], ptr %.0126.i566.us.us.us, i64 %index1680 ; 2 uses
  %wide.load1681 = load <2 x i64>, ptr %i.aov, align 8, !tbaa !8 ; 2 uses
  %i.aow = and <2 x i64> %wide.load1681, %broadcast.splat1674
  %i.aox = lshr <2 x i64> %i.aow, %broadcast.splat1676
  %i.aoy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i567.us.us.us, i64 %index1680 ; 2 uses
  %wide.load1682 = load <2 x i64>, ptr %i.aoy, align 8, !tbaa !8 ; 2 uses
  %i.aoz = shl <2 x i64> %wide.load1682, %broadcast.splat1676
  %i.apa = and <2 x i64> %i.aoz, %broadcast.splat1674
  %i.apb = and <2 x i64> %wide.load1681, %broadcast.splat1678
  %i.apc = or <2 x i64> %i.apa, %i.apb
  store <2 x i64> %i.apc, ptr %i.aov, align 8, !tbaa !8
  %i.apd = and <2 x i64> %wide.load1682, %broadcast.splat1674
  %i.ape = or <2 x i64> %i.apd, %i.aox
  store <2 x i64> %i.ape, ptr %i.aoy, align 8, !tbaa !8
  %index.next1683 = add nuw i64 %index1680, 2     ; 2 uses
  %i.apf = icmp eq i64 %index.next1683, %n.vec1672
  br i1 %i.apf, label %middle.block1684, label %vector.body1679, !llvm.loop !217

scalar.ph1669:                                    ; preds = %.preheader.i565.us.us.us, %scalar.ph1669
  %indvars.iv141.i568.us.us.us = phi i64 [ %indvars.iv.next142.i570.us.us.us, %scalar.ph1669 ], [ 0, %.preheader.i565.us.us.us ] ; 3 uses
  %i.apg = getelementptr inbounds nuw [8 x i8], ptr %.0126.i566.us.us.us, i64 %indvars.iv141.i568.us.us.us ; 2 uses
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !8 ; 2 uses
  %i.api = and i64 %i.aph, %i.aop
  %i.apj = lshr i64 %i.api, %i.aoq
  %gep160.i569.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i567.us.us.us, i64 %indvars.iv141.i568.us.us.us ; 2 uses
  %i.apk = load i64, ptr %gep160.i569.us.us.us, align 8, !tbaa !8 ; 2 uses
  %i.apl = shl i64 %i.apk, %i.aoq
  %i.apm = and i64 %i.apl, %i.aop
  %i.apn = and i64 %i.aph, %i.aor
  %i.apo = or i64 %i.apm, %i.apn
  store i64 %i.apo, ptr %i.apg, align 8, !tbaa !8
  %i.app = and i64 %i.apk, %i.aop
  %i.apq = or i64 %i.app, %i.apj
  store i64 %i.apq, ptr %gep160.i569.us.us.us, align 8, !tbaa !8
  %indvars.iv.next142.i570.us.us.us = add nuw nsw i64 %indvars.iv141.i568.us.us.us, 1 ; 2 uses
  %exitcond145.not.i571.us.us.us = icmp eq i64 %indvars.iv.next142.i570.us.us.us, %i.aou
  br i1 %exitcond145.not.i571.us.us.us, label %middle.block1684, label %scalar.ph1669, !llvm.loop !218

middle.block1684:                                 ; preds = %vector.body1679, %scalar.ph1669
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %.0126.i566.us.us.us, i64 %i.aot ; 2 uses
  %i.aps = icmp ult ptr %i.apr, %i.alx
  br i1 %i.aps, label %.preheader.i565.us.us.us, label %Abc_TtSwapVars.exit581.us.us.us, !llvm.loop !207

bb.bf:                                            ; preds = %bb.ba
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit581.us.us.us, label %.lr.ph.i573.us.us.us

.lr.ph.i573.us.us.us:                             ; preds = %bb.bf
  %.neg.i574.us.us.us = shl nsw i32 -1, %.017.i112.i.us.us.us
  %i.apt = shl nuw nsw i32 1, %i.amg
  %i.apu = add nsw i32 %.neg.i574.us.us.us, %i.apt
  %i.apv = zext nneg i32 %.017.i112.i.us.us.us to i64
  %i.apw = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.apv
  %i.apx = getelementptr inbounds [24 x i8], ptr %i.apw, i64 %indvars.iv.next.i113.i.us.us.us ; 3 uses
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !8 ; 4 uses
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  %i.aqa = load i64, ptr %i.apz, align 8, !tbaa !8 ; 4 uses
  %i.aqb = zext i32 %i.apu to i64                 ; 7 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apx, i64 16
  %i.aqd = load i64, ptr %i.aqc, align 8, !tbaa !8 ; 4 uses
  br i1 %min.iters.check1650, label %scalar.ph1649, label %vector.ph1651

vector.ph1651:                                    ; preds = %.lr.ph.i573.us.us.us
  %broadcast.splatinsert1653 = insertelement <2 x i64> poison, i64 %i.apy, i64 0
  %broadcast.splat1654 = shufflevector <2 x i64> %broadcast.splatinsert1653, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1655 = insertelement <2 x i64> poison, i64 %i.aqa, i64 0
  %broadcast.splat1656 = shufflevector <2 x i64> %broadcast.splatinsert1655, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1657 = insertelement <2 x i64> poison, i64 %i.aqb, i64 0
  %broadcast.splat1658 = shufflevector <2 x i64> %broadcast.splatinsert1657, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1659 = insertelement <2 x i64> poison, i64 %i.aqd, i64 0
  %broadcast.splat1660 = shufflevector <2 x i64> %broadcast.splatinsert1659, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1661

vector.body1661:                                  ; preds = %vector.body1661, %vector.ph1651
  %index1662 = phi i64 [ 0, %vector.ph1651 ], [ %index.next1665, %vector.body1661 ] ; 2 uses
  %i.aqe = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index1662 ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16 ; 2 uses
  %wide.load1663 = load <2 x i64>, ptr %i.aqe, align 16, !tbaa !8 ; 3 uses
  %wide.load1664 = load <2 x i64>, ptr %i.aqf, align 16, !tbaa !8 ; 3 uses
  %i.aqg = and <2 x i64> %wide.load1663, %broadcast.splat1654
  %i.aqh = and <2 x i64> %wide.load1664, %broadcast.splat1654
  %i.aqi = and <2 x i64> %wide.load1663, %broadcast.splat1656
  %i.aqj = and <2 x i64> %wide.load1664, %broadcast.splat1656
  %i.aqk = shl <2 x i64> %i.aqi, %broadcast.splat1658
  %i.aql = shl <2 x i64> %i.aqj, %broadcast.splat1658
  %i.aqm = or <2 x i64> %i.aqk, %i.aqg
  %i.aqn = or <2 x i64> %i.aql, %i.aqh
  %i.aqo = and <2 x i64> %wide.load1663, %broadcast.splat1660
  %i.aqp = and <2 x i64> %wide.load1664, %broadcast.splat1660
  %i.aqq = lshr <2 x i64> %i.aqo, %broadcast.splat1658
  %i.aqr = lshr <2 x i64> %i.aqp, %broadcast.splat1658
  %i.aqs = or <2 x i64> %i.aqm, %i.aqq
  %i.aqt = or <2 x i64> %i.aqn, %i.aqr
  store <2 x i64> %i.aqs, ptr %i.aqe, align 16, !tbaa !8
  store <2 x i64> %i.aqt, ptr %i.aqf, align 16, !tbaa !8
  %index.next1665 = add nuw i64 %index1662, 4     ; 2 uses
  %i.aqu = icmp eq i64 %index.next1665, %n.vec1652
  br i1 %i.aqu, label %Abc_TtSwapVars.exit581.us.us.us, label %vector.body1661, !llvm.loop !219

scalar.ph1649:                                    ; preds = %.lr.ph.i573.us.us.us
  %i.aqv = load i64, ptr %i.n, align 16, !tbaa !8 ; 3 uses
  %i.aqw = and i64 %i.aqv, %i.apy
  %i.aqx = and i64 %i.aqv, %i.aqa
  %i.aqy = shl i64 %i.aqx, %i.aqb
  %i.aqz = or i64 %i.aqy, %i.aqw
  %i.ara = and i64 %i.aqv, %i.aqd
  %i.arb = lshr i64 %i.ara, %i.aqb
  %i.arc = or i64 %i.aqz, %i.arb
  store i64 %i.arc, ptr %i.n, align 16, !tbaa !8
  br i1 %exitcond150.not.i579.us.us.us, label %Abc_TtSwapVars.exit581.us.us.us, label %scalar.ph1649.1

scalar.ph1649.1:                                  ; preds = %scalar.ph1649
  %i.ard = load i64, ptr %i.ym, align 8, !tbaa !8 ; 3 uses
  %i.are = and i64 %i.ard, %i.apy
  %i.arf = and i64 %i.ard, %i.aqa
  %i.arg = shl i64 %i.arf, %i.aqb
  %i.arh = or i64 %i.arg, %i.are
  %i.ari = and i64 %i.ard, %i.aqd
  %i.arj = lshr i64 %i.ari, %i.aqb
  %i.ark = or i64 %i.arh, %i.arj
  store i64 %i.ark, ptr %i.ym, align 8, !tbaa !8
  br i1 %exitcond150.not.i579.us.us.us.1, label %Abc_TtSwapVars.exit581.us.us.us, label %scalar.ph1649.2

scalar.ph1649.2:                                  ; preds = %scalar.ph1649.1
  %i.arl = load i64, ptr %i.yn, align 16, !tbaa !8 ; 3 uses
  %i.arm = and i64 %i.arl, %i.apy
  %i.arn = and i64 %i.arl, %i.aqa
  %i.aro = shl i64 %i.arn, %i.aqb
  %i.arp = or i64 %i.aro, %i.arm
  %i.arq = and i64 %i.arl, %i.aqd
  %i.arr = lshr i64 %i.arq, %i.aqb
  %i.ars = or i64 %i.arp, %i.arr
  store i64 %i.ars, ptr %i.yn, align 16, !tbaa !8
  br label %Abc_TtSwapVars.exit581.us.us.us

Abc_TtSwapVars.exit581.us.us.us:                  ; preds = %bb.bd, %middle.block1684, %vector.body1661, %scalar.ph1649, %scalar.ph1649.1, %scalar.ph1649.2, %bb.bf, %bb.be, %bb.bc, %bb.az
  %i.art = add nsw i32 %.017.i112.i.us.us.us, -1
  br label %bb.bg

bb.bg:                                            ; preds = %Abc_TtSwapVars.exit581.us.us.us, %.lr.ph.i110.i.us.us.us
  %.1.i114.i.us.us.us = phi i32 [ %.017.i112.i.us.us.us, %.lr.ph.i110.i.us.us.us ], [ %i.art, %Abc_TtSwapVars.exit581.us.us.us ] ; 2 uses
  %i.aru = icmp samesign ugt i64 %indvars.iv.i111.i.us.us.us, 1
  %i.arv = icmp sgt i32 %.1.i114.i.us.us.us, -1
  %i.arw = select i1 %i.aru, i1 %i.arv, i1 false
  br i1 %i.arw, label %.lr.ph.i110.i.us.us.us, label %Abc_TtExpand.exit115.i.us.us.us, !llvm.loop !209

Abc_TtExpand.exit115.i.us.us.us:                  ; preds = %bb.bg, %Abc_TtExpand.exit.i.us.us.us
  %i.arx = icmp ne i32 %i.zn, 0
  %i.ary = and i1 %i.arx, %i.afm
  br i1 %i.ary, label %.lr.ph.preheader.i116.i.us.us.us, label %Abc_TtExpand.exit122.i.us.us.us

.lr.ph.preheader.i116.i.us.us.us:                 ; preds = %Abc_TtExpand.exit115.i.us.us.us
  %i.arz = add nsw i32 %i.zn, -1
  %i.asa = zext nneg i32 %i.ack to i64
  %i.asb = sext i32 %i.acm to i64
  %.idx128.i.us.us.us = shl nsw i64 %i.asb, 3
  %i.asc = getelementptr inbounds i8, ptr %i.o, i64 %.idx128.i.us.us.us ; 2 uses
  %smax.i.us.us.us = call i32 @llvm.smax.i32(i32 %i.acm, i32 1)
  %min.iters.check1586 = icmp slt i32 %i.acm, 4
  %i.asd = and i32 %smax.i.us.us.us, 2147483644
  %n.vec1588 = zext nneg i32 %i.asd to i64
  %exitcond150.not.i.us.us.us = icmp slt i32 %i.acm, 2
  %exitcond150.not.i.us.us.us.1 = icmp eq i32 %i.acl, 1
  br label %.lr.ph.i117.i.us.us.us

.lr.ph.i117.i.us.us.us:                           ; preds = %bb.bo, %.lr.ph.preheader.i116.i.us.us.us
  %indvars.iv.i118.i.us.us.us = phi i64 [ %i.asa, %.lr.ph.preheader.i116.i.us.us.us ], [ %indvars.iv.next.i120.i.us.us.us, %bb.bo ] ; 4 uses
  %.017.i119.i.us.us.us = phi i32 [ %i.arz, %.lr.ph.preheader.i116.i.us.us.us ], [ %.1.i121.i.us.us.us, %bb.bo ] ; 13 uses
  %indvars.iv.next.i120.i.us.us.us = add nsw i64 %indvars.iv.i118.i.us.us.us, -1 ; 5 uses
  %i.ase = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv.next.i120.i.us.us.us
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !15
  %i.asg = zext nneg i32 %.017.i119.i.us.us.us to i64 ; 2 uses
  %i.ash = getelementptr inbounds nuw [4 x i8], ptr %i.zo, i64 %i.asg
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !15
  %i.asj = icmp sgt i32 %i.asf, %i.asi
  br i1 %i.asj, label %bb.bo, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i117.i.us.us.us
  %i.ask = icmp samesign ugt i64 %indvars.iv.next.i120.i.us.us.us, %i.asg
  br i1 %i.ask, label %bb.bi, label %Abc_TtSwapVars.exit.us.us.us

bb.bi:                                            ; preds = %bb.bh
  %i.asl = trunc nuw nsw i64 %indvars.iv.next.i120.i.us.us.us to i32 ; 3 uses
  %i.asm = icmp slt i64 %indvars.iv.i118.i.us.us.us, 7
  br i1 %i.asm, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.asn = icmp slt i32 %.017.i119.i.us.us.us, 6
  br i1 %i.asn, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit.us.us.us, label %.preheader120.lr.ph.i.us.us.us

.preheader120.lr.ph.i.us.us.us:                   ; preds = %bb.bk
  %i.aso = add nsw i32 %i.asl, -6                 ; 2 uses
  %i.asp = shl nuw nsw i32 1, %i.aso              ; 2 uses
  %i.asq = add nsw i32 %.017.i119.i.us.us.us, -6  ; 5 uses
  %i.asr = shl nuw nsw i32 1, %i.asq
  %i.ass = shl nuw nsw i32 2, %i.asq              ; 2 uses
  %i.ast = shl nuw nsw i32 2, %i.aso
  %i.asu = zext nneg i32 %i.ast to i64
  %i.asv = zext nneg i32 %i.ass to i64            ; 3 uses
  %i.asw = zext nneg i32 %i.asr to i64            ; 6 uses
  %i.asx = zext nneg i32 %i.asp to i64            ; 4 uses
  %i.asy = shl nuw nsw i64 %i.asw, 3              ; 2 uses
  %umax1627 = call i64 @llvm.umax.i64(i64 %i.asv, i64 %i.asx)
  %i.asz = icmp samesign ult i32 %i.ass, %i.asp
  %umin1628 = zext i1 %i.asz to i64               ; 3 uses
  %i.ata = or disjoint i64 %umin1628, %i.asv
  %i.atb = sub nsw i64 %umax1627, %i.ata          ; 2 uses
  %27 = shl nuw nsw i64 %i.asw, 4
  %28 = shl nuw nsw i64 %i.asx, 3                 ; 2 uses
  %i.atc = add nsw i32 %.017.i119.i.us.us.us, -5
  %i.atd = zext nneg i32 %i.atc to i64
  %i.ate = lshr i64 %i.atb, %i.atd
  %i.atf = add i64 %i.ate, %umin1628
  %i.atg = shl i64 %i.atf, 3
  %i.ath = add nsw i32 %.017.i119.i.us.us.us, -5
  %i.ati = zext nneg i32 %i.ath to i64
  %i.atj = shl i64 %i.atg, %i.ati
  %i.atk = add nuw i64 %indvars.iv.i118.i.us.us.us, 4294967290
  %i.atl = and i64 %i.atk, 4294967295
  %i.atm = add nuw nsw i64 %i.atl, 3
  %i.atn = getelementptr i8, ptr %i.o, i64 %i.asy
  %i.ato = getelementptr i8, ptr %i.o, i64 %28
  %i.atp = getelementptr i8, ptr %i.o, i64 %i.atj
  %i.atq = getelementptr i8, ptr %i.atp, i64 %28
  %i.atr = getelementptr i8, ptr %i.atq, i64 %i.asy
  %min.iters.check1636 = icmp ult i32 %i.asq, 4
  %29 = add nsw i32 %.017.i119.i.us.us.us, -5
  %30 = zext nneg i32 %29 to i64
  %31 = lshr i64 %i.atb, %30
  %32 = add i64 %31, %umin1628
  %33 = shl i64 %32, 3
  %34 = add nsw i32 %.017.i119.i.us.us.us, -5
  %35 = zext nneg i32 %34 to i64
  %36 = shl i64 %33, %35
  %i.ats = getelementptr i8, ptr %i.o, i64 %36
  %invariant.gep2290 = getelementptr i8, ptr %i.ats, i64 %27
  %n.vec1638 = and i64 %i.asw, 2147483644
  %xtraiter2187 = and i64 %i.asw, 1
  %i.att = icmp eq i32 %i.asq, 0
  %unroll_iter2190 = and i64 %i.asw, 2147483646
  %lcmp.mod2188.not = icmp eq i64 %xtraiter2187, 0
  %lcmp.mod2189 = icmp eq i32 %i.asq, 0
  br label %.preheader120.i.us.us.us

.preheader120.i.us.us.us:                         ; preds = %bb.bl, %.preheader120.lr.ph.i.us.us.us
  %indvar1624 = phi i64 [ %indvar.next1625, %bb.bl ], [ 0, %.preheader120.lr.ph.i.us.us.us ] ; 2 uses
  %.1124.i.us.us.us = phi ptr [ %i.aun, %bb.bl ], [ %i.o, %.preheader120.lr.ph.i.us.us.us ] ; 3 uses
  %i.atu = shl i64 %indvar1624, %i.atm            ; 4 uses
  %scevgep1626 = getelementptr i8, ptr %i.atn, i64 %i.atu
  %scevgep1630 = getelementptr i8, ptr %i.ato, i64 %i.atu
  %scevgep1631 = getelementptr i8, ptr %i.atr, i64 %i.atu
  %invariant.gep157.i.us.us.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i.us.us.us, i64 %i.asw
  %invariant.gep157.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i.us.us.us, i64 %i.asx
  %scevgep1631.a = getelementptr i8, ptr %invariant.gep2290, i64 %i.atu
  %bound01632 = icmp ult ptr %scevgep1626, %scevgep1631
  %bound11633 = icmp ult ptr %scevgep1630, %scevgep1631.a
  %found.conflict1634 = and i1 %bound01632, %bound11633
  br label %.preheader119.i.us.us.us

.preheader119.i.us.us.us:                         ; preds = %middle.block1646, %.preheader120.i.us.us.us
  %indvars.iv138.i.us.us.us = phi i64 [ 0, %.preheader120.i.us.us.us ], [ %indvars.iv.next139.i.us.us.us, %middle.block1646 ] ; 3 uses
  %gep.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.us.us.us.a, i64 %indvars.iv138.i.us.us.us ; 4 uses
  %gep158.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.us.us.us, i64 %indvars.iv138.i.us.us.us ; 4 uses
  %brmerge2285 = select i1 %min.iters.check1636, i1 true, i1 %found.conflict1634
  br i1 %brmerge2285, label %scalar.ph1635.preheader, label %vector.body1639

scalar.ph1635.preheader:                          ; preds = %.preheader119.i.us.us.us
  br i1 %i.att, label %scalar.ph1635.epil.preheader, label %scalar.ph1635

vector.body1639:                                  ; preds = %.preheader119.i.us.us.us, %vector.body1639
  %index1640 = phi i64 [ %index.next1645, %vector.body1639 ], [ 0, %.preheader119.i.us.us.us ] ; 3 uses
  %i.atv = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us.us.us, i64 %index1640 ; 3 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 16 ; 2 uses
  %wide.load1641 = load <2 x i64>, ptr %i.atv, align 8, !tbaa !8, !alias.scope !220, !noalias !223
  %wide.load1642 = load <2 x i64>, ptr %i.atw, align 8, !tbaa !8, !alias.scope !220, !noalias !223
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us.us.us, i64 %index1640 ; 3 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 16 ; 2 uses
  %wide.load1643 = load <2 x i64>, ptr %i.atx, align 8, !tbaa !8, !alias.scope !223
  %wide.load1644 = load <2 x i64>, ptr %i.aty, align 8, !tbaa !8, !alias.scope !223
  store <2 x i64> %wide.load1643, ptr %i.atv, align 8, !tbaa !8, !alias.scope !220, !noalias !223
  store <2 x i64> %wide.load1644, ptr %i.atw, align 8, !tbaa !8, !alias.scope !220, !noalias !223
  store <2 x i64> %wide.load1641, ptr %i.atx, align 8, !tbaa !8, !alias.scope !223
  store <2 x i64> %wide.load1642, ptr %i.aty, align 8, !tbaa !8, !alias.scope !223
  %index.next1645 = add nuw i64 %index1640, 4     ; 2 uses
  %i.atz = icmp eq i64 %index.next1645, %n.vec1638
  br i1 %i.atz, label %middle.block1646, label %vector.body1639, !llvm.loop !225

scalar.ph1635:                                    ; preds = %scalar.ph1635.preheader, %scalar.ph1635
  %indvars.iv.i540.us.us.us = phi i64 [ %indvars.iv.next.i541.us.us.us.1, %scalar.ph1635 ], [ 0, %scalar.ph1635.preheader ] ; 4 uses
  %niter2191 = phi i64 [ %niter2191.next.1, %scalar.ph1635 ], [ 0, %scalar.ph1635.preheader ]
  %i.aua = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us.us.us, i64 %indvars.iv.i540.us.us.us ; 2 uses
  %i.aub = load i64, ptr %i.aua, align 8, !tbaa !8
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us.us.us, i64 %indvars.iv.i540.us.us.us ; 2 uses
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !8
  store i64 %i.aud, ptr %i.aua, align 8, !tbaa !8
  store i64 %i.aub, ptr %i.auc, align 8, !tbaa !8
  %indvars.iv.next.i541.us.us.us = or disjoint i64 %indvars.iv.i540.us.us.us, 1 ; 2 uses
  %i.aue = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us.us.us, i64 %indvars.iv.next.i541.us.us.us ; 2 uses
  %i.auf = load i64, ptr %i.aue, align 8, !tbaa !8
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us.us.us, i64 %indvars.iv.next.i541.us.us.us ; 2 uses
  %i.auh = load i64, ptr %i.aug, align 8, !tbaa !8
  store i64 %i.auh, ptr %i.aue, align 8, !tbaa !8
  store i64 %i.auf, ptr %i.aug, align 8, !tbaa !8
  %indvars.iv.next.i541.us.us.us.1 = add nuw nsw i64 %indvars.iv.i540.us.us.us, 2 ; 2 uses
  %niter2191.next.1 = add i64 %niter2191, 2       ; 2 uses
  %niter2191.ncmp.1 = icmp eq i64 %niter2191.next.1, %unroll_iter2190
  br i1 %niter2191.ncmp.1, label %middle.block1646.loopexit.unr-lcssa, label %scalar.ph1635, !llvm.loop !226

middle.block1646.loopexit.unr-lcssa:              ; preds = %scalar.ph1635
  br i1 %lcmp.mod2188.not, label %middle.block1646, label %scalar.ph1635.epil.preheader

scalar.ph1635.epil.preheader:                     ; preds = %middle.block1646.loopexit.unr-lcssa, %scalar.ph1635.preheader
  %indvars.iv.i540.us.us.us.epil.init = phi i64 [ 0, %scalar.ph1635.preheader ], [ %indvars.iv.next.i541.us.us.us.1, %middle.block1646.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2189)
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %gep.i.us.us.us, i64 %indvars.iv.i540.us.us.us.epil.init ; 2 uses
  %i.auj = load i64, ptr %i.aui, align 8, !tbaa !8
  %i.auk = getelementptr inbounds nuw [8 x i8], ptr %gep158.i.us.us.us, i64 %indvars.iv.i540.us.us.us.epil.init ; 2 uses
  %i.aul = load i64, ptr %i.auk, align 8, !tbaa !8
  store i64 %i.aul, ptr %i.aui, align 8, !tbaa !8
  store i64 %i.auj, ptr %i.auk, align 8, !tbaa !8
  br label %middle.block1646

middle.block1646:                                 ; preds = %vector.body1639, %scalar.ph1635.epil.preheader, %middle.block1646.loopexit.unr-lcssa
  %indvars.iv.next139.i.us.us.us = add nuw nsw i64 %indvars.iv138.i.us.us.us, %i.asv ; 2 uses
  %i.aum = icmp samesign ult i64 %indvars.iv.next139.i.us.us.us, %i.asx
  br i1 %i.aum, label %.preheader119.i.us.us.us, label %bb.bl, !llvm.loop !203

bb.bl:                                            ; preds = %middle.block1646
  %i.aun = getelementptr inbounds nuw [8 x i8], ptr %.1124.i.us.us.us, i64 %i.asu ; 2 uses
  %i.auo = icmp ult ptr %i.aun, %i.asc
  %indvar.next1625 = add i64 %indvar1624, 1
  br i1 %i.auo, label %.preheader120.i.us.us.us, label %Abc_TtSwapVars.exit.us.us.us, !llvm.loop !204

bb.bm:                                            ; preds = %bb.bj
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit.us.us.us, label %.preheader.lr.ph.i.us.us.us

.preheader.lr.ph.i.us.us.us:                      ; preds = %bb.bm
  %i.aup = add nsw i32 %i.asl, -6                 ; 3 uses
  %i.auq = shl nuw nsw i32 1, %i.aup
  %i.aur = shl nuw nsw i32 1, %.017.i119.i.us.us.us
  %i.aus = zext nneg i32 %.017.i119.i.us.us.us to i64
  %i.aut = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.aus
  %i.auu = load i64, ptr %i.aut, align 8, !tbaa !8 ; 5 uses
  %i.auv = zext nneg i32 %i.aur to i64            ; 3 uses
  %i.auw = xor i64 %i.auu, -1                     ; 2 uses
  %i.aux = shl nuw nsw i32 2, %i.aup
  %i.auy = zext nneg i32 %i.aux to i64
  %i.auz = zext nneg i32 %i.auq to i64            ; 3 uses
  %min.iters.check1606 = icmp eq i32 %i.aup, 0
  %n.vec1608 = and i64 %i.auz, 2147483646
  %broadcast.splatinsert1609 = insertelement <2 x i64> poison, i64 %i.auu, i64 0
  %broadcast.splat1610 = shufflevector <2 x i64> %broadcast.splatinsert1609, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1611 = insertelement <2 x i64> poison, i64 %i.auv, i64 0
  %broadcast.splat1612 = shufflevector <2 x i64> %broadcast.splatinsert1611, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1613 = insertelement <2 x i64> poison, i64 %i.auw, i64 0
  %broadcast.splat1614 = shufflevector <2 x i64> %broadcast.splatinsert1613, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i543.us.us.us

.preheader.i543.us.us.us:                         ; preds = %middle.block1620, %.preheader.lr.ph.i.us.us.us
  %.0126.i.us.us.us = phi ptr [ %i.o, %.preheader.lr.ph.i.us.us.us ], [ %i.avw, %middle.block1620 ] ; 4 uses
  %invariant.gep159.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us.us.us, i64 %i.auz ; 2 uses
  br i1 %min.iters.check1606, label %scalar.ph1605, label %vector.body1615

vector.body1615:                                  ; preds = %.preheader.i543.us.us.us, %vector.body1615
  %index1616 = phi i64 [ %index.next1619, %vector.body1615 ], [ 0, %.preheader.i543.us.us.us ] ; 3 uses
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us.us.us, i64 %index1616 ; 2 uses
  %wide.load1617 = load <2 x i64>, ptr %i.ava, align 8, !tbaa !8 ; 2 uses
  %i.avb = and <2 x i64> %wide.load1617, %broadcast.splat1610
  %i.avc = lshr <2 x i64> %i.avb, %broadcast.splat1612
  %i.avd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.us.us.us, i64 %index1616 ; 2 uses
  %wide.load1618 = load <2 x i64>, ptr %i.avd, align 8, !tbaa !8 ; 2 uses
  %i.ave = shl <2 x i64> %wide.load1618, %broadcast.splat1612
  %i.avf = and <2 x i64> %i.ave, %broadcast.splat1610
  %i.avg = and <2 x i64> %wide.load1617, %broadcast.splat1614
  %i.avh = or <2 x i64> %i.avf, %i.avg
  store <2 x i64> %i.avh, ptr %i.ava, align 8, !tbaa !8
  %i.avi = and <2 x i64> %wide.load1618, %broadcast.splat1610
  %i.avj = or <2 x i64> %i.avi, %i.avc
  store <2 x i64> %i.avj, ptr %i.avd, align 8, !tbaa !8
  %index.next1619 = add nuw i64 %index1616, 2     ; 2 uses
  %i.avk = icmp eq i64 %index.next1619, %n.vec1608
  br i1 %i.avk, label %middle.block1620, label %vector.body1615, !llvm.loop !227

scalar.ph1605:                                    ; preds = %.preheader.i543.us.us.us, %scalar.ph1605
  %indvars.iv141.i.us.us.us = phi i64 [ %indvars.iv.next142.i.us.us.us, %scalar.ph1605 ], [ 0, %.preheader.i543.us.us.us ] ; 3 uses
  %i.avl = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us.us.us, i64 %indvars.iv141.i.us.us.us ; 2 uses
  %i.avm = load i64, ptr %i.avl, align 8, !tbaa !8 ; 2 uses
  %i.avn = and i64 %i.avm, %i.auu
  %i.avo = lshr i64 %i.avn, %i.auv
  %gep160.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.us.us.us, i64 %indvars.iv141.i.us.us.us ; 2 uses
  %i.avp = load i64, ptr %gep160.i.us.us.us, align 8, !tbaa !8 ; 2 uses
  %i.avq = shl i64 %i.avp, %i.auv
  %i.avr = and i64 %i.avq, %i.auu
  %i.avs = and i64 %i.avm, %i.auw
  %i.avt = or i64 %i.avr, %i.avs
  store i64 %i.avt, ptr %i.avl, align 8, !tbaa !8
  %i.avu = and i64 %i.avp, %i.auu
  %i.avv = or i64 %i.avu, %i.avo
  store i64 %i.avv, ptr %gep160.i.us.us.us, align 8, !tbaa !8
  %indvars.iv.next142.i.us.us.us = add nuw nsw i64 %indvars.iv141.i.us.us.us, 1 ; 2 uses
  %exitcond145.not.i.us.us.us = icmp eq i64 %indvars.iv.next142.i.us.us.us, %i.auz
  br i1 %exitcond145.not.i.us.us.us, label %middle.block1620, label %scalar.ph1605, !llvm.loop !228

middle.block1620:                                 ; preds = %vector.body1615, %scalar.ph1605
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %.0126.i.us.us.us, i64 %i.auy ; 2 uses
  %i.avx = icmp ult ptr %i.avw, %i.asc
  br i1 %i.avx, label %.preheader.i543.us.us.us, label %Abc_TtSwapVars.exit.us.us.us, !llvm.loop !207

bb.bn:                                            ; preds = %bb.bi
  br i1 %.not179.i.us.us.us, label %Abc_TtSwapVars.exit.us.us.us, label %.lr.ph.i544.us.us.us

.lr.ph.i544.us.us.us:                             ; preds = %bb.bn
  %.neg.i.us.us.us = shl nsw i32 -1, %.017.i119.i.us.us.us
  %i.avy = shl nuw nsw i32 1, %i.asl
  %i.avz = add nsw i32 %.neg.i.us.us.us, %i.avy
  %i.awa = zext nneg i32 %.017.i119.i.us.us.us to i64
  %i.awb = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.awa
  %i.awc = getelementptr inbounds [24 x i8], ptr %i.awb, i64 %indvars.iv.next.i120.i.us.us.us ; 3 uses
  %i.awd = load i64, ptr %i.awc, align 8, !tbaa !8 ; 4 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awc, i64 8
  %i.awf = load i64, ptr %i.awe, align 8, !tbaa !8 ; 4 uses
  %i.awg = zext i32 %i.avz to i64                 ; 7 uses
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awc, i64 16
  %i.awi = load i64, ptr %i.awh, align 8, !tbaa !8 ; 4 uses
  br i1 %min.iters.check1586, label %scalar.ph1585, label %vector.ph1587

vector.ph1587:                                    ; preds = %.lr.ph.i544.us.us.us
  %broadcast.splatinsert1589 = insertelement <2 x i64> poison, i64 %i.awd, i64 0
  %broadcast.splat1590 = shufflevector <2 x i64> %broadcast.splatinsert1589, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1591 = insertelement <2 x i64> poison, i64 %i.awf, i64 0
  %broadcast.splat1592 = shufflevector <2 x i64> %broadcast.splatinsert1591, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1593 = insertelement <2 x i64> poison, i64 %i.awg, i64 0
  %broadcast.splat1594 = shufflevector <2 x i64> %broadcast.splatinsert1593, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1595 = insertelement <2 x i64> poison, i64 %i.awi, i64 0
  %broadcast.splat1596 = shufflevector <2 x i64> %broadcast.splatinsert1595, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1597

vector.body1597:                                  ; preds = %vector.body1597, %vector.ph1587
  %index1598 = phi i64 [ 0, %vector.ph1587 ], [ %index.next1601, %vector.body1597 ] ; 2 uses
  %i.awj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index1598 ; 3 uses
  %i.awk = getelementptr inbounds nuw i8, ptr %i.awj, i64 16 ; 2 uses
  %wide.load1599 = load <2 x i64>, ptr %i.awj, align 16, !tbaa !8 ; 3 uses
  %wide.load1600 = load <2 x i64>, ptr %i.awk, align 16, !tbaa !8 ; 3 uses
  %i.awl = and <2 x i64> %wide.load1599, %broadcast.splat1590
  %i.awm = and <2 x i64> %wide.load1600, %broadcast.splat1590
  %i.awn = and <2 x i64> %wide.load1599, %broadcast.splat1592
  %i.awo = and <2 x i64> %wide.load1600, %broadcast.splat1592
  %i.awp = shl <2 x i64> %i.awn, %broadcast.splat1594
  %i.awq = shl <2 x i64> %i.awo, %broadcast.splat1594
  %i.awr = or <2 x i64> %i.awp, %i.awl
  %i.aws = or <2 x i64> %i.awq, %i.awm
  %i.awt = and <2 x i64> %wide.load1599, %broadcast.splat1596
  %i.awu = and <2 x i64> %wide.load1600, %broadcast.splat1596
  %i.awv = lshr <2 x i64> %i.awt, %broadcast.splat1594
  %i.aww = lshr <2 x i64> %i.awu, %broadcast.splat1594
  %i.awx = or <2 x i64> %i.awr, %i.awv
  %i.awy = or <2 x i64> %i.aws, %i.aww
  store <2 x i64> %i.awx, ptr %i.awj, align 16, !tbaa !8
  store <2 x i64> %i.awy, ptr %i.awk, align 16, !tbaa !8
  %index.next1601 = add nuw i64 %index1598, 4     ; 2 uses
  %i.awz = icmp eq i64 %index.next1601, %n.vec1588
  br i1 %i.awz, label %Abc_TtSwapVars.exit.us.us.us, label %vector.body1597, !llvm.loop !229

end_hunk_0
begin_hunk_1_@Mf_ObjMergeOrder:bb.a
Abc_TtSwapVars.exit.us.us.us:                     ; preds = %bb.bl, %middle.block1620, %vector.body1597, %scalar.ph1585, %scalar.ph1585.1, %scalar.ph1585.2, %bb.bn, %bb.bm, %bb.bk, %bb.bh
  %i.axy = add nsw i32 %.017.i119.i.us.us.us, -1
  br label %bb.bo

bb.bo:                                            ; preds = %Abc_TtSwapVars.exit.us.us.us, %.lr.ph.i117.i.us.us.us
  %.1.i121.i.us.us.us = phi i32 [ %.017.i119.i.us.us.us, %.lr.ph.i117.i.us.us.us ], [ %i.axy, %Abc_TtSwapVars.exit.us.us.us ] ; 2 uses
  %i.axz = icmp samesign ugt i64 %indvars.iv.i118.i.us.us.us, 1
  %i.aya = icmp sgt i32 %.1.i121.i.us.us.us, -1
  %i.ayb = select i1 %i.axz, i1 %i.aya, i1 false
  br i1 %i.ayb, label %.lr.ph.i117.i.us.us.us, label %Abc_TtExpand.exit122.i.us.us.us, !llvm.loop !209

Abc_TtExpand.exit122.i.us.us.us:                  ; preds = %bb.bo, %Abc_TtExpand.exit115.i.us.us.us
  br i1 %.not179.i.us.us.us, label %Abc_TtMinBase.exit.us.us.us, label %.lr.ph.preheader.i123.i.us.us.us

.lr.ph.preheader.i123.i.us.us.us:                 ; preds = %Abc_TtExpand.exit122.i.us.us.us
  %wide.trip.count.i124.i.us.us.us = zext nneg i32 %i.acm to i64 ; 7 uses
  %min.iters.check1570 = icmp ult i32 %i.acl, 2
  br i1 %min.iters.check1570, label %.lr.ph.i125.i.us.us.us, label %vector.ph1571

vector.ph1571:                                    ; preds = %.lr.ph.preheader.i123.i.us.us.us
  %n.vec1572 = and i64 %wide.trip.count.i124.i.us.us.us, 2147483644
  br label %vector.body1573

vector.body1573:                                  ; preds = %vector.body1573, %vector.ph1571
  %index1574 = phi i64 [ 0, %vector.ph1571 ], [ %index.next1581, %vector.body1573 ] ; 5 uses
  %i.ayc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index1574 ; 2 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ayc, i64 16
  %wide.load1575 = load <2 x i64>, ptr %i.ayc, align 16, !tbaa !8 ; 2 uses
  %wide.load1576 = load <2 x i64>, ptr %i.ayd, align 16, !tbaa !8 ; 2 uses
  %i.aye = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index1574 ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 16
  %wide.load1577 = load <2 x i64>, ptr %i.aye, align 16, !tbaa !8
  %wide.load1578 = load <2 x i64>, ptr %i.ayf, align 16, !tbaa !8
  %i.ayg = and <2 x i64> %wide.load1577, %wide.load1575
  %i.ayh = and <2 x i64> %wide.load1578, %wide.load1576
  %i.ayi = xor <2 x i64> %wide.load1575, splat (i64 -1)
  %i.ayj = xor <2 x i64> %wide.load1576, splat (i64 -1)
  %i.ayk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index1574 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.ayk, i64 16
  %wide.load1579 = load <2 x i64>, ptr %i.ayk, align 16, !tbaa !8
  %wide.load1580 = load <2 x i64>, ptr %i.ayl, align 16, !tbaa !8
  %i.aym = and <2 x i64> %wide.load1579, %i.ayi
  %i.ayn = and <2 x i64> %wide.load1580, %i.ayj
  %i.ayo = or <2 x i64> %i.aym, %i.ayg
  %i.ayp = or <2 x i64> %i.ayn, %i.ayh
  %i.ayq = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index1574 ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayq, i64 16
  store <2 x i64> %i.ayo, ptr %i.ayq, align 16, !tbaa !8
  store <2 x i64> %i.ayp, ptr %i.ayr, align 16, !tbaa !8
  %index.next1581 = add nuw i64 %index1574, 4     ; 2 uses
  %i.ays = icmp eq i64 %index.next1581, %n.vec1572
  br i1 %i.ays, label %Abc_TtMux.exit.i.us.us.us, label %vector.body1573, !llvm.loop !230

.lr.ph.i125.i.us.us.us:                           ; preds = %.lr.ph.preheader.i123.i.us.us.us, %.lr.ph.i125.i.us.us.us
  %indvars.iv.i126.i.us.us.us = phi i64 [ %indvars.iv.next.i127.i.us.us.us, %.lr.ph.i125.i.us.us.us ], [ 0, %.lr.ph.preheader.i123.i.us.us.us ] ; 5 uses
  %i.ayt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i126.i.us.us.us
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !8 ; 2 uses
  %i.ayv = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i126.i.us.us.us
  %i.ayw = load i64, ptr %i.ayv, align 8, !tbaa !8
  %i.ayx = and i64 %i.ayw, %i.ayu
  %i.ayy = xor i64 %i.ayu, -1
  %i.ayz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i126.i.us.us.us
  %i.aza = load i64, ptr %i.ayz, align 8, !tbaa !8
  %i.azb = and i64 %i.aza, %i.ayy
  %i.azc = or i64 %i.azb, %i.ayx
  %i.azd = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i126.i.us.us.us
  store i64 %i.azc, ptr %i.azd, align 8, !tbaa !8
  %indvars.iv.next.i127.i.us.us.us = add nuw nsw i64 %indvars.iv.i126.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i128.i.us.us.us = icmp eq i64 %indvars.iv.next.i127.i.us.us.us, %wide.trip.count.i124.i.us.us.us
  br i1 %exitcond.not.i128.i.us.us.us, label %Abc_TtMux.exit.i.us.us.us, label %.lr.ph.i125.i.us.us.us, !llvm.loop !231

Abc_TtMux.exit.i.us.us.us:                        ; preds = %vector.body1573, %.lr.ph.i125.i.us.us.us
  %i.aze = load i64, ptr %i.l, align 16, !tbaa !8 ; 2 uses
  %.not.i287.us.us.us = trunc i64 %i.aze to i1
  %i.azf = trunc i64 %i.aze to i32
  %.mux.i.us.us.us = and i32 %i.azf, 1
  br i1 %.not.i287.us.us.us, label %.lr.ph.i131.i.us.us.us.preheader, label %Abc_TtNot.exit.i.us.us.us

.lr.ph.i131.i.us.us.us.preheader:                 ; preds = %Abc_TtMux.exit.i.us.us.us
  %min.iters.check1558 = icmp ult i32 %i.acl, 2
  br i1 %min.iters.check1558, label %.lr.ph.i131.i.us.us.us, label %vector.ph1559

vector.ph1559:                                    ; preds = %.lr.ph.i131.i.us.us.us.preheader
  %n.vec1560 = and i64 %wide.trip.count.i124.i.us.us.us, 2147483644
  br label %vector.body1561

vector.body1561:                                  ; preds = %vector.body1561, %vector.ph1559
  %index1562 = phi i64 [ 0, %vector.ph1559 ], [ %index.next1565, %vector.body1561 ] ; 2 uses
  %i.azg = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index1562 ; 3 uses
  %i.azh = getelementptr inbounds nuw i8, ptr %i.azg, i64 16 ; 2 uses
  %wide.load1563 = load <2 x i64>, ptr %i.azg, align 16, !tbaa !8
  %wide.load1564 = load <2 x i64>, ptr %i.azh, align 16, !tbaa !8
  %i.azi = xor <2 x i64> %wide.load1563, splat (i64 -1)
  %i.azj = xor <2 x i64> %wide.load1564, splat (i64 -1)
  store <2 x i64> %i.azi, ptr %i.azg, align 16, !tbaa !8
  store <2 x i64> %i.azj, ptr %i.azh, align 16, !tbaa !8
  %index.next1565 = add nuw i64 %index1562, 4     ; 2 uses
  %i.azk = icmp eq i64 %index.next1565, %n.vec1560
  br i1 %i.azk, label %Abc_TtNot.exit.i.us.us.us, label %vector.body1561, !llvm.loop !232

.lr.ph.i131.i.us.us.us:                           ; preds = %.lr.ph.i131.i.us.us.us.preheader, %.lr.ph.i131.i.us.us.us
  %indvars.iv.i132.i.us.us.us = phi i64 [ %indvars.iv.next.i133.i.us.us.us, %.lr.ph.i131.i.us.us.us ], [ 0, %.lr.ph.i131.i.us.us.us.preheader ] ; 2 uses
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i132.i.us.us.us ; 2 uses
  %i.azm = load i64, ptr %i.azl, align 8, !tbaa !8
  %i.azn = xor i64 %i.azm, -1
  store i64 %i.azn, ptr %i.azl, align 8, !tbaa !8
  %indvars.iv.next.i133.i.us.us.us = add nuw nsw i64 %indvars.iv.i132.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i134.i.us.us.us = icmp eq i64 %indvars.iv.next.i133.i.us.us.us, %wide.trip.count.i124.i.us.us.us
  br i1 %exitcond.not.i134.i.us.us.us, label %Abc_TtNot.exit.i.us.us.us, label %.lr.ph.i131.i.us.us.us, !llvm.loop !233

Abc_TtNot.exit.i.us.us.us:                        ; preds = %vector.body1561, %.lr.ph.i131.i.us.us.us, %Abc_TtMux.exit.i.us.us.us
  %i.azo = phi i32 [ %.mux.i.us.us.us, %Abc_TtMux.exit.i.us.us.us ], [ 1, %.lr.ph.i131.i.us.us.us ], [ 1, %vector.body1561 ] ; 2 uses
  %.not.i521.us.us.us = icmp eq i32 %i.ack, 0
  br i1 %.not.i521.us.us.us, label %Abc_TtMinBase.exit.us.us.us, label %.lr.ph.split.i523.us.us.us

.lr.ph.split.i523.us.us.us:                       ; preds = %Abc_TtNot.exit.i.us.us.us
  %i.azp = sext i32 %i.acm to i64
  %.idx.i.i.us.us.us = shl nsw i64 %i.azp, 3
  %i.azq = getelementptr inbounds i8, ptr %i.l, i64 %.idx.i.i.us.us.us ; 3 uses
  %wide.trip.count.i525.us.us.us = zext nneg i32 %i.ack to i64
  %min.iters.check1503 = icmp ult i32 %i.acl, 2
  %n.vec1505 = and i64 %wide.trip.count.i124.i.us.us.us, 2147483644
  br label %.lr.ph.split.split.split.i.us.us.us

.lr.ph.split.split.split.i.us.us.us:              ; preds = %Abc_TtHasVar.exit.thread.i.us.us.us, %.lr.ph.split.i523.us.us.us
  %indvars.iv.i526.us.us.us = phi i64 [ 0, %.lr.ph.split.i523.us.us.us ], [ %indvars.iv.next.i531.us.us.us, %Abc_TtHasVar.exit.thread.i.us.us.us ] ; 6 uses
  %.038.i.us.us.us = phi i32 [ 0, %.lr.ph.split.i523.us.us.us ], [ %.1.i530.us.us.us, %Abc_TtHasVar.exit.thread.i.us.us.us ] ; 7 uses
  %i.azr = icmp samesign ult i64 %indvars.iv.i526.us.us.us, 6
  %i.azs = trunc i64 %indvars.iv.i526.us.us.us to i32 ; 5 uses
  br i1 %i.azr, label %.lr.ph.i.i537.us.us.us, label %.preheader.lr.ph.i.i.us.us.us

.preheader.lr.ph.i.i.us.us.us:                    ; preds = %.lr.ph.split.split.split.i.us.us.us
  %i.azt = add i32 %i.azs, -6                     ; 2 uses
  %i.azu = shl nuw nsw i32 1, %i.azt
  %i.azv = shl nuw nsw i32 2, %i.azt
  %i.azw = zext nneg i32 %i.azv to i64
  %i.azx = zext nneg i32 %i.azu to i64            ; 2 uses
  br label %.preheader.i.i527.us.us.us

.preheader.i.i527.us.us.us:                       ; preds = %bb.br, %.preheader.lr.ph.i.i.us.us.us
  %.03343.i.i.us.us.us = phi ptr [ %i.l, %.preheader.lr.ph.i.i.us.us.us ], [ %i.bab, %bb.br ] ; 3 uses
  %invariant.gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.us.us.us, i64 %i.azx
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bq, %.preheader.i.i527.us.us.us
  %indvars.iv.i.i528.us.us.us = phi i64 [ 0, %.preheader.i.i527.us.us.us ], [ %indvars.iv.next.i.i535.us.us.us, %bb.bq ] ; 3 uses
  %i.azy = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.us.us.us, i64 %indvars.iv.i.i528.us.us.us
  %i.azz = load i64, ptr %i.azy, align 8, !tbaa !8
  %gep.i.i.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i.us.us.us, i64 %indvars.iv.i.i528.us.us.us
  %i.baa = load i64, ptr %gep.i.i.us.us.us, align 8, !tbaa !8
  %.not.i.i529.us.us.us = icmp eq i64 %i.azz, %i.baa
  br i1 %.not.i.i529.us.us.us, label %bb.bq, label %Abc_TtHasVar.exit.thread30.i.us.us.us

bb.bq:                                            ; preds = %bb.bp
  %indvars.iv.next.i.i535.us.us.us = add nuw nsw i64 %indvars.iv.i.i528.us.us.us, 1 ; 2 uses
  %exitcond.not.i.i536.us.us.us = icmp eq i64 %indvars.iv.next.i.i535.us.us.us, %i.azx
  br i1 %exitcond.not.i.i536.us.us.us, label %bb.br, label %bb.bp, !llvm.loop !234

bb.br:                                            ; preds = %bb.bq
  %i.bab = getelementptr inbounds nuw [8 x i8], ptr %.03343.i.i.us.us.us, i64 %i.azw ; 2 uses
  %i.bac = icmp ult ptr %i.bab, %i.azq
  br i1 %i.bac, label %.preheader.i.i527.us.us.us, label %Abc_TtHasVar.exit.thread.i.us.us.us, !llvm.loop !235

.lr.ph.i.i537.us.us.us:                           ; preds = %.lr.ph.split.split.split.i.us.us.us
  %i.bad = shl nuw nsw i32 1, %i.azs
  %i.bae = zext nneg i32 %i.bad to i64
  %i.baf = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i526.us.us.us
  %i.bag = load i64, ptr %i.baf, align 8, !tbaa !8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i.i537.us.us.us
  %indvars.iv52.i.i.us.us.us = phi i64 [ 0, %.lr.ph.i.i537.us.us.us ], [ %indvars.iv.next53.i.i.us.us.us, %bb.bt ] ; 2 uses
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv52.i.i.us.us.us
  %i.bai = load i64, ptr %i.bah, align 8, !tbaa !8 ; 2 uses
  %i.baj = lshr i64 %i.bai, %i.bae
  %i.bak = xor i64 %i.baj, %i.bai
  %i.bal = and i64 %i.bak, %i.bag
  %.not39.i.i.us.us.us = icmp eq i64 %i.bal, 0
  br i1 %.not39.i.i.us.us.us, label %bb.bt, label %Abc_TtHasVar.exit.thread30.i.us.us.us

bb.bt:                                            ; preds = %bb.bs
  %indvars.iv.next53.i.i.us.us.us = add nuw nsw i64 %indvars.iv52.i.i.us.us.us, 1 ; 2 uses
  %exitcond56.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next53.i.i.us.us.us, %wide.trip.count.i124.i.us.us.us
  br i1 %exitcond56.not.i.i.us.us.us, label %Abc_TtHasVar.exit.thread.i.us.us.us, label %bb.bs, !llvm.loop !236

Abc_TtHasVar.exit.thread30.i.us.us.us:            ; preds = %bb.bs, %bb.bp
  %i.bam = sext i32 %.038.i.us.us.us to i64       ; 2 uses
  %i.ban = icmp sgt i64 %indvars.iv.i526.us.us.us, %i.bam
  br i1 %i.ban, label %bb.bu, label %Abc_TtSwapVars.exit766.us.us.us

bb.bu:                                            ; preds = %Abc_TtHasVar.exit.thread30.i.us.us.us
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv.i526.us.us.us
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !15
  %i.baq = getelementptr inbounds [4 x i8], ptr %i.zp, i64 %i.bam
  store i32 %i.bap, ptr %i.baq, align 4, !tbaa !15
  %i.bar = icmp eq i32 %.038.i.us.us.us, %i.azs
  br i1 %i.bar, label %Abc_TtSwapVars.exit766.us.us.us, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %spec.select.i732.us.us.us = call i32 @llvm.smax.i32(i32 range(i32 -2147483648, 31) %i.azs, i32 range(i32 -2147483648, 30) %.038.i.us.us.us) ; 5 uses
  %spec.select117.i733.us.us.us = call i32 @llvm.smin.i32(i32 range(i32 -2147483648, 31) %i.azs, i32 range(i32 -2147483648, 30) %.038.i.us.us.us) ; 10 uses
  %i.bas = icmp slt i32 %spec.select.i732.us.us.us, 6
  br i1 %i.bas, label %.lr.ph.i758.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bat = icmp slt i32 %spec.select117.i733.us.us.us, 6
  %i.bau = add nsw i32 %spec.select.i732.us.us.us, -6 ; 4 uses
  %i.bav = shl nuw nsw i32 1, %i.bau              ; 3 uses
  br i1 %i.bat, label %.preheader.lr.ph.i749.us.us.us, label %.preheader120.lr.ph.i736.us.us.us

.preheader120.lr.ph.i736.us.us.us:                ; preds = %bb.bw
  %i.baw = add nsw i32 %spec.select117.i733.us.us.us, -6 ; 5 uses
  %i.bax = shl nuw nsw i32 1, %i.baw
  %i.bay = shl nuw nsw i32 2, %i.baw              ; 2 uses
  %i.baz = shl nuw nsw i32 2, %i.bau
  %i.bba = zext nneg i32 %i.baz to i64
  %i.bbb = zext nneg i32 %i.bay to i64            ; 3 uses
  %i.bbc = zext nneg i32 %i.bax to i64            ; 6 uses
  %i.bbd = zext nneg i32 %i.bav to i64            ; 4 uses
  %i.bbe = shl nuw nsw i64 %i.bbc, 3              ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.bbb, i64 %i.bbd)
  %i.bbf = icmp samesign ult i32 %i.bay, %i.bav
  %umin = zext i1 %i.bbf to i64                   ; 3 uses
  %i.bbg = or disjoint i64 %umin, %i.bbb
  %i.bbh = sub nsw i64 %umax, %i.bbg              ; 2 uses
  %37 = shl nuw nsw i64 %i.bbc, 4
  %38 = shl nuw nsw i64 %i.bbd, 3                 ; 2 uses
  %i.bbi = add nsw i32 %spec.select117.i733.us.us.us, -5
  %i.bbj = zext nneg i32 %i.bbi to i64
  %i.bbk = lshr i64 %i.bbh, %i.bbj
  %i.bbl = add i64 %i.bbk, %umin
  %i.bbm = shl i64 %i.bbl, 3
  %i.bbn = add nsw i32 %spec.select117.i733.us.us.us, -5
  %i.bbo = zext nneg i32 %i.bbn to i64
  %i.bbp = shl i64 %i.bbm, %i.bbo
  %i.bbq = add nsw i32 %spec.select.i732.us.us.us, -5
  %i.bbr = zext i32 %i.bbq to i64
  %i.bbs = add nuw nsw i64 %i.bbr, 3
  %i.bbt = getelementptr i8, ptr %i.l, i64 %i.bbe
  %i.bbu = getelementptr i8, ptr %i.l, i64 %38
  %i.bbv = getelementptr i8, ptr %i.l, i64 %i.bbp
  %i.bbw = getelementptr i8, ptr %i.bbv, i64 %38
  %i.bbx = getelementptr i8, ptr %i.bbw, i64 %i.bbe
  %min.iters.check1544 = icmp ult i32 %i.baw, 4
  %39 = add nsw i32 %spec.select117.i733.us.us.us, -5
  %40 = zext nneg i32 %39 to i64
  %41 = lshr i64 %i.bbh, %40
  %42 = add i64 %41, %umin
  %43 = shl i64 %42, 3
  %44 = add nsw i32 %spec.select117.i733.us.us.us, -5
  %45 = zext nneg i32 %44 to i64
  %46 = shl i64 %43, %45
  %i.bby = getelementptr i8, ptr %i.l, i64 %46
  %invariant.gep2293 = getelementptr i8, ptr %i.bby, i64 %37
  %n.vec1546 = and i64 %i.bbc, 2147483644
  %xtraiter2192 = and i64 %i.bbc, 1
  %i.bbz = icmp eq i32 %i.baw, 0
  %unroll_iter2195 = and i64 %i.bbc, 2147483646
  %lcmp.mod2193.not = icmp eq i64 %xtraiter2192, 0
  %lcmp.mod2194 = icmp eq i32 %i.baw, 0
  br label %.preheader120.i737.us.us.us

.preheader120.i737.us.us.us:                      ; preds = %bb.bx, %.preheader120.lr.ph.i736.us.us.us
  %indvar1538 = phi i64 [ %indvar.next1539, %bb.bx ], [ 0, %.preheader120.lr.ph.i736.us.us.us ] ; 2 uses
  %.1124.i738.us.us.us = phi ptr [ %i.bct, %bb.bx ], [ %i.l, %.preheader120.lr.ph.i736.us.us.us ] ; 3 uses
  %i.bca = shl i64 %indvar1538, %i.bbs            ; 4 uses
  %scevgep = getelementptr i8, ptr %i.bbt, i64 %i.bca
  %scevgep1541 = getelementptr i8, ptr %i.bbu, i64 %i.bca
  %scevgep1542 = getelementptr i8, ptr %i.bbx, i64 %i.bca
  %invariant.gep157.i740.us.us.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i738.us.us.us, i64 %i.bbc
  %invariant.gep157.i740.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i738.us.us.us, i64 %i.bbd
  %scevgep1542.a = getelementptr i8, ptr %invariant.gep2293, i64 %i.bca
  %bound0 = icmp ult ptr %scevgep, %scevgep1542
  %bound1 = icmp ult ptr %scevgep1541, %scevgep1542.a
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119.i741.us.us.us

.preheader119.i741.us.us.us:                      ; preds = %middle.block1554, %.preheader120.i737.us.us.us
  %indvars.iv138.i742.us.us.us = phi i64 [ 0, %.preheader120.i737.us.us.us ], [ %indvars.iv.next139.i748.us.us.us, %middle.block1554 ] ; 3 uses
  %gep.i743.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i740.us.us.us.a, i64 %indvars.iv138.i742.us.us.us ; 4 uses
  %gep158.i744.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i740.us.us.us, i64 %indvars.iv138.i742.us.us.us ; 4 uses
  %brmerge2286 = select i1 %min.iters.check1544, i1 true, i1 %found.conflict
  br i1 %brmerge2286, label %scalar.ph1543.preheader, label %vector.body1547

scalar.ph1543.preheader:                          ; preds = %.preheader119.i741.us.us.us
  br i1 %i.bbz, label %scalar.ph1543.epil.preheader, label %scalar.ph1543

vector.body1547:                                  ; preds = %.preheader119.i741.us.us.us, %vector.body1547
  %index1548 = phi i64 [ %index.next1553, %vector.body1547 ], [ 0, %.preheader119.i741.us.us.us ] ; 3 uses
  %i.bcb = getelementptr inbounds nuw [8 x i8], ptr %gep.i743.us.us.us, i64 %index1548 ; 3 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bcb, i64 16 ; 2 uses
  %wide.load1549 = load <2 x i64>, ptr %i.bcb, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  %wide.load1550 = load <2 x i64>, ptr %i.bcc, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  %i.bcd = getelementptr inbounds nuw [8 x i8], ptr %gep158.i744.us.us.us, i64 %index1548 ; 3 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 16 ; 2 uses
  %wide.load1551 = load <2 x i64>, ptr %i.bcd, align 8, !tbaa !8, !alias.scope !240
  %wide.load1552 = load <2 x i64>, ptr %i.bce, align 8, !tbaa !8, !alias.scope !240
  store <2 x i64> %wide.load1551, ptr %i.bcb, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  store <2 x i64> %wide.load1552, ptr %i.bcc, align 8, !tbaa !8, !alias.scope !237, !noalias !240
  store <2 x i64> %wide.load1549, ptr %i.bcd, align 8, !tbaa !8, !alias.scope !240
  store <2 x i64> %wide.load1550, ptr %i.bce, align 8, !tbaa !8, !alias.scope !240
  %index.next1553 = add nuw i64 %index1548, 4     ; 2 uses
  %i.bcf = icmp eq i64 %index.next1553, %n.vec1546
  br i1 %i.bcf, label %middle.block1554, label %vector.body1547, !llvm.loop !242

scalar.ph1543:                                    ; preds = %scalar.ph1543.preheader, %scalar.ph1543
  %indvars.iv.i745.us.us.us = phi i64 [ %indvars.iv.next.i746.us.us.us.1, %scalar.ph1543 ], [ 0, %scalar.ph1543.preheader ] ; 4 uses
  %niter2196 = phi i64 [ %niter2196.next.1, %scalar.ph1543 ], [ 0, %scalar.ph1543.preheader ]
  %i.bcg = getelementptr inbounds nuw [8 x i8], ptr %gep.i743.us.us.us, i64 %indvars.iv.i745.us.us.us ; 2 uses
  %i.bch = load i64, ptr %i.bcg, align 8, !tbaa !8
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %gep158.i744.us.us.us, i64 %indvars.iv.i745.us.us.us ; 2 uses
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !8
  store i64 %i.bcj, ptr %i.bcg, align 8, !tbaa !8
  store i64 %i.bch, ptr %i.bci, align 8, !tbaa !8
  %indvars.iv.next.i746.us.us.us = or disjoint i64 %indvars.iv.i745.us.us.us, 1 ; 2 uses
  %i.bck = getelementptr inbounds nuw [8 x i8], ptr %gep.i743.us.us.us, i64 %indvars.iv.next.i746.us.us.us ; 2 uses
  %i.bcl = load i64, ptr %i.bck, align 8, !tbaa !8
  %i.bcm = getelementptr inbounds nuw [8 x i8], ptr %gep158.i744.us.us.us, i64 %indvars.iv.next.i746.us.us.us ; 2 uses
  %i.bcn = load i64, ptr %i.bcm, align 8, !tbaa !8
  store i64 %i.bcn, ptr %i.bck, align 8, !tbaa !8
  store i64 %i.bcl, ptr %i.bcm, align 8, !tbaa !8
  %indvars.iv.next.i746.us.us.us.1 = add nuw nsw i64 %indvars.iv.i745.us.us.us, 2 ; 2 uses
  %niter2196.next.1 = add i64 %niter2196, 2       ; 2 uses
  %niter2196.ncmp.1 = icmp eq i64 %niter2196.next.1, %unroll_iter2195
  br i1 %niter2196.ncmp.1, label %middle.block1554.loopexit.unr-lcssa, label %scalar.ph1543, !llvm.loop !243

middle.block1554.loopexit.unr-lcssa:              ; preds = %scalar.ph1543
  br i1 %lcmp.mod2193.not, label %middle.block1554, label %scalar.ph1543.epil.preheader

scalar.ph1543.epil.preheader:                     ; preds = %middle.block1554.loopexit.unr-lcssa, %scalar.ph1543.preheader
  %indvars.iv.i745.us.us.us.epil.init = phi i64 [ 0, %scalar.ph1543.preheader ], [ %indvars.iv.next.i746.us.us.us.1, %middle.block1554.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2194)
  %i.bco = getelementptr inbounds nuw [8 x i8], ptr %gep.i743.us.us.us, i64 %indvars.iv.i745.us.us.us.epil.init ; 2 uses
  %i.bcp = load i64, ptr %i.bco, align 8, !tbaa !8
  %i.bcq = getelementptr inbounds nuw [8 x i8], ptr %gep158.i744.us.us.us, i64 %indvars.iv.i745.us.us.us.epil.init ; 2 uses
  %i.bcr = load i64, ptr %i.bcq, align 8, !tbaa !8
  store i64 %i.bcr, ptr %i.bco, align 8, !tbaa !8
  store i64 %i.bcp, ptr %i.bcq, align 8, !tbaa !8
  br label %middle.block1554

middle.block1554:                                 ; preds = %vector.body1547, %scalar.ph1543.epil.preheader, %middle.block1554.loopexit.unr-lcssa
  %indvars.iv.next139.i748.us.us.us = add nuw nsw i64 %indvars.iv138.i742.us.us.us, %i.bbb ; 2 uses
  %i.bcs = icmp samesign ult i64 %indvars.iv.next139.i748.us.us.us, %i.bbd
  br i1 %i.bcs, label %.preheader119.i741.us.us.us, label %bb.bx, !llvm.loop !203

bb.bx:                                            ; preds = %middle.block1554
  %i.bct = getelementptr inbounds nuw [8 x i8], ptr %.1124.i738.us.us.us, i64 %i.bba ; 2 uses
  %i.bcu = icmp ult ptr %i.bct, %i.azq
  %indvar.next1539 = add i64 %indvar1538, 1
  br i1 %i.bcu, label %.preheader120.i737.us.us.us, label %Abc_TtSwapVars.exit766.us.us.us, !llvm.loop !204

.preheader.lr.ph.i749.us.us.us:                   ; preds = %bb.bw
  %i.bcv = shl nuw nsw i32 1, %spec.select117.i733.us.us.us
  %i.bcw = sext i32 %spec.select117.i733.us.us.us to i64
  %i.bcx = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.bcw
  %i.bcy = load i64, ptr %i.bcx, align 8, !tbaa !8 ; 5 uses
  %i.bcz = zext nneg i32 %i.bcv to i64            ; 3 uses
  %i.bda = xor i64 %i.bcy, -1                     ; 2 uses
  %i.bdb = shl nuw nsw i32 2, %i.bau
  %i.bdc = zext nneg i32 %i.bdb to i64
  %i.bdd = zext nneg i32 %i.bav to i64            ; 3 uses
  %min.iters.check1521 = icmp eq i32 %i.bau, 0
  %n.vec1523 = and i64 %i.bdd, 2147483646
  %broadcast.splatinsert1524 = insertelement <2 x i64> poison, i64 %i.bcy, i64 0
  %broadcast.splat1525 = shufflevector <2 x i64> %broadcast.splatinsert1524, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1526 = insertelement <2 x i64> poison, i64 %i.bcz, i64 0
  %broadcast.splat1527 = shufflevector <2 x i64> %broadcast.splatinsert1526, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1528 = insertelement <2 x i64> poison, i64 %i.bda, i64 0
  %broadcast.splat1529 = shufflevector <2 x i64> %broadcast.splatinsert1528, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i750.us.us.us

.preheader.i750.us.us.us:                         ; preds = %middle.block1535, %.preheader.lr.ph.i749.us.us.us
  %.0126.i751.us.us.us = phi ptr [ %i.l, %.preheader.lr.ph.i749.us.us.us ], [ %i.bea, %middle.block1535 ] ; 4 uses
  %invariant.gep159.i752.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i751.us.us.us, i64 %i.bdd ; 2 uses
  br i1 %min.iters.check1521, label %scalar.ph1520, label %vector.body1530

vector.body1530:                                  ; preds = %.preheader.i750.us.us.us, %vector.body1530
  %index1531 = phi i64 [ %index.next1534, %vector.body1530 ], [ 0, %.preheader.i750.us.us.us ] ; 3 uses
  %i.bde = getelementptr inbounds nuw [8 x i8], ptr %.0126.i751.us.us.us, i64 %index1531 ; 2 uses
  %wide.load1532 = load <2 x i64>, ptr %i.bde, align 8, !tbaa !8 ; 2 uses
  %i.bdf = and <2 x i64> %wide.load1532, %broadcast.splat1525
  %i.bdg = lshr <2 x i64> %i.bdf, %broadcast.splat1527
  %i.bdh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i752.us.us.us, i64 %index1531 ; 2 uses
  %wide.load1533 = load <2 x i64>, ptr %i.bdh, align 8, !tbaa !8 ; 2 uses
  %i.bdi = shl <2 x i64> %wide.load1533, %broadcast.splat1527
  %i.bdj = and <2 x i64> %i.bdi, %broadcast.splat1525
  %i.bdk = and <2 x i64> %wide.load1532, %broadcast.splat1529
  %i.bdl = or <2 x i64> %i.bdj, %i.bdk
  store <2 x i64> %i.bdl, ptr %i.bde, align 8, !tbaa !8
  %i.bdm = and <2 x i64> %wide.load1533, %broadcast.splat1525
  %i.bdn = or <2 x i64> %i.bdm, %i.bdg
  store <2 x i64> %i.bdn, ptr %i.bdh, align 8, !tbaa !8
  %index.next1534 = add nuw i64 %index1531, 2     ; 2 uses
  %i.bdo = icmp eq i64 %index.next1534, %n.vec1523
  br i1 %i.bdo, label %middle.block1535, label %vector.body1530, !llvm.loop !244

scalar.ph1520:                                    ; preds = %.preheader.i750.us.us.us, %scalar.ph1520
  %indvars.iv141.i753.us.us.us = phi i64 [ %indvars.iv.next142.i755.us.us.us, %scalar.ph1520 ], [ 0, %.preheader.i750.us.us.us ] ; 3 uses
  %i.bdp = getelementptr inbounds nuw [8 x i8], ptr %.0126.i751.us.us.us, i64 %indvars.iv141.i753.us.us.us ; 2 uses
  %i.bdq = load i64, ptr %i.bdp, align 8, !tbaa !8 ; 2 uses
  %i.bdr = and i64 %i.bdq, %i.bcy
  %i.bds = lshr i64 %i.bdr, %i.bcz
  %gep160.i754.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i752.us.us.us, i64 %indvars.iv141.i753.us.us.us ; 2 uses
  %i.bdt = load i64, ptr %gep160.i754.us.us.us, align 8, !tbaa !8 ; 2 uses
  %i.bdu = shl i64 %i.bdt, %i.bcz
  %i.bdv = and i64 %i.bdu, %i.bcy
  %i.bdw = and i64 %i.bdq, %i.bda
  %i.bdx = or i64 %i.bdv, %i.bdw
  store i64 %i.bdx, ptr %i.bdp, align 8, !tbaa !8
  %i.bdy = and i64 %i.bdt, %i.bcy
  %i.bdz = or i64 %i.bdy, %i.bds
  store i64 %i.bdz, ptr %gep160.i754.us.us.us, align 8, !tbaa !8
  %indvars.iv.next142.i755.us.us.us = add nuw nsw i64 %indvars.iv141.i753.us.us.us, 1 ; 2 uses
  %exitcond145.not.i756.us.us.us = icmp eq i64 %indvars.iv.next142.i755.us.us.us, %i.bdd
  br i1 %exitcond145.not.i756.us.us.us, label %middle.block1535, label %scalar.ph1520, !llvm.loop !245

middle.block1535:                                 ; preds = %vector.body1530, %scalar.ph1520
  %i.bea = getelementptr inbounds nuw [8 x i8], ptr %.0126.i751.us.us.us, i64 %i.bdc ; 2 uses
  %i.beb = icmp ult ptr %i.bea, %i.azq
  br i1 %i.beb, label %.preheader.i750.us.us.us, label %Abc_TtSwapVars.exit766.us.us.us, !llvm.loop !207

.lr.ph.i758.us.us.us:                             ; preds = %bb.bv
  %.neg.i759.us.us.us = shl nsw i32 -1, %spec.select117.i733.us.us.us
  %i.bec = shl nuw nsw i32 1, %spec.select.i732.us.us.us
  %i.bed = add nsw i32 %.neg.i759.us.us.us, %i.bec
  %i.bee = sext i32 %spec.select117.i733.us.us.us to i64
  %i.bef = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.bee
  %i.beg = sext i32 %spec.select.i732.us.us.us to i64
  %i.beh = getelementptr inbounds [24 x i8], ptr %i.bef, i64 %i.beg ; 3 uses
  %i.bei = load i64, ptr %i.beh, align 8, !tbaa !8 ; 2 uses
  %i.bej = getelementptr inbounds nuw i8, ptr %i.beh, i64 8
  %i.bek = load i64, ptr %i.bej, align 8, !tbaa !8 ; 2 uses
  %i.bel = zext i32 %i.bed to i64                 ; 3 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.beh, i64 16
  %i.ben = load i64, ptr %i.bem, align 8, !tbaa !8 ; 2 uses
  br i1 %min.iters.check1503, label %scalar.ph1502, label %vector.ph1504

vector.ph1504:                                    ; preds = %.lr.ph.i758.us.us.us
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bei, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1506 = insertelement <2 x i64> poison, i64 %i.bek, i64 0
  %broadcast.splat1507 = shufflevector <2 x i64> %broadcast.splatinsert1506, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1508 = insertelement <2 x i64> poison, i64 %i.bel, i64 0
  %broadcast.splat1509 = shufflevector <2 x i64> %broadcast.splatinsert1508, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1510 = insertelement <2 x i64> poison, i64 %i.ben, i64 0
  %broadcast.splat1511 = shufflevector <2 x i64> %broadcast.splatinsert1510, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1512

vector.body1512:                                  ; preds = %vector.body1512, %vector.ph1504
  %index1513 = phi i64 [ 0, %vector.ph1504 ], [ %index.next1516, %vector.body1512 ] ; 2 uses
  %i.beo = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index1513 ; 3 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 16 ; 2 uses
  %wide.load1514 = load <2 x i64>, ptr %i.beo, align 16, !tbaa !8 ; 3 uses
  %wide.load1515 = load <2 x i64>, ptr %i.bep, align 16, !tbaa !8 ; 3 uses
  %i.beq = and <2 x i64> %wide.load1514, %broadcast.splat
  %i.ber = and <2 x i64> %wide.load1515, %broadcast.splat
  %i.bes = and <2 x i64> %wide.load1514, %broadcast.splat1507
  %i.bet = and <2 x i64> %wide.load1515, %broadcast.splat1507
  %i.beu = shl <2 x i64> %i.bes, %broadcast.splat1509
  %i.bev = shl <2 x i64> %i.bet, %broadcast.splat1509
  %i.bew = or <2 x i64> %i.beu, %i.beq
  %i.bex = or <2 x i64> %i.bev, %i.ber
  %i.bey = and <2 x i64> %wide.load1514, %broadcast.splat1511
  %i.bez = and <2 x i64> %wide.load1515, %broadcast.splat1511
  %i.bfa = lshr <2 x i64> %i.bey, %broadcast.splat1509
  %i.bfb = lshr <2 x i64> %i.bez, %broadcast.splat1509
  %i.bfc = or <2 x i64> %i.bew, %i.bfa
  %i.bfd = or <2 x i64> %i.bex, %i.bfb
  store <2 x i64> %i.bfc, ptr %i.beo, align 16, !tbaa !8
  store <2 x i64> %i.bfd, ptr %i.bep, align 16, !tbaa !8
  %index.next1516 = add nuw i64 %index1513, 4     ; 2 uses
  %i.bfe = icmp eq i64 %index.next1516, %n.vec1505
  br i1 %i.bfe, label %Abc_TtSwapVars.exit766.us.us.us, label %vector.body1512, !llvm.loop !246

scalar.ph1502:                                    ; preds = %.lr.ph.i758.us.us.us, %scalar.ph1502
  %indvars.iv146.i762.us.us.us = phi i64 [ %indvars.iv.next147.i763.us.us.us, %scalar.ph1502 ], [ 0, %.lr.ph.i758.us.us.us ] ; 2 uses
  %i.bff = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv146.i762.us.us.us ; 2 uses
  %i.bfg = load i64, ptr %i.bff, align 8, !tbaa !8 ; 3 uses
  %i.bfh = and i64 %i.bfg, %i.bei
  %i.bfi = and i64 %i.bfg, %i.bek
  %i.bfj = shl i64 %i.bfi, %i.bel
end_hunk_1
begin_hunk_2_@Mf_ObjMergeOrder:bb.a
  %i.cfp = load ptr, ptr %i.cfo, align 8, !tbaa !167 ; 2 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %i.cfp, i64 16
  %i.cfr = load i32, ptr %i.cfq, align 8
  %.not.us.not.i362.us = icmp ult i32 %i.cfr, 134217728
  br i1 %.not.us.not.i362.us, label %bb.fj, label %Mf_SetCutIsContainedOrder.exit.thread.us.i363.us

bb.fj:                                            ; preds = %.lr.ph.split.us.i360.us
  %i.cfs = load i64, ptr %i.cfp, align 8, !tbaa !163 ; 2 uses
  %i.cft = and i64 %i.cel, %i.cfs
  %i.cfu = icmp eq i64 %i.cft, %i.cfs
  br i1 %i.cfu, label %Mf_SetAddCut.exit509.us, label %Mf_SetCutIsContainedOrder.exit.thread.us.i363.us

Mf_SetCutIsContainedOrder.exit.thread.us.i363.us: ; preds = %bb.fj, %.lr.ph.split.us.i360.us
  %indvars.iv.next40.i364.us = add nuw nsw i64 %indvars.iv39.i361.us, 1 ; 2 uses
  %exitcond43.not.i365.us = icmp eq i64 %indvars.iv.next40.i364.us, %i.cen
  br i1 %exitcond43.not.i365.us, label %Mf_SetLastCutIsContained.exit366.us, label %.lr.ph.split.us.i360.us, !llvm.loop !188

Mf_SetLastCutIsContained.exit366.us:              ; preds = %Mf_SetCutIsContainedOrder.exit.thread.i346.us, %Mf_SetCutIsContainedOrder.exit.thread.us.i363.us, %.loopexit.us
  %i.cfv = load double, ptr %i.cav, align 8, !tbaa !184
  %i.cfw = fadd double %i.cfv, 1.000000e+00
  store double %i.cfw, ptr %i.cav, align 8, !tbaa !184
  %i.cfx = load ptr, ptr %i.x, align 8, !tbaa !93 ; 3 uses
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 88
  %i.cfz = load i32, ptr %i.cfy, align 8, !tbaa !189
  %.not155.us = icmp eq i32 %i.cfz, 0
  br i1 %.not155.us, label %Mf_SetLastCutIsContained.exit366.us._crit_edge, label %bb.fk

Mf_SetLastCutIsContained.exit366.us._crit_edge:   ; preds = %Mf_SetLastCutIsContained.exit366.us
  %.pre1094 = load i32, ptr %i.ceg, align 8
  br label %bb.ic

bb.fk:                                            ; preds = %Mf_SetLastCutIsContained.exit366.us
  %i.cga = load i32, ptr %i.cfx, align 8, !tbaa !94 ; 5 uses
  %i.cgb = icmp slt i32 %i.cga, 7
  br i1 %i.cgb, label %bb.gy, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.cgc = load i32, ptr %i.ceg, align 8
  %i.cgd = lshr i32 %i.cgc, 27                    ; 6 uses
  %i.cge = add nsw i32 %i.cga, -6                 ; 10 uses
  %i.cgf = shl nuw i32 1, %i.cge                  ; 18 uses
  %i.cgg = load ptr, ptr %i.caw, align 8, !tbaa !92 ; 4 uses
  %i.cgh = lshr i32 %i.cbp, 1
  %i.cgi = and i32 %i.cgh, 67108863               ; 2 uses
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgg, i64 24
  %i.cgk = load ptr, ptr %i.cgj, align 8, !tbaa !33 ; 2 uses
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgg, i64 8
  %i.cgm = load i32, ptr %i.cgl, align 8, !tbaa !21 ; 2 uses
  %i.cgn = lshr i32 %i.cgi, %i.cgm
  %i.cgo = zext nneg i32 %i.cgn to i64
  %i.cgp = getelementptr inbounds nuw [8 x i8], ptr %i.cgk, i64 %i.cgo
  %i.cgq = load ptr, ptr %i.cgp, align 8, !tbaa !34
  %i.cgr = load i32, ptr %i.cgg, align 8, !tbaa !16 ; 2 uses
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgg, i64 12
  %i.cgt = load i32, ptr %i.cgs, align 4, !tbaa !22 ; 2 uses
  %i.cgu = and i32 %i.cgt, %i.cgi
  %i.cgv = mul i32 %i.cgu, %i.cgr
  %i.cgw = sext i32 %i.cgv to i64
  %i.cgx = getelementptr [8 x i8], ptr %i.cgq, i64 %i.cgw ; 3 uses
  %i.cgy = lshr i32 %i.cbs, 1
  %i.cgz = and i32 %i.cgy, 67108863               ; 2 uses
  %i.cha = lshr i32 %i.cgz, %i.cgm
  %i.chb = zext nneg i32 %i.cha to i64
  %i.chc = getelementptr inbounds nuw [8 x i8], ptr %i.cgk, i64 %i.chb
  %i.chd = load ptr, ptr %i.chc, align 8, !tbaa !34
  %i.che = and i32 %i.cgt, %i.cgz
  %i.chf = mul i32 %i.che, %i.cgr
  %i.chg = sext i32 %i.chf to i64
  %i.chh = getelementptr [8 x i8], ptr %i.chd, i64 %i.chg ; 3 uses
  %i.chi = and i32 %i.cbp, 1
  %.not.i61.i.us = icmp eq i32 %i.chi, %i.jw
  %.not152.i.us = icmp eq i32 %i.cge, 31          ; 15 uses
  br i1 %.not.i61.i.us, label %.preheader.i.i392.us, label %.preheader14.i.i367.us

.preheader14.i.i367.us:                           ; preds = %bb.fl
  br i1 %.not152.i.us, label %Abc_TtCopy.exit.i374.us, label %.lr.ph.preheader.i.i368.us

.lr.ph.preheader.i.i368.us:                       ; preds = %.preheader14.i.i367.us
  %wide.trip.count.i.i369.us = zext nneg i32 %i.cgf to i64 ; 2 uses
  %min.iters.check2026 = icmp ult i32 %i.cge, 2
  br i1 %min.iters.check2026, label %.lr.ph.i.i370.us, label %vector.ph2027

vector.ph2027:                                    ; preds = %.lr.ph.preheader.i.i368.us
  %n.vec2028 = and i64 %wide.trip.count.i.i369.us, 2147483644
  br label %vector.body2029

vector.body2029:                                  ; preds = %vector.body2029, %vector.ph2027
  %index2030 = phi i64 [ 0, %vector.ph2027 ], [ %index.next2033, %vector.body2029 ] ; 3 uses
  %i.chj = getelementptr inbounds nuw [8 x i8], ptr %i.cgx, i64 %index2030 ; 2 uses
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chj, i64 16
  %wide.load2031 = load <2 x i64>, ptr %i.chj, align 8, !tbaa !8
  %wide.load2032 = load <2 x i64>, ptr %i.chk, align 8, !tbaa !8
  %i.chl = xor <2 x i64> %wide.load2031, splat (i64 -1)
  %i.chm = xor <2 x i64> %wide.load2032, splat (i64 -1)
  %i.chn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index2030 ; 2 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chn, i64 16
  store <2 x i64> %i.chl, ptr %i.chn, align 16, !tbaa !8
  store <2 x i64> %i.chm, ptr %i.cho, align 16, !tbaa !8
  %index.next2033 = add nuw i64 %index2030, 4     ; 2 uses
  %i.chp = icmp eq i64 %index.next2033, %n.vec2028
  br i1 %i.chp, label %Abc_TtCopy.exit.i374.us, label %vector.body2029, !llvm.loop !259

.lr.ph.i.i370.us:                                 ; preds = %.lr.ph.preheader.i.i368.us, %.lr.ph.i.i370.us
  %indvars.iv.i.i371.us = phi i64 [ %indvars.iv.next.i.i372.us, %.lr.ph.i.i370.us ], [ 0, %.lr.ph.preheader.i.i368.us ] ; 3 uses
  %i.chq = getelementptr inbounds nuw [8 x i8], ptr %i.cgx, i64 %indvars.iv.i.i371.us
  %i.chr = load i64, ptr %i.chq, align 8, !tbaa !8
  %i.chs = xor i64 %i.chr, -1
  %i.cht = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i371.us
  store i64 %i.chs, ptr %i.cht, align 8, !tbaa !8
  %indvars.iv.next.i.i372.us = add nuw nsw i64 %indvars.iv.i.i371.us, 1 ; 2 uses
  %exitcond.not.i.i373.us = icmp eq i64 %indvars.iv.next.i.i372.us, %wide.trip.count.i.i369.us
  br i1 %exitcond.not.i.i373.us, label %Abc_TtCopy.exit.i374.us, label %.lr.ph.i.i370.us, !llvm.loop !260

.preheader.i.i392.us:                             ; preds = %bb.fl
  br i1 %.not152.i.us, label %Abc_TtCopy.exit.i374.us, label %.lr.ph18.preheader.i.i393.us

.lr.ph18.preheader.i.i393.us:                     ; preds = %.preheader.i.i392.us
  %wide.trip.count24.i.i394.us = zext nneg i32 %i.cgf to i64
  %i.chu = shl nuw nsw i64 %wide.trip.count24.i.i394.us, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.cgx, i64 %i.chu, i1 false), !tbaa !8
  br label %Abc_TtCopy.exit.i374.us

Abc_TtCopy.exit.i374.us:                          ; preds = %vector.body2029, %.lr.ph.i.i370.us, %.lr.ph18.preheader.i.i393.us, %.preheader.i.i392.us, %.preheader14.i.i367.us
  %i.chv = and i32 %i.cbs, 1
  %.not.i62.i.us = icmp eq i32 %i.chv, %i.jz
  br i1 %.not.i62.i.us, label %.preheader.i70.i.us, label %.preheader14.i63.i.us

.preheader14.i63.i.us:                            ; preds = %Abc_TtCopy.exit.i374.us
  br i1 %.not152.i.us, label %Abc_TtCopy.exit77.i.us, label %.lr.ph.preheader.i64.i.us

.lr.ph.preheader.i64.i.us:                        ; preds = %.preheader14.i63.i.us
  %wide.trip.count.i65.i.us = zext nneg i32 %i.cgf to i64 ; 2 uses
  %min.iters.check2014 = icmp ult i32 %i.cge, 2
  br i1 %min.iters.check2014, label %.lr.ph.i66.i.us, label %vector.ph2015

vector.ph2015:                                    ; preds = %.lr.ph.preheader.i64.i.us
  %n.vec2016 = and i64 %wide.trip.count.i65.i.us, 2147483644
  br label %vector.body2017

vector.body2017:                                  ; preds = %vector.body2017, %vector.ph2015
  %index2018 = phi i64 [ 0, %vector.ph2015 ], [ %index.next2021, %vector.body2017 ] ; 3 uses
  %i.chw = getelementptr inbounds nuw [8 x i8], ptr %i.chh, i64 %index2018 ; 2 uses
  %i.chx = getelementptr inbounds nuw i8, ptr %i.chw, i64 16
  %wide.load2019 = load <2 x i64>, ptr %i.chw, align 8, !tbaa !8
  %wide.load2020 = load <2 x i64>, ptr %i.chx, align 8, !tbaa !8
  %i.chy = xor <2 x i64> %wide.load2019, splat (i64 -1)
  %i.chz = xor <2 x i64> %wide.load2020, splat (i64 -1)
  %i.cia = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index2018 ; 2 uses
  %i.cib = getelementptr inbounds nuw i8, ptr %i.cia, i64 16
  store <2 x i64> %i.chy, ptr %i.cia, align 16, !tbaa !8
  store <2 x i64> %i.chz, ptr %i.cib, align 16, !tbaa !8
  %index.next2021 = add nuw i64 %index2018, 4     ; 2 uses
  %i.cic = icmp eq i64 %index.next2021, %n.vec2016
  br i1 %i.cic, label %Abc_TtCopy.exit77.i.us, label %vector.body2017, !llvm.loop !261

.lr.ph.i66.i.us:                                  ; preds = %.lr.ph.preheader.i64.i.us, %.lr.ph.i66.i.us
  %indvars.iv.i67.i.us = phi i64 [ %indvars.iv.next.i68.i.us, %.lr.ph.i66.i.us ], [ 0, %.lr.ph.preheader.i64.i.us ] ; 3 uses
  %i.cid = getelementptr inbounds nuw [8 x i8], ptr %i.chh, i64 %indvars.iv.i67.i.us
  %i.cie = load i64, ptr %i.cid, align 8, !tbaa !8
  %i.cif = xor i64 %i.cie, -1
  %i.cig = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i67.i.us
  store i64 %i.cif, ptr %i.cig, align 8, !tbaa !8
  %indvars.iv.next.i68.i.us = add nuw nsw i64 %indvars.iv.i67.i.us, 1 ; 2 uses
  %exitcond.not.i69.i.us = icmp eq i64 %indvars.iv.next.i68.i.us, %wide.trip.count.i65.i.us
  br i1 %exitcond.not.i69.i.us, label %Abc_TtCopy.exit77.i.us, label %.lr.ph.i66.i.us, !llvm.loop !262

.preheader.i70.i.us:                              ; preds = %Abc_TtCopy.exit.i374.us
  br i1 %.not152.i.us, label %Abc_TtCopy.exit77.i.us, label %.lr.ph18.preheader.i71.i.us

.lr.ph18.preheader.i71.i.us:                      ; preds = %.preheader.i70.i.us
  %wide.trip.count24.i72.i.us = zext nneg i32 %i.cgf to i64
  %i.cih = shl nuw nsw i64 %wide.trip.count24.i72.i.us, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.chh, i64 %i.cih, i1 false), !tbaa !8
  br label %Abc_TtCopy.exit77.i.us

Abc_TtCopy.exit77.i.us:                           ; preds = %vector.body2017, %.lr.ph.i66.i.us, %.lr.ph18.preheader.i71.i.us, %.preheader.i70.i.us, %.preheader14.i63.i.us
  %i.cii = icmp ne i32 %i.cgd, 0                  ; 2 uses
  %i.cij = icmp ne i32 %i.cbq, 0
  %i.cik = and i1 %i.cij, %i.cii
  br i1 %i.cik, label %.lr.ph.preheader.i78.i.us, label %Abc_TtExpand.exit.i375.us

.lr.ph.preheader.i78.i.us:                        ; preds = %Abc_TtCopy.exit77.i.us
  %i.cil = add nsw i32 %i.cbq, -1
  %i.cim = zext nneg i32 %i.cgd to i64
  %i.cin = sext i32 %i.cgf to i64
  %.idx128.i699.us = shl nsw i64 %i.cin, 3
  %i.cio = getelementptr inbounds i8, ptr %i.f, i64 %.idx128.i699.us ; 2 uses
  %smax.i725.us = call i32 @llvm.smax.i32(i32 %i.cgf, i32 1)
  %min.iters.check1950 = icmp slt i32 %i.cgf, 4
  %i.cip = and i32 %smax.i725.us, 2147483644
  %n.vec1952 = zext nneg i32 %i.cip to i64
  %exitcond150.not.i729.us = icmp slt i32 %i.cgf, 2
  %exitcond150.not.i729.us.1 = icmp eq i32 %i.cge, 1
  br label %.lr.ph.i79.i.us

.lr.ph.i79.i.us:                                  ; preds = %bb.ft, %.lr.ph.preheader.i78.i.us
  %indvars.iv.i80.i.us = phi i64 [ %i.cim, %.lr.ph.preheader.i78.i.us ], [ %indvars.iv.next.i81.i.us, %bb.ft ] ; 4 uses
  %.017.i.i390.us = phi i32 [ %i.cil, %.lr.ph.preheader.i78.i.us ], [ %.1.i.i391.us, %bb.ft ] ; 13 uses
  %indvars.iv.next.i81.i.us = add nsw i64 %indvars.iv.i80.i.us, -1 ; 5 uses
  %i.ciq = getelementptr inbounds nuw [4 x i8], ptr %i.cci, i64 %indvars.iv.next.i81.i.us
  %i.cir = load i32, ptr %i.ciq, align 4, !tbaa !15
  %i.cis = zext nneg i32 %.017.i.i390.us to i64   ; 2 uses
  %i.cit = getelementptr inbounds nuw [4 x i8], ptr %i.cbm, i64 %i.cis
  %i.ciu = load i32, ptr %i.cit, align 4, !tbaa !15
  %i.civ = icmp sgt i32 %i.cir, %i.ciu
  br i1 %i.civ, label %bb.ft, label %bb.fm

bb.fm:                                            ; preds = %.lr.ph.i79.i.us
  %i.ciw = icmp samesign ugt i64 %indvars.iv.next.i81.i.us, %i.cis
  br i1 %i.ciw, label %bb.fn, label %Abc_TtSwapVars.exit731.us

bb.fn:                                            ; preds = %bb.fm
  %i.cix = trunc nuw nsw i64 %indvars.iv.next.i81.i.us to i32 ; 3 uses
  %i.ciy = icmp slt i64 %indvars.iv.i80.i.us, 7
  br i1 %i.ciy, label %bb.fs, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ciz = icmp slt i32 %.017.i.i390.us, 6
  br i1 %i.ciz, label %bb.fr, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  br i1 %.not152.i.us, label %Abc_TtSwapVars.exit731.us, label %.preheader120.lr.ph.i701.us

.preheader120.lr.ph.i701.us:                      ; preds = %bb.fp
  %i.cja = add nsw i32 %i.cix, -6                 ; 2 uses
  %i.cjb = shl nuw nsw i32 1, %i.cja              ; 2 uses
  %i.cjc = add nsw i32 %.017.i.i390.us, -6        ; 5 uses
  %i.cjd = shl nuw nsw i32 1, %i.cjc
  %i.cje = shl nuw nsw i32 2, %i.cjc              ; 2 uses
  %i.cjf = shl nuw nsw i32 2, %i.cja
  %i.cjg = zext nneg i32 %i.cjf to i64
  %i.cjh = zext nneg i32 %i.cje to i64            ; 3 uses
  %i.cji = zext nneg i32 %i.cjd to i64            ; 6 uses
  %i.cjj = zext nneg i32 %i.cjb to i64            ; 4 uses
  %i.cjk = shl nuw nsw i64 %i.cji, 3              ; 2 uses
  %umax1991 = call i64 @llvm.umax.i64(i64 %i.cjh, i64 %i.cjj)
  %i.cjl = icmp samesign ult i32 %i.cje, %i.cjb
  %umin1992 = zext i1 %i.cjl to i64               ; 3 uses
  %i.cjm = or disjoint i64 %umin1992, %i.cjh
  %i.cjn = sub nsw i64 %umax1991, %i.cjm          ; 2 uses
  %47 = shl nuw nsw i64 %i.cji, 4
  %48 = shl nuw nsw i64 %i.cjj, 3                 ; 2 uses
  %i.cjo = add nsw i32 %.017.i.i390.us, -5
  %i.cjp = zext nneg i32 %i.cjo to i64
  %i.cjq = lshr i64 %i.cjn, %i.cjp
  %i.cjr = add i64 %i.cjq, %umin1992
  %i.cjs = shl i64 %i.cjr, 3
  %i.cjt = add nsw i32 %.017.i.i390.us, -5
  %i.cju = zext nneg i32 %i.cjt to i64
  %i.cjv = shl i64 %i.cjs, %i.cju
  %i.cjw = add nuw i64 %indvars.iv.i80.i.us, 4294967290
  %i.cjx = and i64 %i.cjw, 4294967295
  %i.cjy = add nuw nsw i64 %i.cjx, 3
  %i.cjz = getelementptr i8, ptr %i.f, i64 %i.cjk
  %i.cka = getelementptr i8, ptr %i.f, i64 %48
  %i.ckb = getelementptr i8, ptr %i.f, i64 %i.cjv
  %i.ckc = getelementptr i8, ptr %i.ckb, i64 %48
  %i.ckd = getelementptr i8, ptr %i.ckc, i64 %i.cjk
  %min.iters.check2000 = icmp ult i32 %i.cjc, 4
  %49 = add nsw i32 %.017.i.i390.us, -5
  %50 = zext nneg i32 %49 to i64
  %51 = lshr i64 %i.cjn, %50
  %52 = add i64 %51, %umin1992
  %53 = shl i64 %52, 3
  %54 = add nsw i32 %.017.i.i390.us, -5
  %55 = zext nneg i32 %54 to i64
  %56 = shl i64 %53, %55
  %i.cke = getelementptr i8, ptr %i.f, i64 %56
  %invariant.gep2296 = getelementptr i8, ptr %i.cke, i64 %47
  %n.vec2002 = and i64 %i.cji, 2147483644
  %xtraiter2209 = and i64 %i.cji, 1
  %i.ckf = icmp eq i32 %i.cjc, 0
  %unroll_iter2212 = and i64 %i.cji, 2147483646
  %lcmp.mod2210.not = icmp eq i64 %xtraiter2209, 0
  %lcmp.mod2211 = icmp eq i32 %i.cjc, 0
  br label %.preheader120.i702.us

.preheader120.i702.us:                            ; preds = %bb.fq, %.preheader120.lr.ph.i701.us
  %indvar1988 = phi i64 [ %indvar.next1989, %bb.fq ], [ 0, %.preheader120.lr.ph.i701.us ] ; 2 uses
  %.1124.i703.us = phi ptr [ %i.ckz, %bb.fq ], [ %i.f, %.preheader120.lr.ph.i701.us ] ; 3 uses
  %i.ckg = shl i64 %indvar1988, %i.cjy            ; 4 uses
  %scevgep1990 = getelementptr i8, ptr %i.cjz, i64 %i.ckg
  %scevgep1994 = getelementptr i8, ptr %i.cka, i64 %i.ckg
  %scevgep1995 = getelementptr i8, ptr %i.ckd, i64 %i.ckg
  %invariant.gep157.i705.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i703.us, i64 %i.cji
  %invariant.gep157.i705.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i703.us, i64 %i.cjj
  %scevgep1995.a = getelementptr i8, ptr %invariant.gep2296, i64 %i.ckg
  %bound01996 = icmp ult ptr %scevgep1990, %scevgep1995
  %bound11997 = icmp ult ptr %scevgep1994, %scevgep1995.a
  %found.conflict1998 = and i1 %bound01996, %bound11997
  br label %.preheader119.i706.us

.preheader119.i706.us:                            ; preds = %middle.block2010, %.preheader120.i702.us
  %indvars.iv138.i707.us = phi i64 [ 0, %.preheader120.i702.us ], [ %indvars.iv.next139.i713.us, %middle.block2010 ] ; 3 uses
  %gep.i708.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i705.us.a, i64 %indvars.iv138.i707.us ; 4 uses
  %gep158.i709.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i705.us, i64 %indvars.iv138.i707.us ; 4 uses
  %brmerge2287 = select i1 %min.iters.check2000, i1 true, i1 %found.conflict1998
  br i1 %brmerge2287, label %scalar.ph1999.preheader, label %vector.body2003

scalar.ph1999.preheader:                          ; preds = %.preheader119.i706.us
  br i1 %i.ckf, label %scalar.ph1999.epil.preheader, label %scalar.ph1999

vector.body2003:                                  ; preds = %.preheader119.i706.us, %vector.body2003
  %index2004 = phi i64 [ %index.next2009, %vector.body2003 ], [ 0, %.preheader119.i706.us ] ; 3 uses
  %i.ckh = getelementptr inbounds nuw [8 x i8], ptr %gep.i708.us, i64 %index2004 ; 3 uses
  %i.cki = getelementptr inbounds nuw i8, ptr %i.ckh, i64 16 ; 2 uses
  %wide.load2005 = load <2 x i64>, ptr %i.ckh, align 8, !tbaa !8, !alias.scope !263, !noalias !266
  %wide.load2006 = load <2 x i64>, ptr %i.cki, align 8, !tbaa !8, !alias.scope !263, !noalias !266
  %i.ckj = getelementptr inbounds nuw [8 x i8], ptr %gep158.i709.us, i64 %index2004 ; 3 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %i.ckj, i64 16 ; 2 uses
  %wide.load2007 = load <2 x i64>, ptr %i.ckj, align 8, !tbaa !8, !alias.scope !266
  %wide.load2008 = load <2 x i64>, ptr %i.ckk, align 8, !tbaa !8, !alias.scope !266
  store <2 x i64> %wide.load2007, ptr %i.ckh, align 8, !tbaa !8, !alias.scope !263, !noalias !266
  store <2 x i64> %wide.load2008, ptr %i.cki, align 8, !tbaa !8, !alias.scope !263, !noalias !266
  store <2 x i64> %wide.load2005, ptr %i.ckj, align 8, !tbaa !8, !alias.scope !266
  store <2 x i64> %wide.load2006, ptr %i.ckk, align 8, !tbaa !8, !alias.scope !266
  %index.next2009 = add nuw i64 %index2004, 4     ; 2 uses
  %i.ckl = icmp eq i64 %index.next2009, %n.vec2002
  br i1 %i.ckl, label %middle.block2010, label %vector.body2003, !llvm.loop !268

scalar.ph1999:                                    ; preds = %scalar.ph1999.preheader, %scalar.ph1999
  %indvars.iv.i710.us = phi i64 [ %indvars.iv.next.i711.us.1, %scalar.ph1999 ], [ 0, %scalar.ph1999.preheader ] ; 4 uses
  %niter2213 = phi i64 [ %niter2213.next.1, %scalar.ph1999 ], [ 0, %scalar.ph1999.preheader ]
  %i.ckm = getelementptr inbounds nuw [8 x i8], ptr %gep.i708.us, i64 %indvars.iv.i710.us ; 2 uses
  %i.ckn = load i64, ptr %i.ckm, align 8, !tbaa !8
  %i.cko = getelementptr inbounds nuw [8 x i8], ptr %gep158.i709.us, i64 %indvars.iv.i710.us ; 2 uses
  %i.ckp = load i64, ptr %i.cko, align 8, !tbaa !8
  store i64 %i.ckp, ptr %i.ckm, align 8, !tbaa !8
  store i64 %i.ckn, ptr %i.cko, align 8, !tbaa !8
  %indvars.iv.next.i711.us = or disjoint i64 %indvars.iv.i710.us, 1 ; 2 uses
  %i.ckq = getelementptr inbounds nuw [8 x i8], ptr %gep.i708.us, i64 %indvars.iv.next.i711.us ; 2 uses
  %i.ckr = load i64, ptr %i.ckq, align 8, !tbaa !8
  %i.cks = getelementptr inbounds nuw [8 x i8], ptr %gep158.i709.us, i64 %indvars.iv.next.i711.us ; 2 uses
  %i.ckt = load i64, ptr %i.cks, align 8, !tbaa !8
  store i64 %i.ckt, ptr %i.ckq, align 8, !tbaa !8
  store i64 %i.ckr, ptr %i.cks, align 8, !tbaa !8
  %indvars.iv.next.i711.us.1 = add nuw nsw i64 %indvars.iv.i710.us, 2 ; 2 uses
  %niter2213.next.1 = add i64 %niter2213, 2       ; 2 uses
  %niter2213.ncmp.1 = icmp eq i64 %niter2213.next.1, %unroll_iter2212
  br i1 %niter2213.ncmp.1, label %middle.block2010.loopexit.unr-lcssa, label %scalar.ph1999, !llvm.loop !269

middle.block2010.loopexit.unr-lcssa:              ; preds = %scalar.ph1999
  br i1 %lcmp.mod2210.not, label %middle.block2010, label %scalar.ph1999.epil.preheader

scalar.ph1999.epil.preheader:                     ; preds = %middle.block2010.loopexit.unr-lcssa, %scalar.ph1999.preheader
  %indvars.iv.i710.us.epil.init = phi i64 [ 0, %scalar.ph1999.preheader ], [ %indvars.iv.next.i711.us.1, %middle.block2010.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2211)
  %i.cku = getelementptr inbounds nuw [8 x i8], ptr %gep.i708.us, i64 %indvars.iv.i710.us.epil.init ; 2 uses
  %i.ckv = load i64, ptr %i.cku, align 8, !tbaa !8
  %i.ckw = getelementptr inbounds nuw [8 x i8], ptr %gep158.i709.us, i64 %indvars.iv.i710.us.epil.init ; 2 uses
  %i.ckx = load i64, ptr %i.ckw, align 8, !tbaa !8
  store i64 %i.ckx, ptr %i.cku, align 8, !tbaa !8
  store i64 %i.ckv, ptr %i.ckw, align 8, !tbaa !8
  br label %middle.block2010

middle.block2010:                                 ; preds = %vector.body2003, %scalar.ph1999.epil.preheader, %middle.block2010.loopexit.unr-lcssa
  %indvars.iv.next139.i713.us = add nuw nsw i64 %indvars.iv138.i707.us, %i.cjh ; 2 uses
  %i.cky = icmp samesign ult i64 %indvars.iv.next139.i713.us, %i.cjj
  br i1 %i.cky, label %.preheader119.i706.us, label %bb.fq, !llvm.loop !203

bb.fq:                                            ; preds = %middle.block2010
  %i.ckz = getelementptr inbounds nuw [8 x i8], ptr %.1124.i703.us, i64 %i.cjg ; 2 uses
  %i.cla = icmp ult ptr %i.ckz, %i.cio
  %indvar.next1989 = add i64 %indvar1988, 1
  br i1 %i.cla, label %.preheader120.i702.us, label %Abc_TtSwapVars.exit731.us, !llvm.loop !204

bb.fr:                                            ; preds = %bb.fo
  br i1 %.not152.i.us, label %Abc_TtSwapVars.exit731.us, label %.preheader.lr.ph.i714.us

.preheader.lr.ph.i714.us:                         ; preds = %bb.fr
  %i.clb = add nsw i32 %i.cix, -6                 ; 3 uses
  %i.clc = shl nuw nsw i32 1, %i.clb
  %i.cld = shl nuw nsw i32 1, %.017.i.i390.us
  %i.cle = zext nneg i32 %.017.i.i390.us to i64
  %i.clf = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.cle
  %i.clg = load i64, ptr %i.clf, align 8, !tbaa !8 ; 5 uses
  %i.clh = zext nneg i32 %i.cld to i64            ; 3 uses
  %i.cli = xor i64 %i.clg, -1                     ; 2 uses
  %i.clj = shl nuw nsw i32 2, %i.clb
  %i.clk = zext nneg i32 %i.clj to i64
  %i.cll = zext nneg i32 %i.clc to i64            ; 3 uses
  %min.iters.check1970 = icmp eq i32 %i.clb, 0
  %n.vec1972 = and i64 %i.cll, 2147483646
  %broadcast.splatinsert1973 = insertelement <2 x i64> poison, i64 %i.clg, i64 0
  %broadcast.splat1974 = shufflevector <2 x i64> %broadcast.splatinsert1973, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1975 = insertelement <2 x i64> poison, i64 %i.clh, i64 0
  %broadcast.splat1976 = shufflevector <2 x i64> %broadcast.splatinsert1975, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1977 = insertelement <2 x i64> poison, i64 %i.cli, i64 0
  %broadcast.splat1978 = shufflevector <2 x i64> %broadcast.splatinsert1977, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i715.us

.preheader.i715.us:                               ; preds = %middle.block1984, %.preheader.lr.ph.i714.us
  %.0126.i716.us = phi ptr [ %i.f, %.preheader.lr.ph.i714.us ], [ %i.cmi, %middle.block1984 ] ; 4 uses
  %invariant.gep159.i717.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i716.us, i64 %i.cll ; 2 uses
  br i1 %min.iters.check1970, label %scalar.ph1969, label %vector.body1979

vector.body1979:                                  ; preds = %.preheader.i715.us, %vector.body1979
  %index1980 = phi i64 [ %index.next1983, %vector.body1979 ], [ 0, %.preheader.i715.us ] ; 3 uses
  %i.clm = getelementptr inbounds nuw [8 x i8], ptr %.0126.i716.us, i64 %index1980 ; 2 uses
  %wide.load1981 = load <2 x i64>, ptr %i.clm, align 8, !tbaa !8 ; 2 uses
  %i.cln = and <2 x i64> %wide.load1981, %broadcast.splat1974
  %i.clo = lshr <2 x i64> %i.cln, %broadcast.splat1976
  %i.clp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i717.us, i64 %index1980 ; 2 uses
  %wide.load1982 = load <2 x i64>, ptr %i.clp, align 8, !tbaa !8 ; 2 uses
  %i.clq = shl <2 x i64> %wide.load1982, %broadcast.splat1976
  %i.clr = and <2 x i64> %i.clq, %broadcast.splat1974
  %i.cls = and <2 x i64> %wide.load1981, %broadcast.splat1978
  %i.clt = or <2 x i64> %i.clr, %i.cls
  store <2 x i64> %i.clt, ptr %i.clm, align 8, !tbaa !8
  %i.clu = and <2 x i64> %wide.load1982, %broadcast.splat1974
  %i.clv = or <2 x i64> %i.clu, %i.clo
  store <2 x i64> %i.clv, ptr %i.clp, align 8, !tbaa !8
  %index.next1983 = add nuw i64 %index1980, 2     ; 2 uses
  %i.clw = icmp eq i64 %index.next1983, %n.vec1972
  br i1 %i.clw, label %middle.block1984, label %vector.body1979, !llvm.loop !270

scalar.ph1969:                                    ; preds = %.preheader.i715.us, %scalar.ph1969
  %indvars.iv141.i718.us = phi i64 [ %indvars.iv.next142.i720.us, %scalar.ph1969 ], [ 0, %.preheader.i715.us ] ; 3 uses
  %i.clx = getelementptr inbounds nuw [8 x i8], ptr %.0126.i716.us, i64 %indvars.iv141.i718.us ; 2 uses
  %i.cly = load i64, ptr %i.clx, align 8, !tbaa !8 ; 2 uses
  %i.clz = and i64 %i.cly, %i.clg
  %i.cma = lshr i64 %i.clz, %i.clh
  %gep160.i719.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i717.us, i64 %indvars.iv141.i718.us ; 2 uses
  %i.cmb = load i64, ptr %gep160.i719.us, align 8, !tbaa !8 ; 2 uses
  %i.cmc = shl i64 %i.cmb, %i.clh
  %i.cmd = and i64 %i.cmc, %i.clg
  %i.cme = and i64 %i.cly, %i.cli
  %i.cmf = or i64 %i.cmd, %i.cme
  store i64 %i.cmf, ptr %i.clx, align 8, !tbaa !8
  %i.cmg = and i64 %i.cmb, %i.clg
  %i.cmh = or i64 %i.cmg, %i.cma
  store i64 %i.cmh, ptr %gep160.i719.us, align 8, !tbaa !8
  %indvars.iv.next142.i720.us = add nuw nsw i64 %indvars.iv141.i718.us, 1 ; 2 uses
  %exitcond145.not.i721.us = icmp eq i64 %indvars.iv.next142.i720.us, %i.cll
  br i1 %exitcond145.not.i721.us, label %middle.block1984, label %scalar.ph1969, !llvm.loop !271

middle.block1984:                                 ; preds = %vector.body1979, %scalar.ph1969
  %i.cmi = getelementptr inbounds nuw [8 x i8], ptr %.0126.i716.us, i64 %i.clk ; 2 uses
  %i.cmj = icmp ult ptr %i.cmi, %i.cio
  br i1 %i.cmj, label %.preheader.i715.us, label %Abc_TtSwapVars.exit731.us, !llvm.loop !207

bb.fs:                                            ; preds = %bb.fn
  br i1 %.not152.i.us, label %Abc_TtSwapVars.exit731.us, label %.lr.ph.i723.us

.lr.ph.i723.us:                                   ; preds = %bb.fs
  %.neg.i724.us = shl nsw i32 -1, %.017.i.i390.us
  %i.cmk = shl nuw nsw i32 1, %i.cix
  %i.cml = add nsw i32 %.neg.i724.us, %i.cmk
  %i.cmm = zext nneg i32 %.017.i.i390.us to i64
  %i.cmn = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.cmm
  %i.cmo = getelementptr inbounds [24 x i8], ptr %i.cmn, i64 %indvars.iv.next.i81.i.us ; 3 uses
  %i.cmp = load i64, ptr %i.cmo, align 8, !tbaa !8 ; 4 uses
  %i.cmq = getelementptr inbounds nuw i8, ptr %i.cmo, i64 8
  %i.cmr = load i64, ptr %i.cmq, align 8, !tbaa !8 ; 4 uses
  %i.cms = zext i32 %i.cml to i64                 ; 7 uses
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cmo, i64 16
  %i.cmu = load i64, ptr %i.cmt, align 8, !tbaa !8 ; 4 uses
  br i1 %min.iters.check1950, label %scalar.ph1949, label %vector.ph1951

vector.ph1951:                                    ; preds = %.lr.ph.i723.us
  %broadcast.splatinsert1953 = insertelement <2 x i64> poison, i64 %i.cmp, i64 0
  %broadcast.splat1954 = shufflevector <2 x i64> %broadcast.splatinsert1953, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1955 = insertelement <2 x i64> poison, i64 %i.cmr, i64 0
  %broadcast.splat1956 = shufflevector <2 x i64> %broadcast.splatinsert1955, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1957 = insertelement <2 x i64> poison, i64 %i.cms, i64 0
  %broadcast.splat1958 = shufflevector <2 x i64> %broadcast.splatinsert1957, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1959 = insertelement <2 x i64> poison, i64 %i.cmu, i64 0
  %broadcast.splat1960 = shufflevector <2 x i64> %broadcast.splatinsert1959, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1961

vector.body1961:                                  ; preds = %vector.body1961, %vector.ph1951
  %index1962 = phi i64 [ 0, %vector.ph1951 ], [ %index.next1965, %vector.body1961 ] ; 2 uses
  %i.cmv = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index1962 ; 3 uses
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.cmv, i64 16 ; 2 uses
  %wide.load1963 = load <2 x i64>, ptr %i.cmv, align 16, !tbaa !8 ; 3 uses
  %wide.load1964 = load <2 x i64>, ptr %i.cmw, align 16, !tbaa !8 ; 3 uses
  %i.cmx = and <2 x i64> %wide.load1963, %broadcast.splat1954
  %i.cmy = and <2 x i64> %wide.load1964, %broadcast.splat1954
  %i.cmz = and <2 x i64> %wide.load1963, %broadcast.splat1956
  %i.cna = and <2 x i64> %wide.load1964, %broadcast.splat1956
  %i.cnb = shl <2 x i64> %i.cmz, %broadcast.splat1958
  %i.cnc = shl <2 x i64> %i.cna, %broadcast.splat1958
  %i.cnd = or <2 x i64> %i.cnb, %i.cmx
  %i.cne = or <2 x i64> %i.cnc, %i.cmy
  %i.cnf = and <2 x i64> %wide.load1963, %broadcast.splat1960
  %i.cng = and <2 x i64> %wide.load1964, %broadcast.splat1960
  %i.cnh = lshr <2 x i64> %i.cnf, %broadcast.splat1958
  %i.cni = lshr <2 x i64> %i.cng, %broadcast.splat1958
  %i.cnj = or <2 x i64> %i.cnd, %i.cnh
  %i.cnk = or <2 x i64> %i.cne, %i.cni
  store <2 x i64> %i.cnj, ptr %i.cmv, align 16, !tbaa !8
  store <2 x i64> %i.cnk, ptr %i.cmw, align 16, !tbaa !8
  %index.next1965 = add nuw i64 %index1962, 4     ; 2 uses
  %i.cnl = icmp eq i64 %index.next1965, %n.vec1952
  br i1 %i.cnl, label %Abc_TtSwapVars.exit731.us, label %vector.body1961, !llvm.loop !272

scalar.ph1949:                                    ; preds = %.lr.ph.i723.us
  %i.cnm = load i64, ptr %i.f, align 16, !tbaa !8 ; 3 uses
  %i.cnn = and i64 %i.cnm, %i.cmp
  %i.cno = and i64 %i.cnm, %i.cmr
  %i.cnp = shl i64 %i.cno, %i.cms
  %i.cnq = or i64 %i.cnp, %i.cnn
  %i.cnr = and i64 %i.cnm, %i.cmu
  %i.cns = lshr i64 %i.cnr, %i.cms
  %i.cnt = or i64 %i.cnq, %i.cns
  store i64 %i.cnt, ptr %i.f, align 16, !tbaa !8
  br i1 %exitcond150.not.i729.us, label %Abc_TtSwapVars.exit731.us, label %scalar.ph1949.1

scalar.ph1949.1:                                  ; preds = %scalar.ph1949
  %i.cnu = load i64, ptr %i.cbf, align 8, !tbaa !8 ; 3 uses
  %i.cnv = and i64 %i.cnu, %i.cmp
  %i.cnw = and i64 %i.cnu, %i.cmr
  %i.cnx = shl i64 %i.cnw, %i.cms
  %i.cny = or i64 %i.cnx, %i.cnv
  %i.cnz = and i64 %i.cnu, %i.cmu
  %i.coa = lshr i64 %i.cnz, %i.cms
  %i.cob = or i64 %i.cny, %i.coa
  store i64 %i.cob, ptr %i.cbf, align 8, !tbaa !8
  br i1 %exitcond150.not.i729.us.1, label %Abc_TtSwapVars.exit731.us, label %scalar.ph1949.2

scalar.ph1949.2:                                  ; preds = %scalar.ph1949.1
  %i.coc = load i64, ptr %i.cbg, align 16, !tbaa !8 ; 3 uses
  %i.cod = and i64 %i.coc, %i.cmp
  %i.coe = and i64 %i.coc, %i.cmr
  %i.cof = shl i64 %i.coe, %i.cms
  %i.cog = or i64 %i.cof, %i.cod
  %i.coh = and i64 %i.coc, %i.cmu
  %i.coi = lshr i64 %i.coh, %i.cms
  %i.coj = or i64 %i.cog, %i.coi
  store i64 %i.coj, ptr %i.cbg, align 16, !tbaa !8
  br label %Abc_TtSwapVars.exit731.us

Abc_TtSwapVars.exit731.us:                        ; preds = %bb.fq, %middle.block1984, %vector.body1961, %scalar.ph1949, %scalar.ph1949.1, %scalar.ph1949.2, %bb.fs, %bb.fr, %bb.fp, %bb.fm
  %i.cok = add nsw i32 %.017.i.i390.us, -1
  br label %bb.ft

bb.ft:                                            ; preds = %Abc_TtSwapVars.exit731.us, %.lr.ph.i79.i.us
  %.1.i.i391.us = phi i32 [ %.017.i.i390.us, %.lr.ph.i79.i.us ], [ %i.cok, %Abc_TtSwapVars.exit731.us ] ; 2 uses
  %i.col = icmp samesign ugt i64 %indvars.iv.i80.i.us, 1
  %i.com = icmp sgt i32 %.1.i.i391.us, -1
  %i.con = select i1 %i.col, i1 %i.com, i1 false
  br i1 %i.con, label %.lr.ph.i79.i.us, label %Abc_TtExpand.exit.i375.us, !llvm.loop !209

Abc_TtExpand.exit.i375.us:                        ; preds = %bb.ft, %Abc_TtCopy.exit77.i.us
  %i.coo = icmp ne i32 %i.cbt, 0
  %i.cop = and i1 %i.coo, %i.cii
  br i1 %i.cop, label %.lr.ph.preheader.i82.i.us, label %Abc_TtExpand.exit88.i.us

.lr.ph.preheader.i82.i.us:                        ; preds = %Abc_TtExpand.exit.i375.us
  %i.coq = add nsw i32 %i.cbt, -1
  %i.cor = zext nneg i32 %i.cgd to i64
  %i.cos = sext i32 %i.cgf to i64
  %.idx128.i664.us = shl nsw i64 %i.cos, 3
  %i.cot = getelementptr inbounds i8, ptr %i.g, i64 %.idx128.i664.us ; 2 uses
  %smax.i690.us = call i32 @llvm.smax.i32(i32 %i.cgf, i32 1)
  %min.iters.check1886 = icmp slt i32 %i.cgf, 4
  %i.cou = and i32 %smax.i690.us, 2147483644
  %n.vec1888 = zext nneg i32 %i.cou to i64
  %exitcond150.not.i694.us = icmp slt i32 %i.cgf, 2
  %exitcond150.not.i694.us.1 = icmp eq i32 %i.cge, 1
  br label %.lr.ph.i83.i.us

.lr.ph.i83.i.us:                                  ; preds = %bb.gb, %.lr.ph.preheader.i82.i.us
  %indvars.iv.i84.i.us = phi i64 [ %i.cor, %.lr.ph.preheader.i82.i.us ], [ %indvars.iv.next.i86.i.us, %bb.gb ] ; 4 uses
  %.017.i85.i.us = phi i32 [ %i.coq, %.lr.ph.preheader.i82.i.us ], [ %.1.i87.i.us, %bb.gb ] ; 13 uses
  %indvars.iv.next.i86.i.us = add nsw i64 %indvars.iv.i84.i.us, -1 ; 5 uses
  %i.cov = getelementptr inbounds nuw [4 x i8], ptr %i.cci, i64 %indvars.iv.next.i86.i.us
  %i.cow = load i32, ptr %i.cov, align 4, !tbaa !15
  %i.cox = zext nneg i32 %.017.i85.i.us to i64    ; 2 uses
  %i.coy = getelementptr inbounds nuw [4 x i8], ptr %i.cch, i64 %i.cox
  %i.coz = load i32, ptr %i.coy, align 4, !tbaa !15
  %i.cpa = icmp sgt i32 %i.cow, %i.coz
  br i1 %i.cpa, label %bb.gb, label %bb.fu

bb.fu:                                            ; preds = %.lr.ph.i83.i.us
  %i.cpb = icmp samesign ugt i64 %indvars.iv.next.i86.i.us, %i.cox
  br i1 %i.cpb, label %bb.fv, label %Abc_TtSwapVars.exit696.us

bb.fv:                                            ; preds = %bb.fu
  %i.cpc = trunc nuw nsw i64 %indvars.iv.next.i86.i.us to i32 ; 3 uses
  %i.cpd = icmp slt i64 %indvars.iv.i84.i.us, 7
  br i1 %i.cpd, label %bb.ga, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.cpe = icmp slt i32 %.017.i85.i.us, 6
  br i1 %i.cpe, label %bb.fz, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  br i1 %.not152.i.us, label %Abc_TtSwapVars.exit696.us, label %.preheader120.lr.ph.i666.us

.preheader120.lr.ph.i666.us:                      ; preds = %bb.fx
  %i.cpf = add nsw i32 %i.cpc, -6                 ; 2 uses
  %i.cpg = shl nuw nsw i32 1, %i.cpf              ; 2 uses
  %i.cph = add nsw i32 %.017.i85.i.us, -6         ; 5 uses
  %i.cpi = shl nuw nsw i32 1, %i.cph
  %i.cpj = shl nuw nsw i32 2, %i.cph              ; 2 uses
  %i.cpk = shl nuw nsw i32 2, %i.cpf
  %i.cpl = zext nneg i32 %i.cpk to i64
  %i.cpm = zext nneg i32 %i.cpj to i64            ; 3 uses
  %i.cpn = zext nneg i32 %i.cpi to i64            ; 6 uses
  %i.cpo = zext nneg i32 %i.cpg to i64            ; 4 uses
  %i.cpp = shl nuw nsw i64 %i.cpn, 3              ; 2 uses
  %umax1927 = call i64 @llvm.umax.i64(i64 %i.cpm, i64 %i.cpo)
  %i.cpq = icmp samesign ult i32 %i.cpj, %i.cpg
  %umin1928 = zext i1 %i.cpq to i64               ; 3 uses
  %i.cpr = or disjoint i64 %umin1928, %i.cpm
  %i.cps = sub nsw i64 %umax1927, %i.cpr          ; 2 uses
  %57 = shl nuw nsw i64 %i.cpn, 4
  %58 = shl nuw nsw i64 %i.cpo, 3                 ; 2 uses
  %i.cpt = add nsw i32 %.017.i85.i.us, -5
  %i.cpu = zext nneg i32 %i.cpt to i64
  %i.cpv = lshr i64 %i.cps, %i.cpu
  %i.cpw = add i64 %i.cpv, %umin1928
  %i.cpx = shl i64 %i.cpw, 3
  %i.cpy = add nsw i32 %.017.i85.i.us, -5
  %i.cpz = zext nneg i32 %i.cpy to i64
  %i.cqa = shl i64 %i.cpx, %i.cpz
  %i.cqb = add nuw i64 %indvars.iv.i84.i.us, 4294967290
  %i.cqc = and i64 %i.cqb, 4294967295
  %i.cqd = add nuw nsw i64 %i.cqc, 3
  %i.cqe = getelementptr i8, ptr %i.g, i64 %i.cpp
  %i.cqf = getelementptr i8, ptr %i.g, i64 %58
  %i.cqg = getelementptr i8, ptr %i.g, i64 %i.cqa
  %i.cqh = getelementptr i8, ptr %i.cqg, i64 %58
  %i.cqi = getelementptr i8, ptr %i.cqh, i64 %i.cpp
  %min.iters.check1936 = icmp ult i32 %i.cph, 4
  %59 = add nsw i32 %.017.i85.i.us, -5
  %60 = zext nneg i32 %59 to i64
  %61 = lshr i64 %i.cps, %60
  %62 = add i64 %61, %umin1928
  %63 = shl i64 %62, 3
  %64 = add nsw i32 %.017.i85.i.us, -5
  %65 = zext nneg i32 %64 to i64
  %66 = shl i64 %63, %65
  %i.cqj = getelementptr i8, ptr %i.g, i64 %66
  %invariant.gep2299 = getelementptr i8, ptr %i.cqj, i64 %57
  %n.vec1938 = and i64 %i.cpn, 2147483644
  %xtraiter2214 = and i64 %i.cpn, 1
  %i.cqk = icmp eq i32 %i.cph, 0
  %unroll_iter2217 = and i64 %i.cpn, 2147483646
  %lcmp.mod2215.not = icmp eq i64 %xtraiter2214, 0
  %lcmp.mod2216 = icmp eq i32 %i.cph, 0
  br label %.preheader120.i667.us

.preheader120.i667.us:                            ; preds = %bb.fy, %.preheader120.lr.ph.i666.us
  %indvar1924 = phi i64 [ %indvar.next1925, %bb.fy ], [ 0, %.preheader120.lr.ph.i666.us ] ; 2 uses
  %.1124.i668.us = phi ptr [ %i.cre, %bb.fy ], [ %i.g, %.preheader120.lr.ph.i666.us ] ; 3 uses
  %i.cql = shl i64 %indvar1924, %i.cqd            ; 4 uses
  %scevgep1926 = getelementptr i8, ptr %i.cqe, i64 %i.cql
  %scevgep1930 = getelementptr i8, ptr %i.cqf, i64 %i.cql
  %scevgep1931 = getelementptr i8, ptr %i.cqi, i64 %i.cql
  %invariant.gep157.i670.us.a = getelementptr inbounds nuw [8 x i8], ptr %.1124.i668.us, i64 %i.cpn
  %invariant.gep157.i670.us = getelementptr inbounds nuw [8 x i8], ptr %.1124.i668.us, i64 %i.cpo
  %scevgep1931.a = getelementptr i8, ptr %invariant.gep2299, i64 %i.cql
  %bound01932 = icmp ult ptr %scevgep1926, %scevgep1931
  %bound11933 = icmp ult ptr %scevgep1930, %scevgep1931.a
  %found.conflict1934 = and i1 %bound01932, %bound11933
  br label %.preheader119.i671.us

.preheader119.i671.us:                            ; preds = %middle.block1946, %.preheader120.i667.us
  %indvars.iv138.i672.us = phi i64 [ 0, %.preheader120.i667.us ], [ %indvars.iv.next139.i678.us, %middle.block1946 ] ; 3 uses
  %gep.i673.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i670.us.a, i64 %indvars.iv138.i672.us ; 4 uses
  %gep158.i674.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i670.us, i64 %indvars.iv138.i672.us ; 4 uses
  %brmerge2288 = select i1 %min.iters.check1936, i1 true, i1 %found.conflict1934
  br i1 %brmerge2288, label %scalar.ph1935.preheader, label %vector.body1939

scalar.ph1935.preheader:                          ; preds = %.preheader119.i671.us
  br i1 %i.cqk, label %scalar.ph1935.epil.preheader, label %scalar.ph1935

vector.body1939:                                  ; preds = %.preheader119.i671.us, %vector.body1939
  %index1940 = phi i64 [ %index.next1945, %vector.body1939 ], [ 0, %.preheader119.i671.us ] ; 3 uses
  %i.cqm = getelementptr inbounds nuw [8 x i8], ptr %gep.i673.us, i64 %index1940 ; 3 uses
  %i.cqn = getelementptr inbounds nuw i8, ptr %i.cqm, i64 16 ; 2 uses
  %wide.load1941 = load <2 x i64>, ptr %i.cqm, align 8, !tbaa !8, !alias.scope !273, !noalias !276
  %wide.load1942 = load <2 x i64>, ptr %i.cqn, align 8, !tbaa !8, !alias.scope !273, !noalias !276
  %i.cqo = getelementptr inbounds nuw [8 x i8], ptr %gep158.i674.us, i64 %index1940 ; 3 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cqo, i64 16 ; 2 uses
  %wide.load1943 = load <2 x i64>, ptr %i.cqo, align 8, !tbaa !8, !alias.scope !276
  %wide.load1944 = load <2 x i64>, ptr %i.cqp, align 8, !tbaa !8, !alias.scope !276
  store <2 x i64> %wide.load1943, ptr %i.cqm, align 8, !tbaa !8, !alias.scope !273, !noalias !276
  store <2 x i64> %wide.load1944, ptr %i.cqn, align 8, !tbaa !8, !alias.scope !273, !noalias !276
  store <2 x i64> %wide.load1941, ptr %i.cqo, align 8, !tbaa !8, !alias.scope !276
  store <2 x i64> %wide.load1942, ptr %i.cqp, align 8, !tbaa !8, !alias.scope !276
  %index.next1945 = add nuw i64 %index1940, 4     ; 2 uses
  %i.cqq = icmp eq i64 %index.next1945, %n.vec1938
  br i1 %i.cqq, label %middle.block1946, label %vector.body1939, !llvm.loop !278

scalar.ph1935:                                    ; preds = %scalar.ph1935.preheader, %scalar.ph1935
  %indvars.iv.i675.us = phi i64 [ %indvars.iv.next.i676.us.1, %scalar.ph1935 ], [ 0, %scalar.ph1935.preheader ] ; 4 uses
  %niter2218 = phi i64 [ %niter2218.next.1, %scalar.ph1935 ], [ 0, %scalar.ph1935.preheader ]
  %i.cqr = getelementptr inbounds nuw [8 x i8], ptr %gep.i673.us, i64 %indvars.iv.i675.us ; 2 uses
  %i.cqs = load i64, ptr %i.cqr, align 8, !tbaa !8
  %i.cqt = getelementptr inbounds nuw [8 x i8], ptr %gep158.i674.us, i64 %indvars.iv.i675.us ; 2 uses
  %i.cqu = load i64, ptr %i.cqt, align 8, !tbaa !8
  store i64 %i.cqu, ptr %i.cqr, align 8, !tbaa !8
  store i64 %i.cqs, ptr %i.cqt, align 8, !tbaa !8
  %indvars.iv.next.i676.us = or disjoint i64 %indvars.iv.i675.us, 1 ; 2 uses
  %i.cqv = getelementptr inbounds nuw [8 x i8], ptr %gep.i673.us, i64 %indvars.iv.next.i676.us ; 2 uses
  %i.cqw = load i64, ptr %i.cqv, align 8, !tbaa !8
  %i.cqx = getelementptr inbounds nuw [8 x i8], ptr %gep158.i674.us, i64 %indvars.iv.next.i676.us ; 2 uses
  %i.cqy = load i64, ptr %i.cqx, align 8, !tbaa !8
  store i64 %i.cqy, ptr %i.cqv, align 8, !tbaa !8
  store i64 %i.cqw, ptr %i.cqx, align 8, !tbaa !8
  %indvars.iv.next.i676.us.1 = add nuw nsw i64 %indvars.iv.i675.us, 2 ; 2 uses
  %niter2218.next.1 = add i64 %niter2218, 2       ; 2 uses
  %niter2218.ncmp.1 = icmp eq i64 %niter2218.next.1, %unroll_iter2217
  br i1 %niter2218.ncmp.1, label %middle.block1946.loopexit.unr-lcssa, label %scalar.ph1935, !llvm.loop !279

middle.block1946.loopexit.unr-lcssa:              ; preds = %scalar.ph1935
  br i1 %lcmp.mod2215.not, label %middle.block1946, label %scalar.ph1935.epil.preheader

scalar.ph1935.epil.preheader:                     ; preds = %middle.block1946.loopexit.unr-lcssa, %scalar.ph1935.preheader
  %indvars.iv.i675.us.epil.init = phi i64 [ 0, %scalar.ph1935.preheader ], [ %indvars.iv.next.i676.us.1, %middle.block1946.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod2216)
  %i.cqz = getelementptr inbounds nuw [8 x i8], ptr %gep.i673.us, i64 %indvars.iv.i675.us.epil.init ; 2 uses
  %i.cra = load i64, ptr %i.cqz, align 8, !tbaa !8
  %i.crb = getelementptr inbounds nuw [8 x i8], ptr %gep158.i674.us, i64 %indvars.iv.i675.us.epil.init ; 2 uses
  %i.crc = load i64, ptr %i.crb, align 8, !tbaa !8
  store i64 %i.crc, ptr %i.cqz, align 8, !tbaa !8
  store i64 %i.cra, ptr %i.crb, align 8, !tbaa !8
  br label %middle.block1946

middle.block1946:                                 ; preds = %vector.body1939, %scalar.ph1935.epil.preheader, %middle.block1946.loopexit.unr-lcssa
  %indvars.iv.next139.i678.us = add nuw nsw i64 %indvars.iv138.i672.us, %i.cpm ; 2 uses
  %i.crd = icmp samesign ult i64 %indvars.iv.next139.i678.us, %i.cpo
  br i1 %i.crd, label %.preheader119.i671.us, label %bb.fy, !llvm.loop !203

bb.fy:                                            ; preds = %middle.block1946
  %i.cre = getelementptr inbounds nuw [8 x i8], ptr %.1124.i668.us, i64 %i.cpl ; 2 uses
  %i.crf = icmp ult ptr %i.cre, %i.cot
  %indvar.next1925 = add i64 %indvar1924, 1
  br i1 %i.crf, label %.preheader120.i667.us, label %Abc_TtSwapVars.exit696.us, !llvm.loop !204

bb.fz:                                            ; preds = %bb.fw
  br i1 %.not152.i.us, label %Abc_TtSwapVars.exit696.us, label %.preheader.lr.ph.i679.us

.preheader.lr.ph.i679.us:                         ; preds = %bb.fz
  %i.crg = add nsw i32 %i.cpc, -6                 ; 3 uses
  %i.crh = shl nuw nsw i32 1, %i.crg
  %i.cri = shl nuw nsw i32 1, %.017.i85.i.us
  %i.crj = zext nneg i32 %.017.i85.i.us to i64
  %i.crk = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.crj
  %i.crl = load i64, ptr %i.crk, align 8, !tbaa !8 ; 5 uses
  %i.crm = zext nneg i32 %i.cri to i64            ; 3 uses
  %i.crn = xor i64 %i.crl, -1                     ; 2 uses
  %i.cro = shl nuw nsw i32 2, %i.crg
  %i.crp = zext nneg i32 %i.cro to i64
  %i.crq = zext nneg i32 %i.crh to i64            ; 3 uses
  %min.iters.check1906 = icmp eq i32 %i.crg, 0
  %n.vec1908 = and i64 %i.crq, 2147483646
  %broadcast.splatinsert1909 = insertelement <2 x i64> poison, i64 %i.crl, i64 0
  %broadcast.splat1910 = shufflevector <2 x i64> %broadcast.splatinsert1909, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert1911 = insertelement <2 x i64> poison, i64 %i.crm, i64 0
  %broadcast.splat1912 = shufflevector <2 x i64> %broadcast.splatinsert1911, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1913 = insertelement <2 x i64> poison, i64 %i.crn, i64 0
  %broadcast.splat1914 = shufflevector <2 x i64> %broadcast.splatinsert1913, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.i680.us

.preheader.i680.us:                               ; preds = %middle.block1920, %.preheader.lr.ph.i679.us
  %.0126.i681.us = phi ptr [ %i.g, %.preheader.lr.ph.i679.us ], [ %i.csn, %middle.block1920 ] ; 4 uses
  %invariant.gep159.i682.us = getelementptr inbounds nuw [8 x i8], ptr %.0126.i681.us, i64 %i.crq ; 2 uses
  br i1 %min.iters.check1906, label %scalar.ph1905, label %vector.body1915

vector.body1915:                                  ; preds = %.preheader.i680.us, %vector.body1915
  %index1916 = phi i64 [ %index.next1919, %vector.body1915 ], [ 0, %.preheader.i680.us ] ; 3 uses
  %i.crr = getelementptr inbounds nuw [8 x i8], ptr %.0126.i681.us, i64 %index1916 ; 2 uses
  %wide.load1917 = load <2 x i64>, ptr %i.crr, align 8, !tbaa !8 ; 2 uses
  %i.crs = and <2 x i64> %wide.load1917, %broadcast.splat1910
  %i.crt = lshr <2 x i64> %i.crs, %broadcast.splat1912
  %i.cru = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i682.us, i64 %index1916 ; 2 uses
  %wide.load1918 = load <2 x i64>, ptr %i.cru, align 8, !tbaa !8 ; 2 uses
  %i.crv = shl <2 x i64> %wide.load1918, %broadcast.splat1912
  %i.crw = and <2 x i64> %i.crv, %broadcast.splat1910
  %i.crx = and <2 x i64> %wide.load1917, %broadcast.splat1914
  %i.cry = or <2 x i64> %i.crw, %i.crx
  store <2 x i64> %i.cry, ptr %i.crr, align 8, !tbaa !8
  %i.crz = and <2 x i64> %wide.load1918, %broadcast.splat1910
  %i.csa = or <2 x i64> %i.crz, %i.crt
  store <2 x i64> %i.csa, ptr %i.cru, align 8, !tbaa !8
  %index.next1919 = add nuw i64 %index1916, 2     ; 2 uses
  %i.csb = icmp eq i64 %index.next1919, %n.vec1908
  br i1 %i.csb, label %middle.block1920, label %vector.body1915, !llvm.loop !280

scalar.ph1905:                                    ; preds = %.preheader.i680.us, %scalar.ph1905
  %indvars.iv141.i683.us = phi i64 [ %indvars.iv.next142.i685.us, %scalar.ph1905 ], [ 0, %.preheader.i680.us ] ; 3 uses
  %i.csc = getelementptr inbounds nuw [8 x i8], ptr %.0126.i681.us, i64 %indvars.iv141.i683.us ; 2 uses
  %i.csd = load i64, ptr %i.csc, align 8, !tbaa !8 ; 2 uses
  %i.cse = and i64 %i.csd, %i.crl
  %i.csf = lshr i64 %i.cse, %i.crm
  %gep160.i684.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i682.us, i64 %indvars.iv141.i683.us ; 2 uses
  %i.csg = load i64, ptr %gep160.i684.us, align 8, !tbaa !8 ; 2 uses
  %i.csh = shl i64 %i.csg, %i.crm
  %i.csi = and i64 %i.csh, %i.crl
  %i.csj = and i64 %i.csd, %i.crn
  %i.csk = or i64 %i.csi, %i.csj
  store i64 %i.csk, ptr %i.csc, align 8, !tbaa !8
  %i.csl = and i64 %i.csg, %i.crl
  %i.csm = or i64 %i.csl, %i.csf
  store i64 %i.csm, ptr %gep160.i684.us, align 8, !tbaa !8
  %indvars.iv.next142.i685.us = add nuw nsw i64 %indvars.iv141.i683.us, 1 ; 2 uses
  %exitcond145.not.i686.us = icmp eq i64 %indvars.iv.next142.i685.us, %i.crq
  br i1 %exitcond145.not.i686.us, label %middle.block1920, label %scalar.ph1905, !llvm.loop !281

middle.block1920:                                 ; preds = %vector.body1915, %scalar.ph1905
  %i.csn = getelementptr inbounds nuw [8 x i8], ptr %.0126.i681.us, i64 %i.crp ; 2 uses
  %i.cso = icmp ult ptr %i.csn, %i.cot
  br i1 %i.cso, label %.preheader.i680.us, label %Abc_TtSwapVars.exit696.us, !llvm.loop !207

bb.ga:                                            ; preds = %bb.fv
  br i1 %.not152.i.us, label %Abc_TtSwapVars.exit696.us, label %.lr.ph.i688.us

.lr.ph.i688.us:                                   ; preds = %bb.ga
  %.neg.i689.us = shl nsw i32 -1, %.017.i85.i.us
  %i.csp = shl nuw nsw i32 1, %i.cpc
  %i.csq = add nsw i32 %.neg.i689.us, %i.csp
  %i.csr = zext nneg i32 %.017.i85.i.us to i64
  %i.css = getelementptr inbounds nuw [144 x i8], ptr @s_PPMasks, i64 %i.csr
  %i.cst = getelementptr inbounds [24 x i8], ptr %i.css, i64 %indvars.iv.next.i86.i.us ; 3 uses
  %i.csu = load i64, ptr %i.cst, align 8, !tbaa !8 ; 4 uses
  %i.csv = getelementptr inbounds nuw i8, ptr %i.cst, i64 8
  %i.csw = load i64, ptr %i.csv, align 8, !tbaa !8 ; 4 uses
  %i.csx = zext i32 %i.csq to i64                 ; 7 uses
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cst, i64 16
  %i.csz = load i64, ptr %i.csy, align 8, !tbaa !8 ; 4 uses
  br i1 %min.iters.check1886, label %scalar.ph1885, label %vector.ph1887

vector.ph1887:                                    ; preds = %.lr.ph.i688.us
  %broadcast.splatinsert1889 = insertelement <2 x i64> poison, i64 %i.csu, i64 0
  %broadcast.splat1890 = shufflevector <2 x i64> %broadcast.splatinsert1889, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1891 = insertelement <2 x i64> poison, i64 %i.csw, i64 0
  %broadcast.splat1892 = shufflevector <2 x i64> %broadcast.splatinsert1891, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1893 = insertelement <2 x i64> poison, i64 %i.csx, i64 0
  %broadcast.splat1894 = shufflevector <2 x i64> %broadcast.splatinsert1893, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert1895 = insertelement <2 x i64> poison, i64 %i.csz, i64 0
  %broadcast.splat1896 = shufflevector <2 x i64> %broadcast.splatinsert1895, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body1897

vector.body1897:                                  ; preds = %vector.body1897, %vector.ph1887
  %index1898 = phi i64 [ 0, %vector.ph1887 ], [ %index.next1901, %vector.body1897 ] ; 2 uses
  %i.cta = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index1898 ; 3 uses
  %i.ctb = getelementptr inbounds nuw i8, ptr %i.cta, i64 16 ; 2 uses
  %wide.load1899 = load <2 x i64>, ptr %i.cta, align 16, !tbaa !8 ; 3 uses
  %wide.load1900 = load <2 x i64>, ptr %i.ctb, align 16, !tbaa !8 ; 3 uses
  %i.ctc = and <2 x i64> %wide.load1899, %broadcast.splat1890
  %i.ctd = and <2 x i64> %wide.load1900, %broadcast.splat1890
  %i.cte = and <2 x i64> %wide.load1899, %broadcast.splat1892
  %i.ctf = and <2 x i64> %wide.load1900, %broadcast.splat1892
  %i.ctg = shl <2 x i64> %i.cte, %broadcast.splat1894
  %i.cth = shl <2 x i64> %i.ctf, %broadcast.splat1894
  %i.cti = or <2 x i64> %i.ctg, %i.ctc
  %i.ctj = or <2 x i64> %i.cth, %i.ctd
  %i.ctk = and <2 x i64> %wide.load1899, %broadcast.splat1896
  %i.ctl = and <2 x i64> %wide.load1900, %broadcast.splat1896
  %i.ctm = lshr <2 x i64> %i.ctk, %broadcast.splat1894
  %i.ctn = lshr <2 x i64> %i.ctl, %broadcast.splat1894
  %i.cto = or <2 x i64> %i.cti, %i.ctm
  %i.ctp = or <2 x i64> %i.ctj, %i.ctn
  store <2 x i64> %i.cto, ptr %i.cta, align 16, !tbaa !8
  store <2 x i64> %i.ctp, ptr %i.ctb, align 16, !tbaa !8
  %index.next1901 = add nuw i64 %index1898, 4     ; 2 uses
  %i.ctq = icmp eq i64 %index.next1901, %n.vec1888
  br i1 %i.ctq, label %Abc_TtSwapVars.exit696.us, label %vector.body1897, !llvm.loop !282

end_hunk_2
begin_hunk_3_@Abc_Tt7IsopCover:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !15
  %wide.load1 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !15
  %i.as = or <4 x i32> %wide.load, splat (i32 4096)
  %i.at = or <4 x i32> %wide.load1, splat (i32 4096)
  store <4 x i32> %i.as, ptr %gep, align 4, !tbaa !15
  store <4 x i32> %i.at, ptr %i.ar, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !417

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ao, %.lr.ph.preheader ], [ %i.aq, %middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block, %bb.d
  %i.av = icmp slt i32 %i.r, %i.y
  br i1 %i.av, label %.lr.ph53.preheader, label %.loopexit

.lr.ph53.preheader:                               ; preds = %.preheader
  %i.aw = sext i32 %i.r to i64                    ; 4 uses
  %wide.trip.count58 = sext i32 %i.y to i64       ; 2 uses
  %i.ax = sub nsw i64 %wide.trip.count58, %i.aw   ; 3 uses
  %min.iters.check3 = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check3, label %.lr.ph53.preheader14, label %vector.ph4

vector.ph4:                                       ; preds = %.lr.ph53.preheader
  %n.vec5 = and i64 %i.ax, -8                     ; 3 uses
  %i.ay = add nsw i64 %n.vec5, %i.aw
  %invariant.gep16 = getelementptr [4 x i8], ptr %3, i64 %i.aw
  br label %vector.body6

vector.body6:                                     ; preds = %vector.body6, %vector.ph4
  %index7 = phi i64 [ 0, %vector.ph4 ], [ %index.next10, %vector.body6 ] ; 2 uses
  %gep17 = getelementptr [4 x i8], ptr %invariant.gep16, i64 %index7 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %gep17, i64 16 ; 2 uses
  %wide.load8 = load <4 x i32>, ptr %gep17, align 4, !tbaa !15
  %wide.load9 = load <4 x i32>, ptr %i.az, align 4, !tbaa !15
  %i.ba = or <4 x i32> %wide.load8, splat (i32 8192)
  %i.bb = or <4 x i32> %wide.load9, splat (i32 8192)
  store <4 x i32> %i.ba, ptr %gep17, align 4, !tbaa !15
  store <4 x i32> %i.bb, ptr %i.az, align 4, !tbaa !15
  %index.next10 = add nuw i64 %index7, 8          ; 2 uses
  %i.bc = icmp eq i64 %index.next10, %n.vec5
  br i1 %i.bc, label %middle.block11, label %vector.body6, !llvm.loop !418

middle.block11:                                   ; preds = %vector.body6
  %cmp.n12 = icmp eq i64 %i.ax, %n.vec5
  br i1 %cmp.n12, label %.loopexit, label %.lr.ph53.preheader14

.lr.ph53.preheader14:                             ; preds = %.lr.ph53.preheader, %middle.block11
  %indvars.iv55.ph = phi i64 [ %i.aw, %.lr.ph53.preheader ], [ %i.ay, %middle.block11 ]
  br label %.lr.ph53

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader15 ] ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15
  %i.bf = or i32 %i.be, 4096
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !15
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !419

.lr.ph53:                                         ; preds = %.lr.ph53.preheader14, %.lr.ph53
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.lr.ph53 ], [ %indvars.iv55.ph, %.lr.ph53.preheader14 ] ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv55 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !15
  %i.bi = or i32 %i.bh, 8192
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !15
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.loopexit, label %.lr.ph53, !llvm.loop !420

.loopexit:                                        ; preds = %.lr.ph53, %middle.block11, %.preheader, %bb.c
  ret void
}

declare i32 @Kit_TruthLitNum(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i64 @Abc_Tt6Isop(i64 noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #17 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr4855 = phi i32 [ %.0.lcssa, %tailrecurse ], [ %2, %bb.a ] ; 3 uses
  %.tr4754 = phi i64 [ %i.aw, %tailrecurse ], [ %1, %bb.a ] ; 5 uses
  %.tr53 = phi i64 [ %i.av, %tailrecurse ], [ %0, %bb.a ] ; 4 uses
  %accumulator.tr52 = phi i64 [ %i.ba, %tailrecurse ], [ 0, %bb.a ]
  %i.b = icmp eq i64 %.tr4754, -1
  br i1 %i.b, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph
  %smin = tail call i32 @llvm.smin.i32(i32 %.tr4855, i32 0)
  %i.c = add i32 %smin, -1                        ; 2 uses
  %i.d = icmp sgt i32 %.tr4855, 0
  br i1 %i.d, label %.lr.ph68, label %.preheader.tailrecurse_crit_edge

.lr.ph68:                                         ; preds = %.preheader.preheader
  %i.e = zext nneg i32 %.tr4855 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i32, ptr %3, align 4, !tbaa !15
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %3, align 4, !tbaa !15
  br label %.loopexit

.preheader:                                       ; preds = %bb.d
  %i.h = trunc nuw i64 %indvars.iv.next66 to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.preheader.tailrecurse_crit_edge, !llvm.loop !421

.preheader.tailrecurse_crit_edge:                 ; preds = %.preheader, %.preheader.preheader
  %.pre = shl nuw nsw i32 1, %i.c
  %.pre57 = zext nneg i32 %.pre to i64
  br label %tailrecurse

bb.c:                                             ; preds = %.lr.ph68, %.preheader
  %indvars.iv.next66.in = phi i64 [ %i.e, %.lr.ph68 ], [ %indvars.iv.next66, %.preheader ]
  %indvars.iv.next66 = add nsw i64 %indvars.iv.next66.in, -1 ; 4 uses
  %indvars67 = trunc i64 %indvars.iv.next66 to i32 ; 3 uses
  %i.j = shl nuw i32 1, %indvars67
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
  %i.l = lshr i64 %.tr53, %i.k
  %i.m = and i64 %indvars.iv.next66, 4294967295
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.p = xor i64 %i.l, %.tr53
  %i.q = and i64 %i.o, %i.p
  %.not46 = icmp eq i64 %i.q, 0
  br i1 %.not46, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.r = lshr i64 %.tr4754, %i.k
  %i.s = xor i64 %i.r, %.tr4754
  %i.t = and i64 %i.o, %i.s
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %.preheader, label %tailrecurse, !llvm.loop !421

tailrecurse:                                      ; preds = %bb.c, %bb.d, %.preheader.tailrecurse_crit_edge
  %.pre-phi58 = phi i64 [ %.pre57, %.preheader.tailrecurse_crit_edge ], [ %i.k, %bb.d ], [ %i.k, %bb.c ] ; 4 uses
  %.0.lcssa = phi i32 [ %i.c, %.preheader.tailrecurse_crit_edge ], [ %indvars67, %bb.d ], [ %indvars67, %bb.c ] ; 4 uses
  %i.u = sext i32 %.0.lcssa to i64                ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr @s_Truths6Neg, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8    ; 3 uses
  %i.x = and i64 %i.w, %.tr53                     ; 2 uses
  %i.y = shl i64 %i.x, %.pre-phi58
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.u
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !8  ; 3 uses
  %i.ac = and i64 %i.ab, %.tr53                   ; 2 uses
  %i.ad = lshr i64 %i.ac, %.pre-phi58
  %i.ae = or i64 %i.ad, %i.ac                     ; 2 uses
  %i.af = and i64 %i.w, %.tr4754                  ; 2 uses
  %i.ag = shl i64 %i.af, %.pre-phi58
  %i.ah = or i64 %i.ag, %i.af                     ; 3 uses
  %i.ai = and i64 %i.ab, %.tr4754                 ; 2 uses
  %i.aj = lshr i64 %i.ai, %.pre-phi58
  %i.ak = or i64 %i.aj, %i.ai                     ; 3 uses
  %i.al = xor i64 %i.ak, -1
  %i.am = and i64 %i.z, %i.al
  %i.an = tail call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.am, i64 noundef %i.ah, i32 noundef %.0.lcssa, ptr noundef %3) ; 2 uses
  %i.ao = xor i64 %i.ah, -1
  %i.ap = and i64 %i.ae, %i.ao
  %i.aq = tail call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.ap, i64 noundef %i.ak, i32 noundef %.0.lcssa, ptr noundef %3) ; 2 uses
  %i.ar = xor i64 %i.an, -1
  %i.as = and i64 %i.z, %i.ar
  %i.at = xor i64 %i.aq, -1
  %i.au = and i64 %i.ae, %i.at
  %i.av = or i64 %i.au, %i.as                     ; 2 uses
  %i.aw = and i64 %i.ak, %i.ah
  %i.ax = and i64 %i.an, %i.w
  %i.ay = and i64 %i.aq, %i.ab
  %i.az = or i64 %i.ax, %i.ay
  %i.ba = or i64 %i.az, %accumulator.tr52         ; 2 uses
  %i.bb = icmp eq i64 %i.av, 0
  br i1 %i.bb, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b
  %.042 = phi i64 [ -1, %bb.b ], [ 0, %bb.a ], [ %i.ba, %tailrecurse ]
  ret i64 %.042
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Abc_TtSwapVars(ptr nofree noundef nonnull captures(address) %0, i32 noundef %1, i32 noundef range(i32 -2147483648, 30) %2, i32 noundef range(i32 -2147483648, 31) %3) unnamed_addr #18 {
bb.a:
  %i.a = icmp eq i32 %2, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.smax.i32(i32 %3, i32 %2) ; 8 uses
  %spec.select117 = tail call i32 @llvm.smin.i32(i32 %3, i32 %2) ; 12 uses
  %i.b = icmp slt i32 %1, 7
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load i64, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.d = sext i32 %spec.select117 to i64
  %i.e = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.d
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds [24 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = shl nuw nsw i32 1, %spec.select
  %.neg.i = shl nsw i32 -1, %spec.select117
  %i.i = add nsw i32 %i.h, %.neg.i
  %i.j = load i64, ptr %i.g, align 8, !tbaa !8
  %i.k = and i64 %i.j, %i.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !8
  %i.n = and i64 %i.m, %i.c
  %i.o = zext i32 %i.i to i64                     ; 2 uses
  %i.p = shl i64 %i.n, %i.o
  %i.q = or i64 %i.p, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !8
  %i.t = and i64 %i.s, %i.c
  %i.u = lshr i64 %i.t, %i.o
  %i.v = or i64 %i.q, %i.u
  store i64 %i.v, ptr %0, align 8, !tbaa !8
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = icmp slt i32 %spec.select, 6
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = add nsw i32 %1, -6                       ; 3 uses
  %.not130 = icmp eq i32 %i.x, 31
  br i1 %.not130, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.y = shl nuw i32 1, %i.x                      ; 3 uses
  %.neg = shl nsw i32 -1, %spec.select117
  %i.z = shl nuw nsw i32 1, %spec.select
  %i.aa = add nsw i32 %.neg, %i.z
  %i.ab = sext i32 %spec.select117 to i64
  %i.ac = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.ab
  %i.ad = sext i32 %spec.select to i64
  %i.ae = getelementptr inbounds [24 x i8], ptr %i.ac, i64 %i.ad ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !8  ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !8  ; 4 uses
  %i.ai = zext i32 %i.aa to i64                   ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !8  ; 4 uses
  %min.iters.check186 = icmp slt i32 %i.y, 4
  br i1 %min.iters.check186, label %scalar.ph185, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph
  %i.al = and i32 %i.y, 2147483644
  %n.vec188 = zext nneg i32 %i.al to i64
  %broadcast.splatinsert189 = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %broadcast.splat190 = shufflevector <2 x i64> %broadcast.splatinsert189, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert191 = insertelement <2 x i64> poison, i64 %i.ah, i64 0
  %broadcast.splat192 = shufflevector <2 x i64> %broadcast.splatinsert191, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert193 = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat194 = shufflevector <2 x i64> %broadcast.splatinsert193, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert195 = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %broadcast.splat196 = shufflevector <2 x i64> %broadcast.splatinsert195, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph187
  %index198 = phi i64 [ 0, %vector.ph187 ], [ %index.next201, %vector.body197 ] ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index198 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load199 = load <2 x i64>, ptr %i.am, align 8, !tbaa !8 ; 3 uses
  %wide.load200 = load <2 x i64>, ptr %i.an, align 8, !tbaa !8 ; 3 uses
  %i.ao = and <2 x i64> %broadcast.splat190, %wide.load199
  %i.ap = and <2 x i64> %broadcast.splat190, %wide.load200
  %i.aq = and <2 x i64> %broadcast.splat192, %wide.load199
  %i.ar = and <2 x i64> %broadcast.splat192, %wide.load200
  %i.as = shl <2 x i64> %i.aq, %broadcast.splat194
  %i.at = shl <2 x i64> %i.ar, %broadcast.splat194
  %i.au = or <2 x i64> %i.as, %i.ao
  %i.av = or <2 x i64> %i.at, %i.ap
  %i.aw = and <2 x i64> %broadcast.splat196, %wide.load199
  %i.ax = and <2 x i64> %broadcast.splat196, %wide.load200
  %i.ay = lshr <2 x i64> %i.aw, %broadcast.splat194
  %i.az = lshr <2 x i64> %i.ax, %broadcast.splat194
  %i.ba = or <2 x i64> %i.au, %i.ay
  %i.bb = or <2 x i64> %i.av, %i.az
  store <2 x i64> %i.ba, ptr %i.am, align 8, !tbaa !8
  store <2 x i64> %i.bb, ptr %i.an, align 8, !tbaa !8
  %index.next201 = add nuw i64 %index198, 4       ; 2 uses
  %i.bc = icmp eq i64 %index.next201, %n.vec188
  br i1 %i.bc, label %.loopexit, label %vector.body197, !llvm.loop !422

scalar.ph185:                                     ; preds = %.lr.ph
  %i.bd = load i64, ptr %0, align 8, !tbaa !8     ; 3 uses
  %i.be = and i64 %i.af, %i.bd
  %i.bf = and i64 %i.ah, %i.bd
  %i.bg = shl i64 %i.bf, %i.ai
  %i.bh = or i64 %i.bg, %i.be
  %i.bi = and i64 %i.ak, %i.bd
  %i.bj = lshr i64 %i.bi, %i.ai
  %i.bk = or i64 %i.bh, %i.bj
  store i64 %i.bk, ptr %0, align 8, !tbaa !8
  %exitcond150.not = icmp slt i32 %i.y, 2
  br i1 %exitcond150.not, label %.loopexit, label %scalar.ph185.1

scalar.ph185.1:                                   ; preds = %scalar.ph185
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !8  ; 3 uses
  %i.bn = and i64 %i.af, %i.bm
  %i.bo = and i64 %i.ah, %i.bm
  %i.bp = shl i64 %i.bo, %i.ai
  %i.bq = or i64 %i.bp, %i.bn
  %i.br = and i64 %i.ak, %i.bm
  %i.bs = lshr i64 %i.br, %i.ai
  %i.bt = or i64 %i.bq, %i.bs
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !8
  %exitcond150.not.1 = icmp eq i32 %i.x, 1
  br i1 %exitcond150.not.1, label %.loopexit, label %scalar.ph185.2

scalar.ph185.2:                                   ; preds = %scalar.ph185.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !8  ; 3 uses
  %i.bw = and i64 %i.af, %i.bv
  %i.bx = and i64 %i.ah, %i.bv
  %i.by = shl i64 %i.bx, %i.ai
  %i.bz = or i64 %i.by, %i.bw
  %i.ca = and i64 %i.ak, %i.bv
  %i.cb = lshr i64 %i.ca, %i.ai
  %i.cc = or i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.bu, align 8, !tbaa !8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.cd = icmp slt i32 %spec.select117, 6
  %i.ce = add nsw i32 %1, -6                      ; 2 uses
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.idx128 = shl nsw i64 %i.cg, 3
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %.idx128 ; 2 uses
  %.not129 = icmp eq i32 %i.ce, 31                ; 2 uses
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %.not129, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.ci = add nsw i32 %spec.select, -6            ; 3 uses
  %i.cj = shl nuw nsw i32 1, %i.ci
  %i.ck = shl nuw nsw i32 1, %spec.select117
  %i.cl = sext i32 %spec.select117 to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !8  ; 5 uses
  %i.co = zext nneg i32 %i.ck to i64              ; 3 uses
  %i.cp = xor i64 %i.cn, -1                       ; 2 uses
  %i.cq = shl nuw nsw i32 2, %i.ci
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext nneg i32 %i.cj to i64              ; 3 uses
  %min.iters.check170 = icmp eq i32 %i.ci, 0
  %n.vec172 = and i64 %i.cs, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.cn, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert173 = insertelement <2 x i64> poison, i64 %i.co, i64 0
  %broadcast.splat174 = shufflevector <2 x i64> %broadcast.splatinsert173, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert175 = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %broadcast.splat176 = shufflevector <2 x i64> %broadcast.splatinsert175, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %middle.block182
  %.0126 = phi ptr [ %0, %.preheader.lr.ph ], [ %i.dp, %middle.block182 ] ; 4 uses
  %invariant.gep159 = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cs ; 2 uses
  br i1 %min.iters.check170, label %scalar.ph169, label %vector.body177

vector.body177:                                   ; preds = %.preheader, %vector.body177
  %index178 = phi i64 [ %index.next181, %vector.body177 ], [ 0, %.preheader ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %index178 ; 2 uses
  %wide.load179 = load <2 x i64>, ptr %i.ct, align 8, !tbaa !8 ; 2 uses
  %i.cu = and <2 x i64> %broadcast.splat, %wide.load179
  %i.cv = lshr <2 x i64> %i.cu, %broadcast.splat174
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %index178 ; 2 uses
  %wide.load180 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !8 ; 2 uses
  %i.cx = shl <2 x i64> %wide.load180, %broadcast.splat174
  %i.cy = and <2 x i64> %i.cx, %broadcast.splat
  %i.cz = and <2 x i64> %wide.load179, %broadcast.splat176
  %i.da = or <2 x i64> %i.cy, %i.cz
  store <2 x i64> %i.da, ptr %i.ct, align 8, !tbaa !8
  %i.db = and <2 x i64> %wide.load180, %broadcast.splat
  %i.dc = or <2 x i64> %i.db, %i.cv
  store <2 x i64> %i.dc, ptr %i.cw, align 8, !tbaa !8
  %index.next181 = add nuw i64 %index178, 2       ; 2 uses
  %i.dd = icmp eq i64 %index.next181, %n.vec172
  br i1 %i.dd, label %middle.block182, label %vector.body177, !llvm.loop !423

scalar.ph169:                                     ; preds = %.preheader, %scalar.ph169
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %scalar.ph169 ], [ 0, %.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %indvars.iv141 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !8  ; 2 uses
  %i.dg = and i64 %i.cn, %i.df
  %i.dh = lshr i64 %i.dg, %i.co
  %gep160 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159, i64 %indvars.iv141 ; 2 uses
  %i.di = load i64, ptr %gep160, align 8, !tbaa !8 ; 2 uses
  %i.dj = shl i64 %i.di, %i.co
  %i.dk = and i64 %i.dj, %i.cn
  %i.dl = and i64 %i.df, %i.cp
  %i.dm = or i64 %i.dk, %i.dl
  store i64 %i.dm, ptr %i.de, align 8, !tbaa !8
  %i.dn = and i64 %i.di, %i.cn
  %i.do = or i64 %i.dn, %i.dh
  store i64 %i.do, ptr %gep160, align 8, !tbaa !8
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %exitcond145.not = icmp eq i64 %indvars.iv.next142, %i.cs
  br i1 %exitcond145.not, label %middle.block182, label %scalar.ph169, !llvm.loop !424

middle.block182:                                  ; preds = %vector.body177, %scalar.ph169
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.0126, i64 %i.cr ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.ch
  br i1 %i.dq, label %.preheader, label %.loopexit, !llvm.loop !207

bb.h:                                             ; preds = %bb.f
  br i1 %.not129, label %.loopexit, label %.preheader120.lr.ph

.preheader120.lr.ph:                              ; preds = %bb.h
  %i.dr = add nsw i32 %spec.select, -6            ; 2 uses
  %i.ds = shl nuw nsw i32 1, %i.dr                ; 2 uses
  %i.dt = add nsw i32 %spec.select117, -6         ; 5 uses
  %i.du = shl nuw nsw i32 1, %i.dt
  %i.dv = shl nuw nsw i32 2, %i.dt                ; 2 uses
  %i.dw = shl nuw nsw i32 2, %i.dr
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = zext nneg i32 %i.dv to i64              ; 3 uses
  %i.dz = zext nneg i32 %i.du to i64              ; 7 uses
  %i.ea = zext nneg i32 %i.ds to i64              ; 5 uses
  %i.eb = shl nuw nsw i64 %i.dz, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 %i.ea)
  %i.ec = icmp samesign ult i32 %i.dv, %i.ds
  %umin = zext i1 %i.ec to i64                    ; 3 uses
  %i.ed = or disjoint i64 %umin, %i.dy
  %i.ee = sub nsw i64 %umax, %i.ed                ; 2 uses
  %4 = shl nuw nsw i64 %i.dz, 4
  %5 = shl nuw nsw i64 %i.ea, 3
  %i.ef = add nsw i32 %spec.select117, -5
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = lshr i64 %i.ee, %i.eg
  %i.ei = add i64 %i.eh, %umin
  %i.ej = add nsw i32 %spec.select117, -5
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl i64 %i.ei, %i.ek
  %6 = add i64 %i.el, %i.ea
  %7 = add i64 %6, %i.dz
  %i.em = shl i64 %7, 3
  %i.en = add nsw i32 %spec.select, -5
  %i.eo = zext i32 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eo, 3
  %i.eq = getelementptr i8, ptr %0, i64 %i.eb
  %i.er = getelementptr i8, ptr %0, i64 %5
  %i.es = getelementptr i8, ptr %0, i64 %i.em
  %min.iters.check = icmp ult i32 %i.dt, 4
  %8 = add nsw i32 %spec.select117, -5
  %9 = zext nneg i32 %8 to i64
  %10 = lshr i64 %i.ee, %9
  %11 = add i64 %10, %umin
  %12 = add nsw i32 %spec.select117, -5
  %13 = zext nneg i32 %12 to i64
  %14 = shl i64 %11, %13
  %15 = shl i64 %14, 3
  %i.et = getelementptr i8, ptr %0, i64 %15
  %invariant.gep215 = getelementptr i8, ptr %i.et, i64 %4
  %n.vec = and i64 %i.dz, 2147483644
  %xtraiter = and i64 %i.dz, 1
  %i.eu = icmp eq i32 %i.dt, 0
  %unroll_iter = and i64 %i.dz, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod212 = icmp eq i32 %i.dt, 0
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader120.lr.ph, %bb.i
  %indvar = phi i64 [ 0, %.preheader120.lr.ph ], [ %indvar.next, %bb.i ] ; 2 uses
  %.1124 = phi ptr [ %0, %.preheader120.lr.ph ], [ %i.fo, %bb.i ] ; 3 uses
  %i.ev = shl i64 %indvar, %i.ep                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.eq, i64 %i.ev
  %scevgep164 = getelementptr i8, ptr %i.er, i64 %i.ev
  %scevgep165 = getelementptr i8, ptr %i.es, i64 %i.ev
  %invariant.gep157.a = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dz
  %invariant.gep157 = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.ea
  %scevgep165.a = getelementptr i8, ptr %invariant.gep215, i64 %i.ev
  %bound0 = icmp ult ptr %scevgep, %scevgep165
  %bound1 = icmp ult ptr %scevgep164, %scevgep165.a
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader120, %middle.block
  %indvars.iv138 = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next139, %middle.block ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.a, i64 %indvars.iv138 ; 4 uses
  %gep158 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157, i64 %indvars.iv138 ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader119
  br i1 %i.eu, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader119, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader119 ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ew, align 8, !tbaa !8, !alias.scope !425, !noalias !428
  %wide.load166 = load <2 x i64>, ptr %i.ex, align 8, !tbaa !8, !alias.scope !425, !noalias !428
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %index ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %wide.load167 = load <2 x i64>, ptr %i.ey, align 8, !tbaa !8, !alias.scope !428
  %wide.load168 = load <2 x i64>, ptr %i.ez, align 8, !tbaa !8, !alias.scope !428
  store <2 x i64> %wide.load167, ptr %i.ew, align 8, !tbaa !8, !alias.scope !425, !noalias !428
  store <2 x i64> %wide.load168, ptr %i.ex, align 8, !tbaa !8, !alias.scope !425, !noalias !428
  store <2 x i64> %wide.load, ptr %i.ey, align 8, !tbaa !8, !alias.scope !428
  store <2 x i64> %wide.load166, ptr %i.ez, align 8, !tbaa !8, !alias.scope !428
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !430

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !8
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !8
  store i64 %i.fc, ptr %i.fd, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.next ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.next ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !8
  store i64 %i.fi, ptr %i.ff, align 8, !tbaa !8
  store i64 %i.fg, ptr %i.fh, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !431

middle.block.loopexit.unr-lcssa:                  ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %middle.block, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %middle.block.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %middle.block.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !8
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %gep158, i64 %indvars.iv.epil.init ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !8
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !8
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !8
  br label %middle.block

middle.block:                                     ; preds = %vector.body, %scalar.ph.epil.preheader, %middle.block.loopexit.unr-lcssa
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, %i.dy ; 2 uses
  %i.fn = icmp samesign ult i64 %indvars.iv.next139, %i.ea
  br i1 %i.fn, label %.preheader119, label %bb.i, !llvm.loop !203

bb.i:                                             ; preds = %middle.block
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.1124, i64 %i.dx ; 2 uses
  %i.fp = icmp ult ptr %i.fo, %i.ch
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fp, label %.preheader120, label %.loopexit, !llvm.loop !204

.loopexit:                                        ; preds = %bb.i, %middle.block182, %vector.body197, %scalar.ph185, %scalar.ph185.1, %scalar.ph185.2, %bb.h, %bb.g, %bb.e, %bb.a, %bb.c
  ret void
}

; Function Attrs: inlinehint nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @Abc_Tt8Isop(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef range(i32 0, 32) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %3) unnamed_addr #17 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.f = icmp samesign ult i32 %2, 7
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !tbaa !8
  %i.h = load i64, ptr %1, align 8, !tbaa !8
  %i.i = call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.g, i64 noundef %i.h, i32 noundef %2, ptr noundef %i.e) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.i, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.i, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.i, ptr %i.l, align 8, !tbaa !8
  store i64 %i.i, ptr %3, align 8, !tbaa !8
  %.pre93 = load i32, ptr %i.e, align 4, !tbaa !15
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %2, 7
  %.val50.pre = load i64, ptr %0, align 8, !tbaa !8 ; 7 uses
  br i1 %i.m, label %._crit_edge90, label %bb.d

._crit_edge90:                                    ; preds = %bb.c
  %.phi.trans.insert91 = getelementptr i8, ptr %0, i64 8
  %.val51.pre = load i64, ptr %.phi.trans.insert91, align 8, !tbaa !8
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !8    ; 3 uses
  %i.p = icmp eq i64 %.val50.pre, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !8    ; 6 uses
  br i1 %i.p, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre86 = load i64, ptr %1, align 8, !tbaa !8
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre89 = load i64, ptr %.phi.trans.insert88, align 8, !tbaa !8
  br label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !8    ; 2 uses
  %i.u = icmp eq i64 %i.r, %i.t
  %.pre87 = load i64, ptr %1, align 8, !tbaa !8   ; 4 uses
  br i1 %i.u, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !8
  %i.x = icmp eq i64 %.pre87, %i.w
  br i1 %i.x, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !8
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %._crit_edge90, %bb.g
  %.val51 = phi i64 [ %.val51.pre, %._crit_edge90 ], [ %i.r, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.ad = icmp eq i64 %.val50.pre, %.val51
  br i1 %i.ad, label %bb.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.h
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  %.pre1.i = load i64, ptr %1, align 8, !tbaa !8
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load i64, ptr %1, align 8, !tbaa !8     ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !8  ; 2 uses
  %i.ah = icmp eq i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = call fastcc i64 @Abc_Tt6Isop(i64 noundef %.val50.pre, i64 noundef %i.ae, i32 noundef 6, ptr noundef %i.d) ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !8
  store i64 %i.ai, ptr %3, align 8, !tbaa !8
  br label %Abc_Tt7Isop.exit

bb.k:                                             ; preds = %bb.i, %._crit_edge.i
  %i.ak = phi i64 [ %.pre1.i, %._crit_edge.i ], [ %i.ae, %bb.i ] ; 3 uses
  %i.al = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.i ] ; 3 uses
  %i.am = xor i64 %i.al, -1
  %i.an = and i64 %.val50.pre, %i.am
  %i.ao = call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.an, i64 noundef %i.ak, i32 noundef 6, ptr noundef %i.d) ; 2 uses
  %i.ap = xor i64 %i.ak, -1
  %i.aq = and i64 %.val51, %i.ap
  %i.ar = call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.aq, i64 noundef %i.al, i32 noundef 6, ptr noundef %i.d) ; 2 uses
  %i.as = xor i64 %i.ao, -1
  %i.at = and i64 %.val50.pre, %i.as
  %i.au = xor i64 %i.ar, -1
  %i.av = and i64 %.val51, %i.au
  %i.aw = or i64 %i.av, %i.at
  %i.ax = and i64 %i.al, %i.ak
  %i.ay = call fastcc i64 @Abc_Tt6Isop(i64 noundef %i.aw, i64 noundef %i.ax, i32 noundef 6, ptr noundef %i.d) ; 2 uses
  %i.az = or i64 %i.ay, %i.ao                     ; 2 uses
  store i64 %i.az, ptr %3, align 8, !tbaa !8
  %i.ba = or i64 %i.ay, %i.ar                     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !8
  br label %Abc_Tt7Isop.exit

Abc_Tt7Isop.exit:                                 ; preds = %bb.j, %bb.k
  %i.bc = phi i64 [ %i.ai, %bb.j ], [ %i.ba, %bb.k ]
  %i.bd = phi i64 [ %i.ai, %bb.j ], [ %i.az, %bb.k ]
  %i.be = load i32, ptr %i.d, align 4, !tbaa !15
end_hunk_3
