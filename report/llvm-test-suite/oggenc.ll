Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 194
begin_hunk_0_@setup_tone_curves:bb.a
  %i.blg = fadd <4 x float> %i.afk, %wide.load649.8
  store <4 x float> %i.blg, ptr %i.blf, align 16
  %i.blh = getelementptr inbounds nuw i8, ptr %i.axt, i64 1040 ; 2 uses
  %wide.load649.9 = load <4 x float>, ptr %i.blh, align 16
  %i.bli = fadd <4 x float> %i.afo, %wide.load649.9
  store <4 x float> %i.bli, ptr %i.blh, align 16
  %i.blj = getelementptr inbounds nuw i8, ptr %i.axt, i64 1056 ; 2 uses
  %wide.load649.10 = load <4 x float>, ptr %i.blj, align 16
  %i.blk = fadd <4 x float> %i.afs, %wide.load649.10
  store <4 x float> %i.blk, ptr %i.blj, align 16
  %i.bll = getelementptr inbounds nuw i8, ptr %i.axt, i64 1072 ; 2 uses
  %wide.load649.11 = load <4 x float>, ptr %i.bll, align 16
  %i.blm = fadd <4 x float> %i.afw, %wide.load649.11
  store <4 x float> %i.blm, ptr %i.bll, align 16
  %i.bln = getelementptr inbounds nuw i8, ptr %i.axt, i64 1088 ; 2 uses
  %wide.load649.12 = load <4 x float>, ptr %i.bln, align 16
  %i.blo = fadd <4 x float> %i.aga, %wide.load649.12
  store <4 x float> %i.blo, ptr %i.bln, align 16
  %i.blp = getelementptr inbounds nuw i8, ptr %i.axt, i64 1104 ; 2 uses
  %wide.load649.13 = load <4 x float>, ptr %i.blp, align 16
  %i.blq = fadd <4 x float> %i.age, %wide.load649.13
  store <4 x float> %i.blq, ptr %i.blp, align 16
  %i.blr = getelementptr inbounds nuw i8, ptr %i.axt, i64 1120 ; 2 uses
  %wide.load637 = load <4 x float>, ptr %i.blr, align 16
  %i.bls = fadd <4 x float> %i.agi, %wide.load637
  store <4 x float> %i.bls, ptr %i.blr, align 16
  %i.blt = getelementptr inbounds nuw i8, ptr %i.axt, i64 1136 ; 2 uses
  %wide.load637.1 = load <4 x float>, ptr %i.blt, align 16
  %i.blu = fadd <4 x float> %i.agm, %wide.load637.1
  store <4 x float> %i.blu, ptr %i.blt, align 16
  %i.blv = getelementptr inbounds nuw i8, ptr %i.axt, i64 1152 ; 2 uses
  %wide.load637.2 = load <4 x float>, ptr %i.blv, align 16
  %i.blw = fadd <4 x float> %i.agq, %wide.load637.2
  store <4 x float> %i.blw, ptr %i.blv, align 16
  %i.blx = getelementptr inbounds nuw i8, ptr %i.axt, i64 1168 ; 2 uses
  %wide.load637.3 = load <4 x float>, ptr %i.blx, align 16
  %i.bly = fadd <4 x float> %i.agu, %wide.load637.3
  store <4 x float> %i.bly, ptr %i.blx, align 16
  %i.blz = getelementptr inbounds nuw i8, ptr %i.axt, i64 1184 ; 2 uses
  %wide.load637.4 = load <4 x float>, ptr %i.blz, align 16
  %i.bma = fadd <4 x float> %i.agy, %wide.load637.4
  store <4 x float> %i.bma, ptr %i.blz, align 16
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.axt, i64 1200 ; 2 uses
  %wide.load637.5 = load <4 x float>, ptr %i.bmb, align 16
  %i.bmc = fadd <4 x float> %i.ahc, %wide.load637.5
  store <4 x float> %i.bmc, ptr %i.bmb, align 16
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.axt, i64 1216 ; 2 uses
  %wide.load637.6 = load <4 x float>, ptr %i.bmd, align 16
  %i.bme = fadd <4 x float> %i.ahg, %wide.load637.6
  store <4 x float> %i.bme, ptr %i.bmd, align 16
  %i.bmf = getelementptr inbounds nuw i8, ptr %i.axt, i64 1232 ; 2 uses
  %wide.load637.7 = load <4 x float>, ptr %i.bmf, align 16
  %i.bmg = fadd <4 x float> %i.ahk, %wide.load637.7
  store <4 x float> %i.bmg, ptr %i.bmf, align 16
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.axt, i64 1248 ; 2 uses
  %wide.load637.8 = load <4 x float>, ptr %i.bmh, align 16
  %i.bmi = fadd <4 x float> %i.aho, %wide.load637.8
  store <4 x float> %i.bmi, ptr %i.bmh, align 16
  %i.bmj = getelementptr inbounds nuw i8, ptr %i.axt, i64 1264 ; 2 uses
  %wide.load637.9 = load <4 x float>, ptr %i.bmj, align 16
  %i.bmk = fadd <4 x float> %i.ahs, %wide.load637.9
  store <4 x float> %i.bmk, ptr %i.bmj, align 16
  %i.bml = getelementptr inbounds nuw i8, ptr %i.axt, i64 1280 ; 2 uses
  %wide.load637.10 = load <4 x float>, ptr %i.bml, align 16
  %i.bmm = fadd <4 x float> %i.ahw, %wide.load637.10
  store <4 x float> %i.bmm, ptr %i.bml, align 16
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.axt, i64 1296 ; 2 uses
  %wide.load637.11 = load <4 x float>, ptr %i.bmn, align 16
  %i.bmo = fadd <4 x float> %i.aia, %wide.load637.11
  store <4 x float> %i.bmo, ptr %i.bmn, align 16
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.axt, i64 1312 ; 2 uses
  %wide.load637.12 = load <4 x float>, ptr %i.bmp, align 16
  %i.bmq = fadd <4 x float> %i.aie, %wide.load637.12
  store <4 x float> %i.bmq, ptr %i.bmp, align 16
  %i.bmr = getelementptr inbounds nuw i8, ptr %i.axt, i64 1328 ; 2 uses
  %wide.load637.13 = load <4 x float>, ptr %i.bmr, align 16
  %i.bms = fadd <4 x float> %i.aii, %wide.load637.13
  store <4 x float> %i.bms, ptr %i.bmr, align 16
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.axt, i64 1344 ; 2 uses
  %wide.load625 = load <4 x float>, ptr %i.bmt, align 16
  %i.bmu = fadd <4 x float> %i.aim, %wide.load625
  store <4 x float> %i.bmu, ptr %i.bmt, align 16
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.axt, i64 1360 ; 2 uses
  %wide.load625.1 = load <4 x float>, ptr %i.bmv, align 16
  %i.bmw = fadd <4 x float> %i.aiq, %wide.load625.1
  store <4 x float> %i.bmw, ptr %i.bmv, align 16
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.axt, i64 1376 ; 2 uses
  %wide.load625.2 = load <4 x float>, ptr %i.bmx, align 16
  %i.bmy = fadd <4 x float> %i.aiu, %wide.load625.2
  store <4 x float> %i.bmy, ptr %i.bmx, align 16
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.axt, i64 1392 ; 2 uses
  %wide.load625.3 = load <4 x float>, ptr %i.bmz, align 16
  %i.bna = fadd <4 x float> %i.aiy, %wide.load625.3
  store <4 x float> %i.bna, ptr %i.bmz, align 16
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.axt, i64 1408 ; 2 uses
  %wide.load625.4 = load <4 x float>, ptr %i.bnb, align 16
  %i.bnc = fadd <4 x float> %i.ajc, %wide.load625.4
  store <4 x float> %i.bnc, ptr %i.bnb, align 16
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.axt, i64 1424 ; 2 uses
  %wide.load625.5 = load <4 x float>, ptr %i.bnd, align 16
  %i.bne = fadd <4 x float> %i.ajg, %wide.load625.5
  store <4 x float> %i.bne, ptr %i.bnd, align 16
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.axt, i64 1440 ; 2 uses
  %wide.load625.6 = load <4 x float>, ptr %i.bnf, align 16
  %i.bng = fadd <4 x float> %i.ajk, %wide.load625.6
  store <4 x float> %i.bng, ptr %i.bnf, align 16
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.axt, i64 1456 ; 2 uses
  %wide.load625.7 = load <4 x float>, ptr %i.bnh, align 16
  %i.bni = fadd <4 x float> %i.ajo, %wide.load625.7
  store <4 x float> %i.bni, ptr %i.bnh, align 16
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.axt, i64 1472 ; 2 uses
  %wide.load625.8 = load <4 x float>, ptr %i.bnj, align 16
  %i.bnk = fadd <4 x float> %i.ajs, %wide.load625.8
  store <4 x float> %i.bnk, ptr %i.bnj, align 16
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.axt, i64 1488 ; 2 uses
  %wide.load625.9 = load <4 x float>, ptr %i.bnl, align 16
  %i.bnm = fadd <4 x float> %i.ajw, %wide.load625.9
  store <4 x float> %i.bnm, ptr %i.bnl, align 16
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.axt, i64 1504 ; 2 uses
  %wide.load625.10 = load <4 x float>, ptr %i.bnn, align 16
  %i.bno = fadd <4 x float> %i.aka, %wide.load625.10
  store <4 x float> %i.bno, ptr %i.bnn, align 16
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.axt, i64 1520 ; 2 uses
  %wide.load625.11 = load <4 x float>, ptr %i.bnp, align 16
  %i.bnq = fadd <4 x float> %i.ake, %wide.load625.11
  store <4 x float> %i.bnq, ptr %i.bnp, align 16
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.axt, i64 1536 ; 2 uses
  %wide.load625.12 = load <4 x float>, ptr %i.bnr, align 16
  %i.bns = fadd <4 x float> %i.aki, %wide.load625.12
  store <4 x float> %i.bns, ptr %i.bnr, align 16
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.axt, i64 1552 ; 2 uses
  %wide.load625.13 = load <4 x float>, ptr %i.bnt, align 16
  %i.bnu = fadd <4 x float> %i.akm, %wide.load625.13
  store <4 x float> %i.bnu, ptr %i.bnt, align 16
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.axt, i64 1568 ; 2 uses
  %wide.load614 = load <4 x float>, ptr %i.bnv, align 16
  %i.bnw = fadd <4 x float> %i.akq, %wide.load614
  store <4 x float> %i.bnw, ptr %i.bnv, align 16
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.axt, i64 1584 ; 2 uses
  %wide.load614.1 = load <4 x float>, ptr %i.bnx, align 16
  %i.bny = fadd <4 x float> %i.aku, %wide.load614.1
  store <4 x float> %i.bny, ptr %i.bnx, align 16
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.axt, i64 1600 ; 2 uses
  %wide.load614.2 = load <4 x float>, ptr %i.bnz, align 16
  %i.boa = fadd <4 x float> %i.aky, %wide.load614.2
  store <4 x float> %i.boa, ptr %i.bnz, align 16
  %i.bob = getelementptr inbounds nuw i8, ptr %i.axt, i64 1616 ; 2 uses
  %wide.load614.3 = load <4 x float>, ptr %i.bob, align 16
  %i.boc = fadd <4 x float> %i.alc, %wide.load614.3
  store <4 x float> %i.boc, ptr %i.bob, align 16
  %i.bod = getelementptr inbounds nuw i8, ptr %i.axt, i64 1632 ; 2 uses
  %wide.load614.4 = load <4 x float>, ptr %i.bod, align 16
  %i.boe = fadd <4 x float> %i.alg, %wide.load614.4
  store <4 x float> %i.boe, ptr %i.bod, align 16
  %i.bof = getelementptr inbounds nuw i8, ptr %i.axt, i64 1648 ; 2 uses
  %wide.load614.5 = load <4 x float>, ptr %i.bof, align 16
  %i.bog = fadd <4 x float> %i.alk, %wide.load614.5
  store <4 x float> %i.bog, ptr %i.bof, align 16
  %i.boh = getelementptr inbounds nuw i8, ptr %i.axt, i64 1664 ; 2 uses
  %wide.load614.6 = load <4 x float>, ptr %i.boh, align 16
  %i.boi = fadd <4 x float> %i.alo, %wide.load614.6
  store <4 x float> %i.boi, ptr %i.boh, align 16
  %i.boj = getelementptr inbounds nuw i8, ptr %i.axt, i64 1680 ; 2 uses
  %wide.load614.7 = load <4 x float>, ptr %i.boj, align 16
  %i.bok = fadd <4 x float> %i.als, %wide.load614.7
  store <4 x float> %i.bok, ptr %i.boj, align 16
  %i.bol = getelementptr inbounds nuw i8, ptr %i.axt, i64 1696 ; 2 uses
  %wide.load614.8 = load <4 x float>, ptr %i.bol, align 16
  %i.bom = fadd <4 x float> %i.alw, %wide.load614.8
  store <4 x float> %i.bom, ptr %i.bol, align 16
  %i.bon = getelementptr inbounds nuw i8, ptr %i.axt, i64 1712 ; 2 uses
  %wide.load614.9 = load <4 x float>, ptr %i.bon, align 16
  %i.boo = fadd <4 x float> %i.ama, %wide.load614.9
  store <4 x float> %i.boo, ptr %i.bon, align 16
  %i.bop = getelementptr inbounds nuw i8, ptr %i.axt, i64 1728 ; 2 uses
  %wide.load614.10 = load <4 x float>, ptr %i.bop, align 16
  %i.boq = fadd <4 x float> %i.ame, %wide.load614.10
  store <4 x float> %i.boq, ptr %i.bop, align 16
  %i.bor = getelementptr inbounds nuw i8, ptr %i.axt, i64 1744 ; 2 uses
  %wide.load614.11 = load <4 x float>, ptr %i.bor, align 16
  %i.bos = fadd <4 x float> %i.ami, %wide.load614.11
  store <4 x float> %i.bos, ptr %i.bor, align 16
  %i.bot = getelementptr inbounds nuw i8, ptr %i.axt, i64 1760 ; 2 uses
  %wide.load614.12 = load <4 x float>, ptr %i.bot, align 16
  %i.bou = fadd <4 x float> %i.amm, %wide.load614.12
  store <4 x float> %i.bou, ptr %i.bot, align 16
  %i.bov = getelementptr inbounds nuw i8, ptr %i.axt, i64 1776 ; 2 uses
  %wide.load614.13 = load <4 x float>, ptr %i.bov, align 16
  %i.bow = fadd <4 x float> %i.amq, %wide.load614.13
  store <4 x float> %i.bow, ptr %i.bov, align 16
  br label %.preheader299

.preheader297:                                    ; preds = %bb.b, %.thread469.thread
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %.thread469.thread ] ; 3 uses
  %i.box = add nuw nsw i64 %indvars.iv, %i.axr    ; 8 uses
  %i.boy = icmp samesign ult i64 %i.box, 88
  br i1 %i.boy, label %bb.c, label %.thread469.thread

bb.c:                                             ; preds = %.preheader297
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr @ATH, i64 %i.box
  %i.bpa = load float, ptr %i.boz, align 4        ; 3 uses
  %.not = icmp eq i64 %i.box, 87
  br i1 %.not, label %.thread465, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bpb = getelementptr inbounds nuw [4 x i8], ptr @ATH, i64 %i.box
  %i.bpc = getelementptr inbounds nuw i8, ptr %i.bpb, i64 4
  %i.bpd = load float, ptr %i.bpc, align 4        ; 2 uses
  %i.bpe = fcmp ogt float %i.bpa, %i.bpd
  %.1252.1 = select i1 %i.bpe, float %i.bpd, float %i.bpa ; 3 uses
  %i.bpf = icmp samesign ult i64 %i.box, 86
  br i1 %i.bpf, label %bb.e, label %.thread465

.thread465:                                       ; preds = %bb.c, %bb.d
  %.1252.1467 = phi float [ %.1252.1, %bb.d ], [ %i.bpa, %bb.c ] ; 2 uses
  %i.bpg = fcmp ogt float %.1252.1467, -3.000000e+01
  br i1 %i.bpg, label %.thread469.thread, label %.thread469

bb.e:                                             ; preds = %bb.d
  %i.bph = getelementptr inbounds nuw [4 x i8], ptr @ATH, i64 %i.box
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bph, i64 8
  %i.bpj = load float, ptr %i.bpi, align 4        ; 2 uses
  %i.bpk = fcmp ogt float %.1252.1, %i.bpj
  %.1252.2 = select i1 %i.bpk, float %i.bpj, float %.1252.1 ; 3 uses
  %.not478 = icmp eq i64 %i.box, 85
  br i1 %.not478, label %.thread469, label %bb.g

.thread469:                                       ; preds = %.thread465, %bb.e
  %.1252.2471 = phi float [ %.1252.2, %bb.e ], [ %.1252.1467, %.thread465 ] ; 2 uses
  %i.bpl = fcmp ogt float %.1252.2471, -3.000000e+01
  br i1 %i.bpl, label %bb.f, label %.thread469.thread

bb.f:                                             ; preds = %.thread469
  br label %.thread469.thread

bb.g:                                             ; preds = %bb.e
  %i.bpm = getelementptr inbounds nuw [4 x i8], ptr @ATH, i64 %i.box
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpm, i64 12
  %i.bpo = load float, ptr %i.bpn, align 4        ; 2 uses
  %i.bpp = fcmp ogt float %.1252.2, %i.bpo
  br i1 %i.bpp, label %bb.h, label %.thread469.thread

bb.h:                                             ; preds = %bb.g
  br label %.thread469.thread

.thread469.thread:                                ; preds = %.thread465, %.preheader297, %bb.h, %bb.g, %bb.f, %.thread469
  %.1252.3 = phi float [ %i.bpo, %bb.h ], [ %.1252.2, %bb.g ], [ -3.000000e+01, %bb.f ], [ %.1252.2471, %.thread469 ], [ -3.000000e+01, %.preheader297 ], [ -3.000000e+01, %.thread465 ]
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store float %.1252.3, ptr %i.bpq, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 56
  br i1 %exitcond.not, label %.preheader300, label %.preheader297, !llvm.loop !549

.preheader299:                                    ; preds = %vector.body806, %vector.body694
  %i.bpr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvar
  %i.bps = load float, ptr %i.bpr, align 4
  %i.bpt = fpext float %i.bps to double
  %i.bpu = fadd double %i.bpt, 1.000000e+02
  %i.bpv = insertelement <2 x double> <double poison, double 1.000000e+02>, double %i.bpu, i64 0
  br label %vector.ph600

vector.ph600:                                     ; preds = %.preheader299, %vector.ph600
  %indvars.iv378 = phi i64 [ 0, %.preheader299 ], [ %indvars.iv.next379, %vector.ph600 ] ; 4 uses
  %i.bpw = getelementptr inbounds nuw [224 x i8], ptr %i.axt, i64 %indvars.iv378 ; 15 uses
  %i.bpx = trunc nuw nsw i64 %indvars.iv378 to i32 ; 2 uses
  %i.bpy = tail call i32 @llvm.umax.i32(i32 %i.bpx, i32 2)
  %i.bpz = mul nuw nsw i32 %i.bpy, 10
  %i.bqa = uitofp nneg i32 %i.bpz to double
  %i.bqb = getelementptr inbounds nuw [224 x i8], ptr %i.c, i64 %indvars.iv378 ; 17 uses
  %i.bqc = uitofp nneg i32 %i.bpx to float
  %i.bqd = fmul nnan float %i.bqc, 1.000000e+01
  %i.bqe = fpext float %i.bqd to double
  %i.bqf = insertelement <2 x double> poison, double %i.bqa, i64 0
  %i.bqg = insertelement <2 x double> %i.bqf, double %i.bqe, i64 1
  %i.bqh = fsub <2 x double> %i.bpv, %i.bqg
  %i.bqi = fadd <2 x double> %i.bqh, splat (double -3.000000e+01)
  %i.bqj = fptrunc <2 x double> %i.bqi to <2 x float> ; 2 uses
  %i.bqk = extractelement <2 x float> %i.bqj, i64 0
  call fastcc void @attenuate_curve(ptr noundef %i.bpw, float noundef %i.bqk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %i.bqb, ptr noundef nonnull align 16 dereferenceable(224) %i.a, i64 224, i1 false)
  %i.bql = extractelement <2 x float> %i.bqj, i64 1
  call fastcc void @attenuate_curve(ptr noundef %i.bqb, float noundef %i.bql)
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bpw, i64 16
  %wide.load603 = load <4 x float>, ptr %i.bpw, align 16 ; 2 uses
  %wide.load604 = load <4 x float>, ptr %i.bqm, align 16 ; 2 uses
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqb, i64 16 ; 2 uses
  %wide.load605 = load <4 x float>, ptr %i.bqb, align 16 ; 2 uses
  %wide.load606 = load <4 x float>, ptr %i.bqn, align 16 ; 2 uses
  %i.bqo = fcmp ogt <4 x float> %wide.load603, %wide.load605
  %i.bqp = fcmp ogt <4 x float> %wide.load604, %wide.load606
  %i.bqq = select <4 x i1> %i.bqo, <4 x float> %wide.load603, <4 x float> %wide.load605
  %i.bqr = select <4 x i1> %i.bqp, <4 x float> %wide.load604, <4 x float> %wide.load606
  store <4 x float> %i.bqq, ptr %i.bqb, align 16
  store <4 x float> %i.bqr, ptr %i.bqn, align 16
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bpw, i64 32
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bpw, i64 48
  %wide.load603.1 = load <4 x float>, ptr %i.bqs, align 16 ; 2 uses
  %wide.load604.1 = load <4 x float>, ptr %i.bqt, align 16 ; 2 uses
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqb, i64 32 ; 2 uses
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqb, i64 48 ; 2 uses
  %wide.load605.1 = load <4 x float>, ptr %i.bqu, align 16 ; 2 uses
  %wide.load606.1 = load <4 x float>, ptr %i.bqv, align 16 ; 2 uses
  %i.bqw = fcmp ogt <4 x float> %wide.load603.1, %wide.load605.1
  %i.bqx = fcmp ogt <4 x float> %wide.load604.1, %wide.load606.1
  %i.bqy = select <4 x i1> %i.bqw, <4 x float> %wide.load603.1, <4 x float> %wide.load605.1
  %i.bqz = select <4 x i1> %i.bqx, <4 x float> %wide.load604.1, <4 x float> %wide.load606.1
  store <4 x float> %i.bqy, ptr %i.bqu, align 16
  store <4 x float> %i.bqz, ptr %i.bqv, align 16
  %i.bra = getelementptr inbounds nuw i8, ptr %i.bpw, i64 64
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bpw, i64 80
  %wide.load603.2 = load <4 x float>, ptr %i.bra, align 16 ; 2 uses
  %wide.load604.2 = load <4 x float>, ptr %i.brb, align 16 ; 2 uses
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bqb, i64 64 ; 2 uses
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bqb, i64 80 ; 2 uses
  %wide.load605.2 = load <4 x float>, ptr %i.brc, align 16 ; 2 uses
  %wide.load606.2 = load <4 x float>, ptr %i.brd, align 16 ; 2 uses
  %i.bre = fcmp ogt <4 x float> %wide.load603.2, %wide.load605.2
  %i.brf = fcmp ogt <4 x float> %wide.load604.2, %wide.load606.2
  %i.brg = select <4 x i1> %i.bre, <4 x float> %wide.load603.2, <4 x float> %wide.load605.2
  %i.brh = select <4 x i1> %i.brf, <4 x float> %wide.load604.2, <4 x float> %wide.load606.2
  store <4 x float> %i.brg, ptr %i.brc, align 16
  store <4 x float> %i.brh, ptr %i.brd, align 16
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bpw, i64 96
  %i.brj = getelementptr inbounds nuw i8, ptr %i.bpw, i64 112
  %wide.load603.3 = load <4 x float>, ptr %i.bri, align 16 ; 2 uses
  %wide.load604.3 = load <4 x float>, ptr %i.brj, align 16 ; 2 uses
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bqb, i64 96 ; 2 uses
  %i.brl = getelementptr inbounds nuw i8, ptr %i.bqb, i64 112 ; 2 uses
  %wide.load605.3 = load <4 x float>, ptr %i.brk, align 16 ; 2 uses
  %wide.load606.3 = load <4 x float>, ptr %i.brl, align 16 ; 2 uses
  %i.brm = fcmp ogt <4 x float> %wide.load603.3, %wide.load605.3
  %i.brn = fcmp ogt <4 x float> %wide.load604.3, %wide.load606.3
  %i.bro = select <4 x i1> %i.brm, <4 x float> %wide.load603.3, <4 x float> %wide.load605.3
  %i.brp = select <4 x i1> %i.brn, <4 x float> %wide.load604.3, <4 x float> %wide.load606.3
  store <4 x float> %i.bro, ptr %i.brk, align 16
  store <4 x float> %i.brp, ptr %i.brl, align 16
  %i.brq = getelementptr inbounds nuw i8, ptr %i.bpw, i64 128
  %i.brr = getelementptr inbounds nuw i8, ptr %i.bpw, i64 144
  %wide.load603.4 = load <4 x float>, ptr %i.brq, align 16 ; 2 uses
  %wide.load604.4 = load <4 x float>, ptr %i.brr, align 16 ; 2 uses
  %i.brs = getelementptr inbounds nuw i8, ptr %i.bqb, i64 128 ; 2 uses
  %i.brt = getelementptr inbounds nuw i8, ptr %i.bqb, i64 144 ; 2 uses
  %wide.load605.4 = load <4 x float>, ptr %i.brs, align 16 ; 2 uses
  %wide.load606.4 = load <4 x float>, ptr %i.brt, align 16 ; 2 uses
  %i.bru = fcmp ogt <4 x float> %wide.load603.4, %wide.load605.4
  %i.brv = fcmp ogt <4 x float> %wide.load604.4, %wide.load606.4
  %i.brw = select <4 x i1> %i.bru, <4 x float> %wide.load603.4, <4 x float> %wide.load605.4
  %i.brx = select <4 x i1> %i.brv, <4 x float> %wide.load604.4, <4 x float> %wide.load606.4
  store <4 x float> %i.brw, ptr %i.brs, align 16
  store <4 x float> %i.brx, ptr %i.brt, align 16
  %i.bry = getelementptr inbounds nuw i8, ptr %i.bpw, i64 160
  %i.brz = getelementptr inbounds nuw i8, ptr %i.bpw, i64 176
  %wide.load603.5 = load <4 x float>, ptr %i.bry, align 16 ; 2 uses
  %wide.load604.5 = load <4 x float>, ptr %i.brz, align 16 ; 2 uses
  %i.bsa = getelementptr inbounds nuw i8, ptr %i.bqb, i64 160 ; 2 uses
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.bqb, i64 176 ; 2 uses
  %wide.load605.5 = load <4 x float>, ptr %i.bsa, align 16 ; 2 uses
  %wide.load606.5 = load <4 x float>, ptr %i.bsb, align 16 ; 2 uses
  %i.bsc = fcmp ogt <4 x float> %wide.load603.5, %wide.load605.5
  %i.bsd = fcmp ogt <4 x float> %wide.load604.5, %wide.load606.5
  %i.bse = select <4 x i1> %i.bsc, <4 x float> %wide.load603.5, <4 x float> %wide.load605.5
  %i.bsf = select <4 x i1> %i.bsd, <4 x float> %wide.load604.5, <4 x float> %wide.load606.5
  store <4 x float> %i.bse, ptr %i.bsa, align 16
  store <4 x float> %i.bsf, ptr %i.bsb, align 16
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bpw, i64 192
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bpw, i64 208
  %wide.load603.6 = load <4 x float>, ptr %i.bsg, align 16 ; 2 uses
  %wide.load604.6 = load <4 x float>, ptr %i.bsh, align 16 ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bqb, i64 192 ; 2 uses
  %i.bsj = getelementptr inbounds nuw i8, ptr %i.bqb, i64 208 ; 2 uses
  %wide.load605.6 = load <4 x float>, ptr %i.bsi, align 16 ; 2 uses
  %wide.load606.6 = load <4 x float>, ptr %i.bsj, align 16 ; 2 uses
  %i.bsk = fcmp ogt <4 x float> %wide.load603.6, %wide.load605.6
  %i.bsl = fcmp ogt <4 x float> %wide.load604.6, %wide.load606.6
  %i.bsm = select <4 x i1> %i.bsk, <4 x float> %wide.load603.6, <4 x float> %wide.load605.6
  %i.bsn = select <4 x i1> %i.bsl, <4 x float> %wide.load604.6, <4 x float> %wide.load606.6
  store <4 x float> %i.bsm, ptr %i.bsi, align 16
  store <4 x float> %i.bsn, ptr %i.bsj, align 16
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond381.not = icmp eq i64 %indvars.iv.next379, 8
  br i1 %exitcond381.not, label %vector.body592, label %vector.ph600, !llvm.loop !550

vector.body592:                                   ; preds = %vector.ph600
  %wide.load594 = load <4 x float>, ptr %i.c, align 16 ; 2 uses
  %wide.load595 = load <4 x float>, ptr %i.amr, align 16 ; 2 uses
  %wide.load596 = load <4 x float>, ptr %i.j, align 16 ; 2 uses
  %wide.load597 = load <4 x float>, ptr %i.ams, align 16 ; 2 uses
  %i.bso = fcmp olt <4 x float> %wide.load594, %wide.load596
  %i.bsp = fcmp olt <4 x float> %wide.load595, %wide.load597
  %i.bsq = select <4 x i1> %i.bso, <4 x float> %wide.load594, <4 x float> %wide.load596
  %i.bsr = select <4 x i1> %i.bsp, <4 x float> %wide.load595, <4 x float> %wide.load597
  store <4 x float> %i.bsq, ptr %i.j, align 16
  store <4 x float> %i.bsr, ptr %i.ams, align 16
  %wide.load594.1 = load <4 x float>, ptr %i.amt, align 16 ; 2 uses
  %wide.load595.1 = load <4 x float>, ptr %i.amu, align 16 ; 2 uses
  %wide.load596.1 = load <4 x float>, ptr %i.amv, align 16 ; 2 uses
  %wide.load597.1 = load <4 x float>, ptr %i.amw, align 16 ; 2 uses
  %i.bss = fcmp olt <4 x float> %wide.load594.1, %wide.load596.1
  %i.bst = fcmp olt <4 x float> %wide.load595.1, %wide.load597.1
  %i.bsu = select <4 x i1> %i.bss, <4 x float> %wide.load594.1, <4 x float> %wide.load596.1
  %i.bsv = select <4 x i1> %i.bst, <4 x float> %wide.load595.1, <4 x float> %wide.load597.1
  store <4 x float> %i.bsu, ptr %i.amv, align 16
  store <4 x float> %i.bsv, ptr %i.amw, align 16
  %wide.load594.2 = load <4 x float>, ptr %i.amx, align 16 ; 2 uses
  %wide.load595.2 = load <4 x float>, ptr %i.amy, align 16 ; 2 uses
  %wide.load596.2 = load <4 x float>, ptr %i.amz, align 16 ; 2 uses
  %wide.load597.2 = load <4 x float>, ptr %i.ana, align 16 ; 2 uses
  %i.bsw = fcmp olt <4 x float> %wide.load594.2, %wide.load596.2
  %i.bsx = fcmp olt <4 x float> %wide.load595.2, %wide.load597.2
  %i.bsy = select <4 x i1> %i.bsw, <4 x float> %wide.load594.2, <4 x float> %wide.load596.2
  %i.bsz = select <4 x i1> %i.bsx, <4 x float> %wide.load595.2, <4 x float> %wide.load597.2
  store <4 x float> %i.bsy, ptr %i.amz, align 16
  store <4 x float> %i.bsz, ptr %i.ana, align 16
  %wide.load594.3 = load <4 x float>, ptr %i.anb, align 16 ; 2 uses
  %wide.load595.3 = load <4 x float>, ptr %i.anc, align 16 ; 2 uses
  %wide.load596.3 = load <4 x float>, ptr %i.and, align 16 ; 2 uses
  %wide.load597.3 = load <4 x float>, ptr %i.ane, align 16 ; 2 uses
  %i.bta = fcmp olt <4 x float> %wide.load594.3, %wide.load596.3
  %i.btb = fcmp olt <4 x float> %wide.load595.3, %wide.load597.3
  %i.btc = select <4 x i1> %i.bta, <4 x float> %wide.load594.3, <4 x float> %wide.load596.3
  %i.btd = select <4 x i1> %i.btb, <4 x float> %wide.load595.3, <4 x float> %wide.load597.3
  store <4 x float> %i.btc, ptr %i.and, align 16
  store <4 x float> %i.btd, ptr %i.ane, align 16
  %wide.load594.4 = load <4 x float>, ptr %i.anf, align 16 ; 2 uses
  %wide.load595.4 = load <4 x float>, ptr %i.ang, align 16 ; 2 uses
  %wide.load596.4 = load <4 x float>, ptr %i.anh, align 16 ; 2 uses
  %wide.load597.4 = load <4 x float>, ptr %i.ani, align 16 ; 2 uses
  %i.bte = fcmp olt <4 x float> %wide.load594.4, %wide.load596.4
  %i.btf = fcmp olt <4 x float> %wide.load595.4, %wide.load597.4
  %i.btg = select <4 x i1> %i.bte, <4 x float> %wide.load594.4, <4 x float> %wide.load596.4
  %i.bth = select <4 x i1> %i.btf, <4 x float> %wide.load595.4, <4 x float> %wide.load597.4
  store <4 x float> %i.btg, ptr %i.anh, align 16
  store <4 x float> %i.bth, ptr %i.ani, align 16
  %wide.load594.5 = load <4 x float>, ptr %i.anj, align 16 ; 2 uses
  %wide.load595.5 = load <4 x float>, ptr %i.ank, align 16 ; 2 uses
  %wide.load596.5 = load <4 x float>, ptr %i.anl, align 16 ; 2 uses
  %wide.load597.5 = load <4 x float>, ptr %i.anm, align 16 ; 2 uses
  %i.bti = fcmp olt <4 x float> %wide.load594.5, %wide.load596.5
  %i.btj = fcmp olt <4 x float> %wide.load595.5, %wide.load597.5
  %i.btk = select <4 x i1> %i.bti, <4 x float> %wide.load594.5, <4 x float> %wide.load596.5
  %i.btl = select <4 x i1> %i.btj, <4 x float> %wide.load595.5, <4 x float> %wide.load597.5
  store <4 x float> %i.btk, ptr %i.anl, align 16
  store <4 x float> %i.btl, ptr %i.anm, align 16
  %wide.load594.6 = load <4 x float>, ptr %i.ann, align 16 ; 2 uses
  %wide.load595.6 = load <4 x float>, ptr %i.ano, align 16 ; 2 uses
  %wide.load596.6 = load <4 x float>, ptr %i.anp, align 16 ; 2 uses
  %wide.load597.6 = load <4 x float>, ptr %i.anq, align 16 ; 2 uses
end_hunk_0
