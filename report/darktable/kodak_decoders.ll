Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/kodak_decoders?download=true
inline.NumInlined: 109
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN6LibRaw19kodak_radc_load_rawEv:bb.a
  %i.abj = ashr exact i32 %i.abi, 20
  %i.abk = trunc nsw i32 %i.abj to i16
  %i.abl = getelementptr inbounds [2 x i8], ptr %i.oz, i64 %indvars.iv.next439 ; 2 uses
  %i.abm = load <2 x i16>, ptr %i.abl, align 2, !tbaa !79
  %i.abn = insertelement <2 x i16> poison, i16 %i.abk, i64 0
  %i.abo = shufflevector <2 x i16> %i.abn, <2 x i16> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.abp = add <2 x i16> %i.abm, %i.abo
  store <2 x i16> %i.abp, ptr %i.abl, align 2, !tbaa !79
  %i.abq = getelementptr inbounds [2 x i8], ptr %i.oy, i64 %indvars.iv.next439 ; 2 uses
  %i.abr = load <2 x i16>, ptr %i.abq, align 2, !tbaa !79
  %i.abs = add <2 x i16> %i.abr, %i.abo
  store <2 x i16> %i.abs, ptr %i.abq, align 2, !tbaa !79
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit285.split
  %i.abt = add nuw nsw i32 %.0243351, 1           ; 2 uses
  %exitcond451.not = icmp eq i32 %i.abt, 8
  br i1 %exitcond451.not, label %.critedge, label %.split352, !llvm.loop !118

.critedge.loopexit.split.loop.exit534:            ; preds = %.split352.us
  %i.abu = trunc nsw i64 %indvars.iv457 to i32
  br label %.critedge

.critedge.loopexit522.split.loop.exit532:         ; preds = %.split352
  %i.abv = trunc nsw i64 %indvars.iv438 to i32
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %.loopexit.us, %.critedge.loopexit522.split.loop.exit532, %.critedge.loopexit.split.loop.exit534
  %.us-phi353 = phi i32 [ %i.xo, %.loopexit.us ], [ %i.abu, %.critedge.loopexit.split.loop.exit534 ], [ %i.abv, %.critedge.loopexit522.split.loop.exit532 ], [ %i.xo, %.loopexit ] ; 2 uses
  %i.abw = icmp eq i32 %i.xm, 9
  br i1 %i.abw, label %.preheader294, label %.loopexit298, !llvm.loop !119

.loopexit298.sink.split:                          ; preds = %.loopexit298.loopexit389, %.split.us.us.1, %.split.1
  %.sink537 = phi i64 [ %i.vw, %.split.1 ], [ %i.sn, %.split.us.us.1 ], [ %i.ut, %.loopexit298.loopexit389 ]
  %.sink = phi i16 [ %i.xg, %.split.1 ], [ %i.ui, %.split.us.us.1 ], [ %i.vd, %.loopexit298.loopexit389 ]
  %i.abx = getelementptr inbounds nuw [2 x i8], ptr %i.oy, i64 %.sink537
  store i16 %.sink, ptr %i.abx, align 2, !tbaa !79
  br label %.loopexit298

.loopexit298:                                     ; preds = %.critedge, %.loopexit298.sink.split
  %.3248 = phi i32 [ %i.rg, %.loopexit298.sink.split ], [ %.us-phi353, %.critedge ] ; 2 uses
  %i.aby = icmp sgt i32 %.3248, 0
  br i1 %i.aby, label %.lr.ph359, label %.preheader303, !llvm.loop !120

.lr.ph361:                                        ; preds = %.preheader293.preheader
  %i.abz = load ptr, ptr %i.lk, align 8, !tbaa !82
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph361, %bb.aa
  %indvars.iv471 = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next472, %bb.aa ] ; 3 uses
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %i.oz, i64 %indvars.iv471
  %i.acb = load i16, ptr %i.aca, align 2, !tbaa !79
  %i.acc = sext i16 %i.acb to i32
  %i.acd = shl nsw i32 %i.acc, 4
  %i.ace = sdiv i32 %i.acd, %i.mm
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ace, i32 0)
  %i.acf = trunc i32 %spec.store.select to i16
  %i.acg = load i16, ptr %i.h, align 2, !tbaa !75
  %i.ach = zext i16 %i.acg to i64
  %i.aci = mul nsw i64 %i.pa, %i.ach
  %i.acj = shl nuw nsw i64 %indvars.iv471, 1
  %i.ack = sub nsw i64 %i.acj, %indvars.iv489
  %i.acl = getelementptr [2 x i8], ptr %i.abz, i64 %i.ack
  %i.acm = getelementptr i8, ptr %i.acl, i64 4
  %i.acn = getelementptr [2 x i8], ptr %i.acm, i64 %i.aci
  store i16 %i.acf, ptr %i.acn, align 2, !tbaa !79
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %i.aco = load i16, ptr %i.e, align 2, !tbaa !74 ; 3 uses
  %i.acp = lshr i16 %i.aco, 1
  %i.acq = zext nneg i16 %i.acp to i64
  %i.acr = icmp samesign ult i64 %indvars.iv.next472, %i.acq
  br i1 %i.acr, label %bb.aa, label %._crit_edge362.split, !llvm.loop !117

._crit_edge362.split:                             ; preds = %bb.aa
  %.not382.1 = icmp ult i16 %i.aco, 2
  br i1 %.not382.1, label %.split367.us, label %.lr.ph361.1

.lr.ph361.1:                                      ; preds = %._crit_edge362.split
  %i.acs = load ptr, ptr %i.lk, align 8, !tbaa !82
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph361.1
  %indvars.iv471.1 = phi i64 [ 0, %.lr.ph361.1 ], [ %indvars.iv.next472.1, %bb.ab ] ; 3 uses
  %i.act = getelementptr inbounds nuw [2 x i8], ptr %i.pg, i64 %indvars.iv471.1
  %i.acu = load i16, ptr %i.act, align 2, !tbaa !79
  %i.acv = sext i16 %i.acu to i32
  %i.acw = shl nsw i32 %i.acv, 4
  %i.acx = sdiv i32 %i.acw, %i.mm
  %spec.store.select.1 = tail call i32 @llvm.smax.i32(i32 %i.acx, i32 0)
  %i.acy = trunc i32 %spec.store.select.1 to i16
  %i.acz = load i16, ptr %i.h, align 2, !tbaa !75
  %i.ada = zext i16 %i.acz to i64
  %i.adb = mul nuw nsw i64 %i.ph, %i.ada
  %i.adc = shl nuw nsw i64 %indvars.iv471.1, 1
  %i.add = sub nsw i64 %i.adc, %indvars.iv489
  %i.ade = getelementptr [2 x i8], ptr %i.acs, i64 %i.add
  %i.adf = getelementptr i8, ptr %i.ade, i64 4
  %i.adg = getelementptr [2 x i8], ptr %i.adf, i64 %i.adb
  store i16 %i.acy, ptr %i.adg, align 2, !tbaa !79
  %indvars.iv.next472.1 = add nuw nsw i64 %indvars.iv471.1, 1 ; 2 uses
  %i.adh = load i16, ptr %i.e, align 2, !tbaa !74 ; 2 uses
  %i.adi = lshr i16 %i.adh, 1
  %i.adj = zext nneg i16 %i.adi to i64
  %i.adk = icmp samesign ult i64 %indvars.iv.next472.1, %i.adj
  br i1 %i.adk, label %bb.ab, label %.split367.us, !llvm.loop !117

.split367.us:                                     ; preds = %bb.ab, %bb.j, %.preheader293.us.preheader, %.preheader293.preheader, %._crit_edge362.split, %._crit_edge362.split.us.us
  %i.adl = phi i16 [ %i.pr, %.preheader293.us.preheader ], [ %i.pr, %.preheader293.preheader ], [ %i.qe, %._crit_edge362.split.us.us ], [ %i.qw, %bb.j ], [ %i.aco, %._crit_edge362.split ], [ %i.adh, %bb.ab ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(770) %.sroa.sel.idx.sroa.sel.idx.sroa.sel, ptr noundef nonnull align 4 dereferenceable(770) %i.oy, i64 %i.pb, i1 false)
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1
  %i.adm = or i64 %indvars.iv485, %indvars.iv489
  %.not263.not = icmp eq i64 %i.adm, 0
  br i1 %.not263.not, label %bb.h, label %bb.ac, !llvm.loop !121

bb.ac:                                            ; preds = %.split367.us
  %indvars.iv.next490 = add nuw nsw i64 %indvars.iv489, 1 ; 2 uses
  %exitcond492.not = icmp eq i64 %indvars.iv.next490, 3
  br i1 %exitcond492.not, label %.preheader307, label %iter.check690, !llvm.loop !122

.lr.ph372.peel.next:                              ; preds = %.preheader307
  %i.adn = zext i16 %i.adl to i32
  br label %.lr.ph372

.lr.ph372:                                        ; preds = %.lr.ph372.peel.next, %bb.ae
  %i.ado = phi i16 [ %i.aeu, %bb.ae ], [ %i.adl, %.lr.ph372.peel.next ]
  %i.adp = phi i32 [ %i.aev, %bb.ae ], [ %i.adn, %.lr.ph372.peel.next ]
  %.5229371 = phi i32 [ %.pre-phi, %bb.ae ], [ 1, %.lr.ph372.peel.next ] ; 5 uses
  %i.adq = and i32 %.5229371, 1
  %.not = icmp eq i32 %i.adq, 0
  br i1 %.not, label %.lr.ph372._crit_edge, label %bb.ad

.lr.ph372._crit_edge:                             ; preds = %.lr.ph372
  %.pre507 = or disjoint i32 %.5229371, 1
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph372
  %i.adr = add nsw i32 %.5229371, -1              ; 2 uses
  %i.ads = add nuw nsw i32 %.5229371, 1           ; 3 uses
  %i.adt = icmp samesign ult i32 %i.ads, %i.adp
  %i.adu = select i1 %i.adt, i32 %i.ads, i32 %i.adr
  %i.adv = load ptr, ptr %i.lk, align 8, !tbaa !82 ; 3 uses
  %i.adw = load i16, ptr %i.h, align 2, !tbaa !75
  %i.adx = zext i16 %i.adw to i32
  %i.ady = mul nuw nsw i32 %i.md, %i.adx          ; 3 uses
  %i.adz = add nuw nsw i32 %i.ady, %.5229371
  %i.aea = zext nneg i32 %i.adz to i64
  %i.aeb = getelementptr inbounds nuw [2 x i8], ptr %i.adv, i64 %i.aea ; 2 uses
  %i.aec = load i16, ptr %i.aeb, align 2, !tbaa !79
  %i.aed = zext i16 %i.aec to i32
  %i.aee = shl nuw nsw i32 %i.aed, 1
  %i.aef = add nsw i32 %i.aee, -4096
  %i.aeg = add nsw i32 %i.ady, %i.adr
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = getelementptr inbounds [2 x i8], ptr %i.adv, i64 %i.aeh
  %i.aej = load i16, ptr %i.aei, align 2, !tbaa !79
  %i.aek = zext i16 %i.aej to i32
  %i.ael = add nsw i32 %i.ady, %i.adu
  %i.aem = sext i32 %i.ael to i64
  %i.aen = getelementptr inbounds [2 x i8], ptr %i.adv, i64 %i.aem
  %i.aeo = load i16, ptr %i.aen, align 2, !tbaa !79
  %i.aep = zext i16 %i.aeo to i32
  %i.aeq = add nuw nsw i32 %i.aep, %i.aek
  %i.aer = lshr i32 %i.aeq, 1
  %i.aes = add nsw i32 %i.aef, %i.aer
  %spec.store.select8 = tail call i32 @llvm.smax.i32(i32 %i.aes, i32 0)
  %i.aet = trunc i32 %spec.store.select8 to i16
  store i16 %i.aet, ptr %i.aeb, align 2, !tbaa !79
  %.pre505 = load i16, ptr %i.e, align 2, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph372._crit_edge, %bb.ad
  %.pre-phi = phi i32 [ %.pre507, %.lr.ph372._crit_edge ], [ %i.ads, %bb.ad ] ; 2 uses
  %i.aeu = phi i16 [ %i.ado, %.lr.ph372._crit_edge ], [ %.pre505, %bb.ad ] ; 4 uses
  %i.aev = zext i16 %i.aeu to i32                 ; 2 uses
  %i.aew = icmp samesign ult i32 %.pre-phi, %i.aev
  br i1 %i.aew, label %.lr.ph372, label %._crit_edge373, !llvm.loop !123

._crit_edge373.fold.split:                        ; preds = %.preheader307
  br label %._crit_edge373

._crit_edge373:                                   ; preds = %bb.ae, %.preheader307, %._crit_edge373.fold.split
  %i.aex = phi i16 [ %i.adl, %.preheader307 ], [ %i.adl, %._crit_edge373.fold.split ], [ %i.aeu, %bb.ae ]
  %i.aey = phi i16 [ 0, %.preheader307 ], [ %i.adl, %._crit_edge373.fold.split ], [ %i.aeu, %bb.ae ] ; 2 uses
  %i.aez = or disjoint i32 %i.md, 1               ; 2 uses
  %.not385.1 = icmp eq i16 %i.aey, 0
  br i1 %.not385.1, label %._crit_edge373.1, label %.lr.ph372.preheader.1

.lr.ph372.preheader.1:                            ; preds = %._crit_edge373
  %.not518.1 = icmp eq i16 %i.aey, 1
  %i.afa = select i1 %.not518.1, i32 -1, i32 1
  %i.afb = load ptr, ptr %i.lk, align 8, !tbaa !82 ; 3 uses
  %i.afc = load i16, ptr %i.h, align 2, !tbaa !75
  %i.afd = zext i16 %i.afc to i32
  %i.afe = mul nuw nsw i32 %i.aez, %i.afd         ; 3 uses
  %i.aff = zext nneg i32 %i.afe to i64
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.afb, i64 %i.aff ; 2 uses
  %i.afh = load i16, ptr %i.afg, align 2, !tbaa !79
  %i.afi = zext i16 %i.afh to i32
  %i.afj = shl nuw nsw i32 %i.afi, 1
  %i.afk = add nsw i32 %i.afj, -4096
  %1 = zext nneg i32 %i.afe to i64
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %i.afb, i64 %1
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 2
  %i.afn = load i16, ptr %i.afm, align 2, !tbaa !79
  %i.afo = zext i16 %i.afn to i32
  %i.afp = add nsw i32 %i.afe, %i.afa
  %i.afq = sext i32 %i.afp to i64
  %i.afr = getelementptr inbounds [2 x i8], ptr %i.afb, i64 %i.afq
  %i.afs = load i16, ptr %i.afr, align 2, !tbaa !79
  %i.aft = zext i16 %i.afs to i32
  %i.afu = add nuw nsw i32 %i.aft, %i.afo
  %i.afv = lshr i32 %i.afu, 1
  %i.afw = add nsw i32 %i.afk, %i.afv
  %spec.store.select8.peel.1 = tail call i32 @llvm.smax.i32(i32 %i.afw, i32 0)
  %i.afx = trunc i32 %spec.store.select8.peel.1 to i16
  store i16 %i.afx, ptr %i.afg, align 2, !tbaa !79
  %.pre504.1 = load i16, ptr %i.e, align 2, !tbaa !74 ; 5 uses
  %i.afy = icmp ugt i16 %.pre504.1, 1
  br i1 %i.afy, label %.lr.ph372.peel.next.1, label %._crit_edge373.1

.lr.ph372.peel.next.1:                            ; preds = %.lr.ph372.preheader.1
  %i.afz = zext i16 %.pre504.1 to i32
  br label %.lr.ph372.1

.lr.ph372.1:                                      ; preds = %bb.ag, %.lr.ph372.peel.next.1
  %i.aga = phi i16 [ %i.ahg, %bb.ag ], [ %.pre504.1, %.lr.ph372.peel.next.1 ]
  %i.agb = phi i32 [ %i.ahh, %bb.ag ], [ %i.afz, %.lr.ph372.peel.next.1 ]
  %.5229371.1 = phi i32 [ %.pre-phi.1, %bb.ag ], [ 1, %.lr.ph372.peel.next.1 ] ; 5 uses
  %i.agc = and i32 %.5229371.1, 1
  %.not.1.not = icmp eq i32 %i.agc, 0
  br i1 %.not.1.not, label %bb.af, label %.lr.ph372._crit_edge.1

bb.af:                                            ; preds = %.lr.ph372.1
  %i.agd = add nsw i32 %.5229371.1, -1            ; 2 uses
  %i.age = or disjoint i32 %.5229371.1, 1         ; 3 uses
  %i.agf = icmp samesign ult i32 %i.age, %i.agb
  %i.agg = select i1 %i.agf, i32 %i.age, i32 %i.agd
  %i.agh = load ptr, ptr %i.lk, align 8, !tbaa !82 ; 3 uses
  %i.agi = load i16, ptr %i.h, align 2, !tbaa !75
  %i.agj = zext i16 %i.agi to i32
  %i.agk = mul nuw nsw i32 %i.aez, %i.agj         ; 3 uses
  %i.agl = add nuw nsw i32 %i.agk, %.5229371.1
  %i.agm = zext nneg i32 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %i.agh, i64 %i.agm ; 2 uses
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !79
  %i.agp = zext i16 %i.ago to i32
  %i.agq = shl nuw nsw i32 %i.agp, 1
  %i.agr = add nsw i32 %i.agq, -4096
  %i.ags = add nsw i32 %i.agk, %i.agd
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [2 x i8], ptr %i.agh, i64 %i.agt
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !79
  %i.agw = zext i16 %i.agv to i32
  %i.agx = add nsw i32 %i.agk, %i.agg
  %i.agy = sext i32 %i.agx to i64
  %i.agz = getelementptr inbounds [2 x i8], ptr %i.agh, i64 %i.agy
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !79
  %i.ahb = zext i16 %i.aha to i32
  %i.ahc = add nuw nsw i32 %i.ahb, %i.agw
  %i.ahd = lshr i32 %i.ahc, 1
  %i.ahe = add nsw i32 %i.agr, %i.ahd
  %spec.store.select8.1 = tail call i32 @llvm.smax.i32(i32 %i.ahe, i32 0)
  %i.ahf = trunc i32 %spec.store.select8.1 to i16
  store i16 %i.ahf, ptr %i.agn, align 2, !tbaa !79
  %.pre505.1 = load i16, ptr %i.e, align 2, !tbaa !74
  br label %bb.ag

.lr.ph372._crit_edge.1:                           ; preds = %.lr.ph372.1
  %.pre507.1 = add nuw nsw i32 %.5229371.1, 1
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph372._crit_edge.1, %bb.af
  %.pre-phi.1 = phi i32 [ %.pre507.1, %.lr.ph372._crit_edge.1 ], [ %i.age, %bb.af ] ; 2 uses
  %i.ahg = phi i16 [ %i.aga, %.lr.ph372._crit_edge.1 ], [ %.pre505.1, %bb.af ] ; 4 uses
  %i.ahh = zext i16 %i.ahg to i32                 ; 2 uses
  %i.ahi = icmp samesign ult i32 %.pre-phi.1, %i.ahh
  br i1 %i.ahi, label %.lr.ph372.1, label %._crit_edge373.1, !llvm.loop !123

._crit_edge373.1:                                 ; preds = %bb.ag, %.lr.ph372.preheader.1, %._crit_edge373
  %i.ahj = phi i16 [ %i.aex, %._crit_edge373 ], [ %.pre504.1, %.lr.ph372.preheader.1 ], [ %i.ahg, %bb.ag ] ; 6 uses
  %i.ahk = phi i16 [ 0, %._crit_edge373 ], [ %.pre504.1, %.lr.ph372.preheader.1 ], [ %i.ahg, %bb.ag ]
  %i.ahl = or disjoint i32 %i.md, 2
  %.not385.2 = icmp eq i16 %i.ahk, 0
  br i1 %.not385.2, label %._crit_edge373.2, label %.lr.ph372.preheader.2

.lr.ph372.preheader.2:                            ; preds = %._crit_edge373.1
  %i.ahm = icmp ugt i16 %i.ahj, 1
  br i1 %i.ahm, label %.lr.ph372.peel.next.2, label %._crit_edge373.2

.lr.ph372.peel.next.2:                            ; preds = %.lr.ph372.preheader.2
  %i.ahn = zext i16 %i.ahj to i32
  br label %.lr.ph372.2

.lr.ph372.2:                                      ; preds = %bb.ai, %.lr.ph372.peel.next.2
  %i.aho = phi i16 [ %i.aiu, %bb.ai ], [ %i.ahj, %.lr.ph372.peel.next.2 ]
  %i.ahp = phi i32 [ %i.aiv, %bb.ai ], [ %i.ahn, %.lr.ph372.peel.next.2 ]
  %.5229371.2 = phi i32 [ %.pre-phi.2, %bb.ai ], [ 1, %.lr.ph372.peel.next.2 ] ; 5 uses
  %i.ahq = and i32 %.5229371.2, 1
  %.not.2 = icmp eq i32 %i.ahq, 0
  br i1 %.not.2, label %.lr.ph372._crit_edge.2, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph372.2
  %i.ahr = add nsw i32 %.5229371.2, -1            ; 2 uses
  %i.ahs = add nuw nsw i32 %.5229371.2, 1         ; 3 uses
  %i.aht = icmp samesign ult i32 %i.ahs, %i.ahp
  %i.ahu = select i1 %i.aht, i32 %i.ahs, i32 %i.ahr
  %i.ahv = load ptr, ptr %i.lk, align 8, !tbaa !82 ; 3 uses
  %i.ahw = load i16, ptr %i.h, align 2, !tbaa !75
  %i.ahx = zext i16 %i.ahw to i32
  %i.ahy = mul nuw nsw i32 %i.ahl, %i.ahx         ; 3 uses
  %i.ahz = add nuw nsw i32 %i.ahy, %.5229371.2
  %i.aia = zext nneg i32 %i.ahz to i64
  %i.aib = getelementptr inbounds nuw [2 x i8], ptr %i.ahv, i64 %i.aia ; 2 uses
  %i.aic = load i16, ptr %i.aib, align 2, !tbaa !79
  %i.aid = zext i16 %i.aic to i32
  %i.aie = shl nuw nsw i32 %i.aid, 1
  %i.aif = add nsw i32 %i.aie, -4096
  %i.aig = add nsw i32 %i.ahy, %i.ahr
  %i.aih = sext i32 %i.aig to i64
  %i.aii = getelementptr inbounds [2 x i8], ptr %i.ahv, i64 %i.aih
  %i.aij = load i16, ptr %i.aii, align 2, !tbaa !79
  %i.aik = zext i16 %i.aij to i32
  %i.ail = add nsw i32 %i.ahy, %i.ahu
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr inbounds [2 x i8], ptr %i.ahv, i64 %i.aim
  %i.aio = load i16, ptr %i.ain, align 2, !tbaa !79
  %i.aip = zext i16 %i.aio to i32
  %i.aiq = add nuw nsw i32 %i.aip, %i.aik
  %i.air = lshr i32 %i.aiq, 1
  %i.ais = add nsw i32 %i.aif, %i.air
  %spec.store.select8.2 = tail call i32 @llvm.smax.i32(i32 %i.ais, i32 0)
  %i.ait = trunc i32 %spec.store.select8.2 to i16
  store i16 %i.ait, ptr %i.aib, align 2, !tbaa !79
  %.pre505.2 = load i16, ptr %i.e, align 2, !tbaa !74
  br label %bb.ai

.lr.ph372._crit_edge.2:                           ; preds = %.lr.ph372.2
  %.pre507.2 = or disjoint i32 %.5229371.2, 1
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph372._crit_edge.2, %bb.ah
  %.pre-phi.2 = phi i32 [ %.pre507.2, %.lr.ph372._crit_edge.2 ], [ %i.ahs, %bb.ah ] ; 2 uses
  %i.aiu = phi i16 [ %i.aho, %.lr.ph372._crit_edge.2 ], [ %.pre505.2, %bb.ah ] ; 4 uses
  %i.aiv = zext i16 %i.aiu to i32                 ; 2 uses
  %i.aiw = icmp samesign ult i32 %.pre-phi.2, %i.aiv
  br i1 %i.aiw, label %.lr.ph372.2, label %._crit_edge373.2, !llvm.loop !123

._crit_edge373.2:                                 ; preds = %bb.ai, %.lr.ph372.preheader.2, %._crit_edge373.1
  %i.aix = phi i16 [ %i.ahj, %._crit_edge373.1 ], [ %i.ahj, %.lr.ph372.preheader.2 ], [ %i.aiu, %bb.ai ]
  %i.aiy = phi i16 [ 0, %._crit_edge373.1 ], [ %i.ahj, %.lr.ph372.preheader.2 ], [ %i.aiu, %bb.ai ] ; 2 uses
  %i.aiz = or disjoint i32 %i.md, 3               ; 2 uses
  %.not385.3 = icmp eq i16 %i.aiy, 0
  br i1 %.not385.3, label %._crit_edge373.3, label %.lr.ph372.preheader.3

.lr.ph372.preheader.3:                            ; preds = %._crit_edge373.2
  %.not518.3 = icmp eq i16 %i.aiy, 1
  %i.aja = select i1 %.not518.3, i32 -1, i32 1
  %i.ajb = load ptr, ptr %i.lk, align 8, !tbaa !82 ; 3 uses
  %i.ajc = load i16, ptr %i.h, align 2, !tbaa !75
  %i.ajd = zext i16 %i.ajc to i32
  %i.aje = mul nuw nsw i32 %i.aiz, %i.ajd         ; 3 uses
  %i.ajf = zext nneg i32 %i.aje to i64
  %i.ajg = getelementptr inbounds nuw [2 x i8], ptr %i.ajb, i64 %i.ajf ; 2 uses
  %i.ajh = load i16, ptr %i.ajg, align 2, !tbaa !79
  %i.aji = zext i16 %i.ajh to i32
  %i.ajj = shl nuw nsw i32 %i.aji, 1
  %i.ajk = add nsw i32 %i.ajj, -4096
  %2 = zext nneg i32 %i.aje to i64
  %i.ajl = getelementptr inbounds nuw [2 x i8], ptr %i.ajb, i64 %2
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 2
  %i.ajn = load i16, ptr %i.ajm, align 2, !tbaa !79
  %i.ajo = zext i16 %i.ajn to i32
  %i.ajp = add nsw i32 %i.aje, %i.aja
  %i.ajq = sext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds [2 x i8], ptr %i.ajb, i64 %i.ajq
  %i.ajs = load i16, ptr %i.ajr, align 2, !tbaa !79
  %i.ajt = zext i16 %i.ajs to i32
  %i.aju = add nuw nsw i32 %i.ajt, %i.ajo
  %i.ajv = lshr i32 %i.aju, 1
  %i.ajw = add nsw i32 %i.ajk, %i.ajv
  %spec.store.select8.peel.3 = tail call i32 @llvm.smax.i32(i32 %i.ajw, i32 0)
  %i.ajx = trunc i32 %spec.store.select8.peel.3 to i16
  store i16 %i.ajx, ptr %i.ajg, align 2, !tbaa !79
  %.pre504.3 = load i16, ptr %i.e, align 2, !tbaa !74 ; 4 uses
  %i.ajy = icmp ugt i16 %.pre504.3, 1
  br i1 %i.ajy, label %.lr.ph372.peel.next.3, label %._crit_edge373.3

.lr.ph372.peel.next.3:                            ; preds = %.lr.ph372.preheader.3
  %i.ajz = zext i16 %.pre504.3 to i32
  br label %.lr.ph372.3

.lr.ph372.3:                                      ; preds = %bb.ak, %.lr.ph372.peel.next.3
  %i.aka = phi i16 [ %i.alg, %bb.ak ], [ %.pre504.3, %.lr.ph372.peel.next.3 ]
  %i.akb = phi i32 [ %i.alh, %bb.ak ], [ %i.ajz, %.lr.ph372.peel.next.3 ]
  %.5229371.3 = phi i32 [ %.pre-phi.3, %bb.ak ], [ 1, %.lr.ph372.peel.next.3 ] ; 5 uses
  %i.akc = and i32 %.5229371.3, 1
  %.not.3.not = icmp eq i32 %i.akc, 0
  br i1 %.not.3.not, label %bb.aj, label %.lr.ph372._crit_edge.3

bb.aj:                                            ; preds = %.lr.ph372.3
  %i.akd = add nsw i32 %.5229371.3, -1            ; 2 uses
  %i.ake = or disjoint i32 %.5229371.3, 1         ; 3 uses
  %i.akf = icmp samesign ult i32 %i.ake, %i.akb
  %i.akg = select i1 %i.akf, i32 %i.ake, i32 %i.akd
  %i.akh = load ptr, ptr %i.lk, align 8, !tbaa !82 ; 3 uses
  %i.aki = load i16, ptr %i.h, align 2, !tbaa !75
  %i.akj = zext i16 %i.aki to i32
  %i.akk = mul nuw nsw i32 %i.aiz, %i.akj         ; 3 uses
  %i.akl = add nuw nsw i32 %i.akk, %.5229371.3
  %i.akm = zext nneg i32 %i.akl to i64
  %i.akn = getelementptr inbounds nuw [2 x i8], ptr %i.akh, i64 %i.akm ; 2 uses
  %i.ako = load i16, ptr %i.akn, align 2, !tbaa !79
  %i.akp = zext i16 %i.ako to i32
  %i.akq = shl nuw nsw i32 %i.akp, 1
  %i.akr = add nsw i32 %i.akq, -4096
  %i.aks = add nsw i32 %i.akk, %i.akd
  %i.akt = sext i32 %i.aks to i64
  %i.aku = getelementptr inbounds [2 x i8], ptr %i.akh, i64 %i.akt
  %i.akv = load i16, ptr %i.aku, align 2, !tbaa !79
  %i.akw = zext i16 %i.akv to i32
  %i.akx = add nsw i32 %i.akk, %i.akg
  %i.aky = sext i32 %i.akx to i64
  %i.akz = getelementptr inbounds [2 x i8], ptr %i.akh, i64 %i.aky
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !79
  %i.alb = zext i16 %i.ala to i32
  %i.alc = add nuw nsw i32 %i.alb, %i.akw
  %i.ald = lshr i32 %i.alc, 1
  %i.ale = add nsw i32 %i.akr, %i.ald
  %spec.store.select8.3 = tail call i32 @llvm.smax.i32(i32 %i.ale, i32 0)
  %i.alf = trunc i32 %spec.store.select8.3 to i16
  store i16 %i.alf, ptr %i.akn, align 2, !tbaa !79
  %.pre505.3 = load i16, ptr %i.e, align 2, !tbaa !74
  br label %bb.ak

.lr.ph372._crit_edge.3:                           ; preds = %.lr.ph372.3
  %.pre507.3 = add nuw nsw i32 %.5229371.3, 1
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph372._crit_edge.3, %bb.aj
  %.pre-phi.3 = phi i32 [ %.pre507.3, %.lr.ph372._crit_edge.3 ], [ %i.ake, %bb.aj ] ; 2 uses
  %i.alg = phi i16 [ %i.aka, %.lr.ph372._crit_edge.3 ], [ %.pre505.3, %bb.aj ] ; 3 uses
  %i.alh = zext i16 %i.alg to i32                 ; 2 uses
  %i.ali = icmp samesign ult i32 %.pre-phi.3, %i.alh
  br i1 %i.ali, label %.lr.ph372.3, label %._crit_edge373.3, !llvm.loop !123

._crit_edge373.3:                                 ; preds = %bb.ak, %.lr.ph372.preheader.3, %._crit_edge373.2
  %i.alj = phi i16 [ %i.aix, %._crit_edge373.2 ], [ %.pre504.3, %.lr.ph372.preheader.3 ], [ %i.alg, %bb.ak ]
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 4 ; 2 uses
  %i.alk = load i16, ptr %i.k, align 4, !tbaa !76 ; 2 uses
  %i.all = zext i16 %i.alk to i64
  %i.alm = icmp samesign ult i64 %indvars.iv.next498, %i.all
  br i1 %i.alm, label %bb.e, label %.preheader.loopexit, !llvm.loop !124

bb.al:                                            ; preds = %.lr.ph378, %bb.al
  %indvars.iv500 = phi i64 [ 0, %.lr.ph378 ], [ %indvars.iv.next501, %bb.al ] ; 2 uses
  %i.aln = getelementptr inbounds nuw [2 x i8], ptr %i.lr, i64 %indvars.iv500 ; 2 uses
  %i.alo = load i16, ptr %i.aln, align 2, !tbaa !79
  %i.alp = zext i16 %i.alo to i64
  %i.alq = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.alp
  %i.alr = load i16, ptr %i.alq, align 2, !tbaa !79
  store i16 %i.alr, ptr %i.aln, align 2, !tbaa !79
  %indvars.iv.next501 = add nuw nsw i64 %indvars.iv500, 1 ; 2 uses
  %i.als = load i16, ptr %i.k, align 4, !tbaa !76
  %i.alt = zext i16 %i.als to i64
  %i.alu = load i16, ptr %i.e, align 2, !tbaa !74
  %i.alv = zext i16 %i.alu to i64
  %i.alw = mul nuw nsw i64 %i.alv, %i.alt
  %i.alx = icmp samesign ult i64 %indvars.iv.next501, %i.alw
  br i1 %i.alx, label %bb.al, label %_ZNSt6vectorItSaItEED2Ev.exit276, !llvm.loop !125

_ZNSt6vectorItSaItEED2Ev.exit276:                 ; preds = %bb.al, %.preheader
  %i.aly = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 16383, ptr %i.aly, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 9728) #15
  ret void

bb.am:                                            ; preds = %bb.g
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef i32 @_ZN6LibRaw10getbithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19kodak_jpeg_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.jpeg_decompress_struct, align 8 ; 17 uses
  %2 = alloca %struct.jpeg_error_mgr, align 8     ; 5 uses
  %i.a = alloca [1 x ptr], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381800 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !133
  %i.e = icmp slt i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 3, ptr %i.f, align 16, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.g = call ptr @jpeg_std_error(ptr noundef nonnull %2)
  store ptr %i.g, ptr %1, align 8, !tbaa !154
  store ptr @_ZL15jpegErrorExit_kP18jpeg_common_struct, ptr %2, align 8, !tbaa !156
  %i.h = load i64, ptr %i.c, align 8, !tbaa !133  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5564
  %i.j = load i32, ptr %i.i, align 4, !tbaa !157
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 20
  %i.m = icmp sgt i64 %i.h, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = call ptr @__cxa_allocate_exception(i64 4) #12 ; 2 uses
  store i32 10, ptr %i.n, align 16, !tbaa !78
  call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.h, i64 noundef 1) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !74   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.e
  %i.r = zext i16 %i.q to i64
  %i.s = mul nuw nsw i64 %i.r, 3                  ; 3 uses
  %i.t = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #14 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.s, i1 false)
  %i.v = ptrtoint ptr %i.u to i64
  br label %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit:            ; preds = %.noexc, %bb.e
  %.sroa.12.0 = phi i64 [ %i.v, %.noexc ], [ 0, %bb.e ] ; 2 uses
  %.sroa.043.0 = phi ptr [ %i.t, %.noexc ], [ null, %bb.e ] ; 7 uses
  invoke void @jpeg_CreateDecompress(ptr noundef nonnull %1, i32 noundef 80, i64 noundef 656)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKhRKS0_.exit
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.x = load i64, ptr %i.c, align 8, !tbaa !133
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.o, i64 noundef %i.x, i64 noundef 1)
end_hunk_0
