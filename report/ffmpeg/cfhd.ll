Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhd?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@cfhd_decode:bb.a
  %.not1966.23356 = icmp eq i8 %i.afa, 0
  br i1 %.not1966.23356, label %.thread2183, label %bb.gy

bb.gy:                                            ; preds = %.thread2189.loopexit.1
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aek, i64 42728
  %i.afc = load i8, ptr %i.afb, align 8, !tbaa !107
  %.not1966.1.2 = icmp eq i8 %i.afc, 0
  br i1 %.not1966.1.2, label %.thread2183, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aek, i64 42760
  %i.afe = load i8, ptr %i.afd, align 8, !tbaa !107
  %.not1966.2.2 = icmp eq i8 %i.afe, 0
  br i1 %.not1966.2.2, label %.thread2183, label %.thread2189.loopexit.2

.thread2189.loopexit.2:                           ; preds = %bb.gz
  br i1 %.not3364.not, label %.split, label %bb.ha

bb.ha:                                            ; preds = %.thread2189.loopexit.2
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aek, i64 42824
  %i.afg = load i8, ptr %i.aff, align 8, !tbaa !107
  %.not1966.33358 = icmp eq i8 %i.afg, 0
  br i1 %.not1966.33358, label %.thread2183, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aek, i64 42856
  %i.afi = load i8, ptr %i.afh, align 8, !tbaa !107
  %.not1966.1.3 = icmp eq i8 %i.afi, 0
  br i1 %.not1966.1.3, label %.thread2183, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aek, i64 42888
  %i.afk = load i8, ptr %i.afj, align 8, !tbaa !107
  %.not1966.2.3 = icmp eq i8 %i.afk, 0
  br i1 %.not1966.2.3, label %.thread2183, label %.thread2189.loopexit.3

.thread2189.loopexit.3:                           ; preds = %bb.hc
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aek, i64 42952
  %i.afm = load i8, ptr %i.afl, align 8, !tbaa !107
  %.not1966.4 = icmp eq i8 %i.afm, 0
  br i1 %.not1966.4, label %.thread2183, label %bb.hd

bb.hd:                                            ; preds = %.thread2189.loopexit.3
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aek, i64 42984
  %i.afo = load i8, ptr %i.afn, align 8, !tbaa !107
  %.not1966.1.4 = icmp eq i8 %i.afo, 0
  br i1 %.not1966.1.4, label %.thread2183, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aek, i64 43016
  %i.afq = load i8, ptr %i.afp, align 8, !tbaa !107
  %.not1966.2.4 = icmp eq i8 %i.afq, 0
  br i1 %.not1966.2.4, label %.thread2183, label %.thread2189.loopexit.4

.thread2189.loopexit.4:                           ; preds = %bb.he
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aek, i64 43080
  %i.afs = load i8, ptr %i.afr, align 8, !tbaa !107
  %.not1966.5 = icmp eq i8 %i.afs, 0
  br i1 %.not1966.5, label %.thread2183, label %bb.hf

bb.hf:                                            ; preds = %.thread2189.loopexit.4
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aek, i64 43112
  %i.afu = load i8, ptr %i.aft, align 8, !tbaa !107
  %.not1966.1.5 = icmp eq i8 %i.afu, 0
  br i1 %.not1966.1.5, label %.thread2183, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aek, i64 43144
  %i.afw = load i8, ptr %i.afv, align 8, !tbaa !107
  %.not1966.2.5 = icmp eq i8 %i.afw, 0
  br i1 %.not1966.2.5, label %.thread2183, label %.split

.split:                                           ; preds = %bb.hg, %.thread2189.loopexit.2
  %indvars.iv.next2572 = add nuw nsw i64 %indvars.iv2571, 1 ; 2 uses
  %exitcond2575.not = icmp eq i64 %indvars.iv.next2572, %wide.trip.count2588
  br i1 %exitcond2575.not, label %._crit_edge2405, label %.preheader2275, !llvm.loop !127

._crit_edge2405:                                  ; preds = %.split, %.split.us.us, %.preheader2276
  switch i32 %.pre2630, label %.loopexit2259 [
    i32 0, label %bb.hh
    i32 2, label %bb.ih
  ]

bb.hh:                                            ; preds = %._crit_edge2405
  %i.afx = load i32, ptr %i.q, align 4, !tbaa !63
  %.not1967 = icmp ne i32 %i.afx, 1
  %.not1976 = icmp eq i32 %.01835.lcssa, 0
  %i.afy = and i1 %.not1967, %i.adh
  %or.cond2797 = select i1 %i.afy, i1 %.not1976, i1 false
  br i1 %or.cond2797, label %.lr.ph2466, label %.loopexit2727

.lr.ph2466:                                       ; preds = %bb.hh
  %i.afz = getelementptr inbounds nuw i8, ptr %i.b, i64 42128 ; 3 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.b, i64 46264 ; 6 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  %i.agd = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.age = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.agf = getelementptr inbounds nuw i8, ptr %i.b, i64 46272
  %i.agg = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 3 uses
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph2466, %.loopexit2262
  %indvars.iv2620 = phi i64 [ 0, %.lr.ph2466 ], [ %indvars.iv.next2621, %.loopexit2262 ] ; 8 uses
  %i.agh = getelementptr inbounds nuw [1024 x i8], ptr %i.afz, i64 %indvars.iv2620 ; 39 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 276
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !75 ; 6 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agh, i64 264
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !96 ; 3 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agh, i64 268
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !72 ; 9 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agh, i64 288
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !74 ; 2 uses
  %i.agq = trunc i64 %i.agp to i32                ; 2 uses
  %i.agr = load i32, ptr %i.acn, align 8, !tbaa !86
  %i.ags = icmp eq i32 %i.agr, 145
  br i1 %i.ags, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.agt = load i32, ptr %i.aga, align 4, !tbaa !51
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  %i.agu = icmp eq i64 %indvars.iv2620, 1
  %i.agv = icmp eq i64 %indvars.iv2620, 2
  %i.agw = trunc nuw nsw i64 %indvars.iv2620 to i32
  %i.agx = select i1 %i.agv, i32 1, i32 %i.agw
  %i.agy = select i1 %i.agu, i32 2, i32 %i.agx    ; 2 uses
  %i.agz = zext nneg i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.aga, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !51
  %i.ahc = sdiv i32 %i.ahb, 2
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.01792 = phi i32 [ 0, %bb.hj ], [ %i.agy, %bb.hk ] ; 3 uses
  %.01791.in = phi i32 [ %i.agt, %bb.hj ], [ %i.ahc, %bb.hk ]
  %.01791 = sext i32 %.01791.in to i64
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agh, i64 272
  %i.ahe = load i32, ptr %i.ahd, align 8, !tbaa !95
  %i.ahf = icmp sgt i32 %i.agj, %i.ahe
  br i1 %i.ahf, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ahg = icmp sle i32 %i.agn, %i.agl
  %i.ahh = icmp ne i32 %i.agq, 0
  %or.cond64 = select i1 %i.ahg, i1 %i.ahh, i1 false
  br i1 %or.cond64, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agh, i64 300
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !72
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agh, i64 296
  %i.ahl = load i32, ptr %i.ahk, align 8, !tbaa !96
  %i.ahm = icmp sgt i32 %i.ahj, %i.ahl
  %i.ahn = icmp slt i32 %i.agn, 3
  %or.cond66 = select i1 %i.ahm, i1 true, i1 %i.ahn
  %i.aho = icmp slt i32 %i.agj, 3
  %or.cond68 = select i1 %or.cond66, i1 true, i1 %i.aho
  br i1 %or.cond68, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2183

bb.hp:                                            ; preds = %bb.hn
  %i.ahp = trunc nuw nsw i64 %indvars.iv2620 to i32 ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.75, i32 noundef %i.ahp, i32 noundef %i.agj, i32 noundef %i.agn, i32 noundef %i.agq) #11
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.agh, i64 40 ; 8 uses
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agh, i64 56
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !94
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agh, i64 176 ; 2 uses
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !94
  %i.ahw = load ptr, ptr %i.agb, align 8, !tbaa !128
  %i.ahx = sext i32 %i.agl to i64                 ; 5 uses
  %i.ahy = zext nneg i32 %i.agn to i64
  %sext1977 = shl i64 %i.agp, 32
  %i.ahz = ashr exact i64 %sext1977, 32           ; 3 uses
  tail call void %i.ahw(ptr noundef %i.ahv, i64 noundef %i.ahx, ptr noundef %i.ahr, i64 noundef %i.ahy, ptr noundef %i.aht, i64 noundef %i.ahz, i32 noundef %i.agn, i32 noundef %i.agj) #11
  %i.aia = getelementptr inbounds nuw i8, ptr %i.agh, i64 48
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !94
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agh, i64 64
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !94
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agh, i64 184 ; 2 uses
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !94
  %i.aig = load ptr, ptr %i.agb, align 8, !tbaa !128
  tail call void %i.aig(ptr noundef %i.aif, i64 noundef %i.ahx, ptr noundef %i.aib, i64 noundef %i.ahz, ptr noundef %i.aid, i64 noundef %i.ahz, i32 noundef %i.agn, i32 noundef %i.agj) #11
  %i.aih = load ptr, ptr %i.ahu, align 8, !tbaa !94
  %i.aii = load ptr, ptr %i.aie, align 8, !tbaa !94
  %i.aij = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %i.aik = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.ail = shl nuw nsw i32 %i.agj, 1              ; 2 uses
  tail call void %i.aik(ptr noundef %i.aij, i64 noundef %i.ahx, ptr noundef %i.aih, i64 noundef %i.ahx, ptr noundef %i.aii, i64 noundef %i.ahx, i32 noundef %i.agn, i32 noundef %i.ail) #11
  %i.aim = load i32, ptr %i.h, align 8, !tbaa !54
  %i.ain = icmp eq i32 %i.aim, 12
  br i1 %i.ain, label %.preheader2261.preheader, label %.loopexit2264

.preheader2261.preheader:                         ; preds = %bb.hp
  %i.aio = shl nuw i32 %i.agn, 1
  %i.aip = shl nuw nsw i32 %i.agl, 1
  %4 = zext nneg i32 %i.aip to i64
  %i.aiq = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %wide.trip.count2610 = zext i32 %i.aio to i64   ; 6 uses
  %min.iters.check3203 = icmp ult i32 %i.agn, 8
  %i.air = and i64 %wide.trip.count2610, 12
  %n.vec3205 = and i64 %wide.trip.count2610, 4294967280 ; 4 uses
  %cmp.n3212 = icmp eq i64 %n.vec3205, %wide.trip.count2610
  %min.epilog.iters.check3217 = icmp eq i64 %i.air, 0
  %n.vec3219 = and i64 %wide.trip.count2610, 4294967292 ; 3 uses
  %cmp.n3225 = icmp eq i64 %n.vec3219, %wide.trip.count2610
  br label %vector.main.loop.iter.check3202

vector.main.loop.iter.check3202:                  ; preds = %._crit_edge2442, %.preheader2261.preheader
  %.017802444 = phi i32 [ %i.ajb, %._crit_edge2442 ], [ 0, %.preheader2261.preheader ]
  %.017852443 = phi ptr [ %i.aja, %._crit_edge2442 ], [ %i.aiq, %.preheader2261.preheader ] ; 4 uses
  br i1 %min.iters.check3203, label %vec.epilog.ph3218, label %vector.body3206

vector.body3206:                                  ; preds = %vector.main.loop.iter.check3202, %vector.body3206
  %index3207 = phi i64 [ %index.next3210, %vector.body3206 ], [ 0, %vector.main.loop.iter.check3202 ] ; 2 uses
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr %.017852443, i64 %index3207 ; 3 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 16 ; 2 uses
  %wide.load3208 = load <8 x i16>, ptr %i.ais, align 2, !tbaa !97
  %wide.load3209 = load <8 x i16>, ptr %i.ait, align 2, !tbaa !97
  %i.aiu = shl <8 x i16> %wide.load3208, splat (i16 2)
  %i.aiv = shl <8 x i16> %wide.load3209, splat (i16 2)
  store <8 x i16> %i.aiu, ptr %i.ais, align 2, !tbaa !97
  store <8 x i16> %i.aiv, ptr %i.ait, align 2, !tbaa !97
  %index.next3210 = add nuw i64 %index3207, 16    ; 2 uses
  %i.aiw = icmp eq i64 %index.next3210, %n.vec3205
  br i1 %i.aiw, label %middle.block3211, label %vector.body3206, !llvm.loop !130

middle.block3211:                                 ; preds = %vector.body3206
  br i1 %cmp.n3212, label %._crit_edge2442, label %vec.epilog.iter.check3216

vec.epilog.iter.check3216:                        ; preds = %middle.block3211
  br i1 %min.epilog.iters.check3217, label %vec.epilog.scalar.ph3215.preheader, label %vec.epilog.ph3218, !prof !101

vec.epilog.ph3218:                                ; preds = %vector.main.loop.iter.check3202, %vec.epilog.iter.check3216
  %vec.epilog.resume.val3213 = phi i64 [ %n.vec3205, %vec.epilog.iter.check3216 ], [ 0, %vector.main.loop.iter.check3202 ]
  br label %vec.epilog.vector.body3220

vec.epilog.vector.body3220:                       ; preds = %vec.epilog.vector.body3220, %vec.epilog.ph3218
  %index3221 = phi i64 [ %vec.epilog.resume.val3213, %vec.epilog.ph3218 ], [ %index.next3223, %vec.epilog.vector.body3220 ] ; 2 uses
  %i.aix = getelementptr inbounds nuw [2 x i8], ptr %.017852443, i64 %index3221 ; 2 uses
  %wide.load3222 = load <4 x i16>, ptr %i.aix, align 2, !tbaa !97
  %i.aiy = shl <4 x i16> %wide.load3222, splat (i16 2)
  store <4 x i16> %i.aiy, ptr %i.aix, align 2, !tbaa !97
  %index.next3223 = add nuw i64 %index3221, 4     ; 2 uses
  %i.aiz = icmp eq i64 %index.next3223, %n.vec3219
  br i1 %i.aiz, label %vec.epilog.middle.block3224, label %vec.epilog.vector.body3220, !llvm.loop !131

vec.epilog.middle.block3224:                      ; preds = %vec.epilog.vector.body3220
  br i1 %cmp.n3225, label %._crit_edge2442, label %vec.epilog.scalar.ph3215.preheader

vec.epilog.scalar.ph3215.preheader:               ; preds = %vec.epilog.iter.check3216, %vec.epilog.middle.block3224
  %indvars.iv2607.ph = phi i64 [ %n.vec3205, %vec.epilog.iter.check3216 ], [ %n.vec3219, %vec.epilog.middle.block3224 ]
  br label %vec.epilog.scalar.ph3215

._crit_edge2442:                                  ; preds = %vec.epilog.scalar.ph3215, %vec.epilog.middle.block3224, %middle.block3211
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %.017852443, i64 %4
  %i.ajb = add nuw nsw i32 %.017802444, 1         ; 2 uses
  %exitcond2612.not = icmp eq i32 %i.ajb, %i.ail
  br i1 %exitcond2612.not, label %.loopexit2264, label %vector.main.loop.iter.check3202, !llvm.loop !132

vec.epilog.scalar.ph3215:                         ; preds = %vec.epilog.scalar.ph3215.preheader, %vec.epilog.scalar.ph3215
  %indvars.iv2607 = phi i64 [ %indvars.iv.next2608, %vec.epilog.scalar.ph3215 ], [ %indvars.iv2607.ph, %vec.epilog.scalar.ph3215.preheader ] ; 2 uses
  %i.ajc = getelementptr inbounds nuw [2 x i8], ptr %.017852443, i64 %indvars.iv2607 ; 2 uses
  %i.ajd = load i16, ptr %i.ajc, align 2, !tbaa !97
  %i.aje = shl i16 %i.ajd, 2
  store i16 %i.aje, ptr %i.ajc, align 2, !tbaa !97
  %indvars.iv.next2608 = add nuw nsw i64 %indvars.iv2607, 1 ; 2 uses
  %exitcond2611.not = icmp eq i64 %indvars.iv.next2608, %wide.trip.count2610
  br i1 %exitcond2611.not, label %._crit_edge2442, label %vec.epilog.scalar.ph3215, !llvm.loop !133

.loopexit2264:                                    ; preds = %._crit_edge2442, %bb.hp
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.agh, i64 416
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.agh, i64 436
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !75 ; 6 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.agh, i64 424
  %i.ajj = load i32, ptr %i.aji, align 8, !tbaa !96 ; 3 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.agh, i64 428
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !72 ; 8 uses
  %i.ajm = load i64, ptr %i.ajf, align 8, !tbaa !74 ; 2 uses
  %i.ajn = trunc i64 %i.ajm to i32                ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.agh, i64 432
  %i.ajp = load i32, ptr %i.ajo, align 8, !tbaa !95
  %i.ajq = icmp sgt i32 %i.ajh, %i.ajp
  br i1 %i.ajq, label %bb.hs, label %bb.hq

bb.hq:                                            ; preds = %.loopexit2264
  %i.ajr = icmp sle i32 %i.ajl, %i.ajj
  %i.ajs = icmp ne i32 %i.ajn, 0
  %or.cond70 = select i1 %i.ajr, i1 %i.ajs, i1 false
  br i1 %or.cond70, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %i.ajt = icmp slt i32 %i.ajl, 3
  %i.aju = icmp slt i32 %i.ajh, 3
  %or.cond74 = or i1 %i.aju, %i.ajt
  br i1 %or.cond74, label %bb.hs, label %.preheader2260.preheader

bb.hs:                                            ; preds = %bb.hr, %bb.hq, %.loopexit2264
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2183

.preheader2260.preheader:                         ; preds = %bb.hr
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.76, i32 noundef %i.ahp, i32 noundef %i.ajh, i32 noundef %i.ajl, i32 noundef %i.ajn) #11
  %i.ajv = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.agh, i64 80
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !94
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.agh, i64 200 ; 2 uses
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !94
  %i.aka = load ptr, ptr %i.agb, align 8, !tbaa !128
  %i.akb = sext i32 %i.ajj to i64                 ; 6 uses
  %sext1978 = shl i64 %i.ajm, 32
  %i.akc = ashr exact i64 %sext1978, 32           ; 3 uses
  tail call void %i.aka(ptr noundef %i.ajz, i64 noundef %i.akb, ptr noundef %i.ajv, i64 noundef %i.akb, ptr noundef %i.ajx, i64 noundef %i.akc, i32 noundef %i.ajl, i32 noundef %i.ajh) #11
  %i.akd = getelementptr inbounds nuw i8, ptr %i.agh, i64 72
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !94
  %i.akf = getelementptr inbounds nuw i8, ptr %i.agh, i64 88
  %i.akg = load ptr, ptr %i.akf, align 8, !tbaa !94
  %i.akh = getelementptr inbounds nuw i8, ptr %i.agh, i64 208 ; 2 uses
  %i.aki = load ptr, ptr %i.akh, align 8, !tbaa !94
  %i.akj = load ptr, ptr %i.agb, align 8, !tbaa !128
  tail call void %i.akj(ptr noundef %i.aki, i64 noundef %i.akb, ptr noundef %i.ake, i64 noundef %i.akc, ptr noundef %i.akg, i64 noundef %i.akc, i32 noundef %i.ajl, i32 noundef %i.ajh) #11
  %i.akk = load ptr, ptr %i.ajy, align 8, !tbaa !94
  %i.akl = load ptr, ptr %i.akh, align 8, !tbaa !94
  %i.akm = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %i.akn = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.ako = shl nuw nsw i32 %i.ajh, 1              ; 2 uses
  tail call void %i.akn(ptr noundef %i.akm, i64 noundef %i.akb, ptr noundef %i.akk, i64 noundef %i.akb, ptr noundef %i.akl, i64 noundef %i.akb, i32 noundef %i.ajl, i32 noundef %i.ako) #11
  %i.akp = shl nuw i32 %i.ajl, 1
  %i.akq = shl nuw nsw i32 %i.ajj, 1
  %5 = zext nneg i32 %i.akq to i64
  %i.akr = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %wide.trip.count2616 = zext i32 %i.akp to i64   ; 6 uses
  %min.iters.check3177 = icmp ult i32 %i.ajl, 8
  %i.aks = and i64 %wide.trip.count2616, 12
  %n.vec3179 = and i64 %wide.trip.count2616, 4294967280 ; 4 uses
  %cmp.n3186 = icmp eq i64 %n.vec3179, %wide.trip.count2616
  %min.epilog.iters.check3191 = icmp eq i64 %i.aks, 0
  %n.vec3193 = and i64 %wide.trip.count2616, 4294967292 ; 3 uses
  %cmp.n3199 = icmp eq i64 %n.vec3193, %wide.trip.count2616
  br label %vector.main.loop.iter.check3176

vector.main.loop.iter.check3176:                  ; preds = %._crit_edge2447, %.preheader2260.preheader
  %.017782449 = phi i32 [ %i.alo, %._crit_edge2447 ], [ 0, %.preheader2260.preheader ]
  %.117862448 = phi ptr [ %i.aln, %._crit_edge2447 ], [ %i.akr, %.preheader2260.preheader ] ; 4 uses
  br i1 %min.iters.check3177, label %vec.epilog.ph3192, label %vector.body3180

vector.body3180:                                  ; preds = %vector.main.loop.iter.check3176, %vector.body3180
  %index3181 = phi i64 [ %index.next3184, %vector.body3180 ], [ 0, %vector.main.loop.iter.check3176 ] ; 2 uses
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %.117862448, i64 %index3181 ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 16 ; 2 uses
  %wide.load3182 = load <8 x i16>, ptr %i.akt, align 2, !tbaa !97
  %wide.load3183 = load <8 x i16>, ptr %i.aku, align 2, !tbaa !97
  %i.akv = shl <8 x i16> %wide.load3182, splat (i16 2)
  %i.akw = shl <8 x i16> %wide.load3183, splat (i16 2)
  store <8 x i16> %i.akv, ptr %i.akt, align 2, !tbaa !97
  store <8 x i16> %i.akw, ptr %i.aku, align 2, !tbaa !97
  %index.next3184 = add nuw i64 %index3181, 16    ; 2 uses
  %i.akx = icmp eq i64 %index.next3184, %n.vec3179
  br i1 %i.akx, label %middle.block3185, label %vector.body3180, !llvm.loop !134

middle.block3185:                                 ; preds = %vector.body3180
  br i1 %cmp.n3186, label %._crit_edge2447, label %vec.epilog.iter.check3190

vec.epilog.iter.check3190:                        ; preds = %middle.block3185
  br i1 %min.epilog.iters.check3191, label %vec.epilog.scalar.ph3189.preheader, label %vec.epilog.ph3192, !prof !101

vec.epilog.ph3192:                                ; preds = %vector.main.loop.iter.check3176, %vec.epilog.iter.check3190
  %vec.epilog.resume.val3187 = phi i64 [ %n.vec3179, %vec.epilog.iter.check3190 ], [ 0, %vector.main.loop.iter.check3176 ]
  br label %vec.epilog.vector.body3194

vec.epilog.vector.body3194:                       ; preds = %vec.epilog.vector.body3194, %vec.epilog.ph3192
  %index3195 = phi i64 [ %vec.epilog.resume.val3187, %vec.epilog.ph3192 ], [ %index.next3197, %vec.epilog.vector.body3194 ] ; 2 uses
  %i.aky = getelementptr inbounds nuw [2 x i8], ptr %.117862448, i64 %index3195 ; 2 uses
  %wide.load3196 = load <4 x i16>, ptr %i.aky, align 2, !tbaa !97
  %i.akz = shl <4 x i16> %wide.load3196, splat (i16 2)
  store <4 x i16> %i.akz, ptr %i.aky, align 2, !tbaa !97
  %index.next3197 = add nuw i64 %index3195, 4     ; 2 uses
  %i.ala = icmp eq i64 %index.next3197, %n.vec3193
  br i1 %i.ala, label %vec.epilog.middle.block3198, label %vec.epilog.vector.body3194, !llvm.loop !135

vec.epilog.middle.block3198:                      ; preds = %vec.epilog.vector.body3194
  br i1 %cmp.n3199, label %._crit_edge2447, label %vec.epilog.scalar.ph3189.preheader

vec.epilog.scalar.ph3189.preheader:               ; preds = %vec.epilog.iter.check3190, %vec.epilog.middle.block3198
  %indvars.iv2613.ph = phi i64 [ %n.vec3179, %vec.epilog.iter.check3190 ], [ %n.vec3193, %vec.epilog.middle.block3198 ]
  br label %vec.epilog.scalar.ph3189

._crit_edge2450.split:                            ; preds = %._crit_edge2447
  %i.alb = getelementptr inbounds nuw i8, ptr %i.agh, i64 544
  %i.alc = getelementptr inbounds nuw i8, ptr %i.agh, i64 564
  %i.ald = load i32, ptr %i.alc, align 4, !tbaa !75 ; 8 uses
  %i.ale = getelementptr inbounds nuw i8, ptr %i.agh, i64 552
  %i.alf = load i32, ptr %i.ale, align 8, !tbaa !96 ; 4 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.agh, i64 556
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !72 ; 11 uses
  %i.ali = load i64, ptr %i.alb, align 8, !tbaa !74 ; 3 uses
  %i.alj = trunc i64 %i.ali to i32                ; 2 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %i.agh, i64 560
  %i.all = load i32, ptr %i.alk, align 8, !tbaa !95
  %i.alm = icmp sgt i32 %i.ald, %i.all
  br i1 %i.alm, label %bb.hw, label %bb.ht

._crit_edge2447:                                  ; preds = %vec.epilog.scalar.ph3189, %vec.epilog.middle.block3198, %middle.block3185
  %i.aln = getelementptr inbounds nuw [2 x i8], ptr %.117862448, i64 %5
  %i.alo = add nuw nsw i32 %.017782449, 1         ; 2 uses
  %exitcond2618.not = icmp eq i32 %i.alo, %i.ako
  br i1 %exitcond2618.not, label %._crit_edge2450.split, label %vector.main.loop.iter.check3176, !llvm.loop !136

vec.epilog.scalar.ph3189:                         ; preds = %vec.epilog.scalar.ph3189.preheader, %vec.epilog.scalar.ph3189
  %indvars.iv2613 = phi i64 [ %indvars.iv.next2614, %vec.epilog.scalar.ph3189 ], [ %indvars.iv2613.ph, %vec.epilog.scalar.ph3189.preheader ] ; 2 uses
  %i.alp = getelementptr inbounds nuw [2 x i8], ptr %.117862448, i64 %indvars.iv2613 ; 2 uses
  %i.alq = load i16, ptr %i.alp, align 2, !tbaa !97
  %i.alr = shl i16 %i.alq, 2
  store i16 %i.alr, ptr %i.alp, align 2, !tbaa !97
  %indvars.iv.next2614 = add nuw nsw i64 %indvars.iv2613, 1 ; 2 uses
  %exitcond2617.not = icmp eq i64 %indvars.iv.next2614, %wide.trip.count2616
  br i1 %exitcond2617.not, label %._crit_edge2447, label %vec.epilog.scalar.ph3189, !llvm.loop !137

bb.ht:                                            ; preds = %._crit_edge2450.split
  %i.als = icmp sle i32 %i.alh, %i.alf
  %i.alt = icmp ne i32 %i.alj, 0
  %or.cond76 = select i1 %i.als, i1 %i.alt, i1 false
  br i1 %or.cond76, label %bb.hu, label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  %i.alu = icmp slt i32 %i.ald, 3
  %i.alv = icmp slt i32 %i.alh, 3
  %or.cond80 = select i1 %i.alu, i1 true, i1 %i.alv
  br i1 %or.cond80, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.alw = shl nuw nsw i32 %i.alh, 1              ; 4 uses
  %i.alx = load i32, ptr %i.agh, align 8, !tbaa !138
  %i.aly = icmp sgt i32 %i.alw, %i.alx
  br i1 %i.aly, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv, %bb.hu, %bb.ht, %._crit_edge2450.split
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2183

bb.hx:                                            ; preds = %bb.hv
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.77, i32 noundef %i.ahp, i32 noundef %i.ald, i32 noundef %i.alh, i32 noundef %i.alj) #11
  %i.alz = load i32, ptr %i.agc, align 4, !tbaa !42
  %.not1979 = icmp eq i32 %i.alz, 0
  br i1 %.not1979, label %bb.if, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ama = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %i.amb = getelementptr inbounds nuw i8, ptr %i.agh, i64 104
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !94
  %i.amd = getelementptr inbounds nuw i8, ptr %i.agh, i64 224 ; 2 uses
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !94
  %i.amf = load ptr, ptr %i.agb, align 8, !tbaa !128
  %i.amg = sext i32 %i.alf to i64                 ; 5 uses
  %sext1981 = shl i64 %i.ali, 32
  %i.amh = ashr exact i64 %sext1981, 32           ; 3 uses
  tail call void %i.amf(ptr noundef %i.ame, i64 noundef %i.amg, ptr noundef %i.ama, i64 noundef %i.amg, ptr noundef %i.amc, i64 noundef %i.amh, i32 noundef %i.alh, i32 noundef %i.ald) #11
  %i.ami = getelementptr inbounds nuw i8, ptr %i.agh, i64 96
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !94
  %i.amk = getelementptr inbounds nuw i8, ptr %i.agh, i64 112
  %i.aml = load ptr, ptr %i.amk, align 8, !tbaa !94
  %i.amm = getelementptr inbounds nuw i8, ptr %i.agh, i64 232 ; 2 uses
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !94
  %i.amo = load ptr, ptr %i.agb, align 8, !tbaa !128
  tail call void %i.amo(ptr noundef %i.amn, i64 noundef %i.amg, ptr noundef %i.amj, i64 noundef %i.amh, ptr noundef %i.aml, i64 noundef %i.amh, i32 noundef %i.alh, i32 noundef %i.ald) #11
  %i.amp = sext i32 %.01792 to i64                ; 3 uses
  %i.amq = getelementptr inbounds [8 x i8], ptr %1, i64 %i.amp
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !82 ; 2 uses
  %i.ams = load i32, ptr %i.acn, align 8, !tbaa !86
  %i.amt = icmp eq i32 %i.ams, 145
  br i1 %i.amt, label %bb.hz, label %bb.id

bb.hz:                                            ; preds = %bb.hy
  %i.amu = shl nuw i64 %indvars.iv2620, 1
  %spec.select.idx = and i64 %i.amu, 2
  %spec.select = getelementptr inbounds nuw i8, ptr %i.amr, i64 %spec.select.idx ; 2 uses
  %i.amv = icmp samesign ugt i64 %indvars.iv2620, 1
  br i1 %i.amv, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %bb.hz
  %i.amw = getelementptr inbounds [4 x i8], ptr %i.aga, i64 %i.amp
  %i.amx = load i32, ptr %i.amw, align 4, !tbaa !51
  %i.amy = ashr i32 %i.amx, 1
  %i.amz = sext i32 %i.amy to i64
  %i.ana = getelementptr inbounds [2 x i8], ptr %spec.select, i64 %i.amz
  br label %bb.ib

bb.ib:                                            ; preds = %bb.hz, %bb.ia
  %.11782.ph = phi ptr [ %spec.select, %bb.hz ], [ %i.ana, %bb.ia ]
  %i.anb = shl nuw nsw i32 %i.ald, 1
  %i.anc = load i32, ptr %i.agd, align 4, !tbaa !139
  %i.and = sdiv i32 %i.anc, 2
  %i.ane = icmp sgt i32 %i.anb, %i.and
  br i1 %i.ane, label %.thread2183, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.anf = load i32, ptr %i.age, align 8, !tbaa !140
  %i.ang = sdiv i32 %i.anf, 2
  %i.anh = icmp sgt i32 %i.alw, %i.ang
  br i1 %i.anh, label %.thread2183, label %bb.id

bb.id:                                            ; preds = %bb.hy, %bb.ic
  %.117822204 = phi ptr [ %.11782.ph, %bb.ic ], [ %i.amr, %bb.hy ]
  %i.ani = getelementptr inbounds [1024 x i8], ptr %i.afz, i64 %i.amp
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 4 ; 2 uses
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !141
  %i.anl = icmp sgt i32 %i.ank, 0
  br i1 %i.anl, label %.lr.ph2456, label %.loopexit2262

.lr.ph2456:                                       ; preds = %bb.id
  %i.anm = load ptr, ptr %i.amm, align 8, !tbaa !94
  %i.ann = load ptr, ptr %i.amd, align 8, !tbaa !94
  %i.ano = icmp eq i32 %.01792, 3
  %wide.trip.count.i2047 = zext nneg i32 %i.alw to i64 ; 3 uses
  %min.iters.check3165 = icmp ult i32 %i.alh, 4
  %n.vec3167 = and i64 %wide.trip.count.i2047, 2147483640 ; 3 uses
  %cmp.n3173 = icmp eq i64 %n.vec3167, %wide.trip.count.i2047
  br label %bb.ie

bb.ie:                                            ; preds = %.lr.ph2456, %process_alpha.exit
  %.017762454 = phi i32 [ 0, %.lr.ph2456 ], [ %i.aoo, %process_alpha.exit ]
  %.217832453 = phi ptr [ %.117822204, %.lr.ph2456 ], [ %i.aon, %process_alpha.exit ] ; 4 uses
  %.017872452 = phi ptr [ %i.anm, %.lr.ph2456 ], [ %i.aom, %process_alpha.exit ] ; 2 uses
  %.017892451 = phi ptr [ %i.ann, %.lr.ph2456 ], [ %i.aol, %process_alpha.exit ] ; 2 uses
  %i.anp = load ptr, ptr %i.agf, align 8, !tbaa !142
  %i.anq = load i32, ptr %i.h, align 8, !tbaa !54
  tail call void %i.anp(ptr noundef %.217832453, ptr noundef %.017892451, ptr noundef %.017872452, i32 noundef %i.alh, i32 noundef %i.anq) #11
  %i.anr = load i32, ptr %i.acn, align 8, !tbaa !86
  %i.ans = icmp eq i32 %i.anr, 161
  %or.cond82 = and i1 %i.ano, %i.ans
  br i1 %or.cond82, label %.preheader2492.preheader, label %process_alpha.exit

.preheader2492.preheader:                         ; preds = %bb.ie
  br i1 %min.iters.check3165, label %.preheader2492.preheader3291, label %vector.body3168

vector.body3168:                                  ; preds = %.preheader2492.preheader, %vector.body3168
  %index3169 = phi i64 [ %index.next3171, %vector.body3168 ], [ 0, %.preheader2492.preheader ] ; 2 uses
  %i.ant = getelementptr inbounds nuw [2 x i8], ptr %.217832453, i64 %index3169 ; 2 uses
  %wide.load3170 = load <8 x i16>, ptr %i.ant, align 2, !tbaa !97
  %i.anu = sext <8 x i16> %wide.load3170 to <8 x i32>
  %i.anv = mul <8 x i32> %i.anu, splat (i32 75200)
  %i.anw = add <8 x i32> %i.anv, splat (i32 -19251200)
  %i.anx = ashr <8 x i32> %i.anw, splat (i32 16)
  %i.any = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.anx, <8 x i32> zeroinitializer)
  %i.anz = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.any, <8 x i32> splat (i32 4095))
  %i.aoa = trunc nuw nsw <8 x i32> %i.anz to <8 x i16>
  store <8 x i16> %i.aoa, ptr %i.ant, align 2, !tbaa !97
  %index.next3171 = add nuw i64 %index3169, 8     ; 2 uses
  %i.aob = icmp eq i64 %index.next3171, %n.vec3167
  br i1 %i.aob, label %middle.block3172, label %vector.body3168, !llvm.loop !143

middle.block3172:                                 ; preds = %vector.body3168
  br i1 %cmp.n3173, label %process_alpha.exit, label %.preheader2492.preheader3291

.preheader2492.preheader3291:                     ; preds = %.preheader2492.preheader, %middle.block3172
  %indvars.iv.i2048.ph = phi i64 [ 0, %.preheader2492.preheader ], [ %n.vec3167, %middle.block3172 ]
  br label %.preheader2492

.preheader2492:                                   ; preds = %.preheader2492.preheader3291, %.preheader2492
  %indvars.iv.i2048 = phi i64 [ %indvars.iv.next.i2049, %.preheader2492 ], [ %indvars.iv.i2048.ph, %.preheader2492.preheader3291 ] ; 2 uses
  %i.aoc = getelementptr inbounds nuw [2 x i8], ptr %.217832453, i64 %indvars.iv.i2048 ; 2 uses
  %i.aod = load i16, ptr %i.aoc, align 2, !tbaa !97
  %i.aoe = sext i16 %i.aod to i32
  %i.aof = mul i32 %i.aoe, 75200
  %i.aog = add i32 %i.aof, -19251200
  %i.aoh = ashr i32 %i.aog, 16
  %i.aoi = tail call i32 @llvm.smax.i32(i32 %i.aoh, i32 0)
  %i.aoj = tail call i32 @llvm.umin.i32(i32 %i.aoi, i32 4095)
  %i.aok = trunc nuw nsw i32 %i.aoj to i16
  store i16 %i.aok, ptr %i.aoc, align 2, !tbaa !97
  %indvars.iv.next.i2049 = add nuw nsw i64 %indvars.iv.i2048, 1 ; 2 uses
  %exitcond.not.i2050 = icmp eq i64 %indvars.iv.next.i2049, %wide.trip.count.i2047
  br i1 %exitcond.not.i2050, label %process_alpha.exit, label %.preheader2492, !llvm.loop !144

process_alpha.exit:                               ; preds = %.preheader2492, %middle.block3172, %bb.ie
  %i.aol = getelementptr inbounds [2 x i8], ptr %.017892451, i64 %i.amg
  %i.aom = getelementptr inbounds [2 x i8], ptr %.017872452, i64 %i.amg
  %i.aon = getelementptr inbounds [2 x i8], ptr %.217832453, i64 %.01791
  %i.aoo = add nuw nsw i32 %.017762454, 1         ; 2 uses
  %i.aop = load i32, ptr %i.anj, align 4, !tbaa !141
  %i.aoq = icmp slt i32 %i.aoo, %i.aop
  br i1 %i.aoq, label %bb.ie, label %.loopexit2262, !llvm.loop !145

bb.if:                                            ; preds = %bb.hx
  %i.aor = load i32, ptr %i.agg, align 4, !tbaa !146
  %i.aos = lshr i32 %i.aor, 3
  %.lobit = and i32 %i.aos, 1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.78, i32 noundef %.lobit) #11
  %i.aot = load i32, ptr %i.agg, align 4, !tbaa !146
  %i.aou = or i32 %i.aot, 8
  store i32 %i.aou, ptr %i.agg, align 4, !tbaa !146
  %i.aov = load ptr, ptr %i.ahq, align 8, !tbaa !94
  %i.aow = getelementptr inbounds nuw i8, ptr %i.agh, i64 96
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !94
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.agh, i64 224 ; 2 uses
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !94
  %i.apa = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.apb = sext i32 %i.alf to i64                 ; 3 uses
  %sext1980 = shl i64 %i.ali, 32
  %i.apc = ashr exact i64 %sext1980, 32           ; 3 uses
  tail call void %i.apa(ptr noundef %i.aoz, i64 noundef %i.apb, ptr noundef %i.aov, i64 noundef %i.apb, ptr noundef %i.aox, i64 noundef %i.apc, i32 noundef %i.alh, i32 noundef %i.ald) #11
  %i.apd = getelementptr inbounds nuw i8, ptr %i.agh, i64 104
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !94
  %i.apf = getelementptr inbounds nuw i8, ptr %i.agh, i64 112
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !94
  %i.aph = getelementptr inbounds nuw i8, ptr %i.agh, i64 232 ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !94
  %i.apj = load ptr, ptr %i.c, align 8, !tbaa !129
  tail call void %i.apj(ptr noundef %i.api, i64 noundef %i.apb, ptr noundef %i.ape, i64 noundef %i.apc, ptr noundef %i.apg, i64 noundef %i.apc, i32 noundef %i.alh, i32 noundef %i.ald) #11
  %i.apk = sext i32 %.01792 to i64                ; 3 uses
  %i.apl = getelementptr inbounds [1024 x i8], ptr %i.afz, i64 %i.apk
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 4
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !141 ; 2 uses
  %i.apo = sdiv i32 %i.apn, 2                     ; 2 uses
  %i.app = icmp sgt i32 %i.apn, 1
  br i1 %i.app, label %.lr.ph2462, label %.loopexit2262

.lr.ph2462:                                       ; preds = %bb.if
  %i.apq = load ptr, ptr %i.aph, align 8, !tbaa !94 ; 4 uses
  %i.apr = load ptr, ptr %i.aoy, align 8, !tbaa !94 ; 4 uses
  %i.aps = getelementptr inbounds [8 x i8], ptr %1, i64 %i.apk
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !82 ; 7 uses
  %i.apu = getelementptr inbounds [4 x i8], ptr %i.aga, i64 %i.apk
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !51 ; 3 uses
  %i.apw = sdiv i32 %i.apv, 2
  %i.apx = sext i32 %i.apw to i64                 ; 2 uses
  %wide.trip.count.i2051 = zext nneg i32 %i.alw to i64 ; 4 uses
  %i.apy = shl i32 %i.alf, 1
  %6 = zext i32 %i.apy to i64                     ; 3 uses
  %i.apz = sext i32 %i.apv to i64                 ; 2 uses
  %i.aqa = shl nsw i64 %i.apz, 1
  %i.aqb = add nsw i32 %i.apo, -1
  %i.aqc = zext i32 %i.aqb to i64                 ; 2 uses
  %i.aqd = mul i64 %i.aqa, %i.aqc                 ; 2 uses
  %i.aqe = shl nuw nsw i64 %wide.trip.count.i2051, 1 ; 3 uses
  %i.aqf = getelementptr i8, ptr %i.apt, i64 %i.aqd
  %scevgep3118 = getelementptr i8, ptr %i.aqf, i64 %i.aqe ; 3 uses
  %i.aqg = shl nsw i64 %i.apx, 1                  ; 2 uses
  %scevgep3119 = getelementptr i8, ptr %i.apt, i64 %i.aqg ; 3 uses
  %i.aqh = getelementptr i8, ptr %i.apt, i64 %i.aqd
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 %i.aqg
  %scevgep3120 = getelementptr i8, ptr %i.aqi, i64 %i.aqe ; 3 uses
  %i.aqj = shl nuw nsw i64 %6, 1
  %i.aqk = mul i64 %i.aqj, %i.aqc
  %i.aql = add i64 %i.aqk, %i.aqe                 ; 2 uses
  %scevgep3121 = getelementptr i8, ptr %i.apr, i64 %i.aql ; 2 uses
  %scevgep3122 = getelementptr i8, ptr %i.apq, i64 %i.aql ; 2 uses
  %min.iters.check3153 = icmp ult i32 %i.alh, 4
  %bound03123 = icmp ult ptr %i.apt, %scevgep3120
  %bound13124 = icmp ult ptr %scevgep3119, %scevgep3118
  %found.conflict3125 = and i1 %bound03123, %bound13124
  %bound03128 = icmp ult ptr %i.apt, %scevgep3121
  %bound13129 = icmp ult ptr %i.apr, %scevgep3118
  %found.conflict3130 = and i1 %bound03128, %bound13129
  %stride.check3131 = icmp slt i32 %i.apv, 0
  %7 = or i1 %found.conflict3130, %stride.check3131
  %conflict.rdx3132 = or i1 %found.conflict3125, %7
  %bound03140 = icmp ult ptr %i.apt, %scevgep3122
  %bound13141 = icmp ult ptr %i.apq, %scevgep3118
  %found.conflict3142 = and i1 %bound03140, %bound13141
  %conflict.rdx3137 = or i1 %found.conflict3142, %conflict.rdx3132
  %bound03146 = icmp ult ptr %scevgep3119, %scevgep3121
  %bound13147 = icmp ult ptr %i.apr, %scevgep3120
  %found.conflict3148 = and i1 %bound03146, %bound13147
  %op.rdx3280 = or i1 %found.conflict3148, %conflict.rdx3137
  %bound03143 = icmp ult ptr %scevgep3119, %scevgep3122
  %bound13144 = icmp ult ptr %i.apq, %scevgep3120
  %found.conflict3145 = and i1 %bound03143, %bound13144
  %op.rdx3284 = or i1 %found.conflict3145, %op.rdx3280
  %n.vec3155 = and i64 %wide.trip.count.i2051, 2147483640 ; 3 uses
  %cmp.n3162 = icmp eq i64 %n.vec3155, %wide.trip.count.i2051
  br label %bb.ig

bb.ig:                                            ; preds = %.lr.ph2462, %interlaced_vertical_filter.exit
  %.017752460 = phi i32 [ 0, %.lr.ph2462 ], [ %i.arz, %interlaced_vertical_filter.exit ]
  %.317842459 = phi ptr [ %i.apt, %.lr.ph2462 ], [ %i.ary, %interlaced_vertical_filter.exit ] ; 4 uses
  %.117882458 = phi ptr [ %i.apq, %.lr.ph2462 ], [ %i.arx, %interlaced_vertical_filter.exit ] ; 3 uses
  %.117902457 = phi ptr [ %i.apr, %.lr.ph2462 ], [ %i.arw, %interlaced_vertical_filter.exit ] ; 3 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %.317842459, i64 %i.apx ; 2 uses
  %brmerge = select i1 %min.iters.check3153, i1 true, i1 %op.rdx3284
  br i1 %brmerge, label %scalar.ph3152.preheader, label %vector.body3156

vector.body3156:                                  ; preds = %bb.ig, %vector.body3156
  %index3157 = phi i64 [ %index.next3160, %vector.body3156 ], [ 0, %bb.ig ] ; 5 uses
  %i.aqm = getelementptr inbounds nuw [2 x i8], ptr %.117902457, i64 %index3157
  %wide.load3158 = load <8 x i16>, ptr %i.aqm, align 2, !tbaa !97, !alias.scope !147
  %i.aqn = sext <8 x i16> %wide.load3158 to <8 x i32> ; 2 uses
  %i.aqo = getelementptr inbounds nuw [2 x i8], ptr %.117882458, i64 %index3157
  %wide.load3159 = load <8 x i16>, ptr %i.aqo, align 2, !tbaa !97, !alias.scope !150
  %i.aqp = sext <8 x i16> %wide.load3159 to <8 x i32> ; 2 uses
  %i.aqq = sub nsw <8 x i32> %i.aqn, %i.aqp       ; 2 uses
  %i.aqr = sdiv <8 x i32> %i.aqq, splat (i32 2)   ; 2 uses
  %i.aqs = add nsw <8 x i32> %i.aqp, %i.aqn       ; 2 uses
  %i.aqt = sdiv <8 x i32> %i.aqs, splat (i32 2)   ; 2 uses
  %i.aqu = icmp ult <8 x i32> %i.aqr, splat (i32 1024)
  %i.aqv = icmp slt <8 x i32> %i.aqq, splat (i32 -1)
  %i.aqw = select <8 x i1> %i.aqv, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.aqx = select <8 x i1> %i.aqu, <8 x i32> %i.aqr, <8 x i32> %i.aqw
  %i.aqy = trunc nsw <8 x i32> %i.aqx to <8 x i16>
  %i.aqz = getelementptr inbounds nuw [2 x i8], ptr %.317842459, i64 %index3157
  store <8 x i16> %i.aqy, ptr %i.aqz, align 2, !tbaa !97, !alias.scope !152, !noalias !154
  %i.ara = icmp ult <8 x i32> %i.aqt, splat (i32 1024)
  %i.arb = icmp slt <8 x i32> %i.aqs, splat (i32 -1)
  %i.arc = select <8 x i1> %i.arb, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.ard = select <8 x i1> %i.ara, <8 x i32> %i.aqt, <8 x i32> %i.arc
  %i.are = trunc nsw <8 x i32> %i.ard to <8 x i16>
  %i.arf = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index3157
  store <8 x i16> %i.are, ptr %i.arf, align 2, !tbaa !97, !alias.scope !156, !noalias !157
  %index.next3160 = add nuw i64 %index3157, 8     ; 2 uses
  %i.arg = icmp eq i64 %index.next3160, %n.vec3155
  br i1 %i.arg, label %middle.block3161, label %vector.body3156, !llvm.loop !158

middle.block3161:                                 ; preds = %vector.body3156
  br i1 %cmp.n3162, label %interlaced_vertical_filter.exit, label %scalar.ph3152.preheader

scalar.ph3152.preheader:                          ; preds = %bb.ig, %middle.block3161
  %indvars.iv.i2052.ph = phi i64 [ %n.vec3155, %middle.block3161 ], [ 0, %bb.ig ]
  br label %scalar.ph3152

scalar.ph3152:                                    ; preds = %scalar.ph3152.preheader, %scalar.ph3152
  %indvars.iv.i2052 = phi i64 [ %indvars.iv.next.i2054, %scalar.ph3152 ], [ %indvars.iv.i2052.ph, %scalar.ph3152.preheader ] ; 5 uses
  %i.arh = getelementptr inbounds nuw [2 x i8], ptr %.117902457, i64 %indvars.iv.i2052
  %i.ari = load i16, ptr %i.arh, align 2, !tbaa !97
  %i.arj = sext i16 %i.ari to i32                 ; 2 uses
  %i.ark = getelementptr inbounds nuw [2 x i8], ptr %.117882458, i64 %indvars.iv.i2052
  %i.arl = load i16, ptr %i.ark, align 2, !tbaa !97
  %i.arm = sext i16 %i.arl to i32                 ; 2 uses
  %i.arn = sub nsw i32 %i.arj, %i.arm             ; 2 uses
  %i.aro = sdiv i32 %i.arn, 2                     ; 2 uses
  %i.arp = add nsw i32 %i.arm, %i.arj             ; 2 uses
  %i.arq = sdiv i32 %i.arp, 2                     ; 2 uses
  %.not.i17.i = icmp ult i32 %i.aro, 1024
  %isnotneg.inv.i18.i = icmp slt i32 %i.arn, -1
  %i.arr = select i1 %isnotneg.inv.i18.i, i32 0, i32 1023
  %.0.i19.i = select i1 %.not.i17.i, i32 %i.aro, i32 %i.arr
  %i.ars = trunc nsw i32 %.0.i19.i to i16
  %i.art = getelementptr inbounds nuw [2 x i8], ptr %.317842459, i64 %indvars.iv.i2052
  store i16 %i.ars, ptr %i.art, align 2, !tbaa !97
  %.not.i.i = icmp ult i32 %i.arq, 1024
  %isnotneg.inv.i.i = icmp slt i32 %i.arp, -1
  %i.aru = select i1 %isnotneg.inv.i.i, i32 0, i32 1023
  %.0.i.i2053 = select i1 %.not.i.i, i32 %i.arq, i32 %i.aru
  %i.arv = trunc nsw i32 %.0.i.i2053 to i16
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i2052
  store i16 %i.arv, ptr %gep.i, align 2, !tbaa !97
  %indvars.iv.next.i2054 = add nuw nsw i64 %indvars.iv.i2052, 1 ; 2 uses
  %exitcond.not.i2055 = icmp eq i64 %indvars.iv.next.i2054, %wide.trip.count.i2051
  br i1 %exitcond.not.i2055, label %interlaced_vertical_filter.exit, label %scalar.ph3152, !llvm.loop !159

interlaced_vertical_filter.exit:                  ; preds = %scalar.ph3152, %middle.block3161
  %i.arw = getelementptr inbounds nuw [2 x i8], ptr %.117902457, i64 %6
  %i.arx = getelementptr inbounds nuw [2 x i8], ptr %.117882458, i64 %6
  %i.ary = getelementptr inbounds [2 x i8], ptr %.317842459, i64 %i.apz
  %i.arz = add nuw nsw i32 %.017752460, 1         ; 2 uses
  %exitcond2619.not = icmp eq i32 %i.arz, %i.apo
  br i1 %exitcond2619.not, label %.loopexit2262, label %bb.ig, !llvm.loop !160

.loopexit2262:                                    ; preds = %process_alpha.exit, %interlaced_vertical_filter.exit, %bb.id, %bb.if
  %indvars.iv.next2621 = add nuw nsw i64 %indvars.iv2620, 1 ; 2 uses
  %i.asa = load i32, ptr %i.y, align 8, !tbaa !43 ; 2 uses
  %i.asb = sext i32 %i.asa to i64
  %i.asc = icmp slt i64 %indvars.iv.next2621, %i.asb
  br i1 %i.asc, label %bb.hi, label %.loopexit2727, !llvm.loop !161

bb.ih:                                            ; preds = %._crit_edge2405
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ase = load ptr, ptr %i.asd, align 8, !tbaa !162
  %i.asf = load i32, ptr %i.ase, align 8, !tbaa !163
  %.not1968 = icmp eq i32 %i.asf, 0
  br i1 %.not1968, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.asg = getelementptr inbounds nuw i8, ptr %i.b, i64 42024
  %i.ash = load i32, ptr %i.asg, align 8, !tbaa !77
  %i.asi = icmp eq i32 %i.ash, 1
  br i1 %i.asi, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.asj = load i32, ptr %i.q, align 4, !tbaa !63
  %.not1969 = icmp ne i32 %i.asj, 1
  %.not1970 = icmp eq i32 %.01835.lcssa, 0
  %i.ask = and i1 %.not1969, %i.adh
  %or.cond2798 = select i1 %i.ask, i1 %.not1970, i1 false
  br i1 %or.cond2798, label %.lr.ph2439, label %.loopexit2727

bb.ik:                                            ; preds = %bb.ii, %bb.ih
  %.not1970.old = icmp eq i32 %.01835.lcssa, 0
  %or.cond20272435.old = select i1 %i.adh, i1 %.not1970.old, i1 false
  br i1 %or.cond20272435.old, label %.lr.ph2439, label %.loopexit2727

.lr.ph2439:                                       ; preds = %bb.ij, %bb.ik
  %i.asl = getelementptr inbounds nuw i8, ptr %i.b, i64 42128 ; 3 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.b, i64 46264 ; 10 uses
  %i.aso = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  %i.asp = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.asr = getelementptr inbounds nuw i8, ptr %i.b, i64 46272
  %i.ass = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  br label %bb.il

bb.il:                                            ; preds = %.lr.ph2439, %.loopexit2269
  %indvars.iv2604 = phi i64 [ 0, %.lr.ph2439 ], [ %indvars.iv.next2605, %.loopexit2269 ] ; 8 uses
  %i.ast = getelementptr inbounds nuw [1024 x i8], ptr %i.asl, i64 %indvars.iv2604 ; 51 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.ast, i64 276
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !75 ; 6 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ast, i64 264
  %i.asx = load i32, ptr %i.asw, align 8, !tbaa !96 ; 3 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.ast, i64 268
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !72 ; 9 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ast, i64 288
  %i.atb = load i64, ptr %i.ata, align 8, !tbaa !74 ; 2 uses
  %i.atc = trunc i64 %i.atb to i32                ; 2 uses
  %i.atd = load i32, ptr %i.acn, align 8, !tbaa !86
  %i.ate = icmp eq i32 %i.atd, 145
  br i1 %i.ate, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.atf = load i32, ptr %i.asm, align 4, !tbaa !51
  br label %bb.io

bb.in:                                            ; preds = %bb.il
  %i.atg = icmp eq i64 %indvars.iv2604, 1
  %i.ath = icmp eq i64 %indvars.iv2604, 2
  %i.ati = select i1 %i.ath, i64 1, i64 %indvars.iv2604
  %i.atj = select i1 %i.atg, i64 2, i64 %i.ati    ; 2 uses
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %i.atj
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !51
  %i.atm = sdiv i32 %i.atl, 2
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.01773 = phi i64 [ 0, %bb.im ], [ %i.atj, %bb.in ] ; 6 uses
  %.01760.in = phi i32 [ %i.atf, %bb.im ], [ %i.atm, %bb.in ]
  %.01760 = sext i32 %.01760.in to i64
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ast, i64 272
  %i.ato = load i32, ptr %i.atn, align 8, !tbaa !95
  %i.atp = icmp sgt i32 %i.asv, %i.ato
  br i1 %i.atp, label %bb.ir, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.atq = icmp sle i32 %i.asz, %i.asx
  %i.atr = icmp ne i32 %i.atc, 0
  %or.cond86 = select i1 %i.atq, i1 %i.atr, i1 false
  br i1 %or.cond86, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.ats = getelementptr inbounds nuw i8, ptr %i.ast, i64 300
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !72
  %i.atu = getelementptr inbounds nuw i8, ptr %i.ast, i64 296
  %i.atv = load i32, ptr %i.atu, align 8, !tbaa !96
  %i.atw = icmp sgt i32 %i.att, %i.atv
  %i.atx = icmp slt i32 %i.asz, 3
  %or.cond88 = select i1 %i.atw, i1 true, i1 %i.atx
  %i.aty = icmp slt i32 %i.asv, 3
  %or.cond90 = select i1 %or.cond88, i1 true, i1 %i.aty
  br i1 %or.cond90, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %bb.io
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2183

bb.is:                                            ; preds = %bb.iq
  %i.atz = trunc nuw nsw i64 %indvars.iv2604 to i32 ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.75, i32 noundef %i.atz, i32 noundef %i.asv, i32 noundef %i.asz, i32 noundef %i.atc) #11
  %i.aua = getelementptr inbounds nuw i8, ptr %i.ast, i64 40
  %i.aub = load ptr, ptr %i.aua, align 8, !tbaa !94
  %i.auc = getelementptr inbounds nuw i8, ptr %i.ast, i64 56
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !94
  %i.aue = getelementptr inbounds nuw i8, ptr %i.ast, i64 176 ; 2 uses
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !94
  %i.aug = load ptr, ptr %i.asn, align 8, !tbaa !128
  %i.auh = sext i32 %i.asx to i64                 ; 5 uses
  %i.aui = zext nneg i32 %i.asz to i64
  %sext = shl i64 %i.atb, 32
  %i.auj = ashr exact i64 %sext, 32               ; 3 uses
  tail call void %i.aug(ptr noundef %i.auf, i64 noundef %i.auh, ptr noundef %i.aub, i64 noundef %i.aui, ptr noundef %i.aud, i64 noundef %i.auj, i32 noundef %i.asz, i32 noundef %i.asv) #11
  %i.auk = getelementptr inbounds nuw i8, ptr %i.ast, i64 48
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !94
  %i.aum = getelementptr inbounds nuw i8, ptr %i.ast, i64 64
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !94
  %i.auo = getelementptr inbounds nuw i8, ptr %i.ast, i64 184 ; 2 uses
  %i.aup = load ptr, ptr %i.auo, align 8, !tbaa !94
  %i.auq = load ptr, ptr %i.asn, align 8, !tbaa !128
  tail call void %i.auq(ptr noundef %i.aup, i64 noundef %i.auh, ptr noundef %i.aul, i64 noundef %i.auj, ptr noundef %i.aun, i64 noundef %i.auj, i32 noundef %i.asz, i32 noundef %i.asv) #11
  %i.aur = load ptr, ptr %i.aue, align 8, !tbaa !94
  %i.aus = load ptr, ptr %i.auo, align 8, !tbaa !94
  %i.aut = getelementptr inbounds nuw i8, ptr %i.ast, i64 232 ; 10 uses
  %i.auu = load ptr, ptr %i.aut, align 8, !tbaa !94
  %i.auv = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.auw = shl nuw nsw i32 %i.asv, 1              ; 2 uses
  tail call void %i.auv(ptr noundef %i.auu, i64 noundef %i.auh, ptr noundef %i.aur, i64 noundef %i.auh, ptr noundef %i.aus, i64 noundef %i.auh, i32 noundef %i.asz, i32 noundef %i.auw) #11
  %i.aux = load i32, ptr %i.h, align 8, !tbaa !54
  %i.auy = icmp eq i32 %i.aux, 12
  br i1 %i.auy, label %.preheader2268.preheader, label %.loopexit2271

.preheader2268.preheader:                         ; preds = %bb.is
  %i.auz = shl nuw i32 %i.asz, 1
  %i.ava = shl nuw nsw i32 %i.asx, 1
  %8 = zext nneg i32 %i.ava to i64
  %i.avb = load ptr, ptr %i.aut, align 8, !tbaa !94
  %wide.trip.count2593 = zext i32 %i.auz to i64   ; 6 uses
  %min.iters.check3093 = icmp ult i32 %i.asz, 8
  %i.avc = and i64 %wide.trip.count2593, 12
  %n.vec3095 = and i64 %wide.trip.count2593, 4294967280 ; 4 uses
  %cmp.n3102 = icmp eq i64 %n.vec3095, %wide.trip.count2593
  %min.epilog.iters.check3107 = icmp eq i64 %i.avc, 0
  %n.vec3109 = and i64 %wide.trip.count2593, 4294967292 ; 3 uses
  %cmp.n3115 = icmp eq i64 %n.vec3109, %wide.trip.count2593
  br label %vector.main.loop.iter.check3092

vector.main.loop.iter.check3092:                  ; preds = %._crit_edge2408, %.preheader2268.preheader
  %.017592410 = phi i32 [ %i.avm, %._crit_edge2408 ], [ 0, %.preheader2268.preheader ]
  %.017652409 = phi ptr [ %i.avl, %._crit_edge2408 ], [ %i.avb, %.preheader2268.preheader ] ; 4 uses
  br i1 %min.iters.check3093, label %vec.epilog.ph3108, label %vector.body3096

vector.body3096:                                  ; preds = %vector.main.loop.iter.check3092, %vector.body3096
  %index3097 = phi i64 [ %index.next3100, %vector.body3096 ], [ 0, %vector.main.loop.iter.check3092 ] ; 2 uses
  %i.avd = getelementptr inbounds nuw [2 x i8], ptr %.017652409, i64 %index3097 ; 3 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avd, i64 16 ; 2 uses
  %wide.load3098 = load <8 x i16>, ptr %i.avd, align 2, !tbaa !97
  %wide.load3099 = load <8 x i16>, ptr %i.ave, align 2, !tbaa !97
  %i.avf = shl <8 x i16> %wide.load3098, splat (i16 2)
  %i.avg = shl <8 x i16> %wide.load3099, splat (i16 2)
  store <8 x i16> %i.avf, ptr %i.avd, align 2, !tbaa !97
  store <8 x i16> %i.avg, ptr %i.ave, align 2, !tbaa !97
  %index.next3100 = add nuw i64 %index3097, 16    ; 2 uses
  %i.avh = icmp eq i64 %index.next3100, %n.vec3095
  br i1 %i.avh, label %middle.block3101, label %vector.body3096, !llvm.loop !170

middle.block3101:                                 ; preds = %vector.body3096
  br i1 %cmp.n3102, label %._crit_edge2408, label %vec.epilog.iter.check3106

vec.epilog.iter.check3106:                        ; preds = %middle.block3101
  br i1 %min.epilog.iters.check3107, label %vec.epilog.scalar.ph3105.preheader, label %vec.epilog.ph3108, !prof !101

vec.epilog.ph3108:                                ; preds = %vector.main.loop.iter.check3092, %vec.epilog.iter.check3106
  %vec.epilog.resume.val3103 = phi i64 [ %n.vec3095, %vec.epilog.iter.check3106 ], [ 0, %vector.main.loop.iter.check3092 ]
  br label %vec.epilog.vector.body3110

vec.epilog.vector.body3110:                       ; preds = %vec.epilog.vector.body3110, %vec.epilog.ph3108
  %index3111 = phi i64 [ %vec.epilog.resume.val3103, %vec.epilog.ph3108 ], [ %index.next3113, %vec.epilog.vector.body3110 ] ; 2 uses
  %i.avi = getelementptr inbounds nuw [2 x i8], ptr %.017652409, i64 %index3111 ; 2 uses
  %wide.load3112 = load <4 x i16>, ptr %i.avi, align 2, !tbaa !97
  %i.avj = shl <4 x i16> %wide.load3112, splat (i16 2)
  store <4 x i16> %i.avj, ptr %i.avi, align 2, !tbaa !97
  %index.next3113 = add nuw i64 %index3111, 4     ; 2 uses
  %i.avk = icmp eq i64 %index.next3113, %n.vec3109
  br i1 %i.avk, label %vec.epilog.middle.block3114, label %vec.epilog.vector.body3110, !llvm.loop !171

vec.epilog.middle.block3114:                      ; preds = %vec.epilog.vector.body3110
  br i1 %cmp.n3115, label %._crit_edge2408, label %vec.epilog.scalar.ph3105.preheader

vec.epilog.scalar.ph3105.preheader:               ; preds = %vec.epilog.iter.check3106, %vec.epilog.middle.block3114
  %indvars.iv2590.ph = phi i64 [ %n.vec3095, %vec.epilog.iter.check3106 ], [ %n.vec3109, %vec.epilog.middle.block3114 ]
  br label %vec.epilog.scalar.ph3105

._crit_edge2408:                                  ; preds = %vec.epilog.scalar.ph3105, %vec.epilog.middle.block3114, %middle.block3101
  %i.avl = getelementptr inbounds nuw [2 x i8], ptr %.017652409, i64 %8
  %i.avm = add nuw nsw i32 %.017592410, 1         ; 2 uses
  %exitcond2595.not = icmp eq i32 %i.avm, %i.auw
  br i1 %exitcond2595.not, label %.loopexit2271, label %vector.main.loop.iter.check3092, !llvm.loop !172

vec.epilog.scalar.ph3105:                         ; preds = %vec.epilog.scalar.ph3105.preheader, %vec.epilog.scalar.ph3105
  %indvars.iv2590 = phi i64 [ %indvars.iv.next2591, %vec.epilog.scalar.ph3105 ], [ %indvars.iv2590.ph, %vec.epilog.scalar.ph3105.preheader ] ; 2 uses
  %i.avn = getelementptr inbounds nuw [2 x i8], ptr %.017652409, i64 %indvars.iv2590 ; 2 uses
  %i.avo = load i16, ptr %i.avn, align 2, !tbaa !97
  %i.avp = shl i16 %i.avo, 2
  store i16 %i.avp, ptr %i.avn, align 2, !tbaa !97
  %indvars.iv.next2591 = add nuw nsw i64 %indvars.iv2590, 1 ; 2 uses
  %exitcond2594.not = icmp eq i64 %indvars.iv.next2591, %wide.trip.count2593
  br i1 %exitcond2594.not, label %._crit_edge2408, label %vec.epilog.scalar.ph3105, !llvm.loop !173

.loopexit2271:                                    ; preds = %._crit_edge2408, %bb.is
  %i.avq = getelementptr inbounds nuw i8, ptr %i.ast, i64 416
  %i.avr = getelementptr inbounds nuw i8, ptr %i.ast, i64 436
  %i.avs = load i32, ptr %i.avr, align 4, !tbaa !75 ; 8 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %i.ast, i64 424
  %i.avu = load i32, ptr %i.avt, align 8, !tbaa !96 ; 3 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.ast, i64 428
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !72 ; 11 uses
  %i.avx = load i64, ptr %i.avq, align 8, !tbaa !74 ; 2 uses
  %i.avy = trunc i64 %i.avx to i32                ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.ast, i64 432
  %i.awa = load i32, ptr %i.avz, align 8, !tbaa !95
  %i.awb = icmp sgt i32 %i.avs, %i.awa
  br i1 %i.awb, label %bb.iv, label %bb.it

bb.it:                                            ; preds = %.loopexit2271
  %i.awc = icmp sle i32 %i.avw, %i.avu
  %i.awd = icmp ne i32 %i.avy, 0
  %or.cond92 = select i1 %i.awc, i1 %i.awd, i1 false
  br i1 %or.cond92, label %bb.iu, label %bb.iv

bb.iu:                                            ; preds = %bb.it
  %i.awe = icmp slt i32 %i.avw, 3
  %i.awf = icmp slt i32 %i.avs, 3
  %or.cond96 = or i1 %i.awf, %i.awe
  br i1 %or.cond96, label %bb.iv, label %.preheader2267.preheader

bb.iv:                                            ; preds = %bb.iu, %bb.it, %.loopexit2271
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2183

.preheader2267.preheader:                         ; preds = %bb.iu
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.79, i32 noundef %i.atz, i32 noundef %i.avs, i32 noundef %i.avw, i32 noundef %i.avy) #11
  %i.awg = load ptr, ptr %i.aut, align 8, !tbaa !94
  %i.awh = getelementptr inbounds nuw i8, ptr %i.ast, i64 80
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !94
  %i.awj = getelementptr inbounds nuw i8, ptr %i.ast, i64 200 ; 4 uses
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !94
  %i.awl = load ptr, ptr %i.asn, align 8, !tbaa !128
  %i.awm = sext i32 %i.avu to i64                 ; 11 uses
  %sext1971 = shl i64 %i.avx, 32
  %i.awn = ashr exact i64 %sext1971, 32           ; 7 uses
  tail call void %i.awl(ptr noundef %i.awk, i64 noundef %i.awm, ptr noundef %i.awg, i64 noundef %i.awm, ptr noundef %i.awi, i64 noundef %i.awn, i32 noundef %i.avw, i32 noundef %i.avs) #11
  %i.awo = getelementptr inbounds nuw i8, ptr %i.ast, i64 72
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !94
  %i.awq = getelementptr inbounds nuw i8, ptr %i.ast, i64 88
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !94
  %i.aws = getelementptr inbounds nuw i8, ptr %i.ast, i64 208 ; 4 uses
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !94
  %i.awu = load ptr, ptr %i.asn, align 8, !tbaa !128
  tail call void %i.awu(ptr noundef %i.awt, i64 noundef %i.awm, ptr noundef %i.awp, i64 noundef %i.awn, ptr noundef %i.awr, i64 noundef %i.awn, i32 noundef %i.avw, i32 noundef %i.avs) #11
  %i.awv = load ptr, ptr %i.awj, align 8, !tbaa !94
  %i.aww = load ptr, ptr %i.aws, align 8, !tbaa !94
  %i.awx = load ptr, ptr %i.aut, align 8, !tbaa !94
  %i.awy = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.awz = shl nuw nsw i32 %i.avs, 1              ; 3 uses
  tail call void %i.awy(ptr noundef %i.awx, i64 noundef %i.awm, ptr noundef %i.awv, i64 noundef %i.awm, ptr noundef %i.aww, i64 noundef %i.awm, i32 noundef %i.avw, i32 noundef %i.awz) #11
  %i.axa = shl nuw i32 %i.avw, 1
  %i.axb = shl nuw nsw i32 %i.avu, 1
  %9 = zext nneg i32 %i.axb to i64
  %i.axc = load ptr, ptr %i.aut, align 8, !tbaa !94
  %wide.trip.count2599 = zext i32 %i.axa to i64   ; 6 uses
  %min.iters.check3067 = icmp ult i32 %i.avw, 8
  %i.axd = and i64 %wide.trip.count2599, 12
  %n.vec3069 = and i64 %wide.trip.count2599, 4294967280 ; 4 uses
  %cmp.n3076 = icmp eq i64 %n.vec3069, %wide.trip.count2599
  %min.epilog.iters.check3081 = icmp eq i64 %i.axd, 0
  %n.vec3083 = and i64 %wide.trip.count2599, 4294967292 ; 3 uses
  %cmp.n3089 = icmp eq i64 %n.vec3083, %wide.trip.count2599
  br label %vector.main.loop.iter.check3066

vector.main.loop.iter.check3066:                  ; preds = %._crit_edge2413, %.preheader2267.preheader
  %.017572415 = phi i32 [ %i.ayq, %._crit_edge2413 ], [ 0, %.preheader2267.preheader ]
  %.117662414 = phi ptr [ %i.ayp, %._crit_edge2413 ], [ %i.axc, %.preheader2267.preheader ] ; 4 uses
  br i1 %min.iters.check3067, label %vec.epilog.ph3082, label %vector.body3070

vector.body3070:                                  ; preds = %vector.main.loop.iter.check3066, %vector.body3070
  %index3071 = phi i64 [ %index.next3074, %vector.body3070 ], [ 0, %vector.main.loop.iter.check3066 ] ; 2 uses
  %i.axe = getelementptr inbounds nuw [2 x i8], ptr %.117662414, i64 %index3071 ; 3 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.axe, i64 16 ; 2 uses
  %wide.load3072 = load <8 x i16>, ptr %i.axe, align 2, !tbaa !97
  %wide.load3073 = load <8 x i16>, ptr %i.axf, align 2, !tbaa !97
  %i.axg = shl <8 x i16> %wide.load3072, splat (i16 2)
  %i.axh = shl <8 x i16> %wide.load3073, splat (i16 2)
  store <8 x i16> %i.axg, ptr %i.axe, align 2, !tbaa !97
  store <8 x i16> %i.axh, ptr %i.axf, align 2, !tbaa !97
  %index.next3074 = add nuw i64 %index3071, 16    ; 2 uses
  %i.axi = icmp eq i64 %index.next3074, %n.vec3069
  br i1 %i.axi, label %middle.block3075, label %vector.body3070, !llvm.loop !174

middle.block3075:                                 ; preds = %vector.body3070
  br i1 %cmp.n3076, label %._crit_edge2413, label %vec.epilog.iter.check3080

vec.epilog.iter.check3080:                        ; preds = %middle.block3075
  br i1 %min.epilog.iters.check3081, label %vec.epilog.scalar.ph3079.preheader, label %vec.epilog.ph3082, !prof !101

vec.epilog.ph3082:                                ; preds = %vector.main.loop.iter.check3066, %vec.epilog.iter.check3080
  %vec.epilog.resume.val3077 = phi i64 [ %n.vec3069, %vec.epilog.iter.check3080 ], [ 0, %vector.main.loop.iter.check3066 ]
  br label %vec.epilog.vector.body3084

vec.epilog.vector.body3084:                       ; preds = %vec.epilog.vector.body3084, %vec.epilog.ph3082
  %index3085 = phi i64 [ %vec.epilog.resume.val3077, %vec.epilog.ph3082 ], [ %index.next3087, %vec.epilog.vector.body3084 ] ; 2 uses
  %i.axj = getelementptr inbounds nuw [2 x i8], ptr %.117662414, i64 %index3085 ; 2 uses
  %wide.load3086 = load <4 x i16>, ptr %i.axj, align 2, !tbaa !97
  %i.axk = shl <4 x i16> %wide.load3086, splat (i16 2)
  store <4 x i16> %i.axk, ptr %i.axj, align 2, !tbaa !97
  %index.next3087 = add nuw i64 %index3085, 4     ; 2 uses
  %i.axl = icmp eq i64 %index.next3087, %n.vec3083
  br i1 %i.axl, label %vec.epilog.middle.block3088, label %vec.epilog.vector.body3084, !llvm.loop !175

vec.epilog.middle.block3088:                      ; preds = %vec.epilog.vector.body3084
  br i1 %cmp.n3089, label %._crit_edge2413, label %vec.epilog.scalar.ph3079.preheader

vec.epilog.scalar.ph3079.preheader:               ; preds = %vec.epilog.iter.check3080, %vec.epilog.middle.block3088
  %indvars.iv2596.ph = phi i64 [ %n.vec3069, %vec.epilog.iter.check3080 ], [ %n.vec3083, %vec.epilog.middle.block3088 ]
  br label %vec.epilog.scalar.ph3079

._crit_edge2416.split:                            ; preds = %._crit_edge2413
  %i.axm = getelementptr inbounds nuw i8, ptr %i.ast, i64 96
  %i.axn = load ptr, ptr %i.axm, align 8, !tbaa !94
  %i.axo = getelementptr inbounds nuw i8, ptr %i.ast, i64 112
  %i.axp = load ptr, ptr %i.axo, align 8, !tbaa !94
  %i.axq = load ptr, ptr %i.awj, align 8, !tbaa !94
  %i.axr = load ptr, ptr %i.asn, align 8, !tbaa !128
  tail call void %i.axr(ptr noundef %i.axq, i64 noundef %i.awm, ptr noundef %i.axn, i64 noundef %i.awn, ptr noundef %i.axp, i64 noundef %i.awn, i32 noundef %i.avw, i32 noundef %i.avs) #11
  %i.axs = getelementptr inbounds nuw i8, ptr %i.ast, i64 104
  %i.axt = load ptr, ptr %i.axs, align 8, !tbaa !94
  %i.axu = getelementptr inbounds nuw i8, ptr %i.ast, i64 120
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !94
  %i.axw = load ptr, ptr %i.aws, align 8, !tbaa !94
  %i.axx = load ptr, ptr %i.asn, align 8, !tbaa !128
  tail call void %i.axx(ptr noundef %i.axw, i64 noundef %i.awm, ptr noundef %i.axt, i64 noundef %i.awn, ptr noundef %i.axv, i64 noundef %i.awn, i32 noundef %i.avw, i32 noundef %i.avs) #11
  %i.axy = load ptr, ptr %i.awj, align 8, !tbaa !94
  %i.axz = load ptr, ptr %i.aws, align 8, !tbaa !94
  %i.aya = getelementptr inbounds nuw i8, ptr %i.ast, i64 248 ; 6 uses
  %i.ayb = load ptr, ptr %i.aya, align 8, !tbaa !94
  %i.ayc = load ptr, ptr %i.c, align 8, !tbaa !129
  tail call void %i.ayc(ptr noundef %i.ayb, i64 noundef %i.awm, ptr noundef %i.axy, i64 noundef %i.awm, ptr noundef %i.axz, i64 noundef %i.awm, i32 noundef %i.avw, i32 noundef %i.awz) #11
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.ast, i64 800
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ast, i64 820
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !75 ; 14 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ast, i64 808 ; 2 uses
  %i.ayh = load i32, ptr %i.ayg, align 8, !tbaa !96 ; 5 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ast, i64 812 ; 2 uses
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !72 ; 16 uses
  %i.ayk = load i64, ptr %i.ayd, align 8, !tbaa !74 ; 3 uses
  %i.ayl = trunc i64 %i.ayk to i32                ; 2 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.80, i32 noundef %i.atz, i32 noundef %i.ayf, i32 noundef %i.ayj, i32 noundef %i.ayl) #11
  %i.aym = getelementptr inbounds nuw i8, ptr %i.ast, i64 816
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !95
  %i.ayo = icmp sgt i32 %i.ayf, %i.ayn
  br i1 %i.ayo, label %bb.iz, label %bb.iw

._crit_edge2413:                                  ; preds = %vec.epilog.scalar.ph3079, %vec.epilog.middle.block3088, %middle.block3075
  %i.ayp = getelementptr inbounds nuw [2 x i8], ptr %.117662414, i64 %9
  %i.ayq = add nuw nsw i32 %.017572415, 1         ; 2 uses
  %exitcond2601.not = icmp eq i32 %i.ayq, %i.awz
  br i1 %exitcond2601.not, label %._crit_edge2416.split, label %vector.main.loop.iter.check3066, !llvm.loop !176

vec.epilog.scalar.ph3079:                         ; preds = %vec.epilog.scalar.ph3079.preheader, %vec.epilog.scalar.ph3079
  %indvars.iv2596 = phi i64 [ %indvars.iv.next2597, %vec.epilog.scalar.ph3079 ], [ %indvars.iv2596.ph, %vec.epilog.scalar.ph3079.preheader ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw [2 x i8], ptr %.117662414, i64 %indvars.iv2596 ; 2 uses
  %i.ays = load i16, ptr %i.ayr, align 2, !tbaa !97
  %i.ayt = shl i16 %i.ays, 2
  store i16 %i.ayt, ptr %i.ayr, align 2, !tbaa !97
  %indvars.iv.next2597 = add nuw nsw i64 %indvars.iv2596, 1 ; 2 uses
  %exitcond2600.not = icmp eq i64 %indvars.iv.next2597, %wide.trip.count2599
  br i1 %exitcond2600.not, label %._crit_edge2413, label %vec.epilog.scalar.ph3079, !llvm.loop !177

bb.iw:                                            ; preds = %._crit_edge2416.split
  %i.ayu = load i32, ptr %i.ayg, align 8, !tbaa !96 ; 2 uses
  %i.ayv = icmp sle i32 %i.ayj, %i.ayu
  %i.ayw = icmp ne i32 %i.ayl, 0
  %or.cond98 = and i1 %i.ayw, %i.ayv
  br i1 %or.cond98, label %bb.ix, label %bb.iz

bb.ix:                                            ; preds = %bb.iw
  %i.ayx = load i32, ptr %i.ayi, align 4, !tbaa !72
  %i.ayy = icmp sgt i32 %i.ayx, %i.ayu
  %i.ayz = icmp slt i32 %i.ayj, 3
  %or.cond100 = or i1 %i.ayz, %i.ayy
  %i.aza = icmp slt i32 %i.ayf, 3
  %or.cond102 = or i1 %i.aza, %or.cond100
  br i1 %or.cond102, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.azb = shl nuw nsw i32 %i.ayj, 1              ; 3 uses
  %i.azc = load i32, ptr %i.ast, align 8, !tbaa !138
  %i.azd = icmp sgt i32 %i.azb, %i.azc
  br i1 %i.azd, label %bb.iz, label %.lr.ph2421

bb.iz:                                            ; preds = %bb.iy, %bb.ix, %bb.iw, %._crit_edge2416.split
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2183

.lr.ph2421:                                       ; preds = %bb.iy
  %i.aze = load ptr, ptr %i.aut, align 8, !tbaa !94 ; 5 uses
  %i.azf = load ptr, ptr %i.aya, align 8, !tbaa !94 ; 3 uses
  %wide.trip.count.i2056 = zext nneg i32 %i.ayj to i64 ; 4 uses
  %i.azg = sext i32 %i.ayh to i64                 ; 3 uses
  %i.azh = shl nsw i64 %i.azg, 1
  %i.azi = add nsw i32 %i.ayf, -1
  %i.azj = zext i32 %i.azi to i64
  %i.azk = mul i64 %i.azh, %i.azj
  %i.azl = shl nuw nsw i64 %wide.trip.count.i2056, 1
  %i.azm = add i64 %i.azk, %i.azl                 ; 2 uses
  %scevgep3046 = getelementptr i8, ptr %i.aze, i64 %i.azm
  %scevgep3047 = getelementptr i8, ptr %i.azf, i64 %i.azm
  %min.iters.check3054 = icmp ult i32 %i.ayj, 8
  %bound03048 = icmp ult ptr %i.aze, %scevgep3047
  %bound13049 = icmp ult ptr %i.azf, %scevgep3046
  %found.conflict3050 = and i1 %bound03048, %bound13049
  %stride.check3051 = icmp slt i32 %i.ayh, 0
  %i.azn = or i1 %found.conflict3050, %stride.check3051
  %n.vec3056 = and i64 %wide.trip.count.i2056, 2147483640 ; 3 uses
  %cmp.n3063 = icmp eq i64 %n.vec3056, %wide.trip.count.i2056
  br label %bb.ja

._crit_edge2422:                                  ; preds = %inverse_temporal_filter.exit
  %i.azo = load i32, ptr %i.aso, align 4, !tbaa !42
  %.not1972 = icmp eq i32 %i.azo, 0
  br i1 %.not1972, label %bb.ji, label %bb.jb

bb.ja:                                            ; preds = %.lr.ph2421, %inverse_temporal_filter.exit
  %.017552419 = phi i32 [ 0, %.lr.ph2421 ], [ %i.bao, %inverse_temporal_filter.exit ]
  %.017672418 = phi ptr [ %i.azf, %.lr.ph2421 ], [ %i.ban, %inverse_temporal_filter.exit ] ; 3 uses
  %.017702417 = phi ptr [ %i.aze, %.lr.ph2421 ], [ %i.bam, %inverse_temporal_filter.exit ] ; 3 uses
  %brmerge3413 = select i1 %min.iters.check3054, i1 true, i1 %i.azn
  br i1 %brmerge3413, label %scalar.ph3053.preheader, label %vector.body3057

vector.body3057:                                  ; preds = %bb.ja, %vector.body3057
  %index3058 = phi i64 [ %index.next3061, %vector.body3057 ], [ 0, %bb.ja ] ; 3 uses
  %i.azp = getelementptr inbounds nuw [2 x i8], ptr %.017702417, i64 %index3058 ; 2 uses
  %wide.load3059 = load <8 x i16>, ptr %i.azp, align 2, !tbaa !97, !alias.scope !178, !noalias !181
  %i.azq = sext <8 x i16> %wide.load3059 to <8 x i32> ; 2 uses
  %i.azr = getelementptr inbounds nuw [2 x i8], ptr %.017672418, i64 %index3058 ; 2 uses
  %wide.load3060 = load <8 x i16>, ptr %i.azr, align 2, !tbaa !97, !alias.scope !181
  %i.azs = sext <8 x i16> %wide.load3060 to <8 x i32> ; 2 uses
  %i.azt = sub nsw <8 x i32> %i.azq, %i.azs
  %i.azu = sdiv <8 x i32> %i.azt, splat (i32 2)
  %i.azv = add nsw <8 x i32> %i.azs, %i.azq
  %i.azw = sdiv <8 x i32> %i.azv, splat (i32 2)
  %i.azx = trunc nsw <8 x i32> %i.azu to <8 x i16>
  store <8 x i16> %i.azx, ptr %i.azp, align 2, !tbaa !97, !alias.scope !178, !noalias !181
  %i.azy = trunc nsw <8 x i32> %i.azw to <8 x i16>
  store <8 x i16> %i.azy, ptr %i.azr, align 2, !tbaa !97, !alias.scope !181
  %index.next3061 = add nuw i64 %index3058, 8     ; 2 uses
  %i.azz = icmp eq i64 %index.next3061, %n.vec3056
  br i1 %i.azz, label %middle.block3062, label %vector.body3057, !llvm.loop !183

middle.block3062:                                 ; preds = %vector.body3057
  br i1 %cmp.n3063, label %inverse_temporal_filter.exit, label %scalar.ph3053.preheader

scalar.ph3053.preheader:                          ; preds = %bb.ja, %middle.block3062
  %indvars.iv.i2057.ph = phi i64 [ %n.vec3056, %middle.block3062 ], [ 0, %bb.ja ]
  br label %scalar.ph3053

scalar.ph3053:                                    ; preds = %scalar.ph3053.preheader, %scalar.ph3053
  %indvars.iv.i2057 = phi i64 [ %indvars.iv.next.i2058, %scalar.ph3053 ], [ %indvars.iv.i2057.ph, %scalar.ph3053.preheader ] ; 3 uses
  %i.baa = getelementptr inbounds nuw [2 x i8], ptr %.017702417, i64 %indvars.iv.i2057 ; 2 uses
  %i.bab = load i16, ptr %i.baa, align 2, !tbaa !97
  %i.bac = sext i16 %i.bab to i32                 ; 2 uses
  %i.bad = getelementptr inbounds nuw [2 x i8], ptr %.017672418, i64 %indvars.iv.i2057 ; 2 uses
  %i.bae = load i16, ptr %i.bad, align 2, !tbaa !97
  %i.baf = sext i16 %i.bae to i32                 ; 2 uses
  %i.bag = sub nsw i32 %i.bac, %i.baf
  %i.bah = sdiv i32 %i.bag, 2
  %i.bai = add nsw i32 %i.baf, %i.bac
  %i.baj = sdiv i32 %i.bai, 2
  %i.bak = trunc nsw i32 %i.bah to i16
  store i16 %i.bak, ptr %i.baa, align 2, !tbaa !97
  %i.bal = trunc nsw i32 %i.baj to i16
  store i16 %i.bal, ptr %i.bad, align 2, !tbaa !97
  %indvars.iv.next.i2058 = add nuw nsw i64 %indvars.iv.i2057, 1 ; 2 uses
  %exitcond.not.i2059 = icmp eq i64 %indvars.iv.next.i2058, %wide.trip.count.i2056
  br i1 %exitcond.not.i2059, label %inverse_temporal_filter.exit, label %scalar.ph3053, !llvm.loop !184

inverse_temporal_filter.exit:                     ; preds = %scalar.ph3053, %middle.block3062
  %i.bam = getelementptr inbounds [2 x i8], ptr %.017702417, i64 %i.azg
  %i.ban = getelementptr inbounds [2 x i8], ptr %.017672418, i64 %i.azg
  %i.bao = add nuw nsw i32 %.017552419, 1         ; 2 uses
  %exitcond2602.not = icmp eq i32 %i.bao, %i.ayf
  br i1 %exitcond2602.not, label %._crit_edge2422, label %bb.ja, !llvm.loop !185

bb.jb:                                            ; preds = %._crit_edge2422
  %i.bap = getelementptr inbounds nuw i8, ptr %i.ast, i64 160
  %i.baq = load ptr, ptr %i.bap, align 8, !tbaa !94
  %i.bar = getelementptr inbounds nuw i8, ptr %i.ast, i64 224 ; 2 uses
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !94
  %i.bat = load ptr, ptr %i.asn, align 8, !tbaa !128
  %i.bau = sext i32 %i.ayh to i64                 ; 8 uses
  %sext1974 = shl i64 %i.ayk, 32
  %i.bav = ashr exact i64 %sext1974, 32           ; 6 uses
  tail call void %i.bat(ptr noundef %i.bas, i64 noundef %i.bau, ptr noundef %i.aze, i64 noundef %i.bau, ptr noundef %i.baq, i64 noundef %i.bav, i32 noundef %i.ayj, i32 noundef %i.ayf) #11
  %i.baw = getelementptr inbounds nuw i8, ptr %i.ast, i64 152
  %i.bax = load ptr, ptr %i.baw, align 8, !tbaa !94
  %i.bay = getelementptr inbounds nuw i8, ptr %i.ast, i64 168
  %i.baz = load ptr, ptr %i.bay, align 8, !tbaa !94
  %i.bba = load ptr, ptr %i.aut, align 8, !tbaa !94
  %i.bbb = load ptr, ptr %i.asn, align 8, !tbaa !128
  tail call void %i.bbb(ptr noundef %i.bba, i64 noundef %i.bau, ptr noundef %i.bax, i64 noundef %i.bav, ptr noundef %i.baz, i64 noundef %i.bav, i32 noundef %i.ayj, i32 noundef %i.ayf) #11
  %i.bbc = load ptr, ptr %i.aya, align 8, !tbaa !94
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.ast, i64 136
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !94
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.ast, i64 240
  %i.bbg = load ptr, ptr %i.bbf, align 8, !tbaa !94
  %i.bbh = load ptr, ptr %i.asn, align 8, !tbaa !128
  tail call void %i.bbh(ptr noundef %i.bbg, i64 noundef %i.bau, ptr noundef %i.bbc, i64 noundef %i.bau, ptr noundef %i.bbe, i64 noundef %i.bav, i32 noundef %i.ayj, i32 noundef %i.ayf) #11
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.ast, i64 128
  %i.bbj = load ptr, ptr %i.bbi, align 8, !tbaa !94
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.ast, i64 144
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !94
  %i.bbm = load ptr, ptr %i.aya, align 8, !tbaa !94
  %i.bbn = load ptr, ptr %i.asn, align 8, !tbaa !128
  tail call void %i.bbn(ptr noundef %i.bbm, i64 noundef %i.bau, ptr noundef %i.bbj, i64 noundef %i.bav, ptr noundef %i.bbl, i64 noundef %i.bav, i32 noundef %i.ayj, i32 noundef %i.ayf) #11
  %i.bbo = load i32, ptr %i.q, align 4, !tbaa !63
  %i.bbp = icmp eq i32 %i.bbo, 1
  br i1 %i.bbp, label %.loopexit2269, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.bbq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01773
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !82 ; 2 uses
  %i.bbs = load i32, ptr %i.acn, align 8, !tbaa !86
  %i.bbt = icmp eq i32 %i.bbs, 145
  br i1 %i.bbt, label %bb.jd, label %bb.jh

bb.jd:                                            ; preds = %bb.jc
  %i.bbu = shl nuw i64 %indvars.iv2604, 1
  %spec.select2028.idx = and i64 %i.bbu, 2
  %spec.select2028 = getelementptr inbounds nuw i8, ptr %i.bbr, i64 %spec.select2028.idx ; 2 uses
  %i.bbv = icmp samesign ugt i64 %indvars.iv2604, 1
  br i1 %i.bbv, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.bbw = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %.01773
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !51
  %i.bby = ashr i32 %i.bbx, 1
  %i.bbz = sext i32 %i.bby to i64
  %i.bca = getelementptr inbounds [2 x i8], ptr %spec.select2028, i64 %i.bbz
  br label %bb.jf

bb.jf:                                            ; preds = %bb.jd, %bb.je
  %.11762.ph = phi ptr [ %spec.select2028, %bb.jd ], [ %i.bca, %bb.je ]
  %i.bcb = shl nuw nsw i32 %i.ayf, 1
  %i.bcc = load i32, ptr %i.asp, align 4, !tbaa !139
  %i.bcd = sdiv i32 %i.bcc, 2
  %i.bce = icmp sgt i32 %i.bcb, %i.bcd
  br i1 %i.bce, label %.thread2183, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.bcf = load i32, ptr %i.asq, align 8, !tbaa !140
  %i.bcg = sdiv i32 %i.bcf, 2
  %i.bch = icmp sgt i32 %i.azb, %i.bcg
  br i1 %i.bch, label %.thread2183, label %bb.jh

end_hunk_0
begin_hunk_1_@cfhd_decode:bb.a
  %i.bee = load ptr, ptr %i.aut, align 8, !tbaa !94 ; 4 uses
  %i.bef = load ptr, ptr %i.bda, align 8, !tbaa !94 ; 4 uses
  %i.beg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01773
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !82 ; 7 uses
  %i.bei = getelementptr inbounds nuw [4 x i8], ptr %i.asm, i64 %.01773
  %i.bej = load i32, ptr %i.bei, align 4, !tbaa !51 ; 4 uses
  %i.bek = sdiv i32 %i.bej, 2
  %i.bel = sext i32 %i.bek to i64                 ; 2 uses
  %wide.trip.count.i2060 = zext nneg i32 %i.azb to i64 ; 4 uses
  %i.bem = shl i32 %i.ayh, 1                      ; 3 uses
  %i.ben = sext i32 %i.bem to i64                 ; 3 uses
  %i.beo = sext i32 %i.bej to i64                 ; 2 uses
  %i.bep = shl nsw i64 %i.beo, 1
  %i.beq = add nsw i32 %i.bec, -1
  %i.ber = zext i32 %i.beq to i64                 ; 2 uses
  %i.bes = mul i64 %i.bep, %i.ber                 ; 2 uses
  %i.bet = shl nuw nsw i64 %wide.trip.count.i2060, 1 ; 3 uses
  %i.beu = getelementptr i8, ptr %i.beh, i64 %i.bes
  %scevgep = getelementptr i8, ptr %i.beu, i64 %i.bet ; 3 uses
  %i.bev = shl nsw i64 %i.bel, 1                  ; 2 uses
  %scevgep3007 = getelementptr i8, ptr %i.beh, i64 %i.bev ; 3 uses
  %i.bew = getelementptr i8, ptr %i.beh, i64 %i.bes
  %i.bex = getelementptr i8, ptr %i.bew, i64 %i.bev
  %scevgep3008 = getelementptr i8, ptr %i.bex, i64 %i.bet ; 3 uses
  %i.bey = shl nsw i64 %i.ben, 1
  %i.bez = mul i64 %i.bey, %i.ber
  %i.bfa = add i64 %i.bez, %i.bet                 ; 2 uses
  %scevgep3009 = getelementptr i8, ptr %i.bef, i64 %i.bfa ; 2 uses
  %scevgep3010 = getelementptr i8, ptr %i.bee, i64 %i.bfa ; 2 uses
  %i.bfb = insertelement <4 x i32> poison, i32 %i.bej, i64 0
  %i.bfc = shufflevector <4 x i32> %i.bfb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfd = insertelement <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, i32 %i.bem, i64 1
  %i.bfe = shufflevector <4 x i32> %i.bfd, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %min.iters.check3035 = icmp ult i32 %i.ayj, 4
  %bound0 = icmp ult ptr %i.beh, %scevgep3008
  %bound1 = icmp ult ptr %scevgep3007, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound03012 = icmp ult ptr %i.beh, %scevgep3009
  %bound13013 = icmp ult ptr %i.bef, %scevgep
  %found.conflict3014 = and i1 %bound03012, %bound13013
  %bound03017 = icmp ult ptr %i.beh, %scevgep3010
  %bound13018 = icmp ult ptr %i.bee, %scevgep
  %found.conflict3019 = and i1 %bound03017, %bound13018
  %bound03023 = icmp ult ptr %scevgep3007, %scevgep3009
  %bound13024 = icmp ult ptr %i.bef, %scevgep3008
  %found.conflict3025 = and i1 %bound03023, %bound13024
  %i.bff = or <4 x i32> %i.bfc, %i.bfe
  %i.bfg = icmp slt <4 x i32> %i.bff, zeroinitializer
  %bound03029 = icmp ult ptr %scevgep3007, %scevgep3010
  %bound13030 = icmp ult ptr %i.bee, %scevgep3008
  %found.conflict3031 = and i1 %bound03029, %bound13030
  %i.bfh = or i32 %i.bem, %i.bej
  %i.bfi = icmp slt i32 %i.bfh, 0
  %i.bfj = bitcast <4 x i1> %i.bfg to i4
  %i.bfk = icmp ne i4 %i.bfj, 0
  %op.rdx3285 = or i1 %i.bfk, %i.bfi
  %op.rdx3286 = or i1 %found.conflict, %found.conflict3014
  %op.rdx3287 = or i1 %found.conflict3019, %found.conflict3025
  %op.rdx3288 = or i1 %op.rdx3285, %op.rdx3286
  %op.rdx3289 = or i1 %op.rdx3287, %found.conflict3031
  %op.rdx3290 = or i1 %op.rdx3288, %op.rdx3289
  %n.vec3037 = and i64 %wide.trip.count.i2060, 2147483640 ; 3 uses
  %cmp.n3044 = icmp eq i64 %n.vec3037, %wide.trip.count.i2060
  br label %bb.jk

bb.jk:                                            ; preds = %.lr.ph2434, %interlaced_vertical_filter.exit2072
  %.017532432 = phi i32 [ 0, %.lr.ph2434 ], [ %i.bgy, %interlaced_vertical_filter.exit2072 ]
  %.317642431 = phi ptr [ %i.beh, %.lr.ph2434 ], [ %i.bgx, %interlaced_vertical_filter.exit2072 ] ; 4 uses
  %.217692430 = phi ptr [ %i.bee, %.lr.ph2434 ], [ %i.bgw, %interlaced_vertical_filter.exit2072 ] ; 3 uses
  %.217722429 = phi ptr [ %i.bef, %.lr.ph2434 ], [ %i.bgv, %interlaced_vertical_filter.exit2072 ] ; 3 uses
  %invariant.gep.i2061 = getelementptr [2 x i8], ptr %.317642431, i64 %i.bel ; 2 uses
  %brmerge3414 = select i1 %min.iters.check3035, i1 true, i1 %op.rdx3290
  br i1 %brmerge3414, label %scalar.ph.preheader, label %vector.body3038

vector.body3038:                                  ; preds = %bb.jk, %vector.body3038
  %index3039 = phi i64 [ %index.next3042, %vector.body3038 ], [ 0, %bb.jk ] ; 5 uses
  %i.bfl = getelementptr inbounds nuw [2 x i8], ptr %.217722429, i64 %index3039
  %wide.load3040 = load <8 x i16>, ptr %i.bfl, align 2, !tbaa !97, !alias.scope !187
  %i.bfm = sext <8 x i16> %wide.load3040 to <8 x i32> ; 2 uses
  %i.bfn = getelementptr inbounds nuw [2 x i8], ptr %.217692430, i64 %index3039
  %wide.load3041 = load <8 x i16>, ptr %i.bfn, align 2, !tbaa !97, !alias.scope !190
  %i.bfo = sext <8 x i16> %wide.load3041 to <8 x i32> ; 2 uses
  %i.bfp = sub nsw <8 x i32> %i.bfm, %i.bfo       ; 2 uses
  %i.bfq = sdiv <8 x i32> %i.bfp, splat (i32 2)   ; 2 uses
  %i.bfr = add nsw <8 x i32> %i.bfo, %i.bfm       ; 2 uses
  %i.bfs = sdiv <8 x i32> %i.bfr, splat (i32 2)   ; 2 uses
  %i.bft = icmp ult <8 x i32> %i.bfq, splat (i32 1024)
  %i.bfu = icmp slt <8 x i32> %i.bfp, splat (i32 -1)
  %i.bfv = select <8 x i1> %i.bfu, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.bfw = select <8 x i1> %i.bft, <8 x i32> %i.bfq, <8 x i32> %i.bfv
  %i.bfx = trunc nsw <8 x i32> %i.bfw to <8 x i16>
  %i.bfy = getelementptr inbounds nuw [2 x i8], ptr %.317642431, i64 %index3039
  store <8 x i16> %i.bfx, ptr %i.bfy, align 2, !tbaa !97, !alias.scope !192, !noalias !194
  %i.bfz = icmp ult <8 x i32> %i.bfs, splat (i32 1024)
  %i.bga = icmp slt <8 x i32> %i.bfr, splat (i32 -1)
  %i.bgb = select <8 x i1> %i.bga, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.bgc = select <8 x i1> %i.bfz, <8 x i32> %i.bfs, <8 x i32> %i.bgb
  %i.bgd = trunc nsw <8 x i32> %i.bgc to <8 x i16>
  %i.bge = getelementptr [2 x i8], ptr %invariant.gep.i2061, i64 %index3039
  store <8 x i16> %i.bgd, ptr %i.bge, align 2, !tbaa !97, !alias.scope !196, !noalias !197
  %index.next3042 = add nuw i64 %index3039, 8     ; 2 uses
  %i.bgf = icmp eq i64 %index.next3042, %n.vec3037
  br i1 %i.bgf, label %middle.block3043, label %vector.body3038, !llvm.loop !198

middle.block3043:                                 ; preds = %vector.body3038
  br i1 %cmp.n3044, label %interlaced_vertical_filter.exit2072, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.jk, %middle.block3043
  %indvars.iv.i2062.ph = phi i64 [ %n.vec3037, %middle.block3043 ], [ 0, %bb.jk ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i2062 = phi i64 [ %indvars.iv.next.i2070, %scalar.ph ], [ %indvars.iv.i2062.ph, %scalar.ph.preheader ] ; 5 uses
  %i.bgg = getelementptr inbounds nuw [2 x i8], ptr %.217722429, i64 %indvars.iv.i2062
  %i.bgh = load i16, ptr %i.bgg, align 2, !tbaa !97
  %i.bgi = sext i16 %i.bgh to i32                 ; 2 uses
  %i.bgj = getelementptr inbounds nuw [2 x i8], ptr %.217692430, i64 %indvars.iv.i2062
  %i.bgk = load i16, ptr %i.bgj, align 2, !tbaa !97
  %i.bgl = sext i16 %i.bgk to i32                 ; 2 uses
  %i.bgm = sub nsw i32 %i.bgi, %i.bgl             ; 2 uses
  %i.bgn = sdiv i32 %i.bgm, 2                     ; 2 uses
  %i.bgo = add nsw i32 %i.bgl, %i.bgi             ; 2 uses
  %i.bgp = sdiv i32 %i.bgo, 2                     ; 2 uses
  %.not.i17.i2063 = icmp ult i32 %i.bgn, 1024
  %isnotneg.inv.i18.i2064 = icmp slt i32 %i.bgm, -1
  %i.bgq = select i1 %isnotneg.inv.i18.i2064, i32 0, i32 1023
  %.0.i19.i2065 = select i1 %.not.i17.i2063, i32 %i.bgn, i32 %i.bgq
  %i.bgr = trunc nsw i32 %.0.i19.i2065 to i16
  %i.bgs = getelementptr inbounds nuw [2 x i8], ptr %.317642431, i64 %indvars.iv.i2062
  store i16 %i.bgr, ptr %i.bgs, align 2, !tbaa !97
  %.not.i.i2066 = icmp ult i32 %i.bgp, 1024
  %isnotneg.inv.i.i2067 = icmp slt i32 %i.bgo, -1
  %i.bgt = select i1 %isnotneg.inv.i.i2067, i32 0, i32 1023
  %.0.i.i2068 = select i1 %.not.i.i2066, i32 %i.bgp, i32 %i.bgt
  %i.bgu = trunc nsw i32 %.0.i.i2068 to i16
  %gep.i2069 = getelementptr [2 x i8], ptr %invariant.gep.i2061, i64 %indvars.iv.i2062
  store i16 %i.bgu, ptr %gep.i2069, align 2, !tbaa !97
  %indvars.iv.next.i2070 = add nuw nsw i64 %indvars.iv.i2062, 1 ; 2 uses
  %exitcond.not.i2071 = icmp eq i64 %indvars.iv.next.i2070, %wide.trip.count.i2060
  br i1 %exitcond.not.i2071, label %interlaced_vertical_filter.exit2072, label %scalar.ph, !llvm.loop !199

interlaced_vertical_filter.exit2072:              ; preds = %scalar.ph, %middle.block3043
  %i.bgv = getelementptr inbounds [2 x i8], ptr %.217722429, i64 %i.ben
  %i.bgw = getelementptr inbounds [2 x i8], ptr %.217692430, i64 %i.ben
  %i.bgx = getelementptr inbounds [2 x i8], ptr %.317642431, i64 %i.beo
  %i.bgy = add nuw nsw i32 %.017532432, 1         ; 2 uses
  %exitcond2603.not = icmp eq i32 %i.bgy, %i.bec
  br i1 %exitcond2603.not, label %.loopexit2269, label %bb.jk, !llvm.loop !200

.loopexit2269:                                    ; preds = %.lr.ph2428, %interlaced_vertical_filter.exit2072, %bb.jh, %bb.jj, %bb.jb, %bb.ji
  %indvars.iv.next2605 = add nuw nsw i64 %indvars.iv2604, 1 ; 2 uses
  %i.bgz = load i32, ptr %i.y, align 8, !tbaa !43 ; 2 uses
  %i.bha = sext i32 %i.bgz to i64
  %i.bhb = icmp slt i64 %indvars.iv.next2605, %i.bha
  br i1 %i.bhb, label %bb.il, label %.loopexit2727, !llvm.loop !201

.loopexit2727:                                    ; preds = %.loopexit2269, %.loopexit2262, %bb.ij, %bb.hh, %bb.ik
  %i.bhc = phi i32 [ %i.adg, %bb.hh ], [ %i.adg, %bb.ij ], [ %i.adg, %bb.ik ], [ %i.asa, %.loopexit2262 ], [ %i.bgz, %.loopexit2269 ] ; 2 uses
  %.pr2226 = load i32, ptr %i.r, align 8, !tbaa !29
  %i.bhd = icmp eq i32 %.pr2226, 2
  br i1 %i.bhd, label %bb.jl, label %.loopexit2259

bb.jl:                                            ; preds = %.loopexit2727
  %i.bhe = load i32, ptr %i.q, align 4, !tbaa !63
  %i.bhf = icmp eq i32 %i.bhe, 1
  %i.bhg = icmp sgt i32 %i.bhc, 0
  %or.cond2799 = and i1 %i.bhf, %i.bhg
  br i1 %or.cond2799, label %.lr.ph2481, label %.loopexit2259

.lr.ph2481:                                       ; preds = %bb.jl
  %i.bhh = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.b, i64 42128 ; 3 uses
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  %i.bhk = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.bhl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.b, i64 46272
  br label %bb.jm

bb.jm:                                            ; preds = %.lr.ph2481, %.loopexit
  %i.bhn = phi i32 [ %i.bhc, %.lr.ph2481 ], [ %i.bmj, %.loopexit ] ; 3 uses
  %indvars.iv2624 = phi i64 [ 0, %.lr.ph2481 ], [ %indvars.iv.next2625, %.loopexit ] ; 7 uses
  %i.bho = load i32, ptr %i.acn, align 8, !tbaa !86
  %i.bhp = icmp eq i32 %i.bho, 145                ; 2 uses
  br i1 %i.bhp, label %bb.jn, label %bb.jo

bb.jn:                                            ; preds = %bb.jm
  %i.bhq = load i32, ptr %i.bhh, align 4, !tbaa !51 ; 2 uses
  br label %bb.jp

bb.jo:                                            ; preds = %bb.jm
  %i.bhr = icmp eq i64 %indvars.iv2624, 1
  %i.bhs = icmp eq i64 %indvars.iv2624, 2
  %i.bht = select i1 %i.bhs, i64 1, i64 %indvars.iv2624
  %i.bhu = select i1 %i.bhr, i64 2, i64 %i.bht    ; 2 uses
  %i.bhv = getelementptr inbounds nuw [4 x i8], ptr %i.bhh, i64 %i.bhu
  %i.bhw = load i32, ptr %i.bhv, align 4, !tbaa !51 ; 2 uses
  %i.bhx = sdiv i32 %i.bhw, 2
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.bhy = phi i32 [ %i.bhq, %bb.jn ], [ %i.bhw, %bb.jo ] ; 4 uses
  %.01747.in = phi i32 [ %i.bhq, %bb.jn ], [ %i.bhx, %bb.jo ]
  %.01745 = phi i64 [ 0, %bb.jn ], [ %i.bhu, %bb.jo ] ; 4 uses
  %.01747 = sext i32 %.01747.in to i64
  %i.bhz = getelementptr inbounds nuw [1024 x i8], ptr %i.bhi, i64 %indvars.iv2624 ; 9 uses
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 820
  %i.bib = load i32, ptr %i.bia, align 4, !tbaa !75 ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bhz, i64 808
  %i.bid = load i32, ptr %i.bic, align 8, !tbaa !96 ; 3 uses
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bhz, i64 812
  %i.bif = load i32, ptr %i.bie, align 4, !tbaa !72 ; 5 uses
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhz, i64 816
  %i.bih = load i32, ptr %i.big, align 8, !tbaa !95
  %i.bii = icmp sgt i32 %i.bib, %i.bih
  %i.bij = icmp sgt i32 %i.bif, %i.bid
  %or.cond2029 = select i1 %i.bii, i1 true, i1 %i.bij
  br i1 %or.cond2029, label %bb.js, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.bik = icmp slt i32 %i.bif, 3
  %i.bil = icmp slt i32 %i.bib, 3
  %or.cond106 = or i1 %i.bil, %i.bik
  br i1 %or.cond106, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.bim = shl nuw nsw i32 %i.bif, 1              ; 3 uses
  %i.bin = load i32, ptr %i.bhz, align 8, !tbaa !138
  %i.bio = icmp sgt i32 %i.bim, %i.bin
  br i1 %i.bio, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr, %bb.jq, %bb.jp
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2183

bb.jt:                                            ; preds = %bb.jr
  %i.bip = load i32, ptr %i.bhj, align 4, !tbaa !42
  %.not1983 = icmp eq i32 %i.bip, 0
  br i1 %.not1983, label %bb.jz, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.biq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01745
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !82 ; 2 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bhz, i64 240
  %i.bit = load ptr, ptr %i.bis, align 8, !tbaa !94
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bhz, i64 248
  %i.biv = load ptr, ptr %i.biu, align 8, !tbaa !94
  br i1 %i.bhp, label %bb.jv, label %bb.jx

bb.jv:                                            ; preds = %bb.ju
  %i.biw = shl nuw nsw i32 %i.bib, 1
  %i.bix = load i32, ptr %i.bhk, align 4, !tbaa !139
  %i.biy = sdiv i32 %i.bix, 2
  %i.biz = icmp sgt i32 %i.biw, %i.biy
  br i1 %i.biz, label %.thread2183, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.bja = icmp samesign ugt i64 %indvars.iv2624, 1
  %i.bjb = shl nuw i64 %indvars.iv2624, 1
  %spec.select2030.idx = and i64 %i.bjb, 2
  %spec.select2030 = getelementptr inbounds nuw i8, ptr %i.bir, i64 %spec.select2030.idx
  %i.bjc = ashr i32 %i.bhy, 1
  %i.bjd = sext i32 %i.bjc to i64
  %.1.ph.idx = select i1 %i.bja, i64 %i.bjd, i64 0
  %.1.ph = getelementptr inbounds [2 x i8], ptr %spec.select2030, i64 %.1.ph.idx
  %i.bje = load i32, ptr %i.bhl, align 8, !tbaa !140
  %i.bjf = sdiv i32 %i.bje, 2
  %i.bjg = icmp sgt i32 %i.bim, %i.bjf
  br i1 %i.bjg, label %.thread2183, label %bb.jx

bb.jx:                                            ; preds = %bb.ju, %bb.jw
  %.12230 = phi ptr [ %.1.ph, %bb.jw ], [ %i.bir, %bb.ju ]
  %i.bjh = getelementptr inbounds nuw [1024 x i8], ptr %i.bhi, i64 %.01745
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjh, i64 4 ; 2 uses
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !141
  %i.bjk = icmp sgt i32 %i.bjj, 0
  br i1 %i.bjk, label %.lr.ph2472, label %.loopexit

.lr.ph2472:                                       ; preds = %bb.jx
  %i.bjl = sext i32 %i.bid to i64                 ; 2 uses
  br label %bb.jy

bb.jy:                                            ; preds = %.lr.ph2472, %bb.jy
  %.017442470 = phi i32 [ 0, %.lr.ph2472 ], [ %i.bjr, %bb.jy ]
  %.22469 = phi ptr [ %.12230, %.lr.ph2472 ], [ %i.bjq, %bb.jy ] ; 2 uses
  %.017492468 = phi ptr [ %i.biv, %.lr.ph2472 ], [ %i.bjp, %bb.jy ] ; 2 uses
  %.017512467 = phi ptr [ %i.bit, %.lr.ph2472 ], [ %i.bjo, %bb.jy ] ; 2 uses
  %i.bjm = load ptr, ptr %i.bhm, align 8, !tbaa !142
  %i.bjn = load i32, ptr %i.h, align 8, !tbaa !54
  tail call void %i.bjm(ptr noundef %.22469, ptr noundef %.017512467, ptr noundef %.017492468, i32 noundef %i.bif, i32 noundef %i.bjn) #11
  %i.bjo = getelementptr inbounds [2 x i8], ptr %.017512467, i64 %i.bjl
  %i.bjp = getelementptr inbounds [2 x i8], ptr %.017492468, i64 %i.bjl
  %i.bjq = getelementptr inbounds [2 x i8], ptr %.22469, i64 %.01747
  %i.bjr = add nuw nsw i32 %.017442470, 1         ; 2 uses
  %i.bjs = load i32, ptr %i.bji, align 4, !tbaa !141
  %i.bjt = icmp slt i32 %i.bjr, %i.bjs
  br i1 %i.bjt, label %bb.jy, label %.loopexit.loopexit2491, !llvm.loop !202

bb.jz:                                            ; preds = %bb.jt
  %i.bju = getelementptr inbounds nuw [1024 x i8], ptr %i.bhi, i64 %.01745
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bju, i64 4
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !141 ; 2 uses
  %i.bjx = sdiv i32 %i.bjw, 2                     ; 2 uses
  %i.bjy = icmp sgt i32 %i.bjw, 1
  br i1 %i.bjy, label %.lr.ph2478, label %.loopexit

.lr.ph2478:                                       ; preds = %bb.jz
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bhz, i64 248
  %i.bka = load ptr, ptr %i.bjz, align 8, !tbaa !94 ; 4 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bhz, i64 240
  %i.bkc = load ptr, ptr %i.bkb, align 8, !tbaa !94 ; 4 uses
  %i.bkd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01745
  %i.bke = load ptr, ptr %i.bkd, align 8, !tbaa !82 ; 7 uses
  %i.bkf = sdiv i32 %i.bhy, 2
  %i.bkg = sext i32 %i.bkf to i64                 ; 2 uses
  %wide.trip.count.i2073 = zext nneg i32 %i.bim to i64 ; 4 uses
  %i.bkh = shl i32 %i.bid, 1
  %10 = zext i32 %i.bkh to i64                    ; 3 uses
  %i.bki = sext i32 %i.bhy to i64                 ; 2 uses
  %i.bkj = shl nsw i64 %i.bki, 1
  %i.bkk = add nsw i32 %i.bjx, -1
  %i.bkl = zext i32 %i.bkk to i64                 ; 2 uses
  %i.bkm = mul i64 %i.bkj, %i.bkl                 ; 2 uses
  %i.bkn = shl nuw nsw i64 %wide.trip.count.i2073, 1 ; 3 uses
  %i.bko = getelementptr i8, ptr %i.bke, i64 %i.bkm
  %scevgep3228.a = getelementptr i8, ptr %i.bko, i64 %i.bkn ; 3 uses
  %i.bkp = shl nsw i64 %i.bkg, 1                  ; 2 uses
  %scevgep3229 = getelementptr i8, ptr %i.bke, i64 %i.bkp ; 3 uses
  %i.bkq = getelementptr i8, ptr %i.bke, i64 %i.bkm
  %i.bkr = getelementptr i8, ptr %i.bkq, i64 %i.bkp
  %scevgep3230 = getelementptr i8, ptr %i.bkr, i64 %i.bkn ; 3 uses
  %i.bks = shl nuw nsw i64 %10, 1
  %i.bkt = mul i64 %i.bks, %i.bkl
  %i.bku = add i64 %i.bkt, %i.bkn                 ; 2 uses
  %scevgep3231 = getelementptr i8, ptr %i.bkc, i64 %i.bku ; 2 uses
  %scevgep3232 = getelementptr i8, ptr %i.bka, i64 %i.bku ; 2 uses
  %min.iters.check3263 = icmp ult i32 %i.bif, 4
  %bound03233 = icmp ult ptr %i.bke, %scevgep3230
  %bound13234 = icmp ult ptr %scevgep3229, %scevgep3228.a
  %found.conflict3235 = and i1 %bound03233, %bound13234
  %bound03238 = icmp ult ptr %i.bke, %scevgep3231
  %bound13239 = icmp ult ptr %i.bkc, %scevgep3228.a
  %found.conflict3240 = and i1 %bound03238, %bound13239
  %stride.check3237 = icmp slt i32 %i.bhy, 0
  %11 = or i1 %found.conflict3240, %stride.check3237
  %conflict.rdx3238 = or i1 %found.conflict3235, %11
  %bound03250 = icmp ult ptr %i.bke, %scevgep3232
  %bound13251 = icmp ult ptr %i.bka, %scevgep3228.a
  %found.conflict3252 = and i1 %bound03250, %bound13251
  %conflict.rdx3243 = or i1 %found.conflict3252, %conflict.rdx3238
  %bound03256 = icmp ult ptr %scevgep3229, %scevgep3231
  %bound13257 = icmp ult ptr %i.bkc, %scevgep3230
  %found.conflict3258 = and i1 %bound03256, %bound13257
  %op.rdx3274 = or i1 %found.conflict3258, %conflict.rdx3243
  %bound03249 = icmp ult ptr %scevgep3229, %scevgep3232
  %bound13250 = icmp ult ptr %i.bka, %scevgep3230
  %found.conflict3251 = and i1 %bound03249, %bound13250
  %op.rdx3278 = or i1 %found.conflict3251, %op.rdx3274
  %n.vec3265 = and i64 %wide.trip.count.i2073, 2147483640 ; 3 uses
  %cmp.n3272 = icmp eq i64 %n.vec3265, %wide.trip.count.i2073
  br label %bb.ka

bb.ka:                                            ; preds = %.lr.ph2478, %interlaced_vertical_filter.exit2085
  %.02476 = phi i32 [ 0, %.lr.ph2478 ], [ %i.bmi, %interlaced_vertical_filter.exit2085 ]
  %.32475 = phi ptr [ %i.bke, %.lr.ph2478 ], [ %i.bmh, %interlaced_vertical_filter.exit2085 ] ; 4 uses
  %.117502474 = phi ptr [ %i.bka, %.lr.ph2478 ], [ %i.bmg, %interlaced_vertical_filter.exit2085 ] ; 3 uses
  %.117522473 = phi ptr [ %i.bkc, %.lr.ph2478 ], [ %i.bmf, %interlaced_vertical_filter.exit2085 ] ; 3 uses
  %invariant.gep.i2074 = getelementptr [2 x i8], ptr %.32475, i64 %i.bkg ; 2 uses
  %brmerge3415 = select i1 %min.iters.check3263, i1 true, i1 %op.rdx3278
  br i1 %brmerge3415, label %scalar.ph3262.preheader, label %vector.body3266

vector.body3266:                                  ; preds = %bb.ka, %vector.body3266
  %index3267 = phi i64 [ %index.next3270, %vector.body3266 ], [ 0, %bb.ka ] ; 5 uses
  %i.bkv = getelementptr inbounds nuw [2 x i8], ptr %.117522473, i64 %index3267
  %wide.load3268 = load <8 x i16>, ptr %i.bkv, align 2, !tbaa !97, !alias.scope !203
  %i.bkw = sext <8 x i16> %wide.load3268 to <8 x i32> ; 2 uses
  %i.bkx = getelementptr inbounds nuw [2 x i8], ptr %.117502474, i64 %index3267
  %wide.load3269 = load <8 x i16>, ptr %i.bkx, align 2, !tbaa !97, !alias.scope !206
  %i.bky = sext <8 x i16> %wide.load3269 to <8 x i32> ; 2 uses
  %i.bkz = sub nsw <8 x i32> %i.bkw, %i.bky       ; 2 uses
  %i.bla = sdiv <8 x i32> %i.bkz, splat (i32 2)   ; 2 uses
  %i.blb = add nsw <8 x i32> %i.bky, %i.bkw       ; 2 uses
  %i.blc = sdiv <8 x i32> %i.blb, splat (i32 2)   ; 2 uses
  %i.bld = icmp ult <8 x i32> %i.bla, splat (i32 1024)
  %i.ble = icmp slt <8 x i32> %i.bkz, splat (i32 -1)
  %i.blf = select <8 x i1> %i.ble, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.blg = select <8 x i1> %i.bld, <8 x i32> %i.bla, <8 x i32> %i.blf
  %i.blh = trunc nsw <8 x i32> %i.blg to <8 x i16>
  %i.bli = getelementptr inbounds nuw [2 x i8], ptr %.32475, i64 %index3267
  store <8 x i16> %i.blh, ptr %i.bli, align 2, !tbaa !97, !alias.scope !208, !noalias !210
  %i.blj = icmp ult <8 x i32> %i.blc, splat (i32 1024)
  %i.blk = icmp slt <8 x i32> %i.blb, splat (i32 -1)
  %i.bll = select <8 x i1> %i.blk, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.blm = select <8 x i1> %i.blj, <8 x i32> %i.blc, <8 x i32> %i.bll
  %i.bln = trunc nsw <8 x i32> %i.blm to <8 x i16>
  %i.blo = getelementptr [2 x i8], ptr %invariant.gep.i2074, i64 %index3267
  store <8 x i16> %i.bln, ptr %i.blo, align 2, !tbaa !97, !alias.scope !212, !noalias !213
  %index.next3270 = add nuw i64 %index3267, 8     ; 2 uses
  %i.blp = icmp eq i64 %index.next3270, %n.vec3265
  br i1 %i.blp, label %middle.block3271, label %vector.body3266, !llvm.loop !214

middle.block3271:                                 ; preds = %vector.body3266
  br i1 %cmp.n3272, label %interlaced_vertical_filter.exit2085, label %scalar.ph3262.preheader

scalar.ph3262.preheader:                          ; preds = %bb.ka, %middle.block3271
  %indvars.iv.i2075.ph = phi i64 [ %n.vec3265, %middle.block3271 ], [ 0, %bb.ka ]
  br label %scalar.ph3262

scalar.ph3262:                                    ; preds = %scalar.ph3262.preheader, %scalar.ph3262
  %indvars.iv.i2075 = phi i64 [ %indvars.iv.next.i2083, %scalar.ph3262 ], [ %indvars.iv.i2075.ph, %scalar.ph3262.preheader ] ; 5 uses
  %i.blq = getelementptr inbounds nuw [2 x i8], ptr %.117522473, i64 %indvars.iv.i2075
  %i.blr = load i16, ptr %i.blq, align 2, !tbaa !97
  %i.bls = sext i16 %i.blr to i32                 ; 2 uses
  %i.blt = getelementptr inbounds nuw [2 x i8], ptr %.117502474, i64 %indvars.iv.i2075
  %i.blu = load i16, ptr %i.blt, align 2, !tbaa !97
  %i.blv = sext i16 %i.blu to i32                 ; 2 uses
  %i.blw = sub nsw i32 %i.bls, %i.blv             ; 2 uses
  %i.blx = sdiv i32 %i.blw, 2                     ; 2 uses
  %i.bly = add nsw i32 %i.blv, %i.bls             ; 2 uses
  %i.blz = sdiv i32 %i.bly, 2                     ; 2 uses
  %.not.i17.i2076 = icmp ult i32 %i.blx, 1024
  %isnotneg.inv.i18.i2077 = icmp slt i32 %i.blw, -1
  %i.bma = select i1 %isnotneg.inv.i18.i2077, i32 0, i32 1023
  %.0.i19.i2078 = select i1 %.not.i17.i2076, i32 %i.blx, i32 %i.bma
  %i.bmb = trunc nsw i32 %.0.i19.i2078 to i16
  %i.bmc = getelementptr inbounds nuw [2 x i8], ptr %.32475, i64 %indvars.iv.i2075
  store i16 %i.bmb, ptr %i.bmc, align 2, !tbaa !97
  %.not.i.i2079 = icmp ult i32 %i.blz, 1024
  %isnotneg.inv.i.i2080 = icmp slt i32 %i.bly, -1
  %i.bmd = select i1 %isnotneg.inv.i.i2080, i32 0, i32 1023
  %.0.i.i2081 = select i1 %.not.i.i2079, i32 %i.blz, i32 %i.bmd
  %i.bme = trunc nsw i32 %.0.i.i2081 to i16
  %gep.i2082 = getelementptr [2 x i8], ptr %invariant.gep.i2074, i64 %indvars.iv.i2075
  store i16 %i.bme, ptr %gep.i2082, align 2, !tbaa !97
  %indvars.iv.next.i2083 = add nuw nsw i64 %indvars.iv.i2075, 1 ; 2 uses
  %exitcond.not.i2084 = icmp eq i64 %indvars.iv.next.i2083, %wide.trip.count.i2073
  br i1 %exitcond.not.i2084, label %interlaced_vertical_filter.exit2085, label %scalar.ph3262, !llvm.loop !215

interlaced_vertical_filter.exit2085:              ; preds = %scalar.ph3262, %middle.block3271
  %i.bmf = getelementptr inbounds nuw [2 x i8], ptr %.117522473, i64 %10
  %i.bmg = getelementptr inbounds nuw [2 x i8], ptr %.117502474, i64 %10
  %i.bmh = getelementptr inbounds [2 x i8], ptr %.32475, i64 %i.bki
  %i.bmi = add nuw nsw i32 %.02476, 1             ; 2 uses
  %exitcond2623.not = icmp eq i32 %i.bmi, %i.bjx
  br i1 %exitcond2623.not, label %.loopexit, label %bb.ka, !llvm.loop !216

.loopexit.loopexit2491:                           ; preds = %bb.jy
  %.pre2631 = load i32, ptr %i.y, align 8, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %interlaced_vertical_filter.exit2085, %.loopexit.loopexit2491, %bb.jx, %bb.jz
  %i.bmj = phi i32 [ %.pre2631, %.loopexit.loopexit2491 ], [ %i.bhn, %bb.jz ], [ %i.bhn, %bb.jx ], [ %i.bhn, %interlaced_vertical_filter.exit2085 ] ; 2 uses
  %indvars.iv.next2625 = add nuw nsw i64 %indvars.iv2624, 1 ; 2 uses
  %i.bmk = sext i32 %i.bmj to i64
  %i.bml = icmp slt i64 %indvars.iv.next2625, %i.bmk
  br i1 %i.bml, label %bb.jm, label %.loopexit2259, !llvm.loop !217

.loopexit2259:                                    ; preds = %.loopexit, %._crit_edge2405, %bb.jl, %.loopexit2727
  %i.bmm = load i32, ptr %i.acn, align 8, !tbaa !86
  %i.bmn = icmp eq i32 %i.bmm, 145
  br i1 %i.bmn, label %bb.kb, label %.critedge

bb.kb:                                            ; preds = %.loopexit2259
  %i.bmo = load i32, ptr %i.h, align 8, !tbaa !54
  tail call fastcc void @process_bayer(ptr noundef %1, i32 noundef %i.bmo)
  br label %.critedge

.critedge:                                        ; preds = %.loopexit2259, %bb.kb
  %i.bmp = icmp slt i32 %.01835.lcssa, 0
  br i1 %i.bmp, label %.thread2183, label %bb.kc

bb.kc:                                            ; preds = %.critedge
  store i32 1, ptr %2, align 4, !tbaa !51
  %i.bmq = load i32, ptr %i.ab, align 8, !tbaa !69
  br label %.thread2183

.thread2183:                                      ; preds = %.thread2151, %bb.eb, %bb.ep, %bb.ct, %bb.cs, %bb.eo, %bb.ev, %bb.dq, %bb.ds, %bb.do, %bb.ea, %.thread2149, %bb.dw, %.preheader2275, %bb.gt, %bb.gu, %bb.gv, %.thread2189.loopexit, %bb.gw, %bb.gx, %.thread2189.loopexit.1, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %.thread2189.loopexit.3, %bb.hd, %bb.he, %.thread2189.loopexit.4, %bb.hf, %bb.hg, %.preheader2275.us, %bb.gi, %bb.gj, %bb.gk, %.thread2189.us.us, %bb.gl, %bb.gm, %bb.gn, %bb.go, %bb.gp, %.thread2189.us.us.3, %bb.gq, %bb.gr, %bb.jf, %bb.jg, %bb.ib, %bb.ic, %bb.jv, %bb.jw, %bb.js, %bb.ei, %bb.ek, %bb.eg, %bb.ee, %bb.ck, %bb.cf, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.az, %bb.ax, %bb.ar, %bb.ak, %bb.ah, %bb.ag, %bb.y, %bb.w, %bb.u, %bb.er, %bb.fv, %bb.fp, %bb.eu, %bb.ir, %bb.iv, %bb.iz, %bb.hs, %bb.hw, %bb.gs, %bb.ho, %bb.gg, %bb.dn, %.critedge, %bb.kc
  %.61829 = phi i32 [ -1163346256, %bb.u ], [ %.01835.lcssa, %.critedge ], [ %i.bmq, %bb.kc ], [ -22, %bb.ek ], [ -1094995529, %bb.ib ], [ -22, %bb.er ], [ -22, %bb.fv ], [ -22, %bb.fp ], [ %i.ke, %bb.dn ], [ -22, %bb.ir ], [ -22, %bb.iv ], [ -22, %bb.iz ], [ -22, %bb.eg ], [ -1094995529, %.preheader2275.us ], [ -22, %bb.hs ], [ -22, %bb.hw ], [ -22, %bb.js ], [ -1094995529, %.preheader2275 ], [ -22, %bb.gs ], [ -22, %bb.ho ], [ -1094995529, %bb.jf ], [ -22, %bb.ee ], [ -22, %bb.gg ], [ -22, %bb.ei ], [ -22, %bb.eu ], [ -1163346256, %bb.ck ], [ -22, %bb.cf ], [ -22, %bb.bw ], [ -22, %bb.bt ], [ -22, %bb.bq ], [ -22, %bb.bn ], [ -1094995529, %bb.bk ], [ -1163346256, %bb.az ], [ -22, %bb.ax ], [ -22, %bb.ar ], [ -22, %bb.ak ], [ -22, %bb.ah ], [ -22, %bb.ag ], [ -22, %bb.y ], [ -1163346256, %bb.w ], [ -1094995529, %bb.jv ], [ -1094995529, %bb.jw ], [ -1094995529, %bb.ic ], [ -1094995529, %bb.jg ], [ -1094995529, %bb.gr ], [ -1094995529, %bb.gq ], [ -1094995529, %.thread2189.us.us.3 ], [ -1094995529, %bb.gp ], [ -1094995529, %bb.go ], [ -1094995529, %bb.gn ], [ -1094995529, %bb.gm ], [ -1094995529, %bb.gl ], [ -1094995529, %.thread2189.us.us ], [ -1094995529, %bb.gk ], [ -1094995529, %bb.gj ], [ -1094995529, %bb.gi ], [ -1094995529, %bb.hg ], [ -1094995529, %bb.hf ], [ -1094995529, %.thread2189.loopexit.4 ], [ -1094995529, %bb.he ], [ -1094995529, %bb.hd ], [ -1094995529, %.thread2189.loopexit.3 ], [ -1094995529, %bb.hc ], [ -1094995529, %bb.hb ], [ -1094995529, %bb.ha ], [ -1094995529, %bb.gz ], [ -1094995529, %bb.gy ], [ -1094995529, %.thread2189.loopexit.1 ], [ -1094995529, %bb.gx ], [ -1094995529, %bb.gw ], [ -1094995529, %.thread2189.loopexit ], [ -1094995529, %bb.gv ], [ -1094995529, %bb.gu ], [ -1094995529, %bb.gt ], [ -1094995529, %bb.eb ], [ -1094995529, %.thread2151 ], [ -1094995529, %bb.eo ], [ -1094995529, %bb.ev ], [ -1094995529, %bb.cs ], [ -1094995529, %bb.ct ], [ -1094995529, %bb.ep ], [ %i.ki, %bb.do ], [ %i.kq, %bb.ds ], [ %i.ky, %bb.dw ], [ -1163346256, %.thread2149 ], [ -1163346256, %bb.ea ], [ -1094995529, %bb.dq ]
  ret i32 %.61829
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cfhd_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
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
  store i32 0, ptr %i.c, align 8, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 42168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 42504
  store i8 0, ptr %i.e, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42472
  store i8 0, ptr %i.f, align 8, !tbaa !107
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 42440
  store i8 0, ptr %i.g, align 8, !tbaa !107
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 42408
  store i8 0, ptr %i.h, align 8, !tbaa !107
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 42632
  store i8 0, ptr %i.i, align 8, !tbaa !107
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42600
  store i8 0, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 42568
  store i8 0, ptr %i.k, align 8, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 42536
  store i8 0, ptr %i.l, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 42760
  store i8 0, ptr %i.m, align 8, !tbaa !107
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 42728
  store i8 0, ptr %i.n, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 42696
  store i8 0, ptr %i.o, align 8, !tbaa !107
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 42664
  store i8 0, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 42888
  store i8 0, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 42856
  store i8 0, ptr %i.r, align 8, !tbaa !107
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 42824
  store i8 0, ptr %i.s, align 8, !tbaa !107
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 42792
  store i8 0, ptr %i.t, align 8, !tbaa !107
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 43016
  store i8 0, ptr %i.u, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 42984
  store i8 0, ptr %i.v, align 8, !tbaa !107
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 42952
  store i8 0, ptr %i.w, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 42920
  store i8 0, ptr %i.x, align 8, !tbaa !107
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 43144
  store i8 0, ptr %i.y, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 43112
  store i8 0, ptr %i.z, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 43080
  store i8 0, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 43048
  store i8 0, ptr %i.ab, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 43168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.d, i8 0, i64 216, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 43176
  tail call void @av_freep(ptr noundef nonnull %i.ad) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 43184
  store i32 0, ptr %i.ae, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 43192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 43528
  store i8 0, ptr %i.ag, align 8, !tbaa !107
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 43496
  store i8 0, ptr %i.ah, align 8, !tbaa !107
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 43464
  store i8 0, ptr %i.ai, align 8, !tbaa !107
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 43432
  store i8 0, ptr %i.aj, align 8, !tbaa !107
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 43656
  store i8 0, ptr %i.ak, align 8, !tbaa !107
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 43624
  store i8 0, ptr %i.al, align 8, !tbaa !107
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 43592
  store i8 0, ptr %i.am, align 8, !tbaa !107
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 43560
  store i8 0, ptr %i.an, align 8, !tbaa !107
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 43784
  store i8 0, ptr %i.ao, align 8, !tbaa !107
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 43752
  store i8 0, ptr %i.ap, align 8, !tbaa !107
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 43720
  store i8 0, ptr %i.aq, align 8, !tbaa !107
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 43688
  store i8 0, ptr %i.ar, align 8, !tbaa !107
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 43912
  store i8 0, ptr %i.as, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 43880
  store i8 0, ptr %i.at, align 8, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 43848
  store i8 0, ptr %i.au, align 8, !tbaa !107
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 43816
  store i8 0, ptr %i.av, align 8, !tbaa !107
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44040
  store i8 0, ptr %i.aw, align 8, !tbaa !107
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44008
  store i8 0, ptr %i.ax, align 8, !tbaa !107
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 43976
  store i8 0, ptr %i.ay, align 8, !tbaa !107
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 43944
  store i8 0, ptr %i.az, align 8, !tbaa !107
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44168
  store i8 0, ptr %i.ba, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44136
  store i8 0, ptr %i.bb, align 8, !tbaa !107
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44104
  store i8 0, ptr %i.bc, align 8, !tbaa !107
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44072
  store i8 0, ptr %i.bd, align 8, !tbaa !107
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.af, i8 0, i64 216, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.be) #11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44200
  tail call void @av_freep(ptr noundef nonnull %i.bf) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44208
  store i32 0, ptr %i.bg, align 8, !tbaa !36
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44216
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44552
  store i8 0, ptr %i.bi, align 8, !tbaa !107
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 44520
  store i8 0, ptr %i.bj, align 8, !tbaa !107
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44488
  store i8 0, ptr %i.bk, align 8, !tbaa !107
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44456
  store i8 0, ptr %i.bl, align 8, !tbaa !107
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44680
  store i8 0, ptr %i.bm, align 8, !tbaa !107
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 44648
  store i8 0, ptr %i.bn, align 8, !tbaa !107
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44616
  store i8 0, ptr %i.bo, align 8, !tbaa !107
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44584
  store i8 0, ptr %i.bp, align 8, !tbaa !107
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44808
  store i8 0, ptr %i.bq, align 8, !tbaa !107
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44776
  store i8 0, ptr %i.br, align 8, !tbaa !107
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 44744
  store i8 0, ptr %i.bs, align 8, !tbaa !107
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 44712
  store i8 0, ptr %i.bt, align 8, !tbaa !107
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44936
  store i8 0, ptr %i.bu, align 8, !tbaa !107
end_hunk_1
