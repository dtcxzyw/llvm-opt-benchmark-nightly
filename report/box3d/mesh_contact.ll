Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/mesh_contact?download=true
inline.NumInlined: 145
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@b3ComputeMeshManifolds:bb.a
  store i32 %.sroa.30.0, ptr %i.acr, align 4, !tbaa !14
  %i.acs = load i32, ptr %i.jd, align 4, !tbaa !135
  %i.act = add nsw i32 %i.acs, 1
  store i32 %i.act, ptr %i.jd, align 4, !tbaa !135
  br label %b3AddVertex.exit1212

b3AddVertex.exit1212:                             ; preds = %.lr.ph.i1204, %.critedge.i1208, %.critedge.thread.i1210
  %i.acu = add nsw i32 %.08301578, 1
  br label %.sink.split

bb.by:                                            ; preds = %._crit_edge
  %i.acv = getelementptr inbounds nuw i8, ptr %i.sp, i64 52
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !161
  %i.acx = sext i32 %.08411576 to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %.1.i958, i64 %i.acx ; 2 uses
  store float %i.acw, ptr %i.acy, align 4, !tbaa !106
  %.sroa.4468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acy, i64 4
  store i32 %.08351577, ptr %.sroa.4468.0..sroa_idx, align 4, !tbaa !14
  %i.acz = add nsw <2 x i32> %i.pw, splat (i32 1)
  br label %.sink.split

bb.bz:                                            ; preds = %b3MakeNormalFromPoints.exit
  %i.ada = getelementptr inbounds nuw i8, ptr %i.sp, i64 52
  %i.adb = load float, ptr %i.ada, align 4, !tbaa !161
  %i.adc = sext i32 %.08411576 to i64
  %i.add = getelementptr inbounds [8 x i8], ptr %.1.i958, i64 %i.adc ; 2 uses
  store float %i.adb, ptr %i.add, align 4, !tbaa !106
  %.sroa.4466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.add, i64 4
  store i32 %.08351577, ptr %.sroa.4466.0..sroa_idx, align 4, !tbaa !14
  %i.ade = add nsw <2 x i32> %i.pw, splat (i32 1)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bz, %b3AddVertex.exit1068, %b3AddVertex.exit1212, %bb.by, %b3AddVertex.exit1140
  %.08301578.sink = phi i32 [ %.08301578, %b3AddVertex.exit1140 ], [ %.08351577, %bb.by ], [ %.08301578, %b3AddVertex.exit1212 ], [ %.08301578, %b3AddVertex.exit1068 ], [ %.08351577, %bb.bz ]
  %.1.i14961500.sink = phi ptr [ %.1.i14961500, %b3AddVertex.exit1140 ], [ %.1.i9561502, %bb.by ], [ %.1.i14961500, %b3AddVertex.exit1212 ], [ %.1.i14961500, %b3AddVertex.exit1068 ], [ %.1.i9561502, %bb.bz ]
  %.4834.ph.ph = phi i32 [ %i.zo, %b3AddVertex.exit1140 ], [ %.08301578, %bb.by ], [ %i.acu, %b3AddVertex.exit1212 ], [ %i.wy, %b3AddVertex.exit1068 ], [ %.08301578, %bb.bz ]
  %i.adf = phi <2 x i32> [ %i.pw, %b3AddVertex.exit1140 ], [ %i.acz, %bb.by ], [ %i.pw, %b3AddVertex.exit1212 ], [ %i.pw, %b3AddVertex.exit1068 ], [ %i.ade, %bb.bz ]
  %i.adg = sext i32 %.08301578.sink to i64
  %i.adh = getelementptr inbounds [8 x i8], ptr %.1.i14961500.sink, i64 %i.adg
  store ptr %i.sp, ptr %i.adh, align 8, !tbaa !163
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split, %bb.ay
  %.2853.ph = phi i32 [ %.08511574, %bb.ay ], [ %i.tj, %.sink.split ]
  %.2850.ph = phi i32 [ %.08481575, %bb.ay ], [ %i.tk, %.sink.split ] ; 2 uses
  %.4834.ph = phi i32 [ %.08301578, %bb.ay ], [ %.4834.ph.ph, %.sink.split ] ; 5 uses
  %i.adi = phi <2 x i32> [ %i.pw, %bb.ay ], [ %i.adf, %.sink.split ] ; 3 uses
  %i.adj = extractelement <2 x i32> %i.adi, i64 1 ; 3 uses
  %i.adk = extractelement <2 x i32> %i.adi, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #7
  %indvars.iv.next1704 = add nuw nsw i64 %indvars.iv1703, 1 ; 2 uses
  %i.adl = icmp samesign uge i64 %indvars.iv.next1704, %i.pj
  %i.adm = add nuw nsw i32 %.2850.ph, 3
  %i.adn = icmp sge i32 %i.adm, %i.nf
  %.not932 = select i1 %i.adl, i1 true, i1 %i.adn
  br i1 %.not932, label %._crit_edge1581, label %bb.ao, !llvm.loop !21

bb.cb:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #7
  br label %._crit_edge1614.thread

._crit_edge1581:                                  ; preds = %bb.ca
  %.pre1777 = load i32, ptr %i.ot, align 8, !tbaa !112
  %i.ado = icmp eq i32 %.pre1777, 5
  br i1 %i.ado, label %bb.cc, label %.preheader1550

.preheader1550:                                   ; preds = %._crit_edge1581
  %i.adp = icmp sgt i32 %i.adj, 0
  br i1 %i.adp, label %.lr.ph1587, label %.loopexit1544

.lr.ph1587:                                       ; preds = %.preheader1550
  %i.adq = load i32, ptr %i.jc, align 8           ; 2 uses
  %.not16.i = icmp sgt i32 %i.adq, 0              ; 3 uses
  %wide.trip.count.i1287 = zext nneg i32 %i.adq to i64 ; 3 uses
  %wide.trip.count1709 = zext nneg i32 %i.adj to i64
  br label %bb.dk

bb.cc:                                            ; preds = %._crit_edge1581
  %i.adr = icmp sgt i32 %i.adk, 1
  br i1 %i.adr, label %bb.cd, label %bb.db

bb.cd:                                            ; preds = %bb.cc
  %i.ads = add nsw i32 %i.adk, -1
  %i.adt = zext nneg i32 %i.ads to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #7
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.cd
  %.0878.ph = phi i64 [ 0, %bb.cd ], [ %.0878.ph.be, %.outer.backedge ] ; 6 uses
  %.0875.ph = phi i64 [ %i.adt, %bb.cd ], [ %.0875.ph.be, %.outer.backedge ]
  %.0861.ph = phi i64 [ 0, %bb.cd ], [ %.0861.ph.be, %.outer.backedge ]
  br label %.outer2092

.outer2092:                                       ; preds = %.outer, %bb.cu
  %.0875.ph2093 = phi i64 [ %.0875.ph, %.outer ], [ %i.aft, %bb.cu ] ; 9 uses
  %.0861.ph2094 = phi i64 [ %.0861.ph, %.outer ], [ %.0861, %bb.cu ]
  %sext942 = shl i64 %.0875.ph2093, 32
  %i.adu = ashr exact i64 %sext942, 29
  %i.adv = getelementptr inbounds i8, ptr %.1.i958, i64 %i.adu ; 8 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.outer2092, %bb.cw
  %.0861 = phi i64 [ %.1884, %bb.cw ], [ %.0861.ph2094, %.outer2092 ] ; 12 uses
  %i.adw = sub i64 %.0875.ph2093, %.0861          ; 2 uses
  %i.adx = add i64 %i.adw, -15
  %i.ady = icmp ult i64 %i.adx, -16
  br i1 %i.ady, label %bb.cf, label %.preheader1547

.preheader1547:                                   ; preds = %bb.ce
  %.08851592 = add i64 %.0861, 1                  ; 2 uses
  %.not1593 = icmp ugt i64 %.08851592, %.0875.ph2093
  br i1 %.not1593, label %._crit_edge1595, label %.preheader1546

bb.cf:                                            ; preds = %bb.ce
  %i.adz = lshr i64 %i.adw, 1
  %i.aea = add i64 %i.adz, %.0861
  %sext939 = shl i64 %i.aea, 32
  %i.aeb = ashr exact i64 %sext939, 29
  %i.aec = getelementptr inbounds i8, ptr %.1.i958, i64 %i.aeb ; 11 uses
  %i.aed = load float, ptr %i.aec, align 4, !tbaa !165 ; 2 uses
  %i.aee = shl i64 %.0861, 32                     ; 2 uses
  %sext940 = add i64 %i.aee, 4294967296
  %i.aef = ashr exact i64 %sext940, 29
  %i.aeg = getelementptr inbounds i8, ptr %.1.i958, i64 %i.aef ; 7 uses
  %i.aeh = load float, ptr %i.aeg, align 4, !tbaa !165
  %i.aei = fcmp olt float %i.aed, %i.aeh
  %i.aej = load float, ptr %i.adv, align 4, !tbaa !165
  %i.aek = fcmp olt float %i.aej, %i.aed          ; 2 uses
  br i1 %i.aei, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.ael = load i64, ptr %i.aeg, align 4          ; 4 uses
  br i1 %i.aek, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.aem = load i64, ptr %i.adv, align 4
  store i64 %i.aem, ptr %i.aeg, align 4
  store i64 %i.ael, ptr %i.adv, align 4
  br label %bb.cn

bb.ci:                                            ; preds = %bb.cg
  %i.aen = load i64, ptr %i.aec, align 4
  store i64 %i.aen, ptr %i.aeg, align 4
  store i64 %i.ael, ptr %i.aec, align 4
  %i.aeo = load float, ptr %i.adv, align 4, !tbaa !165
  %i.aep = trunc i64 %i.ael to i32
  %i.aeq = bitcast i32 %i.aep to float
  %i.aer = fcmp olt float %i.aeo, %i.aeq
  br i1 %i.aer, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  %i.aes = load i64, ptr %i.adv, align 4
  store i64 %i.aes, ptr %i.aec, align 4
  store i64 %i.ael, ptr %i.adv, align 4
  br label %bb.cn

bb.ck:                                            ; preds = %bb.cf
  br i1 %i.aek, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %bb.ck
  %i.aet = load i64, ptr %i.aec, align 4
  %i.aeu = load i64, ptr %i.adv, align 4
  store i64 %i.aeu, ptr %i.aec, align 4
  store i64 %i.aet, ptr %i.adv, align 4
  %i.aev = load float, ptr %i.aec, align 4, !tbaa !165
  %i.aew = load float, ptr %i.aeg, align 4, !tbaa !165
  %i.aex = fcmp olt float %i.aev, %i.aew
  br i1 %i.aex, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.aey = load i64, ptr %i.aeg, align 4
  %i.aez = load i64, ptr %i.aec, align 4
  store i64 %i.aez, ptr %i.aeg, align 4
  store i64 %i.aey, ptr %i.aec, align 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.ci, %bb.cj, %bb.ch, %bb.cl, %bb.cm, %bb.ck
  %i.afa = ashr exact i64 %i.aee, 29
  %i.afb = getelementptr inbounds i8, ptr %.1.i958, i64 %i.afa ; 5 uses
  %i.afc = load i64, ptr %i.afb, align 4
  %i.afd = load i64, ptr %i.aec, align 4
  store i64 %i.afd, ptr %i.afb, align 4
  store i64 %i.afc, ptr %i.aec, align 4
  %i.afe = add i64 %.0861, 1
  br label %bb.co

bb.co:                                            ; preds = %bb.cs, %bb.cn
  %.0883 = phi i64 [ %.0875.ph2093, %bb.cn ], [ %i.afl, %bb.cs ]
  %.0881 = phi i64 [ %i.afe, %bb.cn ], [ %i.afg, %bb.cs ]
  %i.aff = load float, ptr %i.afb, align 4, !tbaa !165 ; 2 uses
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.1882 = phi i64 [ %.0881, %bb.co ], [ %i.afg, %bb.cp ]
  %i.afg = add i64 %.1882, 1                      ; 4 uses
  %sext944 = shl i64 %i.afg, 32
  %i.afh = ashr exact i64 %sext944, 29            ; 2 uses
  %i.afi = getelementptr inbounds i8, ptr %.1.i958, i64 %i.afh
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !165
  %i.afk = fcmp olt float %i.afj, %i.aff
  br i1 %i.afk, label %bb.cp, label %.preheader1545, !llvm.loop !22

.preheader1545:                                   ; preds = %bb.cp
  %24 = getelementptr inbounds i8, ptr %.1.i958, i64 %i.afh ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %.preheader1545, %bb.cq
  %.1884 = phi i64 [ %i.afl, %bb.cq ], [ %.0883, %.preheader1545 ] ; 7 uses
  %i.afl = add i64 %.1884, -1                     ; 4 uses
  %sext945 = shl i64 %i.afl, 32
  %i.afm = ashr exact i64 %sext945, 29            ; 2 uses
  %i.afn = getelementptr inbounds i8, ptr %.1.i958, i64 %i.afm
  %i.afo = load float, ptr %i.afn, align 4, !tbaa !165
  %i.afp = fcmp olt float %i.aff, %i.afo
  br i1 %i.afp, label %bb.cq, label %bb.cr, !llvm.loop !23

bb.cr:                                            ; preds = %bb.cq
  %i.afq = getelementptr inbounds i8, ptr %.1.i958, i64 %i.afm ; 3 uses
  %.not946 = icmp ult i64 %i.afg, %i.afl
  %25 = load i64, ptr %i.afq, align 4             ; 2 uses
  br i1 %.not946, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.afr = load i64, ptr %24, align 4
  store i64 %25, ptr %24, align 4
  store i64 %i.afr, ptr %i.afq, align 4
  br label %bb.co

bb.ct:                                            ; preds = %bb.cr
  %i.afs = load i64, ptr %i.afb, align 4
  store i64 %25, ptr %i.afb, align 4
  store i64 %i.afs, ptr %i.afq, align 4
  %i.aft = add i64 %.1884, -2                     ; 5 uses
  %i.afu = sub i64 %i.aft, %.0861
  %i.afv = sub i64 %.0875.ph2093, %.1884
  %.not947 = icmp ult i64 %i.afu, %i.afv
  br i1 %.not947, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.afw = icmp eq i64 %.1884, %.0875.ph2093
  br i1 %i.afw, label %.outer2092, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.afx = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %.0878.ph ; 2 uses
  store i64 %.0861, ptr %i.afx, align 16, !tbaa !167
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  store i64 %i.aft, ptr %i.afy, align 8, !tbaa !168
  %i.afz = add nuw nsw i64 %.0878.ph, 1
  br label %.outer.backedge

bb.cw:                                            ; preds = %bb.ct
  %i.aga = icmp eq i64 %.0861, %i.aft
  br i1 %i.aga, label %bb.ce, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.agb = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %.0878.ph ; 2 uses
  store i64 %.1884, ptr %i.agb, align 16, !tbaa !167
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  store i64 %.0875.ph2093, ptr %i.agc, align 8, !tbaa !168
  %i.agd = add nuw nsw i64 %.0878.ph, 1
  br label %.outer.backedge

.preheader1546:                                   ; preds = %.preheader1547, %.critedge
  %.08851594 = phi i64 [ %.0885, %.critedge ], [ %.08851592, %.preheader1547 ] ; 3 uses
  %i.age = icmp ugt i64 %.08851594, %.0861
  br i1 %i.age, label %.lr.ph1590, label %.critedge

.lr.ph1590:                                       ; preds = %.preheader1546, %bb.cy
  %.08861589 = phi i64 [ %i.ago, %bb.cy ], [ %.08851594, %.preheader1546 ] ; 2 uses
  %sext = shl i64 %.08861589, 32                  ; 2 uses
  %i.agf = ashr exact i64 %sext, 29
  %i.agg = getelementptr inbounds i8, ptr %.1.i958, i64 %i.agf ; 3 uses
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !165
  %sext938 = add i64 %sext, -4294967296
  %i.agi = ashr exact i64 %sext938, 29
  %i.agj = getelementptr inbounds i8, ptr %.1.i958, i64 %i.agi ; 3 uses
  %i.agk = load float, ptr %i.agj, align 4, !tbaa !165
  %i.agl = fcmp olt float %i.agh, %i.agk
  br i1 %i.agl, label %bb.cy, label %.critedge

bb.cy:                                            ; preds = %.lr.ph1590
  %i.agm = load i64, ptr %i.agg, align 4
  %i.agn = load i64, ptr %i.agj, align 4
  store i64 %i.agn, ptr %i.agg, align 4
  store i64 %i.agm, ptr %i.agj, align 4
  %i.ago = add i64 %.08861589, -1                 ; 2 uses
  %i.agp = icmp ugt i64 %i.ago, %.0861
  br i1 %i.agp, label %.lr.ph1590, label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %bb.cy, %.lr.ph1590, %.preheader1546
  %.0885 = add i64 %.08851594, 1                  ; 2 uses
  %.not = icmp ugt i64 %.0885, %.0875.ph2093
  br i1 %.not, label %._crit_edge1595, label %.preheader1546, !llvm.loop !25

._crit_edge1595:                                  ; preds = %.critedge, %.preheader1547
  %i.agq = icmp eq i64 %.0878.ph, 0
  br i1 %i.agq, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %._crit_edge1595
  %i.agr = add i64 %.0878.ph, -1                  ; 2 uses
  %i.ags = getelementptr inbounds nuw [16 x i8], ptr %23, i64 %i.agr ; 2 uses
  %i.agt = load i64, ptr %i.ags, align 16, !tbaa !167
  %i.agu = getelementptr inbounds nuw i8, ptr %i.ags, i64 8
  %i.agv = load i64, ptr %i.agu, align 8, !tbaa !168
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.cz, %bb.cx, %bb.cv
  %.0878.ph.be = phi i64 [ %i.afz, %bb.cv ], [ %i.agd, %bb.cx ], [ %i.agr, %bb.cz ]
  %.0875.ph.be = phi i64 [ %.0875.ph2093, %bb.cv ], [ %i.aft, %bb.cx ], [ %i.agv, %bb.cz ]
  %.0861.ph.be = phi i64 [ %.1884, %bb.cv ], [ %.0861, %bb.cx ], [ %i.agt, %bb.cz ]
  br label %.outer

bb.da:                                            ; preds = %._crit_edge1595
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #7
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cc
  %i.agw = icmp sgt i32 %i.adk, 0
  br i1 %i.agw, label %.lr.ph1601.preheader, label %.loopexit1544

.lr.ph1601.preheader:                             ; preds = %bb.db
  %wide.trip.count1714 = zext nneg i32 %i.adk to i64
  br label %.lr.ph1601

.lr.ph1601:                                       ; preds = %.lr.ph1601.preheader, %.critedge949
  %indvars.iv1711 = phi i64 [ 0, %.lr.ph1601.preheader ], [ %indvars.iv.next1712, %.critedge949 ] ; 2 uses
  %.61599 = phi i32 [ %.4834.ph, %.lr.ph1601.preheader ], [ %.7, %.critedge949 ] ; 9 uses
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %.1.i958, i64 %indvars.iv1711
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 4
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !169
  %i.aha = sext i32 %i.agz to i64
  %i.ahb = getelementptr inbounds [8 x i8], ptr %.1.i9561502, i64 %i.aha
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !163 ; 5 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 40
  %i.ahe = load i32, ptr %i.ahd, align 8, !tbaa !154 ; 6 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.ahc, i64 44
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !155 ; 6 uses
  %i.ahh = call noundef i32 @llvm.smin.i32(i32 %i.ahe, i32 %i.ahg)
  %i.ahi = sext i32 %i.ahh to i64
  %i.ahj = call noundef i32 @llvm.smax.i32(i32 %i.ahe, i32 %i.ahg)
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = shl nsw i64 %i.ahi, 32
  %i.ahm = or i64 %i.ahl, %i.ahk                  ; 2 uses
  %i.ahn = load i32, ptr %i.jc, align 8, !tbaa !133 ; 6 uses
  %.not24.i1213 = icmp slt i32 %i.ahn, 1
  br i1 %.not24.i1213, label %.critedge.thread.i1222, label %.lr.ph.preheader.i1214

.lr.ph.preheader.i1214:                           ; preds = %.lr.ph1601
  %wide.trip.count.i1215 = zext nneg i32 %i.ahn to i64
  br label %.lr.ph.i1216

bb.dc:                                            ; preds = %.lr.ph.i1216
  %indvars.iv.next.i1218 = add nuw nsw i64 %indvars.iv.i1217, 1 ; 2 uses
  %exitcond.not.i1219 = icmp eq i64 %indvars.iv.next.i1218, %wide.trip.count.i1215
  br i1 %exitcond.not.i1219, label %.critedge.i1220, label %.lr.ph.i1216, !llvm.loop !18

.lr.ph.i1216:                                     ; preds = %bb.dc, %.lr.ph.preheader.i1214
  %indvars.iv.i1217 = phi i64 [ 0, %.lr.ph.preheader.i1214 ], [ %indvars.iv.next.i1218, %bb.dc ] ; 2 uses
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1217
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !157
  %i.ahq = icmp eq i64 %i.ahp, %i.ahm
  br i1 %i.ahq, label %b3AddEdge.exit1224, label %bb.dc

.critedge.i1220:                                  ; preds = %bb.dc
  %.old.i1221 = icmp eq i32 %i.ahn, 64
  br i1 %.old.i1221, label %b3AddEdge.exit1224, label %.critedge.thread.i1222

.critedge.thread.i1222:                           ; preds = %.critedge.i1220, %.lr.ph1601
  %i.ahr = sext i32 %i.ahn to i64
  %i.ahs = getelementptr inbounds [8 x i8], ptr %18, i64 %i.ahr
  store i64 %i.ahm, ptr %i.ahs, align 8, !tbaa !157
  %i.aht = add nsw i32 %i.ahn, 1                  ; 2 uses
  store i32 %i.aht, ptr %i.jc, align 8, !tbaa !133
  br label %b3AddEdge.exit1224

b3AddEdge.exit1224:                               ; preds = %.lr.ph.i1216, %.critedge.i1220, %.critedge.thread.i1222
  %i.ahu = phi i32 [ %i.aht, %.critedge.thread.i1222 ], [ 64, %.critedge.i1220 ], [ %i.ahn, %.lr.ph.i1216 ] ; 6 uses
  %.not23.i1223 = phi i1 [ true, %.critedge.thread.i1222 ], [ true, %.critedge.i1220 ], [ false, %.lr.ph.i1216 ]
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahc, i64 48
  %i.ahw = load i32, ptr %i.ahv, align 8, !tbaa !156 ; 6 uses
  %i.ahx = call noundef i32 @llvm.smin.i32(i32 %i.ahg, i32 %i.ahw)
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = call noundef i32 @llvm.smax.i32(i32 %i.ahg, i32 %i.ahw)
  %i.aia = sext i32 %i.ahz to i64
  %i.aib = shl nsw i64 %i.ahy, 32
  %i.aic = or i64 %i.aib, %i.aia                  ; 2 uses
  %.not24.i1225 = icmp slt i32 %i.ahu, 1
  br i1 %.not24.i1225, label %.critedge.thread.i1234, label %.lr.ph.preheader.i1226

.lr.ph.preheader.i1226:                           ; preds = %b3AddEdge.exit1224
  %wide.trip.count.i1227 = zext nneg i32 %i.ahu to i64
  br label %.lr.ph.i1228

bb.dd:                                            ; preds = %.lr.ph.i1228
  %indvars.iv.next.i1230 = add nuw nsw i64 %indvars.iv.i1229, 1 ; 2 uses
  %exitcond.not.i1231 = icmp eq i64 %indvars.iv.next.i1230, %wide.trip.count.i1227
  br i1 %exitcond.not.i1231, label %.critedge.i1232, label %.lr.ph.i1228, !llvm.loop !18

.lr.ph.i1228:                                     ; preds = %bb.dd, %.lr.ph.preheader.i1226
  %indvars.iv.i1229 = phi i64 [ 0, %.lr.ph.preheader.i1226 ], [ %indvars.iv.next.i1230, %bb.dd ] ; 2 uses
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %18, i64 %indvars.iv.i1229
  %i.aie = load i64, ptr %i.aid, align 8, !tbaa !157
  %i.aif = icmp eq i64 %i.aie, %i.aic
  br i1 %i.aif, label %b3AddEdge.exit1236, label %bb.dd

.critedge.i1232:                                  ; preds = %bb.dd
  %.old.i1233 = icmp eq i32 %i.ahu, 64
  br i1 %.old.i1233, label %b3AddEdge.exit1236, label %.critedge.thread.i1234

.critedge.thread.i1234:                           ; preds = %.critedge.i1232, %b3AddEdge.exit1224
  %i.aig = sext i32 %i.ahu to i64
  %i.aih = getelementptr inbounds [8 x i8], ptr %18, i64 %i.aig
  store i64 %i.aic, ptr %i.aih, align 8, !tbaa !157
  %i.aii = add nsw i32 %i.ahu, 1                  ; 2 uses
  store i32 %i.aii, ptr %i.jc, align 8, !tbaa !133
  br label %b3AddEdge.exit1236

b3AddEdge.exit1236:                               ; preds = %.lr.ph.i1228, %.critedge.i1232, %.critedge.thread.i1234
  %i.aij = phi i32 [ %i.aii, %.critedge.thread.i1234 ], [ 64, %.critedge.i1232 ], [ %i.ahu, %.lr.ph.i1228 ] ; 5 uses
  %.not23.i1235 = phi i1 [ true, %.critedge.thread.i1234 ], [ true, %.critedge.i1232 ], [ false, %.lr.ph.i1228 ]
  %i.aik = call noundef i32 @llvm.smin.i32(i32 %i.ahw, i32 %i.ahe)
  %i.ail = sext i32 %i.aik to i64
  %i.aim = call noundef i32 @llvm.smax.i32(i32 %i.ahw, i32 %i.ahe)
  %i.ain = sext i32 %i.aim to i64
  %i.aio = shl nsw i64 %i.ail, 32
  %i.aip = or i64 %i.aio, %i.ain                  ; 2 uses
  %.not24.i1237 = icmp slt i32 %i.aij, 1
  br i1 %.not24.i1237, label %.critedge.thread.i1246, label %.lr.ph.preheader.i1238

.lr.ph.preheader.i1238:                           ; preds = %b3AddEdge.exit1236
  %wide.trip.count.i1239 = zext nneg i32 %i.aij to i64
end_hunk_0
begin_hunk_1_@b3ComputeMeshManifolds:bb.a
  %i.aua = fmul float %.sroa.020.4.vec.extract.i.i, %.sroa.5.0.i.i.i
  %i.aub = shufflevector <2 x float> %.sroa.018.0.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.auc = extractelement <2 x float> %.sroa.018.0.i.i.i, i64 1
  %i.aud = fmul float %.sroa.2215.0.copyload, %i.auc
  %i.aue = fsub float %i.aua, %i.aud
  %.sroa.03.0.vec.extract.i.i1328 = extractelement <2 x float> %.sroa.018.0.i.i.i, i64 0
  %i.auf = fmul float %.sroa.2215.0.copyload, %.sroa.03.0.vec.extract.i.i1328
  %i.aug = fmul float %.sroa.020.0.vec.extract.i.i, %.sroa.5.0.i.i.i
  %i.auh = fsub float %i.auf, %i.aug
  %i.aui = fmul <2 x float> %.sroa.0214.0.copyload, %i.aub ; 2 uses
  %.sroa.4.0..sroa_idx.i1329 = getelementptr inbounds nuw i8, ptr %i.ass, i64 8
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i1329, align 4, !tbaa !106
  %.sroa.032.0.copyload.i = load <2 x float>, ptr %i.ass, align 4
  %wide.trip.count.i1330 = zext nneg i32 %i.asu to i64 ; 6 uses
  %i.auj = shufflevector <2 x float> %i.aui, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.auk = fsub <2 x float> %i.aui, %i.auj
  %i.aul = insertelement <2 x float> %i.auk, float %.sroa.5.0.i.i.i, i64 1
  %i.aum = insertelement <2 x float> %.sroa.018.0.i.i.i, float %i.aue, i64 0
  %i.aun = insertelement <2 x float> %.sroa.018.0.i.i.i, float %i.auh, i64 1
  br label %bb.fp

._crit_edge.i1336:                                ; preds = %bb.fp
  %i.auo = call float @b3GetLengthUnitsPerMeter() #7
  %i.aup = fmul float %i.auo, 5.000000e-03
  %i.auq = fmul float %i.aup, 2.500000e-01        ; 2 uses
  %i.aur = fmul float %i.auq, %i.auq              ; 7 uses
  %i.aus = call float @b3GetLengthUnitsPerMeter() #7
  %i.aut = fmul float %i.aus, 5.000000e-03        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.sroa.6.i.i)
  br label %bb.fa

.loopexit.i.i:                                    ; preds = %b3IsBetterCullCandidate.exit.thread291.i.i, %bb.fa
  %.1206.lcssa.i.i = phi float [ %.0205312.i.i, %bb.fa ], [ %.2207.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %.1202.lcssa.i.i = phi float [ %.0201313.i.i, %bb.fa ], [ %.2203.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ]
  %.1199.lcssa.i.i = phi i32 [ %.0198314.i.i, %bb.fa ], [ %.2200.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %.1196.lcssa.i.i = phi i32 [ %.0195315.i.i, %bb.fa ], [ %.2197.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond342.not.i.i = icmp eq i64 %indvars.iv.next339.i.i, %wide.trip.count.i1330
  br i1 %exitcond342.not.i.i, label %bb.ez, label %bb.fa, !llvm.loop !34

bb.ez:                                            ; preds = %.loopexit.i.i
  %i.auu = fcmp olt float %.1206.lcssa.i.i, %i.aur ; 2 uses
  br i1 %i.auu, label %.preheader.preheader.i.i, label %bb.ff

.preheader.preheader.i.i:                         ; preds = %bb.ez
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !182 ; 2 uses
  %i.auv = add nsw i64 %wide.trip.count.i1330, -1 ; 3 uses
  %xtraiter2131 = and i64 %i.auv, 1
  %i.auw = icmp eq i32 %i.asu, 2
  br i1 %i.auw, label %.preheader.i.i.epil.preheader, label %.preheader.preheader.i.i.new

.preheader.preheader.i.i.new:                     ; preds = %.preheader.preheader.i.i
  %unroll_iter2135 = and i64 %i.auv, -2
  br label %.preheader.i.i

bb.fa:                                            ; preds = %.loopexit.i.i, %._crit_edge.i1336
  %indvars.iv338.i.i = phi i64 [ 0, %._crit_edge.i1336 ], [ %indvars.iv.next339.i.i, %.loopexit.i.i ] ; 3 uses
  %indvars.iv.i.i = phi i64 [ 1, %._crit_edge.i1336 ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 2 uses
  %.0195315.i.i = phi i32 [ -1, %._crit_edge.i1336 ], [ %.1196.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0198314.i.i = phi i32 [ -1, %._crit_edge.i1336 ], [ %.1199.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0201313.i.i = phi float [ f0x7F7FFFFF, %._crit_edge.i1336 ], [ %.1202.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %.0205312.i.i = phi float [ 0.000000e+00, %._crit_edge.i1336 ], [ %.1206.lcssa.i.i, %.loopexit.i.i ] ; 2 uses
  %indvars.iv.next339.i.i = add nuw nsw i64 %indvars.iv338.i.i, 1 ; 3 uses
  %i.aux = icmp samesign ult i64 %indvars.iv.next339.i.i, %wide.trip.count.i1330
  br i1 %i.aux, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %bb.fa
  %i.auy = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv338.i.i ; 2 uses
  %.sroa.071.0.copyload.i.i = load <2 x float>, ptr %i.auy, align 4
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 8
  %i.ava = load float, ptr %i.auz, align 4, !tbaa !182
  %i.avb = trunc nuw nsw i64 %indvars.iv338.i.i to i32
  br label %bb.fb

bb.fb:                                            ; preds = %b3IsBetterCullCandidate.exit.thread291.i.i, %.lr.ph.i.i
  %indvars.iv335.i.i = phi i64 [ %indvars.iv.i.i, %.lr.ph.i.i ], [ %indvars.iv.next336.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 3 uses
  %.1196307.i.i = phi i32 [ %.0195315.i.i, %.lr.ph.i.i ], [ %.2197.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ]
  %.1199306.i.i = phi i32 [ %.0198314.i.i, %.lr.ph.i.i ], [ %.2200.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ]
  %.1202305.i.i = phi float [ %.0201313.i.i, %.lr.ph.i.i ], [ %.2203.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 2 uses
  %.1206304.i.i = phi float [ %.0205312.i.i, %.lr.ph.i.i ], [ %.2207.i.i, %b3IsBetterCullCandidate.exit.thread291.i.i ] ; 3 uses
  %i.avc = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv335.i.i ; 2 uses
  %i.avd = load <2 x float>, ptr %i.avc, align 4
  %i.ave = fsub <2 x float> %i.avd, %.sroa.071.0.copyload.i.i ; 2 uses
  %i.avf = fmul <2 x float> %i.ave, %i.ave
  %i.avg = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.avf) ; 3 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avc, i64 8
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !182
  %i.avj = fadd float %i.ava, %i.avi              ; 2 uses
  %i.avk = fadd float %i.aur, %.1206304.i.i
  %i.avl = fcmp ogt float %i.avg, %i.avk
  br i1 %i.avl, label %b3IsBetterCullCandidate.exit.thread.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.avm = fsub float %.1206304.i.i, %i.aur
  %i.avn = fcmp uge float %i.avg, %i.avm
  %i.avo = fsub float %.1202305.i.i, %i.aut
  %i.avp = fcmp olt float %i.avj, %i.avo
  %or.cond.i76.i = select i1 %i.avn, i1 %i.avp, i1 false
  br i1 %or.cond.i76.i, label %b3IsBetterCullCandidate.exit.thread.i.i, label %b3IsBetterCullCandidate.exit.thread291.i.i

b3IsBetterCullCandidate.exit.thread.i.i:          ; preds = %bb.fc, %bb.fb
  %i.avq = trunc nuw nsw i64 %indvars.iv335.i.i to i32
  br label %b3IsBetterCullCandidate.exit.thread291.i.i

b3IsBetterCullCandidate.exit.thread291.i.i:       ; preds = %b3IsBetterCullCandidate.exit.thread.i.i, %bb.fc
  %.2207.i.i = phi float [ %i.avg, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1206304.i.i, %bb.fc ] ; 2 uses
  %.2203.i.i = phi float [ %i.avj, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1202305.i.i, %bb.fc ] ; 2 uses
  %.2200.i.i = phi i32 [ %i.avb, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1199306.i.i, %bb.fc ] ; 2 uses
  %.2197.i.i = phi i32 [ %i.avq, %b3IsBetterCullCandidate.exit.thread.i.i ], [ %.1196307.i.i, %bb.fc ] ; 2 uses
  %indvars.iv.next336.i.i = add nuw nsw i64 %indvars.iv335.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next336.i.i, %wide.trip.count.i1330
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %bb.fb, !llvm.loop !35

.unr-lcssa:                                       ; preds = %.preheader.i.i
  %lcmp.mod2132.not = icmp eq i64 %xtraiter2131, 0
  br i1 %lcmp.mod2132.not, label %bb.fd, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader.preheader.i.i
  %.epil.init = phi float [ %.pre.i.i, %.preheader.preheader.i.i ], [ %i.awi, %.unr-lcssa ]
  %indvars.iv353.i.i.epil.init = phi i64 [ 1, %.preheader.preheader.i.i ], [ %indvars.iv.next354.i.i.1, %.unr-lcssa ] ; 2 uses
  %.0191333.i.i.epil.init = phi i32 [ 0, %.preheader.preheader.i.i ], [ %spec.select.i.i.1, %.unr-lcssa ]
  %lcmp.mod2134 = trunc i64 %i.auv to i1
  call void @llvm.assume(i1 %lcmp.mod2134)
  %i.avr = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv353.i.i.epil.init
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avr, i64 8
  %i.avt = load float, ptr %i.avs, align 4, !tbaa !182
  %i.avu = fcmp olt float %i.avt, %.epil.init
  %i.avv = trunc nuw nsw i64 %indvars.iv353.i.i.epil.init to i32
  %spec.select.i.i.epil = select i1 %i.avu, i32 %i.avv, i32 %.0191333.i.i.epil.init
  br label %bb.fd

bb.fd:                                            ; preds = %.unr-lcssa, %.preheader.i.i.epil.preheader
  %spec.select.i.i.lcssa = phi i32 [ %spec.select.i.i.1, %.unr-lcssa ], [ %spec.select.i.i.epil, %.preheader.i.i.epil.preheader ] ; 2 uses
  %.not.i.i = icmp eq i32 %spec.select.i.i.lcssa, 0
  br i1 %.not.i.i, label %b3CullPoints.exit.i, label %bb.fe

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.preheader.i.i.new
  %i.avw = phi float [ %.pre.i.i, %.preheader.preheader.i.i.new ], [ %i.awi, %.preheader.i.i ] ; 2 uses
  %indvars.iv353.i.i = phi i64 [ 1, %.preheader.preheader.i.i.new ], [ %indvars.iv.next354.i.i.1, %.preheader.i.i ] ; 4 uses
  %.0191333.i.i = phi i32 [ 0, %.preheader.preheader.i.i.new ], [ %spec.select.i.i.1, %.preheader.i.i ]
  %niter2136 = phi i64 [ 0, %.preheader.preheader.i.i.new ], [ %niter2136.next.1, %.preheader.i.i ]
  %i.avx = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv353.i.i
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 8
  %i.avz = load float, ptr %i.avy, align 4, !tbaa !182 ; 2 uses
  %i.awa = fcmp olt float %i.avz, %i.avw          ; 2 uses
  %i.awb = trunc nuw nsw i64 %indvars.iv353.i.i to i32
  %spec.select.i.i = select i1 %i.awa, i32 %i.awb, i32 %.0191333.i.i
  %indvars.iv.next354.i.i = add nuw nsw i64 %indvars.iv353.i.i, 1 ; 2 uses
  %i.awc = select i1 %i.awa, float %i.avz, float %i.avw ; 2 uses
  %i.awd = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv.next354.i.i
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 8
  %i.awf = load float, ptr %i.awe, align 4, !tbaa !182 ; 2 uses
  %i.awg = fcmp olt float %i.awf, %i.awc          ; 2 uses
  %i.awh = trunc nuw nsw i64 %indvars.iv.next354.i.i to i32
  %spec.select.i.i.1 = select i1 %i.awg, i32 %i.awh, i32 %spec.select.i.i ; 3 uses
  %indvars.iv.next354.i.i.1 = add nuw nsw i64 %indvars.iv353.i.i, 2 ; 2 uses
  %i.awi = select i1 %i.awg, float %i.awf, float %i.awc ; 2 uses
  %niter2136.next.1 = add nuw i64 %niter2136, 2   ; 2 uses
  %niter2136.ncmp.1 = icmp eq i64 %niter2136.next.1, %unroll_iter2135
  br i1 %niter2136.ncmp.1, label %.unr-lcssa, label %.preheader.i.i, !llvm.loop !36

bb.fe:                                            ; preds = %bb.fd
  %i.awj = zext nneg i32 %spec.select.i.i.lcssa to i64
  %i.awk = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %i.awj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.1.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.awk, i64 16, i1 false), !tbaa.struct !183
  br label %b3CullPoints.exit.i

bb.ff:                                            ; preds = %bb.ez
  %i.awl = sext i32 %.1199.lcssa.i.i to i64
  %i.awm = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.awl ; 3 uses
  %.sroa.0101.0.copyload.i.i = load <2 x float>, ptr %i.awm, align 4 ; 10 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.awn = load i64, ptr %.sroa.9.0..sroa_idx.i.i, align 4 ; 5 uses
  %i.awo = sext i32 %.1196.lcssa.i.i to i64
  %i.awp = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.awo ; 3 uses
  %.sroa.9112.16.copyload.i.i = load <2 x float>, ptr %i.awp, align 4 ; 9 uses
  %.sroa.16.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.awp, i64 8
  %i.awq = load i64, ptr %.sroa.16.16..sroa_idx.i.i, align 4 ; 5 uses
  %i.awr = getelementptr [16 x i8], ptr %.1.i.i, i64 %wide.trip.count.i1330
  %i.aws = getelementptr i8, ptr %i.awr, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.awp, ptr noundef nonnull align 4 dereferenceable(16) %i.aws, i64 16, i1 false), !tbaa.struct !183
  %i.awt = add nsw i32 %i.asu, -2                 ; 3 uses
  %i.awu = zext nneg i32 %i.awt to i64            ; 2 uses
  %i.awv = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %i.awu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.awm, ptr noundef nonnull align 4 dereferenceable(16) %i.awv, i64 16, i1 false), !tbaa.struct !183
  %i.aww = icmp eq i32 %i.awt, 0
  br i1 %i.aww, label %bb.fg, label %.lr.ph322.i.preheader.i

bb.fg:                                            ; preds = %bb.ff
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4
  %.sroa.9.0..sroa_idx107.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awn, ptr %.sroa.9.0..sroa_idx107.i.i, align 4
  %i.awx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.awx, align 4
  %.sroa.16.16..sroa_idx118.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awq, ptr %.sroa.16.16..sroa_idx118.i.i, align 4
  br label %b3CullPoints.exit.i

.lr.ph322.i.preheader.i:                          ; preds = %bb.ff
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.9112.16.copyload.i.i, i64 0
  %i.awy = fsub <2 x float> %.sroa.9112.16.copyload.i.i, %.sroa.0101.0.copyload.i.i ; 2 uses
  %i.awz = shufflevector <2 x float> %i.awy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph322.i.i

._crit_edge.i.i:                                  ; preds = %b3IsBetterCullCandidate.exit229.thread294.i.i
  %i.axa = fcmp olt float %.1185.i.i, 0.000000e+00
  %i.axb = icmp eq i32 %.1187.i.i, -1
  br i1 %i.axb, label %._crit_edge.thread.i.i, label %bb.fi

.lr.ph322.i.i:                                    ; preds = %b3IsBetterCullCandidate.exit229.thread294.i.i, %.lr.ph322.i.preheader.i
  %indvars.iv343.i.i = phi i64 [ %indvars.iv.next344.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ 0, %.lr.ph322.i.preheader.i ] ; 3 uses
  %.0184320.i.i = phi float [ %.1185.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ 0.000000e+00, %.lr.ph322.i.preheader.i ]
  %.0186319.i.i = phi i32 [ %.1187.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ -1, %.lr.ph322.i.preheader.i ]
  %.3204318.i.i = phi float [ %.4.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ f0x7F7FFFFF, %.lr.ph322.i.preheader.i ] ; 2 uses
  %.3208317.i.i = phi float [ %.4209.i.i, %b3IsBetterCullCandidate.exit229.thread294.i.i ], [ 0.000000e+00, %.lr.ph322.i.preheader.i ] ; 3 uses
  %i.axc = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv343.i.i ; 2 uses
  %.sroa.030.0.copyload.i.i = load <2 x float>, ptr %i.axc, align 4
  %i.axd = fsub <2 x float> %.sroa.030.0.copyload.i.i, %.sroa.0101.0.copyload.i.i
  %i.axe = fmul <2 x float> %i.awz, %i.axd        ; 2 uses
  %shift2028 = shufflevector <2 x float> %i.axe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2029 = fsub <2 x float> %shift2028, %i.axe
  %i.axf = extractelement <2 x float> %foldExtExtBinop2029, i64 0 ; 4 uses
  %i.axg = fcmp olt float %i.axf, 0.000000e+00
  %i.axh = fneg float %i.axf
  %i.axi = select i1 %i.axg, float %i.axh, float %i.axf ; 3 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axc, i64 8
  %i.axk = load float, ptr %i.axj, align 4, !tbaa !182 ; 2 uses
  %i.axl = fadd float %i.aur, %.3208317.i.i
  %i.axm = fcmp ogt float %i.axi, %i.axl
  br i1 %i.axm, label %b3IsBetterCullCandidate.exit229.thread.i.i, label %bb.fh

bb.fh:                                            ; preds = %.lr.ph322.i.i
  %i.axn = fsub float %.3208317.i.i, %i.aur
  %i.axo = fcmp uge float %i.axi, %i.axn
  %i.axp = fsub float %.3204318.i.i, %i.aut
  %i.axq = fcmp olt float %i.axk, %i.axp
  %or.cond301.i.i = select i1 %i.axo, i1 %i.axq, i1 false
  br i1 %or.cond301.i.i, label %b3IsBetterCullCandidate.exit229.thread.i.i, label %b3IsBetterCullCandidate.exit229.thread294.i.i

b3IsBetterCullCandidate.exit229.thread.i.i:       ; preds = %bb.fh, %.lr.ph322.i.i
  %i.axr = trunc nuw nsw i64 %indvars.iv343.i.i to i32
  br label %b3IsBetterCullCandidate.exit229.thread294.i.i

b3IsBetterCullCandidate.exit229.thread294.i.i:    ; preds = %b3IsBetterCullCandidate.exit229.thread.i.i, %bb.fh
  %.4209.i.i = phi float [ %i.axi, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.3208317.i.i, %bb.fh ]
  %.4.i.i = phi float [ %i.axk, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.3204318.i.i, %bb.fh ]
  %.1187.i.i = phi i32 [ %i.axr, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.0186319.i.i, %bb.fh ] ; 3 uses
  %.1185.i.i = phi float [ %i.axf, %b3IsBetterCullCandidate.exit229.thread.i.i ], [ %.0184320.i.i, %bb.fh ] ; 2 uses
  %indvars.iv.next344.i.i = add nuw nsw i64 %indvars.iv343.i.i, 1 ; 2 uses
  %exitcond347.not.i.i = icmp eq i64 %indvars.iv.next344.i.i, %i.awu
  br i1 %exitcond347.not.i.i, label %._crit_edge.i.i, label %.lr.ph322.i.i, !llvm.loop !37

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4
  %.sroa.9.0..sroa_idx108.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awn, ptr %.sroa.9.0..sroa_idx108.i.i, align 4
  %i.axs = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.axs, align 4
  %.sroa.16.16..sroa_idx119.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awq, ptr %.sroa.16.16..sroa_idx119.i.i, align 4
  br label %b3CullPoints.exit.i

bb.fi:                                            ; preds = %._crit_edge.i.i
  %i.axt = sext i32 %.1187.i.i to i64
  %i.axu = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.axt ; 3 uses
  %.sroa.16123.32.copyload.i.i = load <2 x float>, ptr %i.axu, align 4 ; 7 uses
  %.sroa.21.32..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axv = load i64, ptr %.sroa.21.32..sroa_idx.i.i, align 4 ; 3 uses
  %i.axw = icmp eq i32 %i.awt, 1
  br i1 %i.axw, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4
  %.sroa.9.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awn, ptr %.sroa.9.0..sroa_idx109.i.i, align 4
  %i.axx = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.axx, align 4
  %.sroa.16.16..sroa_idx120.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awq, ptr %.sroa.16.16..sroa_idx120.i.i, align 4
  %i.axy = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <2 x float> %.sroa.16123.32.copyload.i.i, ptr %i.axy, align 4
  %.sroa.21.32..sroa_idx127.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.axv, ptr %.sroa.21.32..sroa_idx127.i.i, align 4
  br label %b3CullPoints.exit.i

bb.fk:                                            ; preds = %bb.fi
  %i.axz = add nsw i32 %i.asu, -3
  %i.aya = zext i32 %i.axz to i64                 ; 2 uses
  %i.ayb = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %i.aya
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.axu, ptr noundef nonnull align 4 dereferenceable(16) %i.ayb, i64 16, i1 false), !tbaa.struct !183
  br i1 %i.axa, label %bb.fl, label %._crit_edge358.i.i

._crit_edge358.i.i:                               ; preds = %bb.fk
  %.sroa.01.0.vec.extract.i230.i.i = extractelement <2 x float> %.sroa.16123.32.copyload.i.i, i64 0
  br label %.lr.ph330.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.ayc = fsub <2 x float> %.sroa.16123.32.copyload.i.i, %.sroa.0101.0.copyload.i.i
  br label %.lr.ph330.i.i

.lr.ph330.i.i:                                    ; preds = %bb.fl, %._crit_edge358.i.i
  %.sroa.01.0.vec.extract.i236.pre-phi.i.i = phi float [ %.sroa.01.0.vec.extract.i230.i.i, %._crit_edge358.i.i ], [ %.sroa.01.0.vec.extract.i.i.i, %bb.fl ]
  %.sroa.043.0.i.i = phi <2 x float> [ %i.awy, %._crit_edge358.i.i ], [ %i.ayc, %bb.fl ]
  %i.ayd = phi <2 x float> [ %.sroa.16123.32.copyload.i.i, %._crit_edge358.i.i ], [ %.sroa.9112.16.copyload.i.i, %bb.fl ] ; 2 uses
  %i.aye = phi <2 x float> [ %.sroa.9112.16.copyload.i.i, %._crit_edge358.i.i ], [ %.sroa.16123.32.copyload.i.i, %bb.fl ] ; 2 uses
  %i.ayf = fsub <2 x float> %i.ayd, %i.aye
  %i.ayg = insertelement <2 x float> %i.ayd, float %.sroa.01.0.vec.extract.i236.pre-phi.i.i, i64 0 ; 2 uses
  %i.ayh = fsub <2 x float> %.sroa.0101.0.copyload.i.i, %i.ayg
  %i.ayi = shufflevector <2 x float> %i.ayh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ayj = shufflevector <2 x float> %.sroa.043.0.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.fm

._crit_edge331.i.i:                               ; preds = %b3IsBetterCullCandidate.exit279.thread297.i.i
  %i.ayk = icmp eq i32 %.3189.i.i, -1
  br i1 %i.ayk, label %._crit_edge331.thread.i.i, label %bb.fo

bb.fm:                                            ; preds = %b3IsBetterCullCandidate.exit279.thread297.i.i, %.lr.ph330.i.i
  %indvars.iv348.i.i = phi i64 [ 0, %.lr.ph330.i.i ], [ %indvars.iv.next349.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ] ; 3 uses
  %.2188327.i.i = phi i32 [ -1, %.lr.ph330.i.i ], [ %.3189.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ]
  %.5326.i.i = phi float [ f0x7F7FFFFF, %.lr.ph330.i.i ], [ %.6.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ] ; 2 uses
  %.5210325.i.i = phi float [ 0.000000e+00, %.lr.ph330.i.i ], [ %.6211.i.i, %b3IsBetterCullCandidate.exit279.thread297.i.i ] ; 3 uses
  %i.ayl = getelementptr inbounds nuw [16 x i8], ptr %.1.i.i, i64 %indvars.iv348.i.i ; 2 uses
  %.sroa.07.0.copyload.i.i = load <2 x float>, ptr %i.ayl, align 4 ; 3 uses
  %i.aym = fsub <2 x float> %.sroa.07.0.copyload.i.i, %.sroa.0101.0.copyload.i.i
  %i.ayn = fmul <2 x float> %i.ayj, %i.aym        ; 2 uses
  %shift2031 = shufflevector <2 x float> %i.ayn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2032 = fsub <2 x float> %i.ayn, %shift2031
  %i.ayo = extractelement <2 x float> %foldExtExtBinop2032, i64 0 ; 2 uses
  %i.ayp = fsub <2 x float> %.sroa.07.0.copyload.i.i, %i.aye
  %i.ayq = shufflevector <2 x float> %i.ayp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ayr = fmul <2 x float> %i.ayf, %i.ayq        ; 2 uses
  %shift2034 = shufflevector <2 x float> %i.ayr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2035 = fsub <2 x float> %shift2034, %i.ayr
  %i.ays = extractelement <2 x float> %foldExtExtBinop2035, i64 0 ; 2 uses
  %i.ayt = fsub <2 x float> %.sroa.07.0.copyload.i.i, %i.ayg
  %i.ayu = fmul <2 x float> %i.ayi, %i.ayt        ; 2 uses
  %shift2037 = shufflevector <2 x float> %i.ayu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2038 = fsub <2 x float> %i.ayu, %shift2037
  %i.ayv = extractelement <2 x float> %foldExtExtBinop2038, i64 0 ; 2 uses
  %i.ayw = fcmp ogt float %i.ays, %i.ayv
  %i.ayx = select i1 %i.ayw, float %i.ays, float %i.ayv ; 2 uses
  %i.ayy = fcmp ogt float %i.ayo, %i.ayx
  %i.ayz = select i1 %i.ayy, float %i.ayo, float %i.ayx ; 3 uses
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayl, i64 8
  %i.azb = load float, ptr %i.aza, align 4, !tbaa !182 ; 2 uses
  %i.azc = fadd float %i.aur, %.5210325.i.i
  %i.azd = fcmp ogt float %i.ayz, %i.azc
  br i1 %i.azd, label %b3IsBetterCullCandidate.exit279.thread.i.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.aze = fsub float %.5210325.i.i, %i.aur
  %i.azf = fcmp uge float %i.ayz, %i.aze
  %i.azg = fsub float %.5326.i.i, %i.aut
  %i.azh = fcmp olt float %i.azb, %i.azg
  %or.cond303.i.i = select i1 %i.azf, i1 %i.azh, i1 false
  br i1 %or.cond303.i.i, label %b3IsBetterCullCandidate.exit279.thread.i.i, label %b3IsBetterCullCandidate.exit279.thread297.i.i

b3IsBetterCullCandidate.exit279.thread.i.i:       ; preds = %bb.fn, %bb.fm
  %i.azi = trunc nuw nsw i64 %indvars.iv348.i.i to i32
  br label %b3IsBetterCullCandidate.exit279.thread297.i.i

b3IsBetterCullCandidate.exit279.thread297.i.i:    ; preds = %b3IsBetterCullCandidate.exit279.thread.i.i, %bb.fn
  %.6211.i.i = phi float [ %i.ayz, %b3IsBetterCullCandidate.exit279.thread.i.i ], [ %.5210325.i.i, %bb.fn ]
  %.6.i.i = phi float [ %i.azb, %b3IsBetterCullCandidate.exit279.thread.i.i ], [ %.5326.i.i, %bb.fn ]
  %.3189.i.i = phi i32 [ %i.azi, %b3IsBetterCullCandidate.exit279.thread.i.i ], [ %.2188327.i.i, %bb.fn ] ; 3 uses
  %indvars.iv.next349.i.i = add nuw nsw i64 %indvars.iv348.i.i, 1 ; 2 uses
  %exitcond352.not.i.i = icmp eq i64 %indvars.iv.next349.i.i, %i.aya
  br i1 %exitcond352.not.i.i, label %._crit_edge331.i.i, label %bb.fm, !llvm.loop !38

._crit_edge331.thread.i.i:                        ; preds = %._crit_edge331.i.i
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4
  %.sroa.9.0..sroa_idx110.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awn, ptr %.sroa.9.0..sroa_idx110.i.i, align 4
  %i.azj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.azj, align 4
  %.sroa.16.16..sroa_idx121.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awq, ptr %.sroa.16.16..sroa_idx121.i.i, align 4
  %i.azk = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <2 x float> %.sroa.16123.32.copyload.i.i, ptr %i.azk, align 4
  %.sroa.21.32..sroa_idx128.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.axv, ptr %.sroa.21.32..sroa_idx128.i.i, align 4
  br label %b3CullPoints.exit.i

bb.fo:                                            ; preds = %._crit_edge331.i.i
  %i.azl = sext i32 %.3189.i.i to i64
  %i.azm = getelementptr inbounds [16 x i8], ptr %.1.i.i, i64 %i.azl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.sroa.6.i.i, ptr noundef nonnull align 4 dereferenceable(16) %i.azm, i64 16, i1 false), !tbaa.struct !183
  store <2 x float> %.sroa.0101.0.copyload.i.i, ptr %.1.i.i, align 4
  %.sroa.9.0..sroa_idx111.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  store i64 %i.awn, ptr %.sroa.9.0..sroa_idx111.i.i, align 4
  %i.azn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16
  store <2 x float> %.sroa.9112.16.copyload.i.i, ptr %i.azn, align 4
  %.sroa.16.16..sroa_idx122.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  store i64 %i.awq, ptr %.sroa.16.16..sroa_idx122.i.i, align 4
  %i.azo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 32
  store <2 x float> %.sroa.16123.32.copyload.i.i, ptr %i.azo, align 4
  %.sroa.21.32..sroa_idx129.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 40
  store i64 %i.axv, ptr %.sroa.21.32..sroa_idx129.i.i, align 4
  %i.azp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.azp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21.sroa.6.i.i, i64 16, i1 false), !tbaa.struct !183
  br label %b3CullPoints.exit.i

b3CullPoints.exit.i:                              ; preds = %bb.fo, %._crit_edge331.thread.i.i, %bb.fj, %._crit_edge.thread.i.i, %bb.fg, %bb.fe, %bb.fd
  %exitcond92.not.i.1 = phi i1 [ false, %bb.fd ], [ true, %bb.fg ], [ false, %bb.fe ], [ true, %._crit_edge.thread.i.i ], [ false, %bb.fj ], [ false, %._crit_edge331.thread.i.i ], [ false, %bb.fo ]
  %exitcond92.not.i.2 = phi i1 [ false, %bb.fd ], [ false, %bb.fg ], [ false, %bb.fe ], [ false, %._crit_edge.thread.i.i ], [ true, %bb.fj ], [ true, %._crit_edge331.thread.i.i ], [ false, %bb.fo ]
end_hunk_1
