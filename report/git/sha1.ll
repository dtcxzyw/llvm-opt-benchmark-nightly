Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/sha1?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@sha1_compression_states:bb.a
  %i.aix = xor i32 %i.aiw, %i.ahs
  %i.aiy = add i32 %i.ait, -899497514
  %i.aiz = add i32 %i.aiy, %i.ahf
  %i.aja = add i32 %i.aiz, %i.aix
  %i.ajb = add i32 %i.aja, %i.aiv                 ; 5 uses
  %i.ajc = tail call i32 @llvm.fshl.i32(i32 %i.ahs, i32 %i.ahs, i32 30) ; 3 uses
  %i.ajd = load i32, ptr %i.ahl, align 4, !tbaa !13 ; 4 uses
  %i.aje = load i32, ptr %i.aei, align 4, !tbaa !13 ; 3 uses
  %i.ajf = load i32, ptr %i.aan, align 4, !tbaa !13 ; 2 uses
  %i.ajg = load i32, ptr %i.zj, align 4, !tbaa !13
  %i.ajh = xor i32 %i.ajd, %i.ajg
  %i.aji = xor i32 %i.ajh, %i.aje
  %i.ajj = xor i32 %i.aji, %i.ajf                 ; 2 uses
  %i.ajk = tail call i32 @llvm.fshl.i32(i32 %i.ajj, i32 %i.ajj, i32 1) ; 4 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %2, i64 264
  store volatile i32 %i.ajk, ptr %i.ajl, align 4, !tbaa !13
  %i.ajm = tail call i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 5)
  %i.ajn = xor i32 %i.ajc, %i.aig
  %i.ajo = xor i32 %i.ajn, %i.aif
  %i.ajp = add i32 %i.ajk, -899497514
  %i.ajq = add i32 %i.ajp, %i.aht
  %i.ajr = add i32 %i.ajq, %i.ajo
  %i.ajs = add i32 %i.ajr, %i.ajm                 ; 5 uses
  %i.ajt = tail call i32 @llvm.fshl.i32(i32 %i.aif, i32 %i.aif, i32 30) ; 3 uses
  %i.aju = load i32, ptr %i.ahy, align 4, !tbaa !13 ; 3 uses
  %i.ajv = load i32, ptr %i.afb, align 4, !tbaa !13 ; 3 uses
  %i.ajw = load i32, ptr %i.abc, align 4, !tbaa !13 ; 2 uses
  %i.ajx = xor i32 %i.aju, %i.aio
  %i.ajy = xor i32 %i.ajx, %i.ajv
  %i.ajz = xor i32 %i.ajy, %i.ajw                 ; 2 uses
  %i.aka = tail call i32 @llvm.fshl.i32(i32 %i.ajz, i32 %i.ajz, i32 1) ; 4 uses
  %i.akb = getelementptr inbounds nuw i8, ptr %2, i64 268
  store volatile i32 %i.aka, ptr %i.akb, align 4, !tbaa !13
  %i.akc = tail call i32 @llvm.fshl.i32(i32 %i.ajs, i32 %i.ajs, i32 5)
  %i.akd = xor i32 %i.ajt, %i.ajc
  %i.ake = xor i32 %i.akd, %i.ajb
  %i.akf = add i32 %i.aka, -899497514
  %i.akg = add i32 %i.akf, %i.aig
  %i.akh = add i32 %i.akg, %i.ake
  %i.aki = add i32 %i.akh, %i.akc                 ; 5 uses
  %i.akj = tail call i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 30) ; 3 uses
  %i.akk = load i32, ptr %i.aft, align 4, !tbaa !13 ; 3 uses
  %i.akl = load i32, ptr %i.abr, align 4, !tbaa !13 ; 2 uses
  %i.akm = xor i32 %i.ajf, %i.ait
  %i.akn = xor i32 %i.akm, %i.akk
  %i.ako = xor i32 %i.akn, %i.akl                 ; 2 uses
  %i.akp = tail call i32 @llvm.fshl.i32(i32 %i.ako, i32 %i.ako, i32 1) ; 4 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %2, i64 272
  store volatile i32 %i.akp, ptr %i.akq, align 4, !tbaa !13
  %i.akr = tail call i32 @llvm.fshl.i32(i32 %i.aki, i32 %i.aki, i32 5)
  %i.aks = xor i32 %i.akj, %i.ajt
  %i.akt = xor i32 %i.aks, %i.ajs
  %i.aku = add i32 %i.akp, -899497514
  %i.akv = add i32 %i.aku, %i.ajc
  %i.akw = add i32 %i.akv, %i.akt
  %i.akx = add i32 %i.akw, %i.akr                 ; 5 uses
  %i.aky = tail call i32 @llvm.fshl.i32(i32 %i.ajs, i32 %i.ajs, i32 30) ; 3 uses
  %i.akz = load i32, ptr %i.agi, align 4, !tbaa !13 ; 3 uses
  %i.ala = load i32, ptr %i.acg, align 4, !tbaa !13 ; 2 uses
  %i.alb = xor i32 %i.ajw, %i.ajk
  %i.alc = xor i32 %i.alb, %i.akz
  %i.ald = xor i32 %i.alc, %i.ala                 ; 2 uses
  %i.ale = tail call i32 @llvm.fshl.i32(i32 %i.ald, i32 %i.ald, i32 1) ; 4 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %2, i64 276
  store volatile i32 %i.ale, ptr %i.alf, align 4, !tbaa !13
  %i.alg = tail call i32 @llvm.fshl.i32(i32 %i.akx, i32 %i.akx, i32 5)
  %i.alh = xor i32 %i.aky, %i.akj
  %i.ali = xor i32 %i.alh, %i.aki
  %i.alj = add i32 %i.ale, -899497514
  %i.alk = add i32 %i.alj, %i.ajt
  %i.all = add i32 %i.alk, %i.ali
  %i.alm = add i32 %i.all, %i.alg                 ; 5 uses
  %i.aln = tail call i32 @llvm.fshl.i32(i32 %i.aki, i32 %i.aki, i32 30) ; 3 uses
  %i.alo = xor i32 %i.aka, %i.aim
  %i.alp = load i32, ptr %i.acv, align 4, !tbaa !13 ; 2 uses
  %i.alq = xor i32 %i.alo, %i.akl
  %i.alr = xor i32 %i.alq, %i.alp                 ; 2 uses
  %i.als = tail call i32 @llvm.fshl.i32(i32 %i.alr, i32 %i.alr, i32 1) ; 4 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %2, i64 280
  store volatile i32 %i.als, ptr %i.alt, align 4, !tbaa !13
  %i.alu = tail call i32 @llvm.fshl.i32(i32 %i.alm, i32 %i.alm, i32 5)
  %i.alv = xor i32 %i.aln, %i.aky
  %i.alw = xor i32 %i.alv, %i.akx
  %i.alx = add i32 %i.als, -899497514
  %i.aly = add i32 %i.alx, %i.akj
  %i.alz = add i32 %i.aly, %i.alw
  %i.ama = add i32 %i.alz, %i.alu                 ; 5 uses
  %i.amb = tail call i32 @llvm.fshl.i32(i32 %i.akx, i32 %i.akx, i32 30) ; 3 uses
  %i.amc = xor i32 %i.ajd, %i.ain
  %i.amd = xor i32 %i.amc, %i.akp
  %i.ame = xor i32 %i.amd, %i.ala                 ; 2 uses
  %i.amf = tail call i32 @llvm.fshl.i32(i32 %i.ame, i32 %i.ame, i32 1) ; 4 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %2, i64 284
  store volatile i32 %i.amf, ptr %i.amg, align 4, !tbaa !13
  %i.amh = tail call i32 @llvm.fshl.i32(i32 %i.ama, i32 %i.ama, i32 5)
  %i.ami = xor i32 %i.amb, %i.aln
  %i.amj = xor i32 %i.ami, %i.alm
  %i.amk = add i32 %i.amf, -899497514
  %i.aml = add i32 %i.amk, %i.aky
  %i.amm = add i32 %i.aml, %i.amj
  %i.amn = add i32 %i.amm, %i.amh                 ; 5 uses
  %i.amo = tail call i32 @llvm.fshl.i32(i32 %i.alm, i32 %i.alm, i32 30) ; 3 uses
  %i.amp = xor i32 %i.aju, %i.aje
  %i.amq = xor i32 %i.amp, %i.alp
  %i.amr = xor i32 %i.amq, %i.ale                 ; 2 uses
  %i.ams = tail call i32 @llvm.fshl.i32(i32 %i.amr, i32 %i.amr, i32 1) ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %2, i64 288
  store volatile i32 %i.ams, ptr %i.amt, align 4, !tbaa !13
  %i.amu = tail call i32 @llvm.fshl.i32(i32 %i.amn, i32 %i.amn, i32 5)
  %i.amv = xor i32 %i.amo, %i.amb
  %i.amw = xor i32 %i.amv, %i.ama
  %i.amx = add i32 %i.ams, -899497514
  %i.amy = add i32 %i.amx, %i.aln
  %i.amz = add i32 %i.amy, %i.amw
  %i.ana = tail call i32 @llvm.fshl.i32(i32 %i.ama, i32 %i.ama, i32 30) ; 3 uses
  %i.anb = xor i32 %i.ait, %i.ain
  %i.anc = xor i32 %i.anb, %i.ajv
  %i.and = xor i32 %i.anc, %i.als                 ; 2 uses
  %i.ane = tail call i32 @llvm.fshl.i32(i32 %i.and, i32 %i.and, i32 1) ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %2, i64 292
  store volatile i32 %i.ane, ptr %i.anf, align 4, !tbaa !13
  %i.ang = xor i32 %i.ana, %i.amo
  %i.anh = xor i32 %i.ang, %i.amn
  %i.ani = add i32 %i.ane, -899497514
  %i.anj = add i32 %i.ani, %i.amb
  %i.ank = add i32 %i.anj, %i.anh
  %i.anl = tail call i32 @llvm.fshl.i32(i32 %i.amn, i32 %i.amn, i32 30) ; 3 uses
  %i.anm = xor i32 %i.ajk, %i.aje
  %i.ann = xor i32 %i.anm, %i.akk
  %i.ano = xor i32 %i.ann, %i.amf                 ; 2 uses
  %i.anp = tail call i32 @llvm.fshl.i32(i32 %i.ano, i32 %i.ano, i32 1) ; 3 uses
  %i.anq = getelementptr inbounds nuw i8, ptr %2, i64 296
  store volatile i32 %i.anp, ptr %i.anq, align 4, !tbaa !13
  %i.anr = xor i32 %i.aka, %i.ajv
  %i.ans = xor i32 %i.anr, %i.akz
  %i.ant = xor i32 %i.ans, %i.ams                 ; 2 uses
  %i.anu = tail call i32 @llvm.fshl.i32(i32 %i.ant, i32 %i.ant, i32 1) ; 3 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %2, i64 300
  store volatile i32 %i.anu, ptr %i.anv, align 4, !tbaa !13
  %i.anw = add i32 %i.anu, -899497514
  %i.anx = add i32 %i.anw, %i.ana
  %i.any = xor i32 %i.akk, %i.aim
  %i.anz = xor i32 %i.any, %i.akp
  %i.aoa = xor i32 %i.anz, %i.ane                 ; 2 uses
  %i.aob = tail call i32 @llvm.fshl.i32(i32 %i.aoa, i32 %i.aoa, i32 1) ; 3 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %2, i64 304
  store volatile i32 %i.aob, ptr %i.aoc, align 4, !tbaa !13
  %i.aod = xor i32 %i.akz, %i.ajd
  %i.aoe = xor i32 %i.aod, %i.ale
  %i.aof = xor i32 %i.aoe, %i.anp                 ; 2 uses
  %i.aog = tail call i32 @llvm.fshl.i32(i32 %i.aof, i32 %i.aof, i32 1) ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %2, i64 308
  store volatile i32 %i.aog, ptr %i.aoh, align 4, !tbaa !13
  %i.aoi = add i32 %i.aog, -899497514
  %i.aoj = xor i32 %i.aju, %i.aim
  %i.aok = xor i32 %i.aoj, %i.als
  %i.aol = xor i32 %i.aok, %i.anu                 ; 2 uses
  %i.aom = tail call i32 @llvm.fshl.i32(i32 %i.aol, i32 %i.aol, i32 1) ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %2, i64 312
  store volatile i32 %i.aom, ptr %i.aon, align 4, !tbaa !13
  %i.aoo = xor i32 %i.ait, %i.ajd
  %i.aop = xor i32 %i.aoo, %i.amf
  %i.aoq = xor i32 %i.aop, %i.aob                 ; 2 uses
  %i.aor = tail call i32 @llvm.fshl.i32(i32 %i.aoq, i32 %i.aoq, i32 1) ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %2, i64 316
  store volatile i32 %i.aor, ptr %i.aos, align 4, !tbaa !13
  %i.aot = load i32, ptr %0, align 4, !tbaa !13
  %i.aou = add i32 %i.aot, -899497514
  %i.aov = add i32 %i.aou, %i.aor
  %i.aow = add i32 %i.amz, %i.amu                 ; 5 uses
  %i.aox = tail call i32 @llvm.fshl.i32(i32 %i.aow, i32 %i.aow, i32 5)
  %i.aoy = add i32 %i.ank, %i.aox                 ; 5 uses
  %i.aoz = tail call i32 @llvm.fshl.i32(i32 %i.aoy, i32 %i.aoy, i32 5)
  %i.apa = xor i32 %i.anl, %i.ana
  %i.apb = xor i32 %i.apa, %i.aow
  %i.apc = add i32 %i.anp, -899497514
  %i.apd = add i32 %i.apc, %i.amo
  %i.ape = add i32 %i.apd, %i.apb
  %i.apf = add i32 %i.ape, %i.aoz                 ; 5 uses
  %i.apg = tail call i32 @llvm.fshl.i32(i32 %i.aow, i32 %i.aow, i32 30) ; 3 uses
  %i.aph = tail call i32 @llvm.fshl.i32(i32 %i.apf, i32 %i.apf, i32 5)
  %i.api = xor i32 %i.apg, %i.anl
  %i.apj = xor i32 %i.api, %i.aoy
  %i.apk = add i32 %i.anx, %i.apj
  %i.apl = add i32 %i.apk, %i.aph                 ; 5 uses
  %i.apm = tail call i32 @llvm.fshl.i32(i32 %i.aoy, i32 %i.aoy, i32 30) ; 3 uses
  %i.apn = tail call i32 @llvm.fshl.i32(i32 %i.apl, i32 %i.apl, i32 5)
  %i.apo = xor i32 %i.apm, %i.apg
  %i.app = xor i32 %i.apo, %i.apf
  %i.apq = add i32 %i.aob, -899497514
  %i.apr = add i32 %i.apq, %i.anl
  %i.aps = add i32 %i.apr, %i.app
  %i.apt = add i32 %i.aps, %i.apn                 ; 5 uses
  %i.apu = tail call i32 @llvm.fshl.i32(i32 %i.apf, i32 %i.apf, i32 30) ; 3 uses
  %i.apv = tail call i32 @llvm.fshl.i32(i32 %i.apt, i32 %i.apt, i32 5)
  %i.apw = xor i32 %i.apu, %i.apm
  %i.apx = xor i32 %i.apw, %i.apl
  %i.apy = add i32 %i.aoi, %i.apg
  %i.apz = add i32 %i.apy, %i.apx
  %i.aqa = add i32 %i.apz, %i.apv                 ; 5 uses
  %4 = tail call i32 @llvm.fshl.i32(i32 %i.apl, i32 %i.apl, i32 30) ; 3 uses
  %i.aqb = tail call i32 @llvm.fshl.i32(i32 %i.apt, i32 %i.apt, i32 30) ; 2 uses
  %i.aqc = tail call i32 @llvm.fshl.i32(i32 %i.aqa, i32 %i.aqa, i32 30)
  %5 = tail call i32 @llvm.fshl.i32(i32 %i.aqa, i32 %i.aqa, i32 5)
  %i.aqd = xor i32 %4, %i.apu
  %6 = xor i32 %i.aqd, %i.apt
  %i.aqe = add i32 %i.aom, -899497514
  %i.aqf = add i32 %i.aqe, %i.apm
  %i.aqg = add i32 %i.aqf, %6
  %7 = add i32 %i.aqg, %5                         ; 3 uses
  %i.aqh = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 5)
  %i.aqi = xor i32 %i.aqb, %4
  %i.aqj = xor i32 %i.aqi, %i.aqa
  %i.aqk = add i32 %i.aov, %i.apu
  %i.aql = add i32 %i.aqk, %i.aqj
  %i.aqm = add i32 %i.aql, %i.aqh
  store i32 %i.aqm, ptr %0, align 4, !tbaa !13
  %i.aqn = load <4 x i32>, ptr %i.b, align 4, !tbaa !13
  %i.aqo = insertelement <4 x i32> poison, i32 %7, i64 0
  %i.aqp = insertelement <4 x i32> %i.aqo, i32 %i.aqc, i64 1
  %i.aqq = insertelement <4 x i32> %i.aqp, i32 %i.aqb, i64 2
  %i.aqr = insertelement <4 x i32> %i.aqq, i32 %4, i64 3
  %i.aqs = add <4 x i32> %i.aqr, %i.aqn
  store <4 x i32> %i.aqs, ptr %i.b, align 4, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1DCInit(ptr nofree noundef writeonly captures(none) initializes((0, 28), (92, 120)) %0) local_unnamed_addr #2 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1009589776, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  store <4 x i32> <i32 0, i32 0, i32 1, i32 1>, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.e, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1DCSetSafeHash(ptr nofree noundef writeonly captures(none) initializes((96, 100)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp ne i32 %1, 0
  %spec.select = zext i1 %.not to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1DCSetUseUBC(ptr nofree noundef writeonly captures(none) initializes((104, 108)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp ne i32 %1, 0
  %spec.select = zext i1 %.not to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %spec.select, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1DCSetUseDetectColl(ptr nofree noundef writeonly captures(none) initializes((100, 104)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp ne i32 %1, 0
  %spec.select = zext i1 %.not to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1DCSetDetectReducedRoundCollision(ptr nofree noundef writeonly captures(none) initializes((108, 112)) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp ne i32 %1, 0
  %spec.select = zext i1 %.not to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @SHA1DCSetCallback(ptr nofree noundef writeonly captures(none) initializes((112, 120)) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.a, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @SHA1DCUpdate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 63                         ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw nsw i32 64, %i.d
  %i.f = zext nneg i32 %i.e to i64                ; 5 uses
  %.not37 = icmp ult i64 %2, %i.f
  br i1 %.not37, label %._crit_edge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %i.b, %i.f
  store i64 %i.g, ptr %0, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.i = and i64 %i.b, 63
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %i.f, i1 false)
  tail call fastcc void @sha1_process(ptr noundef nonnull %0, ptr noundef nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.l = sub nuw i64 %2, %i.f
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.031 = phi ptr [ %i.k, %bb.d ], [ %1, %bb.b ]  ; 2 uses
  %.030 = phi i64 [ %i.l, %bb.d ], [ %2, %bb.b ]  ; 3 uses
  %i.m = icmp ugt i64 %.030, 63
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.140 = phi i64 [ %i.q, %.lr.ph ], [ %.030, %bb.e ]
  %.13239 = phi ptr [ %i.p, %.lr.ph ], [ %.031, %bb.e ] ; 2 uses
  %i.n = load i64, ptr %0, align 8, !tbaa !17
  %i.o = add i64 %i.n, 64
  store i64 %i.o, ptr %0, align 8, !tbaa !17
  tail call fastcc void @sha1_process(ptr noundef nonnull %0, ptr noundef %.13239)
  %i.p = getelementptr inbounds nuw i8, ptr %.13239, i64 64 ; 2 uses
  %i.q = add i64 %.140, -64                       ; 3 uses
  %i.r = icmp ugt i64 %i.q, 63
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.132.lcssa = phi ptr [ %.031, %bb.e ], [ %i.p, %.lr.ph ]
  %.1.lcssa = phi i64 [ %.030, %bb.e ], [ %i.q, %.lr.ph ] ; 2 uses
  %.not38 = icmp eq i64 %.1.lcssa, 0
  br i1 %.not38, label %bb.f, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c, %._crit_edge
  %.1.lcssa57 = phi i64 [ %.1.lcssa, %._crit_edge ], [ %2, %bb.c ] ; 2 uses
  %.132.lcssa56 = phi ptr [ %.132.lcssa, %._crit_edge ], [ %1, %bb.c ]
  %.05055 = phi i32 [ 0, %._crit_edge ], [ %i.d, %bb.c ]
  %i.s = load i64, ptr %0, align 8, !tbaa !17
  %i.t = add i64 %i.s, %.1.lcssa57
  store i64 %i.t, ptr %0, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = zext nneg i32 %.05055 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %.132.lcssa56, i64 %.1.lcssa57, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %._crit_edge.thread, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @sha1_process(ptr noundef initializes((120, 140)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 -1, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load <4 x i32>, ptr %i.b, align 8, !tbaa !13
  store <4 x i32> %i.g, ptr %i.c, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  tail call void @sha1_compression_states(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.n = load i32, ptr %i.m, align 4, !tbaa !22
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i32, ptr %i.o, align 8, !tbaa !21
  %.not55 = icmp eq i32 %i.p, 0
  br i1 %.not55, label %.preheader751, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ubc_check(ptr noundef nonnull %i.k, ptr noundef nonnull %i.a) #8
  %.pre = load i32, ptr %i.a, align 4, !tbaa !13  ; 2 uses
  %.not56 = icmp eq i32 %.pre, 0
  br i1 %.not56, label %.loopexit, label %.preheader751

.preheader751:                                    ; preds = %bb.b, %bb.c
  %i.q = phi i32 [ %.pre, %bb.c ], [ -1, %bb.b ]
  %i.r = load i32, ptr @sha1_dvs, align 4, !tbaa !31
  %.not57753 = icmp eq i32 %i.r, 0
  br i1 %.not57753, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader751
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
end_hunk_0
