Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_strfmt_num?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lj_strfmt_wfnum:bb.a
  %scevgep1084 = getelementptr i8, ptr %.14525, i64 %i.abn
  %i.abo = add i32 %i.gh, %.11
  %i.abp = add i32 %i.abo, %i.zz
  %i.abq = add i32 %i.abp, %i.aah
  %i.abr = add i32 %i.abq, %i.aak
  %i.abs = add i32 %i.abr, %i.aaf
  %i.abt = add i32 %i.abs, 3
  br label %.loopexit880

.loopexit880:                                     ; preds = %.lr.ph970.preheader, %.preheader879, %lj_buf_more.exit626
  %.16527 = phi ptr [ %.14525, %lj_buf_more.exit626 ], [ %.14525, %.preheader879 ], [ %scevgep1084, %.lr.ph970.preheader ] ; 3 uses
  %.10499 = phi i32 [ %i.g, %lj_buf_more.exit626 ], [ %i.abd, %.preheader879 ], [ %i.abt, %.lr.ph970.preheader ] ; 4 uses
  br i1 %.not573, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.loopexit880
  %i.abu = getelementptr inbounds nuw i8, ptr %.16527, i64 1
  store i8 %.0437, ptr %.16527, align 1, !tbaa !16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %.loopexit880
  %.17528 = phi ptr [ %i.abu, %bb.cp ], [ %.16527, %.loopexit880 ] ; 4 uses
  %i.abv = icmp eq i32 %i.abc, 1024
  br i1 %i.abv, label %.preheader877, label %.loopexit878

.preheader877:                                    ; preds = %bb.cq
  %i.abw = add i32 %.10499, -1
  %i.abx = icmp ugt i32 %.10499, %i.aaq
  br i1 %i.abx, label %.lr.ph974.preheader, label %.loopexit878

.lr.ph974.preheader:                              ; preds = %.preheader877
  %i.aby = add i32 %.10499, -5
  %i.abz = add i32 %i.gh, %.11
  %i.aca = add i32 %i.abz, %i.zz
  %i.acb = add i32 %i.aca, %i.aah
  %i.acc = add i32 %i.acb, %i.aak
  %i.acd = add i32 %i.acc, %i.aaf
  %i.ace = sub i32 %i.aby, %i.acd
  %i.acf = zext i32 %i.ace to i64
  %i.acg = add nuw nsw i64 %i.acf, 1              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.17528, i8 48, i64 %i.acg, i1 false), !tbaa !16
  %scevgep1085 = getelementptr i8, ptr %.17528, i64 %i.acg
  %i.ach = add i32 %i.gh, %.11
  %i.aci = add i32 %i.ach, %i.zz
  %i.acj = add i32 %i.aci, %i.aah
  %i.ack = add i32 %i.acj, %i.aak
  %i.acl = add i32 %i.ack, %i.aaf
  %i.acm = add i32 %i.acl, 3
  br label %.loopexit878

.loopexit878:                                     ; preds = %.lr.ph974.preheader, %.preheader877, %bb.cq
  %.19530 = phi ptr [ %.17528, %bb.cq ], [ %.17528, %.preheader877 ], [ %scevgep1085, %.lr.ph974.preheader ] ; 3 uses
  %.12501 = phi i32 [ %.10499, %bb.cq ], [ %i.abw, %.preheader877 ], [ %i.acm, %.lr.ph974.preheader ]
  %i.acn = getelementptr inbounds nuw i8, ptr %.19530, i64 1 ; 4 uses
  %i.aco = zext i32 %.6462 to i64
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aco
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !17
  %i.acr = tail call ptr @lj_strfmt_wint(ptr noundef nonnull %i.acn, i32 noundef %i.acq) #8 ; 3 uses
  %i.acs = load i8, ptr %i.acn, align 1, !tbaa !16
  store i8 %i.acs, ptr %.19530, align 1, !tbaa !16
  br i1 %i.aaj, label %bb.cr, label %.loopexit875

bb.cr:                                            ; preds = %.loopexit878
  store i8 46, ptr %i.acn, align 1, !tbaa !16
  %i.act = getelementptr inbounds nuw i8, ptr %.19530, i64 2
  %i.acu = ptrtoint ptr %i.acr to i64
  %i.acv = ptrtoint ptr %i.act to i64
  %.neg574 = sub i64 %i.acv, %i.acu
  %.neg575 = trunc i64 %.neg574 to i32
  %i.acw = add i32 %.11, %.neg575                 ; 3 uses
  %i.acx = icmp sgt i32 %i.acw, 0
  %i.acy = icmp ne i32 %.6462, %.4453
  %i.acz = select i1 %i.acx, i1 %i.acy, i1 false
  br i1 %i.acz, label %.lr.ph981, label %._crit_edge982

.lr.ph981:                                        ; preds = %bb.cr, %.lr.ph981
  %.2447979 = phi i32 [ %i.adb, %.lr.ph981 ], [ %.6462, %bb.cr ]
  %.12978 = phi i32 [ %i.afc, %.lr.ph981 ], [ %i.acw, %bb.cr ] ; 2 uses
  %.20531977 = phi ptr [ %i.afb, %.lr.ph981 ], [ %i.acr, %bb.cr ] ; 10 uses
  %i.ada = add i32 %.2447979, 63
  %i.adb = and i32 %i.ada, 63                     ; 3 uses
  %i.adc = zext nneg i32 %i.adb to i64
  %i.add = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adc
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !17 ; 3 uses
  %i.adf = udiv i32 %i.ade, 10000                 ; 2 uses
  %.neg.i685 = mul i32 %i.adf, -10000
  %i.adg = add i32 %.neg.i685, %i.ade             ; 2 uses
  %i.adh = udiv i32 %i.ade, 100000000             ; 2 uses
  %.neg42.i686 = mul nsw i32 %i.adh, -10000
  %i.adi = add nsw i32 %.neg42.i686, %i.adf       ; 2 uses
  %i.adj = trunc nuw nsw i32 %i.adh to i8
  %i.adk = add nuw nsw i8 %i.adj, 48
  %i.adl = getelementptr inbounds nuw i8, ptr %.20531977, i64 1
  store i8 %i.adk, ptr %.20531977, align 1, !tbaa !16
  %i.adm = mul i32 %i.adi, 8389
  %i.adn = lshr i32 %i.adm, 23                    ; 2 uses
  %.neg43.i687 = mul nsw i32 %i.adn, -1000
  %i.ado = add nsw i32 %.neg43.i687, %i.adi       ; 2 uses
  %i.adp = trunc i32 %i.adn to i8
  %i.adq = add i8 %i.adp, 48
  %i.adr = getelementptr inbounds nuw i8, ptr %.20531977, i64 2
  store i8 %i.adq, ptr %i.adl, align 1, !tbaa !16
  %i.ads = mul nsw i32 %i.ado, 41
  %i.adt = lshr i32 %i.ads, 12                    ; 2 uses
  %.neg44.i688 = mul nsw i32 %i.adt, -100
  %i.adu = add nsw i32 %.neg44.i688, %i.ado       ; 2 uses
  %i.adv = trunc i32 %i.adt to i8
  %i.adw = add i8 %i.adv, 48
  %i.adx = getelementptr inbounds nuw i8, ptr %.20531977, i64 3
  store i8 %i.adw, ptr %i.adr, align 1, !tbaa !16
  %i.ady = mul i32 %i.adu, 103
  %i.adz = lshr i32 %i.ady, 10                    ; 2 uses
  %.neg45.i689 = mul nuw nsw i32 %i.adz, 246
  %i.aea = add nsw i32 %.neg45.i689, %i.adu
  %i.aeb = trunc i32 %i.adz to i8
  %i.aec = add i8 %i.aeb, 48
  %i.aed = getelementptr inbounds nuw i8, ptr %.20531977, i64 4
  store i8 %i.aec, ptr %i.adx, align 1, !tbaa !16
  %i.aee = trunc i32 %i.aea to i8
  %i.aef = add i8 %i.aee, 48
  %i.aeg = getelementptr inbounds nuw i8, ptr %.20531977, i64 5
  store i8 %i.aef, ptr %i.aed, align 1, !tbaa !16
  %i.aeh = mul i32 %i.adg, 8389
  %i.aei = lshr i32 %i.aeh, 23                    ; 2 uses
  %.neg46.i690 = mul nsw i32 %i.aei, -1000
  %i.aej = add i32 %.neg46.i690, %i.adg           ; 2 uses
  %i.aek = trunc i32 %i.aei to i8
  %i.ael = add i8 %i.aek, 48
  %i.aem = getelementptr inbounds nuw i8, ptr %.20531977, i64 6
  store i8 %i.ael, ptr %i.aeg, align 1, !tbaa !16
  %i.aen = mul i32 %i.aej, 41
  %i.aeo = lshr i32 %i.aen, 12                    ; 2 uses
  %.neg47.i691 = mul nsw i32 %i.aeo, -100
  %i.aep = add i32 %.neg47.i691, %i.aej           ; 2 uses
  %i.aeq = trunc i32 %i.aeo to i8
  %i.aer = add i8 %i.aeq, 48
  %i.aes = getelementptr inbounds nuw i8, ptr %.20531977, i64 7
  store i8 %i.aer, ptr %i.aem, align 1, !tbaa !16
  %i.aet = mul i32 %i.aep, 103
  %i.aeu = lshr i32 %i.aet, 10                    ; 2 uses
  %.neg48.i692 = mul nuw nsw i32 %i.aeu, 246
  %i.aev = add i32 %.neg48.i692, %i.aep
  %i.aew = trunc i32 %i.aeu to i8
  %i.aex = add i8 %i.aew, 48
  %i.aey = getelementptr inbounds nuw i8, ptr %.20531977, i64 8
  store i8 %i.aex, ptr %i.aes, align 1, !tbaa !16
  %i.aez = trunc i32 %i.aev to i8
  %i.afa = add i8 %i.aez, 48
  %i.afb = getelementptr inbounds nuw i8, ptr %.20531977, i64 9 ; 2 uses
  store i8 %i.afa, ptr %i.aey, align 1, !tbaa !16
  %i.afc = add nsw i32 %.12978, -9                ; 2 uses
  %i.afd = icmp samesign ugt i32 %.12978, 9
  %i.afe = icmp ne i32 %i.adb, %.4453
  %i.aff = select i1 %i.afd, i1 %i.afe, i1 false
  br i1 %i.aff, label %.lr.ph981, label %._crit_edge982, !llvm.loop !28

._crit_edge982:                                   ; preds = %.lr.ph981, %bb.cr
  %.20531.lcssa = phi ptr [ %i.acr, %bb.cr ], [ %i.afb, %.lr.ph981 ] ; 4 uses
  %.12.lcssa = phi i32 [ %i.acw, %bb.cr ], [ %i.afc, %.lr.ph981 ] ; 5 uses
  %i.afg = and i32 %1, 4128
  %or.cond623 = icmp eq i32 %i.afg, 32
  br i1 %or.cond623, label %bb.cs, label %.preheader876

.preheader876:                                    ; preds = %._crit_edge982
  %i.afh = icmp sgt i32 %.12.lcssa, 0
  br i1 %i.afh, label %.lr.ph987.preheader, label %._crit_edge988

.lr.ph987.preheader:                              ; preds = %.preheader876
  %i.afi = zext nneg i32 %.12.lcssa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.20531.lcssa, i8 48, i64 %i.afi, i1 false), !tbaa !16
  %i.afj = zext nneg i32 %.12.lcssa to i64
  %scevgep1086 = getelementptr i8, ptr %.20531.lcssa, i64 %i.afj
  br label %._crit_edge988

bb.cs:                                            ; preds = %._crit_edge982
  %i.afk = tail call i32 @llvm.smin.i32(i32 %.12.lcssa, i32 0)
  %i.afl = sext i32 %i.afk to i64
  %i.afm = getelementptr inbounds i8, ptr %.20531.lcssa, i64 %i.afl
  br label %bb.ct

bb.ct:                                            ; preds = %bb.ct, %bb.cs
  %.21532 = phi ptr [ %i.afm, %bb.cs ], [ %i.afn, %bb.ct ] ; 2 uses
  %i.afn = getelementptr inbounds i8, ptr %.21532, i64 -1 ; 3 uses
  %i.afo = load i8, ptr %i.afn, align 1, !tbaa !16
  switch i8 %i.afo, label %.loopexit875.loopexit [
    i8 48, label %bb.ct
    i8 46, label %.loopexit875
  ]

._crit_edge988:                                   ; preds = %.lr.ph987.preheader, %.preheader876
  %.22533.lcssa = phi ptr [ %.20531.lcssa, %.preheader876 ], [ %scevgep1086, %.lr.ph987.preheader ]
  %.13.lcssa = phi i32 [ %.12.lcssa, %.preheader876 ], [ 0, %.lr.ph987.preheader ]
  %i.afp = sext i32 %.13.lcssa to i64
  %i.afq = getelementptr inbounds i8, ptr %.22533.lcssa, i64 %i.afp
  br label %.loopexit875

.loopexit875.loopexit:                            ; preds = %bb.ct
  br label %.loopexit875

.loopexit875:                                     ; preds = %bb.ct, %.loopexit875.loopexit, %.loopexit878, %._crit_edge988
  %.23 = phi ptr [ %i.afq, %._crit_edge988 ], [ %.21532, %.loopexit875.loopexit ], [ %i.acn, %.loopexit878 ], [ %i.afn, %bb.ct ] ; 4 uses
  %4 = lshr i32 %1, 8
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 32
  %7 = xor i8 %6, 101
  %i.afr = getelementptr inbounds nuw i8, ptr %.23, i64 1
  store i8 %7, ptr %.23, align 1, !tbaa !16
  %i.afs = getelementptr inbounds nuw i8, ptr %.23, i64 2 ; 2 uses
  store i8 %spec.select621, ptr %i.afr, align 1, !tbaa !16
  br i1 %i.aag, label %bb.cu, label %.thread828

bb.cu:                                            ; preds = %.loopexit875
  %i.aft = getelementptr inbounds nuw i8, ptr %.23, i64 3
  store i8 48, ptr %i.afs, align 1, !tbaa !16
  br label %.thread828

.thread828:                                       ; preds = %.loopexit875, %bb.cu
  %.24 = phi ptr [ %i.aft, %bb.cu ], [ %i.afs, %.loopexit875 ]
  %i.afu = tail call ptr @lj_strfmt_wint(ptr noundef nonnull %.24, i32 noundef %spec.select622) #8
  br label %.loopexit881

bb.cv:                                            ; preds = %nd_mul2k.exit665
  %i.afv = sub nsw i32 0, %.0449
  %i.afw = and i32 %i.afv, 63
  %i.afx = mul nuw nsw i32 %i.afw, 9
  %i.afy = icmp ult i32 %.4482, %i.afx
  br i1 %i.afy, label %bb.cw, label %.thread845

bb.cw:                                            ; preds = %bb.cv
  %i.afz = xor i32 %.4482, -1
  %i.aga = call fastcc i32 @nd_round(ptr noundef %i.c, i32 noundef %.0449, i32 noundef %.3459, i32 noundef %i.afz)
  br label %.thread845

bb.cx:                                            ; preds = %.thread836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.agb = sub nuw nsw i32 64, %.0449
  %i.agc = mul nuw nsw i32 %i.agb, 9              ; 2 uses
  %.not580 = icmp ult i32 %i.vb, %i.agc
  br i1 %.not580, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.agd = trunc i32 %i.vb to i16
  %.lhs.trunc = add i16 %i.agd, 8
  %i.age = udiv i16 %.lhs.trunc, 9
  %.zext1163 = zext nneg i16 %i.age to i32
  %i.agf = sub nuw nsw i32 64, %.zext1163
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cx, %bb.cy
  %.17 = phi i32 [ %i.vb, %bb.cy ], [ %i.agc, %bb.cx ] ; 3 uses
  %.7 = phi i32 [ %i.agf, %bb.cy ], [ %.0449, %bb.cx ] ; 4 uses
  %i.agg = zext nneg i32 %.7 to i64
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.agg
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !17 ; 3 uses
  %i.agj = udiv i32 %i.agi, 10000                 ; 2 uses
  %.neg.i693 = mul i32 %i.agj, -10000
  %i.agk = add i32 %.neg.i693, %i.agi             ; 2 uses
  %i.agl = udiv i32 %i.agi, 100000000             ; 2 uses
  %.neg42.i694 = mul nsw i32 %i.agl, -10000
  %i.agm = add nsw i32 %.neg42.i694, %i.agj       ; 2 uses
  %i.agn = trunc nuw nsw i32 %i.agl to i8
  %i.ago = add nuw nsw i8 %i.agn, 48
  %i.agp = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  store i8 %i.ago, ptr %i.e, align 1, !tbaa !16
  %i.agq = mul i32 %i.agm, 8389
  %i.agr = lshr i32 %i.agq, 23                    ; 2 uses
  %.neg43.i695 = mul nsw i32 %i.agr, -1000
  %i.ags = add nsw i32 %.neg43.i695, %i.agm       ; 2 uses
  %i.agt = trunc i32 %i.agr to i8
  %i.agu = add i8 %i.agt, 48
  %i.agv = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  store i8 %i.agu, ptr %i.agp, align 1, !tbaa !16
  %i.agw = mul nsw i32 %i.ags, 41
  %i.agx = lshr i32 %i.agw, 12                    ; 2 uses
  %.neg44.i696 = mul nsw i32 %i.agx, -100
  %i.agy = add nsw i32 %.neg44.i696, %i.ags       ; 2 uses
  %i.agz = trunc i32 %i.agx to i8
  %i.aha = add i8 %i.agz, 48
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.e, i64 3 ; 2 uses
  store i8 %i.aha, ptr %i.agv, align 1, !tbaa !16
  %i.ahc = mul i32 %i.agy, 103
  %i.ahd = lshr i32 %i.ahc, 10                    ; 2 uses
  %.neg45.i697 = mul nuw nsw i32 %i.ahd, 246
  %i.ahe = add nsw i32 %.neg45.i697, %i.agy
  %i.ahf = trunc i32 %i.ahd to i8
  %i.ahg = add i8 %i.ahf, 48
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  store i8 %i.ahg, ptr %i.ahb, align 1, !tbaa !16
  %i.ahi = trunc i32 %i.ahe to i8
  %i.ahj = add i8 %i.ahi, 48
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  store i8 %i.ahj, ptr %i.ahh, align 1, !tbaa !16
  %i.ahl = mul i32 %i.agk, 8389
  %i.ahm = lshr i32 %i.ahl, 23                    ; 2 uses
  %.neg46.i698 = mul nsw i32 %i.ahm, -1000
  %i.ahn = add i32 %.neg46.i698, %i.agk           ; 2 uses
  %i.aho = trunc i32 %i.ahm to i8
  %i.ahp = add i8 %i.aho, 48
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.e, i64 6 ; 2 uses
  store i8 %i.ahp, ptr %i.ahk, align 1, !tbaa !16
  %i.ahr = mul i32 %i.ahn, 41
  %i.ahs = lshr i32 %i.ahr, 12                    ; 2 uses
  %.neg47.i699 = mul nsw i32 %i.ahs, -100
  %i.aht = add i32 %.neg47.i699, %i.ahn           ; 2 uses
  %i.ahu = trunc i32 %i.ahs to i8
  %i.ahv = add i8 %i.ahu, 48
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.e, i64 7 ; 2 uses
  store i8 %i.ahv, ptr %i.ahq, align 1, !tbaa !16
  %i.ahx = mul i32 %i.aht, 103
  %i.ahy = lshr i32 %i.ahx, 10                    ; 2 uses
  %.neg48.i700 = mul nuw nsw i32 %i.ahy, 246
  %i.ahz = add i32 %.neg48.i700, %i.aht
  %i.aia = trunc i32 %i.ahy to i8
  %i.aib = add i8 %i.aia, 48
  %i.aic = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i8 %i.aib, ptr %i.ahw, align 1, !tbaa !16
  %i.aid = trunc i32 %i.ahz to i8
  %i.aie = add i8 %i.aid, 48
  store i8 %i.aie, ptr %i.aic, align 1, !tbaa !16
  %.not582929 = icmp eq i32 %.17, 0
  br i1 %.not582929, label %.critedge15, label %.lr.ph933.preheader

.lr.ph933.preheader:                              ; preds = %bb.cz
  %i.aif = sub nuw nsw i32 63, %.7
  %.neg581 = mul nsw i32 %i.aif, -9
  %i.aig = add nsw i32 %.neg581, %.17
  br label %.lr.ph933

.lr.ph933:                                        ; preds = %.lr.ph933.preheader, %bb.dd
  %.3448932 = phi i32 [ %.4, %bb.dd ], [ %i.aig, %.lr.ph933.preheader ]
  %.8931 = phi i32 [ %.9, %bb.dd ], [ %.7, %.lr.ph933.preheader ] ; 4 uses
  %.18930 = phi i32 [ %i.aim, %bb.dd ], [ %.17, %.lr.ph933.preheader ] ; 2 uses
  %i.aih = add i32 %.3448932, -1                  ; 3 uses
  %i.aii = zext i32 %i.aih to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !16
  %i.ail = icmp eq i8 %i.aik, 48
  br i1 %i.ail, label %bb.da, label %.critedge15

bb.da:                                            ; preds = %.lr.ph933
  %i.aim = add nsw i32 %.18930, -1                ; 2 uses
  %.not583 = icmp eq i32 %i.aih, 0
  br i1 %.not583, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.ain = icmp eq i32 %.8931, 63
  br i1 %i.ain, label %.critedge15, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.aio = add i32 %.8931, 1                      ; 2 uses
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aip
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !17 ; 3 uses
  %i.ais = udiv i32 %i.air, 10000                 ; 2 uses
  %.neg.i701 = mul i32 %i.ais, -10000
  %i.ait = add i32 %.neg.i701, %i.air             ; 2 uses
  %i.aiu = udiv i32 %i.air, 100000000             ; 2 uses
  %.neg42.i702 = mul nsw i32 %i.aiu, -10000
  %i.aiv = add nsw i32 %.neg42.i702, %i.ais       ; 2 uses
  %i.aiw = trunc nuw nsw i32 %i.aiu to i8
  %i.aix = add nuw nsw i8 %i.aiw, 48
  store i8 %i.aix, ptr %i.e, align 1, !tbaa !16
  %i.aiy = mul i32 %i.aiv, 8389
  %i.aiz = lshr i32 %i.aiy, 23                    ; 2 uses
  %.neg43.i703 = mul nsw i32 %i.aiz, -1000
  %i.aja = add nsw i32 %.neg43.i703, %i.aiv       ; 2 uses
  %i.ajb = trunc i32 %i.aiz to i8
  %i.ajc = add i8 %i.ajb, 48
  store i8 %i.ajc, ptr %i.agp, align 1, !tbaa !16
  %i.ajd = mul nsw i32 %i.aja, 41
  %i.aje = lshr i32 %i.ajd, 12                    ; 2 uses
  %.neg44.i704 = mul nsw i32 %i.aje, -100
  %i.ajf = add nsw i32 %.neg44.i704, %i.aja       ; 2 uses
  %i.ajg = trunc i32 %i.aje to i8
  %i.ajh = add i8 %i.ajg, 48
  store i8 %i.ajh, ptr %i.agv, align 1, !tbaa !16
  %i.aji = mul i32 %i.ajf, 103
  %i.ajj = lshr i32 %i.aji, 10                    ; 2 uses
  %.neg45.i705 = mul nuw nsw i32 %i.ajj, 246
  %i.ajk = add nsw i32 %.neg45.i705, %i.ajf
  %i.ajl = trunc i32 %i.ajj to i8
  %i.ajm = add i8 %i.ajl, 48
  store i8 %i.ajm, ptr %i.ahb, align 1, !tbaa !16
  %i.ajn = trunc i32 %i.ajk to i8
  %i.ajo = add i8 %i.ajn, 48
  store i8 %i.ajo, ptr %i.ahh, align 1, !tbaa !16
  %i.ajp = mul i32 %i.ait, 8389
  %i.ajq = lshr i32 %i.ajp, 23                    ; 2 uses
  %.neg46.i706 = mul nsw i32 %i.ajq, -1000
  %i.ajr = add i32 %.neg46.i706, %i.ait           ; 2 uses
  %i.ajs = trunc i32 %i.ajq to i8
  %i.ajt = add i8 %i.ajs, 48
  store i8 %i.ajt, ptr %i.ahk, align 1, !tbaa !16
  %i.aju = mul i32 %i.ajr, 41
  %i.ajv = lshr i32 %i.aju, 12                    ; 2 uses
  %.neg47.i707 = mul nsw i32 %i.ajv, -100
  %i.ajw = add i32 %.neg47.i707, %i.ajr           ; 2 uses
  %i.ajx = trunc i32 %i.ajv to i8
  %i.ajy = add i8 %i.ajx, 48
  store i8 %i.ajy, ptr %i.ahq, align 1, !tbaa !16
  %i.ajz = mul i32 %i.ajw, 103
  %i.aka = lshr i32 %i.ajz, 10                    ; 2 uses
  %.neg48.i708 = mul nuw nsw i32 %i.aka, 246
  %i.akb = add i32 %.neg48.i708, %i.ajw
  %i.akc = trunc i32 %i.aka to i8
  %i.akd = add i8 %i.akc, 48
  store i8 %i.akd, ptr %i.ahw, align 1, !tbaa !16
end_hunk_0
