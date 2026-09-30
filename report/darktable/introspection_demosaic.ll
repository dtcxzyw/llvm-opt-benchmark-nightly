Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %i.kja = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kiz)
  %i.kjb = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kja)
  %i.kjc = shufflevector <2 x float> %i.kic, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.kjd = shufflevector <3 x float> %i.kjc, <3 x float> %i.kiq, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.kje = insertelement <4 x float> %i.kjd, float %i.kib, i64 3
  %i.kjf = fsub reassoc nsz arcp contract afn <4 x float> %i.kir, %i.kje
  %i.kjg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kjf)
  %i.kjh = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.kjg)
  %i.kji = getelementptr inbounds nuw [4 x i8], ptr %i.jfl, i64 %indvars.iv1004.i ; 4 uses
  %i.kjj = getelementptr i8, ptr %i.kji, i64 -448
  %i.kjk = load float, ptr %i.kjj, align 4, !tbaa !12, !noalias !499
  %i.kjl = getelementptr inbounds nuw i8, ptr %i.kji, i64 448
  %i.kjm = load float, ptr %i.kjl, align 4, !tbaa !12, !noalias !499
  %i.kjn = getelementptr i8, ptr %i.kji, i64 -4
  %i.kjo = load float, ptr %i.kjn, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next1005.i = add nuw nsw i64 %indvars.iv1004.i, 1
  %i.kjp = insertelement <2 x float> poison, float %i.kjb, i64 0
  %i.kjq = insertelement <2 x float> %i.kjp, float %i.kij, i64 1
  %i.kjr = fadd reassoc nsz arcp contract afn <2 x float> %i.kjq, splat (float f0x3727C5AC) ; 2 uses
  %i.kjs = insertelement <2 x float> poison, float %i.kjh, i64 0
  %i.kjt = insertelement <2 x float> %i.kjs, float %i.kip, i64 1
  %i.kju = fadd reassoc nsz arcp contract afn <2 x float> %i.kjt, splat (float f0x3727C5AC) ; 2 uses
  %i.kjv = load <2 x float>, ptr %i.kji, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.kjw = insertelement <2 x float> %i.kjv, float %i.kip, i64 1 ; 2 uses
  %i.kjx = fmul reassoc nsz arcp contract afn <2 x float> %i.kjw, <float 2.000000e+00, float f0x3727C5AC> ; 3 uses
  %i.kjy = fadd reassoc nsz arcp contract afn <2 x float> %i.kjw, <float poison, float f0x3727C5AC>
  %i.kjz = shufflevector <2 x float> %i.kjx, <2 x float> %i.kjy, <2 x i32> <i32 0, i32 3>
  %i.kka = extractelement <2 x float> %i.kjv, i64 0
  %i.kkb = fadd reassoc nsz arcp contract afn float %i.kka, f0x3727C5AC
  %i.kkc = insertelement <2 x float> poison, float %i.kjo, i64 0
  %i.kkd = insertelement <2 x float> %i.kkc, float %i.kjk, i64 1
  %i.kke = insertelement <2 x float> poison, float %i.kkb, i64 0
  %i.kkf = shufflevector <2 x float> %i.kke, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kkg = fadd reassoc nsz arcp contract afn <2 x float> %i.kkd, %i.kkf
  %i.kkh = shufflevector <2 x float> %i.kjv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kki = insertelement <2 x float> %i.kkh, float %i.kjm, i64 1
  %i.kkj = fadd reassoc nsz arcp contract afn <2 x float> %i.kki, %i.kkf
  %i.kkk = insertelement <2 x float> %i.kic, float %i.khg, i64 1
  %i.kkl = fmul reassoc nsz arcp contract afn <2 x float> %i.kjz, %i.kkk
  %i.kkm = shufflevector <3 x float> %i.kiq, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.kkn = insertelement <2 x float> %i.kkm, float %i.khi, i64 1
  %i.kko = fmul reassoc nsz arcp contract afn <2 x float> %i.kjr, %i.kkn
  %i.kkp = shufflevector <2 x float> %i.kjx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kkq = fmul reassoc nsz arcp contract afn <2 x float> %i.kko, %i.kkp
  %i.kkr = fdiv reassoc nsz arcp contract afn <2 x float> %i.kkq, %i.kkj
  %i.kks = shufflevector <2 x float> %i.kju, <2 x float> %i.kjx, <2 x i32> <i32 0, i32 2>
  %i.kkt = fmul reassoc nsz arcp contract afn <2 x float> %i.kkl, %i.kks
  %i.kku = fdiv reassoc nsz arcp contract afn <2 x float> %i.kkt, %i.kkg
  %i.kkv = fadd reassoc nsz arcp contract afn <2 x float> %i.kkr, %i.kku
  %i.kkw = fadd reassoc nsz arcp contract afn <2 x float> %i.kju, %i.kjr
  %i.kkx = fdiv reassoc nsz arcp contract afn <2 x float> %i.kkv, %i.kkw ; 2 uses
  %i.kky = getelementptr inbounds nuw [4 x i8], ptr %i.jfk, i64 %indvars.iv1006.i ; 5 uses
  %i.kkz = load float, ptr %i.kky, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.kla = getelementptr i8, ptr %i.kky, i64 -452
  %i.klb = load float, ptr %i.kla, align 4, !tbaa !12, !noalias !499
  %i.klc = getelementptr i8, ptr %i.kky, i64 -444
  %i.kld = load float, ptr %i.klc, align 4, !tbaa !12, !noalias !499
  %i.kle = fadd reassoc nsz arcp contract afn float %i.kld, %i.klb
  %i.klf = getelementptr inbounds nuw i8, ptr %i.kky, i64 444
  %i.klg = load float, ptr %i.klf, align 4, !tbaa !12, !noalias !499
  %i.klh = fadd reassoc nsz arcp contract afn float %i.kle, %i.klg
  %i.kli = getelementptr inbounds nuw i8, ptr %i.kky, i64 452
  %i.klj = load float, ptr %i.kli, align 4, !tbaa !12, !noalias !499
  %i.klk = fadd reassoc nsz arcp contract afn float %i.klh, %i.klj
  %i.kll = fmul reassoc nsz arcp contract afn float %i.klk, 2.500000e-01 ; 2 uses
  %i.klm = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kkz
  %i.kln = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.klm)
  %i.klo = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.kll
  %i.klp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.klo)
  %i.klq = fcmp reassoc nsz arcp contract afn olt float %i.kln, %i.klp
  %i.klr = select reassoc nsz arcp contract afn i1 %i.klq, float %i.kll, float %i.kkz ; 3 uses
  %i.kls = fcmp reassoc nsz arcp contract afn oge float %i.klr, 0.000000e+00
  %i.klt = fcmp reassoc nsz arcp contract afn ole float %i.klr, 1.000000e+00
  %i.klu = select reassoc nsz arcp contract afn i1 %i.klt, float %i.klr, float 1.000000e+00
  %i.klv = select reassoc nsz arcp contract afn i1 %i.kls, float %i.klu, float 0.000000e+00
  %i.klw = extractelement <2 x float> %i.kkx, i64 0
  %i.klx = extractelement <2 x float> %i.kkx, i64 1 ; 2 uses
  %i.kly = fsub reassoc nsz arcp contract afn float %i.klw, %i.klx
  %i.klz = fmul reassoc nsz arcp contract afn float %i.klv, %i.kly
  %i.kma = fadd reassoc nsz arcp contract afn float %i.klz, %i.klx
  %i.kmb = getelementptr inbounds nuw [4 x i8], ptr %i.jfx, i64 %indvars.iv1006.i
  store float %i.kma, ptr %i.kmb, align 4, !tbaa !12, !noalias !499
  %i.kmc = add nuw nsw i32 %.0785882.i, 2         ; 2 uses
  %i.kmd = icmp slt i32 %i.kmc, %i.jxj
  br i1 %i.kmd, label %.lr.ph886.i, label %._crit_edge887.i, !llvm.loop !290

.preheader829.i:                                  ; preds = %._crit_edge895.i, %.lr.ph897.i
  br i1 %i.jgm, label %.lr.ph906.i, label %._crit_edge925.i

.lr.ph906.i:                                      ; preds = %.preheader829.i
  %i.kme = add nsw i32 %i.jip, -4                 ; 6 uses
  %i.kmf = add i32 %i.jib, -9
  br label %bb.og

.lr.ph894.i:                                      ; preds = %._crit_edge895.i, %.lr.ph894.preheader.i
  %indvars.iv1009.i = phi i32 [ 336, %.lr.ph894.preheader.i ], [ %indvars.iv.next1010.i, %._crit_edge895.i ] ; 5 uses
  %.0767896.i = phi i32 [ 3, %.lr.ph894.preheader.i ], [ %i.kpo, %._crit_edge895.i ]
  %i.kmg = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kmh = lshr exact i64 %i.kmg, 1
  %i.kmi = or disjoint i64 %i.kmh, 1              ; 3 uses
  %i.kmj = shl nuw nsw i64 %i.kmi, 2              ; 2 uses
  %scevgep3317 = getelementptr nuw i8, ptr %i.jfp, i64 %i.kmj ; 2 uses
  %i.kmk = trunc nuw nsw i64 %i.kmi to i32
  %i.kml = add i32 %i.kau, %i.kmk
  %i.kmm = zext i32 %i.kml to i64                 ; 2 uses
  %i.kmn = shl nuw nsw i64 %i.kmm, 2              ; 2 uses
  %scevgep3321 = getelementptr i8, ptr %i.jfp, i64 %i.kmn ; 2 uses
  %scevgep3322 = getelementptr i8, ptr %i.jfq, i64 %i.kmj ; 2 uses
  %scevgep3323 = getelementptr i8, ptr %i.jfq, i64 %i.kmn ; 2 uses
  %i.kmo = shl nuw nsw i64 %i.kmg, 2              ; 2 uses
  %scevgep3325 = getelementptr i8, ptr %scevgep3324, i64 %i.kmo ; 2 uses
  %i.kmp = shl nuw nsw i64 %i.kmm, 3
  %i.kmq = add nuw nsw i64 %i.kmp, %i.kmo
  %i.kmr = shl nuw nsw i64 %i.kmi, 3
  %i.kms = sub nsw i64 %i.kmq, %i.kmr
  %scevgep3327 = getelementptr i8, ptr %scevgep3326, i64 %i.kms ; 2 uses
  %i.kmt = or disjoint i32 %indvars.iv1009.i, 3
  %i.kmu = zext i32 %i.kmt to i64                 ; 6 uses
  %i.kmv = lshr i64 %i.kmu, 1                     ; 6 uses
  %i.kmw = trunc nuw nsw i64 %i.kmv to i32
  %i.kmx = add nuw i32 %i.kav, %i.kmw
  %wide.trip.count.i = zext i32 %i.kmx to i64
  %i.kmy = lshr exact i32 %indvars.iv1009.i, 1
  %i.kmz = or disjoint i32 %i.kmy, 1              ; 2 uses
  %i.kna = zext nneg i32 %i.kmz to i64
  %.reass4870 = add i32 %i.kmz, %invariant.op4869
  %i.knb = zext i32 %.reass4870 to i64
  %i.knc = sub nsw i64 %i.knb, %i.kna             ; 3 uses
  %min.iters.check3340 = icmp ult i64 %i.knc, 17
  br i1 %min.iters.check3340, label %scalar.ph3339.preheader, label %vector.scevcheck3295

scalar.ph3339.preheader:                          ; preds = %vector.body3346, %vector.memcheck3316, %vector.scevcheck3295, %.lr.ph894.i
  %indvars.iv1013.i.ph = phi i64 [ %i.kmu, %vector.memcheck3316 ], [ %i.kmu, %vector.scevcheck3295 ], [ %i.kmu, %.lr.ph894.i ], [ %i.kol, %vector.body3346 ]
  %indvars.iv1011.i.ph = phi i64 [ %i.kmv, %vector.memcheck3316 ], [ %i.kmv, %vector.scevcheck3295 ], [ %i.kmv, %.lr.ph894.i ], [ %i.kom, %vector.body3346 ]
  br label %scalar.ph3339

vector.scevcheck3295:                             ; preds = %.lr.ph894.i
  %i.knd = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kne = shl nuw nsw i64 %i.knd, 2              ; 7 uses
  %scevgep3315 = getelementptr i8, ptr %scevgep3314, i64 %i.kne ; 2 uses
  %scevgep3313 = getelementptr i8, ptr %scevgep3312, i64 %i.kne ; 2 uses
  %scevgep3311 = getelementptr i8, ptr %scevgep3310, i64 %i.kne ; 2 uses
  %scevgep3309 = getelementptr i8, ptr %scevgep3308, i64 %i.kne ; 2 uses
  %scevgep3307 = getelementptr i8, ptr %scevgep3306, i64 %i.kne ; 2 uses
  %scevgep3305 = getelementptr i8, ptr %scevgep3304, i64 %i.kne ; 2 uses
  %scevgep3300 = getelementptr i8, ptr %scevgep3299, i64 %i.kne ; 2 uses
  %i.knf = lshr exact i64 %i.knd, 1               ; 2 uses
  %i.kng = trunc nuw nsw i64 %i.knf to i32
  %i.knh = or disjoint i32 %i.kng, 1
  %i.kni = add i32 %i.kaw, %i.knh
  %i.knj = zext i32 %i.kni to i64
  %i.knk = xor i64 %i.knf, -2
  %i.knl = add nsw i64 %i.knk, %i.knj             ; 2 uses
  %mul.result3302 = shl nsw i64 %i.knl, 3         ; 7 uses
  %mul.overflow3303 = icmp ugt i64 %i.knl, 2305843009213693951
  %i.knm = getelementptr i8, ptr %scevgep3300, i64 %mul.result3302
  %i.knn = icmp ult ptr %i.knm, %scevgep3300
  %i.kno = getelementptr i8, ptr %scevgep3305, i64 %mul.result3302
  %i.knp = icmp ult ptr %i.kno, %scevgep3305
  %i.knq = getelementptr i8, ptr %scevgep3307, i64 %mul.result3302
  %i.knr = icmp ult ptr %i.knq, %scevgep3307
  %i.kns = or i1 %i.knr, %mul.overflow3303
  %i.knt = getelementptr i8, ptr %scevgep3309, i64 %mul.result3302
  %i.knu = icmp ult ptr %i.knt, %scevgep3309
  %i.knv = getelementptr i8, ptr %scevgep3311, i64 %mul.result3302
  %i.knw = icmp ult ptr %i.knv, %scevgep3311
  %i.knx = getelementptr i8, ptr %scevgep3313, i64 %mul.result3302
  %i.kny = icmp ult ptr %i.knx, %scevgep3313
  %i.knz = getelementptr i8, ptr %scevgep3315, i64 %mul.result3302
  %i.koa = icmp ult ptr %i.knz, %scevgep3315
  %i.kob = or i1 %i.knp, %i.knn
  %i.koc = or i1 %i.kob, %i.kns
  %i.kod = or i1 %i.knu, %i.koc
  %i.koe = or i1 %i.knw, %i.kod
  %i.kof = or i1 %i.kny, %i.koe
  %i.kog = or i1 %i.koa, %i.kof
  br i1 %i.kog, label %scalar.ph3339.preheader, label %vector.memcheck3316

vector.memcheck3316:                              ; preds = %vector.scevcheck3295
  %bound03328 = icmp ult ptr %scevgep3317, %scevgep3323
  %bound13329 = icmp ult ptr %scevgep3322, %scevgep3321
  %found.conflict3330 = and i1 %bound03328, %bound13329
  %bound03331 = icmp ult ptr %scevgep3317, %scevgep3327
  %bound13332 = icmp ult ptr %scevgep3325, %scevgep3321
  %found.conflict3333 = and i1 %bound03331, %bound13332
  %conflict.rdx3334 = or i1 %found.conflict3330, %found.conflict3333
  %bound03335 = icmp ult ptr %scevgep3322, %scevgep3327
  %bound13336 = icmp ult ptr %scevgep3325, %scevgep3323
  %found.conflict3337 = and i1 %bound03335, %bound13336
  %conflict.rdx3338 = or i1 %conflict.rdx3334, %found.conflict3337
  br i1 %conflict.rdx3338, label %scalar.ph3339.preheader, label %vector.ph3341

vector.ph3341:                                    ; preds = %vector.memcheck3316
  %i.koh = and i64 %i.knc, 7                      ; 2 uses
  %i.koi = icmp eq i64 %i.koh, 0
  %i.koj = select i1 %i.koi, i64 8, i64 %i.koh
  %n.vec3342 = sub nsw i64 %i.knc, %i.koj         ; 3 uses
  %i.kok = shl nsw i64 %n.vec3342, 1
  %i.kol = add nsw i64 %i.kok, %i.kmu
  %i.kom = add nsw i64 %i.kmv, %n.vec3342
  %invariant.gep4866 = getelementptr [4 x i8], ptr %i.jfn, i64 %i.kmu
  br label %vector.body3346

vector.body3346:                                  ; preds = %vector.body3346, %vector.ph3341
  %index3347 = phi i64 [ 0, %vector.ph3341 ], [ %index.next3376, %vector.body3346 ] ; 3 uses
  %6 = add nuw i64 %i.kmv, %index3347             ; 2 uses
  %.idx4562 = shl i64 %index3347, 3
  %gep4867 = getelementptr i8, ptr %invariant.gep4866, i64 %.idx4562 ; 14 uses
  %7 = getelementptr i8, ptr %gep4867, i64 -1356
  %wide.vec3345 = load <16 x float>, ptr %7, align 64, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3346 = shufflevector <16 x float> %wide.vec3345, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %8 = getelementptr i8, ptr %gep4867, i64 -452
  %wide.vec3347 = load <16 x float>, ptr %8, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3348 = shufflevector <16 x float> %wide.vec3347, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kon = getelementptr inbounds nuw i8, ptr %gep4867, i64 452
  %wide.vec3354 = load <16 x float>, ptr %i.kon, align 16, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3355 = shufflevector <16 x float> %wide.vec3354, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.koo = getelementptr inbounds nuw i8, ptr %gep4867, i64 1356
  %wide.vec3356 = load <16 x float>, ptr %i.koo, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3357 = shufflevector <16 x float> %wide.vec3356, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %9 = getelementptr i8, ptr %gep4867, i64 -904
  %wide.vec3353 = load <16 x float>, ptr %9, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3354 = shufflevector <16 x float> %wide.vec3353, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kop = getelementptr inbounds nuw i8, ptr %gep4867, i64 904
  %wide.vec3360 = load <16 x float>, ptr %i.kop, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3361 = shufflevector <16 x float> %wide.vec3360, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.koq = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3361, %strided.vec3354
  %i.kor = fmul reassoc nsz arcp contract afn <8 x float> %i.koq, splat (float -3.000000e+00)
  %wide.vec3357 = load <16 x float>, ptr %gep4867, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3358 = shufflevector <16 x float> %wide.vec3357, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kos = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec3358, splat (float 6.000000e+00)
  %i.kot = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3348, %strided.vec3355
  %i.kou = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3346, %i.kot
  %i.kov = fadd reassoc nsz arcp contract afn <8 x float> %i.kou, %strided.vec3357
  %i.kow = fadd reassoc nsz arcp contract afn <8 x float> %i.kov, %i.kor
  %i.kox = fadd reassoc nsz arcp contract afn <8 x float> %i.kow, %i.kos ; 2 uses
  %i.koy = fmul reassoc nsz arcp contract afn <8 x float> %i.kox, %i.kox
  %i.koz = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %6
  store <8 x float> %i.koy, ptr %i.koz, align 4, !tbaa !12, !alias.scope !520, !noalias !521
  %10 = getelementptr i8, ptr %gep4867, i64 -1332
  %wide.vec3359 = load <16 x float>, ptr %10, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3360 = shufflevector <16 x float> %wide.vec3359, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %11 = getelementptr i8, ptr %gep4867, i64 -444
  %wide.vec3361 = load <16 x float>, ptr %11, align 16, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3362 = shufflevector <16 x float> %wide.vec3361, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kpa = getelementptr inbounds nuw i8, ptr %gep4867, i64 444
  %wide.vec3367.a = load <16 x float>, ptr %i.kpa, align 8, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3368.a = shufflevector <16 x float> %wide.vec3367.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kpb = getelementptr inbounds nuw i8, ptr %gep4867, i64 1332
  %wide.vec3369.a = load <16 x float>, ptr %i.kpb, align 64, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3370.a = shufflevector <16 x float> %wide.vec3369.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %12 = getelementptr i8, ptr %gep4867, i64 -888
  %wide.vec3367 = load <16 x float>, ptr %12, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3368 = shufflevector <16 x float> %wide.vec3367, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kpc = getelementptr inbounds nuw i8, ptr %gep4867, i64 888
  %wide.vec3373 = load <16 x float>, ptr %i.kpc, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3374 = shufflevector <16 x float> %wide.vec3373, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kpd = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3374, %strided.vec3368
  %i.kpe = fmul reassoc nsz arcp contract afn <8 x float> %i.kpd, splat (float -3.000000e+00)
  %wide.vec3371 = load <16 x float>, ptr %gep4867, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3372 = shufflevector <16 x float> %wide.vec3371, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kpf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec3372, splat (float 6.000000e+00)
  %i.kpg = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3362, %strided.vec3368.a
  %i.kph = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3360, %i.kpg
  %i.kpi = fadd reassoc nsz arcp contract afn <8 x float> %i.kph, %strided.vec3370.a
  %i.kpj = fadd reassoc nsz arcp contract afn <8 x float> %i.kpi, %i.kpe
  %i.kpk = fadd reassoc nsz arcp contract afn <8 x float> %i.kpj, %i.kpf ; 2 uses
  %i.kpl = fmul reassoc nsz arcp contract afn <8 x float> %i.kpk, %i.kpk
  %i.kpm = getelementptr inbounds nuw [4 x i8], ptr %i.jfq, i64 %6
  store <8 x float> %i.kpl, ptr %i.kpm, align 4, !tbaa !12, !alias.scope !522, !noalias !523
  %index.next3376 = add nuw i64 %index3347, 8     ; 2 uses
  %i.kpn = icmp eq i64 %index.next3376, %n.vec3342
  br i1 %i.kpn, label %scalar.ph3339.preheader, label %vector.body3346, !llvm.loop !295

._crit_edge895.i:                                 ; preds = %scalar.ph3339
  %i.kpo = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.kpp = icmp slt i32 %i.kpo, %i.jgi
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.kpp, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3339:                                    ; preds = %scalar.ph3339.preheader, %scalar.ph3339
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3339 ], [ %indvars.iv1013.i.ph, %scalar.ph3339.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3339 ], [ %indvars.iv1011.i.ph, %scalar.ph3339.preheader ] ; 3 uses
  %i.kpq = getelementptr [4 x i8], ptr %i.jfn, i64 %indvars.iv1013.i ; 14 uses
  %i.kpr = getelementptr i8, ptr %i.kpq, i64 -1356
  %i.kps = load float, ptr %i.kpr, align 4, !tbaa !12, !noalias !499
  %i.kpt = getelementptr i8, ptr %i.kpq, i64 -452
  %i.kpu = load float, ptr %i.kpt, align 4, !tbaa !12, !noalias !499
  %i.kpv = getelementptr inbounds nuw i8, ptr %i.kpq, i64 452
  %i.kpw = load float, ptr %i.kpv, align 4, !tbaa !12, !noalias !499
  %i.kpx = getelementptr inbounds nuw i8, ptr %i.kpq, i64 1356
  %i.kpy = load float, ptr %i.kpx, align 4, !tbaa !12, !noalias !499
  %i.kpz = getelementptr i8, ptr %i.kpq, i64 -904
  %i.kqa = load float, ptr %i.kpz, align 4, !tbaa !12, !noalias !499
  %i.kqb = getelementptr inbounds nuw i8, ptr %i.kpq, i64 904
  %i.kqc = load float, ptr %i.kqb, align 4, !tbaa !12, !noalias !499
  %i.kqd = fadd reassoc nsz arcp contract afn float %i.kqc, %i.kqa
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.kqd, -3.000000e+00
  %i.kqe = load float, ptr %i.kpq, align 4, !tbaa !12, !noalias !499
  %i.kqf = fmul reassoc nsz arcp contract afn float %i.kqe, 6.000000e+00
  %i.kqg = fadd reassoc nsz arcp contract afn float %i.kpu, %i.kpw
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.kps, %i.kqg
  %i.kqh = fadd reassoc nsz arcp contract afn float %.neg807.i, %i.kpy
  %i.kqi = fadd reassoc nsz arcp contract afn float %i.kqh, %.neg806.i
  %i.kqj = fadd reassoc nsz arcp contract afn float %i.kqi, %i.kqf ; 2 uses
  %i.kqk = fmul reassoc nsz arcp contract afn float %i.kqj, %i.kqj
  %i.kql = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %indvars.iv1011.i
  store float %i.kqk, ptr %i.kql, align 4, !tbaa !12, !noalias !499
  %i.kqm = getelementptr i8, ptr %i.kpq, i64 -1332
  %i.kqn = load float, ptr %i.kqm, align 4, !tbaa !12, !noalias !499
  %i.kqo = getelementptr i8, ptr %i.kpq, i64 -444
  %i.kqp = load float, ptr %i.kqo, align 4, !tbaa !12, !noalias !499
  %i.kqq = getelementptr inbounds nuw i8, ptr %i.kpq, i64 444
  %i.kqr = load float, ptr %i.kqq, align 4, !tbaa !12, !noalias !499
  %i.kqs = getelementptr inbounds nuw i8, ptr %i.kpq, i64 1332
  %i.kqt = load float, ptr %i.kqs, align 4, !tbaa !12, !noalias !499
  %i.kqu = getelementptr i8, ptr %i.kpq, i64 -888
  %i.kqv = load float, ptr %i.kqu, align 4, !tbaa !12, !noalias !499
  %i.kqw = getelementptr inbounds nuw i8, ptr %i.kpq, i64 888
  %i.kqx = load float, ptr %i.kqw, align 4, !tbaa !12, !noalias !499
  %i.kqy = fadd reassoc nsz arcp contract afn float %i.kqx, %i.kqv
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.kqy, -3.000000e+00
  %i.kqz = load float, ptr %i.kpq, align 4, !tbaa !12, !noalias !499
  %i.kra = fmul reassoc nsz arcp contract afn float %i.kqz, 6.000000e+00
  %i.krb = fadd reassoc nsz arcp contract afn float %i.kqp, %i.kqr
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.kqn, %i.krb
  %i.krc = fadd reassoc nsz arcp contract afn float %.neg812.i, %i.kqt
  %i.krd = fadd reassoc nsz arcp contract afn float %i.krc, %.neg811.i
  %i.kre = fadd reassoc nsz arcp contract afn float %i.krd, %i.kra ; 2 uses
  %i.krf = fmul reassoc nsz arcp contract afn float %i.kre, %i.kre
  %i.krg = getelementptr inbounds nuw [4 x i8], ptr %i.jfq, i64 %indvars.iv1011.i
  store float %i.krf, ptr %i.krg, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i542 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i542, label %._crit_edge895.i, label %scalar.ph3339, !llvm.loop !296

bb.og:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3263 = phi i32 [ %indvar.next3264, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1029.i = phi i32 [ %indvars.iv.next1030.i, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %.0763905.i = phi i32 [ %i.kto, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 2 uses
  %i.krh = phi <2 x i32> [ %i.ktq, %._crit_edge904.i ], [ <i32 563, i32 339>, %.lr.ph906.i ] ; 2 uses
  %i.kri = mul i32 %indvar3263, 112
  %i.krj = add i32 %i.kri, 448
  %i.krk = zext i32 %i.krj to i64
  %i.krl = shl nuw nsw i64 %i.krk, 1
  %i.krm = shl i32 %.0763905.i, 2
  %i.krn = and i32 %i.krm, 28
  %i.kro = lshr i32 %.fr1063, %i.krn
  %i.krp = and i32 %i.kro, 1                      ; 3 uses
  %i.krq = or disjoint i32 %i.krp, 4              ; 4 uses
  %i.krr = icmp slt i32 %i.krq, %i.kme
  br i1 %i.krr, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.og
  %i.krs = insertelement <2 x i32> poison, i32 %i.krp, i64 0
  %i.krt = shufflevector <2 x i32> %i.krs, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kru = add <2 x i32> %i.krt, %i.krh
  %i.krv = lshr <2 x i32> %i.kru, splat (i32 1)
  %i.krw = zext nneg <2 x i32> %i.krv to <2 x i64> ; 3 uses
  %i.krx = lshr exact i32 %indvars.iv1029.i, 1
  %i.kry = zext nneg i32 %i.krx to i64            ; 4 uses
  %i.krz = sub i32 %i.kmf, %i.krp                 ; 2 uses
  %i.ksa = lshr i32 %i.krz, 1
  %narrow4566.a = add nuw i32 %i.ksa, 1
  %i.ksb = zext i32 %narrow4566.a to i64          ; 2 uses
  %min.iters.check3277 = icmp ult i32 %i.krz, 14
  %i.ksc = extractelement <2 x i64> %i.krw, i64 0 ; 4 uses
  %i.ksd = extractelement <2 x i64> %i.krw, i64 1 ; 4 uses
  br i1 %min.iters.check3277, label %.lr.ph903.i.preheader, label %vector.memcheck3262

vector.memcheck3262:                              ; preds = %.lr.ph903.preheader.i
  %i.kse = shl nuw nsw <2 x i64> %i.krw, splat (i64 2)
  %i.ksf = shufflevector <2 x i64> %i.kse, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ksg = insertelement <4 x i64> poison, i64 %i.krl, i64 0
  %i.ksh = shufflevector <4 x i64> %i.ksg, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ksi = add <4 x i64> %i.jgb, %i.ksh
  %i.ksj = add <4 x i64> %i.ksf, %i.jfu
  %i.ksk = sub <4 x i64> %i.ksj, %i.ksi
  %i.ksl = icmp ugt <4 x i64> %i.ksk, splat (i64 -32)
  %i.ksm = bitcast <4 x i1> %i.ksl to i4
  %.not4612 = icmp eq i4 %i.ksm, 0
  br i1 %.not4612, label %vector.ph3278, label %.lr.ph903.i.preheader

vector.ph3278:                                    ; preds = %vector.memcheck3262
  %n.vec3279 = and i64 %i.ksb, 4294967288         ; 6 uses
  %i.ksn = add nuw nsw i64 %n.vec3279, %i.kry
  %i.kso = add nuw nsw i64 %n.vec3279, %i.ksd
  %i.ksp = add nuw nsw i64 %n.vec3279, %i.ksc
  %i.ksq = trunc nuw i64 %n.vec3279 to i32
  %i.ksr = shl i32 %i.ksq, 1
  %i.kss = or disjoint i32 %i.krq, %i.ksr
  br label %vector.body3280

vector.body3280:                                  ; preds = %vector.body3280, %vector.ph3278
  %index3281 = phi i64 [ 0, %vector.ph3278 ], [ %index.next3288, %vector.body3280 ] ; 4 uses
  %i.kst = add nuw i64 %index3281, %i.kry         ; 3 uses
  %i.ksu = add nuw i64 %index3281, %i.ksd         ; 2 uses
  %i.ksv = add nuw i64 %index3281, %i.ksc         ; 2 uses
  %i.ksw = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %i.ksu
  %wide.load3282 = load <8 x float>, ptr %i.ksw, align 4, !tbaa !12, !noalias !499
  %i.ksx = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %i.kst
  %wide.load3283 = load <8 x float>, ptr %i.ksx, align 8, !tbaa !12, !noalias !499
  %i.ksy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3283, %wide.load3282
  %i.ksz = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %i.ksv
  %i.kta = getelementptr inbounds nuw i8, ptr %i.ksz, i64 4
  %wide.load3284 = load <8 x float>, ptr %i.kta, align 4, !tbaa !12, !noalias !499
  %i.ktb = fadd reassoc nsz arcp contract afn <8 x float> %i.ksy, %wide.load3284
  %i.ktc = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ktb, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.ktd = getelementptr inbounds nuw [4 x i8], ptr %i.jfq, i64 %i.ksu
  %i.kte = getelementptr inbounds nuw i8, ptr %i.ktd, i64 4
  %wide.load3285 = load <8 x float>, ptr %i.kte, align 4, !tbaa !12, !noalias !499
  %i.ktf = getelementptr inbounds nuw [4 x i8], ptr %i.jfq, i64 %i.kst
  %wide.load3286 = load <8 x float>, ptr %i.ktf, align 8, !tbaa !12, !noalias !499
  %i.ktg = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3286, %wide.load3285
  %i.kth = getelementptr inbounds nuw [4 x i8], ptr %i.jfq, i64 %i.ksv
  %wide.load3287 = load <8 x float>, ptr %i.kth, align 4, !tbaa !12, !noalias !499
  %i.kti = fadd reassoc nsz arcp contract afn <8 x float> %i.ktg, %wide.load3287
  %i.ktj = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kti, <8 x float> splat (float 1.000000e-10))
  %i.ktk = fadd reassoc nsz arcp contract afn <8 x float> %i.ktj, %i.ktc
  %i.ktl = fdiv reassoc nsz arcp contract afn <8 x float> %i.ktc, %i.ktk
  %i.ktm = getelementptr inbounds nuw [4 x i8], ptr %i.jfl, i64 %i.kst
  store <8 x float> %i.ktl, ptr %i.ktm, align 8, !tbaa !12, !noalias !499
  %index.next3288 = add nuw i64 %index3281, 8     ; 2 uses
  %i.ktn = icmp eq i64 %index.next3288, %n.vec3279
  br i1 %i.ktn, label %middle.block3289, label %vector.body3280, !llvm.loop !297

middle.block3289:                                 ; preds = %vector.body3280
  %cmp.n3290 = icmp eq i64 %n.vec3279, %i.ksb
  br i1 %cmp.n3290, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3262, %.lr.ph903.preheader.i, %middle.block3289
  %indvars.iv1031.i.ph = phi i64 [ %i.kry, %vector.memcheck3262 ], [ %i.kry, %.lr.ph903.preheader.i ], [ %i.ksn, %middle.block3289 ]
  %indvars.iv1027.i.ph = phi i64 [ %i.ksd, %vector.memcheck3262 ], [ %i.ksd, %.lr.ph903.preheader.i ], [ %i.kso, %middle.block3289 ]
  %indvars.iv1023.i.ph = phi i64 [ %i.ksc, %vector.memcheck3262 ], [ %i.ksc, %.lr.ph903.preheader.i ], [ %i.ksp, %middle.block3289 ]
  %.0762898.i.ph = phi i32 [ %i.krq, %vector.memcheck3262 ], [ %i.krq, %.lr.ph903.preheader.i ], [ %i.kss, %middle.block3289 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3289, %bb.og
  %i.kto = add nuw nsw i32 %.0763905.i, 1         ; 2 uses
  %i.ktp = icmp slt i32 %i.kto, %i.jgl
  %i.ktq = add <2 x i32> %i.krh, splat (i32 112)
  %indvars.iv.next1030.i = add i32 %indvars.iv1029.i, 112
  %indvar.next3264 = add i32 %indvar3263, 1
  br i1 %i.ktp, label %bb.og, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.ktr = add i32 %i.jib, -9
  %i.kts = add i32 %i.jib, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1031.i = phi i64 [ %indvars.iv.next1032.i, %.lr.ph903.i ], [ %indvars.iv1031.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1027.i = phi i64 [ %indvars.iv.next1028.i, %.lr.ph903.i ], [ %indvars.iv1027.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.kuo, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.ktt = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %indvars.iv1027.i
  %i.ktu = load float, ptr %i.ktt, align 4, !tbaa !12, !noalias !499
  %i.ktv = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %indvars.iv1031.i
  %i.ktw = load float, ptr %i.ktv, align 4, !tbaa !12, !noalias !499
  %i.ktx = fadd reassoc nsz arcp contract afn float %i.ktw, %i.ktu
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.kty = getelementptr inbounds nuw [4 x i8], ptr %i.jfp, i64 %indvars.iv.next1024.i
  %i.ktz = load float, ptr %i.kty, align 4, !tbaa !12, !noalias !499
  %i.kua = fadd reassoc nsz arcp contract afn float %i.ktx, %i.ktz
  %i.kub = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kua, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1028.i = add nuw nsw i64 %indvars.iv1027.i, 1 ; 2 uses
  %i.kuc = getelementptr inbounds nuw [4 x i8], ptr %i.jfq, i64 %indvars.iv.next1028.i
  %i.kud = load float, ptr %i.kuc, align 4, !tbaa !12, !noalias !499
  %i.kue = getelementptr inbounds nuw [4 x i8], ptr %i.jfq, i64 %indvars.iv1031.i
  %i.kuf = load float, ptr %i.kue, align 4, !tbaa !12, !noalias !499
end_hunk_0
