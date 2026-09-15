Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  br label %scalar.ph3339

vector.scevcheck3295:                             ; preds = %.lr.ph894.i
  %i.kmp = zext i32 %indvars.iv1009.i to i64      ; 2 uses
  %i.kmq = shl nuw nsw i64 %i.kmp, 2              ; 7 uses
  %scevgep3315 = getelementptr i8, ptr %scevgep3314, i64 %i.kmq ; 2 uses
  %scevgep3313 = getelementptr i8, ptr %scevgep3312, i64 %i.kmq ; 2 uses
  %scevgep3311 = getelementptr i8, ptr %scevgep3310.a, i64 %i.kmq ; 2 uses
  %scevgep3309 = getelementptr i8, ptr %scevgep3308.a, i64 %i.kmq ; 2 uses
  %scevgep3307 = getelementptr i8, ptr %scevgep3306.a, i64 %i.kmq ; 2 uses
  %scevgep3305 = getelementptr i8, ptr %scevgep3304.a, i64 %i.kmq ; 2 uses
  %scevgep3300 = getelementptr i8, ptr %scevgep3299, i64 %i.kmq ; 2 uses
  %i.kmr = lshr exact i64 %i.kmp, 1               ; 2 uses
  %i.kms = trunc nuw nsw i64 %i.kmr to i32
  %i.kmt = or disjoint i32 %i.kms, 1
  %i.kmu = add i32 %i.kai, %i.kmt
  %i.kmv = zext i32 %i.kmu to i64
  %i.kmw = xor i64 %i.kmr, -2
  %i.kmx = add nsw i64 %i.kmw, %i.kmv             ; 2 uses
  %mul.result3302 = shl nsw i64 %i.kmx, 3         ; 7 uses
  %mul.overflow3303 = icmp ugt i64 %i.kmx, 2305843009213693951
  %i.kmy = getelementptr i8, ptr %scevgep3300, i64 %mul.result3302
  %i.kmz = icmp ult ptr %i.kmy, %scevgep3300
  %i.kna = getelementptr i8, ptr %scevgep3305, i64 %mul.result3302
  %i.knb = icmp ult ptr %i.kna, %scevgep3305
  %i.knc = getelementptr i8, ptr %scevgep3307, i64 %mul.result3302
  %i.knd = icmp ult ptr %i.knc, %scevgep3307
  %i.kne = or i1 %i.knd, %mul.overflow3303
  %i.knf = getelementptr i8, ptr %scevgep3309, i64 %mul.result3302
  %i.kng = icmp ult ptr %i.knf, %scevgep3309
  %i.knh = getelementptr i8, ptr %scevgep3311, i64 %mul.result3302
  %i.kni = icmp ult ptr %i.knh, %scevgep3311
  %i.knj = getelementptr i8, ptr %scevgep3313, i64 %mul.result3302
  %i.knk = icmp ult ptr %i.knj, %scevgep3313
  %i.knl = getelementptr i8, ptr %scevgep3315, i64 %mul.result3302
  %i.knm = icmp ult ptr %i.knl, %scevgep3315
  %i.knn = or i1 %i.knb, %i.kmz
  %i.kno = or i1 %i.knn, %i.kne
  %i.knp = or i1 %i.kng, %i.kno
  %i.knq = or i1 %i.kni, %i.knp
  %i.knr = or i1 %i.knk, %i.knq
  %i.kns = or i1 %i.knm, %i.knr
  br i1 %i.kns, label %scalar.ph3339.preheader, label %vector.memcheck3316

vector.memcheck3316:                              ; preds = %vector.scevcheck3295
  %bound03328 = icmp ult ptr %scevgep3317.a, %scevgep3323.a
  %bound13329 = icmp ult ptr %scevgep3322, %scevgep3321.a
  %found.conflict3330 = and i1 %bound03328, %bound13329
  %bound03331.a = icmp ult ptr %scevgep3317.a, %scevgep3327
  %bound13332.a = icmp ult ptr %scevgep3325, %scevgep3321.a
  %found.conflict3333.a = and i1 %bound03331.a, %bound13332.a
  %conflict.rdx3334.a = or i1 %found.conflict3330, %found.conflict3333.a
  %bound03335 = icmp ult ptr %scevgep3322, %scevgep3327
  %bound13336 = icmp ult ptr %scevgep3325, %scevgep3323.a
  %found.conflict3337 = and i1 %bound03335, %bound13336
  %conflict.rdx3338 = or i1 %conflict.rdx3334.a, %found.conflict3337
  br i1 %conflict.rdx3338, label %scalar.ph3339.preheader, label %vector.ph3341

vector.ph3341:                                    ; preds = %vector.memcheck3316
  %i.knt = and i64 %i.kmo, 7                      ; 2 uses
  %i.knu = icmp eq i64 %i.knt, 0
  %i.knv = select i1 %i.knu, i64 8, i64 %i.knt
  %n.vec3342 = sub nsw i64 %i.kmo, %i.knv         ; 3 uses
  %i.knw = shl nsw i64 %n.vec3342, 1
  %i.knx = add nsw i64 %i.knw, %i.kmg
  %i.kny = add nsw i64 %i.kmh, %n.vec3342
  %broadcast.splatinsert3343 = insertelement <8 x i64> poison, i64 %i.kmg, i64 0
  %broadcast.splat3344 = shufflevector <8 x i64> %broadcast.splatinsert3343, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3345 = add nuw nsw <8 x i64> %broadcast.splat3344, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  br label %vector.body3346

vector.body3346:                                  ; preds = %vector.body3346, %vector.ph3341
  %index3347 = phi i64 [ 0, %vector.ph3341 ], [ %index.next3376, %vector.body3346 ] ; 2 uses
  %vec.ind3348 = phi <8 x i64> [ %induction3345, %vector.ph3341 ], [ %vec.ind.next3377, %vector.body3346 ] ; 2 uses
  %i.knz = add nuw i64 %i.kmh, %index3347         ; 2 uses
  %wide.gep3349 = getelementptr [4 x i8], ptr %i.jez, <8 x i64> %vec.ind3348 ; 9 uses
  %i.koa = extractelement <8 x ptr> %wide.gep3349, i64 0 ; 6 uses
  %wide.gep3350 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -1356
  %wide.masked.gather3351 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3350, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %wide.gep3352 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -452
  %wide.masked.gather3353 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3352, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kob = getelementptr inbounds nuw i8, ptr %i.koa, i64 452
  %wide.vec3354 = load <16 x float>, ptr %i.kob, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3355 = shufflevector <16 x float> %wide.vec3354, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.koc = getelementptr inbounds nuw i8, ptr %i.koa, i64 1356
  %wide.vec3356.a = load <16 x float>, ptr %i.koc, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3357.a = shufflevector <16 x float> %wide.vec3356.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3358 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -904
  %wide.masked.gather3359 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3358, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kod = getelementptr inbounds nuw i8, ptr %i.koa, i64 904
  %wide.vec3360 = load <16 x float>, ptr %i.kod, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3361 = shufflevector <16 x float> %wide.vec3360, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.koe = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3361, %wide.masked.gather3359
  %i.kof = fmul reassoc nsz arcp contract afn <8 x float> %i.koe, splat (float -3.000000e+00)
  %wide.masked.gather3362.a = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3349, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kog = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3362.a, splat (float 6.000000e+00)
  %i.koh = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3353, %strided.vec3355
  %i.koi = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3351, %i.koh
  %i.koj = fadd reassoc nsz arcp contract afn <8 x float> %i.koi, %strided.vec3357.a
  %i.kok = fadd reassoc nsz arcp contract afn <8 x float> %i.koj, %i.kof
  %i.kol = fadd reassoc nsz arcp contract afn <8 x float> %i.kok, %i.kog ; 2 uses
  %i.kom = fmul reassoc nsz arcp contract afn <8 x float> %i.kol, %i.kol
  %i.kon = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.knz
  store <8 x float> %i.kom, ptr %i.kon, align 4, !tbaa !12, !alias.scope !520, !noalias !521
  %wide.gep3363 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -1332
  %wide.masked.gather3364 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3363, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %wide.gep3365 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -444
  %wide.masked.gather3366 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3365, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.koo = getelementptr inbounds nuw i8, ptr %i.koa, i64 444
  %wide.vec3367 = load <16 x float>, ptr %i.koo, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3368 = shufflevector <16 x float> %wide.vec3367, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kop = getelementptr inbounds nuw i8, ptr %i.koa, i64 1332
  %wide.vec3369.a = load <16 x float>, ptr %i.kop, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3370.a = shufflevector <16 x float> %wide.vec3369.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.gep3371 = getelementptr i8, <8 x ptr> %wide.gep3349, i64 -888
  %wide.masked.gather3372 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3371, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.koq = getelementptr inbounds nuw i8, ptr %i.koa, i64 888
  %wide.vec3373 = load <16 x float>, ptr %i.koq, align 4, !tbaa !12, !alias.scope !519, !noalias !499
  %strided.vec3374 = shufflevector <16 x float> %wide.vec3373, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kor = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3374, %wide.masked.gather3372
  %i.kos = fmul reassoc nsz arcp contract afn <8 x float> %i.kor, splat (float -3.000000e+00)
  %wide.masked.gather3375 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep3349, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !519, !noalias !499
  %i.kot = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3375, splat (float 6.000000e+00)
  %i.kou = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3366, %strided.vec3368
  %i.kov = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather3364, %i.kou
  %i.kow = fadd reassoc nsz arcp contract afn <8 x float> %i.kov, %strided.vec3370.a
  %i.kox = fadd reassoc nsz arcp contract afn <8 x float> %i.kow, %i.kos
  %i.koy = fadd reassoc nsz arcp contract afn <8 x float> %i.kox, %i.kot ; 2 uses
  %i.koz = fmul reassoc nsz arcp contract afn <8 x float> %i.koy, %i.koy
  %i.kpa = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %i.knz
  store <8 x float> %i.koz, ptr %i.kpa, align 4, !tbaa !12, !alias.scope !522, !noalias !523
  %index.next3376 = add nuw i64 %index3347, 8     ; 2 uses
  %vec.ind.next3377 = add nuw nsw <8 x i64> %vec.ind3348, splat (i64 16)
  %i.kpb = icmp eq i64 %index.next3376, %n.vec3342
  br i1 %i.kpb, label %scalar.ph3339.preheader, label %vector.body3346, !llvm.loop !295

._crit_edge895.i:                                 ; preds = %scalar.ph3339
  %i.kpc = add nuw nsw i32 %.0767896.i, 1         ; 2 uses
  %i.kpd = icmp slt i32 %i.kpc, %i.jfu
  %indvars.iv.next1010.i = add i32 %indvars.iv1009.i, 112
  br i1 %i.kpd, label %.lr.ph894.i, label %.preheader829.i

scalar.ph3339:                                    ; preds = %scalar.ph3339.preheader, %scalar.ph3339
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %scalar.ph3339 ], [ %indvars.iv1013.i.ph, %scalar.ph3339.preheader ] ; 2 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %scalar.ph3339 ], [ %indvars.iv1011.i.ph, %scalar.ph3339.preheader ] ; 3 uses
  %i.kpe = getelementptr [4 x i8], ptr %i.jez, i64 %indvars.iv1013.i ; 14 uses
  %i.kpf = getelementptr i8, ptr %i.kpe, i64 -1356
  %i.kpg = load float, ptr %i.kpf, align 4, !tbaa !12, !noalias !499
  %i.kph = getelementptr i8, ptr %i.kpe, i64 -452
  %i.kpi = load float, ptr %i.kph, align 4, !tbaa !12, !noalias !499
  %i.kpj = getelementptr inbounds nuw i8, ptr %i.kpe, i64 452
  %i.kpk = load float, ptr %i.kpj, align 4, !tbaa !12, !noalias !499
  %i.kpl = getelementptr inbounds nuw i8, ptr %i.kpe, i64 1356
  %i.kpm = load float, ptr %i.kpl, align 4, !tbaa !12, !noalias !499
  %i.kpn = getelementptr i8, ptr %i.kpe, i64 -904
  %i.kpo = load float, ptr %i.kpn, align 4, !tbaa !12, !noalias !499
  %i.kpp = getelementptr inbounds nuw i8, ptr %i.kpe, i64 904
  %i.kpq = load float, ptr %i.kpp, align 4, !tbaa !12, !noalias !499
  %i.kpr = fadd reassoc nsz arcp contract afn float %i.kpq, %i.kpo
  %.neg806.i = fmul reassoc nsz arcp contract afn float %i.kpr, -3.000000e+00
  %i.kps = load float, ptr %i.kpe, align 4, !tbaa !12, !noalias !499
  %i.kpt = fmul reassoc nsz arcp contract afn float %i.kps, 6.000000e+00
  %i.kpu = fadd reassoc nsz arcp contract afn float %i.kpi, %i.kpk
  %.neg807.i = fsub reassoc nsz arcp contract afn float %i.kpg, %i.kpu
  %i.kpv = fadd reassoc nsz arcp contract afn float %.neg807.i, %i.kpm
  %i.kpw = fadd reassoc nsz arcp contract afn float %i.kpv, %.neg806.i
  %i.kpx = fadd reassoc nsz arcp contract afn float %i.kpw, %i.kpt ; 2 uses
  %i.kpy = fmul reassoc nsz arcp contract afn float %i.kpx, %i.kpx
  %i.kpz = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %indvars.iv1011.i
  store float %i.kpy, ptr %i.kpz, align 4, !tbaa !12, !noalias !499
  %i.kqa = getelementptr i8, ptr %i.kpe, i64 -1332
  %i.kqb = load float, ptr %i.kqa, align 4, !tbaa !12, !noalias !499
  %i.kqc = getelementptr i8, ptr %i.kpe, i64 -444
  %i.kqd = load float, ptr %i.kqc, align 4, !tbaa !12, !noalias !499
  %i.kqe = getelementptr inbounds nuw i8, ptr %i.kpe, i64 444
  %i.kqf = load float, ptr %i.kqe, align 4, !tbaa !12, !noalias !499
  %i.kqg = getelementptr inbounds nuw i8, ptr %i.kpe, i64 1332
  %i.kqh = load float, ptr %i.kqg, align 4, !tbaa !12, !noalias !499
  %i.kqi = getelementptr i8, ptr %i.kpe, i64 -888
  %i.kqj = load float, ptr %i.kqi, align 4, !tbaa !12, !noalias !499
  %i.kqk = getelementptr inbounds nuw i8, ptr %i.kpe, i64 888
  %i.kql = load float, ptr %i.kqk, align 4, !tbaa !12, !noalias !499
  %i.kqm = fadd reassoc nsz arcp contract afn float %i.kql, %i.kqj
  %.neg811.i = fmul reassoc nsz arcp contract afn float %i.kqm, -3.000000e+00
  %i.kqn = load float, ptr %i.kpe, align 4, !tbaa !12, !noalias !499
  %i.kqo = fmul reassoc nsz arcp contract afn float %i.kqn, 6.000000e+00
  %i.kqp = fadd reassoc nsz arcp contract afn float %i.kqd, %i.kqf
  %.neg812.i = fsub reassoc nsz arcp contract afn float %i.kqb, %i.kqp
  %i.kqq = fadd reassoc nsz arcp contract afn float %.neg812.i, %i.kqh
  %i.kqr = fadd reassoc nsz arcp contract afn float %i.kqq, %.neg811.i
  %i.kqs = fadd reassoc nsz arcp contract afn float %i.kqr, %i.kqo ; 2 uses
  %i.kqt = fmul reassoc nsz arcp contract afn float %i.kqs, %i.kqs
  %i.kqu = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %indvars.iv1011.i
  store float %i.kqt, ptr %i.kqu, align 4, !tbaa !12, !noalias !499
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 2
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %exitcond.not.i542 = icmp eq i64 %indvars.iv.next1012.i, %wide.trip.count.i
  br i1 %exitcond.not.i542, label %._crit_edge895.i, label %scalar.ph3339, !llvm.loop !296

bb.og:                                            ; preds = %._crit_edge904.i, %.lr.ph906.i
  %indvar3263 = phi i32 [ %indvar.next3264, %._crit_edge904.i ], [ 0, %.lr.ph906.i ] ; 2 uses
  %indvars.iv1029.i = phi i32 [ %indvars.iv.next1030.i, %._crit_edge904.i ], [ 452, %.lr.ph906.i ] ; 2 uses
  %.0763905.i = phi i32 [ %i.ktb, %._crit_edge904.i ], [ 4, %.lr.ph906.i ] ; 2 uses
  %i.kqv = phi <2 x i32> [ %i.ktd, %._crit_edge904.i ], [ <i32 563, i32 339>, %.lr.ph906.i ] ; 2 uses
  %i.kqw = mul i32 %indvar3263, 112
  %6 = add i32 %i.kqw, 448
  %i.kqx = zext i32 %6 to i64
  %i.kqy = shl nuw nsw i64 %i.kqx, 1
  %i.kqz = shl i32 %.0763905.i, 2
  %i.kra = and i32 %i.kqz, 28
  %i.krb = lshr i32 %.fr1063, %i.kra
  %i.krc = and i32 %i.krb, 1                      ; 3 uses
  %i.krd = or disjoint i32 %i.krc, 4              ; 4 uses
  %i.kre = icmp slt i32 %i.krd, %i.klq
  br i1 %i.kre, label %.lr.ph903.preheader.i, label %._crit_edge904.i

.lr.ph903.preheader.i:                            ; preds = %bb.og
  %i.krf = insertelement <2 x i32> poison, i32 %i.krc, i64 0
  %i.krg = shufflevector <2 x i32> %i.krf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.krh = add <2 x i32> %i.krg, %i.kqv
  %i.kri = lshr <2 x i32> %i.krh, splat (i32 1)
  %i.krj = zext nneg <2 x i32> %i.kri to <2 x i64> ; 3 uses
  %i.krk = lshr exact i32 %indvars.iv1029.i, 1
  %i.krl = zext nneg i32 %i.krk to i64            ; 4 uses
  %i.krm = sub i32 %i.klr, %i.krc                 ; 2 uses
  %i.krn = lshr i32 %i.krm, 1
  %narrow4566 = add nuw i32 %i.krn, 1
  %i.kro = zext i32 %narrow4566 to i64            ; 2 uses
  %min.iters.check3277 = icmp ult i32 %i.krm, 14
  %i.krp = extractelement <2 x i64> %i.krj, i64 0 ; 4 uses
  %i.krq = extractelement <2 x i64> %i.krj, i64 1 ; 4 uses
  br i1 %min.iters.check3277, label %.lr.ph903.i.preheader, label %vector.memcheck3262

vector.memcheck3262:                              ; preds = %.lr.ph903.preheader.i
  %i.krr = shl nuw nsw <2 x i64> %i.krj, splat (i64 2)
  %i.krs = shufflevector <2 x i64> %i.krr, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.krt = insertelement <4 x i64> poison, i64 %i.kqy, i64 0
  %i.kru = shufflevector <4 x i64> %i.krt, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.krv = add <4 x i64> %i.jfn, %i.kru
  %i.krw = add <4 x i64> %i.krs, %i.jfg
  %i.krx = sub <4 x i64> %i.krw, %i.krv
  %i.kry = icmp ugt <4 x i64> %i.krx, splat (i64 -32)
  %i.krz = bitcast <4 x i1> %i.kry to i4
  %.not = icmp eq i4 %i.krz, 0
  br i1 %.not, label %vector.ph3278, label %.lr.ph903.i.preheader

vector.ph3278:                                    ; preds = %vector.memcheck3262
  %n.vec3279 = and i64 %i.kro, 4294967288         ; 6 uses
  %i.ksa = add nuw nsw i64 %n.vec3279, %i.krl
  %i.ksb = add nuw nsw i64 %n.vec3279, %i.krq
  %i.ksc = add nuw nsw i64 %n.vec3279, %i.krp
  %i.ksd = trunc nuw i64 %n.vec3279 to i32
  %i.kse = shl i32 %i.ksd, 1
  %i.ksf = or disjoint i32 %i.krd, %i.kse
  br label %vector.body3280

vector.body3280:                                  ; preds = %vector.body3280, %vector.ph3278
  %index3281 = phi i64 [ 0, %vector.ph3278 ], [ %index.next3288, %vector.body3280 ] ; 4 uses
  %i.ksg = add nuw i64 %index3281, %i.krl         ; 3 uses
  %i.ksh = add nuw i64 %index3281, %i.krq         ; 2 uses
  %i.ksi = add nuw i64 %index3281, %i.krp         ; 2 uses
  %i.ksj = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.ksh
  %wide.load3282.a = load <8 x float>, ptr %i.ksj, align 4, !tbaa !12, !noalias !499
  %i.ksk = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.ksg
  %wide.load3283.a = load <8 x float>, ptr %i.ksk, align 8, !tbaa !12, !noalias !499
  %i.ksl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3283.a, %wide.load3282.a
  %i.ksm = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %i.ksi
  %i.ksn = getelementptr inbounds nuw i8, ptr %i.ksm, i64 4
  %wide.load3284 = load <8 x float>, ptr %i.ksn, align 4, !tbaa !12, !noalias !499
  %i.kso = fadd reassoc nsz arcp contract afn <8 x float> %i.ksl, %wide.load3284
  %i.ksp = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.kso, <8 x float> splat (float 1.000000e-10)) ; 2 uses
  %i.ksq = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %i.ksh
  %i.ksr = getelementptr inbounds nuw i8, ptr %i.ksq, i64 4
  %wide.load3285 = load <8 x float>, ptr %i.ksr, align 4, !tbaa !12, !noalias !499
  %i.kss = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %i.ksg
  %wide.load3286 = load <8 x float>, ptr %i.kss, align 8, !tbaa !12, !noalias !499
  %i.kst = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3286, %wide.load3285
  %i.ksu = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %i.ksi
  %wide.load3287 = load <8 x float>, ptr %i.ksu, align 4, !tbaa !12, !noalias !499
  %i.ksv = fadd reassoc nsz arcp contract afn <8 x float> %i.kst, %wide.load3287
  %i.ksw = call reassoc nsz arcp contract afn <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.ksv, <8 x float> splat (float 1.000000e-10))
  %i.ksx = fadd reassoc nsz arcp contract afn <8 x float> %i.ksw, %i.ksp
  %i.ksy = fdiv reassoc nsz arcp contract afn <8 x float> %i.ksp, %i.ksx
  %i.ksz = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.ksg
  store <8 x float> %i.ksy, ptr %i.ksz, align 8, !tbaa !12, !noalias !499
  %index.next3288 = add nuw i64 %index3281, 8     ; 2 uses
  %i.kta = icmp eq i64 %index.next3288, %n.vec3279
  br i1 %i.kta, label %middle.block3289, label %vector.body3280, !llvm.loop !297

middle.block3289:                                 ; preds = %vector.body3280
  %cmp.n3290 = icmp eq i64 %n.vec3279, %i.kro
  br i1 %cmp.n3290, label %._crit_edge904.i, label %.lr.ph903.i.preheader

.lr.ph903.i.preheader:                            ; preds = %vector.memcheck3262, %.lr.ph903.preheader.i, %middle.block3289
  %indvars.iv1031.i.ph = phi i64 [ %i.krl, %vector.memcheck3262 ], [ %i.krl, %.lr.ph903.preheader.i ], [ %i.ksa, %middle.block3289 ]
  %indvars.iv1027.i.ph = phi i64 [ %i.krq, %vector.memcheck3262 ], [ %i.krq, %.lr.ph903.preheader.i ], [ %i.ksb, %middle.block3289 ]
  %indvars.iv1023.i.ph = phi i64 [ %i.krp, %vector.memcheck3262 ], [ %i.krp, %.lr.ph903.preheader.i ], [ %i.ksc, %middle.block3289 ]
  %.0762898.i.ph = phi i32 [ %i.krd, %vector.memcheck3262 ], [ %i.krd, %.lr.ph903.preheader.i ], [ %i.ksf, %middle.block3289 ]
  br label %.lr.ph903.i

._crit_edge904.i:                                 ; preds = %.lr.ph903.i, %middle.block3289, %bb.og
  %i.ktb = add nuw nsw i32 %.0763905.i, 1         ; 2 uses
  %i.ktc = icmp slt i32 %i.ktb, %i.jfx
  %i.ktd = add <2 x i32> %i.kqv, splat (i32 112)
  %indvars.iv.next1030.i = add i32 %indvars.iv1029.i, 112
  %indvar.next3264 = add i32 %indvar3263, 1
  br i1 %i.ktc, label %bb.og, label %.preheader828.i.preheader

.preheader828.i.preheader:                        ; preds = %._crit_edge904.i
  %i.kte = add i32 %i.jhn, -9
  %i.ktf = add i32 %i.jhn, -9
  br label %.preheader828.i

.lr.ph903.i:                                      ; preds = %.lr.ph903.i.preheader, %.lr.ph903.i
  %indvars.iv1031.i = phi i64 [ %indvars.iv.next1032.i, %.lr.ph903.i ], [ %indvars.iv1031.i.ph, %.lr.ph903.i.preheader ] ; 4 uses
  %indvars.iv1027.i = phi i64 [ %indvars.iv.next1028.i, %.lr.ph903.i ], [ %indvars.iv1027.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %indvars.iv1023.i = phi i64 [ %indvars.iv.next1024.i, %.lr.ph903.i ], [ %indvars.iv1023.i.ph, %.lr.ph903.i.preheader ] ; 2 uses
  %.0762898.i = phi i32 [ %i.kub, %.lr.ph903.i ], [ %.0762898.i.ph, %.lr.ph903.i.preheader ]
  %i.ktg = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %indvars.iv1027.i
  %i.kth = load float, ptr %i.ktg, align 4, !tbaa !12, !noalias !499
  %i.kti = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %indvars.iv1031.i
  %i.ktj = load float, ptr %i.kti, align 4, !tbaa !12, !noalias !499
  %i.ktk = fadd reassoc nsz arcp contract afn float %i.ktj, %i.kth
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %i.ktl = getelementptr inbounds nuw [4 x i8], ptr %i.jfb, i64 %indvars.iv.next1024.i
  %i.ktm = load float, ptr %i.ktl, align 4, !tbaa !12, !noalias !499
  %i.ktn = fadd reassoc nsz arcp contract afn float %i.ktk, %i.ktm
  %i.kto = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ktn, float 1.000000e-10) ; 2 uses
  %indvars.iv.next1028.i = add nuw nsw i64 %indvars.iv1027.i, 1 ; 2 uses
  %i.ktp = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %indvars.iv.next1028.i
  %i.ktq = load float, ptr %i.ktp, align 4, !tbaa !12, !noalias !499
  %i.ktr = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %indvars.iv1031.i
  %i.kts = load float, ptr %i.ktr, align 4, !tbaa !12, !noalias !499
  %i.ktt = fadd reassoc nsz arcp contract afn float %i.kts, %i.ktq
  %i.ktu = getelementptr inbounds nuw [4 x i8], ptr %i.jfc, i64 %indvars.iv1023.i
  %i.ktv = load float, ptr %i.ktu, align 4, !tbaa !12, !noalias !499
  %i.ktw = fadd reassoc nsz arcp contract afn float %i.ktt, %i.ktv
  %i.ktx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ktw, float 1.000000e-10)
  %i.kty = fadd reassoc nsz arcp contract afn float %i.ktx, %i.kto
  %i.ktz = fdiv reassoc nsz arcp contract afn float %i.kto, %i.kty
  %i.kua = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv1031.i
  store float %i.ktz, ptr %i.kua, align 4, !tbaa !12, !noalias !499
  %i.kub = add nuw nsw i32 %.0762898.i, 2         ; 2 uses
  %indvars.iv.next1032.i = add nuw nsw i64 %indvars.iv1031.i, 1
  %i.kuc = icmp slt i32 %i.kub, %i.klq
  br i1 %i.kuc, label %.lr.ph903.i, label %._crit_edge904.i, !llvm.loop !298

.preheader828.i:                                  ; preds = %.preheader828.i.preheader, %._crit_edge914.i
  %indvar3052 = phi i32 [ 0, %.preheader828.i.preheader ], [ %indvar.next3053, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1041.i = phi i32 [ 452, %.preheader828.i.preheader ], [ %indvars.iv.next1042.i, %._crit_edge914.i ] ; 4 uses
  %indvars.iv1037.i = phi i32 [ 339, %.preheader828.i.preheader ], [ %indvars.iv.next1038.i, %._crit_edge914.i ] ; 2 uses
  %indvars.iv1033.i = phi i32 [ 563, %.preheader828.i.preheader ], [ %indvars.iv.next1034.i, %._crit_edge914.i ] ; 2 uses
  %.0755915.i = phi i32 [ 4, %.preheader828.i.preheader ], [ %i.lac, %._crit_edge914.i ] ; 2 uses
  %i.kud = mul i32 %indvar3052, 112
  %7 = add i32 %i.kud, 448
  %i.kue = zext i32 %7 to i64
  %i.kuf = shl nuw nsw i64 %i.kue, 1              ; 2 uses
  %scevgep3054.a = getelementptr i8, ptr %scevgep3051, i64 %i.kuf
  %i.kug = shl nuw i32 %.0755915.i, 1
  %i.kuh = and i32 %i.kug, 14                     ; 2 uses
  %i.kui = shl nuw nsw i32 %i.kuh, 1
  %i.kuj = lshr i32 %.fr1063, %i.kui
  %i.kuk = and i32 %i.kuj, 1                      ; 8 uses
  %i.kul = or disjoint i32 %i.kuk, 4              ; 4 uses
  %i.kum = icmp slt i32 %i.kul, %i.klq
  br i1 %i.kum, label %.lr.ph913.i, label %._crit_edge914.i

.lr.ph913.i:                                      ; preds = %.preheader828.i
  %i.kun = or disjoint i32 %i.kuk, %i.kuh
  %i.kuo = shl nuw nsw i32 %i.kun, 1
  %i.kup = lshr i32 %.fr1063, %i.kuo              ; 2 uses
  %i.kuq = and i32 %i.kup, 3
  %i.kur = sub nsw i32 2, %i.kuq
  %i.kus = sext i32 %i.kur to i64
  %i.kut = getelementptr inbounds [50176 x i8], ptr %i.jfh, i64 %i.kus ; 10 uses
  %i.kuu = add i32 %i.kuk, %indvars.iv1033.i
  %i.kuv = lshr i32 %i.kuu, 1
  %i.kuw = zext nneg i32 %i.kuv to i64            ; 5 uses
  %i.kux = add i32 %i.kuk, %indvars.iv1037.i
  %i.kuy = lshr i32 %i.kux, 1
  %i.kuz = zext nneg i32 %i.kuy to i64            ; 5 uses
  %i.kva = or disjoint i32 %i.kuk, %indvars.iv1041.i
  %i.kvb = lshr exact i32 %indvars.iv1041.i, 1
  %i.kvc = zext nneg i32 %i.kvb to i64            ; 4 uses
  %i.kvd = sext i32 %i.kva to i64                 ; 5 uses
  %i.kve = sub i32 %i.ktf, %i.kuk                 ; 2 uses
  %i.kvf = lshr i32 %i.kve, 1
  %narrow4567 = add nuw i32 %i.kvf, 1
  %i.kvg = zext i32 %narrow4567 to i64            ; 2 uses
  %min.iters.check3205 = icmp ult i32 %i.kve, 16
  br i1 %min.iters.check3205, label %scalar.ph3204.preheader, label %vector.memcheck3040

scalar.ph3204.preheader:                          ; preds = %vector.body3211, %vector.memcheck3040, %.lr.ph913.i
  %indvars.iv1045.i.ph = phi i64 [ %i.kvd, %vector.memcheck3040 ], [ %i.kvd, %.lr.ph913.i ], [ %i.kwe, %vector.body3211 ]
  %indvars.iv1043.i.ph = phi i64 [ %i.kvc, %vector.memcheck3040 ], [ %i.kvc, %.lr.ph913.i ], [ %i.kwf, %vector.body3211 ]
  %indvars.iv1039.i.ph = phi i64 [ %i.kuz, %vector.memcheck3040 ], [ %i.kuz, %.lr.ph913.i ], [ %i.kwg, %vector.body3211 ]
  %indvars.iv1035.i.ph = phi i64 [ %i.kuw, %vector.memcheck3040 ], [ %i.kuw, %.lr.ph913.i ], [ %i.kwh, %vector.body3211 ]
  %.0754907.i.ph = phi i32 [ %i.kul, %vector.memcheck3040 ], [ %i.kul, %.lr.ph913.i ], [ %i.kwk, %vector.body3211 ]
  br label %scalar.ph3204

vector.memcheck3040:                              ; preds = %.lr.ph913.i
  %i.kvh = or disjoint i32 %indvars.iv1041.i, %i.kuk
  %i.kvi = sext i32 %i.kvh to i64
  %i.kvj = shl nsw i64 %i.kvi, 2                  ; 12 uses
  %i.kvk = and i32 %i.kup, 3
  %narrow4568 = mul nuw nsw i32 %i.kvk, 50176
  %i.kvl = zext nneg i32 %narrow4568 to i64       ; 2 uses
  %i.kvm = sub nsw i64 %i.kvj, %i.kvl             ; 9 uses
  %scevgep3042 = getelementptr i8, ptr %scevgep3041, i64 %i.kvm ; 20 uses
  %i.kvn = sub i32 %i.kte, %i.kuk
  %i.kvo = lshr i32 %i.kvn, 1
  %i.kvp = zext nneg i32 %i.kvo to i64            ; 2 uses
  %i.kvq = shl nuw nsw i64 %i.kvp, 3              ; 2 uses
  %i.kvr = add nsw i64 %i.kvq, %i.kvj
  %i.kvs = sub nsw i64 %i.kvr, %i.kvl             ; 9 uses
  %scevgep3044 = getelementptr i8, ptr %scevgep3043, i64 %i.kvs ; 20 uses
  %i.kvt = shl nuw nsw i64 %i.kuw, 2              ; 2 uses
  %scevgep3045 = getelementptr i8, ptr %i.jex, i64 %i.kvt
  %i.kvu = shl nuw nsw i64 %i.kvp, 2              ; 3 uses
  %i.kvv = getelementptr i8, ptr %scevgep3046, i64 %i.kvu
  %scevgep3047 = getelementptr i8, ptr %i.kvv, i64 %i.kvt
  %i.kvw = shl nuw nsw i64 %i.kuz, 2              ; 2 uses
  %scevgep3048 = getelementptr i8, ptr %i.jex, i64 %i.kvw
  %i.kvx = getelementptr i8, ptr %scevgep3049, i64 %i.kvu
  %scevgep3050 = getelementptr i8, ptr %i.kvx, i64 %i.kvw
  %i.kvy = getelementptr i8, ptr %scevgep3055.a, i64 %i.kvu
  %scevgep3056.a = getelementptr i8, ptr %i.kvy, i64 %i.kuf
  %scevgep3058.a = getelementptr i8, ptr %scevgep3057.a, i64 %i.kvm
  %scevgep3060.a = getelementptr i8, ptr %scevgep3059.a, i64 %i.kvs
  %scevgep3062.a = getelementptr i8, ptr %scevgep3061.a, i64 %i.kvm
  %scevgep3064.a = getelementptr i8, ptr %scevgep3063.a, i64 %i.kvs
  %scevgep3066.a = getelementptr i8, ptr %scevgep3065.a, i64 %i.kvm
  %scevgep3068.a = getelementptr i8, ptr %scevgep3067.a, i64 %i.kvs
  %scevgep3070.a = getelementptr i8, ptr %scevgep3069.a, i64 %i.kvj
  %i.kvz = add nsw i64 %i.kvq, %i.kvj             ; 9 uses
  %scevgep3072.a = getelementptr i8, ptr %scevgep3071.a, i64 %i.kvz
  %scevgep3074.a = getelementptr i8, ptr %scevgep3073.a, i64 %i.kvj
  %scevgep3076.a = getelementptr i8, ptr %scevgep3075.a, i64 %i.kvz
  %scevgep3078.a = getelementptr i8, ptr %scevgep3077.a, i64 %i.kvm
  %scevgep3080.a = getelementptr i8, ptr %scevgep3079.a, i64 %i.kvs
  %scevgep3082.a = getelementptr i8, ptr %scevgep3081.a, i64 %i.kvm
  %scevgep3084.a = getelementptr i8, ptr %scevgep3083.a, i64 %i.kvs
  %scevgep3086.a = getelementptr i8, ptr %scevgep3085.a, i64 %i.kvm
  %scevgep3088.a = getelementptr i8, ptr %scevgep3087.a, i64 %i.kvs
  %scevgep3090.a = getelementptr i8, ptr %scevgep3089.a, i64 %i.kvj
  %scevgep3092.a = getelementptr i8, ptr %scevgep3091.a, i64 %i.kvz
  %scevgep3094.a = getelementptr i8, ptr %scevgep3093.a, i64 %i.kvm
  %scevgep3096.a = getelementptr i8, ptr %scevgep3095.a, i64 %i.kvs
  %scevgep3098.a = getelementptr i8, ptr %scevgep3097.a, i64 %i.kvj
  %scevgep3100.a = getelementptr i8, ptr %scevgep3099.a, i64 %i.kvz
  %scevgep3102.a = getelementptr i8, ptr %scevgep3101.a, i64 %i.kvm
  %scevgep3104.a = getelementptr i8, ptr %scevgep3103.a, i64 %i.kvs
  %scevgep3106.a = getelementptr i8, ptr %scevgep3105.a, i64 %i.kvj
  %scevgep3108.a = getelementptr i8, ptr %scevgep3107.a, i64 %i.kvz
  %scevgep3110.a = getelementptr i8, ptr %scevgep3109.a, i64 %i.kvj
  %scevgep3112.a = getelementptr i8, ptr %scevgep3111.a, i64 %i.kvz
  %scevgep3114.a = getelementptr i8, ptr %scevgep3113.a, i64 %i.kvj
  %scevgep3116.a = getelementptr i8, ptr %scevgep3115.a, i64 %i.kvz
  %scevgep3118.a = getelementptr i8, ptr %scevgep3117.a, i64 %i.kvj
  %scevgep3120.a = getelementptr i8, ptr %scevgep3119.a, i64 %i.kvz
  %scevgep3122.a = getelementptr i8, ptr %scevgep3121.a, i64 %i.kvj
  %scevgep3124 = getelementptr i8, ptr %scevgep3123, i64 %i.kvz
  %bound03125 = icmp ult ptr %scevgep3042, %scevgep3047
  %bound13126 = icmp ult ptr %scevgep3045, %scevgep3044
  %found.conflict3127 = and i1 %bound03125, %bound13126
  %bound03128 = icmp ult ptr %scevgep3042, %scevgep3050
  %bound13129 = icmp ult ptr %scevgep3048, %scevgep3044
  %found.conflict3130 = and i1 %bound03128, %bound13129
  %conflict.rdx3131 = or i1 %found.conflict3127, %found.conflict3130
  %bound03132 = icmp ult ptr %scevgep3042, %scevgep3056.a
  %bound13133 = icmp ult ptr %scevgep3054.a, %scevgep3044
  %found.conflict3134 = and i1 %bound03132, %bound13133
  %conflict.rdx3135 = or i1 %conflict.rdx3131, %found.conflict3134
  %bound03136 = icmp ult ptr %scevgep3042, %scevgep3060.a
  %bound13137 = icmp ult ptr %scevgep3058.a, %scevgep3044
  %found.conflict3138 = and i1 %bound03136, %bound13137
  %conflict.rdx3139 = or i1 %conflict.rdx3135, %found.conflict3138
  %bound03140 = icmp ult ptr %scevgep3042, %scevgep3064.a
  %bound13141 = icmp ult ptr %scevgep3062.a, %scevgep3044
  %found.conflict3142 = and i1 %bound03140, %bound13141
  %conflict.rdx3143 = or i1 %conflict.rdx3139, %found.conflict3142
  %bound03144 = icmp ult ptr %scevgep3042, %scevgep3068.a
  %bound13145 = icmp ult ptr %scevgep3066.a, %scevgep3044
  %found.conflict3146 = and i1 %bound03144, %bound13145
  %conflict.rdx3147 = or i1 %conflict.rdx3143, %found.conflict3146
  %bound03148 = icmp ult ptr %scevgep3042, %scevgep3072.a
  %bound13149 = icmp ult ptr %scevgep3070.a, %scevgep3044
  %found.conflict3150 = and i1 %bound03148, %bound13149
  %conflict.rdx3151 = or i1 %conflict.rdx3147, %found.conflict3150
  %bound03152 = icmp ult ptr %scevgep3042, %scevgep3076.a
  %bound13153 = icmp ult ptr %scevgep3074.a, %scevgep3044
  %found.conflict3154 = and i1 %bound03152, %bound13153
  %conflict.rdx3155 = or i1 %conflict.rdx3151, %found.conflict3154
  %bound03156 = icmp ult ptr %scevgep3042, %scevgep3080.a
  %bound13157 = icmp ult ptr %scevgep3078.a, %scevgep3044
  %found.conflict3158 = and i1 %bound03156, %bound13157
  %conflict.rdx3159 = or i1 %conflict.rdx3155, %found.conflict3158
  %bound03160 = icmp ult ptr %scevgep3042, %scevgep3084.a
  %bound13161 = icmp ult ptr %scevgep3082.a, %scevgep3044
  %found.conflict3162 = and i1 %bound03160, %bound13161
  %conflict.rdx3163 = or i1 %conflict.rdx3159, %found.conflict3162
  %bound03164 = icmp ult ptr %scevgep3042, %scevgep3088.a
  %bound13165 = icmp ult ptr %scevgep3086.a, %scevgep3044
  %found.conflict3166 = and i1 %bound03164, %bound13165
  %conflict.rdx3167 = or i1 %conflict.rdx3163, %found.conflict3166
  %bound03168 = icmp ult ptr %scevgep3042, %scevgep3092.a
  %bound13169 = icmp ult ptr %scevgep3090.a, %scevgep3044
  %found.conflict3170 = and i1 %bound03168, %bound13169
  %conflict.rdx3171 = or i1 %conflict.rdx3167, %found.conflict3170
  %bound03172 = icmp ult ptr %scevgep3042, %scevgep3096.a
  %bound13173 = icmp ult ptr %scevgep3094.a, %scevgep3044
  %found.conflict3174 = and i1 %bound03172, %bound13173
  %conflict.rdx3175 = or i1 %conflict.rdx3171, %found.conflict3174
  %bound03176 = icmp ult ptr %scevgep3042, %scevgep3100.a
  %bound13177 = icmp ult ptr %scevgep3098.a, %scevgep3044
  %found.conflict3178 = and i1 %bound03176, %bound13177
  %conflict.rdx3179 = or i1 %conflict.rdx3175, %found.conflict3178
  %bound03180 = icmp ult ptr %scevgep3042, %scevgep3104.a
  %bound13181 = icmp ult ptr %scevgep3102.a, %scevgep3044
  %found.conflict3182 = and i1 %bound03180, %bound13181
  %conflict.rdx3183 = or i1 %conflict.rdx3179, %found.conflict3182
  %bound03184 = icmp ult ptr %scevgep3042, %scevgep3108.a
  %bound13185 = icmp ult ptr %scevgep3106.a, %scevgep3044
  %found.conflict3186 = and i1 %bound03184, %bound13185
  %conflict.rdx3187 = or i1 %conflict.rdx3183, %found.conflict3186
  %bound03188 = icmp ult ptr %scevgep3042, %scevgep3112.a
  %bound13189 = icmp ult ptr %scevgep3110.a, %scevgep3044
  %found.conflict3190 = and i1 %bound03188, %bound13189
  %conflict.rdx3191 = or i1 %conflict.rdx3187, %found.conflict3190
  %bound03192 = icmp ult ptr %scevgep3042, %scevgep3116.a
  %bound13193 = icmp ult ptr %scevgep3114.a, %scevgep3044
  %found.conflict3194 = and i1 %bound03192, %bound13193
  %conflict.rdx3195 = or i1 %conflict.rdx3191, %found.conflict3194
  %bound03196 = icmp ult ptr %scevgep3042, %scevgep3120.a
  %bound13197 = icmp ult ptr %scevgep3118.a, %scevgep3044
  %found.conflict3198 = and i1 %bound03196, %bound13197
  %conflict.rdx3199 = or i1 %conflict.rdx3195, %found.conflict3198
  %bound03200 = icmp ult ptr %scevgep3042, %scevgep3124
  %bound13201 = icmp ult ptr %scevgep3122.a, %scevgep3044
  %found.conflict3202 = and i1 %bound03200, %bound13201
  %conflict.rdx3203 = or i1 %conflict.rdx3199, %found.conflict3202
  br i1 %conflict.rdx3203, label %scalar.ph3204.preheader, label %vector.ph3206

vector.ph3206:                                    ; preds = %vector.memcheck3040
  %i.kwa = and i64 %i.kvg, 7                      ; 2 uses
  %i.kwb = icmp eq i64 %i.kwa, 0
  %i.kwc = select i1 %i.kwb, i64 8, i64 %i.kwa
  %n.vec3207 = sub nsw i64 %i.kvg, %i.kwc         ; 6 uses
  %i.kwd = shl nsw i64 %n.vec3207, 1
  %i.kwe = add nsw i64 %i.kwd, %i.kvd
  %i.kwf = add nsw i64 %n.vec3207, %i.kvc
  %i.kwg = add nsw i64 %n.vec3207, %i.kuz
  %i.kwh = add nsw i64 %n.vec3207, %i.kuw
  %i.kwi = trunc i64 %n.vec3207 to i32
  %i.kwj = shl i32 %i.kwi, 1
  %i.kwk = add i32 %i.kul, %i.kwj
  %broadcast.splatinsert3208 = insertelement <8 x i64> poison, i64 %i.kvd, i64 0
  %broadcast.splat3209 = shufflevector <8 x i64> %broadcast.splatinsert3208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction3210 = add nuw nsw <8 x i64> %broadcast.splat3209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4875 = getelementptr [4 x i8], ptr %i.jex, i64 %i.kvc
  br label %vector.body3211

vector.body3211:                                  ; preds = %vector.body3211, %vector.ph3206
  %index3212 = phi i64 [ 0, %vector.ph3206 ], [ %index.next3254, %vector.body3211 ] ; 5 uses
  %vec.ind3213 = phi <8 x i64> [ %induction3210, %vector.ph3206 ], [ %vec.ind.next3255, %vector.body3211 ] ; 2 uses
  %i.kwl = shl nuw i64 %index3212, 1
  %i.kwm = add nuw i64 %i.kwl, %i.kvd             ; 5 uses
  %i.kwn = add nuw i64 %index3212, %i.kuz         ; 2 uses
  %i.kwo = add nuw i64 %index3212, %i.kuw         ; 2 uses
  %gep4876 = getelementptr [4 x i8], ptr %invariant.gep4875, i64 %index3212
  %wide.load3214.a = load <8 x float>, ptr %gep4876, align 8, !tbaa !12, !alias.scope !524, !noalias !499 ; 2 uses
  %i.kwp = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.kwn
  %wide.load3215.a = load <8 x float>, ptr %i.kwp, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kwq = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.kwn
  %i.kwr = getelementptr inbounds nuw i8, ptr %i.kwq, i64 4
  %wide.load3216.a = load <8 x float>, ptr %i.kwr, align 4, !tbaa !12, !alias.scope !525, !noalias !499
  %i.kws = fadd reassoc nsz arcp contract afn <8 x float> %wide.load3216.a, %wide.load3215.a
  %i.kwt = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.kwo
  %wide.load3217 = load <8 x float>, ptr %i.kwt, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwu = fadd reassoc nsz arcp contract afn <8 x float> %i.kws, %wide.load3217
  %i.kwv = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %i.kwo
  %i.kww = getelementptr inbounds nuw i8, ptr %i.kwv, i64 4
  %wide.load3218 = load <8 x float>, ptr %i.kww, align 4, !tbaa !12, !alias.scope !526, !noalias !499
  %i.kwx = fadd reassoc nsz arcp contract afn <8 x float> %i.kwu, %wide.load3218
  %i.kwy = fmul reassoc nsz arcp contract afn <8 x float> %i.kwx, splat (float 2.500000e-01) ; 2 uses
  %i.kwz = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %wide.load3214.a
  %i.kxa = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kwz)
  %i.kxb = fsub reassoc nsz arcp contract afn <8 x float> splat (float 5.000000e-01), %i.kwy
  %i.kxc = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxb)
  %i.kxd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.kxa, %i.kxc
  %i.kxe = select reassoc nsz arcp contract afn <8 x i1> %i.kxd, <8 x float> %i.kwy, <8 x float> %wide.load3214.a ; 3 uses
  %i.kxf = add nsw i64 %i.kwm, -113               ; 2 uses
  %i.kxg = getelementptr inbounds [4 x i8], ptr %i.kut, i64 %i.kxf
  %wide.vec3219.a = load <16 x float>, ptr %i.kxg, align 4, !tbaa !12, !alias.scope !527, !noalias !499
  %strided.vec3220.a = shufflevector <16 x float> %wide.vec3219.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxh = add nuw nsw i64 %i.kwm, 113            ; 2 uses
  %i.kxi = getelementptr inbounds nuw [4 x i8], ptr %i.kut, i64 %i.kxh
  %wide.vec3221 = load <16 x float>, ptr %i.kxi, align 4, !tbaa !12, !alias.scope !528, !noalias !499
  %strided.vec3222 = shufflevector <16 x float> %wide.vec3221, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxj = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220.a, %strided.vec3222
  %i.kxk = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxj)
  %i.kxl = fadd reassoc nsz arcp contract afn <8 x float> %i.kxk, splat (float f0x3727C5AC) ; 2 uses
  %wide.gep3223 = getelementptr [4 x i8], ptr %i.kut, <8 x i64> %vec.ind3213 ; 2 uses
  %i.kxm = extractelement <8 x ptr> %wide.gep3223, i64 0 ; 4 uses
  %i.kxn = getelementptr i8, ptr %i.kxm, i64 -1356
  %wide.vec3224.a = load <16 x float>, ptr %i.kxn, align 4, !tbaa !12, !alias.scope !529, !noalias !499
  %strided.vec3225.a = shufflevector <16 x float> %wide.vec3224.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxo = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220.a, %strided.vec3225.a
  %i.kxp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxo)
  %i.kxq = fadd reassoc nsz arcp contract afn <8 x float> %i.kxl, %i.kxp
  %i.kxr = getelementptr inbounds nuw [4 x i8], ptr %i.jfj, i64 %i.kwm ; 5 uses
  %wide.vec3226.a = load <16 x float>, ptr %i.kxr, align 4, !tbaa !12, !alias.scope !530, !noalias !499
  %strided.vec3227.a = shufflevector <16 x float> %wide.vec3226.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 5 uses
  %i.kxs = getelementptr i8, ptr %i.kxr, i64 -904
  %wide.vec3228.a = load <16 x float>, ptr %i.kxs, align 4, !tbaa !12, !alias.scope !531, !noalias !499
  %strided.vec3229.a = shufflevector <16 x float> %wide.vec3228.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kxt = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3229.a
  %i.kxu = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kxt)
  %i.kxv = fadd reassoc nsz arcp contract afn <8 x float> %i.kxq, %i.kxu ; 2 uses
  %i.kxw = add nsw i64 %i.kwm, -111               ; 2 uses
  %i.kxx = getelementptr inbounds [4 x i8], ptr %i.kut, i64 %i.kxw
  %wide.vec3230.a = load <16 x float>, ptr %i.kxx, align 4, !tbaa !12, !alias.scope !532, !noalias !499
  %strided.vec3231.a = shufflevector <16 x float> %wide.vec3230.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kxy = add nuw nsw i64 %i.kwm, 111            ; 2 uses
  %i.kxz = getelementptr inbounds nuw [4 x i8], ptr %i.kut, i64 %i.kxy
  %wide.vec3232.a = load <16 x float>, ptr %i.kxz, align 4, !tbaa !12, !alias.scope !533, !noalias !499
  %strided.vec3233.a = shufflevector <16 x float> %wide.vec3232.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 3 uses
  %i.kya = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231.a, %strided.vec3233.a
  %i.kyb = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kya)
  %i.kyc = fadd reassoc nsz arcp contract afn <8 x float> %i.kyb, splat (float f0x3727C5AC) ; 2 uses
  %i.kyd = getelementptr i8, ptr %i.kxm, i64 -1332
  %wide.vec3234.a = load <16 x float>, ptr %i.kyd, align 4, !tbaa !12, !alias.scope !534, !noalias !499
  %strided.vec3235.a = shufflevector <16 x float> %wide.vec3234.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kye = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231.a, %strided.vec3235.a
  %i.kyf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kye)
  %i.kyg = fadd reassoc nsz arcp contract afn <8 x float> %i.kyc, %i.kyf
  %i.kyh = getelementptr i8, ptr %i.kxr, i64 -888
  %wide.vec3236.a = load <16 x float>, ptr %i.kyh, align 4, !tbaa !12, !alias.scope !535, !noalias !499
  %strided.vec3237.a = shufflevector <16 x float> %wide.vec3236.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3237.a
  %i.kyj = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyi)
  %i.kyk = fadd reassoc nsz arcp contract afn <8 x float> %i.kyg, %i.kyj ; 2 uses
  %i.kyl = getelementptr inbounds nuw i8, ptr %i.kxm, i64 1332
  %wide.vec3238.a = load <16 x float>, ptr %i.kyl, align 4, !tbaa !12, !alias.scope !536, !noalias !499
  %strided.vec3239.a = shufflevector <16 x float> %wide.vec3238.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kym = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233.a, %strided.vec3239.a
  %i.kyn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kym)
  %i.kyo = fadd reassoc nsz arcp contract afn <8 x float> %i.kyn, %i.kyc
  %i.kyp = getelementptr inbounds nuw i8, ptr %i.kxr, i64 888
  %wide.vec3240.a = load <16 x float>, ptr %i.kyp, align 4, !tbaa !12, !alias.scope !537, !noalias !499
  %strided.vec3241.a = shufflevector <16 x float> %wide.vec3240.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyq = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3241.a
  %i.kyr = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyq)
  %i.kys = fadd reassoc nsz arcp contract afn <8 x float> %i.kyo, %i.kyr ; 2 uses
  %i.kyt = getelementptr inbounds nuw i8, ptr %i.kxm, i64 1356
  %wide.vec3242.a = load <16 x float>, ptr %i.kyt, align 4, !tbaa !12, !alias.scope !538, !noalias !499
  %strided.vec3243.a = shufflevector <16 x float> %wide.vec3242.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyu = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3243.a
  %i.kyv = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyu)
  %i.kyw = fadd reassoc nsz arcp contract afn <8 x float> %i.kyv, %i.kxl
  %i.kyx = getelementptr inbounds nuw i8, ptr %i.kxr, i64 904
  %wide.vec3244.a = load <16 x float>, ptr %i.kyx, align 4, !tbaa !12, !alias.scope !539, !noalias !499
  %strided.vec3245.a = shufflevector <16 x float> %wide.vec3244.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kyy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3227.a, %strided.vec3245.a
  %i.kyz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.kyy)
  %i.kza = fadd reassoc nsz arcp contract afn <8 x float> %i.kyw, %i.kyz ; 2 uses
  %i.kzb = getelementptr inbounds [4 x i8], ptr %i.jfj, i64 %i.kxf
  %wide.vec3246.a = load <16 x float>, ptr %i.kzb, align 4, !tbaa !12, !alias.scope !540, !noalias !499
  %strided.vec3247.a = shufflevector <16 x float> %wide.vec3246.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzc = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3220.a, %strided.vec3247.a
  %i.kzd = getelementptr inbounds [4 x i8], ptr %i.jfj, i64 %i.kxw
  %wide.vec3248.a = load <16 x float>, ptr %i.kzd, align 4, !tbaa !12, !alias.scope !541, !noalias !499
  %strided.vec3249.a = shufflevector <16 x float> %wide.vec3248.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kze = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3231.a, %strided.vec3249.a
  %i.kzf = getelementptr inbounds nuw [4 x i8], ptr %i.jfj, i64 %i.kxy
  %wide.vec3250.a = load <16 x float>, ptr %i.kzf, align 4, !tbaa !12, !alias.scope !542, !noalias !499
  %strided.vec3251.a = shufflevector <16 x float> %wide.vec3250.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzg = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3233.a, %strided.vec3251.a
  %i.kzh = getelementptr inbounds nuw [4 x i8], ptr %i.jfj, i64 %i.kxh
  %wide.vec3252 = load <16 x float>, ptr %i.kzh, align 4, !tbaa !12, !alias.scope !543, !noalias !499
  %strided.vec3253 = shufflevector <16 x float> %wide.vec3252, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.kzi = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec3222, %strided.vec3253
  %i.kzj = fmul reassoc nsz arcp contract afn <8 x float> %i.kzi, %i.kxv
  %i.kzk = fmul reassoc nsz arcp contract afn <8 x float> %i.kza, %i.kzc
  %i.kzl = fadd reassoc nsz arcp contract afn <8 x float> %i.kzj, %i.kzk
  %i.kzm = fadd reassoc nsz arcp contract afn <8 x float> %i.kza, %i.kxv
  %i.kzn = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzl, %i.kzm ; 2 uses
  %i.kzo = fmul reassoc nsz arcp contract afn <8 x float> %i.kzg, %i.kyk
  %i.kzp = fmul reassoc nsz arcp contract afn <8 x float> %i.kze, %i.kys
  %i.kzq = fadd reassoc nsz arcp contract afn <8 x float> %i.kzo, %i.kzp
  %i.kzr = fadd reassoc nsz arcp contract afn <8 x float> %i.kys, %i.kyk
  %i.kzs = fdiv reassoc nsz arcp contract afn <8 x float> %i.kzq, %i.kzr
  %i.kzt = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.kxe, zeroinitializer
  %i.kzu = fcmp reassoc nsz arcp contract afn ole <8 x float> %i.kxe, splat (float 1.000000e+00)
  %i.kzv = select reassoc nsz arcp contract afn <8 x i1> %i.kzu, <8 x float> %i.kxe, <8 x float> splat (float 1.000000e+00)
  %i.kzw = select reassoc nsz arcp contract afn <8 x i1> %i.kzt, <8 x float> %i.kzv, <8 x float> zeroinitializer
  %i.kzx = fsub reassoc nsz arcp contract afn <8 x float> %i.kzs, %i.kzn
  %i.kzy = fmul reassoc nsz arcp contract afn <8 x float> %i.kzx, %i.kzw
  %i.kzz = fadd reassoc nsz arcp contract afn <8 x float> %i.kzn, %i.kzy
  %i.laa = fadd reassoc nsz arcp contract afn <8 x float> %i.kzz, %strided.vec3227.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.laa, <8 x ptr> align 4 %wide.gep3223, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !544, !noalias !545
  %index.next3254 = add nuw i64 %index3212, 8     ; 2 uses
  %vec.ind.next3255 = add nuw nsw <8 x i64> %vec.ind3213, splat (i64 16)
  %i.lab = icmp eq i64 %index.next3254, %n.vec3207
  br i1 %i.lab, label %scalar.ph3204.preheader, label %vector.body3211, !llvm.loop !321

._crit_edge914.i:                                 ; preds = %scalar.ph3204, %.preheader828.i
  %i.lac = add nuw nsw i32 %.0755915.i, 1         ; 2 uses
  %i.lad = icmp slt i32 %i.lac, %i.jfx
  %indvars.iv.next1034.i = add i32 %indvars.iv1033.i, 112
  %indvars.iv.next1038.i = add i32 %indvars.iv1037.i, 112
  %indvars.iv.next1042.i = add i32 %indvars.iv1041.i, 112
  %indvar.next3053 = add i32 %indvar3052, 1
  br i1 %i.lad, label %.preheader828.i, label %.preheader.i541.preheader

.preheader.i541.preheader:                        ; preds = %._crit_edge914.i
  %i.lae = add i32 %i.jhn, -9
  %i.laf = add i32 %i.jhn, -9
  br label %.preheader.i541

scalar.ph3204:                                    ; preds = %scalar.ph3204.preheader, %scalar.ph3204
  %indvars.iv1045.i = phi i64 [ %indvars.iv.next1046.i, %scalar.ph3204 ], [ %indvars.iv1045.i.ph, %scalar.ph3204.preheader ] ; 7 uses
  %indvars.iv1043.i = phi i64 [ %indvars.iv.next1044.i, %scalar.ph3204 ], [ %indvars.iv1043.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1039.i = phi i64 [ %indvars.iv.next1040.i, %scalar.ph3204 ], [ %indvars.iv1039.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %indvars.iv1035.i = phi i64 [ %indvars.iv.next1036.i, %scalar.ph3204 ], [ %indvars.iv1035.i.ph, %scalar.ph3204.preheader ] ; 2 uses
  %.0754907.i = phi i32 [ %i.lei, %scalar.ph3204 ], [ %.0754907.i.ph, %scalar.ph3204.preheader ]
  %i.lag = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv1043.i
  %i.lah = load float, ptr %i.lag, align 4, !tbaa !12, !noalias !499 ; 2 uses
  %i.lai = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv1039.i
  %indvars.iv.next1040.i = add nuw nsw i64 %indvars.iv1039.i, 1
  %i.laj = getelementptr inbounds nuw [4 x i8], ptr %i.jex, i64 %indvars.iv1035.i
  %indvars.iv.next1036.i = add nuw nsw i64 %indvars.iv1035.i, 1
  %i.lak = load <2 x float>, ptr %i.lai, align 4, !tbaa !12, !noalias !499
  %i.lal = load <2 x float>, ptr %i.laj, align 4, !tbaa !12, !noalias !499
  %i.lam = shufflevector <2 x float> %i.lal, <2 x float> %i.lak, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lan = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.lam)
  %i.lao = fmul reassoc nsz arcp contract afn float %i.lan, 2.500000e-01 ; 2 uses
  %i.lap = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lah
  %i.laq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lap)
  %i.lar = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.lao
  %i.las = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lar)
  %i.lat = fcmp reassoc nsz arcp contract afn olt float %i.laq, %i.las
  %i.lau = select reassoc nsz arcp contract afn i1 %i.lat, float %i.lao, float %i.lah ; 3 uses
  %i.lav = add nsw i64 %indvars.iv1045.i, -113    ; 2 uses
  %i.law = getelementptr inbounds [4 x i8], ptr %i.kut, i64 %i.lav
  %i.lax = load float, ptr %i.law, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lay = add nuw nsw i64 %indvars.iv1045.i, 113 ; 2 uses
  %i.laz = getelementptr inbounds nuw [4 x i8], ptr %i.kut, i64 %i.lay
  %i.lba = load float, ptr %i.laz, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbb = fsub reassoc nsz arcp contract afn float %i.lax, %i.lba
  %i.lbc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbb)
  %i.lbd = fadd reassoc nsz arcp contract afn float %i.lbc, f0x3727C5AC ; 2 uses
  %i.lbe = getelementptr [4 x i8], ptr %i.kut, i64 %indvars.iv1045.i ; 5 uses
  %i.lbf = getelementptr i8, ptr %i.lbe, i64 -1356
  %i.lbg = load float, ptr %i.lbf, align 4, !tbaa !12, !noalias !499
  %i.lbh = fsub reassoc nsz arcp contract afn float %i.lax, %i.lbg
  %i.lbi = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbh)
  %i.lbj = fadd reassoc nsz arcp contract afn float %i.lbd, %i.lbi
  %i.lbk = getelementptr inbounds nuw [4 x i8], ptr %i.jfj, i64 %indvars.iv1045.i ; 5 uses
  %i.lbl = load float, ptr %i.lbk, align 4, !tbaa !12, !noalias !499 ; 5 uses
  %i.lbm = getelementptr i8, ptr %i.lbk, i64 -904
  %i.lbn = load float, ptr %i.lbm, align 4, !tbaa !12, !noalias !499
  %i.lbo = fsub reassoc nsz arcp contract afn float %i.lbl, %i.lbn
  %i.lbp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbo)
  %i.lbq = fadd reassoc nsz arcp contract afn float %i.lbj, %i.lbp ; 2 uses
  %i.lbr = add nsw i64 %indvars.iv1045.i, -111    ; 2 uses
  %i.lbs = getelementptr inbounds [4 x i8], ptr %i.kut, i64 %i.lbr
  %i.lbt = load float, ptr %i.lbs, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbu = add nuw nsw i64 %indvars.iv1045.i, 111 ; 2 uses
  %i.lbv = getelementptr inbounds nuw [4 x i8], ptr %i.kut, i64 %i.lbu
  %i.lbw = load float, ptr %i.lbv, align 4, !tbaa !12, !noalias !499 ; 3 uses
  %i.lbx = fsub reassoc nsz arcp contract afn float %i.lbt, %i.lbw
  %i.lby = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lbx)
  %i.lbz = fadd reassoc nsz arcp contract afn float %i.lby, f0x3727C5AC ; 2 uses
  %i.lca = getelementptr i8, ptr %i.lbe, i64 -1332
  %i.lcb = load float, ptr %i.lca, align 4, !tbaa !12, !noalias !499
  %i.lcc = fsub reassoc nsz arcp contract afn float %i.lbt, %i.lcb
  %i.lcd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcc)
  %i.lce = fadd reassoc nsz arcp contract afn float %i.lbz, %i.lcd
  %i.lcf = getelementptr i8, ptr %i.lbk, i64 -888
  %i.lcg = load float, ptr %i.lcf, align 4, !tbaa !12, !noalias !499
  %i.lch = fsub reassoc nsz arcp contract afn float %i.lbl, %i.lcg
  %i.lci = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lch)
  %i.lcj = fadd reassoc nsz arcp contract afn float %i.lce, %i.lci ; 2 uses
  %i.lck = getelementptr inbounds nuw i8, ptr %i.lbe, i64 1332
  %i.lcl = load float, ptr %i.lck, align 4, !tbaa !12, !noalias !499
  %i.lcm = fsub reassoc nsz arcp contract afn float %i.lbw, %i.lcl
  %i.lcn = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcm)
  %i.lco = fadd reassoc nsz arcp contract afn float %i.lcn, %i.lbz
  %i.lcp = getelementptr inbounds nuw i8, ptr %i.lbk, i64 888
  %i.lcq = load float, ptr %i.lcp, align 4, !tbaa !12, !noalias !499
  %i.lcr = fsub reassoc nsz arcp contract afn float %i.lbl, %i.lcq
  %i.lcs = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcr)
  %i.lct = fadd reassoc nsz arcp contract afn float %i.lco, %i.lcs ; 2 uses
  %i.lcu = getelementptr inbounds nuw i8, ptr %i.lbe, i64 1356
  %i.lcv = load float, ptr %i.lcu, align 4, !tbaa !12, !noalias !499
  %i.lcw = fsub reassoc nsz arcp contract afn float %i.lba, %i.lcv
  %i.lcx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lcw)
  %i.lcy = fadd reassoc nsz arcp contract afn float %i.lcx, %i.lbd
  %i.lcz = getelementptr inbounds nuw i8, ptr %i.lbk, i64 904
  %i.lda = load float, ptr %i.lcz, align 4, !tbaa !12, !noalias !499
  %i.ldb = fsub reassoc nsz arcp contract afn float %i.lbl, %i.lda
  %i.ldc = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ldb)
  %i.ldd = fadd reassoc nsz arcp contract afn float %i.lcy, %i.ldc ; 2 uses
  %i.lde = getelementptr inbounds [4 x i8], ptr %i.jfj, i64 %i.lav
  %i.ldf = load float, ptr %i.lde, align 4, !tbaa !12, !noalias !499
  %i.ldg = fsub reassoc nsz arcp contract afn float %i.lax, %i.ldf
  %i.ldh = getelementptr inbounds [4 x i8], ptr %i.jfj, i64 %i.lbr
  %i.ldi = load float, ptr %i.ldh, align 4, !tbaa !12, !noalias !499
  %i.ldj = fsub reassoc nsz arcp contract afn float %i.lbt, %i.ldi
  %i.ldk = getelementptr inbounds nuw [4 x i8], ptr %i.jfj, i64 %i.lbu
  %i.ldl = load float, ptr %i.ldk, align 4, !tbaa !12, !noalias !499
  %i.ldm = fsub reassoc nsz arcp contract afn float %i.lbw, %i.ldl
  %i.ldn = getelementptr inbounds nuw [4 x i8], ptr %i.jfj, i64 %i.lay
  %i.ldo = load float, ptr %i.ldn, align 4, !tbaa !12, !noalias !499
  %i.ldp = fsub reassoc nsz arcp contract afn float %i.lba, %i.ldo
  %i.ldq = fmul reassoc nsz arcp contract afn float %i.ldp, %i.lbq
  %i.ldr = fmul reassoc nsz arcp contract afn float %i.ldd, %i.ldg
  %i.lds = fadd reassoc nsz arcp contract afn float %i.ldq, %i.ldr
  %i.ldt = fadd reassoc nsz arcp contract afn float %i.ldd, %i.lbq
  %i.ldu = fdiv reassoc nsz arcp contract afn float %i.lds, %i.ldt ; 2 uses
  %i.ldv = fmul reassoc nsz arcp contract afn float %i.ldm, %i.lcj
  %i.ldw = fmul reassoc nsz arcp contract afn float %i.ldj, %i.lct
  %i.ldx = fadd reassoc nsz arcp contract afn float %i.ldv, %i.ldw
  %i.ldy = fadd reassoc nsz arcp contract afn float %i.lct, %i.lcj
  %i.ldz = fdiv reassoc nsz arcp contract afn float %i.ldx, %i.ldy
  %i.lea = fcmp reassoc nsz arcp contract afn oge float %i.lau, 0.000000e+00
  %i.leb = fcmp reassoc nsz arcp contract afn ole float %i.lau, 1.000000e+00
  %i.lec = select reassoc nsz arcp contract afn i1 %i.leb, float %i.lau, float 1.000000e+00
  %i.led = select reassoc nsz arcp contract afn i1 %i.lea, float %i.lec, float 0.000000e+00
  %i.lee = fsub reassoc nsz arcp contract afn float %i.ldz, %i.ldu
  %i.lef = fmul reassoc nsz arcp contract afn float %i.lee, %i.led
  %i.leg = fadd reassoc nsz arcp contract afn float %i.ldu, %i.lef
  %i.leh = fadd reassoc nsz arcp contract afn float %i.leg, %i.lbl
  store float %i.leh, ptr %i.lbe, align 4, !tbaa !12, !noalias !499
  %i.lei = add nuw nsw i32 %.0754907.i, 2         ; 2 uses
  %indvars.iv.next1046.i = add nuw nsw i64 %indvars.iv1045.i, 2
  %indvars.iv.next1044.i = add nuw nsw i64 %indvars.iv1043.i, 1
  %i.lej = icmp slt i32 %i.lei, %i.klq
  br i1 %i.lej, label %scalar.ph3204, label %._crit_edge914.i, !llvm.loop !322

._crit_edge925.i:                                 ; preds = %._crit_edge922.i, %.preheader829.i, %.preheader830.i, %.preheader832.i
  %i.lek = icmp eq i32 %.0745937.i, 0
  %i.lel = select i1 %i.lek, i32 9, i32 10        ; 4 uses
  %i.lem = add nuw nsw i32 %i.lel, %i.jhx         ; 3 uses
  %i.len = icmp eq i32 %.0745937.i, %i.aos        ; 2 uses
  %.neg793.i = select i1 %i.len, i32 -9, i32 -10  ; 2 uses
  %i.leo = add nsw i32 %i.jhz, %.neg793.i         ; 2 uses
  %i.lep = icmp slt i32 %i.lem, %i.leo
  %or.cond944.i = select i1 %i.jgg, i1 %i.lep, i1 false
  br i1 %or.cond944.i, label %.lr.ph930.preheader.i, label %._crit_edge935.split.i

.lr.ph930.preheader.i:                            ; preds = %._crit_edge925.i
  %i.leq = add i32 %i.lel, %indvars.iv1058.i
  %i.ler = shl i32 %i.leq, 2
  %i.les = or disjoint i32 %i.lel, %i.jgk
  %i.let = add i32 %.neg793.i, %i.jhz
  %i.leu = add i32 %i.let, %i.jhj
  %i.lev = sub i32 %i.leu, %i.lel                 ; 2 uses
  %i.lew = zext i32 %i.lev to i64
  %i.lex = add nuw nsw i64 %i.lew, 1              ; 2 uses
  %min.iters.check2936 = icmp ult i32 %i.lev, 7
  %n.vec2938 = and i64 %i.lex, 8589934584         ; 5 uses
  %i.ley = shl nuw nsw i64 %n.vec2938, 2
  %i.lez = trunc i64 %n.vec2938 to i32
  %i.lfa = add i32 %i.lem, %i.lez
  %cmp.n2949 = icmp eq i64 %i.lex, %n.vec2938
  br label %.lr.ph930.i

.preheader.i541:                                  ; preds = %.preheader.i541.preheader, %._crit_edge922.i
  %indvars.iv1051.i = phi i32 [ %indvars.iv.next1052.i, %._crit_edge922.i ], [ 452, %.preheader.i541.preheader ] ; 3 uses
  %.0744923.i = phi i32 [ %i.lln, %._crit_edge922.i ], [ 4, %.preheader.i541.preheader ] ; 2 uses
  %i.lfb = shl i32 %.0744923.i, 2
  %i.lfc = and i32 %i.lfb, 28
  %i.lfd = or disjoint i32 %i.lfc, 2
  %i.lfe = lshr i32 %.fr1063, %i.lfd
  %i.lff = and i32 %i.lfe, 1                      ; 5 uses
  %i.lfg = or disjoint i32 %i.lff, 4              ; 4 uses
  %i.lfh = icmp slt i32 %i.lfg, %i.klq
  br i1 %i.lfh, label %.lr.ph921.preheader.i, label %._crit_edge922.i

.lr.ph921.preheader.i:                            ; preds = %.preheader.i541
  %i.lfi = or disjoint i32 %i.lff, %indvars.iv1051.i
  %i.lfj = sext i32 %i.lfi to i64                 ; 5 uses
  %i.lfk = sub i32 %i.laf, %i.lff                 ; 2 uses
  %i.lfl = lshr i32 %i.lfk, 1
  %narrow4569 = add nuw i32 %i.lfl, 1
  %i.lfm = zext i32 %narrow4569 to i64            ; 2 uses
  %min.iters.check2966 = icmp ult i32 %i.lfk, 16
  br i1 %min.iters.check2966, label %.lr.ph921.i.preheader, label %vector.memcheck2953

.lr.ph921.i.preheader:                            ; preds = %vector.body2972, %vector.memcheck2953, %.lr.ph921.preheader.i
  %indvars.iv1053.i.ph = phi i64 [ %i.lfj, %vector.memcheck2953 ], [ %i.lfj, %.lr.ph921.preheader.i ], [ %i.lfz, %vector.body2972 ]
  %.0743918.i.ph = phi i32 [ %i.lfg, %vector.memcheck2953 ], [ %i.lfg, %.lr.ph921.preheader.i ], [ %i.lgc, %vector.body2972 ]
  br label %.lr.ph921.i

vector.memcheck2953:                              ; preds = %.lr.ph921.preheader.i
  %i.lfn = or disjoint i32 %indvars.iv1051.i, %i.lff
  %i.lfo = sext i32 %i.lfn to i64
  %i.lfp = shl nsw i64 %i.lfo, 2                  ; 3 uses
  %scevgep2955 = getelementptr i8, ptr %scevgep2954, i64 %i.lfp
  %i.lfq = sub i32 %i.lae, %i.lff
  %i.lfr = lshr i32 %i.lfq, 1
  %i.lfs = zext nneg i32 %i.lfr to i64
  %i.lft = shl nuw nsw i64 %i.lfs, 3
  %i.lfu = add nsw i64 %i.lft, %i.lfp             ; 2 uses
  %scevgep2957 = getelementptr i8, ptr %scevgep2956, i64 %i.lfu
  %scevgep2959 = getelementptr i8, ptr %scevgep2958, i64 %i.lfp
  %scevgep2961 = getelementptr i8, ptr %scevgep2960, i64 %i.lfu
  %bound02962 = icmp ult ptr %scevgep2955, %scevgep2961
  %bound12963 = icmp ult ptr %scevgep2959, %scevgep2957
  %found.conflict2964 = and i1 %bound02962, %bound12963
  br i1 %found.conflict2964, label %.lr.ph921.i.preheader, label %vector.ph2967
end_hunk_0
begin_hunk_1_@process:bb.a
.lr.ph1066.split.us.i:                            ; preds = %.lr.ph1066.i
  %i.ngi = icmp slt i32 %.09261069.i, %i.axj
  br i1 %i.ngi, label %.lr.ph1066.split.us.split.preheader.i, label %.lr.ph1066.split.us.split.us.i.preheader

.lr.ph1066.split.us.split.us.i.preheader:         ; preds = %.lr.ph1066.split.us.i
  br i1 %i.mru, label %.lr.ph1066.split.us.split.us.i.epil.preheader, label %.lr.ph1066.split.us.split.us.i.preheader.new

.lr.ph1066.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1066.split.us.split.us.i.preheader
  %i.ngj = shl nuw nsw i32 %i.nfp, 1
  %i.ngk = lshr i32 %.fr1063, %i.ngj
  %i.ngl = and i32 %i.ngk, 3                      ; 2 uses
  %i.ngm = zext nneg i32 %i.ngl to i64
  %i.ngn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngm
  %i.ngo = load ptr, ptr %i.ngn, align 8, !tbaa !140, !noalias !551
  %i.ngp = getelementptr inbounds nuw [4 x i8], ptr %i.ngo, i64 %i.nfr
  %.not955.us.us.i = icmp eq i32 %i.ngl, 1
  %.tr.i962.us.us.i.1 = shl nuw nsw i32 %i.nfp, 1
  %i.ngq = or disjoint i32 %.tr.i962.us.us.i.1, 2
  %i.ngr = lshr i32 %.fr1063, %i.ngq
  %i.ngs = and i32 %i.ngr, 3                      ; 2 uses
  %i.ngt = zext nneg i32 %i.ngs to i64
  %i.ngu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ngt
  %i.ngv = load ptr, ptr %i.ngu, align 8, !tbaa !140, !noalias !551
  %i.ngw = getelementptr inbounds nuw [4 x i8], ptr %i.ngv, i64 %i.nfr
  %.not955.us.us.i.1 = icmp eq i32 %i.ngs, 1
  br label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.preheader.i:            ; preds = %.lr.ph1066.split.us.i
  %invariant.gep1376.i = getelementptr inbounds nuw [4 x i8], ptr %i.lux, i64 %i.nfr
  br label %.lr.ph1066.split.us.split.i

.lr.ph1066.split.us.split.us.i:                   ; preds = %bb.pk, %.lr.ph1066.split.us.split.us.i.preheader.new
  %indvars.iv1251.i = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1252.i.1, %bb.pk ] ; 4 uses
  %niter4729 = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader.new ], [ %niter4729.next.1, %bb.pk ]
  %i.ngx = getelementptr inbounds nuw [4 x i8], ptr %i.ngp, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngx, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i, label %.lr.ph1066.split.us.split.us.i.1, label %bb.pi

bb.pi:                                            ; preds = %.lr.ph1066.split.us.split.us.i
  %i.ngy = getelementptr inbounds nuw [4 x i8], ptr %i.nfs, i64 %indvars.iv1251.i
  store float 0.000000e+00, ptr %i.ngy, align 8, !tbaa !12, !noalias !549
  br label %.lr.ph1066.split.us.split.us.i.1

.lr.ph1066.split.us.split.us.i.1:                 ; preds = %bb.pi, %.lr.ph1066.split.us.split.us.i
  %indvars.iv.next1252.i = or disjoint i64 %indvars.iv1251.i, 1 ; 2 uses
  %i.ngz = getelementptr inbounds nuw [4 x i8], ptr %i.ngw, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.ngz, align 4, !tbaa !12, !noalias !549
  br i1 %.not955.us.us.i.1, label %bb.pk, label %bb.pj

bb.pj:                                            ; preds = %.lr.ph1066.split.us.split.us.i.1
  %i.nha = getelementptr inbounds nuw [4 x i8], ptr %i.nfs, i64 %indvars.iv.next1252.i
  store float 0.000000e+00, ptr %i.nha, align 4, !tbaa !12, !noalias !549
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %.lr.ph1066.split.us.split.us.i.1
  %indvars.iv.next1252.i.1 = add nuw nsw i64 %indvars.iv1251.i, 2 ; 2 uses
  %niter4729.next.1 = add i64 %niter4729, 2       ; 2 uses
  %niter4729.ncmp.1.not = icmp eq i64 %niter4729.next.1, %unroll_iter4728
  br i1 %niter4729.ncmp.1.not, label %._crit_edge1067.i.loopexit4625.unr-lcssa, label %.lr.ph1066.split.us.split.us.i

.lr.ph1066.split.us.split.i:                      ; preds = %bb.pn, %.lr.ph1066.split.us.split.preheader.i
  %indvars.iv1254.i = phi i64 [ 0, %.lr.ph1066.split.us.split.preheader.i ], [ %indvars.iv.next1255.i, %bb.pn ] ; 6 uses
  %.09241064.us.i = phi i32 [ %i.mrp, %.lr.ph1066.split.us.split.preheader.i ], [ %i.nhs, %bb.pn ] ; 2 uses
  %i.nhb = trunc nuw nsw i64 %indvars.iv1254.i to i32
  %i.nhc = and i32 %i.nhb, 1
  %.tr.i962.us.i = or disjoint i32 %i.nhc, %i.nfp
  %i.nhd = shl nuw nsw i32 %.tr.i962.us.i, 1
  %i.nhe = lshr i32 %.fr1063, %i.nhd
  %i.nhf = and i32 %i.nhe, 3                      ; 3 uses
  %i.nhg = icmp ult i32 %.09241064.us.i, %i.bo
  %i.nhh = zext nneg i32 %i.nhf to i64
  %i.nhi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhh
  %i.nhj = load ptr, ptr %i.nhi, align 8, !tbaa !140, !noalias !551
  %i.nhk = getelementptr inbounds nuw [4 x i8], ptr %i.nhj, i64 %i.nfr
  %i.nhl = getelementptr inbounds nuw [4 x i8], ptr %i.nhk, i64 %indvars.iv1254.i ; 2 uses
  br i1 %i.nhg, label %bb.pl, label %.thread.i562

bb.pl:                                            ; preds = %.lr.ph1066.split.us.split.i
  %gep1377.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1376.i, i64 %indvars.iv1254.i
  %i.nhm = load float, ptr %gep1377.i, align 4, !tbaa !12, !noalias !549 ; 2 uses
  store float %i.nhm, ptr %i.nhl, align 4, !tbaa !12, !noalias !549
  %.not955.us.i = icmp eq i32 %i.nhf, 1
  br i1 %.not955.us.i, label %bb.pn, label %bb.pm

.thread.i562:                                     ; preds = %.lr.ph1066.split.us.split.i
  store float 0.000000e+00, ptr %i.nhl, align 4, !tbaa !12, !noalias !549
  %.not955.us1356.i = icmp eq i32 %i.nhf, 1
  br i1 %.not955.us1356.i, label %bb.pn, label %.thread1357.i

bb.pm:                                            ; preds = %bb.pl
  %i.nhn = getelementptr inbounds nuw [4 x i8], ptr %i.nft, i64 %indvars.iv1254.i
  %i.nho = load float, ptr %i.nhn, align 4, !tbaa !12, !noalias !549
  %i.nhp = fadd reassoc nsz arcp contract afn float %i.nho, %i.nhm
  br label %.thread1357.i

.thread1357.i:                                    ; preds = %bb.pm, %.thread.i562
  %i.nhq = phi reassoc nsz arcp contract afn float [ %i.nhp, %bb.pm ], [ 0.000000e+00, %.thread.i562 ]
  %i.nhr = getelementptr inbounds nuw [4 x i8], ptr %i.nfs, i64 %indvars.iv1254.i
  store float %i.nhq, ptr %i.nhr, align 4, !tbaa !12, !noalias !549
  br label %bb.pn

bb.pn:                                            ; preds = %.thread1357.i, %.thread.i562, %bb.pl
  %indvars.iv.next1255.i = add nuw nsw i64 %indvars.iv1254.i, 1 ; 2 uses
  %i.nhs = add nsw i32 %.09241064.us.i, 1
  %i.nht = icmp slt i64 %indvars.iv.next1255.i, %i.mrr
  br i1 %i.nht, label %.lr.ph1066.split.us.split.i, label %._crit_edge1067.i

._crit_edge1067.i.loopexit4625.unr-lcssa:         ; preds = %bb.pk
  br i1 %lcmp.mod4726.not, label %._crit_edge1067.i, label %.lr.ph1066.split.us.split.us.i.epil.preheader

.lr.ph1066.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1067.i.loopexit4625.unr-lcssa, %.lr.ph1066.split.us.split.us.i.preheader
  %indvars.iv1251.i.epil.init = phi i64 [ 0, %.lr.ph1066.split.us.split.us.i.preheader ], [ %indvars.iv.next1252.i.1, %._crit_edge1067.i.loopexit4625.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4727)
  %i.nhu = trunc nuw nsw i64 %indvars.iv1251.i.epil.init to i32
  %i.nhv = and i32 %i.nhu, 1
  %.tr.i962.us.us.i.epil = or disjoint i32 %i.nhv, %i.nfp
  %i.nhw = shl nuw nsw i32 %.tr.i962.us.us.i.epil, 1
  %i.nhx = lshr i32 %.fr1063, %i.nhw
  %i.nhy = and i32 %i.nhx, 3                      ; 2 uses
  %i.nhz = zext nneg i32 %i.nhy to i64
  %i.nia = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nhz
  %i.nib = load ptr, ptr %i.nia, align 8, !tbaa !140, !noalias !551
  %i.nic = getelementptr inbounds nuw [4 x i8], ptr %i.nib, i64 %i.nfr
  %i.nid = getelementptr inbounds nuw [4 x i8], ptr %i.nic, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nid, align 4, !tbaa !12, !noalias !549
  %.not955.us.us.i.epil = icmp eq i32 %i.nhy, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1067.i, label %bb.po

bb.po:                                            ; preds = %.lr.ph1066.split.us.split.us.i.epil.preheader
  %i.nie = getelementptr inbounds nuw [4 x i8], ptr %i.nfs, i64 %indvars.iv1251.i.epil.init
  store float 0.000000e+00, ptr %i.nie, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i

._crit_edge1067.i.loopexit4626.unr-lcssa:         ; preds = %bb.pp
  br i1 %lcmp.mod4718.not, label %._crit_edge1067.i, label %.thread982.i.epil.preheader

.thread982.i.epil.preheader:                      ; preds = %._crit_edge1067.i.loopexit4626.unr-lcssa, %.thread982.i.preheader
  %indvars.iv1248.i.epil.init = phi i64 [ 0, %.thread982.i.preheader ], [ %indvars.iv.next1249.i.1, %._crit_edge1067.i.loopexit4626.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4719)
  %i.nif = trunc nuw nsw i64 %indvars.iv1248.i.epil.init to i32
  %i.nig = and i32 %i.nif, 1
  %.tr.i962.i.epil = or disjoint i32 %i.nig, %i.nfp
  %i.nih = shl nuw nsw i32 %.tr.i962.i.epil, 1
  %i.nii = lshr i32 %.fr1063, %i.nih
  %i.nij = and i32 %i.nii, 3                      ; 2 uses
  %i.nik = zext nneg i32 %i.nij to i64
  %i.nil = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nik
  %i.nim = load ptr, ptr %i.nil, align 8, !tbaa !140, !noalias !551
  %i.nin = getelementptr inbounds nuw [4 x i8], ptr %i.nim, i64 %i.nfr
  %i.nio = getelementptr inbounds nuw [4 x i8], ptr %i.nin, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nio, align 4, !tbaa !12, !noalias !549
  %.not955983.i.epil = icmp eq i32 %i.nij, 1
  br i1 %.not955983.i.epil, label %._crit_edge1067.i, label %.thread984.i.epil

.thread984.i.epil:                                ; preds = %.thread982.i.epil.preheader
  %i.nip = getelementptr inbounds nuw [4 x i8], ptr %i.nfs, i64 %indvars.iv1248.i.epil.init
  store float 0.000000e+00, ptr %i.nip, align 4, !tbaa !12, !noalias !549
  br label %._crit_edge1067.i

._crit_edge1067.i:                                ; preds = %._crit_edge1067.i.loopexit4626.unr-lcssa, %.thread984.i.epil, %.thread982.i.epil.preheader, %._crit_edge1067.i.loopexit4625.unr-lcssa, %bb.po, %.lr.ph1066.split.us.split.us.i.epil.preheader, %bb.pn
  %indvars.iv.next1258.i = add nuw nsw i64 %indvars.iv1257.i, 1 ; 2 uses
  %i.niq = add i32 %.09261069.i, 1
  %exitcond1127.not = icmp eq i64 %indvars.iv.next1258.i, %smax1126
  br i1 %exitcond1127.not, label %.preheader1023.i, label %.lr.ph1066.i

.thread982.i:                                     ; preds = %bb.pp, %.thread982.i.preheader.new
  %indvars.iv1248.i = phi i64 [ 0, %.thread982.i.preheader.new ], [ %indvars.iv.next1249.i.1, %bb.pp ] ; 4 uses
  %niter4721 = phi i64 [ 0, %.thread982.i.preheader.new ], [ %niter4721.next.1, %bb.pp ]
  %i.nir = getelementptr inbounds nuw [4 x i8], ptr %i.nga, i64 %indvars.iv1248.i
  store float 0.000000e+00, ptr %i.nir, align 4, !tbaa !12, !noalias !549
  br i1 %.not955983.i, label %.thread982.i.1, label %.thread984.i

.thread984.i:                                     ; preds = %.thread982.i
  %i.nis = getelementptr inbounds nuw [4 x i8], ptr %i.nfs, i64 %indvars.iv1248.i
  store float 0.000000e+00, ptr %i.nis, align 8, !tbaa !12, !noalias !549
  br label %.thread982.i.1

.thread982.i.1:                                   ; preds = %.thread984.i, %.thread982.i
  %indvars.iv.next1249.i = or disjoint i64 %indvars.iv1248.i, 1 ; 2 uses
  %i.nit = getelementptr inbounds nuw [4 x i8], ptr %i.ngh, i64 %indvars.iv.next1249.i
  store float 0.000000e+00, ptr %i.nit, align 4, !tbaa !12, !noalias !549
  br i1 %.not955983.i.1, label %bb.pp, label %.thread984.i.1

.thread984.i.1:                                   ; preds = %.thread982.i.1
  %i.niu = getelementptr inbounds nuw [4 x i8], ptr %i.nfs, i64 %indvars.iv.next1249.i
  store float 0.000000e+00, ptr %i.niu, align 4, !tbaa !12, !noalias !549
  br label %bb.pp

bb.pp:                                            ; preds = %.thread984.i.1, %.thread982.i.1
  %indvars.iv.next1249.i.1 = add nuw nsw i64 %indvars.iv1248.i, 2 ; 2 uses
  %niter4721.next.1 = add i64 %niter4721, 2       ; 2 uses
  %niter4721.ncmp.1.not = icmp eq i64 %niter4721.next.1, %unroll_iter4720
  br i1 %niter4721.ncmp.1.not, label %._crit_edge1067.i.loopexit4626.unr-lcssa, label %.thread982.i

.preheader1022.i:                                 ; preds = %._crit_edge1075.i
  %i.niv = zext i32 %i.nfl to i64                 ; 3 uses
  br label %bb.pr

bb.pq:                                            ; preds = %._crit_edge1075.i, %.lr.ph1077.i
  %indvar4174 = phi i64 [ %indvar.next4175, %._crit_edge1075.i ], [ 0, %.lr.ph1077.i ] ; 2 uses
  %indvars.iv1263.i = phi i64 [ %indvars.iv.next1264.i, %._crit_edge1075.i ], [ 1, %.lr.ph1077.i ] ; 3 uses
  %i.niw = mul nuw nsw i64 %indvar4174, 544       ; 6 uses
  %i.nix = getelementptr i8, ptr %i.lur, i64 %i.niw
  %scevgep4181 = getelementptr i8, ptr %i.nix, i64 73988
  %i.niy = getelementptr i8, ptr %i.lur, i64 %i.niw
  %scevgep4183 = getelementptr i8, ptr %i.niy, i64 75080
  %indvars.iv1263.tr.i = trunc nuw i64 %indvars.iv1263.i to i32
  %i.niz = shl nuw i32 %indvars.iv1263.tr.i, 1
  %i.nja = and i32 %i.niz, 14                     ; 2 uses
  %i.njb = shl nuw nsw i32 %i.nja, 1
  %i.njc = lshr i32 %.fr1063, %i.njb              ; 3 uses
  %i.njd = and i32 %i.njc, 1                      ; 3 uses
  %i.nje = icmp slt i32 %i.njd, %i.nfn
  br i1 %i.nje, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %bb.pq
  %i.njf = or disjoint i32 %i.njd, %i.nja
  %i.njg = shl nuw nsw i32 %i.njf, 1
  %i.njh = lshr i32 %.fr1063, %i.njg
  %i.nji = and i32 %i.njh, 3                      ; 2 uses
  %i.njj = zext nneg i32 %i.nji to i64
  %i.njk = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njj
  %i.njl = load ptr, ptr %i.njk, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.njm = mul nuw nsw i64 %indvars.iv1263.i, 136 ; 3 uses
  %i.njn = getelementptr inbounds nuw [4 x i8], ptr %i.njl, i64 %i.njm ; 2 uses
  %i.njo = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.njm ; 2 uses
  %i.njp = sub nsw i32 2, %i.nji
  %i.njq = sext i32 %i.njp to i64
  %i.njr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.njq
  %i.njs = load ptr, ptr %i.njr, align 8, !tbaa !140, !noalias !551 ; 3 uses
  %i.njt = getelementptr inbounds nuw [4 x i8], ptr %i.njs, i64 %i.njm ; 2 uses
  %narrow1352.i = add nuw nsw i32 %i.njd, 1
  %i.nju = zext nneg i32 %narrow1352.i to i64     ; 5 uses
  %i.njv = and i32 %i.njc, 1
  %i.njw = zext nneg i32 %i.njv to i64            ; 2 uses
  %i.njx = add nuw nsw i64 %i.njw, 3
  %i.njy = call i64 @llvm.smax.i64(i64 %i.nfm, i64 %i.njx)
  %i.njz = add nsw i64 %i.njy, -2
  %i.nka = sub i64 %i.njz, %i.njw                 ; 2 uses
  %i.nkb = lshr i64 %i.nka, 1
  %i.nkc = add nuw nsw i64 %i.nkb, 1              ; 2 uses
  %min.iters.check4197 = icmp ult i64 %i.nka, 16
  br i1 %min.iters.check4197, label %scalar.ph4196.preheader, label %vector.memcheck4173

scalar.ph4196.preheader:                          ; preds = %vector.body4203, %vector.memcheck4173, %.lr.ph1074.i
  %indvars.iv1260.i.ph = phi i64 [ %i.nju, %vector.memcheck4173 ], [ %i.nju, %.lr.ph1074.i ], [ %i.nkz, %vector.body4203 ]
  br label %scalar.ph4196

vector.memcheck4173:                              ; preds = %.lr.ph1074.i
  %i.nkd = and i32 %i.njc, 1
  %i.nke = zext nneg i32 %i.nkd to i64            ; 3 uses
  %i.nkf = shl nuw nsw i64 %i.nke, 2              ; 6 uses
  %8 = getelementptr i8, ptr %i.njl, i64 %i.niw
  %i.nkg = getelementptr i8, ptr %8, i64 544
  %scevgep4176.a = getelementptr i8, ptr %i.nkg, i64 %i.nkf ; 2 uses
  %i.nkh = add nuw nsw i64 %i.nke, 3
  %smax4177 = call i64 @llvm.smax.i64(i64 %i.nfm, i64 %i.nkh)
  %i.nki = add nsw i64 %smax4177, -2
  %i.nkj = sub i64 %i.nki, %i.nke
  %i.nkk = shl nuw nsw i64 %i.nkj, 2
  %i.nkl = and i64 %i.nkk, 9223372036854775800    ; 3 uses
  %i.nkm = getelementptr i8, ptr %i.njl, i64 %i.niw
  %i.nkn = getelementptr i8, ptr %i.nkm, i64 556
  %i.nko = getelementptr i8, ptr %i.nkn, i64 %i.nkl
  %scevgep4178.a = getelementptr i8, ptr %i.nko, i64 %i.nkf ; 2 uses
  %i.nkp = getelementptr i8, ptr %i.njs, i64 %i.niw
  %i.nkq = getelementptr i8, ptr %i.nkp, i64 4
  %scevgep4179 = getelementptr i8, ptr %i.nkq, i64 %i.nkf ; 2 uses
  %i.nkr = getelementptr i8, ptr %i.njs, i64 %i.niw
  %i.nks = getelementptr i8, ptr %i.nkr, i64 1096
  %i.nkt = getelementptr i8, ptr %i.nks, i64 %i.nkl
  %scevgep4180.a = getelementptr i8, ptr %i.nkt, i64 %i.nkf ; 2 uses
  %scevgep4182 = getelementptr i8, ptr %scevgep4181, i64 %i.nkf ; 2 uses
  %i.nku = getelementptr i8, ptr %scevgep4183, i64 %i.nkl
  %scevgep4184 = getelementptr i8, ptr %i.nku, i64 %i.nkf ; 2 uses
  %bound04185 = icmp ult ptr %scevgep4176.a, %scevgep4180.a
  %bound14186 = icmp ult ptr %scevgep4179, %scevgep4178.a
  %found.conflict4187 = and i1 %bound04185, %bound14186
  %bound04188.a = icmp ult ptr %scevgep4176.a, %scevgep4184
  %bound14189.a = icmp ult ptr %scevgep4182, %scevgep4178.a
  %found.conflict4190.a = and i1 %bound04188.a, %bound14189.a
  %conflict.rdx4191.a = or i1 %found.conflict4187, %found.conflict4190.a
  %bound04192 = icmp ult ptr %scevgep4179, %scevgep4184
  %bound14193 = icmp ult ptr %scevgep4182, %scevgep4180.a
  %found.conflict4194 = and i1 %bound04192, %bound14193
  %conflict.rdx4195 = or i1 %conflict.rdx4191.a, %found.conflict4194
  br i1 %conflict.rdx4195, label %scalar.ph4196.preheader, label %vector.ph4198

vector.ph4198:                                    ; preds = %vector.memcheck4173
  %i.nkv = and i64 %i.nkc, 7                      ; 2 uses
  %i.nkw = icmp eq i64 %i.nkv, 0
  %i.nkx = select i1 %i.nkw, i64 8, i64 %i.nkv
  %n.vec4199 = sub nsw i64 %i.nkc, %i.nkx         ; 2 uses
  %i.nky = shl i64 %n.vec4199, 1
  %i.nkz = add i64 %i.nky, %i.nju
  %broadcast.splatinsert4200 = insertelement <8 x i64> poison, i64 %i.nju, i64 0
  %broadcast.splat4201 = shufflevector <8 x i64> %broadcast.splatinsert4200, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4202 = add nuw nsw <8 x i64> %broadcast.splat4201, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4853.a = getelementptr [4 x i8], ptr %i.njo, i64 %i.nju
  br label %vector.body4203

vector.body4203:                                  ; preds = %vector.body4203, %vector.ph4198
  %index4204 = phi i64 [ 0, %vector.ph4198 ], [ %index.next4226, %vector.body4203 ] ; 2 uses
  %vec.ind4205 = phi <8 x i64> [ %induction4202, %vector.ph4198 ], [ %vec.ind.next4227, %vector.body4203 ] ; 3 uses
  %wide.gep4206 = getelementptr inbounds nuw [4 x i8], ptr %i.njn, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nla = extractelement <8 x ptr> %wide.gep4206, i64 0 ; 2 uses
  %.idx4558.a = shl nuw i64 %index4204, 3
  %gep4854.a = getelementptr i8, ptr %invariant.gep4853.a, i64 %.idx4558.a ; 4 uses
  %i.nlb = getelementptr inbounds i8, ptr %gep4854.a, i64 -4
  %wide.vec4207 = load <16 x float>, ptr %i.nlb, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4208 = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4209.a = shufflevector <16 x float> %wide.vec4207, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nlc = getelementptr inbounds i8, ptr %i.nla, i64 -4
  %wide.vec4210.a = load <16 x float>, ptr %i.nlc, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4211.a = shufflevector <16 x float> %wide.vec4210.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nld = getelementptr inbounds nuw i8, ptr %i.nla, i64 4
  %wide.vec4212 = load <16 x float>, ptr %i.nld, align 4, !tbaa !12, !alias.scope !554, !noalias !549
  %strided.vec4213 = shufflevector <16 x float> %wide.vec4212, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4214.a = load <16 x float>, ptr %gep4854.a, align 4, !tbaa !12, !alias.scope !553, !noalias !549 ; 2 uses
  %strided.vec4215.a = shufflevector <16 x float> %wide.vec4214.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4214.a, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nle = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4211.a, %strided.vec4213
  %i.nlf = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4208, %strided.vec4216
  %i.nlg = fsub reassoc nsz arcp contract afn <8 x float> %i.nle, %i.nlf
  %i.nlh = fmul reassoc nsz arcp contract afn <8 x float> %i.nlg, splat (float 5.000000e-01)
  %i.nli = fadd reassoc nsz arcp contract afn <8 x float> %i.nlh, %strided.vec4209.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nli, <8 x ptr> align 4 %wide.gep4206, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !554, !noalias !555
  %wide.gep4217 = getelementptr inbounds nuw [4 x i8], ptr %i.njt, <8 x i64> %vec.ind4205 ; 2 uses
  %i.nlj = extractelement <8 x ptr> %wide.gep4217, i64 0 ; 2 uses
  %i.nlk = getelementptr inbounds i8, ptr %i.nlj, i64 -544
  %wide.vec4218.a = load <16 x float>, ptr %i.nlk, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4219.a = shufflevector <16 x float> %wide.vec4218.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nll = getelementptr inbounds i8, ptr %gep4854.a, i64 -544
  %wide.vec4220.a = load <16 x float>, ptr %i.nll, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4221.a = shufflevector <16 x float> %wide.vec4220.a, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlm = getelementptr inbounds nuw i8, ptr %i.nlj, i64 544
  %wide.vec4222 = load <16 x float>, ptr %i.nlm, align 4, !tbaa !12, !alias.scope !556, !noalias !549
  %strided.vec4223 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nln = getelementptr inbounds nuw i8, ptr %gep4854.a, i64 544
  %wide.vec4224 = load <16 x float>, ptr %i.nln, align 4, !tbaa !12, !alias.scope !553, !noalias !549
  %strided.vec4225 = shufflevector <16 x float> %wide.vec4224, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nlo = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4219.a, %strided.vec4223
  %i.nlp = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4221.a, %strided.vec4225
  %i.nlq = fsub reassoc nsz arcp contract afn <8 x float> %i.nlo, %i.nlp
  %i.nlr = fmul reassoc nsz arcp contract afn <8 x float> %i.nlq, splat (float 5.000000e-01)
  %i.nls = fadd reassoc nsz arcp contract afn <8 x float> %i.nlr, %strided.vec4215.a
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nls, <8 x ptr> align 4 %wide.gep4217, <8 x i1> splat (i1 true)), !tbaa !12, !alias.scope !556, !noalias !557
  %index.next4226 = add nuw i64 %index4204, 8     ; 2 uses
  %vec.ind.next4227 = add nuw nsw <8 x i64> %vec.ind4205, splat (i64 16)
  %i.nlt = icmp eq i64 %index.next4226, %n.vec4199
  br i1 %i.nlt, label %scalar.ph4196.preheader, label %vector.body4203, !llvm.loop !347

._crit_edge1075.i:                                ; preds = %scalar.ph4196, %bb.pq
  %indvars.iv.next1264.i = add nuw nsw i64 %indvars.iv1263.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1264.i, %smax1137
  %indvar.next4175 = add i64 %indvar4174, 1
  br i1 %exitcond1132.not, label %.preheader1022.i, label %bb.pq

scalar.ph4196:                                    ; preds = %scalar.ph4196.preheader, %scalar.ph4196
  %indvars.iv1260.i = phi i64 [ %indvars.iv.next1261.i, %scalar.ph4196 ], [ %indvars.iv1260.i.ph, %scalar.ph4196.preheader ] ; 4 uses
  %i.nlu = getelementptr inbounds nuw [4 x i8], ptr %i.njn, i64 %indvars.iv1260.i ; 3 uses
  %i.nlv = getelementptr inbounds nuw [4 x i8], ptr %i.njo, i64 %indvars.iv1260.i ; 6 uses
  %i.nlw = load float, ptr %i.nlv, align 4, !tbaa !12, !noalias !549
  %i.nlx = getelementptr inbounds i8, ptr %i.nlu, i64 -4
  %i.nly = load float, ptr %i.nlx, align 4, !tbaa !12, !noalias !549
  %i.nlz = getelementptr inbounds i8, ptr %i.nlv, i64 -4
  %i.nma = load float, ptr %i.nlz, align 4, !tbaa !12, !noalias !549
  %i.nmb = getelementptr inbounds nuw i8, ptr %i.nlu, i64 4
  %i.nmc = load float, ptr %i.nmb, align 4, !tbaa !12, !noalias !549
  %i.nmd = getelementptr inbounds nuw i8, ptr %i.nlv, i64 4
  %i.nme = load float, ptr %i.nmd, align 4, !tbaa !12, !noalias !549
  %i.nmf = fadd reassoc nsz arcp contract afn float %i.nly, %i.nmc
  %i.nmg = fadd reassoc nsz arcp contract afn float %i.nma, %i.nme
  %i.nmh = fsub reassoc nsz arcp contract afn float %i.nmf, %i.nmg
  %i.nmi = fmul reassoc nsz arcp contract afn float %i.nmh, 5.000000e-01
  %i.nmj = fadd reassoc nsz arcp contract afn float %i.nmi, %i.nlw
  store float %i.nmj, ptr %i.nlu, align 4, !tbaa !12, !noalias !549
  %i.nmk = getelementptr inbounds nuw [4 x i8], ptr %i.njt, i64 %indvars.iv1260.i ; 3 uses
  %i.nml = load float, ptr %i.nlv, align 4, !tbaa !12, !noalias !549
  %i.nmm = getelementptr inbounds i8, ptr %i.nmk, i64 -544
  %i.nmn = load float, ptr %i.nmm, align 4, !tbaa !12, !noalias !549
  %i.nmo = getelementptr inbounds i8, ptr %i.nlv, i64 -544
  %i.nmp = load float, ptr %i.nmo, align 4, !tbaa !12, !noalias !549
  %i.nmq = getelementptr inbounds nuw i8, ptr %i.nmk, i64 544
  %i.nmr = load float, ptr %i.nmq, align 4, !tbaa !12, !noalias !549
  %i.nms = getelementptr inbounds nuw i8, ptr %i.nlv, i64 544
  %i.nmt = load float, ptr %i.nms, align 4, !tbaa !12, !noalias !549
  %i.nmu = fadd reassoc nsz arcp contract afn float %i.nmn, %i.nmr
  %i.nmv = fadd reassoc nsz arcp contract afn float %i.nmp, %i.nmt
  %i.nmw = fsub reassoc nsz arcp contract afn float %i.nmu, %i.nmv
  %i.nmx = fmul reassoc nsz arcp contract afn float %i.nmw, 5.000000e-01
  %i.nmy = fadd reassoc nsz arcp contract afn float %i.nmx, %i.nml
  store float %i.nmy, ptr %i.nmk, align 4, !tbaa !12, !noalias !549
  %indvars.iv.next1261.i = add nuw nsw i64 %indvars.iv1260.i, 2 ; 2 uses
  %i.nmz = icmp slt i64 %indvars.iv.next1261.i, %i.nfm
  br i1 %i.nmz, label %scalar.ph4196, label %._crit_edge1075.i, !llvm.loop !348

._crit_edge1085.i:                                ; preds = %._crit_edge1082.i, %.preheader1023.i, %._crit_edge1060.i
  %i.nna = icmp eq i32 %.08871185.i, 0            ; 2 uses
  %i.nnb = select i1 %i.nna, i32 6, i32 0         ; 21 uses
  %i.nnc = icmp eq i32 %.08871185.i, %i.aoo       ; 2 uses
  %.neg.i554 = select i1 %i.nnc, i32 -6, i32 0    ; 10 uses
  %i.nnd = add nsw i32 %i.lyr, %.neg.i554         ; 4 uses
  br i1 %.not1193.i, label %.preheader1021.i, label %.preheader1018.lr.ph.i

.preheader1018.lr.ph.i:                           ; preds = %._crit_edge1085.i
  %i.nne = icmp slt i32 %i.lyp, -5
  %i.nnf = zext nneg i32 %i.nnb to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.lur, i64 %i.nnf
  %invariant.gep1131.i = getelementptr inbounds nuw [4 x i8], ptr %i.lut, i64 %i.nnf
  %invariant.gep1133.i = getelementptr inbounds nuw [4 x i8], ptr %i.luu, i64 %i.nnf
  %invariant.gep1135.i = getelementptr inbounds nuw [4 x i8], ptr %i.luv, i64 %i.nnf
  %invariant.gep1137.i = getelementptr inbounds nuw [4 x i8], ptr %i.luw, i64 %i.nnf
  %i.nng = add nsw i32 %i.nnd, -1                 ; 3 uses
  %i.nnh = icmp slt i32 %i.nnb, %i.nng            ; 2 uses
  %brmerge.i556 = select i1 %i.lwf, i1 true, i1 %i.nne
  %i.nni = add nsw i32 %i.lyq, 6                  ; 3 uses
  %i.nnj = sext i32 %i.nni to i64                 ; 6 uses
  %i.nnk = shl nuw nsw i64 %i.nnf, 2              ; 4 uses
  %scevgep3938 = getelementptr i8, ptr %scevgep3937.a, i64 %i.nnk ; 2 uses
  %i.nnl = add nsw i32 %.neg.i554, 6
  %i.nnm = add i32 %i.nnl, %i.lyq
  %i.nnn = sub i32 %i.nnm, %i.nnb
  %i.nno = lshr i32 %i.nnn, 1
  %i.nnp = zext nneg i32 %i.nno to i64
  %i.nnq = shl nuw nsw i64 %i.nnp, 3              ; 2 uses
  %i.nnr = getelementptr i8, ptr %scevgep3940.a, i64 %i.nnq
  %scevgep3941.a = getelementptr i8, ptr %i.nnr, i64 %i.nnk ; 2 uses
  %.reass = or disjoint i64 %i.nnk, %invariant.op
  %i.nns = add nuw nsw i64 %i.lxe, %i.nnq
  %i.nnt = add nuw nsw i64 %i.nns, %i.nnk
  %i.nnu = add nsw i32 %.neg.i554, 6
  %i.nnv = add i32 %i.nnu, %i.lyq
  %i.nnw = sub i32 %i.nnv, %i.nnb
  %i.nnx = lshr i32 %i.nnw, 1
  %i.nny = zext nneg i32 %i.nnx to i64
  %i.nnz = shl nuw nsw i64 %i.nny, 3              ; 2 uses
  %i.noa = add nuw nsw i64 %i.lxf, %i.nnz
  %i.nob = shl nuw nsw i64 %i.nnf, 2              ; 3 uses
  %i.noc = add nuw nsw i64 %i.noa, %i.nob
  %scevgep4007.a = getelementptr i8, ptr %scevgep4006.a, i64 %i.nob ; 2 uses
  %i.nod = getelementptr i8, ptr %scevgep4009, i64 %i.nnz
  %scevgep4010 = getelementptr i8, ptr %i.nod, i64 %i.nob ; 2 uses
  %min.iters.check4101 = icmp ult i32 %i.nni, 8
  %n.vec4103 = and i64 %i.nnj, -8                 ; 3 uses
  %i.noe = or disjoint i64 %n.vec4103, 1
  %cmp.n4126 = icmp eq i64 %n.vec4103, %i.nnj
  %min.iters.check4073 = icmp ult i32 %i.nni, 8
  %n.vec4075 = and i64 %i.nnj, -8                 ; 3 uses
  %i.nof = or disjoint i64 %n.vec4075, 1
  %cmp.n4098 = icmp eq i64 %n.vec4075, %i.nnj
  %i.nog = add i32 %.neg.i554, %i.lyq
  %i.noh = add i32 %i.nog, 6
  %i.noi = sub i32 %i.noh, %i.nnb                 ; 2 uses
  %i.noj = lshr i32 %i.noi, 1
  %narrow = add nuw i32 %i.noj, 1
  %i.nok = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4024 = icmp ult i32 %i.noi, 16
  %i.nol = and i64 %i.nok, 7                      ; 2 uses
  %i.nom = icmp eq i64 %i.nol, 0
  %i.non = select i1 %i.nom, i64 8, i64 %i.nol
  %n.vec4026 = sub nsw i64 %i.nok, %i.non         ; 3 uses
  %i.noo = trunc i64 %n.vec4026 to i32
end_hunk_1
