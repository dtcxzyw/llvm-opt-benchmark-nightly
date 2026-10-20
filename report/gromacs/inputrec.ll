Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/inputrec?download=true
inline.NumInlined: 1031
inline.NumDeleted: 672
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z12cmp_inputrecP8_IO_FILEPK10t_inputrecS3_ff:bb.a
  %i.ajm = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.ajn = load i32, ptr %i.ajm, align 8, !tbaa !333
  tail call void @_Z7cmpEnumI27DistanceRestraintRefinementEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef nonnull @.str.390, i32 noundef %i.ajl, i32 noundef %i.ajn)
  %i.ajo = getelementptr inbounds nuw i8, ptr %1, i64 468
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !336
  %i.ajq = getelementptr inbounds nuw i8, ptr %2, i64 468
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !336
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.391, i32 noundef -1, float noundef %i.ajp, float noundef %i.ajr, float noundef %3, float noundef %4)
  %i.ajs = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !334
  %i.aju = getelementptr inbounds nuw i8, ptr %2, i64 472
  %i.ajv = load i32, ptr %i.aju, align 8, !tbaa !334
  tail call void @_Z7cmpEnumI26DistanceRestraintWeightingEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef nonnull @.str.392, i32 noundef %i.ajt, i32 noundef %i.ajv)
  %i.ajw = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.ajx = load i8, ptr %i.ajw, align 4, !tbaa !335, !range !204, !noundef !205
  %i.ajy = zext nneg i8 %i.ajx to i32
  %i.ajz = getelementptr inbounds nuw i8, ptr %2, i64 476
  %i.aka = load i8, ptr %i.ajz, align 4, !tbaa !335, !range !204, !noundef !205
  %i.akb = zext nneg i8 %i.aka to i32
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.393, i32 noundef -1, i32 noundef %i.ajy, i32 noundef %i.akb)
  %i.akc = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.akd = load i32, ptr %i.akc, align 8, !tbaa !338
  %i.ake = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.akf = load i32, ptr %i.ake, align 8, !tbaa !338
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.394, i32 noundef -1, i32 noundef %i.akd, i32 noundef %i.akf)
  %i.akg = getelementptr inbounds nuw i8, ptr %1, i64 484
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !337
  %i.aki = getelementptr inbounds nuw i8, ptr %2, i64 484
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !337
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.395, i32 noundef -1, float noundef %i.akh, float noundef %i.akj, float noundef %3, float noundef %4)
  %i.akk = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.akl = load float, ptr %i.akk, align 8, !tbaa !339
  %i.akm = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.akn = load float, ptr %i.akm, align 8, !tbaa !339
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.396, i32 noundef -1, float noundef %i.akl, float noundef %i.akn, float noundef %3, float noundef %4)
  %i.ako = getelementptr inbounds nuw i8, ptr %1, i64 492
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !340
  %i.akq = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.akr = load float, ptr %i.akq, align 4, !tbaa !340
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.397, i32 noundef -1, float noundef %i.akp, float noundef %i.akr, float noundef %3, float noundef %4)
  %i.aks = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.akt = load i32, ptr %i.aks, align 8, !tbaa !341
  %i.aku = getelementptr inbounds nuw i8, ptr %2, i64 496
  %i.akv = load i32, ptr %i.aku, align 8, !tbaa !341
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.398, i32 noundef -1, i32 noundef %i.akt, i32 noundef %i.akv)
  %i.akw = getelementptr inbounds nuw i8, ptr %1, i64 500
  %i.akx = load float, ptr %i.akw, align 4, !tbaa !227
  %i.aky = getelementptr inbounds nuw i8, ptr %2, i64 500
  %i.akz = load float, ptr %i.aky, align 4, !tbaa !227
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.399, i32 noundef -1, float noundef %i.akx, float noundef %i.akz, float noundef %3, float noundef %4)
  %i.ala = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.alb = load float, ptr %i.ala, align 8, !tbaa !226
  %i.alc = getelementptr inbounds nuw i8, ptr %2, i64 504
  %i.ald = load float, ptr %i.alc, align 8, !tbaa !226
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.400, i32 noundef -1, float noundef %i.alb, float noundef %i.ald, float noundef %3, float noundef %4)
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 508
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !228
  %i.alg = getelementptr inbounds nuw i8, ptr %2, i64 508
  %i.alh = load i32, ptr %i.alg, align 4, !tbaa !228
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.401, i32 noundef -1, i32 noundef %i.alf, i32 noundef %i.alh)
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.alj = load float, ptr %i.ali, align 8, !tbaa !229
  %i.alk = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.all = load float, ptr %i.alk, align 8, !tbaa !229
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.402, i32 noundef -1, float noundef %i.alj, float noundef %i.all, float noundef %3, float noundef %4)
  %i.alm = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !230
  %i.alo = getelementptr inbounds nuw i8, ptr %2, i64 516
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !230
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.403, i32 noundef -1, i32 noundef %i.aln, i32 noundef %i.alp)
  %i.alq = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.alr = load i32, ptr %i.alq, align 8, !tbaa !231
  %i.als = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.alt = load i32, ptr %i.als, align 8, !tbaa !231
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.404, i32 noundef 0, i32 noundef %i.alr, i32 noundef %i.alt)
  %i.alu = getelementptr inbounds nuw i8, ptr %1, i64 524
  %i.alv = load i32, ptr %i.alu, align 4, !tbaa !268
  %i.alw = getelementptr inbounds nuw i8, ptr %2, i64 524
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !268
  tail call void @_Z7cmpEnumI19ConstraintAlgorithmEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef nonnull @.str.405, i32 noundef %i.alv, i32 noundef %i.alx)
  %i.aly = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !272
  %i.ama = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.amb = load i32, ptr %i.ama, align 8, !tbaa !272
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.406, i32 noundef -1, i32 noundef %i.alz, i32 noundef %i.amb)
  %i.amc = getelementptr inbounds nuw i8, ptr %1, i64 532
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !274
  %i.ame = getelementptr inbounds nuw i8, ptr %2, i64 532
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !274
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.407, i32 noundef -1, float noundef %i.amd, float noundef %i.amf, float noundef %3, float noundef %4)
  %i.amg = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.amh = load i32, ptr %i.amg, align 8, !tbaa !273
  %i.ami = getelementptr inbounds nuw i8, ptr %2, i64 536
  %i.amj = load i32, ptr %i.ami, align 8, !tbaa !273
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.408, i32 noundef -1, i32 noundef %i.amh, i32 noundef %i.amj)
  %i.amk = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.aml = load float, ptr %i.amk, align 8, !tbaa !134
  %i.amm = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.amn = load float, ptr %i.amm, align 8, !tbaa !134
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.409, i32 noundef -1, float noundef %i.aml, float noundef %i.amn, float noundef %3, float noundef %4)
  %i.amo = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !225
  %i.amq = getelementptr inbounds nuw i8, ptr %2, i64 552
  %i.amr = load i64, ptr %i.amq, align 8, !tbaa !225
  tail call void @_Z9cmp_int64P8_IO_FILEPKcll(ptr noundef %0, ptr noundef nonnull @.str.410, i64 noundef %i.amp, i64 noundef %i.amr)
  %i.ams = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.amt = load float, ptr %i.ams, align 8, !tbaa !387
  %i.amu = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.amv = load float, ptr %i.amu, align 8, !tbaa !387
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.411, i32 noundef -1, float noundef %i.amt, float noundef %i.amv, float noundef %3, float noundef %4)
  %i.amw = getelementptr inbounds nuw i8, ptr %1, i64 676
  %i.amx = getelementptr inbounds nuw i8, ptr %2, i64 676
  tail call void @_Z8cmp_rvecP8_IO_FILEPKciPKfS4_ff(ptr noundef %0, ptr noundef nonnull @.str.412, i32 noundef -1, ptr noundef nonnull %i.amw, ptr noundef nonnull %i.amx, float noundef %3, float noundef %4)
  %i.amy = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.amz = getelementptr inbounds nuw i8, ptr %2, i64 688
  tail call void @_Z8cmp_rvecP8_IO_FILEPKciPKfS4_ff(ptr noundef %0, ptr noundef nonnull @.str.413, i32 noundef -1, ptr noundef nonnull %i.amy, ptr noundef nonnull %i.amz, float noundef %3, float noundef %4)
  %i.ana = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.anb = getelementptr inbounds nuw i8, ptr %2, i64 700
  tail call void @_Z8cmp_rvecP8_IO_FILEPKciPKfS4_ff(ptr noundef %0, ptr noundef nonnull @.str.414, i32 noundef -1, ptr noundef nonnull %i.ana, ptr noundef nonnull %i.anb, float noundef %3, float noundef %4)
  %i.anc = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.and = load i32, ptr %i.anc, align 8, !tbaa !393
  %i.ane = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.anf = load i32, ptr %i.ane, align 8, !tbaa !393
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.415, i32 noundef -1, i32 noundef %i.and, i32 noundef %i.anf)
  %i.ang = getelementptr inbounds nuw i8, ptr %1, i64 716
  %i.anh = load i32, ptr %i.ang, align 4, !tbaa !394
  %i.ani = getelementptr inbounds nuw i8, ptr %2, i64 716
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !394
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.416, i32 noundef -1, i32 noundef %i.anh, i32 noundef %i.anj)
  %i.ank = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.anl = load i32, ptr %i.ank, align 8, !tbaa !395
  %i.anm = getelementptr inbounds nuw i8, ptr %2, i64 720
  %i.ann = load i32, ptr %i.anm, align 8, !tbaa !395
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.417, i32 noundef -1, i32 noundef %i.anl, i32 noundef %i.ann)
  %i.ano = getelementptr inbounds nuw i8, ptr %1, i64 724
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !396
  %i.anq = getelementptr inbounds nuw i8, ptr %2, i64 724
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !396
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.418, i32 noundef -1, i32 noundef %i.anp, i32 noundef %i.anr)
  %i.ans = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.ant = load float, ptr %i.ans, align 8, !tbaa !397
  %i.anu = getelementptr inbounds nuw i8, ptr %2, i64 728
  %i.anv = load float, ptr %i.anu, align 8, !tbaa !397
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.419, i32 noundef -1, float noundef %i.ant, float noundef %i.anv, float noundef %3, float noundef %4)
  %i.anw = getelementptr inbounds nuw i8, ptr %1, i64 732
  %i.anx = load float, ptr %i.anw, align 4, !tbaa !398
  %i.any = getelementptr inbounds nuw i8, ptr %2, i64 732
  %i.anz = load float, ptr %i.any, align 4, !tbaa !398
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.420, i32 noundef -1, float noundef %i.anx, float noundef %i.anz, float noundef %3, float noundef %4)
  %i.aoa = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.aob = load float, ptr %i.aoa, align 8, !tbaa !399
  %i.aoc = getelementptr inbounds nuw i8, ptr %2, i64 736
  %i.aod = load float, ptr %i.aoc, align 8, !tbaa !399
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.421, i32 noundef -1, float noundef %i.aob, float noundef %i.aod, float noundef %3, float noundef %4)
  %i.aoe = getelementptr inbounds nuw i8, ptr %1, i64 740
  %i.aof = load float, ptr %i.aoe, align 4, !tbaa !400
  %i.aog = getelementptr inbounds nuw i8, ptr %2, i64 740
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !400
  tail call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.422, i32 noundef -1, float noundef %i.aof, float noundef %i.aoh, float noundef %3, float noundef %4)
  %i.aoi = getelementptr inbounds nuw i8, ptr %1, i64 744 ; 3 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %2, i64 744 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.aok = load i32, ptr %i.aoi, align 8, !tbaa !401
  %i.aol = load i32, ptr %i.aoj, align 8, !tbaa !401
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.510, i32 noundef -1, i32 noundef %i.aok, i32 noundef %i.aol)
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 752 ; 3 uses
  %i.aon = load i32, ptr %i.aom, align 8, !tbaa !412
  %i.aoo = getelementptr inbounds nuw i8, ptr %2, i64 752 ; 3 uses
  %i.aop = load i32, ptr %i.aoo, align 8, !tbaa !412
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.511, i32 noundef -1, i32 noundef %i.aon, i32 noundef %i.aop)
  %i.aoq = getelementptr inbounds nuw i8, ptr %1, i64 756 ; 4 uses
  %i.aor = load i32, ptr %i.aoq, align 4, !tbaa !414
  %i.aos = getelementptr inbounds nuw i8, ptr %2, i64 756 ; 2 uses
  %i.aot = load i32, ptr %i.aos, align 4, !tbaa !414
  tail call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.512, i32 noundef -1, i32 noundef %i.aor, i32 noundef %i.aot)
  %i.aou = load i32, ptr %i.aoj, align 8, !tbaa !277
  %i.aov = load i32, ptr %i.aoi, align 8, !tbaa !277
  %i.aow = tail call i32 @llvm.smin.i32(i32 %i.aou, i32 %i.aov)
  %i.aox = icmp sgt i32 %i.aow, 0
  br i1 %i.aox, label %.lr.ph139.i, label %._crit_edge.i480

.lr.ph139.i:                                      ; preds = %_ZL13cmp_awhParamsP8_IO_FILERKN3gmx9AwhParamsES4_ff.exit
  %i.aoy = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.aoz = getelementptr inbounds nuw i8, ptr %2, i64 760
  %i.apa = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.apb = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.apc = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.apd = getelementptr inbounds nuw i8, ptr %2, i64 808
  %i.ape = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.apf = getelementptr inbounds nuw i8, ptr %2, i64 776
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 784 ; 4 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %2, i64 784 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.apj = getelementptr inbounds nuw i8, ptr %2, i64 792
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 800
  %i.apl = getelementptr inbounds nuw i8, ptr %2, i64 800
  br label %bb.ae

._crit_edge.i480:                                 ; preds = %.loopexit136.i, %_ZL13cmp_awhParamsP8_IO_FILERKN3gmx9AwhParamsES4_ff.exit
  %i.apm = load i32, ptr %i.aoq, align 4, !tbaa !414 ; 3 uses
  %i.apn = load i32, ptr %i.aos, align 4, !tbaa !414
  %i.apo = icmp eq i32 %i.apm, %i.apn
  %i.app = icmp sgt i32 %i.apm, 0
  %or.cond.i481 = and i1 %i.app, %i.apo
  br i1 %or.cond.i481, label %.preheader134.lr.ph.i, label %.loopexit.i

.preheader134.lr.ph.i:                            ; preds = %._crit_edge.i480
  %i.apq = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.apr = getelementptr inbounds nuw i8, ptr %2, i64 848
  br label %.preheader134.i

bb.ae:                                            ; preds = %.loopexit136.i, %.lr.ph139.i
  %indvars.iv148.i = phi i64 [ 0, %.lr.ph139.i ], [ %indvars.iv.next149.i, %.loopexit136.i ] ; 20 uses
  %i.aps = load ptr, ptr %i.aoy, align 8, !tbaa !402
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.aps, i64 %indvars.iv148.i
  %i.apu = load float, ptr %i.apt, align 4, !tbaa !127
  %i.apv = load ptr, ptr %i.aoz, align 8, !tbaa !402
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.apv, i64 %indvars.iv148.i
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !127
  %i.apy = trunc nuw nsw i64 %indvars.iv148.i to i32 ; 6 uses
  call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.513, i32 noundef %i.apy, float noundef %i.apu, float noundef %i.apx, float noundef %3, float noundef %4)
  %i.apz = load ptr, ptr %i.apa, align 8, !tbaa !403
  %i.aqa = getelementptr inbounds nuw [4 x i8], ptr %i.apz, i64 %indvars.iv148.i
  %i.aqb = load float, ptr %i.aqa, align 4, !tbaa !127
  %i.aqc = load ptr, ptr %i.apb, align 8, !tbaa !403
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.aqc, i64 %indvars.iv148.i
  %i.aqe = load float, ptr %i.aqd, align 4, !tbaa !127
  call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.514, i32 noundef %i.apy, float noundef %i.aqb, float noundef %i.aqe, float noundef %3, float noundef %4)
  %i.aqf = load ptr, ptr %i.apc, align 8, !tbaa !404
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %i.aqf, i64 %indvars.iv148.i
  %i.aqh = load float, ptr %i.aqg, align 4, !tbaa !127
  %i.aqi = load ptr, ptr %i.apd, align 8, !tbaa !404
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.aqi, i64 %indvars.iv148.i
  %i.aqk = load float, ptr %i.aqj, align 4, !tbaa !127
  call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull @.str.515, i32 noundef %i.apy, float noundef %i.aqh, float noundef %i.aqk, float noundef %3, float noundef %4)
  %i.aql = load ptr, ptr %i.ape, align 8, !tbaa !405
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.aql, i64 %indvars.iv148.i
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !407
  %i.aqo = load ptr, ptr %i.apf, align 8, !tbaa !405
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.aqo, i64 %indvars.iv148.i
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !407
  call void @_Z7cmpEnumI18SimulatedAnnealingEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef nonnull @.str.516, i32 noundef %i.aqn, i32 noundef %i.aqq)
  %i.aqr = load ptr, ptr %i.apg, align 8, !tbaa !408
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %i.aqr, i64 %indvars.iv148.i
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !277
  %i.aqu = load ptr, ptr %i.aph, align 8, !tbaa !408
  %i.aqv = getelementptr inbounds nuw [4 x i8], ptr %i.aqu, i64 %indvars.iv148.i
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !277
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.517, i32 noundef %i.apy, i32 noundef %i.aqt, i32 noundef %i.aqw)
  %i.aqx = load ptr, ptr %i.apg, align 8, !tbaa !408
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.aqx, i64 %indvars.iv148.i
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !277
  %i.ara = load ptr, ptr %i.aph, align 8, !tbaa !408
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %indvars.iv148.i
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !277
  %i.ard = icmp eq i32 %i.aqz, %i.arc
  br i1 %i.ard, label %bb.af, label %.loopexit136.i

bb.af:                                            ; preds = %bb.ae
  %i.are = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.518, i32 noundef %i.apy) #23 ; 0 uses
  %i.arf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.519, i32 noundef %i.apy) #23 ; 0 uses
  %i.arg = load ptr, ptr %i.apg, align 8, !tbaa !408
  %i.arh = getelementptr inbounds nuw [4 x i8], ptr %i.arg, i64 %indvars.iv148.i
  %i.ari = load i32, ptr %i.arh, align 4, !tbaa !277
  %i.arj = icmp sgt i32 %i.ari, 0
  br i1 %i.arj, label %.lr.ph.i482, label %.loopexit136.i

.lr.ph.i482:                                      ; preds = %bb.af, %.lr.ph.i482
  %indvars.iv.i483 = phi i64 [ %indvars.iv.next.i484, %.lr.ph.i482 ], [ 0, %bb.af ] ; 6 uses
  %i.ark = load ptr, ptr %i.api, align 8, !tbaa !409
  %i.arl = getelementptr inbounds nuw [8 x i8], ptr %i.ark, i64 %indvars.iv148.i
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !190
  %i.arn = getelementptr inbounds nuw [4 x i8], ptr %i.arm, i64 %indvars.iv.i483
  %i.aro = load float, ptr %i.arn, align 4, !tbaa !127
  %i.arp = load ptr, ptr %i.apj, align 8, !tbaa !409
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %i.arp, i64 %indvars.iv148.i
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !190
  %i.ars = getelementptr inbounds nuw [4 x i8], ptr %i.arr, i64 %indvars.iv.i483
  %i.art = load float, ptr %i.ars, align 4, !tbaa !127
  %i.aru = trunc nuw nsw i64 %indvars.iv.i483 to i32 ; 2 uses
  call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.aru, float noundef %i.aro, float noundef %i.art, float noundef %3, float noundef %4)
  %i.arv = load ptr, ptr %i.apk, align 8, !tbaa !410
  %i.arw = getelementptr inbounds nuw [8 x i8], ptr %i.arv, i64 %indvars.iv148.i
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !190
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %indvars.iv.i483
  %i.arz = load float, ptr %i.ary, align 4, !tbaa !127
  %i.asa = load ptr, ptr %i.apl, align 8, !tbaa !410
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %indvars.iv148.i
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !190
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %i.asc, i64 %indvars.iv.i483
  %i.ase = load float, ptr %i.asd, align 4, !tbaa !127
  call void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %i.aru, float noundef %i.arz, float noundef %i.ase, float noundef %3, float noundef %4)
  %indvars.iv.next.i484 = add nuw nsw i64 %indvars.iv.i483, 1 ; 2 uses
  %i.asf = load ptr, ptr %i.apg, align 8, !tbaa !408
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asf, i64 %indvars.iv148.i
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !277
  %i.asi = sext i32 %i.ash to i64
  %i.asj = icmp slt i64 %indvars.iv.next.i484, %i.asi
  br i1 %i.asj, label %.lr.ph.i482, label %.loopexit136.i, !llvm.loop !592

.loopexit136.i:                                   ; preds = %.lr.ph.i482, %bb.af, %bb.ae
  %indvars.iv.next149.i = add nuw nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %i.ask = load i32, ptr %i.aoj, align 8, !tbaa !277
  %i.asl = load i32, ptr %i.aoi, align 8, !tbaa !277
  %i.asm = call i32 @llvm.smin.i32(i32 %i.ask, i32 %i.asl)
  %i.asn = sext i32 %i.asm to i64
  %i.aso = icmp slt i64 %indvars.iv.next149.i, %i.asn
  br i1 %i.aso, label %bb.ae, label %._crit_edge.i480, !llvm.loop !593

.preheader134.i:                                  ; preds = %._crit_edge142.i, %.preheader134.lr.ph.i
  %6 = phi i32 [ %i.apm, %.preheader134.lr.ph.i ], [ %8, %._crit_edge142.i ] ; 2 uses
  %.0124143.i = phi i32 [ 0, %.preheader134.lr.ph.i ], [ %i.asp, %._crit_edge142.i ] ; 5 uses
  %7 = icmp slt i32 %.0124143.i, %6
  br i1 %7, label %.lr.ph141.i, label %._crit_edge142.i

._crit_edge142.i:                                 ; preds = %.lr.ph141.i, %.preheader134.i
  %8 = phi i32 [ %6, %.preheader134.i ], [ %i.atd, %.lr.ph141.i ] ; 2 uses
  %i.asp = add nuw nsw i32 %.0124143.i, 1         ; 2 uses
  %i.asq = icmp slt i32 %i.asp, %8
  br i1 %i.asq, label %.preheader134.i, label %.loopexit.i, !llvm.loop !594

.lr.ph141.i:                                      ; preds = %.preheader134.i, %.lr.ph141.i
  %.0123140.i = phi i32 [ %i.atc, %.lr.ph141.i ], [ %.0124143.i, %.preheader134.i ] ; 3 uses
  %i.asr = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.520, i32 noundef %.0124143.i) #23 ; 0 uses
  %i.ass = load ptr, ptr %i.apq, align 8, !tbaa !415
  %i.ast = load i32, ptr %i.aoq, align 4, !tbaa !414
  %i.asu = mul nsw i32 %i.ast, %.0124143.i
  %i.asv = add nsw i32 %i.asu, %.0123140.i
  %i.asw = sext i32 %i.asv to i64                 ; 2 uses
  %i.asx = getelementptr inbounds [4 x i8], ptr %i.ass, i64 %i.asw
  %i.asy = load i32, ptr %i.asx, align 4, !tbaa !277
  %i.asz = load ptr, ptr %i.apr, align 8, !tbaa !415
  %i.ata = getelementptr inbounds [4 x i8], ptr %i.asz, i64 %i.asw
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !277
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.0123140.i, i32 noundef %i.asy, i32 noundef %i.atb)
  %i.atc = add nuw nsw i32 %.0123140.i, 1         ; 2 uses
  %i.atd = load i32, ptr %i.aoq, align 4, !tbaa !414 ; 2 uses
  %i.ate = icmp slt i32 %i.atc, %i.atd
  br i1 %i.ate, label %.lr.ph141.i, label %._crit_edge142.i, !llvm.loop !595

.loopexit.i:                                      ; preds = %._crit_edge142.i, %._crit_edge.i480
  %i.atf = getelementptr inbounds nuw i8, ptr %1, i64 816 ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %1, i64 824 ; 2 uses
  %i.ath = load ptr, ptr %i.atg, align 8, !tbaa !267
  %i.ati = load ptr, ptr %i.atf, align 8, !tbaa !139
  %i.atj = ptrtoint ptr %i.ath to i64
  %i.atk = ptrtoint ptr %i.ati to i64
  %i.atl = sub i64 %i.atj, %i.atk
  %i.atm = sdiv exact i64 %i.atl, 12
  %i.atn = trunc i64 %i.atm to i32
  %i.ato = getelementptr inbounds nuw i8, ptr %2, i64 816 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %2, i64 824 ; 2 uses
  %i.atq = load ptr, ptr %i.atp, align 8, !tbaa !267
  %i.atr = load ptr, ptr %i.ato, align 8, !tbaa !139
  %i.ats = ptrtoint ptr %i.atq to i64
  %i.att = ptrtoint ptr %i.atr to i64
  %i.atu = sub i64 %i.ats, %i.att
  %i.atv = sdiv exact i64 %i.atu, 12
  %i.atw = trunc i64 %i.atv to i32
  call void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef %0, ptr noundef nonnull @.str.521, i32 noundef -1, i32 noundef %i.atn, i32 noundef %i.atw)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.loopexit.i
  %.0122.i = phi i64 [ 0, %.loopexit.i ], [ %i.aut, %bb.ah ] ; 5 uses
  %i.atx = load ptr, ptr %i.atg, align 8, !tbaa !267
  %i.aty = load ptr, ptr %i.atf, align 8, !tbaa !139 ; 2 uses
  %i.atz = ptrtoint ptr %i.atx to i64
  %i.aua = ptrtoint ptr %i.aty to i64
  %i.aub = sub i64 %i.atz, %i.aua
  %i.auc = sdiv exact i64 %i.aub, 12
  %i.aud = load ptr, ptr %i.atp, align 8, !tbaa !267
  %i.aue = load ptr, ptr %i.ato, align 8, !tbaa !139 ; 2 uses
  %i.auf = ptrtoint ptr %i.aud to i64
  %i.aug = ptrtoint ptr %i.aue to i64
  %i.auh = sub i64 %i.auf, %i.aug
  %i.aui = sdiv exact i64 %i.auh, 12
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.aui, i64 %i.auc)
  %i.auj = icmp ult i64 %.0122.i, %.sroa.speculated.i
  br i1 %i.auj, label %bb.ah, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ag
  %i.auk = load i32, ptr %i.aoo, align 8, !tbaa !277
  %i.aul = load i32, ptr %i.aom, align 8, !tbaa !277
  %i.aum = call i32 @llvm.smin.i32(i32 %i.auk, i32 %i.aul)
  %i.aun = icmp sgt i32 %i.aum, 0
  br i1 %i.aun, label %.lr.ph145.i, label %_ZL11cmp_grpoptsP8_IO_FILEPK9t_grpoptsS3_ff.exit

.lr.ph145.i:                                      ; preds = %.preheader.i
  %i.auo = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.aup = getelementptr inbounds nuw i8, ptr %2, i64 840
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.auq = trunc i64 %.0122.i to i32
  %i.aur = getelementptr inbounds nuw [12 x i8], ptr %i.aty, i64 %.0122.i
  %i.aus = getelementptr inbounds nuw [12 x i8], ptr %i.aue, i64 %.0122.i
  call void @_Z8cmp_rvecP8_IO_FILEPKciPKfS4_ff(ptr noundef %0, ptr noundef nonnull @.str.522, i32 noundef %i.auq, ptr noundef nonnull %i.aur, ptr noundef nonnull %i.aus, float noundef %3, float noundef %4)
  %i.aut = add nuw i64 %.0122.i, 1
  br label %bb.ag, !llvm.loop !596

bb.ai:                                            ; preds = %bb.ai, %.lr.ph145.i
  %indvars.iv151.i = phi i64 [ 0, %.lr.ph145.i ], [ %indvars.iv.next152.i, %bb.ai ] ; 4 uses
  %i.auu = load ptr, ptr %i.auo, align 8, !tbaa !413
  %i.auv = getelementptr inbounds nuw [12 x i8], ptr %i.auu, i64 %indvars.iv151.i
  %i.auw = load ptr, ptr %i.aup, align 8, !tbaa !413
  %i.aux = getelementptr inbounds nuw [12 x i8], ptr %i.auw, i64 %indvars.iv151.i
  %i.auy = trunc nuw nsw i64 %indvars.iv151.i to i32
  call void @_Z8cmp_ivecP8_IO_FILEPKciPKiS4_(ptr noundef %0, ptr noundef nonnull @.str.523, i32 noundef %i.auy, ptr noundef %i.auv, ptr noundef %i.aux)
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.auz = load i32, ptr %i.aoo, align 8, !tbaa !277
  %i.ava = load i32, ptr %i.aom, align 8, !tbaa !277
  %i.avb = call i32 @llvm.smin.i32(i32 %i.auz, i32 %i.ava)
  %i.avc = sext i32 %i.avb to i64
  %i.avd = icmp slt i64 %indvars.iv.next152.i, %i.avc
  br i1 %i.avd, label %bb.ai, label %_ZL11cmp_grpoptsP8_IO_FILEPK9t_grpoptsS3_ff.exit, !llvm.loop !597

_ZL11cmp_grpoptsP8_IO_FILEPK9t_grpoptsS3_ff.exit: ; preds = %bb.ai, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN3gmx10TextWriterC1EP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %0)
  %i.ave = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.avf = load ptr, ptr %i.ave, align 8, !tbaa !189
  %i.avg = getelementptr inbounds nuw i8, ptr %2, i64 872
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !189
  invoke void @_ZN3gmx20compareKeyValueTreesEPNS_10TextWriterERKNS_18KeyValueTreeObjectES4_ff(ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(72) %i.avf, ptr noundef nonnull align 8 dereferenceable(72) %i.avh, float noundef %3, float noundef %4)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %_ZL11cmp_grpoptsP8_IO_FILEPK9t_grpoptsS3_ff.exit
  call void @_ZN3gmx10TextWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.ak:                                            ; preds = %_ZL11cmp_grpoptsP8_IO_FILEPK9t_grpoptsS3_ff.exit
  %i.avi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx10TextWriterD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.avi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z7cmpEnumI20IntegrationAlgorithmEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.423, ptr noundef %1) #23 ; 0 uses
  %i.b = tail call noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef %2)
  %fputs = tail call i32 @fputs(ptr %i.b, ptr %0) ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.425, i64 3, i64 1, ptr %0) ; 0 uses
  %i.c = tail call noundef ptr @_Z17enumValueToString20IntegrationAlgorithm(i32 noundef %3)
  %fputs10 = tail call i32 @fputs(ptr %i.c, ptr %0) ; 0 uses
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @.str.426, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_Z9cmp_int64P8_IO_FILEPKcll(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @_Z7cmp_intP8_IO_FILEPKciii(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_Z8cmp_realP8_IO_FILEPKciffff(ptr noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_Z8cmp_boolP8_IO_FILEPKcibb(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z7cmpEnumI12CutoffSchemeEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.423, ptr noundef %1) #23 ; 0 uses
  %i.b = tail call noundef ptr @_Z17enumValueToString12CutoffScheme(i32 noundef %2)
  %fputs = tail call i32 @fputs(ptr %i.b, ptr %0) ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.425, i64 3, i64 1, ptr %0) ; 0 uses
  %i.c = tail call noundef ptr @_Z17enumValueToString12CutoffScheme(i32 noundef %3)
  %fputs10 = tail call i32 @fputs(ptr %i.c, ptr %0) ; 0 uses
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @.str.426, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z7cmpEnumI19ComRemovalAlgorithmEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.423, ptr noundef %1) #23 ; 0 uses
  %i.b = tail call noundef ptr @_Z17enumValueToString19ComRemovalAlgorithm(i32 noundef %2)
  %fputs = tail call i32 @fputs(ptr %i.b, ptr %0) ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.425, i64 3, i64 1, ptr %0) ; 0 uses
  %i.c = tail call noundef ptr @_Z17enumValueToString19ComRemovalAlgorithm(i32 noundef %3)
  %fputs10 = tail call i32 @fputs(ptr %i.c, ptr %0) ; 0 uses
  %fwrite11 = tail call i64 @fwrite(ptr nonnull @.str.426, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_Z10cmp_doubleP8_IO_FILEPKcidddd(ptr noundef, ptr noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z7cmpEnumI13EwaldGeometryEvP8_IO_FILEPKcT_S5_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat {
bb.a:
  %.not = icmp eq i32 %2, %3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.423, ptr noundef %1) #23 ; 0 uses
end_hunk_0
