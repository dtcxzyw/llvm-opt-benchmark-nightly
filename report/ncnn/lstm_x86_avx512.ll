Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !76
  %i.aly = getelementptr inbounds nuw i8, ptr %.617252096, i64 31
  store i8 %i.alx, ptr %i.aly, align 1, !tbaa !76
  %i.alz = getelementptr inbounds nuw i8, ptr %.617252096, i64 32 ; 2 uses
  %indvars.iv.next2257 = add nuw nsw i64 %indvars.iv2256, 2 ; 3 uses
  %i.ama = or disjoint i64 %indvars.iv.next2257, 1 ; 2 uses
  %i.amb = load i32, ptr %13, align 4, !tbaa !45  ; 2 uses
  %i.amc = trunc nuw i64 %i.ama to i32
  %i.amd = icmp sgt i32 %i.amb, %i.amc
  br i1 %i.amd, label %.lr.ph2098, label %.preheader2060.loopexit, !llvm.loop !388

.lr.ph2103:                                       ; preds = %.lr.ph2103.preheader, %.lr.ph2103
  %indvars.iv2259 = phi i64 [ %i.aig, %.lr.ph2103.preheader ], [ %indvars.iv.next2260, %.lr.ph2103 ] ; 17 uses
  %.717262101 = phi ptr [ %.61725.lcssa, %.lr.ph2103.preheader ], [ %i.anz, %.lr.ph2103 ] ; 17 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv2259
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !76
  store i8 %i.amf, ptr %.717262101, align 1, !tbaa !76
  %i.amg = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv2259
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !76
  %i.ami = getelementptr inbounds nuw i8, ptr %.717262101, i64 1
  store i8 %i.amh, ptr %i.ami, align 1, !tbaa !76
  %i.amj = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv2259
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !76
  %i.aml = getelementptr inbounds nuw i8, ptr %.717262101, i64 2
  store i8 %i.amk, ptr %i.aml, align 1, !tbaa !76
  %i.amm = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv2259
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !76
  %i.amo = getelementptr inbounds nuw i8, ptr %.717262101, i64 3
  store i8 %i.amn, ptr %i.amo, align 1, !tbaa !76
  %i.amp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv2259
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !76
  %i.amr = getelementptr inbounds nuw i8, ptr %.717262101, i64 4
  store i8 %i.amq, ptr %i.amr, align 1, !tbaa !76
  %i.ams = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv2259
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !76
  %i.amu = getelementptr inbounds nuw i8, ptr %.717262101, i64 5
  store i8 %i.amt, ptr %i.amu, align 1, !tbaa !76
  %i.amv = getelementptr inbounds nuw i8, ptr %i.hb, i64 %indvars.iv2259
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !76
  %i.amx = getelementptr inbounds nuw i8, ptr %.717262101, i64 6
  store i8 %i.amw, ptr %i.amx, align 1, !tbaa !76
  %i.amy = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv2259
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !76
  %i.ana = getelementptr inbounds nuw i8, ptr %.717262101, i64 7
  store i8 %i.amz, ptr %i.ana, align 1, !tbaa !76
  %i.anb = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv2259
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !76
  %i.and = getelementptr inbounds nuw i8, ptr %.717262101, i64 8
  store i8 %i.anc, ptr %i.and, align 1, !tbaa !76
  %i.ane = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv2259
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !76
  %i.ang = getelementptr inbounds nuw i8, ptr %.717262101, i64 9
  store i8 %i.anf, ptr %i.ang, align 1, !tbaa !76
  %i.anh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv2259
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !76
  %i.anj = getelementptr inbounds nuw i8, ptr %.717262101, i64 10
  store i8 %i.ani, ptr %i.anj, align 1, !tbaa !76
  %i.ank = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv2259
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !76
  %i.anm = getelementptr inbounds nuw i8, ptr %.717262101, i64 11
  store i8 %i.anl, ptr %i.anm, align 1, !tbaa !76
  %i.ann = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv2259
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !76
  %i.anp = getelementptr inbounds nuw i8, ptr %.717262101, i64 12
  store i8 %i.ano, ptr %i.anp, align 1, !tbaa !76
  %i.anq = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv2259
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !76
  %i.ans = getelementptr inbounds nuw i8, ptr %.717262101, i64 13
  store i8 %i.anr, ptr %i.ans, align 1, !tbaa !76
  %i.ant = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv2259
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !76
  %i.anv = getelementptr inbounds nuw i8, ptr %.717262101, i64 14
  store i8 %i.anu, ptr %i.anv, align 1, !tbaa !76
  %i.anw = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv2259
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !76
  %i.any = getelementptr inbounds nuw i8, ptr %.717262101, i64 15
  store i8 %i.anx, ptr %i.any, align 1, !tbaa !76
  %i.anz = getelementptr inbounds nuw i8, ptr %.717262101, i64 16
  %indvars.iv.next2260 = add nuw nsw i64 %indvars.iv2259, 1 ; 2 uses
  %i.aoa = load i32, ptr %13, align 4, !tbaa !45
  %i.aob = trunc nuw i64 %indvars.iv.next2260 to i32
  %i.aoc = icmp sgt i32 %i.aoa, %i.aob
  br i1 %i.aoc, label %.lr.ph2103, label %._crit_edge, !llvm.loop !389

._crit_edge:                                      ; preds = %.lr.ph2103, %.preheader2060
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv2262
  %i.aoe = load <4 x float>, ptr %i.aod, align 1, !tbaa !76
  %i.aof = load i32, ptr %11, align 4, !tbaa !45  ; 3 uses
  %i.aog = sext i32 %i.aof to i64                 ; 2 uses
  %i.aoh = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aog
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %indvars.iv2262
  %i.aoj = load <4 x float>, ptr %i.aoi, align 1, !tbaa !76
  %i.aok = shl nsw i32 %i.aof, 1
  %i.aol = sext i32 %i.aok to i64                 ; 2 uses
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aol
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %indvars.iv2262
  %i.aoo = load <4 x float>, ptr %i.aon, align 1, !tbaa !76
  %i.aop = mul nsw i32 %i.aof, 3
  %i.aoq = sext i32 %i.aop to i64                 ; 2 uses
  %i.aor = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aoq
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv2262
  %i.aot = load <4 x float>, ptr %i.aos, align 1, !tbaa !76
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv2262
  %i.aov = load <4 x float>, ptr %i.aou, align 1, !tbaa !76
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aog
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.aow, i64 %indvars.iv2262
  %i.aoy = load <4 x float>, ptr %i.aox, align 1, !tbaa !76
  %i.aoz = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aol
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %indvars.iv2262
  %i.apb = load <4 x float>, ptr %i.apa, align 1, !tbaa !76
  %i.apc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aoq
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %indvars.iv2262
  %i.ape = load <4 x float>, ptr %i.apd, align 1, !tbaa !76
  %i.apf = shufflevector <4 x float> %i.aoe, <4 x float> %i.aoj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apg = shufflevector <4 x float> %i.aoo, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aph = shufflevector <16 x float> %i.apf, <16 x float> %i.apg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.api = shufflevector <4 x float> %i.aot, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apj = shufflevector <16 x float> %i.aph, <16 x float> %i.api, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.apk = shufflevector <4 x float> %i.aov, <4 x float> %i.aoy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apl = shufflevector <4 x float> %i.apb, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apm = shufflevector <16 x float> %i.apk, <16 x float> %i.apl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apn = shufflevector <4 x float> %i.ape, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apo = shufflevector <16 x float> %i.apm, <16 x float> %i.apn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.app = fdiv fast <16 x float> splat (float 1.000000e+00), %i.apj
  %i.apq = fdiv fast <16 x float> splat (float 1.000000e+00), %i.apo
  store <16 x float> %i.app, ptr %i.hs, align 1, !tbaa !76
  %i.apr = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  store <16 x float> %i.apq, ptr %i.apr, align 1, !tbaa !76
  %indvars.iv.next2263 = add nuw nsw i64 %indvars.iv2262, 4 ; 3 uses
  %i.aps = or disjoint i64 %indvars.iv.next2263, 3
  %i.apt = load i32, ptr %11, align 4, !tbaa !45  ; 2 uses
  %i.apu = sext i32 %i.apt to i64
  %i.apv = icmp slt i64 %i.aps, %i.apu
  br i1 %i.apv, label %bb.c, label %.preheader2068.loopexit, !llvm.loop !390

.preheader2067.loopexit:                          ; preds = %._crit_edge2147
  %i.apw = trunc nuw nsw i64 %indvars.iv.next2292 to i32
  br label %.preheader2067

.preheader2067:                                   ; preds = %.preheader2067.loopexit, %.preheader2068
  %i.apx = phi i32 [ %i.dc, %.preheader2068 ], [ %i.bkw, %.preheader2067.loopexit ] ; 3 uses
  %.11731.lcssa = phi ptr [ %.01730.lcssa, %.preheader2068 ], [ %i.arc, %.preheader2067.loopexit ]
  %.11728.lcssa = phi i32 [ %.01727.lcssa, %.preheader2068 ], [ %i.apw, %.preheader2067.loopexit ] ; 2 uses
  %i.apy = icmp slt i32 %.11728.lcssa, %i.apx
  br i1 %i.apy, label %.lr.ph2194, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph2194:                                       ; preds = %.preheader2067
  %i.apz = mul i64 %i.am, %i.ap                   ; 4 uses
  %i.aqa = mul i64 %i.au, %i.ax                   ; 4 uses
  %i.aqb = mul i64 %i.by, %i.cb
  %i.aqc = mul i64 %i.cm, %i.cp
  %i.aqd = zext nneg i32 %.11728.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph2150, %._crit_edge2147
  %indvars.iv2291 = phi i64 [ %i.dj, %.lr.ph2150 ], [ %indvars.iv.next2292, %._crit_edge2147 ] ; 10 uses
  %indvars.iv2289 = phi i64 [ %i.dk, %.lr.ph2150 ], [ %indvars.iv.next2290, %._crit_edge2147 ] ; 9 uses
  %i.aqe = phi i32 [ %i.dc, %.lr.ph2150 ], [ %i.bkw, %._crit_edge2147 ] ; 3 uses
  %.117312148 = phi ptr [ %.01730.lcssa, %.lr.ph2150 ], [ %i.arc, %._crit_edge2147 ] ; 9 uses
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv2291
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !63
  store float %i.aqg, ptr %.117312148, align 4, !tbaa !63
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv2291
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !63
  %i.aqj = getelementptr inbounds nuw i8, ptr %.117312148, i64 4
  store float %i.aqi, ptr %i.aqj, align 4, !tbaa !63
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv2291
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !63
  %i.aqm = getelementptr inbounds nuw i8, ptr %.117312148, i64 8
  store float %i.aql, ptr %i.aqm, align 4, !tbaa !63
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv2291
  %i.aqo = load float, ptr %i.aqn, align 4, !tbaa !63
  %i.aqp = getelementptr inbounds nuw i8, ptr %.117312148, i64 12
  store float %i.aqo, ptr %i.aqp, align 4, !tbaa !63
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv2289
  %i.aqr = load float, ptr %i.aqq, align 4, !tbaa !63
  %i.aqs = getelementptr inbounds nuw i8, ptr %.117312148, i64 16
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !63
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv2289
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !63
  %i.aqv = getelementptr inbounds nuw i8, ptr %.117312148, i64 20
  store float %i.aqu, ptr %i.aqv, align 4, !tbaa !63
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv2289
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !63
  %i.aqy = getelementptr inbounds nuw i8, ptr %.117312148, i64 24
  store float %i.aqx, ptr %i.aqy, align 4, !tbaa !63
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv2289
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !63
  %i.arb = getelementptr inbounds nuw i8, ptr %.117312148, i64 28
  store float %i.ara, ptr %i.arb, align 4, !tbaa !63
  %i.arc = getelementptr inbounds nuw i8, ptr %.117312148, i64 32 ; 2 uses
  %i.ard = mul i64 %i.df, %indvars.iv2291
  %i.are = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ard ; 8 uses
  %i.arf = trunc nuw nsw i64 %indvars.iv2291 to i32 ; 8 uses
  %i.arg = add nuw nsw i32 %i.aqe, %i.arf         ; 2 uses
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = mul i64 %i.df, %i.arh
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ari ; 8 uses
  %i.ark = shl nuw nsw i32 %i.aqe, 1
  %i.arl = add nuw nsw i32 %i.ark, %i.arf         ; 2 uses
  %14 = zext nneg i32 %i.arl to i64               ; 2 uses
  %i.arm = mul i64 %i.df, %14
  %i.arn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.arm ; 8 uses
  %i.aro = mul nuw nsw i32 %i.aqe, 3
  %i.arp = add nuw nsw i32 %i.aro, %i.arf         ; 2 uses
  %15 = zext nneg i32 %i.arp to i64               ; 2 uses
  %i.arq = mul i64 %i.df, %15
  %i.arr = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.arq ; 8 uses
  %i.ars = mul i64 %i.df, %indvars.iv2289
  %i.art = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ars ; 8 uses
  %i.aru = add nuw nsw i32 %i.arg, 1
  %i.arv = sext i32 %i.aru to i64                 ; 2 uses
  %i.arw = mul i64 %i.df, %i.arv
  %i.arx = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.arw ; 8 uses
  %i.ary = or disjoint i32 %i.arl, 1
  %16 = zext nneg i32 %i.ary to i64               ; 2 uses
  %i.arz = mul i64 %i.df, %16
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.arz ; 8 uses
  %i.asb = add nuw nsw i32 %i.arp, 1
  %17 = zext nneg i32 %i.asb to i64               ; 2 uses
  %i.asc = mul i64 %i.df, %17
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.asc ; 8 uses
  %i.ase = mul i64 %i.dg, %indvars.iv2291
  %i.asf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ase ; 8 uses
  %i.asg = mul i64 %i.dg, %i.arh
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asg ; 8 uses
  %i.asi = mul i64 %i.dg, %14
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asi ; 8 uses
  %i.ask = mul i64 %i.dg, %15
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ask ; 8 uses
  %i.asm = mul i64 %i.dg, %indvars.iv2289
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asm ; 8 uses
  %i.aso = mul i64 %i.dg, %i.arv
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aso ; 8 uses
  %i.asq = mul i64 %i.dg, %16
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asq ; 8 uses
  %i.ass = mul i64 %i.dg, %17
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ass ; 8 uses
  %i.asu = lshr i32 %i.arf, 2
  %i.asv = lshr exact i32 %i.arf, 1
  %i.asw = and i32 %i.asv, 1
  %i.asx = add nuw nsw i32 %i.asw, %i.asu
  %i.asy = zext nneg i32 %i.asx to i64            ; 2 uses
  %i.asz = mul i64 %i.dh, %i.asy
  %i.ata = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.asz ; 2 uses
  %i.atb = mul i64 %i.di, %i.asy
  %i.atc = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.atb ; 16 uses
  %i.atd = load i32, ptr %12, align 4, !tbaa !45  ; 2 uses
  %i.ate = icmp sgt i32 %i.atd, 7
  br i1 %i.ate, label %.lr.ph2112, label %.preheader2059

.preheader2059.loopexit:                          ; preds = %.lr.ph2112
  %i.atf = trunc nuw nsw i64 %indvars.iv.next2266 to i32
  br label %.preheader2059

.preheader2059:                                   ; preds = %.preheader2059.loopexit, %bb.d
  %i.atg = phi i32 [ %i.atd, %bb.d ], [ %i.auk, %.preheader2059.loopexit ] ; 2 uses
  %.01702.lcssa = phi ptr [ %i.ata, %bb.d ], [ %i.aui, %.preheader2059.loopexit ] ; 2 uses
  %.01694.lcssa = phi i32 [ 0, %bb.d ], [ %i.atf, %.preheader2059.loopexit ] ; 3 uses
  %i.ath = or disjoint i32 %.01694.lcssa, 3       ; 2 uses
  %i.ati = icmp slt i32 %i.ath, %i.atg
  br i1 %i.ati, label %.lr.ph2117.preheader, label %.preheader2058

.lr.ph2117.preheader:                             ; preds = %.preheader2059
  %i.atj = zext nneg i32 %.01694.lcssa to i64
  %i.atk = zext nneg i32 %i.ath to i64
  br label %.lr.ph2117

.lr.ph2112:                                       ; preds = %bb.d, %.lr.ph2112
  %indvars.iv2265 = phi i64 [ %indvars.iv.next2266, %.lr.ph2112 ], [ 0, %bb.d ] ; 9 uses
  %.017022109 = phi ptr [ %i.aui, %.lr.ph2112 ], [ %i.ata, %bb.d ] ; 9 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %i.are, i64 %indvars.iv2265
  %i.atm = load i64, ptr %i.atl, align 1, !tbaa !76
  store i64 %i.atm, ptr %.017022109, align 1, !tbaa !76
  %i.atn = getelementptr inbounds nuw i8, ptr %.017022109, i64 8
  %i.ato = getelementptr inbounds nuw i8, ptr %i.art, i64 %indvars.iv2265
  %i.atp = load i64, ptr %i.ato, align 1, !tbaa !76
  store i64 %i.atp, ptr %i.atn, align 1, !tbaa !76
  %i.atq = getelementptr inbounds nuw i8, ptr %.017022109, i64 16
  %i.atr = getelementptr inbounds nuw i8, ptr %i.arj, i64 %indvars.iv2265
  %i.ats = load i64, ptr %i.atr, align 1, !tbaa !76
  store i64 %i.ats, ptr %i.atq, align 1, !tbaa !76
  %i.att = getelementptr inbounds nuw i8, ptr %.017022109, i64 24
  %i.atu = getelementptr inbounds nuw i8, ptr %i.arx, i64 %indvars.iv2265
  %i.atv = load i64, ptr %i.atu, align 1, !tbaa !76
  store i64 %i.atv, ptr %i.att, align 1, !tbaa !76
  %i.atw = getelementptr inbounds nuw i8, ptr %.017022109, i64 32
  %i.atx = getelementptr inbounds nuw i8, ptr %i.arn, i64 %indvars.iv2265
  %i.aty = load i64, ptr %i.atx, align 1, !tbaa !76
  store i64 %i.aty, ptr %i.atw, align 1, !tbaa !76
  %i.atz = getelementptr inbounds nuw i8, ptr %.017022109, i64 40
  %i.aua = getelementptr inbounds nuw i8, ptr %i.asa, i64 %indvars.iv2265
  %i.aub = load i64, ptr %i.aua, align 1, !tbaa !76
  store i64 %i.aub, ptr %i.atz, align 1, !tbaa !76
  %i.auc = getelementptr inbounds nuw i8, ptr %.017022109, i64 48
  %i.aud = getelementptr inbounds nuw i8, ptr %i.arr, i64 %indvars.iv2265
  %i.aue = load i64, ptr %i.aud, align 1, !tbaa !76
  store i64 %i.aue, ptr %i.auc, align 1, !tbaa !76
  %i.auf = getelementptr inbounds nuw i8, ptr %.017022109, i64 56
  %i.aug = getelementptr inbounds nuw i8, ptr %i.asd, i64 %indvars.iv2265
  %i.auh = load i64, ptr %i.aug, align 1, !tbaa !76
  store i64 %i.auh, ptr %i.auf, align 1, !tbaa !76
  %i.aui = getelementptr inbounds nuw i8, ptr %.017022109, i64 64 ; 2 uses
  %indvars.iv.next2266 = add nuw nsw i64 %indvars.iv2265, 8 ; 3 uses
  %i.auj = or disjoint i64 %indvars.iv.next2266, 7
  %i.auk = load i32, ptr %12, align 4, !tbaa !45  ; 2 uses
  %i.aul = sext i32 %i.auk to i64
  %i.aum = icmp slt i64 %i.auj, %i.aul
  br i1 %i.aum, label %.lr.ph2112, label %.preheader2059.loopexit, !llvm.loop !391

.preheader2058.loopexit:                          ; preds = %.lr.ph2117
  %i.aun = trunc nuw nsw i64 %indvars.iv.next2269 to i32
  br label %.preheader2058

.preheader2058:                                   ; preds = %.preheader2058.loopexit, %.preheader2059
  %i.auo = phi i32 [ %i.atg, %.preheader2059 ], [ %i.ayp, %.preheader2058.loopexit ] ; 2 uses
  %.11703.lcssa = phi ptr [ %.01702.lcssa, %.preheader2059 ], [ %i.ayn, %.preheader2058.loopexit ] ; 2 uses
  %.11695.lcssa = phi i32 [ %.01694.lcssa, %.preheader2059 ], [ %i.aun, %.preheader2058.loopexit ] ; 3 uses
  %i.aup = or disjoint i32 %.11695.lcssa, 1       ; 2 uses
  %i.auq = icmp slt i32 %i.aup, %i.auo
  br i1 %i.auq, label %.lr.ph2122.preheader, label %.preheader2057

.lr.ph2122.preheader:                             ; preds = %.preheader2058
  %i.aur = zext nneg i32 %.11695.lcssa to i64
  %i.aus = zext nneg i32 %i.aup to i64
  br label %.lr.ph2122

.lr.ph2117:                                       ; preds = %.lr.ph2117.preheader, %.lr.ph2117
  %indvars.iv2268 = phi i64 [ %i.atj, %.lr.ph2117.preheader ], [ %indvars.iv.next2269, %.lr.ph2117 ] ; 11 uses
  %i.aut = phi i64 [ %i.atk, %.lr.ph2117.preheader ], [ %i.ayo, %.lr.ph2117 ] ; 8 uses
  %.117032115 = phi ptr [ %.01702.lcssa, %.lr.ph2117.preheader ], [ %i.ayn, %.lr.ph2117 ] ; 33 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.are, i64 %indvars.iv2268
  %i.auv = load i8, ptr %i.auu, align 1, !tbaa !76
  store i8 %i.auv, ptr %.117032115, align 1, !tbaa !76
  %i.auw = or disjoint i64 %indvars.iv2268, 1     ; 8 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.auw
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !76
  %i.auz = getelementptr inbounds nuw i8, ptr %.117032115, i64 1
  store i8 %i.auy, ptr %i.auz, align 1, !tbaa !76
  %i.ava = or disjoint i64 %indvars.iv2268, 2     ; 8 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !76
  %i.avd = getelementptr inbounds nuw i8, ptr %.117032115, i64 2
  store i8 %i.avc, ptr %i.avd, align 1, !tbaa !76
  %i.ave = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.aut
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !76
  %i.avg = getelementptr inbounds nuw i8, ptr %.117032115, i64 3
  store i8 %i.avf, ptr %i.avg, align 1, !tbaa !76
  %i.avh = getelementptr inbounds nuw i8, ptr %i.arj, i64 %indvars.iv2268
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !76
  %i.avj = getelementptr inbounds nuw i8, ptr %.117032115, i64 4
  store i8 %i.avi, ptr %i.avj, align 1, !tbaa !76
  %i.avk = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.auw
  %i.avl = load i8, ptr %i.avk, align 1, !tbaa !76
  %i.avm = getelementptr inbounds nuw i8, ptr %.117032115, i64 5
  store i8 %i.avl, ptr %i.avm, align 1, !tbaa !76
  %i.avn = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ava
  %i.avo = load i8, ptr %i.avn, align 1, !tbaa !76
  %i.avp = getelementptr inbounds nuw i8, ptr %.117032115, i64 6
  store i8 %i.avo, ptr %i.avp, align 1, !tbaa !76
  %i.avq = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.aut
  %i.avr = load i8, ptr %i.avq, align 1, !tbaa !76
  %i.avs = getelementptr inbounds nuw i8, ptr %.117032115, i64 7
  store i8 %i.avr, ptr %i.avs, align 1, !tbaa !76
  %i.avt = getelementptr inbounds nuw i8, ptr %i.art, i64 %indvars.iv2268
  %i.avu = load i8, ptr %i.avt, align 1, !tbaa !76
  %i.avv = getelementptr inbounds nuw i8, ptr %.117032115, i64 8
  store i8 %i.avu, ptr %i.avv, align 1, !tbaa !76
  %i.avw = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.auw
  %i.avx = load i8, ptr %i.avw, align 1, !tbaa !76
  %i.avy = getelementptr inbounds nuw i8, ptr %.117032115, i64 9
  store i8 %i.avx, ptr %i.avy, align 1, !tbaa !76
  %i.avz = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.ava
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !76
  %i.awb = getelementptr inbounds nuw i8, ptr %.117032115, i64 10
  store i8 %i.awa, ptr %i.awb, align 1, !tbaa !76
  %i.awc = getelementptr inbounds nuw i8, ptr %i.art, i64 %i.aut
  %i.awd = load i8, ptr %i.awc, align 1, !tbaa !76
  %i.awe = getelementptr inbounds nuw i8, ptr %.117032115, i64 11
  store i8 %i.awd, ptr %i.awe, align 1, !tbaa !76
  %i.awf = getelementptr inbounds nuw i8, ptr %i.arx, i64 %indvars.iv2268
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !76
  %i.awh = getelementptr inbounds nuw i8, ptr %.117032115, i64 12
  store i8 %i.awg, ptr %i.awh, align 1, !tbaa !76
  %i.awi = getelementptr inbounds nuw i8, ptr %i.arx, i64 %i.auw
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !76
  %i.awk = getelementptr inbounds nuw i8, ptr %.117032115, i64 13
  store i8 %i.awj, ptr %i.awk, align 1, !tbaa !76
  %i.awl = getelementptr inbounds nuw i8, ptr %i.arx, i64 %i.ava
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !76
  %i.awn = getelementptr inbounds nuw i8, ptr %.117032115, i64 14
  store i8 %i.awm, ptr %i.awn, align 1, !tbaa !76
  %i.awo = getelementptr inbounds nuw i8, ptr %i.arx, i64 %i.aut
  %i.awp = load i8, ptr %i.awo, align 1, !tbaa !76
  %i.awq = getelementptr inbounds nuw i8, ptr %.117032115, i64 15
  store i8 %i.awp, ptr %i.awq, align 1, !tbaa !76
  %i.awr = getelementptr inbounds nuw i8, ptr %i.arn, i64 %indvars.iv2268
  %i.aws = load i8, ptr %i.awr, align 1, !tbaa !76
  %i.awt = getelementptr inbounds nuw i8, ptr %.117032115, i64 16
  store i8 %i.aws, ptr %i.awt, align 1, !tbaa !76
  %i.awu = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.auw
  %i.awv = load i8, ptr %i.awu, align 1, !tbaa !76
  %i.aww = getelementptr inbounds nuw i8, ptr %.117032115, i64 17
  store i8 %i.awv, ptr %i.aww, align 1, !tbaa !76
  %i.awx = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.ava
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !76
  %i.awz = getelementptr inbounds nuw i8, ptr %.117032115, i64 18
  store i8 %i.awy, ptr %i.awz, align 1, !tbaa !76
  %i.axa = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.aut
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !76
  %i.axc = getelementptr inbounds nuw i8, ptr %.117032115, i64 19
  store i8 %i.axb, ptr %i.axc, align 1, !tbaa !76
  %i.axd = getelementptr inbounds nuw i8, ptr %i.arr, i64 %indvars.iv2268
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !76
  %i.axf = getelementptr inbounds nuw i8, ptr %.117032115, i64 20
  store i8 %i.axe, ptr %i.axf, align 1, !tbaa !76
  %i.axg = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.auw
  %i.axh = load i8, ptr %i.axg, align 1, !tbaa !76
  %i.axi = getelementptr inbounds nuw i8, ptr %.117032115, i64 21
  store i8 %i.axh, ptr %i.axi, align 1, !tbaa !76
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.biu = getelementptr inbounds nuw i8, ptr %.617082139, i64 9
  store i8 %i.bit, ptr %i.biu, align 1, !tbaa !76
  %i.biv = getelementptr inbounds nuw i8, ptr %i.asp, i64 %indvars.iv2283
  %i.biw = load i8, ptr %i.biv, align 1, !tbaa !76
  %i.bix = getelementptr inbounds nuw i8, ptr %.617082139, i64 10
  store i8 %i.biw, ptr %i.bix, align 1, !tbaa !76
  %i.biy = getelementptr inbounds nuw i8, ptr %i.asp, i64 %i.bhr
  %i.biz = load i8, ptr %i.biy, align 1, !tbaa !76
  %i.bja = getelementptr inbounds nuw i8, ptr %.617082139, i64 11
  store i8 %i.biz, ptr %i.bja, align 1, !tbaa !76
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.asr, i64 %indvars.iv2283
  %i.bjc = load i8, ptr %i.bjb, align 1, !tbaa !76
  %i.bjd = getelementptr inbounds nuw i8, ptr %.617082139, i64 12
  store i8 %i.bjc, ptr %i.bjd, align 1, !tbaa !76
  %i.bje = getelementptr inbounds nuw i8, ptr %i.asr, i64 %i.bhr
  %i.bjf = load i8, ptr %i.bje, align 1, !tbaa !76
  %i.bjg = getelementptr inbounds nuw i8, ptr %.617082139, i64 13
  store i8 %i.bjf, ptr %i.bjg, align 1, !tbaa !76
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.ast, i64 %indvars.iv2283
  %i.bji = load i8, ptr %i.bjh, align 1, !tbaa !76
  %i.bjj = getelementptr inbounds nuw i8, ptr %.617082139, i64 14
  store i8 %i.bji, ptr %i.bjj, align 1, !tbaa !76
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.ast, i64 %i.bhr
  %i.bjl = load i8, ptr %i.bjk, align 1, !tbaa !76
  %i.bjm = getelementptr inbounds nuw i8, ptr %.617082139, i64 15
  store i8 %i.bjl, ptr %i.bjm, align 1, !tbaa !76
  %i.bjn = getelementptr inbounds nuw i8, ptr %.617082139, i64 16 ; 2 uses
  %indvars.iv.next2284 = add nuw nsw i64 %indvars.iv2283, 2 ; 3 uses
  %i.bjo = or disjoint i64 %indvars.iv.next2284, 1 ; 2 uses
  %i.bjp = load i32, ptr %13, align 4, !tbaa !45  ; 2 uses
  %i.bjq = trunc nuw i64 %i.bjo to i32
  %i.bjr = icmp sgt i32 %i.bjp, %i.bjq
  br i1 %i.bjr, label %.lr.ph2141, label %.preheader2053.loopexit, !llvm.loop !397

.lr.ph2146:                                       ; preds = %.lr.ph2146.preheader, %.lr.ph2146
  %indvars.iv2286 = phi i64 [ %i.bhq, %.lr.ph2146.preheader ], [ %indvars.iv.next2287, %.lr.ph2146 ] ; 9 uses
  %.717092144 = phi ptr [ %.61708.lcssa, %.lr.ph2146.preheader ], [ %i.bkp, %.lr.ph2146 ] ; 9 uses
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.asf, i64 %indvars.iv2286
  %i.bjt = load i8, ptr %i.bjs, align 1, !tbaa !76
  store i8 %i.bjt, ptr %.717092144, align 1, !tbaa !76
  %i.bju = getelementptr inbounds nuw i8, ptr %i.ash, i64 %indvars.iv2286
  %i.bjv = load i8, ptr %i.bju, align 1, !tbaa !76
  %i.bjw = getelementptr inbounds nuw i8, ptr %.717092144, i64 1
  store i8 %i.bjv, ptr %i.bjw, align 1, !tbaa !76
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.asj, i64 %indvars.iv2286
  %i.bjy = load i8, ptr %i.bjx, align 1, !tbaa !76
  %i.bjz = getelementptr inbounds nuw i8, ptr %.717092144, i64 2
  store i8 %i.bjy, ptr %i.bjz, align 1, !tbaa !76
  %i.bka = getelementptr inbounds nuw i8, ptr %i.asl, i64 %indvars.iv2286
  %i.bkb = load i8, ptr %i.bka, align 1, !tbaa !76
  %i.bkc = getelementptr inbounds nuw i8, ptr %.717092144, i64 3
  store i8 %i.bkb, ptr %i.bkc, align 1, !tbaa !76
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.asn, i64 %indvars.iv2286
  %i.bke = load i8, ptr %i.bkd, align 1, !tbaa !76
  %i.bkf = getelementptr inbounds nuw i8, ptr %.717092144, i64 4
  store i8 %i.bke, ptr %i.bkf, align 1, !tbaa !76
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.asp, i64 %indvars.iv2286
  %i.bkh = load i8, ptr %i.bkg, align 1, !tbaa !76
  %i.bki = getelementptr inbounds nuw i8, ptr %.717092144, i64 5
  store i8 %i.bkh, ptr %i.bki, align 1, !tbaa !76
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.asr, i64 %indvars.iv2286
  %i.bkk = load i8, ptr %i.bkj, align 1, !tbaa !76
  %i.bkl = getelementptr inbounds nuw i8, ptr %.717092144, i64 6
  store i8 %i.bkk, ptr %i.bkl, align 1, !tbaa !76
  %i.bkm = getelementptr inbounds nuw i8, ptr %i.ast, i64 %indvars.iv2286
  %i.bkn = load i8, ptr %i.bkm, align 1, !tbaa !76
  %i.bko = getelementptr inbounds nuw i8, ptr %.717092144, i64 7
  store i8 %i.bkn, ptr %i.bko, align 1, !tbaa !76
  %i.bkp = getelementptr inbounds nuw i8, ptr %.717092144, i64 8
  %indvars.iv.next2287 = add nuw nsw i64 %indvars.iv2286, 1 ; 2 uses
  %i.bkq = load i32, ptr %13, align 4, !tbaa !45
  %i.bkr = trunc nuw i64 %indvars.iv.next2287 to i32
  %i.bks = icmp sgt i32 %i.bkq, %i.bkr
  br i1 %i.bks, label %.lr.ph2146, label %._crit_edge2147, !llvm.loop !398

._crit_edge2147:                                  ; preds = %.lr.ph2146, %.preheader2053
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv2291
  %i.bku = load float, ptr %i.bkt, align 4, !tbaa !63
  %i.bkv = fdiv fast float 1.000000e+00, %i.bku
  store float %i.bkv, ptr %i.atc, align 4, !tbaa !63
  %i.bkw = load i32, ptr %11, align 4, !tbaa !45  ; 6 uses
  %i.bkx = add nsw i32 %i.bkw, %i.arf
  %i.bky = sext i32 %i.bkx to i64                 ; 2 uses
  %i.bkz = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bky ; 2 uses
  %i.bla = load float, ptr %i.bkz, align 4, !tbaa !63
  %i.blb = fdiv fast float 1.000000e+00, %i.bla
  %i.blc = getelementptr inbounds nuw i8, ptr %i.atc, i64 4
  store float %i.blb, ptr %i.blc, align 4, !tbaa !63
  %i.bld = shl nsw i32 %i.bkw, 1
  %i.ble = add nsw i32 %i.bld, %i.arf
  %i.blf = sext i32 %i.ble to i64                 ; 2 uses
  %i.blg = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.blf ; 2 uses
  %i.blh = load float, ptr %i.blg, align 4, !tbaa !63
  %i.bli = fdiv fast float 1.000000e+00, %i.blh
  %i.blj = getelementptr inbounds nuw i8, ptr %i.atc, i64 8
  store float %i.bli, ptr %i.blj, align 4, !tbaa !63
  %i.blk = mul nsw i32 %i.bkw, 3
  %i.bll = add nsw i32 %i.blk, %i.arf
  %i.blm = sext i32 %i.bll to i64                 ; 2 uses
  %i.bln = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.blm ; 2 uses
  %i.blo = load float, ptr %i.bln, align 4, !tbaa !63
  %i.blp = fdiv fast float 1.000000e+00, %i.blo
  %i.blq = getelementptr inbounds nuw i8, ptr %i.atc, i64 12
  store float %i.blp, ptr %i.blq, align 4, !tbaa !63
  %i.blr = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv2289
  %i.bls = load float, ptr %i.blr, align 4, !tbaa !63
  %i.blt = fdiv fast float 1.000000e+00, %i.bls
  %i.blu = getelementptr inbounds nuw i8, ptr %i.atc, i64 16
  store float %i.blt, ptr %i.blu, align 4, !tbaa !63
  %i.blv = getelementptr i8, ptr %i.bkz, i64 4
  %i.blw = load float, ptr %i.blv, align 4, !tbaa !63
  %i.blx = fdiv fast float 1.000000e+00, %i.blw
  %i.bly = getelementptr inbounds nuw i8, ptr %i.atc, i64 20
  store float %i.blx, ptr %i.bly, align 4, !tbaa !63
  %i.blz = getelementptr i8, ptr %i.blg, i64 4
  %i.bma = load float, ptr %i.blz, align 4, !tbaa !63
  %i.bmb = fdiv fast float 1.000000e+00, %i.bma
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.atc, i64 24
  store float %i.bmb, ptr %i.bmc, align 4, !tbaa !63
  %i.bmd = getelementptr i8, ptr %i.bln, i64 4
  %i.bme = load float, ptr %i.bmd, align 4, !tbaa !63
  %i.bmf = fdiv fast float 1.000000e+00, %i.bme
  %i.bmg = getelementptr inbounds nuw i8, ptr %i.atc, i64 28
  store float %i.bmf, ptr %i.bmg, align 4, !tbaa !63
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv2291
  %i.bmi = load float, ptr %i.bmh, align 4, !tbaa !63
  %i.bmj = fdiv fast float 1.000000e+00, %i.bmi
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.atc, i64 32
  store float %i.bmj, ptr %i.bmk, align 4, !tbaa !63
  %i.bml = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bky ; 2 uses
  %i.bmm = load float, ptr %i.bml, align 4, !tbaa !63
  %i.bmn = fdiv fast float 1.000000e+00, %i.bmm
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.atc, i64 36
  store float %i.bmn, ptr %i.bmo, align 4, !tbaa !63
  %i.bmp = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.blf ; 2 uses
  %i.bmq = load float, ptr %i.bmp, align 4, !tbaa !63
  %i.bmr = fdiv fast float 1.000000e+00, %i.bmq
  %i.bms = getelementptr inbounds nuw i8, ptr %i.atc, i64 40
  store float %i.bmr, ptr %i.bms, align 4, !tbaa !63
  %i.bmt = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.blm ; 2 uses
  %i.bmu = load float, ptr %i.bmt, align 4, !tbaa !63
  %i.bmv = fdiv fast float 1.000000e+00, %i.bmu
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.atc, i64 44
  store float %i.bmv, ptr %i.bmw, align 4, !tbaa !63
  %i.bmx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv2289
  %i.bmy = load float, ptr %i.bmx, align 4, !tbaa !63
  %i.bmz = fdiv fast float 1.000000e+00, %i.bmy
  %i.bna = getelementptr inbounds nuw i8, ptr %i.atc, i64 48
  store float %i.bmz, ptr %i.bna, align 4, !tbaa !63
  %i.bnb = getelementptr i8, ptr %i.bml, i64 4
  %i.bnc = load float, ptr %i.bnb, align 4, !tbaa !63
  %i.bnd = fdiv fast float 1.000000e+00, %i.bnc
  %i.bne = getelementptr inbounds nuw i8, ptr %i.atc, i64 52
  store float %i.bnd, ptr %i.bne, align 4, !tbaa !63
  %i.bnf = getelementptr i8, ptr %i.bmp, i64 4
  %i.bng = load float, ptr %i.bnf, align 4, !tbaa !63
  %i.bnh = fdiv fast float 1.000000e+00, %i.bng
  %i.bni = getelementptr inbounds nuw i8, ptr %i.atc, i64 56
  store float %i.bnh, ptr %i.bni, align 4, !tbaa !63
  %i.bnj = getelementptr i8, ptr %i.bmt, i64 4
  %i.bnk = load float, ptr %i.bnj, align 4, !tbaa !63
  %i.bnl = fdiv fast float 1.000000e+00, %i.bnk
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.atc, i64 60
  store float %i.bnl, ptr %i.bnm, align 4, !tbaa !63
  %indvars.iv.next2292 = add nuw nsw i64 %indvars.iv2291, 2 ; 3 uses
  %i.bnn = trunc i64 %indvars.iv.next2292 to i32
  %i.bno = or i32 %i.bnn, 1
  %i.bnp = icmp slt i32 %i.bno, %i.bkw
  %indvars.iv.next2290 = add nuw i64 %indvars.iv2289, 2
  br i1 %i.bnp, label %bb.d, label %.preheader2067.loopexit, !llvm.loop !399

bb.e:                                             ; preds = %.lr.ph2194, %._crit_edge2191
  %indvars.iv2320 = phi i64 [ %i.aqd, %.lr.ph2194 ], [ %indvars.iv.next2321, %._crit_edge2191 ] ; 10 uses
  %i.bnq = phi i32 [ %i.apx, %.lr.ph2194 ], [ %i.bzu, %._crit_edge2191 ] ; 3 uses
  %.217322192 = phi ptr [ %.11731.lcssa, %.lr.ph2194 ], [ %i.boc, %._crit_edge2191 ] ; 5 uses
  %i.bnr = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv2320
  %i.bns = load float, ptr %i.bnr, align 4, !tbaa !63
  store float %i.bns, ptr %.217322192, align 4, !tbaa !63
  %i.bnt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv2320
  %i.bnu = load float, ptr %i.bnt, align 4, !tbaa !63
  %i.bnv = getelementptr inbounds nuw i8, ptr %.217322192, i64 4
  store float %i.bnu, ptr %i.bnv, align 4, !tbaa !63
  %i.bnw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv2320
  %i.bnx = load float, ptr %i.bnw, align 4, !tbaa !63
  %i.bny = getelementptr inbounds nuw i8, ptr %.217322192, i64 8
  store float %i.bnx, ptr %i.bny, align 4, !tbaa !63
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv2320
  %i.boa = load float, ptr %i.bnz, align 4, !tbaa !63
  %i.bob = getelementptr inbounds nuw i8, ptr %.217322192, i64 12
  store float %i.boa, ptr %i.bob, align 4, !tbaa !63
  %i.boc = getelementptr inbounds nuw i8, ptr %.217322192, i64 16
  %i.bod = mul i64 %i.apz, %indvars.iv2320
  %i.boe = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bod ; 8 uses
  %i.bof = trunc nuw nsw i64 %indvars.iv2320 to i32 ; 9 uses
  %i.bog = add nuw nsw i32 %i.bnq, %i.bof
  %i.boh = sext i32 %i.bog to i64                 ; 2 uses
  %i.boi = mul i64 %i.apz, %i.boh
  %i.boj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.boi ; 8 uses
  %i.bok = shl nuw nsw i32 %i.bnq, 1
  %i.bol = add nuw nsw i32 %i.bok, %i.bof
  %18 = zext nneg i32 %i.bol to i64               ; 2 uses
  %i.bom = mul i64 %i.apz, %18
  %i.bon = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bom ; 8 uses
  %i.boo = mul nuw nsw i32 %i.bnq, 3
  %i.bop = add nuw nsw i32 %i.boo, %i.bof
  %19 = zext nneg i32 %i.bop to i64               ; 2 uses
  %i.boq = mul i64 %i.apz, %19
  %i.bor = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.boq ; 8 uses
  %i.bos = mul i64 %i.aqa, %indvars.iv2320
  %i.bot = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bos ; 8 uses
  %i.bou = mul i64 %i.aqa, %i.boh
  %i.bov = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bou ; 8 uses
  %i.bow = mul i64 %i.aqa, %18
  %i.box = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bow ; 8 uses
  %i.boy = mul i64 %i.aqa, %19
  %i.boz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.boy ; 8 uses
  %i.bpa = lshr i32 %i.bof, 2
  %i.bpb = lshr i32 %i.bof, 1
  %i.bpc = and i32 %i.bpb, 1
  %i.bpd = and i32 %i.bof, 1
  %i.bpe = add nuw nsw i32 %i.bpd, %i.bpa
  %i.bpf = add nuw nsw i32 %i.bpe, %i.bpc
  %i.bpg = zext nneg i32 %i.bpf to i64            ; 2 uses
  %i.bph = mul i64 %i.aqb, %i.bpg
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bph ; 2 uses
  %i.bpj = mul i64 %i.aqc, %i.bpg
  %i.bpk = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.bpj ; 8 uses
  %i.bpl = load i32, ptr %12, align 4, !tbaa !45  ; 2 uses
  %i.bpm = icmp sgt i32 %i.bpl, 7
  br i1 %i.bpm, label %.lr.ph2156, label %.preheader2052

.preheader2052.loopexit:                          ; preds = %.lr.ph2156
  %i.bpn = trunc nuw nsw i64 %indvars.iv.next2297 to i32
  br label %.preheader2052

.preheader2052:                                   ; preds = %.preheader2052.loopexit, %bb.e
  %i.bpo = phi i32 [ %i.bpl, %bb.e ], [ %i.bqg, %.preheader2052.loopexit ] ; 2 uses
  %.01686.lcssa = phi ptr [ %i.bpi, %bb.e ], [ %i.bqe, %.preheader2052.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.e ], [ %i.bpn, %.preheader2052.loopexit ] ; 3 uses
  %i.bpp = or disjoint i32 %.0.lcssa, 3           ; 2 uses
  %i.bpq = icmp slt i32 %i.bpp, %i.bpo
  br i1 %i.bpq, label %.lr.ph2161.preheader, label %.preheader2051

.lr.ph2161.preheader:                             ; preds = %.preheader2052
  %i.bpr = zext nneg i32 %.0.lcssa to i64
  %i.bps = zext nneg i32 %i.bpp to i64
  br label %.lr.ph2161

.lr.ph2156:                                       ; preds = %bb.e, %.lr.ph2156
  %indvars.iv2296 = phi i64 [ %indvars.iv.next2297, %.lr.ph2156 ], [ 0, %bb.e ] ; 5 uses
  %.016862153 = phi ptr [ %i.bqe, %.lr.ph2156 ], [ %i.bpi, %bb.e ] ; 5 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.boe, i64 %indvars.iv2296
  %i.bpu = load i64, ptr %i.bpt, align 1, !tbaa !76
  store i64 %i.bpu, ptr %.016862153, align 1, !tbaa !76
  %i.bpv = getelementptr inbounds nuw i8, ptr %.016862153, i64 8
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.boj, i64 %indvars.iv2296
  %i.bpx = load i64, ptr %i.bpw, align 1, !tbaa !76
  store i64 %i.bpx, ptr %i.bpv, align 1, !tbaa !76
  %i.bpy = getelementptr inbounds nuw i8, ptr %.016862153, i64 16
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bon, i64 %indvars.iv2296
  %i.bqa = load i64, ptr %i.bpz, align 1, !tbaa !76
  store i64 %i.bqa, ptr %i.bpy, align 1, !tbaa !76
  %i.bqb = getelementptr inbounds nuw i8, ptr %.016862153, i64 24
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bor, i64 %indvars.iv2296
  %i.bqd = load i64, ptr %i.bqc, align 1, !tbaa !76
  store i64 %i.bqd, ptr %i.bqb, align 1, !tbaa !76
  %i.bqe = getelementptr inbounds nuw i8, ptr %.016862153, i64 32 ; 2 uses
  %indvars.iv.next2297 = add nuw nsw i64 %indvars.iv2296, 8 ; 3 uses
  %i.bqf = or disjoint i64 %indvars.iv.next2297, 7
  %i.bqg = load i32, ptr %12, align 4, !tbaa !45  ; 2 uses
  %i.bqh = sext i32 %i.bqg to i64
  %i.bqi = icmp slt i64 %i.bqf, %i.bqh
  br i1 %i.bqi, label %.lr.ph2156, label %.preheader2052.loopexit, !llvm.loop !400

.preheader2051.loopexit:                          ; preds = %.lr.ph2161
  %i.bqj = trunc nuw nsw i64 %indvars.iv.next2300 to i32
  br label %.preheader2051

.preheader2051:                                   ; preds = %.preheader2051.loopexit, %.preheader2052
  %i.bqk = phi i32 [ %i.bpo, %.preheader2052 ], [ %i.bsp, %.preheader2051.loopexit ] ; 2 uses
  %.11687.lcssa = phi ptr [ %.01686.lcssa, %.preheader2052 ], [ %i.bsn, %.preheader2051.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader2052 ], [ %i.bqj, %.preheader2051.loopexit ] ; 3 uses
  %i.bql = or disjoint i32 %.1.lcssa, 1           ; 2 uses
  %i.bqm = icmp slt i32 %i.bql, %i.bqk
  br i1 %i.bqm, label %.lr.ph2166.preheader, label %.preheader2050

.lr.ph2166.preheader:                             ; preds = %.preheader2051
  %i.bqn = zext nneg i32 %.1.lcssa to i64
  %i.bqo = zext nneg i32 %i.bql to i64
  br label %.lr.ph2166

.lr.ph2161:                                       ; preds = %.lr.ph2161.preheader, %.lr.ph2161
  %indvars.iv2299 = phi i64 [ %i.bpr, %.lr.ph2161.preheader ], [ %indvars.iv.next2300, %.lr.ph2161 ] ; 7 uses
  %i.bqp = phi i64 [ %i.bps, %.lr.ph2161.preheader ], [ %i.bso, %.lr.ph2161 ] ; 4 uses
  %.116872159 = phi ptr [ %.01686.lcssa, %.lr.ph2161.preheader ], [ %i.bsn, %.lr.ph2161 ] ; 17 uses
  %i.bqq = getelementptr inbounds nuw i8, ptr %i.boe, i64 %indvars.iv2299
  %i.bqr = load i8, ptr %i.bqq, align 1, !tbaa !76
  store i8 %i.bqr, ptr %.116872159, align 1, !tbaa !76
  %i.bqs = or disjoint i64 %indvars.iv2299, 1     ; 4 uses
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.boe, i64 %i.bqs
  %i.bqu = load i8, ptr %i.bqt, align 1, !tbaa !76
  %i.bqv = getelementptr inbounds nuw i8, ptr %.116872159, i64 1
  store i8 %i.bqu, ptr %i.bqv, align 1, !tbaa !76
  %i.bqw = or disjoint i64 %indvars.iv2299, 2     ; 4 uses
  %i.bqx = getelementptr inbounds nuw i8, ptr %i.boe, i64 %i.bqw
  %i.bqy = load i8, ptr %i.bqx, align 1, !tbaa !76
  %i.bqz = getelementptr inbounds nuw i8, ptr %.116872159, i64 2
  store i8 %i.bqy, ptr %i.bqz, align 1, !tbaa !76
  %i.bra = getelementptr inbounds nuw i8, ptr %i.boe, i64 %i.bqp
  %i.brb = load i8, ptr %i.bra, align 1, !tbaa !76
  %i.brc = getelementptr inbounds nuw i8, ptr %.116872159, i64 3
  store i8 %i.brb, ptr %i.brc, align 1, !tbaa !76
  %i.brd = getelementptr inbounds nuw i8, ptr %i.boj, i64 %indvars.iv2299
  %i.bre = load i8, ptr %i.brd, align 1, !tbaa !76
  %i.brf = getelementptr inbounds nuw i8, ptr %.116872159, i64 4
  store i8 %i.bre, ptr %i.brf, align 1, !tbaa !76
  %i.brg = getelementptr inbounds nuw i8, ptr %i.boj, i64 %i.bqs
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !76
  %i.bri = getelementptr inbounds nuw i8, ptr %.116872159, i64 5
  store i8 %i.brh, ptr %i.bri, align 1, !tbaa !76
  %i.brj = getelementptr inbounds nuw i8, ptr %i.boj, i64 %i.bqw
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !76
  %i.brl = getelementptr inbounds nuw i8, ptr %.116872159, i64 6
  store i8 %i.brk, ptr %i.brl, align 1, !tbaa !76
  %i.brm = getelementptr inbounds nuw i8, ptr %i.boj, i64 %i.bqp
  %i.brn = load i8, ptr %i.brm, align 1, !tbaa !76
  %i.bro = getelementptr inbounds nuw i8, ptr %.116872159, i64 7
  store i8 %i.brn, ptr %i.bro, align 1, !tbaa !76
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bon, i64 %indvars.iv2299
  %i.brq = load i8, ptr %i.brp, align 1, !tbaa !76
  %i.brr = getelementptr inbounds nuw i8, ptr %.116872159, i64 8
  store i8 %i.brq, ptr %i.brr, align 1, !tbaa !76
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bqs
  %i.brt = load i8, ptr %i.brs, align 1, !tbaa !76
  %i.bru = getelementptr inbounds nuw i8, ptr %.116872159, i64 9
  store i8 %i.brt, ptr %i.bru, align 1, !tbaa !76
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bqw
  %i.brw = load i8, ptr %i.brv, align 1, !tbaa !76
  %i.brx = getelementptr inbounds nuw i8, ptr %.116872159, i64 10
  store i8 %i.brw, ptr %i.brx, align 1, !tbaa !76
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bon, i64 %i.bqp
  %i.brz = load i8, ptr %i.bry, align 1, !tbaa !76
  %i.bsa = getelementptr inbounds nuw i8, ptr %.116872159, i64 11
  store i8 %i.brz, ptr %i.bsa, align 1, !tbaa !76
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bor, i64 %indvars.iv2299
  %i.bsc = load i8, ptr %i.bsb, align 1, !tbaa !76
  %i.bsd = getelementptr inbounds nuw i8, ptr %.116872159, i64 12
  store i8 %i.bsc, ptr %i.bsd, align 1, !tbaa !76
  %i.bse = getelementptr inbounds nuw i8, ptr %i.bor, i64 %i.bqs
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !76
  %i.bsg = getelementptr inbounds nuw i8, ptr %.116872159, i64 13
  store i8 %i.bsf, ptr %i.bsg, align 1, !tbaa !76
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bor, i64 %i.bqw
  %i.bsi = load i8, ptr %i.bsh, align 1, !tbaa !76
  %i.bsj = getelementptr inbounds nuw i8, ptr %.116872159, i64 14
  store i8 %i.bsi, ptr %i.bsj, align 1, !tbaa !76
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bor, i64 %i.bqp
  %i.bsl = load i8, ptr %i.bsk, align 1, !tbaa !76
  %i.bsm = getelementptr inbounds nuw i8, ptr %.116872159, i64 15
  store i8 %i.bsl, ptr %i.bsm, align 1, !tbaa !76
  %i.bsn = getelementptr inbounds nuw i8, ptr %.116872159, i64 16 ; 2 uses
  %indvars.iv.next2300 = add nuw nsw i64 %indvars.iv2299, 4 ; 3 uses
  %i.bso = or disjoint i64 %indvars.iv.next2300, 3 ; 2 uses
  %i.bsp = load i32, ptr %12, align 4, !tbaa !45  ; 2 uses
  %i.bsq = trunc nuw i64 %i.bso to i32
  %i.bsr = icmp sgt i32 %i.bsp, %i.bsq
  br i1 %i.bsr, label %.lr.ph2161, label %.preheader2051.loopexit, !llvm.loop !401

.preheader2050.loopexit:                          ; preds = %.lr.ph2166
  %i.bss = trunc nuw i64 %indvars.iv.next2303 to i32
  br label %.preheader2050

.preheader2050:                                   ; preds = %.preheader2050.loopexit, %.preheader2051
  %i.bst = phi i32 [ %i.bqk, %.preheader2051 ], [ %i.btw, %.preheader2050.loopexit ]
  %.21688.lcssa = phi ptr [ %.11687.lcssa, %.preheader2051 ], [ %i.btu, %.preheader2050.loopexit ] ; 2 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader2051 ], [ %i.bss, %.preheader2050.loopexit ] ; 2 uses
  %i.bsu = icmp slt i32 %.2.lcssa, %i.bst
  br i1 %i.bsu, label %.lr.ph2171.preheader, label %.preheader2049

.lr.ph2171.preheader:                             ; preds = %.preheader2050
  %i.bsv = zext i32 %.2.lcssa to i64
  br label %.lr.ph2171

.lr.ph2166:                                       ; preds = %.lr.ph2166.preheader, %.lr.ph2166
  %indvars.iv2302 = phi i64 [ %i.bqn, %.lr.ph2166.preheader ], [ %indvars.iv.next2303, %.lr.ph2166 ] ; 5 uses
  %i.bsw = phi i64 [ %i.bqo, %.lr.ph2166.preheader ], [ %i.btv, %.lr.ph2166 ] ; 4 uses
  %.216882164 = phi ptr [ %.11687.lcssa, %.lr.ph2166.preheader ], [ %i.btu, %.lr.ph2166 ] ; 9 uses
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.boe, i64 %indvars.iv2302
  %i.bsy = load i8, ptr %i.bsx, align 1, !tbaa !76
  store i8 %i.bsy, ptr %.216882164, align 1, !tbaa !76
  %i.bsz = getelementptr inbounds nuw i8, ptr %i.boe, i64 %i.bsw
  %i.bta = load i8, ptr %i.bsz, align 1, !tbaa !76
  %i.btb = getelementptr inbounds nuw i8, ptr %.216882164, i64 1
  store i8 %i.bta, ptr %i.btb, align 1, !tbaa !76
  %i.btc = getelementptr inbounds nuw i8, ptr %i.boj, i64 %indvars.iv2302
  %i.btd = load i8, ptr %i.btc, align 1, !tbaa !76
  %i.bte = getelementptr inbounds nuw i8, ptr %.216882164, i64 2
  store i8 %i.btd, ptr %i.bte, align 1, !tbaa !76
  %i.btf = getelementptr inbounds nuw i8, ptr %i.boj, i64 %i.bsw
  %i.btg = load i8, ptr %i.btf, align 1, !tbaa !76
  %i.bth = getelementptr inbounds nuw i8, ptr %.216882164, i64 3
  store i8 %i.btg, ptr %i.bth, align 1, !tbaa !76
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bon, i64 %indvars.iv2302
  %i.btj = load i8, ptr %i.bti, align 1, !tbaa !76
  %i.btk = getelementptr inbounds nuw i8, ptr %.216882164, i64 4
  store i8 %i.btj, ptr %i.btk, align 1, !tbaa !76
end_hunk_1
