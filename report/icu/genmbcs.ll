Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/genmbcs?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL12MBCSAddTableP12NewConverterP8UCMTableP20UConverterStaticData:bb.a
  %i.abx = icmp eq i16 %.15574.i57.i.ph, 1
  br i1 %i.abx, label %.loopexit.i59.i, label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %.lr.ph.i54.i.prol.loopexit, %.lr.ph.i54.i
  %.176.i55.i = phi i16 [ %i.acj, %.lr.ph.i54.i ], [ %.176.i55.i.unr, %.lr.ph.i54.i.prol.loopexit ] ; 3 uses
  %.15175.i56.i = phi i16 [ %i.acf, %.lr.ph.i54.i ], [ %.15175.i56.i.unr, %.lr.ph.i54.i.prol.loopexit ] ; 3 uses
  %.15574.i57.i = phi i16 [ %i.acm, %.lr.ph.i54.i ], [ %.15574.i57.i.unr, %.lr.ph.i54.i.prol.loopexit ]
  %i.aby = add i16 %.15175.i56.i, 1
  %i.abz = zext i16 %.15175.i56.i to i64
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.abz
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !37
  %i.acc = add i16 %.176.i55.i, 1
  %i.acd = zext i16 %.176.i55.i to i64
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.acd
  store i32 %i.acb, ptr %i.ace, align 4, !tbaa !37
  %i.acf = add i16 %.15175.i56.i, 2               ; 2 uses
  %i.acg = zext i16 %i.aby to i64
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.acg
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !37
  %i.acj = add i16 %.176.i55.i, 2                 ; 2 uses
  %i.ack = zext i16 %i.acc to i64
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.ack
  store i32 %i.aci, ptr %i.acl, align 4, !tbaa !37
  %i.acm = add nsw i16 %.15574.i57.i, -2          ; 2 uses
  %.not66.i58.i.1 = icmp eq i16 %i.acm, 0
  br i1 %.not66.i58.i.1, label %.loopexit.i59.i, label %.lr.ph.i54.i, !llvm.loop !65

bb.cy:                                            ; preds = %.critedge.i49.i
  %i.acn = icmp ult i16 %.082.i44.i, %.05081.i45.i
  br i1 %i.acn, label %vector.scevcheck, label %bb.cz

vector.scevcheck:                                 ; preds = %bb.cy
  store i16 %.082.i44.i, ptr %i.aak, align 2, !tbaa !32
  %i.aco = icmp ugt i16 %.082.i44.i, -64
  %i.acp = icmp ugt i16 %.05081.i45.i, -64
  %i.acq = or i1 %i.aco, %i.acp
  br i1 %i.acq, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck
  br label %scalar.ph

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.acr = zext i16 %.082.i44.i to i64
  %i.acs = zext i16 %.05081.i45.i to i64
  %i.act = sub nsw i64 %i.acr, %i.acs
  %i.acu = shl nsw i64 %i.act, 2
  %i.acv = add nsw i64 %i.acu, -1
  %diff.check = icmp ult i64 %i.acv, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body234

vector.body234:                                   ; preds = %vector.memcheck
  %i.acw = add i16 %.05081.i45.i, 64
  %i.acx = add i16 %.082.i44.i, 64
  %i.acy = zext i16 %.05081.i45.i to i64
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.acy ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %wide.load = load <4 x i32>, ptr %i.acz, align 4, !tbaa !37
  %wide.load236 = load <4 x i32>, ptr %i.ada, align 4, !tbaa !37
  %i.adb = zext i16 %.082.i44.i to i64
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adb ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 16
  store <4 x i32> %wide.load, ptr %i.adc, align 4, !tbaa !37
  store <4 x i32> %wide.load236, ptr %i.add, align 4, !tbaa !37
  %i.ade = add i16 %.082.i44.i, 8
  %i.adf = add i16 %.05081.i45.i, 8
  %i.adg = zext i16 %i.adf to i64
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adg ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.adh, align 4, !tbaa !37
  %wide.load236.1 = load <4 x i32>, ptr %i.adi, align 4, !tbaa !37
  %i.adj = zext i16 %i.ade to i64
  %i.adk = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adj ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  store <4 x i32> %wide.load.1, ptr %i.adk, align 4, !tbaa !37
  store <4 x i32> %wide.load236.1, ptr %i.adl, align 4, !tbaa !37
  %i.adm = add i16 %.082.i44.i, 16
  %i.adn = add i16 %.05081.i45.i, 16
  %i.ado = zext i16 %i.adn to i64
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.ado ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adp, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.adp, align 4, !tbaa !37
  %wide.load236.2 = load <4 x i32>, ptr %i.adq, align 4, !tbaa !37
  %i.adr = zext i16 %i.adm to i64
  %i.ads = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adr ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.ads, i64 16
  store <4 x i32> %wide.load.2, ptr %i.ads, align 4, !tbaa !37
  store <4 x i32> %wide.load236.2, ptr %i.adt, align 4, !tbaa !37
  %i.adu = add i16 %.082.i44.i, 24
  %i.adv = add i16 %.05081.i45.i, 24
  %i.adw = zext i16 %i.adv to i64
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adw ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.adx, align 4, !tbaa !37
  %wide.load236.3 = load <4 x i32>, ptr %i.ady, align 4, !tbaa !37
  %i.adz = zext i16 %i.adu to i64
  %i.aea = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.adz ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  store <4 x i32> %wide.load.3, ptr %i.aea, align 4, !tbaa !37
  store <4 x i32> %wide.load236.3, ptr %i.aeb, align 4, !tbaa !37
  %i.aec = add i16 %.082.i44.i, 32
  %i.aed = add i16 %.05081.i45.i, 32
  %i.aee = zext i16 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aee ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aef, i64 16
  %wide.load.4 = load <4 x i32>, ptr %i.aef, align 4, !tbaa !37
  %wide.load236.4 = load <4 x i32>, ptr %i.aeg, align 4, !tbaa !37
  %i.aeh = zext i16 %i.aec to i64
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aeh ; 2 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 16
  store <4 x i32> %wide.load.4, ptr %i.aei, align 4, !tbaa !37
  store <4 x i32> %wide.load236.4, ptr %i.aej, align 4, !tbaa !37
  %i.aek = add i16 %.082.i44.i, 40
  %i.ael = add i16 %.05081.i45.i, 40
  %i.aem = zext i16 %i.ael to i64
  %i.aen = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aem ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %wide.load.5 = load <4 x i32>, ptr %i.aen, align 4, !tbaa !37
  %wide.load236.5 = load <4 x i32>, ptr %i.aeo, align 4, !tbaa !37
  %i.aep = zext i16 %i.aek to i64
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aep ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeq, i64 16
  store <4 x i32> %wide.load.5, ptr %i.aeq, align 4, !tbaa !37
  store <4 x i32> %wide.load236.5, ptr %i.aer, align 4, !tbaa !37
  %i.aes = add i16 %.082.i44.i, 48
  %i.aet = add i16 %.05081.i45.i, 48
  %i.aeu = zext i16 %i.aet to i64
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aeu ; 2 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16
  %wide.load.6 = load <4 x i32>, ptr %i.aev, align 4, !tbaa !37
  %wide.load236.6 = load <4 x i32>, ptr %i.aew, align 4, !tbaa !37
  %i.aex = zext i16 %i.aes to i64
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aex ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  store <4 x i32> %wide.load.6, ptr %i.aey, align 4, !tbaa !37
  store <4 x i32> %wide.load236.6, ptr %i.aez, align 4, !tbaa !37
  %i.afa = add i16 %.082.i44.i, 56
  %i.afb = add i16 %.05081.i45.i, 56
  %i.afc = zext i16 %i.afb to i64
  %i.afd = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.afc ; 2 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 16
  %wide.load.7 = load <4 x i32>, ptr %i.afd, align 4, !tbaa !37
  %wide.load236.7 = load <4 x i32>, ptr %i.afe, align 4, !tbaa !37
  %i.aff = zext i16 %i.afa to i64
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.aff ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afg, i64 16
  store <4 x i32> %wide.load.7, ptr %i.afg, align 4, !tbaa !37
  store <4 x i32> %wide.load236.7, ptr %i.afh, align 4, !tbaa !37
  br label %.loopexit.i59.i

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader
  %.280.i62.i = phi i16 [ %.082.i44.i, %scalar.ph.preheader ], [ %i.aft, %scalar.ph ] ; 3 uses
  %.25279.i63.i = phi i16 [ %.05081.i45.i, %scalar.ph.preheader ], [ %i.afp, %scalar.ph ] ; 3 uses
  %.25678.i64.i = phi i16 [ 64, %scalar.ph.preheader ], [ %i.afw, %scalar.ph ]
  %i.afi = add i16 %.25279.i63.i, 1
  %i.afj = zext i16 %.25279.i63.i to i64
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.afj
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !37
  %i.afm = add i16 %.280.i62.i, 1
  %i.afn = zext i16 %.280.i62.i to i64
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.afn
  store i32 %i.afl, ptr %i.afo, align 4, !tbaa !37
  %i.afp = add i16 %.25279.i63.i, 2               ; 2 uses
  %i.afq = zext i16 %i.afi to i64
  %i.afr = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.afq
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !37
  %i.aft = add i16 %.280.i62.i, 2                 ; 2 uses
  %i.afu = zext i16 %i.afm to i64
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.zl, i64 %i.afu
  store i32 %i.afs, ptr %i.afv, align 4, !tbaa !37
  %i.afw = add nsw i16 %.25678.i64.i, -2          ; 2 uses
  %.not65.i65.i.1 = icmp eq i16 %i.afw, 0
  br i1 %.not65.i65.i.1, label %.loopexit.i59.i, label %scalar.ph, !llvm.loop !66

bb.cz:                                            ; preds = %bb.cy
  store i16 %.05081.i45.i, ptr %i.aak, align 2, !tbaa !32
  %i.afx = add i16 %.082.i44.i, 64                ; 2 uses
  br label %.loopexit.i59.i

.loopexit.i59.i:                                  ; preds = %.lr.ph.i54.i.prol.loopexit, %.lr.ph.i54.i, %scalar.ph, %vector.body234, %middle.block256, %bb.cz, %.critedge.thread.i51.i, %.critedge.thread.thread.i68.i
  %.353.i60.i = phi i16 [ %i.aag, %.critedge.thread.thread.i68.i ], [ %i.afx, %bb.cz ], [ %i.aam, %.critedge.thread.i51.i ], [ %i.acw, %vector.body234 ], [ %i.afp, %scalar.ph ], [ %i.abd, %middle.block256 ], [ %.lcssa327.unr, %.lr.ph.i54.i.prol.loopexit ], [ %i.acf, %.lr.ph.i54.i ] ; 2 uses
  %.3.i61.i = phi i16 [ %.082.i44.i, %.critedge.thread.thread.i68.i ], [ %i.afx, %bb.cz ], [ %.082.i44.i, %.critedge.thread.i51.i ], [ %i.acx, %vector.body234 ], [ %i.aft, %scalar.ph ], [ %i.abc, %middle.block256 ], [ %.lcssa326.unr, %.lr.ph.i54.i.prol.loopexit ], [ %i.acj, %.lr.ph.i54.i ] ; 2 uses
  %i.afy = zext i16 %.353.i60.i to i32            ; 2 uses
  %i.afz = load i32, ptr %i.bg, align 8, !tbaa !36 ; 2 uses
  %i.aga = icmp ugt i32 %i.afz, %i.afy
  br i1 %i.aga, label %bb.cs, label %._crit_edge.i37.i, !llvm.loop !67

._crit_edge.i37.i:                                ; preds = %.loopexit.i59.i, %bb.cr
  %.0.lcssa.i38.i = phi i16 [ 64, %bb.cr ], [ %.3.i61.i, %.loopexit.i59.i ] ; 2 uses
  %.lcssa.i.i = phi i32 [ %i.zj, %bb.cr ], [ %i.afz, %.loopexit.i59.i ] ; 3 uses
  %i.agb = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not.i39.i = icmp ne i8 %i.agb, 0
  %.pre.i40.i = zext i16 %.0.lcssa.i38.i to i32   ; 3 uses
  %i.agc = icmp samesign ugt i32 %.lcssa.i.i, %.pre.i40.i
  %or.cond.i41.i = select i1 %.not.i39.i, i1 %i.agc, i1 false
  br i1 %or.cond.i41.i, label %bb.da, label %._crit_edge._crit_edge.i42.i

bb.da:                                            ; preds = %._crit_edge.i37.i
  %i.agd = zext nneg i32 %.lcssa.i.i to i64
  %i.age = zext i16 %.0.lcssa.i38.i to i64
  %i.agf = sub nuw nsw i32 %.lcssa.i.i, %.pre.i40.i
  %3 = zext nneg i32 %i.agf to i64
  %4 = shl nuw nsw i64 %3, 2
  %i.agg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %i.agd, i64 noundef %i.age, i64 noundef %4) ; 0 uses
  br label %._crit_edge._crit_edge.i42.i

._crit_edge._crit_edge.i42.i:                     ; preds = %bb.da, %._crit_edge.i37.i
  store i32 %.pre.i40.i, ptr %i.bg, align 8, !tbaa !36
  br label %bb.db

bb.db:                                            ; preds = %bb.db, %._crit_edge._crit_edge.i42.i
  %indvars.iv98.i.i = phi i64 [ 0, %._crit_edge._crit_edge.i42.i ], [ %indvars.iv.next99.i.i.3, %bb.db ] ; 5 uses
  %i.agh = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv98.i.i ; 2 uses
  %i.agi = load i16, ptr %i.agh, align 2, !tbaa !32
  %i.agj = lshr i16 %i.agi, 6
  %i.agk = zext nneg i16 %i.agj to i64
  %i.agl = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.agk
  %i.agm = load i16, ptr %i.agl, align 2, !tbaa !32
  store i16 %i.agm, ptr %i.agh, align 2, !tbaa !32
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv98.i.i
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 2 ; 2 uses
  %i.agp = load i16, ptr %i.ago, align 2, !tbaa !32
  %i.agq = lshr i16 %i.agp, 6
  %i.agr = zext nneg i16 %i.agq to i64
  %i.ags = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.agr
  %i.agt = load i16, ptr %i.ags, align 2, !tbaa !32
  store i16 %i.agt, ptr %i.ago, align 2, !tbaa !32
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv98.i.i
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 4 ; 2 uses
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !32
  %i.agx = lshr i16 %i.agw, 6
  %i.agy = zext nneg i16 %i.agx to i64
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.agy
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !32
  store i16 %i.aha, ptr %i.agv, align 2, !tbaa !32
  %i.ahb = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv98.i.i
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 6 ; 2 uses
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !32
  %i.ahe = lshr i16 %i.ahd, 6
  %i.ahf = zext nneg i16 %i.ahe to i64
  %i.ahg = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.ahf
  %i.ahh = load i16, ptr %i.ahg, align 2, !tbaa !32
  store i16 %i.ahh, ptr %i.ahc, align 2, !tbaa !32
  %indvars.iv.next99.i.i.3 = add nuw nsw i64 %indvars.iv98.i.i, 4 ; 2 uses
  %exitcond101.not.i.i.3 = icmp eq i64 %indvars.iv.next99.i.i.3, 1088
  br i1 %exitcond101.not.i.i.3, label %_ZL13compactStage2P8MBCSData.exit.i, label %bb.db, !llvm.loop !68

_ZL13compactStage2P8MBCSData.exit.i:              ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.dc

bb.dc:                                            ; preds = %_ZL13compactStage2P8MBCSData.exit.i, %_ZL19singleCompactStage2P8MBCSData.exit.i, %.loopexit.i124
  %i.ahi = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not21.i = icmp eq i8 %i.ahi, 0
  br i1 %.not21.i, label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ahj = icmp eq i32 %i.eu, 1
  %.str.29..str.30.i = select i1 %i.ahj, ptr @.str.29, ptr @.str.30
  %i.ahk = load i32, ptr %i.bg, align 8, !tbaa !36
  %i.ahl = zext i32 %i.ahk to i64                 ; 2 uses
  %i.ahm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %.str.29..str.30.i, i64 noundef %i.ahl, i64 noundef %i.ahl) ; 0 uses
  %i.ahn = load i32, ptr %i.bn, align 4, !tbaa !38
  %i.aho = zext i32 %i.ahn to i64
  %i.ahp = sext i32 %i.hj to i64
  %i.ahq = udiv i64 %i.aho, %i.ahp                ; 2 uses
  %i.ahr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.hj, i64 noundef %i.ahq, i64 noundef %i.ahq) ; 0 uses
  br label %_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit

_ZL15MBCSPostprocessP8MBCSDataPK20UConverterStaticData.exit: ; preds = %bb.m, %bb.l, %bb.dd, %bb.dc, %bb.al, %bb.b
  %.0107 = phi i8 [ 0, %bb.b ], [ 0, %bb.al ], [ %.0.lcssa, %bb.dd ], [ %.0.lcssa, %bb.dc ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i8 %.0107
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9MBCSWriteP12NewConverterPK20UConverterStaticDataP14UNewDataMemoryi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) #2 {
bb.a:
  %4 = alloca %struct._MBCSHeader, align 4        ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 454464
  %i.b = load i32, ptr %i.a, align 8, !tbaa !36   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 456523
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18
  %.not = icmp eq i8 %i.d, 0                      ; 4 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456520
  %i.f = load i16, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = zext i16 %i.f to i32
  %i.h = add nuw nsw i32 %i.g, 1                  ; 3 uses
  %i.i = lshr i32 %i.h, 10                        ; 2 uses
  %i.j = and i32 %i.h, 1023
  %.not108 = icmp eq i32 %i.j, 0
  br i1 %.not108, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !32   ; 2 uses
  %.not109 = icmp eq i16 %i.n, 0
  br i1 %.not109, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext i16 %i.n to i32
  %i.p = lshr i32 %i.h, 4
  %i.q = and i32 %i.p, 63
  %i.r = add nuw nsw i32 %i.q, %i.o
  br label %.critedge

bb.e:                                             ; preds = %bb.c, %bb.b
  %.old1.not = icmp eq i32 %i.i, 0
  br i1 %.old1.not, label %.critedge, label %.preheader122

.preheader122:                                    ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 65592
  %i.t = zext i16 %i.f to i64
  %i.u = add nuw nsw i64 %i.t, 1
  %i.v = lshr i64 %i.u, 10
  br label %bb.f

bb.f:                                             ; preds = %.preheader122, %bb.f
  %indvars.iv = phi i64 [ %i.v, %.preheader122 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.x = load i16, ptr %i.w, align 2, !tbaa !32   ; 2 uses
  %i.y = icmp eq i16 %i.x, 0
  %i.z = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.f, label %.critedge.loopexit, !llvm.loop !86

.critedge.loopexit:                               ; preds = %bb.f
  %i.aa = zext i16 %i.x to i32
  %i.ab = add nuw nsw i32 %i.aa, 64
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %.critedge.loopexit, %bb.d
  %.0102 = phi i32 [ %i.r, %bb.d ], [ 64, %bb.e ], [ %i.ab, %.critedge.loopexit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 64, ptr %i.ac, align 4, !tbaa !90
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 36
  store i32 %i.b, ptr %i.ad, align 4, !tbaa !91
  %i.ae = sub i32 %i.b, %.0102                    ; 2 uses
  %i.af = load i8, ptr @VERBOSE, align 1, !tbaa !17
  %.not110 = icmp eq i8 %i.af, 0
  %.pre134 = zext nneg i32 %.0102 to i64          ; 4 uses
  br i1 %.not110, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ag = zext i32 %i.b to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 454468 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !38
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %.pre134, i64 noundef %i.ag, i64 noundef %i.aj) ; 0 uses
  %i.al = shl nuw nsw i64 %.pre134, 2
  %i.am = load i32, ptr %i.ah, align 4, !tbaa !38
  %i.an = zext i32 %i.am to i64
  %i.ao = add nuw nsw i64 %i.al, %i.an
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i64 noundef %i.ao) ; 0 uses
  br label %._crit_edge

._crit_edge:                                      ; preds = %.critedge, %bb.g, %bb.a
  %i.aq = phi i32 [ 0, %bb.a ], [ 64, %bb.g ], [ 64, %.critedge ]
  %.1103 = phi i64 [ 0, %bb.a ], [ %.pre134, %bb.g ], [ %.pre134, %.critedge ] ; 2 uses
  %.0100 = phi i32 [ %i.b, %bb.a ], [ %i.ae, %bb.g ], [ %i.ae, %.critedge ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 79
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.at = and i8 %i.as, 1
  %.not111 = icmp eq i8 %i.at, 0
  %. = select i1 %.not111, i32 64, i32 1088       ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 132120
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !30
  %i.ay = icmp eq i32 %i.ax, 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 65592 ; 2 uses
  %wide.trip.count132 = zext nneg i32 %. to i64   ; 2 uses
  br i1 %i.ay, label %vector.ph141, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge
  %i.ba = lshr exact i32 %., 1
  %i.bb = trunc nuw nsw i32 %i.ba to i16
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bb, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %index ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.bc, align 2, !tbaa !32
  %wide.load139 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !32
  %i.be = add <8 x i16> %wide.load, %broadcast.splat
  %i.bf = add <8 x i16> %wide.load139, %broadcast.splat
  store <8 x i16> %i.be, ptr %i.bc, align 2, !tbaa !32
  store <8 x i16> %i.bf, ptr %i.bd, align 2, !tbaa !32
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %wide.trip.count132
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !87

vector.ph141:                                     ; preds = %._crit_edge
end_hunk_0
