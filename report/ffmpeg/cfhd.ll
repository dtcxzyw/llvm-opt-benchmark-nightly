Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhd?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@cfhd_decode:bb.a
  br i1 %.not1965.us.us.2, label %.thread2178, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adn, i64 42504
  %i.adv = load i8, ptr %i.adu, align 8, !tbaa !69
  %.not1965.us.us.3 = icmp eq i8 %i.adv, 0
  br i1 %.not1965.us.us.3, label %.thread2178, label %.thread2184.us.us

.thread2184.us.us:                                ; preds = %bb.gk
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adn, i64 42568
  %i.adx = load i8, ptr %i.adw, align 8, !tbaa !69
  %.not1965.us.us.13303 = icmp eq i8 %i.adx, 0
  br i1 %.not1965.us.us.13303, label %.thread2178, label %bb.gl

bb.gl:                                            ; preds = %.thread2184.us.us
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adn, i64 42600
  %i.adz = load i8, ptr %i.ady, align 8, !tbaa !69
  %.not1965.us.us.1.1 = icmp eq i8 %i.adz, 0
  br i1 %.not1965.us.us.1.1, label %.thread2178, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adn, i64 42632
  %i.aeb = load i8, ptr %i.aea, align 8, !tbaa !69
  %.not1965.us.us.2.1 = icmp eq i8 %i.aeb, 0
  br i1 %.not1965.us.us.2.1, label %.thread2178, label %.thread2184.us.us.2

.thread2184.us.us.2:                              ; preds = %bb.gm
  br i1 %.not3308.not, label %.split.us.us, label %bb.gn

bb.gn:                                            ; preds = %.thread2184.us.us.2
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adn, i64 42824
  %i.aed = load i8, ptr %i.aec, align 8, !tbaa !69
  %.not1965.us.us.33307 = icmp eq i8 %i.aed, 0
  br i1 %.not1965.us.us.33307, label %.thread2178, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adn, i64 42856
  %i.aef = load i8, ptr %i.aee, align 8, !tbaa !69
  %.not1965.us.us.1.3 = icmp eq i8 %i.aef, 0
  br i1 %.not1965.us.us.1.3, label %.thread2178, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adn, i64 42888
  %i.aeh = load i8, ptr %i.aeg, align 8, !tbaa !69
  %.not1965.us.us.2.3 = icmp eq i8 %i.aeh, 0
  br i1 %.not1965.us.us.2.3, label %.thread2178, label %.thread2184.us.us.3

.thread2184.us.us.3:                              ; preds = %bb.gp
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adn, i64 42952
  %i.aej = load i8, ptr %i.aei, align 8, !tbaa !69
  %.not1965.us.us.4 = icmp eq i8 %i.aej, 0
  br i1 %.not1965.us.us.4, label %.thread2178, label %bb.gq

bb.gq:                                            ; preds = %.thread2184.us.us.3
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adn, i64 42984
  %i.ael = load i8, ptr %i.aek, align 8, !tbaa !69
  %.not1965.us.us.1.4 = icmp eq i8 %i.ael, 0
  br i1 %.not1965.us.us.1.4, label %.thread2178, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adn, i64 43016
  %i.aen = load i8, ptr %i.aem, align 8, !tbaa !69
  %.not1965.us.us.2.4 = icmp eq i8 %i.aen, 0
  br i1 %.not1965.us.us.2.4, label %.thread2178, label %.split.us.us

.split.us.us:                                     ; preds = %bb.gr, %.thread2184.us.us.2
  %indvars.iv.next2574 = add nuw nsw i64 %indvars.iv2573, 1 ; 2 uses
  %exitcond2577.not = icmp eq i64 %indvars.iv.next2574, %wide.trip.count2576
  br i1 %exitcond2577.not, label %._crit_edge2393, label %.preheader2263.us, !llvm.loop !97

bb.gs:                                            ; preds = %bb.gh
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.61) #11
  br label %.thread2178

.preheader2263:                                   ; preds = %.preheader2263.lr.ph, %.split
  %indvars.iv2559 = phi i64 [ %indvars.iv.next2560, %.split ], [ 0, %.preheader2263.lr.ph ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw [1024 x i8], ptr %i.b, i64 %indvars.iv2559 ; 19 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42408
  %i.aeq = load i8, ptr %i.aep, align 8, !tbaa !69
  %.not1965 = icmp eq i8 %i.aeq, 0
  br i1 %.not1965, label %.thread2178, label %bb.gt

bb.gt:                                            ; preds = %.preheader2263
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42440
  %i.aes = load i8, ptr %i.aer, align 8, !tbaa !69
  %.not1965.1 = icmp eq i8 %i.aes, 0
  br i1 %.not1965.1, label %.thread2178, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42472
  %i.aeu = load i8, ptr %i.aet, align 8, !tbaa !69
  %.not1965.2 = icmp eq i8 %i.aeu, 0
  br i1 %.not1965.2, label %.thread2178, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42504
  %i.aew = load i8, ptr %i.aev, align 8, !tbaa !69
  %.not1965.3 = icmp eq i8 %i.aew, 0
  br i1 %.not1965.3, label %.thread2178, label %.thread2184.loopexit

.thread2184.loopexit:                             ; preds = %bb.gv
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42568
  %i.aey = load i8, ptr %i.aex, align 8, !tbaa !69
  %.not1965.13298 = icmp eq i8 %i.aey, 0
  br i1 %.not1965.13298, label %.thread2178, label %bb.gw

bb.gw:                                            ; preds = %.thread2184.loopexit
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42600
  %i.afa = load i8, ptr %i.aez, align 8, !tbaa !69
  %.not1965.1.1 = icmp eq i8 %i.afa, 0
  br i1 %.not1965.1.1, label %.thread2178, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42632
  %i.afc = load i8, ptr %i.afb, align 8, !tbaa !69
  %.not1965.2.1 = icmp eq i8 %i.afc, 0
  br i1 %.not1965.2.1, label %.thread2178, label %.thread2184.loopexit.1

.thread2184.loopexit.1:                           ; preds = %bb.gx
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42696
  %i.afe = load i8, ptr %i.afd, align 8, !tbaa !69
  %.not1965.23300 = icmp eq i8 %i.afe, 0
  br i1 %.not1965.23300, label %.thread2178, label %bb.gy

bb.gy:                                            ; preds = %.thread2184.loopexit.1
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42728
  %i.afg = load i8, ptr %i.aff, align 8, !tbaa !69
  %.not1965.1.2 = icmp eq i8 %i.afg, 0
  br i1 %.not1965.1.2, label %.thread2178, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42760
  %i.afi = load i8, ptr %i.afh, align 8, !tbaa !69
  %.not1965.2.2 = icmp eq i8 %i.afi, 0
  br i1 %.not1965.2.2, label %.thread2178, label %.thread2184.loopexit.2

.thread2184.loopexit.2:                           ; preds = %bb.gz
  br i1 %.not3308.not, label %.split, label %bb.ha

bb.ha:                                            ; preds = %.thread2184.loopexit.2
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42824
  %i.afk = load i8, ptr %i.afj, align 8, !tbaa !69
  %.not1965.33302 = icmp eq i8 %i.afk, 0
  br i1 %.not1965.33302, label %.thread2178, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42856
  %i.afm = load i8, ptr %i.afl, align 8, !tbaa !69
  %.not1965.1.3 = icmp eq i8 %i.afm, 0
  br i1 %.not1965.1.3, label %.thread2178, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42888
  %i.afo = load i8, ptr %i.afn, align 8, !tbaa !69
  %.not1965.2.3 = icmp eq i8 %i.afo, 0
  br i1 %.not1965.2.3, label %.thread2178, label %.thread2184.loopexit.3

.thread2184.loopexit.3:                           ; preds = %bb.hc
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42952
  %i.afq = load i8, ptr %i.afp, align 8, !tbaa !69
  %.not1965.4 = icmp eq i8 %i.afq, 0
  br i1 %.not1965.4, label %.thread2178, label %bb.hd

bb.hd:                                            ; preds = %.thread2184.loopexit.3
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aeo, i64 42984
  %i.afs = load i8, ptr %i.afr, align 8, !tbaa !69
  %.not1965.1.4 = icmp eq i8 %i.afs, 0
  br i1 %.not1965.1.4, label %.thread2178, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aeo, i64 43016
  %i.afu = load i8, ptr %i.aft, align 8, !tbaa !69
  %.not1965.2.4 = icmp eq i8 %i.afu, 0
  br i1 %.not1965.2.4, label %.thread2178, label %.thread2184.loopexit.4

.thread2184.loopexit.4:                           ; preds = %bb.he
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aeo, i64 43080
  %i.afw = load i8, ptr %i.afv, align 8, !tbaa !69
  %.not1965.5 = icmp eq i8 %i.afw, 0
  br i1 %.not1965.5, label %.thread2178, label %bb.hf

bb.hf:                                            ; preds = %.thread2184.loopexit.4
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aeo, i64 43112
  %i.afy = load i8, ptr %i.afx, align 8, !tbaa !69
  %.not1965.1.5 = icmp eq i8 %i.afy, 0
  br i1 %.not1965.1.5, label %.thread2178, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.afz = getelementptr inbounds nuw i8, ptr %i.aeo, i64 43144
  %i.aga = load i8, ptr %i.afz, align 8, !tbaa !69
  %.not1965.2.5 = icmp eq i8 %i.aga, 0
  br i1 %.not1965.2.5, label %.thread2178, label %.split

.split:                                           ; preds = %bb.hg, %.thread2184.loopexit.2
  %indvars.iv.next2560 = add nuw nsw i64 %indvars.iv2559, 1 ; 2 uses
  %exitcond2563.not = icmp eq i64 %indvars.iv.next2560, %wide.trip.count2576
  br i1 %exitcond2563.not, label %._crit_edge2393, label %.preheader2263, !llvm.loop !97

._crit_edge2393:                                  ; preds = %.split, %.split.us.us, %.preheader2264
  switch i32 %.pre2618, label %.loopexit2247 [
    i32 0, label %bb.hh
    i32 2, label %bb.ih
  ]

bb.hh:                                            ; preds = %._crit_edge2393
  %4 = load i32, ptr %i.q, align 4, !tbaa !160
  %.not1966 = icmp ne i32 %4, 1
  %.not1975 = icmp eq i32 %.01835.lcssa, 0
  %5 = and i1 %.not1966, %i.adl
  %or.cond2785 = select i1 %5, i1 %.not1975, i1 false
  br i1 %or.cond2785, label %.lr.ph2454, label %.loopexit2715

.lr.ph2454:                                       ; preds = %bb.hh
  %i.agb = getelementptr inbounds nuw i8, ptr %i.b, i64 42128 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.b, i64 46264 ; 6 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.agh = getelementptr inbounds nuw i8, ptr %i.b, i64 46272
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 3 uses
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph2454, %.loopexit2250
  %indvars.iv2608 = phi i64 [ 0, %.lr.ph2454 ], [ %indvars.iv.next2609, %.loopexit2250 ] ; 8 uses
  %i.agj = getelementptr inbounds nuw [1024 x i8], ptr %i.agb, i64 %indvars.iv2608 ; 39 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 276
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !170 ; 6 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 264
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !65 ; 3 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agj, i64 268
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !168 ; 9 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agj, i64 288
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !169 ; 2 uses
  %i.ags = trunc i64 %i.agr to i32                ; 2 uses
  %i.agt = load i32, ptr %i.acr, align 8, !tbaa !56
  %i.agu = icmp eq i32 %i.agt, 145
  br i1 %i.agu, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.agv = load i32, ptr %i.agc, align 4, !tbaa !49
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  %i.agw = icmp eq i64 %indvars.iv2608, 1
  %i.agx = icmp eq i64 %indvars.iv2608, 2
  %i.agy = trunc nuw nsw i64 %indvars.iv2608 to i32
  %i.agz = select i1 %i.agx, i32 1, i32 %i.agy
  %i.aha = select i1 %i.agw, i32 2, i32 %i.agz    ; 2 uses
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.ahb
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !49
  %i.ahe = sdiv i32 %i.ahd, 2
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.01792 = phi i32 [ 0, %bb.hj ], [ %i.aha, %bb.hk ] ; 3 uses
  %.01791.in = phi i32 [ %i.agv, %bb.hj ], [ %i.ahe, %bb.hk ]
  %.01791 = sext i32 %.01791.in to i64
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agj, i64 272
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !64
  %i.ahh = icmp sgt i32 %i.agl, %i.ahg
  br i1 %i.ahh, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ahi = icmp sle i32 %i.agp, %i.agn
  %i.ahj = icmp ne i32 %i.ags, 0
  %or.cond64 = select i1 %i.ahi, i1 %i.ahj, i1 false
  br i1 %or.cond64, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agj, i64 300
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !168
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agj, i64 296
  %i.ahn = load i32, ptr %i.ahm, align 8, !tbaa !65
  %i.aho = icmp sgt i32 %i.ahl, %i.ahn
  %i.ahp = icmp slt i32 %i.agp, 3
  %or.cond66 = select i1 %i.aho, i1 true, i1 %i.ahp
  %i.ahq = icmp slt i32 %i.agl, 3
  %or.cond68 = select i1 %or.cond66, i1 true, i1 %i.ahq
  br i1 %or.cond68, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2178

bb.hp:                                            ; preds = %bb.hn
  %i.ahr = trunc nuw nsw i64 %indvars.iv2608 to i32 ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.75, i32 noundef %i.ahr, i32 noundef %i.agl, i32 noundef %i.agp, i32 noundef %i.ags) #11
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agj, i64 40 ; 8 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !63
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agj, i64 56
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !63
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agj, i64 176 ; 2 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !63
  %i.ahy = load ptr, ptr %i.agd, align 8, !tbaa !184
  %i.ahz = sext i32 %i.agn to i64                 ; 5 uses
  %i.aia = zext nneg i32 %i.agp to i64
  %sext1976 = shl i64 %i.agr, 32
  %i.aib = ashr exact i64 %sext1976, 32           ; 3 uses
  tail call void %i.ahy(ptr noundef %i.ahx, i64 noundef %i.ahz, ptr noundef %i.aht, i64 noundef %i.aia, ptr noundef %i.ahv, i64 noundef %i.aib, i32 noundef %i.agp, i32 noundef %i.agl) #11
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agj, i64 48
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !63
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agj, i64 64
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !63
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agj, i64 184 ; 2 uses
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !63
  %i.aii = load ptr, ptr %i.agd, align 8, !tbaa !184
  tail call void %i.aii(ptr noundef %i.aih, i64 noundef %i.ahz, ptr noundef %i.aid, i64 noundef %i.aib, ptr noundef %i.aif, i64 noundef %i.aib, i32 noundef %i.agp, i32 noundef %i.agl) #11
  %i.aij = load ptr, ptr %i.ahw, align 8, !tbaa !63
  %i.aik = load ptr, ptr %i.aig, align 8, !tbaa !63
  %i.ail = load ptr, ptr %i.ahs, align 8, !tbaa !63
  %i.aim = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.ain = shl nuw nsw i32 %i.agl, 1              ; 2 uses
  tail call void %i.aim(ptr noundef %i.ail, i64 noundef %i.ahz, ptr noundef %i.aij, i64 noundef %i.ahz, ptr noundef %i.aik, i64 noundef %i.ahz, i32 noundef %i.agp, i32 noundef %i.ain) #11
  %i.aio = load i32, ptr %i.h, align 8, !tbaa !50
  %i.aip = icmp eq i32 %i.aio, 12
  br i1 %i.aip, label %.preheader2249.preheader, label %.loopexit2252

.preheader2249.preheader:                         ; preds = %bb.hp
  %i.aiq = shl nuw i32 %i.agp, 1
  %i.air = shl nuw nsw i32 %i.agn, 1
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = load ptr, ptr %i.ahs, align 8, !tbaa !63
  %wide.trip.count2598 = zext i32 %i.aiq to i64   ; 6 uses
  %min.iters.check3173 = icmp ult i32 %i.agp, 8
  %i.aiu = and i64 %wide.trip.count2598, 12
  %n.vec3175 = and i64 %wide.trip.count2598, 4294967280 ; 4 uses
  %cmp.n3182 = icmp eq i64 %n.vec3175, %wide.trip.count2598
  %min.epilog.iters.check3187 = icmp eq i64 %i.aiu, 0
  %n.vec3189 = and i64 %wide.trip.count2598, 4294967292 ; 3 uses
  %cmp.n3195 = icmp eq i64 %n.vec3189, %wide.trip.count2598
  br label %vector.main.loop.iter.check3172

vector.main.loop.iter.check3172:                  ; preds = %._crit_edge2430, %.preheader2249.preheader
  %.017802432 = phi i32 [ %i.aje, %._crit_edge2430 ], [ 0, %.preheader2249.preheader ]
  %.017852431 = phi ptr [ %i.ajd, %._crit_edge2430 ], [ %i.ait, %.preheader2249.preheader ] ; 4 uses
  br i1 %min.iters.check3173, label %vec.epilog.ph3188, label %vector.body3176

vector.body3176:                                  ; preds = %vector.main.loop.iter.check3172, %vector.body3176
  %index3177 = phi i64 [ %index.next3180, %vector.body3176 ], [ 0, %vector.main.loop.iter.check3172 ] ; 2 uses
  %i.aiv = getelementptr inbounds nuw [2 x i8], ptr %.017852431, i64 %index3177 ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16 ; 2 uses
  %wide.load3178 = load <8 x i16>, ptr %i.aiv, align 2, !tbaa !66
  %wide.load3179 = load <8 x i16>, ptr %i.aiw, align 2, !tbaa !66
  %i.aix = shl <8 x i16> %wide.load3178, splat (i16 2)
  %i.aiy = shl <8 x i16> %wide.load3179, splat (i16 2)
  store <8 x i16> %i.aix, ptr %i.aiv, align 2, !tbaa !66
  store <8 x i16> %i.aiy, ptr %i.aiw, align 2, !tbaa !66
  %index.next3180 = add nuw i64 %index3177, 16    ; 2 uses
  %i.aiz = icmp eq i64 %index.next3180, %n.vec3175
  br i1 %i.aiz, label %middle.block3181, label %vector.body3176, !llvm.loop !98

middle.block3181:                                 ; preds = %vector.body3176
  br i1 %cmp.n3182, label %._crit_edge2430, label %vec.epilog.iter.check3186

vec.epilog.iter.check3186:                        ; preds = %middle.block3181
  br i1 %min.epilog.iters.check3187, label %vec.epilog.scalar.ph3185.preheader, label %vec.epilog.ph3188, !prof !178

vec.epilog.ph3188:                                ; preds = %vector.main.loop.iter.check3172, %vec.epilog.iter.check3186
  %vec.epilog.resume.val3183 = phi i64 [ %n.vec3175, %vec.epilog.iter.check3186 ], [ 0, %vector.main.loop.iter.check3172 ]
  br label %vec.epilog.vector.body3190

vec.epilog.vector.body3190:                       ; preds = %vec.epilog.vector.body3190, %vec.epilog.ph3188
  %index3191 = phi i64 [ %vec.epilog.resume.val3183, %vec.epilog.ph3188 ], [ %index.next3193, %vec.epilog.vector.body3190 ] ; 2 uses
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %.017852431, i64 %index3191 ; 2 uses
  %wide.load3192 = load <4 x i16>, ptr %i.aja, align 2, !tbaa !66
  %i.ajb = shl <4 x i16> %wide.load3192, splat (i16 2)
  store <4 x i16> %i.ajb, ptr %i.aja, align 2, !tbaa !66
  %index.next3193 = add nuw i64 %index3191, 4     ; 2 uses
  %i.ajc = icmp eq i64 %index.next3193, %n.vec3189
  br i1 %i.ajc, label %vec.epilog.middle.block3194, label %vec.epilog.vector.body3190, !llvm.loop !99

vec.epilog.middle.block3194:                      ; preds = %vec.epilog.vector.body3190
  br i1 %cmp.n3195, label %._crit_edge2430, label %vec.epilog.scalar.ph3185.preheader

vec.epilog.scalar.ph3185.preheader:               ; preds = %vec.epilog.iter.check3186, %vec.epilog.middle.block3194
  %indvars.iv2595.ph = phi i64 [ %n.vec3175, %vec.epilog.iter.check3186 ], [ %n.vec3189, %vec.epilog.middle.block3194 ]
  br label %vec.epilog.scalar.ph3185

._crit_edge2430:                                  ; preds = %vec.epilog.scalar.ph3185, %vec.epilog.middle.block3194, %middle.block3181
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %.017852431, i64 %i.ais
  %i.aje = add nuw nsw i32 %.017802432, 1         ; 2 uses
  %exitcond2600.not = icmp eq i32 %i.aje, %i.ain
  br i1 %exitcond2600.not, label %.loopexit2252, label %vector.main.loop.iter.check3172, !llvm.loop !100

vec.epilog.scalar.ph3185:                         ; preds = %vec.epilog.scalar.ph3185.preheader, %vec.epilog.scalar.ph3185
  %indvars.iv2595.a = phi i64 [ %indvars.iv.next2596.a, %vec.epilog.scalar.ph3185 ], [ %indvars.iv2595.ph, %vec.epilog.scalar.ph3185.preheader ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw [2 x i8], ptr %.017852431, i64 %indvars.iv2595.a ; 2 uses
  %i.ajg = load i16, ptr %i.ajf, align 2, !tbaa !66
  %i.ajh = shl i16 %i.ajg, 2
  store i16 %i.ajh, ptr %i.ajf, align 2, !tbaa !66
  %indvars.iv.next2596.a = add nuw nsw i64 %indvars.iv2595.a, 1 ; 2 uses
  %exitcond2599.not = icmp eq i64 %indvars.iv.next2596.a, %wide.trip.count2598
  br i1 %exitcond2599.not, label %._crit_edge2430, label %vec.epilog.scalar.ph3185, !llvm.loop !101

.loopexit2252:                                    ; preds = %._crit_edge2430, %bb.hp
  %i.aji = getelementptr inbounds nuw i8, ptr %i.agj, i64 416
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.agj, i64 436
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !170 ; 6 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.agj, i64 424
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !65 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.agj, i64 428
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !168 ; 8 uses
  %i.ajp = load i64, ptr %i.aji, align 8, !tbaa !169 ; 2 uses
  %i.ajq = trunc i64 %i.ajp to i32                ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.agj, i64 432
  %i.ajs = load i32, ptr %i.ajr, align 8, !tbaa !64
  %i.ajt = icmp sgt i32 %i.ajk, %i.ajs
  br i1 %i.ajt, label %bb.hs, label %bb.hq
end_hunk_0
begin_hunk_1_@cfhd_decode:bb.a
  %i.bdb = add nuw nsw i32 %.017542414, 1         ; 2 uses
  %i.bdc = load i32, ptr %i.bcr, align 4, !tbaa !71
  %i.bdd = icmp slt i32 %i.bdb, %i.bdc
  br i1 %i.bdd, label %.lr.ph2416, label %.loopexit2257, !llvm.loop !132

bb.ji:                                            ; preds = %._crit_edge2410
  %i.bde = load i32, ptr %i.asy, align 4, !tbaa !189
  %i.bdf = or i32 %i.bde, 8
  store i32 %i.bdf, ptr %i.asy, align 4, !tbaa !189
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.asz, i64 152
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !63
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.asz, i64 224 ; 2 uses
  %i.bdj = load ptr, ptr %i.bdi, align 8, !tbaa !63
  %i.bdk = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.bdl = sext i32 %i.ayp to i64                 ; 6 uses
  %sext1972 = shl i64 %i.ays, 32
  %i.bdm = ashr exact i64 %sext1972, 32           ; 6 uses
  tail call void %i.bdk(ptr noundef %i.bdj, i64 noundef %i.bdl, ptr noundef %i.azm, i64 noundef %i.bdl, ptr noundef %i.bdh, i64 noundef %i.bdm, i32 noundef %i.ayr, i32 noundef %i.ayn) #11
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.asz, i64 160
  %i.bdo = load ptr, ptr %i.bdn, align 8, !tbaa !63
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.asz, i64 168
  %i.bdq = load ptr, ptr %i.bdp, align 8, !tbaa !63
  %i.bdr = load ptr, ptr %i.auz, align 8, !tbaa !63
  %i.bds = load ptr, ptr %i.c, align 8, !tbaa !185
  tail call void %i.bds(ptr noundef %i.bdr, i64 noundef %i.bdl, ptr noundef %i.bdo, i64 noundef %i.bdm, ptr noundef %i.bdq, i64 noundef %i.bdm, i32 noundef %i.ayr, i32 noundef %i.ayn) #11
  %i.bdt = load ptr, ptr %i.ayi, align 8, !tbaa !63
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.asz, i64 128
  %i.bdv = load ptr, ptr %i.bdu, align 8, !tbaa !63
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.asz, i64 240
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !63
  %i.bdy = load ptr, ptr %i.c, align 8, !tbaa !185
  tail call void %i.bdy(ptr noundef %i.bdx, i64 noundef %i.bdl, ptr noundef %i.bdt, i64 noundef %i.bdl, ptr noundef %i.bdv, i64 noundef %i.bdm, i32 noundef %i.ayr, i32 noundef %i.ayn) #11
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.asz, i64 136
  %i.bea = load ptr, ptr %i.bdz, align 8, !tbaa !63
  %i.beb = getelementptr inbounds nuw i8, ptr %i.asz, i64 144
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !63
  %i.bed = load ptr, ptr %i.ayi, align 8, !tbaa !63
  %i.bee = load ptr, ptr %i.c, align 8, !tbaa !185
  tail call void %i.bee(ptr noundef %i.bed, i64 noundef %i.bdl, ptr noundef %i.bea, i64 noundef %i.bdm, ptr noundef %i.bec, i64 noundef %i.bdm, i32 noundef %i.ayr, i32 noundef %i.ayn) #11
  %i.bef = load i32, ptr %i.q, align 4, !tbaa !160
  %i.beg = icmp eq i32 %i.bef, 1
  br i1 %i.beg, label %.loopexit2257, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.beh = getelementptr inbounds nuw [1024 x i8], ptr %i.asr, i64 %.01773
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 4
  %i.bej = load i32, ptr %i.bei, align 4, !tbaa !71 ; 2 uses
  %i.bek = sdiv i32 %i.bej, 2                     ; 2 uses
  %i.bel = icmp sgt i32 %i.bej, 1
  br i1 %i.bel, label %.lr.ph2422, label %.loopexit2257

.lr.ph2422:                                       ; preds = %bb.jj
  %i.bem = load ptr, ptr %i.auz, align 8, !tbaa !63 ; 4 uses
  %i.ben = load ptr, ptr %i.bdi, align 8, !tbaa !63 ; 4 uses
  %i.beo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01773
  %i.bep = load ptr, ptr %i.beo, align 8, !tbaa !53 ; 7 uses
  %i.beq = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %.01773
  %i.ber = load i32, ptr %i.beq, align 4, !tbaa !49 ; 3 uses
  %i.bes = sdiv i32 %i.ber, 2
  %i.bet = sext i32 %i.bes to i64                 ; 2 uses
  %wide.trip.count.i2055 = zext nneg i32 %i.azj to i64 ; 4 uses
  %i.beu = shl i32 %i.ayp, 1                      ; 2 uses
  %i.bev = sext i32 %i.beu to i64                 ; 3 uses
  %i.bew = sext i32 %i.ber to i64                 ; 2 uses
  %i.bex = shl nsw i64 %i.bew, 1
  %i.bey = add nsw i32 %i.bek, -1
  %i.bez = zext i32 %i.bey to i64                 ; 2 uses
  %i.bfa = mul i64 %i.bex, %i.bez                 ; 2 uses
  %i.bfb = shl nuw nsw i64 %wide.trip.count.i2055, 1 ; 3 uses
  %i.bfc = getelementptr i8, ptr %i.bep, i64 %i.bfa
  %scevgep = getelementptr i8, ptr %i.bfc, i64 %i.bfb ; 3 uses
  %i.bfd = shl nsw i64 %i.bet, 1                  ; 2 uses
  %scevgep2995 = getelementptr i8, ptr %i.bep, i64 %i.bfd ; 3 uses
  %i.bfe = getelementptr i8, ptr %i.bep, i64 %i.bfa
  %i.bff = getelementptr i8, ptr %i.bfe, i64 %i.bfd
  %scevgep2996 = getelementptr i8, ptr %i.bff, i64 %i.bfb ; 3 uses
  %i.bfg = shl nsw i64 %i.bev, 1
  %i.bfh = mul i64 %i.bfg, %i.bez
  %i.bfi = add i64 %i.bfh, %i.bfb                 ; 2 uses
  %scevgep2997 = getelementptr i8, ptr %i.ben, i64 %i.bfi ; 2 uses
  %scevgep2998 = getelementptr i8, ptr %i.bem, i64 %i.bfi ; 2 uses
  %min.iters.check3015 = icmp ult i32 %i.ayr, 4
  %bound0 = icmp ult ptr %i.bep, %scevgep2996
  %bound1 = icmp ult ptr %scevgep2995, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ber, 0
  %i.bfj = or i1 %found.conflict, %stride.check
  %bound02999 = icmp ult ptr %i.bep, %scevgep2997
  %bound13000 = icmp ult ptr %i.ben, %scevgep
  %found.conflict3001 = and i1 %bound02999, %bound13000
  %stride.check3002 = icmp slt i32 %i.beu, 0
  %i.bfk = or i1 %found.conflict3001, %stride.check3002
  %conflict.rdx = or i1 %i.bfj, %i.bfk
  %bound03003 = icmp ult ptr %i.bep, %scevgep2998
  %bound13004 = icmp ult ptr %i.bem, %scevgep
  %found.conflict3005 = and i1 %bound03003, %bound13004
  %conflict.rdx3006 = or i1 %conflict.rdx, %found.conflict3005
  %bound03007 = icmp ult ptr %scevgep2995, %scevgep2997
  %bound13008 = icmp ult ptr %i.ben, %scevgep2996
  %found.conflict3009 = and i1 %bound03007, %bound13008
  %conflict.rdx3010 = or i1 %conflict.rdx3006, %found.conflict3009
  %bound03011 = icmp ult ptr %scevgep2995, %scevgep2998
  %bound13012 = icmp ult ptr %i.bem, %scevgep2996
  %found.conflict3013 = and i1 %bound03011, %bound13012
  %conflict.rdx3014 = or i1 %conflict.rdx3010, %found.conflict3013
  %n.vec3017 = and i64 %wide.trip.count.i2055, 2147483640 ; 3 uses
  %cmp.n3024 = icmp eq i64 %n.vec3017, %wide.trip.count.i2055
  br label %bb.jk

bb.jk:                                            ; preds = %.lr.ph2422, %interlaced_vertical_filter.exit2067
  %.017532420 = phi i32 [ 0, %.lr.ph2422 ], [ %i.bgy, %interlaced_vertical_filter.exit2067 ]
  %.317642419 = phi ptr [ %i.bep, %.lr.ph2422 ], [ %i.bgx, %interlaced_vertical_filter.exit2067 ] ; 4 uses
  %.217692418 = phi ptr [ %i.bem, %.lr.ph2422 ], [ %i.bgw, %interlaced_vertical_filter.exit2067 ] ; 3 uses
  %.217722417 = phi ptr [ %i.ben, %.lr.ph2422 ], [ %i.bgv, %interlaced_vertical_filter.exit2067 ] ; 3 uses
  %invariant.gep.i2056 = getelementptr [2 x i8], ptr %.317642419, i64 %i.bet ; 2 uses
  %brmerge3358 = select i1 %min.iters.check3015, i1 true, i1 %conflict.rdx3014
  br i1 %brmerge3358, label %scalar.ph.preheader, label %vector.body3018

vector.body3018:                                  ; preds = %bb.jk, %vector.body3018
  %index3019 = phi i64 [ %index.next3022, %vector.body3018 ], [ 0, %bb.jk ] ; 5 uses
  %i.bfl = getelementptr inbounds nuw [2 x i8], ptr %.217722417, i64 %index3019
  %wide.load3020 = load <8 x i16>, ptr %i.bfl, align 2, !tbaa !66, !alias.scope !206
  %i.bfm = sext <8 x i16> %wide.load3020 to <8 x i32> ; 2 uses
  %i.bfn = getelementptr inbounds nuw [2 x i8], ptr %.217692418, i64 %index3019
  %wide.load3021 = load <8 x i16>, ptr %i.bfn, align 2, !tbaa !66, !alias.scope !207
  %i.bfo = sext <8 x i16> %wide.load3021 to <8 x i32> ; 2 uses
  %i.bfp = sub nsw <8 x i32> %i.bfm, %i.bfo       ; 2 uses
  %i.bfq = sdiv <8 x i32> %i.bfp, splat (i32 2)   ; 2 uses
  %i.bfr = add nsw <8 x i32> %i.bfo, %i.bfm       ; 2 uses
  %i.bfs = sdiv <8 x i32> %i.bfr, splat (i32 2)   ; 2 uses
  %i.bft = icmp ult <8 x i32> %i.bfq, splat (i32 1024)
  %i.bfu = icmp slt <8 x i32> %i.bfp, splat (i32 -1)
  %i.bfv = select <8 x i1> %i.bfu, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.bfw = select <8 x i1> %i.bft, <8 x i32> %i.bfq, <8 x i32> %i.bfv
  %i.bfx = trunc nsw <8 x i32> %i.bfw to <8 x i16>
  %i.bfy = getelementptr inbounds nuw [2 x i8], ptr %.317642419, i64 %index3019
  store <8 x i16> %i.bfx, ptr %i.bfy, align 2, !tbaa !66, !alias.scope !208, !noalias !209
  %i.bfz = icmp ult <8 x i32> %i.bfs, splat (i32 1024)
  %i.bga = icmp slt <8 x i32> %i.bfr, splat (i32 -1)
  %i.bgb = select <8 x i1> %i.bga, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.bgc = select <8 x i1> %i.bfz, <8 x i32> %i.bfs, <8 x i32> %i.bgb
  %i.bgd = trunc nsw <8 x i32> %i.bgc to <8 x i16>
  %i.bge = getelementptr [2 x i8], ptr %invariant.gep.i2056, i64 %index3019
  store <8 x i16> %i.bgd, ptr %i.bge, align 2, !tbaa !66, !alias.scope !210, !noalias !211
  %index.next3022 = add nuw i64 %index3019, 8     ; 2 uses
  %i.bgf = icmp eq i64 %index.next3022, %n.vec3017
  br i1 %i.bgf, label %middle.block3023, label %vector.body3018, !llvm.loop !138

middle.block3023:                                 ; preds = %vector.body3018
  br i1 %cmp.n3024, label %interlaced_vertical_filter.exit2067, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.jk, %middle.block3023
  %indvars.iv.i2057.ph = phi i64 [ %n.vec3017, %middle.block3023 ], [ 0, %bb.jk ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i2057 = phi i64 [ %indvars.iv.next.i2065, %scalar.ph ], [ %indvars.iv.i2057.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bgg = getelementptr inbounds nuw [2 x i8], ptr %.217722417, i64 %indvars.iv.i2057
  %i.bgh = load i16, ptr %i.bgg, align 2, !tbaa !66
  %i.bgi = sext i16 %i.bgh to i32                 ; 2 uses
  %i.bgj = getelementptr inbounds nuw [2 x i8], ptr %.217692418, i64 %indvars.iv.i2057
  %i.bgk = load i16, ptr %i.bgj, align 2, !tbaa !66
  %i.bgl = sext i16 %i.bgk to i32                 ; 2 uses
  %i.bgm = sub nsw i32 %i.bgi, %i.bgl             ; 2 uses
  %i.bgn = sdiv i32 %i.bgm, 2                     ; 2 uses
  %i.bgo = add nsw i32 %i.bgl, %i.bgi             ; 2 uses
  %i.bgp = sdiv i32 %i.bgo, 2                     ; 2 uses
  %.not.i17.i2058 = icmp ult i32 %i.bgn, 1024
  %isnotneg.inv.i18.i2059 = icmp slt i32 %i.bgm, -1
  %i.bgq = select i1 %isnotneg.inv.i18.i2059, i32 0, i32 1023
  %.0.i19.i2060 = select i1 %.not.i17.i2058, i32 %i.bgn, i32 %i.bgq
  %i.bgr = trunc nsw i32 %.0.i19.i2060 to i16
  %i.bgs = getelementptr inbounds nuw [2 x i8], ptr %.317642419, i64 %indvars.iv.i2057
  store i16 %i.bgr, ptr %i.bgs, align 2, !tbaa !66
  %.not.i.i2061 = icmp ult i32 %i.bgp, 1024
  %isnotneg.inv.i.i2062 = icmp slt i32 %i.bgo, -1
  %i.bgt = select i1 %isnotneg.inv.i.i2062, i32 0, i32 1023
  %.0.i.i2063 = select i1 %.not.i.i2061, i32 %i.bgp, i32 %i.bgt
  %i.bgu = trunc nsw i32 %.0.i.i2063 to i16
  %gep.i2064 = getelementptr [2 x i8], ptr %invariant.gep.i2056, i64 %indvars.iv.i2057
  store i16 %i.bgu, ptr %gep.i2064, align 2, !tbaa !66
  %indvars.iv.next.i2065 = add nuw nsw i64 %indvars.iv.i2057, 1 ; 2 uses
  %exitcond.not.i2066 = icmp eq i64 %indvars.iv.next.i2065, %wide.trip.count.i2055
  br i1 %exitcond.not.i2066, label %interlaced_vertical_filter.exit2067, label %scalar.ph, !llvm.loop !139

interlaced_vertical_filter.exit2067:              ; preds = %scalar.ph, %middle.block3023
  %i.bgv = getelementptr inbounds [2 x i8], ptr %.217722417, i64 %i.bev
  %i.bgw = getelementptr inbounds [2 x i8], ptr %.217692418, i64 %i.bev
  %i.bgx = getelementptr inbounds [2 x i8], ptr %.317642419, i64 %i.bew
  %i.bgy = add nuw nsw i32 %.017532420, 1         ; 2 uses
  %exitcond2591.not = icmp eq i32 %i.bgy, %i.bek
  br i1 %exitcond2591.not, label %.loopexit2257, label %bb.jk, !llvm.loop !140

.loopexit2257:                                    ; preds = %.lr.ph2416, %interlaced_vertical_filter.exit2067, %bb.jh, %bb.jj, %bb.jb, %bb.ji
  %indvars.iv.next2593 = add nuw nsw i64 %indvars.iv2592, 1 ; 2 uses
  %i.bgz = load i32, ptr %i.y, align 8, !tbaa !43 ; 2 uses
  %i.bha = sext i32 %i.bgz to i64
  %i.bhb = icmp slt i64 %indvars.iv.next2593, %i.bha
  br i1 %i.bhb, label %bb.il, label %.loopexit2715, !llvm.loop !141

.loopexit2715:                                    ; preds = %.loopexit2257, %.loopexit2250, %bb.ij, %bb.hh, %bb.ik
  %i.bhc = phi i32 [ %i.adk, %bb.hh ], [ %i.adk, %bb.ij ], [ %i.adk, %bb.ik ], [ %i.asg, %.loopexit2250 ], [ %i.bgz, %.loopexit2257 ] ; 2 uses
  %.pr2221 = load i32, ptr %i.r, align 8, !tbaa !35
  %i.bhd = icmp eq i32 %.pr2221, 2
  br i1 %i.bhd, label %bb.jl, label %.loopexit2247

bb.jl:                                            ; preds = %.loopexit2715
  %i.bhe = load i32, ptr %i.q, align 4, !tbaa !160
  %i.bhf = icmp eq i32 %i.bhe, 1
  %i.bhg = icmp sgt i32 %i.bhc, 0
  %or.cond2787 = and i1 %i.bhf, %i.bhg
  br i1 %or.cond2787, label %.lr.ph2469.a, label %.loopexit2247

.lr.ph2469.a:                                     ; preds = %bb.jl
  %i.bhh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.b, i64 42128 ; 3 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.b, i64 46272
  br label %bb.jm

bb.jm:                                            ; preds = %.lr.ph2469.a, %.loopexit
  %i.bhn = phi i32 [ %i.bhc, %.lr.ph2469.a ], [ %i.bml, %.loopexit ] ; 3 uses
  %indvars.iv2612 = phi i64 [ 0, %.lr.ph2469.a ], [ %indvars.iv.next2613, %.loopexit ] ; 7 uses
  %i.bho = load i32, ptr %i.acr, align 8, !tbaa !56
  %i.bhp = icmp eq i32 %i.bho, 145                ; 2 uses
  br i1 %i.bhp, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.bhq = load i32, ptr %i.bhh, align 4, !tbaa !49 ; 2 uses
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  %i.bhr = icmp eq i64 %indvars.iv2612, 1
  %i.bhs = icmp eq i64 %indvars.iv2612, 2
  %i.bht = select i1 %i.bhs, i64 1, i64 %indvars.iv2612
  %i.bhu = select i1 %i.bhr, i64 2, i64 %i.bht    ; 2 uses
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhh, i64 %i.bhu
  %i.bhw = load i32, ptr %i.bhv, align 4, !tbaa !49 ; 2 uses
  %i.bhx = sdiv i32 %i.bhw, 2
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.bhy = phi i32 [ %i.bhq, %bb.jn ], [ %i.bhw, %bb.jo ] ; 4 uses
  %.01747.in = phi i32 [ %i.bhq, %bb.jn ], [ %i.bhx, %bb.jo ]
  %.01745 = phi i64 [ 0, %bb.jn ], [ %i.bhu, %bb.jo ] ; 4 uses
  %.01747 = sext i32 %.01747.in to i64
  %i.bhz = getelementptr inbounds nuw [1024 x i8], ptr %i.bhi, i64 %indvars.iv2612 ; 9 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 820
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !170 ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhz, i64 808
  %i.bid = load i32, ptr %i.bic, align 8, !tbaa !65 ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bhz, i64 812
  %i.bif = load i32, ptr %i.bie, align 4, !tbaa !168 ; 5 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhz, i64 816
  %i.bih = load i32, ptr %i.big, align 8, !tbaa !64
  %i.bii = icmp sgt i32 %i.bib, %i.bih
  %i.bij = icmp sgt i32 %i.bif, %i.bid
  %or.cond2025 = select i1 %i.bii, i1 true, i1 %i.bij
  br i1 %or.cond2025, label %bb.js, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bik = icmp slt i32 %i.bif, 3
  %i.bil = icmp slt i32 %i.bib, 3
  %or.cond106 = or i1 %i.bil, %i.bik
  br i1 %or.cond106, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.bim = shl nuw nsw i32 %i.bif, 1              ; 3 uses
  %i.bin = load i32, ptr %i.bhz, align 8, !tbaa !70
  %i.bio = icmp sgt i32 %i.bim, %i.bin
  br i1 %i.bio, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr, %bb.jq, %bb.jp
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2178

bb.jt:                                            ; preds = %bb.jr
  %i.bip = load i32, ptr %i.bhj, align 4, !tbaa !42
  %.not1982 = icmp eq i32 %i.bip, 0
  br i1 %.not1982, label %bb.jz, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.biq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01745
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !53 ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bhz, i64 240
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !63
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bhz, i64 248
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !63
  br i1 %i.bhp, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.biw = shl nuw nsw i32 %i.bib, 1
  %i.bix = load i32, ptr %i.bhk, align 4, !tbaa !186
  %i.biy = sdiv i32 %i.bix, 2
  %i.biz = icmp sgt i32 %i.biw, %i.biy
  br i1 %i.biz, label %.thread2178, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.bja = icmp samesign ugt i64 %indvars.iv2612, 1
  %i.bjb = shl nuw i64 %indvars.iv2612, 1
  %spec.select2026.idx = and i64 %i.bjb, 2
  %spec.select2026 = getelementptr inbounds nuw i8, ptr %i.bir, i64 %spec.select2026.idx
  %i.bjc = ashr i32 %i.bhy, 1
  %i.bjd = sext i32 %i.bjc to i64
  %.1.ph.idx = select i1 %i.bja, i64 %i.bjd, i64 0
  %.1.ph = getelementptr inbounds [2 x i8], ptr %spec.select2026, i64 %.1.ph.idx
  %i.bje = load i32, ptr %i.bhl, align 8, !tbaa !187
  %i.bjf = sdiv i32 %i.bje, 2
  %i.bjg = icmp sgt i32 %i.bim, %i.bjf
  br i1 %i.bjg, label %.thread2178, label %bb.jx

bb.jx:                                            ; preds = %bb.ju, %bb.jw
  %.12225 = phi ptr [ %.1.ph, %bb.jw ], [ %i.bir, %bb.ju ]
  %i.bjh = getelementptr inbounds nuw [1024 x i8], ptr %i.bhi, i64 %.01745
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 4 ; 2 uses
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !71
  %i.bjk = icmp sgt i32 %i.bjj, 0
  br i1 %i.bjk, label %.lr.ph2460, label %.loopexit

.lr.ph2460:                                       ; preds = %bb.jx
  %i.bjl = sext i32 %i.bid to i64                 ; 2 uses
  br label %bb.jy

bb.jy:                                            ; preds = %.lr.ph2460, %bb.jy
  %.017442458 = phi i32 [ 0, %.lr.ph2460 ], [ %i.bjr, %bb.jy ]
  %.22457 = phi ptr [ %.12225, %.lr.ph2460 ], [ %i.bjq, %bb.jy ] ; 2 uses
  %.017492456 = phi ptr [ %i.biv, %.lr.ph2460 ], [ %i.bjp, %bb.jy ] ; 2 uses
  %.017512455 = phi ptr [ %i.bit, %.lr.ph2460 ], [ %i.bjo, %bb.jy ] ; 2 uses
  %i.bjm = load ptr, ptr %i.bhm, align 8, !tbaa !188
  %i.bjn = load i32, ptr %i.h, align 8, !tbaa !50
  tail call void %i.bjm(ptr noundef %.22457, ptr noundef %.017512455, ptr noundef %.017492456, i32 noundef %i.bif, i32 noundef %i.bjn) #11
  %i.bjo = getelementptr inbounds [2 x i8], ptr %.017512455, i64 %i.bjl
  %i.bjp = getelementptr inbounds [2 x i8], ptr %.017492456, i64 %i.bjl
  %i.bjq = getelementptr inbounds [2 x i8], ptr %.22457, i64 %.01747
  %i.bjr = add nuw nsw i32 %.017442458, 1         ; 2 uses
  %i.bjs = load i32, ptr %i.bji, align 4, !tbaa !71
  %i.bjt = icmp slt i32 %i.bjr, %i.bjs
  br i1 %i.bjt, label %bb.jy, label %.loopexit.loopexit2479, !llvm.loop !142

bb.jz:                                            ; preds = %bb.jt
  %i.bju = getelementptr inbounds nuw [1024 x i8], ptr %i.bhi, i64 %.01745
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 4
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !71 ; 2 uses
  %i.bjx = sdiv i32 %i.bjw, 2                     ; 2 uses
  %i.bjy = icmp sgt i32 %i.bjw, 1
  br i1 %i.bjy, label %.lr.ph2466, label %.loopexit

.lr.ph2466:                                       ; preds = %bb.jz
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bhz, i64 248
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !63 ; 4 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bhz, i64 240
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !63 ; 4 uses
  %i.bkd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01745
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !53 ; 7 uses
  %i.bkf = sdiv i32 %i.bhy, 2
  %i.bkg = sext i32 %i.bkf to i64                 ; 2 uses
  %wide.trip.count.i2068 = zext nneg i32 %i.bim to i64 ; 4 uses
  %i.bkh = shl i32 %i.bid, 1
  %i.bki = zext i32 %i.bkh to i64                 ; 3 uses
  %i.bkj = sext i32 %i.bhy to i64                 ; 2 uses
  %i.bkk = shl nsw i64 %i.bkj, 1
  %i.bkl = add nsw i32 %i.bjx, -1
  %i.bkm = zext i32 %i.bkl to i64                 ; 2 uses
  %i.bkn = mul i64 %i.bkk, %i.bkm                 ; 2 uses
  %i.bko = shl nuw nsw i64 %wide.trip.count.i2068, 1 ; 3 uses
  %i.bkp = getelementptr i8, ptr %i.bke, i64 %i.bkn
  %scevgep3198 = getelementptr i8, ptr %i.bkp, i64 %i.bko ; 3 uses
  %i.bkq = shl nsw i64 %i.bkg, 1                  ; 2 uses
  %scevgep3199 = getelementptr i8, ptr %i.bke, i64 %i.bkq ; 3 uses
  %i.bkr = getelementptr i8, ptr %i.bke, i64 %i.bkn
  %i.bks = getelementptr i8, ptr %i.bkr, i64 %i.bkq
  %scevgep3200 = getelementptr i8, ptr %i.bks, i64 %i.bko ; 3 uses
  %i.bkt = shl nuw nsw i64 %i.bki, 1
  %i.bku = mul i64 %i.bkt, %i.bkm
  %i.bkv = add i64 %i.bku, %i.bko                 ; 2 uses
  %scevgep3201 = getelementptr i8, ptr %i.bkc, i64 %i.bkv ; 2 uses
  %scevgep3202 = getelementptr i8, ptr %i.bka, i64 %i.bkv ; 2 uses
  %min.iters.check3224 = icmp ult i32 %i.bif, 4
  %bound03203 = icmp ult ptr %i.bke, %scevgep3200
  %bound13204 = icmp ult ptr %scevgep3199, %scevgep3198
  %found.conflict3205 = and i1 %bound03203, %bound13204
  %stride.check3206 = icmp slt i32 %i.bhy, 0
  %i.bkw = or i1 %found.conflict3205, %stride.check3206
  %bound03207 = icmp ult ptr %i.bke, %scevgep3201
  %bound13208 = icmp ult ptr %i.bkc, %scevgep3198
  %found.conflict3209 = and i1 %bound03207, %bound13208
  %conflict.rdx3210 = or i1 %i.bkw, %found.conflict3209
  %bound03211 = icmp ult ptr %i.bke, %scevgep3202
  %bound13212 = icmp ult ptr %i.bka, %scevgep3198
  %found.conflict3213 = and i1 %bound03211, %bound13212
  %conflict.rdx3214 = or i1 %conflict.rdx3210, %found.conflict3213
  %bound03215 = icmp ult ptr %scevgep3199, %scevgep3201
  %bound13216 = icmp ult ptr %i.bkc, %scevgep3200
  %found.conflict3217 = and i1 %bound03215, %bound13216
  %conflict.rdx3218 = or i1 %conflict.rdx3214, %found.conflict3217
  %bound03219 = icmp ult ptr %scevgep3199, %scevgep3202
  %bound13220 = icmp ult ptr %i.bka, %scevgep3200
  %found.conflict3221 = and i1 %bound03219, %bound13220
  %conflict.rdx3222 = or i1 %conflict.rdx3218, %found.conflict3221
  %n.vec3226 = and i64 %wide.trip.count.i2068, 2147483640 ; 3 uses
  %cmp.n3233 = icmp eq i64 %n.vec3226, %wide.trip.count.i2068
  br label %bb.ka

bb.ka:                                            ; preds = %.lr.ph2466, %interlaced_vertical_filter.exit2080
  %.02464 = phi i32 [ 0, %.lr.ph2466 ], [ %i.bmk, %interlaced_vertical_filter.exit2080 ]
  %.32463 = phi ptr [ %i.bke, %.lr.ph2466 ], [ %i.bmj, %interlaced_vertical_filter.exit2080 ] ; 4 uses
  %.117502462 = phi ptr [ %i.bka, %.lr.ph2466 ], [ %i.bmi, %interlaced_vertical_filter.exit2080 ] ; 3 uses
  %.117522461 = phi ptr [ %i.bkc, %.lr.ph2466 ], [ %i.bmh, %interlaced_vertical_filter.exit2080 ] ; 3 uses
  %invariant.gep.i2069 = getelementptr [2 x i8], ptr %.32463, i64 %i.bkg ; 2 uses
  %brmerge3359 = select i1 %min.iters.check3224, i1 true, i1 %conflict.rdx3222
  br i1 %brmerge3359, label %scalar.ph3223.preheader, label %vector.body3227

vector.body3227:                                  ; preds = %bb.ka, %vector.body3227
  %index3228 = phi i64 [ %index.next3231, %vector.body3227 ], [ 0, %bb.ka ] ; 5 uses
  %i.bkx = getelementptr inbounds nuw [2 x i8], ptr %.117522461, i64 %index3228
  %wide.load3229 = load <8 x i16>, ptr %i.bkx, align 2, !tbaa !66, !alias.scope !212
  %i.bky = sext <8 x i16> %wide.load3229 to <8 x i32> ; 2 uses
  %i.bkz = getelementptr inbounds nuw [2 x i8], ptr %.117502462, i64 %index3228
  %wide.load3230 = load <8 x i16>, ptr %i.bkz, align 2, !tbaa !66, !alias.scope !213
  %i.bla = sext <8 x i16> %wide.load3230 to <8 x i32> ; 2 uses
  %i.blb = sub nsw <8 x i32> %i.bky, %i.bla       ; 2 uses
  %i.blc = sdiv <8 x i32> %i.blb, splat (i32 2)   ; 2 uses
  %i.bld = add nsw <8 x i32> %i.bla, %i.bky       ; 2 uses
  %i.ble = sdiv <8 x i32> %i.bld, splat (i32 2)   ; 2 uses
  %i.blf = icmp ult <8 x i32> %i.blc, splat (i32 1024)
  %i.blg = icmp slt <8 x i32> %i.blb, splat (i32 -1)
  %i.blh = select <8 x i1> %i.blg, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.bli = select <8 x i1> %i.blf, <8 x i32> %i.blc, <8 x i32> %i.blh
  %i.blj = trunc nsw <8 x i32> %i.bli to <8 x i16>
  %i.blk = getelementptr inbounds nuw [2 x i8], ptr %.32463, i64 %index3228
  store <8 x i16> %i.blj, ptr %i.blk, align 2, !tbaa !66, !alias.scope !214, !noalias !215
  %i.bll = icmp ult <8 x i32> %i.ble, splat (i32 1024)
  %i.blm = icmp slt <8 x i32> %i.bld, splat (i32 -1)
  %i.bln = select <8 x i1> %i.blm, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.blo = select <8 x i1> %i.bll, <8 x i32> %i.ble, <8 x i32> %i.bln
  %i.blp = trunc nsw <8 x i32> %i.blo to <8 x i16>
  %i.blq = getelementptr [2 x i8], ptr %invariant.gep.i2069, i64 %index3228
  store <8 x i16> %i.blp, ptr %i.blq, align 2, !tbaa !66, !alias.scope !216, !noalias !217
  %index.next3231 = add nuw i64 %index3228, 8     ; 2 uses
  %i.blr = icmp eq i64 %index.next3231, %n.vec3226
  br i1 %i.blr, label %middle.block3232, label %vector.body3227, !llvm.loop !148

middle.block3232:                                 ; preds = %vector.body3227
  br i1 %cmp.n3233, label %interlaced_vertical_filter.exit2080, label %scalar.ph3223.preheader

scalar.ph3223.preheader:                          ; preds = %bb.ka, %middle.block3232
  %indvars.iv.i2070.ph = phi i64 [ %n.vec3226, %middle.block3232 ], [ 0, %bb.ka ]
  br label %scalar.ph3223

scalar.ph3223:                                    ; preds = %scalar.ph3223.preheader, %scalar.ph3223
  %indvars.iv.i2070 = phi i64 [ %indvars.iv.next.i2078, %scalar.ph3223 ], [ %indvars.iv.i2070.ph, %scalar.ph3223.preheader ] ; 5 uses
  %i.bls = getelementptr inbounds nuw [2 x i8], ptr %.117522461, i64 %indvars.iv.i2070
  %i.blt = load i16, ptr %i.bls, align 2, !tbaa !66
  %i.blu = sext i16 %i.blt to i32                 ; 2 uses
  %i.blv = getelementptr inbounds nuw [2 x i8], ptr %.117502462, i64 %indvars.iv.i2070
  %i.blw = load i16, ptr %i.blv, align 2, !tbaa !66
  %i.blx = sext i16 %i.blw to i32                 ; 2 uses
  %i.bly = sub nsw i32 %i.blu, %i.blx             ; 2 uses
  %i.blz = sdiv i32 %i.bly, 2                     ; 2 uses
  %i.bma = add nsw i32 %i.blx, %i.blu             ; 2 uses
  %i.bmb = sdiv i32 %i.bma, 2                     ; 2 uses
  %.not.i17.i2071 = icmp ult i32 %i.blz, 1024
  %isnotneg.inv.i18.i2072 = icmp slt i32 %i.bly, -1
  %i.bmc = select i1 %isnotneg.inv.i18.i2072, i32 0, i32 1023
  %.0.i19.i2073 = select i1 %.not.i17.i2071, i32 %i.blz, i32 %i.bmc
  %i.bmd = trunc nsw i32 %.0.i19.i2073 to i16
  %i.bme = getelementptr inbounds nuw [2 x i8], ptr %.32463, i64 %indvars.iv.i2070
  store i16 %i.bmd, ptr %i.bme, align 2, !tbaa !66
  %.not.i.i2074 = icmp ult i32 %i.bmb, 1024
  %isnotneg.inv.i.i2075 = icmp slt i32 %i.bma, -1
  %i.bmf = select i1 %isnotneg.inv.i.i2075, i32 0, i32 1023
  %.0.i.i2076 = select i1 %.not.i.i2074, i32 %i.bmb, i32 %i.bmf
  %i.bmg = trunc nsw i32 %.0.i.i2076 to i16
  %gep.i2077 = getelementptr [2 x i8], ptr %invariant.gep.i2069, i64 %indvars.iv.i2070
  store i16 %i.bmg, ptr %gep.i2077, align 2, !tbaa !66
  %indvars.iv.next.i2078 = add nuw nsw i64 %indvars.iv.i2070, 1 ; 2 uses
  %exitcond.not.i2079 = icmp eq i64 %indvars.iv.next.i2078, %wide.trip.count.i2068
  br i1 %exitcond.not.i2079, label %interlaced_vertical_filter.exit2080, label %scalar.ph3223, !llvm.loop !149

interlaced_vertical_filter.exit2080:              ; preds = %scalar.ph3223, %middle.block3232
  %i.bmh = getelementptr inbounds nuw [2 x i8], ptr %.117522461, i64 %i.bki
  %i.bmi = getelementptr inbounds nuw [2 x i8], ptr %.117502462, i64 %i.bki
  %i.bmj = getelementptr inbounds [2 x i8], ptr %.32463, i64 %i.bkj
  %i.bmk = add nuw nsw i32 %.02464, 1             ; 2 uses
  %exitcond2611.not = icmp eq i32 %i.bmk, %i.bjx
  br i1 %exitcond2611.not, label %.loopexit, label %bb.ka, !llvm.loop !150

.loopexit.loopexit2479:                           ; preds = %bb.jy
  %.pre2619 = load i32, ptr %i.y, align 8, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %interlaced_vertical_filter.exit2080, %.loopexit.loopexit2479, %bb.jx, %bb.jz
  %i.bml = phi i32 [ %.pre2619, %.loopexit.loopexit2479 ], [ %i.bhn, %bb.jz ], [ %i.bhn, %bb.jx ], [ %i.bhn, %interlaced_vertical_filter.exit2080 ] ; 2 uses
  %indvars.iv.next2613 = add nuw nsw i64 %indvars.iv2612, 1 ; 2 uses
  %i.bmm = sext i32 %i.bml to i64
  %i.bmn = icmp slt i64 %indvars.iv.next2613, %i.bmm
  br i1 %i.bmn, label %bb.jm, label %.loopexit2247, !llvm.loop !151

.loopexit2247:                                    ; preds = %.loopexit, %._crit_edge2393, %bb.jl, %.loopexit2715
  %i.bmo = load i32, ptr %i.acr, align 8, !tbaa !56
  %i.bmp = icmp eq i32 %i.bmo, 145
  br i1 %i.bmp, label %bb.kb, label %.critedge

bb.kb:                                            ; preds = %.loopexit2247
  %i.bmq = load i32, ptr %i.h, align 8, !tbaa !50
  tail call fastcc void @process_bayer(ptr noundef %1, i32 noundef %i.bmq)
  br label %.critedge

.critedge:                                        ; preds = %.loopexit2247, %bb.kb
  %i.bmr = icmp slt i32 %.01835.lcssa, 0
  br i1 %i.bmr, label %.thread2178, label %bb.kc

bb.kc:                                            ; preds = %.critedge
  store i32 1, ptr %2, align 4, !tbaa !49
  %i.bms = load i32, ptr %i.ab, align 8, !tbaa !166
  br label %.thread2178

.thread2178:                                      ; preds = %.thread2146, %bb.eb, %bb.ep, %bb.ct, %bb.cs, %bb.eo, %bb.ev, %bb.dq, %bb.ds, %bb.do, %bb.ea, %.thread2144, %bb.dw, %.preheader2263, %bb.gt, %bb.gu, %bb.gv, %.thread2184.loopexit, %bb.gw, %bb.gx, %.thread2184.loopexit.1, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %.thread2184.loopexit.3, %bb.hd, %bb.he, %.thread2184.loopexit.4, %bb.hf, %bb.hg, %.preheader2263.us, %bb.gi, %bb.gj, %bb.gk, %.thread2184.us.us, %bb.gl, %bb.gm, %bb.gn, %bb.go, %bb.gp, %.thread2184.us.us.3, %bb.gq, %bb.gr, %bb.jf, %bb.jg, %bb.ib, %bb.ic, %bb.jv, %bb.jw, %bb.js, %bb.ei, %bb.ek, %bb.eg, %bb.ee, %bb.ck, %bb.cf, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.az, %bb.ax, %bb.ar, %bb.ak, %bb.ah, %bb.ag, %bb.y, %bb.w, %bb.u, %bb.er, %bb.fv, %bb.fp, %bb.eu, %bb.ir, %bb.iv, %bb.iz, %bb.hs, %bb.hw, %bb.gs, %bb.ho, %bb.gg, %bb.dn, %.critedge, %bb.kc
  %.61829 = phi i32 [ -1163346256, %bb.u ], [ %.01835.lcssa, %.critedge ], [ %i.bms, %bb.kc ], [ -22, %bb.ek ], [ -1094995529, %bb.ib ], [ -22, %bb.er ], [ -22, %bb.fv ], [ -22, %bb.fp ], [ %i.kh, %bb.dn ], [ -22, %bb.ir ], [ -22, %bb.iv ], [ -22, %bb.iz ], [ -22, %bb.eg ], [ -1094995529, %.preheader2263.us ], [ -22, %bb.hs ], [ -22, %bb.hw ], [ -22, %bb.js ], [ -1094995529, %.preheader2263 ], [ -22, %bb.gs ], [ -22, %bb.ho ], [ -1094995529, %bb.jf ], [ -22, %bb.ee ], [ -22, %bb.gg ], [ -22, %bb.ei ], [ -22, %bb.eu ], [ -1163346256, %bb.ck ], [ -22, %bb.cf ], [ -22, %bb.bw ], [ -22, %bb.bt ], [ -22, %bb.bq ], [ -22, %bb.bn ], [ -1094995529, %bb.bk ], [ -1163346256, %bb.az ], [ -22, %bb.ax ], [ -22, %bb.ar ], [ -22, %bb.ak ], [ -22, %bb.ah ], [ -22, %bb.ag ], [ -22, %bb.y ], [ -1163346256, %bb.w ], [ -1094995529, %bb.jv ], [ -1094995529, %bb.jw ], [ -1094995529, %bb.ic ], [ -1094995529, %bb.jg ], [ -1094995529, %bb.gr ], [ -1094995529, %bb.gq ], [ -1094995529, %.thread2184.us.us.3 ], [ -1094995529, %bb.gp ], [ -1094995529, %bb.go ], [ -1094995529, %bb.gn ], [ -1094995529, %bb.gm ], [ -1094995529, %bb.gl ], [ -1094995529, %.thread2184.us.us ], [ -1094995529, %bb.gk ], [ -1094995529, %bb.gj ], [ -1094995529, %bb.gi ], [ -1094995529, %bb.hg ], [ -1094995529, %bb.hf ], [ -1094995529, %.thread2184.loopexit.4 ], [ -1094995529, %bb.he ], [ -1094995529, %bb.hd ], [ -1094995529, %.thread2184.loopexit.3 ], [ -1094995529, %bb.hc ], [ -1094995529, %bb.hb ], [ -1094995529, %bb.ha ], [ -1094995529, %bb.gz ], [ -1094995529, %bb.gy ], [ -1094995529, %.thread2184.loopexit.1 ], [ -1094995529, %bb.gx ], [ -1094995529, %bb.gw ], [ -1094995529, %.thread2184.loopexit ], [ -1094995529, %bb.gv ], [ -1094995529, %bb.gu ], [ -1094995529, %bb.gt ], [ -1094995529, %bb.eb ], [ -1094995529, %.thread2146 ], [ -1094995529, %bb.eo ], [ -1094995529, %bb.ev ], [ -1094995529, %bb.cs ], [ -1094995529, %bb.ct ], [ -1094995529, %bb.ep ], [ %i.kl, %bb.do ], [ %i.kt, %bb.ds ], [ %i.lb, %bb.dw ], [ -1163346256, %.thread2144 ], [ -1163346256, %bb.ea ], [ -1094995529, %bb.dq ]
  ret i32 %.61829
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cfhd_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call fastcc void @free_buffers(ptr noundef %i.b)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_buffers(ptr noundef %0) unnamed_addr #0 {
.preheader35:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42144
  tail call void @av_freep(ptr noundef nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42152
  tail call void @av_freep(ptr noundef nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42160
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 42168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 42504
  store i8 0, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42472
  store i8 0, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 42440
  store i8 0, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 42408
  store i8 0, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 42632
  store i8 0, ptr %i.i, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42600
  store i8 0, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 42568
  store i8 0, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 42536
  store i8 0, ptr %i.l, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 42760
  store i8 0, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 42728
  store i8 0, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 42696
  store i8 0, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 42664
  store i8 0, ptr %i.p, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 42888
  store i8 0, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 42856
  store i8 0, ptr %i.r, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 42824
  store i8 0, ptr %i.s, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 42792
  store i8 0, ptr %i.t, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 43016
  store i8 0, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 42984
  store i8 0, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 42952
  store i8 0, ptr %i.w, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 42920
  store i8 0, ptr %i.x, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 43144
  store i8 0, ptr %i.y, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 43112
  store i8 0, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 43080
  store i8 0, ptr %i.aa, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 43048
  store i8 0, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 43168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.d, i8 0, i64 216, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 43176
  tail call void @av_freep(ptr noundef nonnull %i.ad) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 43184
  store i32 0, ptr %i.ae, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 43192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 43528
  store i8 0, ptr %i.ag, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 43496
  store i8 0, ptr %i.ah, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 43464
  store i8 0, ptr %i.ai, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 43432
  store i8 0, ptr %i.aj, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 43656
  store i8 0, ptr %i.ak, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 43624
  store i8 0, ptr %i.al, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 43592
  store i8 0, ptr %i.am, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 43560
  store i8 0, ptr %i.an, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 43784
  store i8 0, ptr %i.ao, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 43752
  store i8 0, ptr %i.ap, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 43720
  store i8 0, ptr %i.aq, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 43688
  store i8 0, ptr %i.ar, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 43912
  store i8 0, ptr %i.as, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 43880
  store i8 0, ptr %i.at, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 43848
  store i8 0, ptr %i.au, align 8, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 43816
  store i8 0, ptr %i.av, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44040
  store i8 0, ptr %i.aw, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44008
  store i8 0, ptr %i.ax, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 43976
  store i8 0, ptr %i.ay, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 43944
  store i8 0, ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44168
  store i8 0, ptr %i.ba, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44136
  store i8 0, ptr %i.bb, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44104
  store i8 0, ptr %i.bc, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44072
  store i8 0, ptr %i.bd, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.af, i8 0, i64 216, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.be) #11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44200
  tail call void @av_freep(ptr noundef nonnull %i.bf) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44208
  store i32 0, ptr %i.bg, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44216
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44552
  store i8 0, ptr %i.bi, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 44520
  store i8 0, ptr %i.bj, align 8, !tbaa !69
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44488
  store i8 0, ptr %i.bk, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44456
  store i8 0, ptr %i.bl, align 8, !tbaa !69
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44680
  store i8 0, ptr %i.bm, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 44648
  store i8 0, ptr %i.bn, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44616
  store i8 0, ptr %i.bo, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44584
  store i8 0, ptr %i.bp, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44808
  store i8 0, ptr %i.bq, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44776
  store i8 0, ptr %i.br, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 44744
  store i8 0, ptr %i.bs, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 44712
  store i8 0, ptr %i.bt, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44936
  store i8 0, ptr %i.bu, align 8, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44904
  store i8 0, ptr %i.bv, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44872
  store i8 0, ptr %i.bw, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44840
  store i8 0, ptr %i.bx, align 8, !tbaa !69
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 45064
  store i8 0, ptr %i.by, align 8, !tbaa !69
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 45032
  store i8 0, ptr %i.bz, align 8, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 45000
  store i8 0, ptr %i.ca, align 8, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 44968
  store i8 0, ptr %i.cb, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 45192
  store i8 0, ptr %i.cc, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 45160
end_hunk_1
