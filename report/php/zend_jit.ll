Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_jit?download=true
inline.NumInlined: 2176
inline.NumDeleted: 168
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 25
begin_hunk_0_@zend_jit_trace_build_tssa:bb.a
  %indvars.iv344 = phi i64 [ 0, %.lr.ph226 ], [ %indvars.iv.next345, %bb.fb ] ; 19 uses
  %i.afj = load i32, ptr %i.afb, align 8, !tbaa !387
  %i.afk = zext i32 %i.afj to i64
  %i.afl = icmp samesign ult i64 %indvars.iv344, %i.afk
  br i1 %i.afl, label %bb.eh, label %bb.et

bb.eh:                                            ; preds = %bb.eg
  %i.afm = load ptr, ptr %i.afg, align 8, !tbaa !236
  %.not2306 = icmp eq ptr %i.afm, null
  br i1 %.not2306, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.afn = trunc nuw nsw i64 %indvars.iv344 to i32
  %i.afo = call fastcc i32 @zend_jit_trace_copy_ssa_var_info(ptr noundef nonnull %i.adn, ptr noundef nonnull %i.adw, ptr noundef %.0.i2410, ptr noundef %.0.i2396, i32 noundef %i.afn, ptr noundef null)
  %.not2307 = icmp eq i32 %i.afo, 0
  br i1 %.not2307, label %bb.ej, label %bb.fb

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.afp = load ptr, ptr %i.afc, align 8, !tbaa !239 ; 2 uses
  %.not2308 = icmp eq ptr %i.afp, null
  br i1 %.not2308, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.afq = getelementptr inbounds nuw [48 x i8], ptr %i.afp, i64 %indvars.iv344
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 40
  %i.afs = load i8, ptr %i.afr, align 8
  %i.aft = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv344
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 40 ; 3 uses
  %i.afv = and i8 %i.afs, 1
  %i.afw = load i8, ptr %i.afu, align 8
  %i.afx = and i8 %i.afw, -2
  %i.afy = or disjoint i8 %i.afx, %i.afv          ; 2 uses
  store i8 %i.afy, ptr %i.afu, align 8
  %i.afz = load ptr, ptr %i.afc, align 8, !tbaa !239
  %i.aga = getelementptr inbounds nuw [48 x i8], ptr %i.afz, i64 %indvars.iv344
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 40
  %i.agc = load i8, ptr %i.agb, align 8
  %i.agd = and i8 %i.agc, 12
  %i.age = and i8 %i.afy, -13
  %i.agf = or disjoint i8 %i.agd, %i.age
  store i8 %i.agf, ptr %i.afu, align 8
  br label %bb.ep

bb.el:                                            ; preds = %bb.ej
  %i.agg = load i32, ptr %i.aey, align 4, !tbaa !237
  %i.agh = zext i32 %i.agg to i64
  %.not.i2551 = icmp samesign ult i64 %indvars.iv344, %i.agh
  br i1 %.not.i2551, label %bb.em, label %zend_jit_var_may_alias.exit2557

bb.em:                                            ; preds = %bb.el
  %i.agi = load ptr, ptr %i.afd, align 8, !tbaa !230
  %.not11.i2553 = icmp eq ptr %i.agi, null
  br i1 %.not11.i2553, label %zend_jit_var_may_alias.exit2557, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.agj = load i32, ptr %i.afe, align 8, !tbaa !161
  %i.agk = and i32 %i.agj, 1
  %.not12.i2554 = icmp eq i32 %i.agk, 0
  br i1 %.not12.i2554, label %bb.eo, label %zend_jit_var_may_alias.exit2557

bb.eo:                                            ; preds = %bb.en
  %i.agl = load ptr, ptr %i.aff, align 8, !tbaa !400
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %indvars.iv344
  %i.agn = load ptr, ptr %i.agm, align 8, !tbaa !365 ; 2 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 16
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !277
  %i.agq = icmp eq i64 %i.agp, 20
  br i1 %i.agq, label %zend_string_equals_cstr.exit, label %zend_jit_var_may_alias.exit2557

zend_string_equals_cstr.exit:                     ; preds = %bb.eo
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agn, i64 24 ; 2 uses
  %i.ags = load i128, ptr %i.agr, align 1
  %i.agt = xor i128 %i.ags, 134793961314245170312682461583264478312
  %i.agu = getelementptr i8, ptr %i.agr, i64 16
  %i.agv = load i32, ptr %i.agu, align 1
  %i.agw = zext i32 %i.agv to i128
  %i.agx = xor i128 %i.agw, 1919247457
  %i.agy = or i128 %i.agt, %i.agx
  %i.agz = icmp ne i128 %i.agy, 0
  %i.aha = zext i1 %i.agz to i32
  %bcmp.i.fr = freeze i32 %i.aha
  %.not.i2583 = icmp eq i32 %bcmp.i.fr, 0
  %i.ahb = select i1 %.not.i2583, i8 8, i8 0
  br label %zend_jit_var_may_alias.exit2557

zend_jit_var_may_alias.exit2557:                  ; preds = %zend_string_equals_cstr.exit, %bb.eo, %bb.el, %bb.em, %bb.en
  %.0.i2552 = phi i8 [ 4, %bb.em ], [ 0, %bb.el ], [ %i.ahb, %zend_string_equals_cstr.exit ], [ 4, %bb.en ], [ 0, %bb.eo ]
  %i.ahc = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv344
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahc, i64 40 ; 2 uses
  %i.ahe = load i8, ptr %i.ahd, align 8
  %i.ahf = and i8 %i.ahe, -13
  %i.ahg = or disjoint i8 %i.ahf, %.0.i2552
  store i8 %i.ahg, ptr %i.ahd, align 8
  br label %bb.ep

bb.ep:                                            ; preds = %zend_jit_var_may_alias.exit2557, %bb.ek
  %i.ahh = load ptr, ptr %i.afh, align 8, !tbaa !360 ; 2 uses
  %.not2309 = icmp eq ptr %i.ahh, null
  br i1 %.not2309, label %bb.es, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.ahi = load ptr, ptr %i.adp, align 8, !tbaa !72
  %i.ahj = load ptr, ptr %i.afi, align 8, !tbaa !110
  %i.ahk = ptrtoint ptr %i.ahi to i64
  %i.ahl = ptrtoint ptr %i.ahj to i64
  %i.ahm = sub i64 %i.ahk, %i.ahl
  %i.ahn = ashr exact i64 %i.ahm, 5
  %i.aho = icmp sgt i64 %i.ahn, %indvars.iv344
  br i1 %i.aho, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ahp = getelementptr inbounds nuw [32 x i8], ptr %i.ahh, i64 %indvars.iv344 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ahq = call i32 @zend_fetch_arg_info_type(ptr noundef null, ptr noundef nonnull %i.ahp, ptr noundef nonnull %i.a) #34 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahp, i64 16
  %i.ahs = load i32, ptr %i.ahr, align 8, !tbaa !397
  %i.aht = and i32 %i.ahs, 100663296
  %.not2310 = icmp eq i32 %i.aht, 0
  %i.ahu = or i32 %i.ahq, 1024
  %spec.select2326 = select i1 %.not2310, i32 %i.ahq, i32 %i.ahu
  %i.ahv = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv344 ; 3 uses
  store i32 %spec.select2326, ptr %i.ahv, align 8, !tbaa !346
  %i.ahw = load ptr, ptr %i.a, align 8, !tbaa !410
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahv, i64 32
  store ptr %i.ahw, ptr %i.ahx, align 8, !tbaa !358
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahv, i64 4 ; 2 uses
  %i.ahz = load i8, ptr %i.ahy, align 4
  %i.aia = or i8 %i.ahz, 2
  store i8 %i.aia, ptr %i.ahy, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.fb

bb.es:                                            ; preds = %bb.eq, %bb.ep
  %i.aib = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv344
  store i32 -520093698, ptr %i.aib, align 8, !tbaa !346
  br label %bb.fb

bb.et:                                            ; preds = %bb.eg
  %i.aic = load ptr, ptr %i.afc, align 8, !tbaa !239 ; 2 uses
  %.not2305 = icmp eq ptr %i.aic, null
  br i1 %.not2305, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.aid = getelementptr inbounds nuw [48 x i8], ptr %i.aic, i64 %indvars.iv344
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 40
  %i.aif = load i8, ptr %i.aie, align 8
  %i.aig = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv344
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 40 ; 3 uses
  %i.aii = and i8 %i.aif, 1
  %i.aij = load i8, ptr %i.aih, align 8
  %i.aik = and i8 %i.aij, -2
  %i.ail = or disjoint i8 %i.aik, %i.aii          ; 2 uses
  store i8 %i.ail, ptr %i.aih, align 8
  %i.aim = load ptr, ptr %i.afc, align 8, !tbaa !239
  %i.ain = getelementptr inbounds nuw [48 x i8], ptr %i.aim, i64 %indvars.iv344
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 40
  %i.aip = load i8, ptr %i.aio, align 8
  %i.aiq = and i8 %i.aip, 12                      ; 2 uses
  %i.air = and i8 %i.ail, -13
  %i.ais = or disjoint i8 %i.aiq, %i.air
  store i8 %i.ais, ptr %i.aih, align 8
  br label %bb.ey

bb.ev:                                            ; preds = %bb.et
  %i.ait = load ptr, ptr %i.afd, align 8, !tbaa !230
  %.not11.i2546 = icmp eq ptr %i.ait, null
  br i1 %.not11.i2546, label %zend_jit_var_may_alias.exit2550, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.aiu = load i32, ptr %i.afe, align 8, !tbaa !161
  %i.aiv = and i32 %i.aiu, 1
  %.not12.i2547 = icmp eq i32 %i.aiv, 0
  br i1 %.not12.i2547, label %bb.ex, label %zend_jit_var_may_alias.exit2550

bb.ex:                                            ; preds = %bb.ew
  %i.aiw = load ptr, ptr %i.aff, align 8, !tbaa !400
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aiw, i64 %indvars.iv344
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !365 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 16
  %i.aja = load i64, ptr %i.aiz, align 8, !tbaa !277
  %i.ajb = icmp eq i64 %i.aja, 20
  br i1 %i.ajb, label %zend_string_equals_cstr.exit2586, label %zend_jit_var_may_alias.exit2550

zend_string_equals_cstr.exit2586:                 ; preds = %bb.ex
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiy, i64 24 ; 2 uses
  %i.ajd = load i128, ptr %i.ajc, align 1
  %i.aje = xor i128 %i.ajd, 134793961314245170312682461583264478312
  %i.ajf = getelementptr i8, ptr %i.ajc, i64 16
  %i.ajg = load i32, ptr %i.ajf, align 1
  %i.ajh = zext i32 %i.ajg to i128
  %i.aji = xor i128 %i.ajh, 1919247457
  %i.ajj = or i128 %i.aje, %i.aji
  %i.ajk = icmp ne i128 %i.ajj, 0
  %i.ajl = zext i1 %i.ajk to i32
  %bcmp.i2584.fr = freeze i32 %i.ajl
  %.not.i2585 = icmp eq i32 %bcmp.i2584.fr, 0
  %i.ajm = select i1 %.not.i2585, i8 8, i8 0
  br label %zend_jit_var_may_alias.exit2550

zend_jit_var_may_alias.exit2550:                  ; preds = %zend_string_equals_cstr.exit2586, %bb.ex, %bb.ev, %bb.ew
  %.0.i2545 = phi i8 [ 4, %bb.ev ], [ %i.ajm, %zend_string_equals_cstr.exit2586 ], [ 0, %bb.ex ], [ 4, %bb.ew ] ; 2 uses
  %i.ajn = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv344
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 40 ; 2 uses
  %i.ajp = load i8, ptr %i.ajo, align 8
  %i.ajq = and i8 %i.ajp, -13
  %i.ajr = or disjoint i8 %i.ajq, %.0.i2545
  store i8 %i.ajr, ptr %i.ajo, align 8
  br label %bb.ey

bb.ey:                                            ; preds = %zend_jit_var_may_alias.exit2550, %bb.eu
  %i.ajs = phi i8 [ %.0.i2545, %zend_jit_var_may_alias.exit2550 ], [ %i.aiq, %bb.eu ]
  %i.ajt = icmp eq i8 %i.ajs, 0
  %i.aju = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv344 ; 2 uses
  br i1 %i.ajt, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  store i32 1, ptr %i.aju, align 8, !tbaa !346
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  store i32 -520093697, ptr %i.aju, align 8, !tbaa !346
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa, %bb.ei, %bb.es, %bb.er
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %i.ajv = load i32, ptr %i.aey, align 4, !tbaa !237
  %i.ajw = sext i32 %i.ajv to i64
  %i.ajx = icmp slt i64 %indvars.iv.next345, %i.ajw
  br i1 %i.ajx, label %bb.eg, label %.loopexit134, !llvm.loop !637

bb.fc:                                            ; preds = %zend_arena_alloc.exit2420
  %.not2163 = icmp eq i32 %1, 0
  br i1 %.not2163, label %._crit_edge363, label %bb.fd

._crit_edge363:                                   ; preds = %bb.fc
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.adn, i64 92
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !237
  %.phi.trans.insert364 = getelementptr inbounds nuw i8, ptr %i.adn, i64 72
  %.pre365 = load i32, ptr %.phi.trans.insert364, align 8, !tbaa !238
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fc
  %i.ajy = load ptr, ptr @zend_jit_traces, align 8, !tbaa !73
  %i.ajz = zext i32 %1 to i64
  %i.aka = getelementptr inbounds nuw [104 x i8], ptr %i.ajy, i64 %i.ajz ; 2 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 72
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !54
  %i.akd = zext i32 %2 to i64
  %i.ake = getelementptr inbounds nuw [48 x i8], ptr %i.akc, i64 %i.akd ; 2 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 20
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !57
  %i.akh = getelementptr inbounds nuw i8, ptr %i.adn, i64 92
  %i.aki = load i32, ptr %i.akh, align 4, !tbaa !237 ; 3 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %i.adn, i64 72
  %i.akk = load i32, ptr %i.akj, align 8, !tbaa !238 ; 3 uses
  %i.akl = add i32 %i.akk, %i.aki
  %. = tail call i32 @llvm.umin.i32(i32 %i.akg, i32 %i.akl) ; 2 uses
  %.not2164 = icmp eq i32 %., 0
  br i1 %.not2164, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.akm = getelementptr inbounds nuw i8, ptr %i.aka, i64 80
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !59
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ake, i64 24
  %i.akp = load i32, ptr %i.ako, align 8, !tbaa !60
  %i.akq = zext i32 %i.akp to i64
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %i.akq
  %i.aks = sext i32 %. to i64
  br label %bb.ff

bb.ff:                                            ; preds = %._crit_edge363, %bb.fd, %bb.fe
  %i.akt = phi i32 [ %i.akk, %bb.fe ], [ %i.akk, %bb.fd ], [ %.pre365, %._crit_edge363 ]
  %i.aku = phi i32 [ %i.aki, %bb.fe ], [ %i.aki, %bb.fd ], [ %.pre, %._crit_edge363 ]
  %.01938 = phi i64 [ %i.aks, %bb.fe ], [ 0, %bb.fd ], [ 0, %._crit_edge363 ]
  %.01937 = phi ptr [ %i.akr, %bb.fe ], [ null, %bb.fd ], [ null, %._crit_edge363 ]
  %i.akv = getelementptr inbounds nuw i8, ptr %i.adn, i64 92 ; 4 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %i.adn, i64 72
  %i.akx = sub i32 0, %i.aku
  %.not271 = icmp eq i32 %i.akt, %i.akx
  br i1 %.not271, label %.loopexit134, label %.lr.ph221

.lr.ph221:                                        ; preds = %bb.ff
  %i.aky = getelementptr inbounds nuw i8, ptr %i.adv, i64 80
  %i.akz = getelementptr inbounds nuw i8, ptr %i.adv, i64 72
  %i.ala = getelementptr inbounds nuw i8, ptr %i.adv, i64 48
  %i.alb = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.alc = getelementptr inbounds nuw i8, ptr %i.adv, i64 40
  %i.ald = getelementptr inbounds nuw i8, ptr %i.adn, i64 128
  br label %bb.fg

bb.fg:                                            ; preds = %.lr.ph221, %bb.fv
  %indvars.iv341 = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next342, %bb.fv ] ; 14 uses
  %i.ale = load ptr, ptr %i.aky, align 8, !tbaa !236
  %.not2165 = icmp eq ptr %i.ale, null
  br i1 %.not2165, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.alf = trunc nuw nsw i64 %indvars.iv341 to i32
  %i.alg = tail call fastcc i32 @zend_jit_trace_copy_ssa_var_info(ptr noundef %i.adn, ptr noundef nonnull %i.adw, ptr noundef %.0.i2410, ptr noundef %.0.i2396, i32 noundef %i.alf, ptr noundef %i.adq)
  %.not2166 = icmp eq i32 %i.alg, 0
  br i1 %.not2166, label %bb.fi, label %bb.fr

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %i.alh = load ptr, ptr %i.akz, align 8, !tbaa !239 ; 3 uses
  %.not2167 = icmp eq ptr %i.alh, null            ; 2 uses
  br i1 %.not2167, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ali = load i32, ptr %i.ala, align 8, !tbaa !321
  %i.alj = sext i32 %i.ali to i64
  %i.alk = icmp slt i64 %indvars.iv341, %i.alj
  br i1 %i.alk, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.all = getelementptr inbounds nuw [48 x i8], ptr %i.alh, i64 %indvars.iv341
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 40
  %i.aln = load i8, ptr %i.alm, align 8
  %i.alo = and i8 %i.aln, 12
  br label %zend_jit_var_may_alias.exit2543

bb.fl:                                            ; preds = %bb.fj, %bb.fi
  %i.alp = load i32, ptr %i.akv, align 4, !tbaa !237
  %i.alq = zext i32 %i.alp to i64
  %.not.i2537 = icmp samesign ult i64 %indvars.iv341, %i.alq
  br i1 %.not.i2537, label %bb.fm, label %zend_jit_var_may_alias.exit2543

bb.fm:                                            ; preds = %bb.fl
  %i.alr = load ptr, ptr %i.alb, align 8, !tbaa !230
  %.not11.i2539 = icmp eq ptr %i.alr, null
  br i1 %.not11.i2539, label %zend_jit_var_may_alias.exit2543, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.als = load i32, ptr %i.alc, align 8, !tbaa !161
  %i.alt = and i32 %i.als, 1
  %.not12.i2540 = icmp eq i32 %i.alt, 0
  br i1 %.not12.i2540, label %bb.fo, label %zend_jit_var_may_alias.exit2543

bb.fo:                                            ; preds = %bb.fn
  br i1 %.not2167, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.alu = getelementptr inbounds nuw [48 x i8], ptr %i.alh, i64 %indvars.iv341
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alu, i64 40
  %i.alw = load i8, ptr %i.alv, align 8
  %i.alx = and i8 %i.alw, 12
  br label %zend_jit_var_may_alias.exit2543

bb.fq:                                            ; preds = %bb.fo
  %i.aly = load ptr, ptr %i.ald, align 8, !tbaa !400
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.aly, i64 %indvars.iv341
  %i.ama = load ptr, ptr %i.alz, align 8, !tbaa !365 ; 2 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ama, i64 16
  %i.amc = load i64, ptr %i.amb, align 8, !tbaa !277
  %i.amd = icmp eq i64 %i.amc, 20
  br i1 %i.amd, label %zend_string_equals_cstr.exit2589, label %zend_jit_var_may_alias.exit2543

zend_string_equals_cstr.exit2589:                 ; preds = %bb.fq
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ama, i64 24 ; 2 uses
  %i.amf = load i128, ptr %i.ame, align 1
  %i.amg = xor i128 %i.amf, 134793961314245170312682461583264478312
  %i.amh = getelementptr i8, ptr %i.ame, i64 16
  %i.ami = load i32, ptr %i.amh, align 1
  %i.amj = zext i32 %i.ami to i128
  %i.amk = xor i128 %i.amj, 1919247457
  %i.aml = or i128 %i.amg, %i.amk
  %i.amm = icmp ne i128 %i.aml, 0
  %i.amn = zext i1 %i.amm to i32
  %bcmp.i2587.fr = freeze i32 %i.amn
  %.not.i2588 = icmp eq i32 %bcmp.i2587.fr, 0
  %i.amo = select i1 %.not.i2588, i8 8, i8 0
  br label %zend_jit_var_may_alias.exit2543

zend_jit_var_may_alias.exit2543:                  ; preds = %bb.fp, %bb.fn, %bb.fm, %bb.fl, %bb.fq, %zend_string_equals_cstr.exit2589, %bb.fk
  %.0.i2538.sink = phi i8 [ %i.alo, %bb.fk ], [ 4, %bb.fm ], [ 0, %bb.fl ], [ %i.alx, %bb.fp ], [ 4, %bb.fn ], [ 0, %bb.fq ], [ %i.amo, %zend_string_equals_cstr.exit2589 ]
  %i.amp = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv341
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amp, i64 40 ; 2 uses
  %i.amr = load i8, ptr %i.amq, align 8
  %i.ams = and i8 %i.amr, -13
  %i.amt = or disjoint i8 %i.ams, %.0.i2538.sink
  store i8 %i.amt, ptr %i.amq, align 8
  %i.amu = load i32, ptr %i.akv, align 4, !tbaa !237
  %i.amv = sext i32 %i.amu to i64
  %i.amw = icmp slt i64 %indvars.iv341, %i.amv
  %.672 = select i1 %i.amw, i32 -520093697, i32 -520093698
  %i.amx = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv341
  store i32 %.672, ptr %i.amx, align 8, !tbaa !346
  br label %bb.fr

bb.fr:                                            ; preds = %zend_jit_var_may_alias.exit2543, %bb.fh
  %i.amy = icmp slt i64 %indvars.iv341, %.01938
  br i1 %i.amy, label %bb.fs, label %bb.fv

bb.fs:                                            ; preds = %bb.fr
  %i.amz = getelementptr inbounds nuw [8 x i8], ptr %.01937, i64 %indvars.iv341
  %i.ana = load i8, ptr %i.amz, align 4, !tbaa !72 ; 5 uses
  %.not2168 = icmp eq i8 %i.ana, -1
  br i1 %.not2168, label %bb.fv, label %zend_jit_trace_type_to_info_ex.exit

zend_jit_trace_type_to_info_ex.exit:              ; preds = %bb.fs
  %i.anb = zext nneg i8 %i.ana to i32
  %i.anc = shl nuw i32 1, %i.anb                  ; 2 uses
end_hunk_0
begin_hunk_1_@zend_jit_trace_build_tssa:bb.a
  %i.dxv = load i32, ptr %i.dxu, align 4, !tbaa !237 ; 2 uses
  %i.dxw = icmp sgt i32 %i.dxv, 0
  br i1 %i.dxw, label %.lr.ph249, label %.loopexit123

.lr.ph249:                                        ; preds = %find_return_ssa_var.exit
  %i.dxx = load i32, ptr %.21931, align 8, !tbaa !72
  %i.dxy = getelementptr inbounds nuw i8, ptr %i.dvw, i64 32 ; 2 uses
  %i.dxz = getelementptr inbounds nuw i8, ptr %i.dwb, i64 72 ; 3 uses
  %i.dya = getelementptr inbounds nuw i8, ptr %i.dvw, i64 8 ; 2 uses
  %i.dyb = getelementptr inbounds nuw i8, ptr %i.dwb, i64 40 ; 2 uses
  %i.dyc = getelementptr inbounds nuw i8, ptr %i.dvw, i64 128 ; 2 uses
  %i.dyd = getelementptr inbounds nuw i8, ptr %i.dwb, i64 80
  %i.dye = getelementptr inbounds nuw i8, ptr %i.dvw, i64 40
  %i.dyf = getelementptr inbounds nuw i8, ptr %i.dvw, i64 4
  %i.dyg = getelementptr inbounds nuw i8, ptr %.01944, i64 60
  %i.dyh = lshr i32 %i.dxx, 9
  %i.dyi = zext nneg i32 %i.dyh to i64
  br label %bb.aag

bb.aag:                                           ; preds = %.lr.ph249, %bb.abc
  %i.dyj = phi i32 [ %i.dxv, %.lr.ph249 ], [ %i.ecm, %bb.abc ]
  %indvars.iv357 = phi i64 [ 0, %.lr.ph249 ], [ %indvars.iv.next358, %bb.abc ] ; 12 uses
  %indvars.iv355 = phi i64 [ %i.dyi, %.lr.ph249 ], [ %indvars.iv.next356, %bb.abc ] ; 7 uses
  %i.dyk = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv355 ; 4 uses
  %i.dyl = trunc nuw nsw i64 %indvars.iv357 to i32
  store i32 %i.dyl, ptr %i.dyk, align 8, !tbaa !332
  %i.dym = load i32, ptr %i.dxy, align 8, !tbaa !387
  %i.dyn = zext i32 %i.dym to i64
  %i.dyo = icmp samesign ult i64 %indvars.iv357, %i.dyn
  br i1 %i.dyo, label %bb.aah, label %bb.aar

bb.aah:                                           ; preds = %bb.aag
  %i.dyp = load ptr, ptr %i.dyd, align 8, !tbaa !236
  %.not2215 = icmp eq ptr %i.dyp, null
  br i1 %.not2215, label %bb.aaj, label %bb.aai

bb.aai:                                           ; preds = %bb.aah
  %i.dyq = trunc nuw nsw i64 %indvars.iv355 to i32
  %i.dyr = call fastcc i32 @zend_jit_trace_copy_ssa_var_info(ptr noundef nonnull %i.dvw, ptr noundef nonnull %i.dwc, ptr noundef %.0.i2410, ptr noundef %.0.i2396, i32 noundef %i.dyq, ptr noundef null)
  %.not2216 = icmp eq i32 %i.dyr, 0
  br i1 %.not2216, label %._crit_edge372, label %bb.aaz

._crit_edge372:                                   ; preds = %bb.aai
  %.pre373 = load i32, ptr %i.dxu, align 4, !tbaa !237
  br label %bb.aaj

bb.aaj:                                           ; preds = %._crit_edge372, %bb.aah
  %i.dys = phi i32 [ %.pre373, %._crit_edge372 ], [ %i.dyj, %bb.aah ]
  %i.dyt = zext i32 %i.dys to i64
  %.not.i2467 = icmp samesign ult i64 %indvars.iv357, %i.dyt
  br i1 %.not.i2467, label %bb.aak, label %zend_jit_var_may_alias.exit2473

bb.aak:                                           ; preds = %bb.aaj
  %i.dyu = load ptr, ptr %i.dya, align 8, !tbaa !230
  %.not11.i2469 = icmp eq ptr %i.dyu, null
  br i1 %.not11.i2469, label %zend_jit_var_may_alias.exit2473, label %bb.aal

bb.aal:                                           ; preds = %bb.aak
  %i.dyv = load i32, ptr %i.dyb, align 8, !tbaa !161
  %i.dyw = and i32 %i.dyv, 1
  %.not12.i2470 = icmp eq i32 %i.dyw, 0
  br i1 %.not12.i2470, label %bb.aam, label %zend_jit_var_may_alias.exit2473

bb.aam:                                           ; preds = %bb.aal
  %i.dyx = load ptr, ptr %i.dxz, align 8, !tbaa !239 ; 2 uses
  %.not13.i2471 = icmp eq ptr %i.dyx, null
  br i1 %.not13.i2471, label %bb.aao, label %bb.aan

bb.aan:                                           ; preds = %bb.aam
  %i.dyy = getelementptr inbounds nuw [48 x i8], ptr %i.dyx, i64 %indvars.iv357
  %i.dyz = getelementptr inbounds nuw i8, ptr %i.dyy, i64 40
  %i.dza = load i8, ptr %i.dyz, align 8
  %i.dzb = and i8 %i.dza, 12
  br label %zend_jit_var_may_alias.exit2473

bb.aao:                                           ; preds = %bb.aam
  %i.dzc = load ptr, ptr %i.dyc, align 8, !tbaa !400
  %i.dzd = getelementptr inbounds nuw [8 x i8], ptr %i.dzc, i64 %indvars.iv357
  %i.dze = load ptr, ptr %i.dzd, align 8, !tbaa !365 ; 2 uses
  %i.dzf = getelementptr inbounds nuw i8, ptr %i.dze, i64 16
  %i.dzg = load i64, ptr %i.dzf, align 8, !tbaa !277
  %i.dzh = icmp eq i64 %i.dzg, 20
  br i1 %i.dzh, label %zend_string_equals_cstr.exit2619, label %zend_jit_var_may_alias.exit2473

zend_string_equals_cstr.exit2619:                 ; preds = %bb.aao
  %i.dzi = getelementptr inbounds nuw i8, ptr %i.dze, i64 24 ; 2 uses
  %i.dzj = load i128, ptr %i.dzi, align 1
  %i.dzk = xor i128 %i.dzj, 134793961314245170312682461583264478312
  %i.dzl = getelementptr i8, ptr %i.dzi, i64 16
  %i.dzm = load i32, ptr %i.dzl, align 1
  %i.dzn = zext i32 %i.dzm to i128
  %i.dzo = xor i128 %i.dzn, 1919247457
  %i.dzp = or i128 %i.dzk, %i.dzo
  %i.dzq = icmp ne i128 %i.dzp, 0
  %i.dzr = zext i1 %i.dzq to i32
  %bcmp.i2617.fr = freeze i32 %i.dzr
  %.not.i2618 = icmp eq i32 %bcmp.i2617.fr, 0
  %i.dzs = select i1 %.not.i2618, i8 8, i8 0
  br label %zend_jit_var_may_alias.exit2473

zend_jit_var_may_alias.exit2473:                  ; preds = %zend_string_equals_cstr.exit2619, %bb.aao, %bb.aaj, %bb.aak, %bb.aal, %bb.aan
  %.0.i2468 = phi i8 [ 4, %bb.aak ], [ 0, %bb.aaj ], [ %i.dzb, %bb.aan ], [ 4, %bb.aal ], [ 0, %bb.aao ], [ %i.dzs, %zend_string_equals_cstr.exit2619 ]
  %i.dzt = getelementptr inbounds nuw i8, ptr %i.dyk, i64 40 ; 2 uses
  %i.dzu = load i8, ptr %i.dzt, align 8
  %i.dzv = and i8 %i.dzu, -13
  %i.dzw = or disjoint i8 %i.dzv, %.0.i2468
  store i8 %i.dzw, ptr %i.dzt, align 8
  %i.dzx = load ptr, ptr %i.dye, align 8, !tbaa !360 ; 2 uses
  %.not2217 = icmp eq ptr %i.dzx, null
  br i1 %.not2217, label %bb.aaq, label %bb.aap

bb.aap:                                           ; preds = %zend_jit_var_may_alias.exit2473
  %i.dzy = getelementptr inbounds nuw [32 x i8], ptr %i.dzx, i64 %indvars.iv357 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.dzz = call i32 @zend_fetch_arg_info_type(ptr noundef null, ptr noundef nonnull %i.dzy, ptr noundef nonnull %i.c) #34 ; 2 uses
  %i.eaa = getelementptr inbounds nuw i8, ptr %i.dzy, i64 16
  %i.eab = load i32, ptr %i.eaa, align 8, !tbaa !397
  %i.eac = and i32 %i.eab, 100663296
  %.not2218 = icmp eq i32 %i.eac, 0
  %i.ead = or i32 %i.dzz, 1024
  %spec.select2356 = select i1 %.not2218, i32 %i.dzz, i32 %i.ead
  %i.eae = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv355 ; 3 uses
  store i32 %spec.select2356, ptr %i.eae, align 8, !tbaa !346
  %i.eaf = load ptr, ptr %i.c, align 8, !tbaa !410
  %i.eag = getelementptr inbounds nuw i8, ptr %i.eae, i64 32
  store ptr %i.eaf, ptr %i.eag, align 8, !tbaa !358
  %i.eah = getelementptr inbounds nuw i8, ptr %i.eae, i64 4 ; 2 uses
  %i.eai = load i8, ptr %i.eah, align 4
  %i.eaj = or i8 %i.eai, 2
  store i8 %i.eaj, ptr %i.eah, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.aaz

bb.aaq:                                           ; preds = %zend_jit_var_may_alias.exit2473
  %i.eak = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv355
  store i32 -520093698, ptr %i.eak, align 8, !tbaa !346
  br label %bb.aaz

bb.aar:                                           ; preds = %bb.aag
  %i.eal = load ptr, ptr %i.dxz, align 8, !tbaa !239 ; 2 uses
  %.not2214 = icmp eq ptr %i.eal, null
  br i1 %.not2214, label %bb.aat, label %bb.aas

bb.aas:                                           ; preds = %bb.aar
  %i.eam = getelementptr inbounds nuw [48 x i8], ptr %i.eal, i64 %indvars.iv357
  %i.ean = getelementptr inbounds nuw i8, ptr %i.eam, i64 40
  %i.eao = load i8, ptr %i.ean, align 8
  %i.eap = getelementptr inbounds nuw i8, ptr %i.dyk, i64 40 ; 3 uses
  %i.eaq = and i8 %i.eao, 1
  %i.ear = load i8, ptr %i.eap, align 8
  %i.eas = and i8 %i.ear, -2
  %i.eat = or disjoint i8 %i.eas, %i.eaq          ; 2 uses
  store i8 %i.eat, ptr %i.eap, align 8
  %i.eau = load ptr, ptr %i.dxz, align 8, !tbaa !239
  %i.eav = getelementptr inbounds nuw [48 x i8], ptr %i.eau, i64 %indvars.iv357
  %i.eaw = getelementptr inbounds nuw i8, ptr %i.eav, i64 40
  %i.eax = load i8, ptr %i.eaw, align 8
  %i.eay = and i8 %i.eax, 12                      ; 2 uses
  %i.eaz = and i8 %i.eat, -13
  %i.eba = or disjoint i8 %i.eay, %i.eaz
  store i8 %i.eba, ptr %i.eap, align 8
  br label %bb.aaw

bb.aat:                                           ; preds = %bb.aar
  %i.ebb = load ptr, ptr %i.dya, align 8, !tbaa !230
  %.not11.i = icmp eq ptr %i.ebb, null
  br i1 %.not11.i, label %zend_jit_var_may_alias.exit, label %bb.aau

bb.aau:                                           ; preds = %bb.aat
  %i.ebc = load i32, ptr %i.dyb, align 8, !tbaa !161
  %i.ebd = and i32 %i.ebc, 1
  %.not12.i = icmp eq i32 %i.ebd, 0
  br i1 %.not12.i, label %bb.aav, label %zend_jit_var_may_alias.exit

bb.aav:                                           ; preds = %bb.aau
  %i.ebe = load ptr, ptr %i.dyc, align 8, !tbaa !400
  %i.ebf = getelementptr inbounds nuw [8 x i8], ptr %i.ebe, i64 %indvars.iv357
  %i.ebg = load ptr, ptr %i.ebf, align 8, !tbaa !365 ; 2 uses
  %i.ebh = getelementptr inbounds nuw i8, ptr %i.ebg, i64 16
  %i.ebi = load i64, ptr %i.ebh, align 8, !tbaa !277
  %i.ebj = icmp eq i64 %i.ebi, 20
  br i1 %i.ebj, label %zend_string_equals_cstr.exit2622, label %zend_jit_var_may_alias.exit

zend_string_equals_cstr.exit2622:                 ; preds = %bb.aav
  %i.ebk = getelementptr inbounds nuw i8, ptr %i.ebg, i64 24 ; 2 uses
  %i.ebl = load i128, ptr %i.ebk, align 1
  %i.ebm = xor i128 %i.ebl, 134793961314245170312682461583264478312
  %i.ebn = getelementptr i8, ptr %i.ebk, i64 16
  %i.ebo = load i32, ptr %i.ebn, align 1
  %i.ebp = zext i32 %i.ebo to i128
  %i.ebq = xor i128 %i.ebp, 1919247457
  %i.ebr = or i128 %i.ebm, %i.ebq
  %i.ebs = icmp ne i128 %i.ebr, 0
  %i.ebt = zext i1 %i.ebs to i32
  %bcmp.i2620.fr = freeze i32 %i.ebt
  %.not.i2621 = icmp eq i32 %bcmp.i2620.fr, 0
  %i.ebu = select i1 %.not.i2621, i8 8, i8 0
  br label %zend_jit_var_may_alias.exit

zend_jit_var_may_alias.exit:                      ; preds = %zend_string_equals_cstr.exit2622, %bb.aav, %bb.aat, %bb.aau
  %.0.i2465 = phi i8 [ 4, %bb.aat ], [ %i.ebu, %zend_string_equals_cstr.exit2622 ], [ 0, %bb.aav ], [ 4, %bb.aau ] ; 2 uses
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.dyk, i64 40 ; 2 uses
  %i.ebw = load i8, ptr %i.ebv, align 8
  %i.ebx = and i8 %i.ebw, -13
  %i.eby = or disjoint i8 %i.ebx, %.0.i2465
  store i8 %i.eby, ptr %i.ebv, align 8
  br label %bb.aaw

bb.aaw:                                           ; preds = %zend_jit_var_may_alias.exit, %bb.aas
  %i.ebz = phi i8 [ %.0.i2465, %zend_jit_var_may_alias.exit ], [ %i.eay, %bb.aas ]
  %i.eca = icmp eq i8 %i.ebz, 0
  %i.ecb = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv355 ; 2 uses
  br i1 %i.eca, label %bb.aax, label %bb.aay

bb.aax:                                           ; preds = %bb.aaw
  store i32 1, ptr %i.ecb, align 8, !tbaa !346
  br label %bb.aaz

bb.aay:                                           ; preds = %bb.aaw
  store i32 -520093697, ptr %i.ecb, align 8, !tbaa !346
  br label %bb.aaz

bb.aaz:                                           ; preds = %bb.aax, %bb.aay, %bb.aai, %bb.aaq, %bb.aap
  %i.ecc = load i32, ptr %i.dyf, align 4, !tbaa !111
  %i.ecd = and i32 %i.ecc, 256
  %.not2219 = icmp eq i32 %i.ecd, 0
  br i1 %.not2219, label %bb.aba, label %bb.abc

bb.aba:                                           ; preds = %bb.aaz
  %i.ece = load i32, ptr %i.dxy, align 8, !tbaa !387
  %i.ecf = zext i32 %i.ece to i64
  %i.ecg = icmp samesign ult i64 %indvars.iv357, %i.ecf
  br i1 %i.ecg, label %bb.abb, label %bb.abc

bb.abb:                                           ; preds = %bb.aba
  %i.ech = getelementptr inbounds nuw [8 x i8], ptr %i.dyg, i64 %indvars.iv357
  %i.eci = load i32, ptr %i.ech, align 4, !tbaa !72
  %i.ecj = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv355 ; 2 uses
  %i.eck = load i32, ptr %i.ecj, align 8, !tbaa !346
  %i.ecl = and i32 %i.eck, %i.eci
  store i32 %i.ecl, ptr %i.ecj, align 8, !tbaa !346
  br label %bb.abc

bb.abc:                                           ; preds = %bb.abb, %bb.aba, %bb.aaz
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1
  %i.ecm = load i32, ptr %i.dxu, align 4, !tbaa !237 ; 2 uses
  %i.ecn = sext i32 %i.ecm to i64
  %i.eco = icmp slt i64 %indvars.iv.next358, %i.ecn
  br i1 %i.eco, label %bb.aag, label %.loopexit123, !llvm.loop !641

bb.abd:                                           ; preds = %bb.ge
  %i.ecp = getelementptr inbounds nuw i8, ptr %.21931, i64 8
  %i.ecq = load ptr, ptr %i.ecp, align 8, !tbaa !72 ; 13 uses
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecq, i64 208
  %i.ecs = load i32, ptr @zend_func_info_rid, align 4, !tbaa !78
  %i.ect = sext i32 %i.ecs to i64
  %i.ecu = getelementptr inbounds [8 x i8], ptr %i.ecr, i64 %i.ect
  %i.ecv = load ptr, ptr %i.ecu, align 8, !tbaa !75 ; 3 uses
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ecv, i64 8 ; 4 uses
  %i.ecx = icmp eq i32 %.51989, 0
  br i1 %i.ecx, label %bb.abe, label %bb.abp

bb.abe:                                           ; preds = %bb.abd
  %i.ecy = load i32, ptr %.21931, align 8, !tbaa !72 ; 2 uses
  %i.ecz = lshr i32 %i.ecy, 9
  %i.eda = getelementptr inbounds nuw i8, ptr %i.ecq, i64 92 ; 3 uses
  %i.edb = load i32, ptr %i.eda, align 4, !tbaa !237 ; 2 uses
  %i.edc = icmp sgt i32 %i.edb, 0
  br i1 %i.edc, label %.lr.ph238, label %.preheader130

.lr.ph238:                                        ; preds = %bb.abe
  %i.edd = getelementptr inbounds nuw i8, ptr %i.ecv, i64 80 ; 2 uses
  %i.ede = lshr i32 %i.ecy, 9
  %i.edf = zext nneg i32 %i.ede to i64
  %.pre367 = load ptr, ptr %i.edd, align 8, !tbaa !236
  br label %bb.abf

.preheader130.loopexit:                           ; preds = %bb.abi
  %i.edg = trunc nuw i64 %indvars.iv.next351 to i32
  br label %.preheader130

.preheader130:                                    ; preds = %.preheader130.loopexit, %bb.abe
  %i.edh = phi i32 [ %i.edb, %bb.abe ], [ %i.edw, %.preheader130.loopexit ]
  %.8.lcssa = phi i32 [ 0, %bb.abe ], [ %i.edv, %.preheader130.loopexit ] ; 2 uses
  %.12018.lcssa = phi i32 [ %i.ecz, %bb.abe ], [ %i.edg, %.preheader130.loopexit ]
  %i.edi = getelementptr inbounds nuw i8, ptr %i.ecq, i64 72 ; 2 uses
  %i.edj = load i32, ptr %i.edi, align 8, !tbaa !238
  %i.edk = add i32 %i.edj, %i.edh
  %i.edl = icmp ult i32 %.8.lcssa, %i.edk
  br i1 %i.edl, label %.lr.ph243, label %._crit_edge244

.lr.ph243:                                        ; preds = %.preheader130
  %i.edm = getelementptr inbounds nuw i8, ptr %i.ecv, i64 80 ; 2 uses
  %i.edn = zext i32 %.12018.lcssa to i64
  %.pre369 = load ptr, ptr %i.edm, align 8, !tbaa !236
  br label %bb.abj

bb.abf:                                           ; preds = %.lr.ph238, %bb.abi
  %i.edo = phi ptr [ %.pre367, %.lr.ph238 ], [ %i.edu, %bb.abi ]
  %indvars.iv350 = phi i64 [ %i.edf, %.lr.ph238 ], [ %indvars.iv.next351, %bb.abi ] ; 4 uses
  %.8235 = phi i32 [ 0, %.lr.ph238 ], [ %i.edv, %bb.abi ] ; 2 uses
  %i.edp = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv350
  store i32 %.8235, ptr %i.edp, align 8, !tbaa !332
  %.not2211 = icmp eq ptr %i.edo, null
  br i1 %.not2211, label %bb.abh, label %bb.abg

bb.abg:                                           ; preds = %bb.abf
  %i.edq = trunc nuw nsw i64 %indvars.iv350 to i32
  %i.edr = call fastcc i32 @zend_jit_trace_copy_ssa_var_info(ptr noundef %i.ecq, ptr noundef nonnull %i.ecw, ptr noundef %.0.i2410, ptr noundef %.0.i2396, i32 noundef %i.edq, ptr noundef null)
  %.not2212 = icmp eq i32 %i.edr, 0
  %.pre366 = load ptr, ptr %i.edd, align 8, !tbaa !236 ; 2 uses
  br i1 %.not2212, label %bb.abh, label %bb.abi

bb.abh:                                           ; preds = %bb.abg, %bb.abf
  %i.eds = phi ptr [ %.pre366, %bb.abg ], [ null, %bb.abf ]
  %i.edt = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv350
  store i32 -520093697, ptr %i.edt, align 8, !tbaa !346
  br label %bb.abi

bb.abi:                                           ; preds = %bb.abh, %bb.abg
  %i.edu = phi ptr [ %i.eds, %bb.abh ], [ %.pre366, %bb.abg ]
  %i.edv = add nuw nsw i32 %.8235, 1              ; 3 uses
  %indvars.iv.next351 = add nuw nsw i64 %indvars.iv350, 1 ; 2 uses
  %i.edw = load i32, ptr %i.eda, align 4, !tbaa !237 ; 2 uses
  %i.edx = icmp slt i32 %i.edv, %i.edw
  br i1 %i.edx, label %bb.abf, label %.preheader130.loopexit, !llvm.loop !642

bb.abj:                                           ; preds = %.lr.ph243, %bb.abm
  %i.edy = phi ptr [ %.pre369, %.lr.ph243 ], [ %i.eee, %bb.abm ]
  %indvars.iv352 = phi i64 [ %i.edn, %.lr.ph243 ], [ %indvars.iv.next353, %bb.abm ] ; 4 uses
  %.9241 = phi i32 [ %.8.lcssa, %.lr.ph243 ], [ %i.eef, %bb.abm ] ; 2 uses
  %i.edz = getelementptr inbounds nuw [48 x i8], ptr %.0.i2414, i64 %indvars.iv352
  store i32 %.9241, ptr %i.edz, align 8, !tbaa !332
  %.not2209 = icmp eq ptr %i.edy, null
  br i1 %.not2209, label %bb.abl, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.eea = trunc nuw i64 %indvars.iv352 to i32
  %i.eeb = call fastcc i32 @zend_jit_trace_copy_ssa_var_info(ptr noundef %i.ecq, ptr noundef nonnull %i.ecw, ptr noundef %.0.i2410, ptr noundef %.0.i2396, i32 noundef %i.eea, ptr noundef null)
  %.not2210 = icmp eq i32 %i.eeb, 0
  %.pre368 = load ptr, ptr %i.edm, align 8, !tbaa !236 ; 2 uses
  br i1 %.not2210, label %bb.abl, label %bb.abm

bb.abl:                                           ; preds = %bb.abk, %bb.abj
  %i.eec = phi ptr [ %.pre368, %bb.abk ], [ null, %bb.abj ]
  %i.eed = getelementptr inbounds nuw [40 x i8], ptr %.0.i2418, i64 %indvars.iv352
  store i32 -520093698, ptr %i.eed, align 8, !tbaa !346
  br label %bb.abm

bb.abm:                                           ; preds = %bb.abl, %bb.abk
  %i.eee = phi ptr [ %i.eec, %bb.abl ], [ %.pre368, %bb.abk ]
  %i.eef = add nuw nsw i32 %.9241, 1              ; 2 uses
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1
  %i.eeg = load i32, ptr %i.eda, align 4, !tbaa !237
  %i.eeh = load i32, ptr %i.edi, align 8, !tbaa !238
  %i.eei = add i32 %i.eeh, %i.eeg
  %i.eej = icmp ult i32 %i.eef, %i.eei
  br i1 %i.eej, label %bb.abj, label %._crit_edge244, !llvm.loop !643

._crit_edge244:                                   ; preds = %bb.abm, %.preheader130
  %.not2206 = icmp eq i32 %.sroa.0.0, 0
  br i1 %.not2206, label %bb.abt, label %.preheader127

.preheader127:                                    ; preds = %._crit_edge244, %.preheader127
  %.21931.pn = phi ptr [ %.01914, %.preheader127 ], [ %.21931, %._crit_edge244 ] ; 3 uses
  %.01914 = getelementptr inbounds nuw i8, ptr %.21931.pn, i64 16 ; 2 uses
  %i.eek = load i8, ptr %.01914, align 8, !tbaa !72
  switch i8 %i.eek, label %.sink.split671 [
    i8 4, label %.preheader127
    i8 0, label %.loopexit129
    i8 8, label %bb.abn
  ]

bb.abn:                                           ; preds = %.preheader127
  %i.eel = getelementptr inbounds nuw i8, ptr %.21931.pn, i64 18
  %i.eem = load i8, ptr %i.eel, align 1, !tbaa !72
  %i.een = icmp eq i8 %i.eem, 2
  br i1 %i.een, label %.loopexit129, label %.sink.split671

.loopexit129:                                     ; preds = %.preheader127, %bb.abn
  %i.eeo = getelementptr inbounds nuw i8, ptr %.21931.pn, i64 24
  %i.eep = load ptr, ptr %i.eeo, align 8, !tbaa !72 ; 2 uses
  %i.eeq = getelementptr inbounds i8, ptr %i.eep, i64 -1
  %i.eer = load i8, ptr %i.eeq, align 1, !tbaa !254
  %.not2207 = icmp eq i8 %i.eer, 0
  br i1 %.not2207, label %.sink.split671, label %bb.abo

bb.abo:                                           ; preds = %.loopexit129
  %i.ees = load i32, ptr %.21931, align 8, !tbaa !72
  %i.eet = lshr i32 %i.ees, 9
  %i.eeu = getelementptr inbounds i8, ptr %i.eep, i64 -16
  %i.eev = load i32, ptr %i.eeu, align 8, !tbaa !72
  %i.eew = lshr i32 %i.eev, 4
  %i.eex = add nsw i32 %i.eet, -5
  %i.eey = add nsw i32 %i.eex, %i.eew
  br label %.sink.split671.sink.split

bb.abp:                                           ; preds = %bb.abd
  %i.eez = add nsw i32 %.51989, -1                ; 5 uses
  %.not2204 = icmp eq i32 %.sroa.0.0, 0
end_hunk_1
