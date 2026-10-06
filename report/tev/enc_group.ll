Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_group?download=true
inline.NumInlined: 2366
inline.NumDeleted: 909
loop-unroll.NumCompletelyUnrolled: 500
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 593
begin_hunk_0_@_ZN3jxl6N_AVX212_GLOBAL__N_123DCFromLowestFrequenciesENS_14AcStrategyTypeEPKfPfmS5_:bb.a
  store float %i.amc, ptr %i.amd, align 4, !tbaa !56
  %i.ame = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !56
  %i.amg = fmul float %i.amf, f0x3F497C6E
  %i.amh = fmul float %i.amg, f0x3F66DA05
  %i.ami = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %i.amh, ptr %i.ami, align 4, !tbaa !56
  %i.amj = getelementptr inbounds nuw i8, ptr %1, i64 396
  %i.amk = load float, ptr %i.amj, align 4, !tbaa !56
  %i.aml = fmul float %i.amk, f0x3F497C6E
  %i.amm = fmul float %i.aml, f0x3F497C6E
  %i.amn = getelementptr inbounds nuw i8, ptr %4, i64 60
  store float %i.amm, ptr %i.amn, align 4, !tbaa !56
  %i.amo = getelementptr inbounds nuw i8, ptr %4, i64 4096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.amp = getelementptr inbounds nuw i8, ptr %4, i64 4160
  %i.amq = load <4 x float>, ptr %4, align 4, !tbaa !57, !alias.scope !1977, !noalias !1978 ; 2 uses
  %i.amr = load <4 x float>, ptr %i.ald, align 4, !tbaa !57, !alias.scope !1977, !noalias !1978 ; 2 uses
  %i.ams = getelementptr inbounds nuw i8, ptr %4, i64 4176
  %i.amt = load <4 x float>, ptr %i.akk, align 4, !tbaa !57, !alias.scope !1979, !noalias !1978 ; 2 uses
  %i.amu = getelementptr inbounds nuw i8, ptr %4, i64 4192
  %i.amv = load <4 x float>, ptr %i.alw, align 4, !tbaa !57, !alias.scope !1979, !noalias !1978
  %i.amw = getelementptr inbounds nuw i8, ptr %4, i64 4208
  %i.amx = fadd <4 x float> %i.amq, %i.amr        ; 2 uses
  %i.amy = fsub <4 x float> %i.amq, %i.amr        ; 2 uses
  %i.amz = fadd <4 x float> %i.amt, %i.amv        ; 2 uses
  %i.ana = fmul <4 x float> %i.amt, splat (float f0x3FB504F3) ; 2 uses
  %i.anb = fadd <4 x float> %i.ana, %i.amz        ; 2 uses
  %i.anc = fsub <4 x float> %i.ana, %i.amz        ; 2 uses
  %i.and = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.anb, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.amx) ; 5 uses
  %i.ane = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.anb, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.amx) ; 5 uses
  store <4 x float> %i.and, ptr %i.amo, align 4, !tbaa !57, !alias.scope !1980, !noalias !1981
  %i.anf = getelementptr inbounds nuw i8, ptr %4, i64 4144
  store <4 x float> %i.ane, ptr %i.anf, align 4, !tbaa !57, !alias.scope !1982, !noalias !1981
  %i.ang = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.anc, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.amy) ; 5 uses
  %i.anh = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.anc, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.amy) ; 5 uses
  %i.ani = getelementptr inbounds nuw i8, ptr %4, i64 4112
  store <4 x float> %i.ang, ptr %i.ani, align 4, !tbaa !57, !alias.scope !1980, !noalias !1981
  %i.anj = getelementptr inbounds nuw i8, ptr %4, i64 4128
  store <4 x float> %i.anh, ptr %i.anj, align 4, !tbaa !57, !alias.scope !1982, !noalias !1981
  %i.ank = extractelement <4 x float> %i.and, i64 1
  store float %i.ank, ptr %i.akk, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.anl = extractelement <4 x float> %i.and, i64 2
  store float %i.anl, ptr %i.ald, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.anm = extractelement <4 x float> %i.and, i64 3
  store float %i.anm, ptr %i.alw, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.ann = extractelement <4 x float> %i.ang, i64 1
  %gep.1.1.i.i160 = getelementptr i8, ptr %4, i64 20
  store float %i.ann, ptr %gep.1.1.i.i160, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.ano = extractelement <4 x float> %i.ang, i64 2
  %gep.2.1.i.i161 = getelementptr i8, ptr %4, i64 36
  store float %i.ano, ptr %gep.2.1.i.i161, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.anp = extractelement <4 x float> %i.ang, i64 3
  %gep.3.1.i.i162 = getelementptr i8, ptr %4, i64 52
  store float %i.anp, ptr %gep.3.1.i.i162, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.anq = extractelement <4 x float> %i.anh, i64 1
  %gep.1.2.i.i = getelementptr i8, ptr %4, i64 24
  store float %i.anq, ptr %gep.1.2.i.i, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %gep.2.2.i.i = getelementptr i8, ptr %4, i64 40
  %gep.3.2.i.i = getelementptr i8, ptr %4, i64 56
  %i.anr = shufflevector <4 x float> %i.and, <4 x float> %i.ang, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ans = shufflevector <4 x float> %i.anr, <4 x float> %i.anh, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ant = shufflevector <4 x float> %i.ans, <4 x float> %i.ane, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x float> %i.ant, ptr %4, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.anu = extractelement <4 x float> %i.ane, i64 1
  %gep.1.3.i.i = getelementptr i8, ptr %4, i64 28
  store float %i.anu, ptr %gep.1.3.i.i, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.anv = shufflevector <4 x float> %i.anh, <4 x float> %i.ane, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.anv, ptr %gep.2.2.i.i, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  %i.anw = shufflevector <4 x float> %i.anh, <4 x float> %i.ane, <2 x i32> <i32 3, i32 7>
  store <2 x float> %i.anw, ptr %gep.3.2.i.i, align 4, !tbaa !56, !alias.scope !1975, !noalias !1976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.anx = load <4 x float>, ptr %4, align 4, !tbaa !57, !alias.scope !1987, !noalias !1988 ; 2 uses
  %i.any = load <4 x float>, ptr %i.ald, align 4, !tbaa !57, !alias.scope !1987, !noalias !1988 ; 2 uses
  %i.anz = load <4 x float>, ptr %i.akk, align 4, !tbaa !57, !alias.scope !1989, !noalias !1988 ; 2 uses
  %i.aoa = load <4 x float>, ptr %i.alw, align 4, !tbaa !57, !alias.scope !1989, !noalias !1988
  %i.aob = fadd <4 x float> %i.anx, %i.any        ; 3 uses
  store <4 x float> %i.aob, ptr %i.amp, align 4, !tbaa !57, !alias.scope !1990, !noalias !1975
  %i.aoc = fsub <4 x float> %i.anx, %i.any        ; 3 uses
  store <4 x float> %i.aoc, ptr %i.ams, align 4, !tbaa !57, !alias.scope !1991, !noalias !1975
  %i.aod = fadd <4 x float> %i.anz, %i.aoa        ; 2 uses
  %i.aoe = fmul <4 x float> %i.anz, splat (float f0x3FB504F3) ; 2 uses
  %i.aof = fadd <4 x float> %i.aoe, %i.aod        ; 3 uses
  store <4 x float> %i.aof, ptr %i.amu, align 4, !tbaa !57, !alias.scope !1992, !noalias !1975
  %i.aog = fsub <4 x float> %i.aoe, %i.aod        ; 3 uses
  store <4 x float> %i.aog, ptr %i.amw, align 4, !tbaa !57, !alias.scope !1993, !noalias !1975
  %i.aoh = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aof, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.aob)
  %i.aoi = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aof, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.aob)
  store <4 x float> %i.aoh, ptr %2, align 1, !tbaa !57, !alias.scope !1994, !noalias !1995
  %.idx.i12.i.i.i.i.i163 = mul i64 %3, 12
  %i.aoj = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i12.i.i.i.i.i163
  store <4 x float> %i.aoi, ptr %i.aoj, align 1, !tbaa !57, !alias.scope !1996, !noalias !1995
  %i.aok = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aog, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.aoc)
  %i.aol = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aog, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.aoc)
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  store <4 x float> %i.aok, ptr %i.aom, align 1, !tbaa !57, !alias.scope !1994, !noalias !1995
  %.idx29.i.i.i.i.i.i164 = shl i64 %3, 3
  %i.aon = getelementptr inbounds nuw i8, ptr %2, i64 %.idx29.i.i.i.i.i.i164
  store <4 x float> %i.aol, ptr %i.aon, align 1, !tbaa !57, !alias.scope !1996, !noalias !1995
  br label %bb.c

.preheader292.preheader:                          ; preds = %bb.a
  %i.aoo = load float, ptr %1, align 4, !tbaa !56 ; 2 uses
  store float %i.aoo, ptr %4, align 4, !tbaa !56
  %i.aop = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aoq = load float, ptr %i.aop, align 4, !tbaa !56
  %i.aor = fmul float %i.aoq, f0x3F79922F         ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.aor, ptr %i.aos, align 4, !tbaa !56
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aou = load float, ptr %i.aot, align 4, !tbaa !56
  %i.aov = fmul float %i.aou, f0x3F66DA05         ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.aov, ptr %i.aow, align 4, !tbaa !56
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !56
  %i.aoz = fmul float %i.aoy, f0x3F497C6E         ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.aoz, ptr %i.apa, align 4, !tbaa !56
  %i.apb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.apc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.apd = load float, ptr %i.apb, align 4, !tbaa !56
  %i.ape = fmul float %i.apd, f0x3F66DA05         ; 2 uses
  store float %i.ape, ptr %i.apc, align 4, !tbaa !56
  %i.apf = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.apg = load float, ptr %i.apf, align 4, !tbaa !56
  %i.aph = fmul float %i.apg, f0x3F66DA05
  %i.api = fmul float %i.aph, f0x3F79922F         ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.api, ptr %i.apj, align 4, !tbaa !56
  %i.apk = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !56
  %i.apm = fmul float %i.apl, f0x3F66DA05
  %i.apn = fmul float %i.apm, f0x3F66DA05         ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.apn, ptr %i.apo, align 4, !tbaa !56
  %i.app = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.apq = load float, ptr %i.app, align 4, !tbaa !56
  %i.apr = fmul float %i.apq, f0x3F66DA05
  %i.aps = fmul float %i.apr, f0x3F497C6E
  %i.apt = getelementptr inbounds nuw i8, ptr %4, i64 4096 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %i.apu = getelementptr inbounds nuw i8, ptr %4, i64 4128
  store float %i.aoo, ptr %i.apt, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %gep.1.i.i151 = getelementptr i8, ptr %4, i64 4104 ; 2 uses
  store float %i.aor, ptr %gep.1.i.i151, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %gep.2.i.i = getelementptr i8, ptr %4, i64 4112 ; 3 uses
  store float %i.aov, ptr %gep.2.i.i, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %gep.3.i.i152 = getelementptr i8, ptr %4, i64 4120 ; 2 uses
  store float %i.aoz, ptr %gep.3.i.i152, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %invariant.gep.1.i.i153 = getelementptr i8, ptr %4, i64 4100
  store float %i.ape, ptr %invariant.gep.1.i.i153, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %gep.1.1.i.i154 = getelementptr i8, ptr %4, i64 4108
  store float %i.api, ptr %gep.1.1.i.i154, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %i.apv = getelementptr inbounds nuw i8, ptr %4, i64 24
  %gep.2.1.i.i155 = getelementptr i8, ptr %4, i64 4116
  store float %i.apn, ptr %gep.2.1.i.i155, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %gep.3.1.i.i156 = getelementptr i8, ptr %4, i64 4124
  store float %i.aps, ptr %gep.3.1.i.i156, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1999)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  %i.apw = load <2 x float>, ptr %i.apt, align 4, !tbaa !57, !alias.scope !2003, !noalias !2004
  %i.apx = load <2 x float>, ptr %gep.2.i.i, align 4, !tbaa !57, !alias.scope !2003, !noalias !2004
  %i.apy = getelementptr inbounds nuw i8, ptr %4, i64 4136
  %i.apz = load <2 x float>, ptr %gep.1.i.i151, align 4, !tbaa !57, !alias.scope !2005, !noalias !2004 ; 2 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %4, i64 4144
  %i.aqb = load <2 x float>, ptr %gep.3.i.i152, align 4, !tbaa !57, !alias.scope !2005, !noalias !2004
  %i.aqc = getelementptr inbounds nuw i8, ptr %4, i64 4152
  %i.aqd = shufflevector <2 x float> %i.apw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqe = shufflevector <4 x float> %i.aqd, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqf = shufflevector <2 x float> %i.apx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqg = shufflevector <4 x float> %i.aqf, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqh = fadd <4 x float> %i.aqe, %i.aqg        ; 2 uses
  %i.aqi = shufflevector <4 x float> %i.aqh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aqi, ptr %i.apu, align 4, !tbaa !57, !alias.scope !2006, !noalias !1997
  %i.aqj = fsub <4 x float> %i.aqe, %i.aqg        ; 2 uses
  %i.aqk = shufflevector <4 x float> %i.aqj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aqk, ptr %i.apy, align 4, !tbaa !57, !alias.scope !2007, !noalias !1997
  %i.aql = shufflevector <2 x float> %i.apz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqm = shufflevector <2 x float> %i.aqb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqn = fadd <4 x float> %i.aql, %i.aqm
  %i.aqo = fmul <2 x float> %i.apz, splat (float f0x3FB504F3)
  %i.aqp = shufflevector <2 x float> %i.aqo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aqq = shufflevector <4 x float> %i.aqp, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqr = shufflevector <4 x float> %i.aqn, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqs = fadd <4 x float> %i.aqq, %i.aqr        ; 2 uses
  %i.aqt = shufflevector <4 x float> %i.aqs, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aqt, ptr %i.aqa, align 4, !tbaa !57, !alias.scope !2008, !noalias !1997
  %i.aqu = fsub <4 x float> %i.aqq, %i.aqr        ; 2 uses
  %i.aqv = shufflevector <4 x float> %i.aqu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aqv, ptr %i.aqc, align 4, !tbaa !57, !alias.scope !2009, !noalias !1997
  %i.aqw = shufflevector <4 x float> %i.aqh, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqx = shufflevector <4 x float> %i.aqs, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aqy = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aqx, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %i.aqw) ; 3 uses
  %i.aqz = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aqx, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %i.aqw) ; 3 uses
  %i.ara = shufflevector <4 x float> %i.aqy, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ara, ptr %4, align 4, !tbaa !57, !alias.scope !2010, !noalias !2011
  %i.arb = shufflevector <4 x float> %i.aqz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.arb, ptr %i.apv, align 4, !tbaa !57, !alias.scope !2012, !noalias !2011
  %i.arc = shufflevector <4 x float> %i.aqj, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ard = shufflevector <4 x float> %i.aqu, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.are = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ard, <4 x float> splat (float f0x3FA73D75), <4 x float> %i.arc) ; 3 uses
  %i.arf = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ard, <4 x float> splat (float f0xBFA73D75), <4 x float> %i.arc) ; 3 uses
  %i.arg = shufflevector <4 x float> %i.are, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.arg, ptr %i.aow, align 4, !tbaa !57, !alias.scope !2010, !noalias !2011
  %i.arh = shufflevector <4 x float> %i.arf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.arh, ptr %i.apc, align 4, !tbaa !57, !alias.scope !2012, !noalias !2011
  %i.ari = shufflevector <4 x float> %i.aqy, <4 x float> %i.are, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.arj = shufflevector <4 x float> %i.ari, <4 x float> %i.arf, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ark = shufflevector <4 x float> %i.arj, <4 x float> %i.aqz, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 3 uses
  store <4 x float> %i.ark, ptr %i.apt, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %i.arl = shufflevector <4 x float> %i.aqy, <4 x float> %i.are, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.arm = shufflevector <4 x float> %i.arl, <4 x float> %i.arf, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.arn = shufflevector <4 x float> %i.arm, <4 x float> %i.aqz, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 3 uses
  store <4 x float> %i.arn, ptr %gep.2.i.i, align 4, !tbaa !56, !alias.scope !1998, !noalias !1997
  %i.aro = fadd <4 x float> %i.ark, %i.arn
  store <4 x float> %i.aro, ptr %2, align 1, !tbaa !57, !alias.scope !2013, !noalias !2014
  %i.arp = fsub <4 x float> %i.ark, %i.arn
  %i.arq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  store <4 x float> %i.arp, ptr %i.arq, align 1, !tbaa !57, !alias.scope !2015, !noalias !2014
  br label %bb.c

.preheader290.preheader:                          ; preds = %bb.a
  %i.arr = load float, ptr %1, align 4, !tbaa !56
  store float %i.arr, ptr %4, align 4, !tbaa !56
  %i.ars = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.art = load float, ptr %i.ars, align 4, !tbaa !56
  %i.aru = fmul float %i.art, f0x3F79922F
  %i.arv = getelementptr i8, ptr %4, i64 4
  store float %i.aru, ptr %i.arv, align 4, !tbaa !56
  %i.arw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.arx = load float, ptr %i.arw, align 4, !tbaa !56
  %i.ary = fmul float %i.arx, f0x3F66DA05
  %i.arz = getelementptr i8, ptr %4, i64 8        ; 3 uses
  store float %i.ary, ptr %i.arz, align 4, !tbaa !56
  %i.asa = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !56
  %i.asc = fmul float %i.asb, f0x3F497C6E
  %i.asd = getelementptr i8, ptr %4, i64 12       ; 2 uses
  store float %i.asc, ptr %i.asd, align 4, !tbaa !56
  %i.ase = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.asf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.asg = load float, ptr %i.ase, align 4, !tbaa !56
  %i.ash = fmul float %i.asg, f0x3F66DA05
  store float %i.ash, ptr %i.asf, align 4, !tbaa !56
  %i.asi = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.asj = load float, ptr %i.asi, align 4, !tbaa !56
  %i.ask = fmul float %i.asj, f0x3F66DA05
  %i.asl = fmul float %i.ask, f0x3F79922F
  %i.asm = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.asl, ptr %i.asm, align 4, !tbaa !56
  %i.asn = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.aso = load float, ptr %i.asn, align 4, !tbaa !56
  %i.asp = fmul float %i.aso, f0x3F66DA05
  %i.asq = fmul float %i.asp, f0x3F66DA05
  %i.asr = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.asq, ptr %i.asr, align 4, !tbaa !56
  %i.ass = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ast = load float, ptr %i.ass, align 4, !tbaa !56
  %i.asu = fmul float %i.ast, f0x3F66DA05
  %i.asv = fmul float %i.asu, f0x3F497C6E
  %i.asw = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float %i.asv, ptr %i.asw, align 4, !tbaa !56
  %i.asx = getelementptr inbounds nuw i8, ptr %4, i64 4096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  %i.asy = getelementptr inbounds nuw i8, ptr %4, i64 4128
  %i.asz = load <4 x float>, ptr %4, align 4, !tbaa !57, !alias.scope !2018, !noalias !2017 ; 2 uses
  %i.ata = load <4 x float>, ptr %i.asf, align 4, !tbaa !57, !alias.scope !2019, !noalias !2017 ; 2 uses
  %i.atb = fadd <4 x float> %i.asz, %i.ata        ; 5 uses
  store <4 x float> %i.atb, ptr %i.asx, align 4, !tbaa !57, !alias.scope !2020, !noalias !2016
  %i.atc = fsub <4 x float> %i.asz, %i.ata        ; 5 uses
  %i.atd = getelementptr inbounds nuw i8, ptr %4, i64 4112
  store <4 x float> %i.atc, ptr %i.atd, align 4, !tbaa !57, !alias.scope !2021, !noalias !2016
  %i.ate = extractelement <4 x float> %i.atb, i64 1
  store float %i.ate, ptr %i.arz, align 4, !tbaa !56, !alias.scope !2016, !noalias !2017
  %i.atf = extractelement <4 x float> %i.atb, i64 2
  store float %i.atf, ptr %i.asf, align 4, !tbaa !56, !alias.scope !2016, !noalias !2017
  %i.atg = extractelement <4 x float> %i.atb, i64 3
  %gep.3.i.i = getelementptr i8, ptr %4, i64 24   ; 2 uses
  store float %i.atg, ptr %gep.3.i.i, align 4, !tbaa !56, !alias.scope !2016, !noalias !2017
  %i.ath = shufflevector <4 x float> %i.atb, <4 x float> %i.atc, <2 x i32> <i32 0, i32 4>
  store <2 x float> %i.ath, ptr %4, align 4, !tbaa !56, !alias.scope !2016, !noalias !2017
  %i.ati = extractelement <4 x float> %i.atc, i64 1
  store float %i.ati, ptr %i.asd, align 4, !tbaa !56, !alias.scope !2016, !noalias !2017
  %i.atj = extractelement <4 x float> %i.atc, i64 2
  %gep.2.1.i.i = getelementptr i8, ptr %4, i64 20
  store float %i.atj, ptr %gep.2.1.i.i, align 4, !tbaa !56, !alias.scope !2016, !noalias !2017
  %i.atk = extractelement <4 x float> %i.atc, i64 3
  %gep.3.1.i.i = getelementptr i8, ptr %4, i64 28
  store float %i.atk, ptr %gep.3.1.i.i, align 4, !tbaa !56, !alias.scope !2016, !noalias !2017
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  %i.atl = load <2 x float>, ptr %4, align 4, !tbaa !57, !alias.scope !2026, !noalias !2027
  %i.atm = load <2 x float>, ptr %i.asf, align 4, !tbaa !57, !alias.scope !2026, !noalias !2027
  %i.atn = getelementptr inbounds nuw i8, ptr %4, i64 4136
  %i.ato = load <2 x float>, ptr %i.arz, align 4, !tbaa !57, !alias.scope !2028, !noalias !2027 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %4, i64 4144
  %i.atq = load <2 x float>, ptr %gep.3.i.i, align 4, !tbaa !57, !alias.scope !2028, !noalias !2027
  %i.atr = getelementptr inbounds nuw i8, ptr %4, i64 4152
  %i.ats = shufflevector <2 x float> %i.atl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.att = shufflevector <4 x float> %i.ats, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.atu = shufflevector <2 x float> %i.atm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.atv = shufflevector <4 x float> %i.atu, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.atw = fadd <4 x float> %i.att, %i.atv        ; 3 uses
  %i.atx = shufflevector <4 x float> %i.atw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.atx, ptr %i.asy, align 4, !tbaa !57, !alias.scope !2029, !noalias !2016
  %i.aty = fsub <4 x float> %i.att, %i.atv        ; 3 uses
  %i.atz = shufflevector <4 x float> %i.aty, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.atz, ptr %i.atn, align 4, !tbaa !57, !alias.scope !2030, !noalias !2016
  %i.aua = shufflevector <2 x float> %i.ato, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aub = shufflevector <2 x float> %i.atq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.auc = fadd <4 x float> %i.aua, %i.aub
  %i.aud = fmul <2 x float> %i.ato, splat (float f0x3FB504F3)
  %i.aue = shufflevector <2 x float> %i.aud, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.auf = shufflevector <4 x float> %i.aue, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aug = shufflevector <4 x float> %i.auc, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.auh = fadd <4 x float> %i.auf, %i.aug        ; 3 uses
  %i.aui = shufflevector <4 x float> %i.auh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aui, ptr %i.atp, align 4, !tbaa !57, !alias.scope !2031, !noalias !2016
  %i.auj = fsub <4 x float> %i.auf, %i.aug        ; 3 uses
  %i.auk = shufflevector <4 x float> %i.auj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.auk, ptr %i.atr, align 4, !tbaa !57, !alias.scope !2032, !noalias !2016
  %i.aul = shufflevector <4 x float> %i.auh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aum = shufflevector <4 x float> %i.atw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aun = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.aul, <2 x float> splat (float f0x3F0A8BD4), <2 x float> %i.aum)
  store <2 x float> %i.aun, ptr %2, align 1, !tbaa !57, !alias.scope !2033, !noalias !2034
  %.idx.i12.i.i.i.i.i150 = mul i64 %3, 12
  %i.auo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i12.i.i.i.i.i150
  %i.aup = shufflevector <4 x float> %i.auh, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.auq = shufflevector <4 x float> %i.atw, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.aur = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.aup, <2 x float> splat (float f0xBF0A8BD4), <2 x float> %i.auq)
  store <2 x float> %i.aur, ptr %i.auo, align 1, !tbaa !57, !alias.scope !2035, !noalias !2034
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %i.aut = shufflevector <4 x float> %i.auj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.auu = shufflevector <4 x float> %i.aty, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.auv = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.aut, <2 x float> splat (float f0x3FA73D75), <2 x float> %i.auu)
  store <2 x float> %i.auv, ptr %i.aus, align 1, !tbaa !57, !alias.scope !2033, !noalias !2034
  %.idx29.i.i.i.i.i.i = shl i64 %3, 3
  %i.auw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx29.i.i.i.i.i.i
  %i.aux = shufflevector <4 x float> %i.auj, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.auy = shufflevector <4 x float> %i.aty, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.auz = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.aux, <2 x float> splat (float f0xBFA73D75), <2 x float> %i.auy)
  store <2 x float> %i.auz, ptr %i.auw, align 1, !tbaa !57, !alias.scope !2035, !noalias !2034
  br label %bb.c

.preheader287.preheader:                          ; preds = %bb.a
  %i.ava = load float, ptr %1, align 4, !tbaa !56 ; 3 uses
  store float %i.ava, ptr %4, align 4, !tbaa !56
  %i.avb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.avc = load float, ptr %i.avb, align 4, !tbaa !56
  %i.avd = fmul float %i.avc, f0x3F79922F         ; 3 uses
  %i.ave = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store float %i.avd, ptr %i.ave, align 4, !tbaa !56
  %i.avf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.avg = load float, ptr %i.avf, align 4, !tbaa !56
  %i.avh = fmul float %i.avg, f0x3F66DA05         ; 3 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.avh, ptr %i.avi, align 4, !tbaa !56
  %i.avj = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !56
  %i.avl = fmul float %i.avk, f0x3F497C6E
  %i.avm = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.avn = getelementptr inbounds nuw i8, ptr %4, i64 4096 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2037)
  %i.avo = getelementptr inbounds nuw i8, ptr %4, i64 4112
  %i.avp = getelementptr inbounds nuw i8, ptr %4, i64 4100
  %i.avq = getelementptr inbounds nuw i8, ptr %4, i64 4104
  %i.avr = getelementptr inbounds nuw i8, ptr %4, i64 4108
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  %i.avs = getelementptr inbounds nuw i8, ptr %4, i64 4116
  %i.avt = getelementptr inbounds nuw i8, ptr %4, i64 4120
  %i.avu = getelementptr inbounds nuw i8, ptr %4, i64 4124
  %i.avv = fadd float %i.ava, %i.avh              ; 2 uses
  store float %i.avv, ptr %i.avo, align 4, !tbaa !57, !alias.scope !2042, !noalias !2036
  %i.avw = fsub float %i.ava, %i.avh              ; 2 uses
  store float %i.avw, ptr %i.avs, align 4, !tbaa !57, !alias.scope !2043, !noalias !2036
  %i.avx = fadd float %i.avd, %i.avl              ; 2 uses
  %i.avy = fmul float %i.avd, f0x3FB504F3         ; 2 uses
  %i.avz = fadd float %i.avy, %i.avx              ; 2 uses
  store float %i.avz, ptr %i.avt, align 4, !tbaa !57, !alias.scope !2044, !noalias !2036
  %i.awa = fsub float %i.avy, %i.avx              ; 2 uses
  store float %i.awa, ptr %i.avu, align 4, !tbaa !57, !alias.scope !2045, !noalias !2036
  %33 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.avv, i64 0 ; 2 uses
  %34 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.avz, i64 0 ; 2 uses
  %35 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %34, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %33)
  %36 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %34, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %33)
  %37 = extractelement <4 x float> %35, i64 0     ; 2 uses
  store float %37, ptr %4, align 4, !tbaa !57, !alias.scope !2046, !noalias !2047
  %38 = extractelement <4 x float> %36, i64 0     ; 2 uses
  store float %38, ptr %i.avm, align 4, !tbaa !57, !alias.scope !2048, !noalias !2047
  %39 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.avw, i64 0 ; 2 uses
  %40 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.awa, i64 0 ; 2 uses
  %41 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %40, <4 x float> splat (float f0x3FA73D75), <4 x float> %39)
  %42 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %40, <4 x float> splat (float f0xBFA73D75), <4 x float> %39)
  %43 = extractelement <4 x float> %41, i64 0     ; 2 uses
  store float %43, ptr %i.ave, align 4, !tbaa !57, !alias.scope !2046, !noalias !2047
  %44 = extractelement <4 x float> %42, i64 0     ; 2 uses
  store float %44, ptr %i.avi, align 4, !tbaa !57, !alias.scope !2048, !noalias !2047
  store float %37, ptr %i.avn, align 4, !tbaa !56, !alias.scope !2037, !noalias !2036
  store float %43, ptr %i.avp, align 4, !tbaa !56, !alias.scope !2037, !noalias !2036
  store float %44, ptr %i.avq, align 4, !tbaa !56, !alias.scope !2037, !noalias !2036
  store float %38, ptr %i.avr, align 4, !tbaa !56, !alias.scope !2037, !noalias !2036
  %.val12.val.i146 = load <4 x float>, ptr %i.avn, align 4, !tbaa !57, !alias.scope !2049, !noalias !2036
  store <4 x float> %.val12.val.i146, ptr %2, align 1, !tbaa !57, !alias.scope !2050, !noalias !2051
  br label %bb.c

.preheader284.preheader:                          ; preds = %bb.a
  %i.awb = load float, ptr %1, align 4, !tbaa !56
  store float %i.awb, ptr %4, align 4, !tbaa !56
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.awd = load float, ptr %i.awc, align 4, !tbaa !56
  %i.awe = fmul float %i.awd, f0x3F79922F
  %i.awf = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store float %i.awe, ptr %i.awf, align 4, !tbaa !56
  %i.awg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.awh = load float, ptr %i.awg, align 4, !tbaa !56
  %i.awi = fmul float %i.awh, f0x3F66DA05
  %i.awj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store float %i.awi, ptr %i.awj, align 4, !tbaa !56
  %i.awk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.awl = load float, ptr %i.awk, align 4, !tbaa !56
  %i.awm = fmul float %i.awl, f0x3F497C6E
  %i.awn = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.awm, ptr %i.awn, align 4, !tbaa !56
  %i.awo = getelementptr inbounds nuw i8, ptr %4, i64 4096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2052)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %i.awp = getelementptr inbounds nuw i8, ptr %4, i64 4112
  %.val10.val.i145 = load <4 x float>, ptr %4, align 4, !tbaa !57, !alias.scope !2054, !noalias !2053 ; 6 uses
  store <4 x float> %.val10.val.i145, ptr %i.awo, align 4, !tbaa !57, !alias.scope !2055, !noalias !2052
  %bc12.i = bitcast <4 x float> %.val10.val.i145 to <4 x i32>
  %i.awq = extractelement <4 x i32> %bc12.i, i64 0 ; 2 uses
  %i.awr = bitcast i32 %i.awq to float            ; 2 uses
  store i32 %i.awq, ptr %4, align 4, !tbaa !56, !alias.scope !2052, !noalias !2053
  %i.aws = extractelement <4 x float> %.val10.val.i145, i64 1 ; 3 uses
  store float %i.aws, ptr %i.awf, align 4, !tbaa !56, !alias.scope !2052, !noalias !2053
  %i.awt = extractelement <4 x float> %.val10.val.i145, i64 2 ; 2 uses
  %i.awu = extractelement <4 x float> %.val10.val.i145, i64 3
  %i.awv = shufflevector <4 x float> %.val10.val.i145, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.awv, ptr %i.awj, align 4, !tbaa !56, !alias.scope !2052, !noalias !2053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  %i.aww = getelementptr inbounds nuw i8, ptr %4, i64 4116
  %i.awx = getelementptr inbounds nuw i8, ptr %4, i64 4120
  %i.awy = getelementptr inbounds nuw i8, ptr %4, i64 4124
  %i.awz = fadd float %i.awt, %i.awr              ; 2 uses
  store float %i.awz, ptr %i.awp, align 4, !tbaa !57, !alias.scope !2060, !noalias !2052
  %i.axa = fsub float %i.awr, %i.awt              ; 2 uses
  store float %i.axa, ptr %i.aww, align 4, !tbaa !57, !alias.scope !2061, !noalias !2052
  %i.axb = fadd float %i.aws, %i.awu              ; 2 uses
  %i.axc = fmul float %i.aws, f0x3FB504F3         ; 2 uses
  %i.axd = fadd float %i.axc, %i.axb              ; 2 uses
  store float %i.axd, ptr %i.awx, align 4, !tbaa !57, !alias.scope !2062, !noalias !2052
  %i.axe = fsub float %i.axc, %i.axb              ; 2 uses
  store float %i.axe, ptr %i.awy, align 4, !tbaa !57, !alias.scope !2063, !noalias !2052
  %45 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.awz, i64 0 ; 2 uses
  %46 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.axd, i64 0 ; 2 uses
  %47 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %46, <4 x float> splat (float f0x3F0A8BD4), <4 x float> %45)
  %48 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %46, <4 x float> splat (float f0xBF0A8BD4), <4 x float> %45)
  %49 = extractelement <4 x float> %47, i64 0
  store float %49, ptr %2, align 1, !tbaa !57, !alias.scope !2064, !noalias !2065
  %.idx.i12.i.i.i.i.i = mul i64 %3, 12
  %i.axf = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i12.i.i.i.i.i
  %50 = extractelement <4 x float> %48, i64 0
  store float %50, ptr %i.axf, align 1, !tbaa !57, !alias.scope !2066, !noalias !2065
  %51 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.axa, i64 0 ; 2 uses
  %52 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.axe, i64 0 ; 2 uses
  %53 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %52, <4 x float> splat (float f0x3FA73D75), <4 x float> %51)
  %54 = tail call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %52, <4 x float> splat (float f0xBFA73D75), <4 x float> %51)
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %55 = extractelement <4 x float> %53, i64 0
  store float %55, ptr %i.axg, align 1, !tbaa !57, !alias.scope !2064, !noalias !2065
  %.idx28.i.i.i.i.i.i = shl i64 %3, 3
  %i.axh = getelementptr inbounds nuw i8, ptr %2, i64 %.idx28.i.i.i.i.i.i
  %56 = extractelement <4 x float> %54, i64 0
  store float %56, ptr %i.axh, align 1, !tbaa !57, !alias.scope !2066, !noalias !2065
  br label %bb.c

.preheader282.preheader:                          ; preds = %bb.a
  %i.axi = load float, ptr %1, align 4, !tbaa !56
  store float %i.axi, ptr %4, align 4, !tbaa !56
  %i.axj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.axk = load float, ptr %i.axj, align 4, !tbaa !56
  %i.axl = fmul float %i.axk, f0x3F66DA05
  %i.axm = getelementptr i8, ptr %4, i64 4
  store float %i.axl, ptr %i.axm, align 4, !tbaa !56
  %i.axn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.axo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.axp = load float, ptr %i.axn, align 4, !tbaa !56
  %i.axq = fmul float %i.axp, f0x3F66DA05
  store float %i.axq, ptr %i.axo, align 4, !tbaa !56
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !56
  %i.axt = fmul float %i.axs, f0x3F66DA05
  %i.axu = fmul float %i.axt, f0x3F66DA05
  %i.axv = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.axu, ptr %i.axv, align 4, !tbaa !56
  %i.axw = getelementptr inbounds nuw i8, ptr %4, i64 4096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2068)
  %i.axx = load <2 x float>, ptr %4, align 4, !tbaa !57, !alias.scope !2069, !noalias !2068
  %i.axy = shufflevector <2 x float> %i.axx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.axz = shufflevector <4 x float> %i.axy, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.aya = load <2 x float>, ptr %i.axo, align 4, !tbaa !57, !alias.scope !2070, !noalias !2068
  %i.ayb = shufflevector <2 x float> %i.aya, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ayc = shufflevector <4 x float> %i.ayb, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ayd = fadd <4 x float> %i.axz, %i.ayc        ; 3 uses
  %i.aye = shufflevector <4 x float> %i.ayd, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.aye, ptr %i.axw, align 4, !tbaa !57, !alias.scope !2071, !noalias !2067
  %i.ayf = fsub <4 x float> %i.axz, %i.ayc        ; 3 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %4, i64 4104
  %i.ayh = shufflevector <4 x float> %i.ayf, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.ayh, ptr %i.ayg, align 4, !tbaa !57, !alias.scope !2072, !noalias !2067
  %i.ayi = shufflevector <4 x float> %i.ayd, <4 x float> %i.ayf, <2 x i32> <i32 0, i32 4> ; 3 uses
  store <2 x float> %i.ayi, ptr %4, align 4, !tbaa !56, !alias.scope !2067, !noalias !2068
  %i.ayj = shufflevector <4 x float> %i.ayd, <4 x float> %i.ayf, <2 x i32> <i32 1, i32 5> ; 3 uses
  store <2 x float> %i.ayj, ptr %i.axo, align 4, !tbaa !56, !alias.scope !2067, !noalias !2068
  %i.ayk = fadd <2 x float> %i.ayi, %i.ayj
  store <2 x float> %i.ayk, ptr %2, align 1, !tbaa !57, !alias.scope !2073, !noalias !2074
  %i.ayl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %i.aym = fsub <2 x float> %i.ayi, %i.ayj
  store <2 x float> %i.aym, ptr %i.ayl, align 1, !tbaa !57, !alias.scope !2075, !noalias !2074
  br label %bb.c

.preheader279.preheader:                          ; preds = %bb.a
  %i.ayn = load float, ptr %1, align 4, !tbaa !56 ; 3 uses
  store float %i.ayn, ptr %4, align 4, !tbaa !56
  %i.ayo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ayp = load float, ptr %i.ayo, align 4, !tbaa !56
  %i.ayq = fmul float %i.ayp, f0x3F66DA05         ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ays = getelementptr inbounds nuw i8, ptr %4, i64 4096 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2077)
  %i.ayt = getelementptr inbounds nuw i8, ptr %4, i64 4100
  %i.ayu = fadd float %i.ayn, %i.ayq              ; 2 uses
  store float %i.ayu, ptr %4, align 4, !tbaa !57, !alias.scope !2078, !noalias !2077
  %i.ayv = fsub float %i.ayn, %i.ayq              ; 2 uses
  store float %i.ayv, ptr %i.ayr, align 4, !tbaa !57, !alias.scope !2079, !noalias !2077
  store float %i.ayu, ptr %i.ays, align 4, !tbaa !56, !alias.scope !2077, !noalias !2076
  store float %i.ayv, ptr %i.ayt, align 4, !tbaa !56, !alias.scope !2077, !noalias !2076
  %.val12.val.i = load <2 x float>, ptr %i.ays, align 4, !tbaa !57, !alias.scope !2080, !noalias !2076
  store <2 x float> %.val12.val.i, ptr %2, align 1, !tbaa !57, !alias.scope !2081, !noalias !2082
  br label %bb.c

.preheader.preheader:                             ; preds = %bb.a
  %i.ayw = load float, ptr %1, align 4, !tbaa !56
  store float %i.ayw, ptr %4, align 4, !tbaa !56
  %i.ayx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ayy = load float, ptr %i.ayx, align 4, !tbaa !56
  %i.ayz = fmul float %i.ayy, f0x3F66DA05
  %i.aza = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store float %i.ayz, ptr %i.aza, align 4, !tbaa !56
  %i.azb = getelementptr inbounds nuw i8, ptr %4, i64 4096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2084)
  %.val10.val.i = load <2 x float>, ptr %4, align 4, !tbaa !57, !alias.scope !2085, !noalias !2084 ; 3 uses
  store <2 x float> %.val10.val.i, ptr %i.azb, align 4, !tbaa !57, !alias.scope !2086, !noalias !2083
  %bc10.i = bitcast <2 x float> %.val10.val.i to <2 x i32>
  %i.azc = extractelement <2 x i32> %bc10.i, i64 0 ; 2 uses
  %i.azd = bitcast i32 %i.azc to float            ; 2 uses
  store i32 %i.azc, ptr %4, align 4, !tbaa !56, !alias.scope !2083, !noalias !2084
  %i.aze = extractelement <2 x float> %.val10.val.i, i64 1 ; 3 uses
  store float %i.aze, ptr %i.aza, align 4, !tbaa !56, !alias.scope !2083, !noalias !2084
  %i.azf = fadd float %i.aze, %i.azd
  store float %i.azf, ptr %2, align 1, !tbaa !57, !alias.scope !2087, !noalias !2088
  %i.azg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %3
  %i.azh = fsub float %i.azd, %i.aze
  store float %i.azh, ptr %i.azg, align 1, !tbaa !57, !alias.scope !2089, !noalias !2088
  br label %bb.c

.preheader302:                                    ; preds = %bb.a, %.preheader302
  %.018.i98325 = phi i64 [ %i.bcl, %.preheader302 ], [ 0, %bb.a ] ; 4 uses
  %.idx.i100 = shl nuw nsw i64 %.018.i98325, 9
  %i.azi = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i100 ; 16 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr @_ZN3jxl17DCTResampleScalesILm64ELm8EE7kScalesE, i64 %.018.i98325
  %i.azk = load float, ptr %i.azj, align 4, !tbaa !56 ; 16 uses
  %.idx19.i101 = shl nuw nsw i64 %.018.i98325, 6
  %i.azl = getelementptr inbounds nuw i8, ptr %4, i64 %.idx19.i101 ; 16 uses
  %i.azm = load float, ptr %i.azi, align 4, !tbaa !56
  %i.azn = fmul float %i.azm, %i.azk
  store float %i.azn, ptr %i.azl, align 4, !tbaa !56
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.azp = load float, ptr %i.azo, align 4, !tbaa !56
  %i.azq = fmul float %i.azp, %i.azk
  %i.azr = fmul float %i.azq, f0x3F7F986B
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azl, i64 4
  store float %i.azr, ptr %i.azs, align 4, !tbaa !56
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azu = load float, ptr %i.azt, align 4, !tbaa !56
  %i.azv = fmul float %i.azu, %i.azk
  %i.azw = fmul float %i.azv, f0x3F7E623F
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azl, i64 8
  store float %i.azw, ptr %i.azx, align 4, !tbaa !56
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azi, i64 12
  %i.azz = load float, ptr %i.azy, align 4, !tbaa !56
  %i.baa = fmul float %i.azz, %i.azk
  %i.bab = fmul float %i.baa, f0x3F7C5F36
  %i.bac = getelementptr inbounds nuw i8, ptr %i.azl, i64 12
  store float %i.bab, ptr %i.bac, align 4, !tbaa !56
  %i.bad = getelementptr inbounds nuw i8, ptr %i.azi, i64 16
  %i.bae = load float, ptr %i.bad, align 4, !tbaa !56
  %i.baf = fmul float %i.bae, %i.azk
  %i.bag = fmul float %i.baf, f0x3F79922F
  %i.bah = getelementptr inbounds nuw i8, ptr %i.azl, i64 16
  store float %i.bag, ptr %i.bah, align 4, !tbaa !56
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azi, i64 20
  %i.baj = load float, ptr %i.bai, align 4, !tbaa !56
  %i.bak = fmul float %i.baj, %i.azk
  %i.bal = fmul float %i.bak, f0x3F75FF24
  %i.bam = getelementptr inbounds nuw i8, ptr %i.azl, i64 20
  store float %i.bal, ptr %i.bam, align 4, !tbaa !56
  %i.ban = getelementptr inbounds nuw i8, ptr %i.azi, i64 24
  %i.bao = load float, ptr %i.ban, align 4, !tbaa !56
  %i.bap = fmul float %i.bao, %i.azk
  %i.baq = fmul float %i.bap, f0x3F71AB2B
  %i.bar = getelementptr inbounds nuw i8, ptr %i.azl, i64 24
  store float %i.baq, ptr %i.bar, align 4, !tbaa !56
  %i.bas = getelementptr inbounds nuw i8, ptr %i.azi, i64 28
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !56
  %i.bau = fmul float %i.bat, %i.azk
  %i.bav = fmul float %i.bau, f0x3F6C9C68
  %i.baw = getelementptr inbounds nuw i8, ptr %i.azl, i64 28
  store float %i.bav, ptr %i.baw, align 4, !tbaa !56
  %i.bax = getelementptr inbounds nuw i8, ptr %i.azi, i64 32
  %i.bay = load float, ptr %i.bax, align 4, !tbaa !56
  %i.baz = fmul float %i.bay, %i.azk
  %i.bba = fmul float %i.baz, f0x3F66DA05
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.azl, i64 32
  store float %i.bba, ptr %i.bbb, align 4, !tbaa !56
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.azi, i64 36
  %i.bbd = load float, ptr %i.bbc, align 4, !tbaa !56
  %i.bbe = fmul float %i.bbd, %i.azk
  %i.bbf = fmul float %i.bbe, f0x3F606C24
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.azl, i64 36
  store float %i.bbf, ptr %i.bbg, align 4, !tbaa !56
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azi, i64 40
  %i.bbi = load float, ptr %i.bbh, align 4, !tbaa !56
  %i.bbj = fmul float %i.bbi, %i.azk
  %i.bbk = fmul float %i.bbj, f0x3F595BD5
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.azl, i64 40
  store float %i.bbk, ptr %i.bbl, align 4, !tbaa !56
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.azi, i64 44
  %i.bbn = load float, ptr %i.bbm, align 4, !tbaa !56
  %i.bbo = fmul float %i.bbn, %i.azk
  %i.bbp = fmul float %i.bbo, f0x3F51B305
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.azl, i64 44
  store float %i.bbp, ptr %i.bbq, align 4, !tbaa !56
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.azi, i64 48
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !56
  %i.bbt = fmul float %i.bbs, %i.azk
  %i.bbu = fmul float %i.bbt, f0x3F497C6E
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.azl, i64 48
  store float %i.bbu, ptr %i.bbv, align 4, !tbaa !56
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.azi, i64 52
  %i.bbx = load float, ptr %i.bbw, align 4, !tbaa !56
  %i.bby = fmul float %i.bbx, %i.azk
  %i.bbz = fmul float %i.bby, f0x3F40C385
  %i.bca = getelementptr inbounds nuw i8, ptr %i.azl, i64 52
  store float %i.bbz, ptr %i.bca, align 4, !tbaa !56
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.azi, i64 56
  %i.bcc = load float, ptr %i.bcb, align 4, !tbaa !56
  %i.bcd = fmul float %i.bcc, %i.azk
  %i.bce = fmul float %i.bcd, f0x3F379466
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.azl, i64 56
  store float %i.bce, ptr %i.bcf, align 4, !tbaa !56
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.azi, i64 60
  %i.bch = load float, ptr %i.bcg, align 4, !tbaa !56
  %i.bci = fmul float %i.bch, %i.azk
  %i.bcj = fmul float %i.bci, f0x3F2DFBC3
  %i.bck = getelementptr inbounds nuw i8, ptr %i.azl, i64 60
  store float %i.bcj, ptr %i.bck, align 4, !tbaa !56
  %i.bcl = add nuw nsw i64 %.018.i98325, 1        ; 2 uses
  %exitcond353.not.a = icmp eq i64 %i.bcl, 8
  br i1 %exitcond353.not.a, label %_ZN3jxl6N_AVX212_GLOBAL__N_118ReinterpretingIDCTILm128ELm64ELm16ELm8ELm16ELm8EEEvPKfmPfmS5_.exit, label %.preheader302, !llvm.loop !1881

end_hunk_0
begin_hunk_1_@_ZN3jxl6N_SSE212_GLOBAL__N_113IDCT1DWrapperILm32ELm4ELb0ENS1_7DCTFromENS1_5DCTToEEEvRKT2_RKT3_mPf:bb.a
  %i.hj = load <4 x float>, ptr %i.ad, align 16, !tbaa !57, !alias.scope !5178, !noalias !5177
  %i.hk = fmul <4 x float> %i.hj, splat (float f0x3FBDF91B) ; 2 uses
  %i.hl = fadd <4 x float> %i.hi, %i.hk
  %i.hm = fsub <4 x float> %i.hi, %i.hk
  %.idx50.i.i = mul i64 %.val9, 48
  %i.hn = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx50.i.i
  store <4 x float> %i.hl, ptr %i.hn, align 1, !tbaa !57, !alias.scope !5179, !noalias !5178
  %.idx51.i.i = mul i64 %.val9, 76
  %i.ho = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx51.i.i
  store <4 x float> %i.hm, ptr %i.ho, align 1, !tbaa !57, !alias.scope !5180, !noalias !5178
  %i.hp = load <4 x float>, ptr %i.o, align 16, !tbaa !57, !alias.scope !5178, !noalias !5177 ; 2 uses
  %i.hq = load <4 x float>, ptr %i.ae, align 16, !tbaa !57, !alias.scope !5178, !noalias !5177
  %i.hr = fmul <4 x float> %i.hq, splat (float f0x4003B2AF) ; 2 uses
  %i.hs = fadd <4 x float> %i.hp, %i.hr
  %i.ht = fsub <4 x float> %i.hp, %i.hr
  %.idx52.i.i = mul i64 %.val9, 52
  %i.hu = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx52.i.i
  store <4 x float> %i.hs, ptr %i.hu, align 1, !tbaa !57, !alias.scope !5179, !noalias !5178
  %.idx53.i.i = mul i64 %.val9, 72
  %i.hv = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx53.i.i
  store <4 x float> %i.ht, ptr %i.hv, align 1, !tbaa !57, !alias.scope !5180, !noalias !5178
  %i.hw = load <4 x float>, ptr %i.p, align 16, !tbaa !57, !alias.scope !5178, !noalias !5177 ; 2 uses
  %i.hx = load <4 x float>, ptr %i.af, align 16, !tbaa !57, !alias.scope !5178, !noalias !5177
  %i.hy = fmul <4 x float> %i.hx, splat (float f0x405A1642) ; 2 uses
  %i.hz = fadd <4 x float> %i.hw, %i.hy
  %i.ia = fsub <4 x float> %i.hw, %i.hy
  %.idx54.i.i = mul i64 %.val9, 56
  %i.ib = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx54.i.i
  store <4 x float> %i.hz, ptr %i.ib, align 1, !tbaa !57, !alias.scope !5179, !noalias !5178
  %.idx55.i.i = mul i64 %.val9, 68
  %i.ic = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx55.i.i
  store <4 x float> %i.ia, ptr %i.ic, align 1, !tbaa !57, !alias.scope !5180, !noalias !5178
  %i.id = load <4 x float>, ptr %i.q, align 16, !tbaa !57, !alias.scope !5178, !noalias !5177 ; 2 uses
  %i.ie = load <4 x float>, ptr %i.ag, align 16, !tbaa !57, !alias.scope !5178, !noalias !5177
  %i.if = fmul <4 x float> %i.ie, splat (float f0x41230A46) ; 2 uses
  %i.ig = fadd <4 x float> %i.id, %i.if
  %i.ih = fsub <4 x float> %i.id, %i.if
  %.idx56.i.i = mul i64 %.val9, 60
  %i.ii = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx56.i.i
  store <4 x float> %i.ig, ptr %i.ii, align 1, !tbaa !57, !alias.scope !5179, !noalias !5178
  %.idx57.i.i = shl i64 %.val9, 6
  %i.ij = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx57.i.i
  store <4 x float> %i.ih, ptr %i.ij, align 1, !tbaa !57, !alias.scope !5180, !noalias !5178
  %i.ik = add i64 %.010, 4                        ; 2 uses
  %i.il = icmp ult i64 %i.ik, %2
  br i1 %i.il, label %bb.b, label %._crit_edge, !llvm.loop !5168
}

; Function Attrs: mustprogress nounwind uwtable
define internal i32 @_ZN3hwy13FunctionCacheIN3jxl6StatusEJmPNS1_18PassesEncoderStateERKNS1_6Image3IfEERKNS1_5RectTImEEPS6_EE13ChooseAndCallIXadsoKPFS2_mS4_S8_SC_SD_EL_ZNS1_L39ComputeCoefficientsHighwayDispatchTableEEEEEES2_mS4_S8_SC_SD_(i64 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4) #17 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #49 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #49
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL39ComputeCoefficientsHighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !215
  %i.k = tail call i32 %i.j(i64 noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4) #49
  ret i32 %i.k
}

declare noundef i64 @_ZN3hwy16SupportedTargetsEv() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #39

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse41.blendvps(<4 x float>, <4 x float>, <4 x float>) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.roundeven.v4f32(<4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #40

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.rcp.ps.256(<8 x float>) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #39

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110__function6__baseIFN3jxl6StatusEvEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEED0Ev"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #41 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noalias noundef nonnull ptr @"_ZNKSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEE7__cloneEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 align 2 {
"_ZNSt3__110unique_ptrINS_10__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS3_18PassesEncoderStateEPNS3_9BitWriterEPNS3_6AuxOutEE3$_0NS_9allocatorISB_EEFNS3_6StatusEvEEENS_22__allocator_destructorINSC_ISG_EEEEED2B8nn180100Ev.exit":
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #51 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEEE", i64 16), ptr %i.b, align 8, !tbaa !187
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !222
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @"_ZNKSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEE7__cloneEPNS0_6__baseISE_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #42 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @"_ZTVNSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEEE", i64 16), ptr %1, align 8, !tbaa !187
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !222
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEE7destroyEv"(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #43 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEE18destroy_deallocateEv"(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #50
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @"_ZNSt3__110__function6__funcIZN3jxl32EncodeGroupTokenizedCoefficientsEmmmRKNS2_18PassesEncoderStateEPNS2_9BitWriterEPNS2_6AuxOutEE3$_0NS_9allocatorISA_EEFNS2_6StatusEvEEclEv"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5182, !nonnull !5183, !align !5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !5185, !nonnull !5183, !align !5184
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !5186, !nonnull !5183, !align !5184
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53
  tail call void @_ZN3jxl9BitWriter5WriteEmm(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.f, i64 noundef %i.i) #49
  ret i32 0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #44

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #45

declare void @_ZN3jxl9BitWriter5WriteEmm(ptr noundef nonnull align 8 dereferenceable(64), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #46

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.copysign.v4f32(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.copysign.v8f32(<8 x float>, <8 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #7 = { "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #12 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #16 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #17 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #24 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+crc32,+cx8,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #26 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #30 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+avx,+avx2,+bmi,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #32 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #37 = { alwaysinline mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #39 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #41 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #42 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #43 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="5632" }
attributes #44 = { nobuiltin nounwind "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-builtin-fread" "no-builtin-fwrite" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #47 = { nounwind }
attributes #48 = { "no-builtin-fread" "no-builtin-fwrite" }
attributes #49 = { nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #50 = { builtin nounwind "no-builtin-fread" "no-builtin-fwrite" }
attributes #51 = { builtin nounwind allocsize(0) "no-builtin-fread" "no-builtin-fwrite" }

!llvm.module.flags = !{!29, !30, !31}
!llvm.ident = !{!32}
!llvm.errno.tbaa = !{!37}

!0 = distinct !{!0, !58}
!1 = distinct !{!1, !58}
!2 = distinct !{!2, !58}
!3 = distinct !{!3, !58}
!4 = distinct !{!4, !58}
!5 = distinct !{!5, !58}
!6 = distinct !{!6, !58}
!7 = distinct !{!7, !58}
!8 = distinct !{!8, !58}
!9 = distinct !{!9, !58}
!10 = distinct !{!10, !58}
!11 = distinct !{!11, !58}
!12 = distinct !{!12, !58}
!13 = distinct !{!13, !58}
!14 = distinct !{!14, !58}
!15 = distinct !{!15, !58}
!16 = distinct !{!16, !58}
!17 = distinct !{!17, !58}
!18 = distinct !{!18, !58}
!19 = distinct !{!19, !58}
!20 = distinct !{!20, !58}
!21 = distinct !{!21, !58}
!22 = distinct !{!22, !58}
!23 = distinct !{!23, !58}
!24 = distinct !{!24, !58}
!25 = distinct !{!25, !58}
!26 = distinct !{!26, !58}
!27 = distinct !{!27, !58}
!28 = distinct !{!28, !58}
!29 = !{i32 8, !"PIC Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 2}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!33 = !{!"Simple C++ TBAA"}
!34 = !{!"omnipotent char", !33, i64 0}
!35 = !{!"int", !34, i64 0}
!36 = !{!"__libc_errno", !35, i64 0}
!37 = !{!36, !35, i64 0}
!38 = !{!"float", !34, i64 0}
!39 = !{!"any pointer", !34, i64 0}
!40 = !{!"p1 _ZTSN3jxl15DequantMatricesE", !39, i64 0}
!41 = !{!"_ZTSN3jxl9QuantizerE", !34, i64 0, !34, i64 16, !35, i64 32, !35, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !34, i64 52, !40, i64 64}
!42 = !{!41, !40, i64 64}
!43 = !{!"p1 _ZTS22JxlMemoryManagerStruct", !39, i64 0}
!44 = !{!"_ZTSN3jxl13AlignedMemoryE", !39, i64 0, !43, i64 8, !39, i64 16}
!45 = !{!"p1 float", !39, i64 0}
!46 = !{!"p1 _ZTSN3jxl13QuantEncodingE", !39, i64 0}
!47 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13QuantEncodingELi0ELb0EEE", !46, i64 0}
!48 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !47, i64 0}
!49 = !{!"_ZTSNSt3__16vectorIN3jxl13QuantEncodingENS_9allocatorIS2_EEEE", !46, i64 0, !46, i64 8, !48, i64 16}
!50 = !{!"_ZTSN3jxl15DequantMatricesE", !35, i64 0, !44, i64 8, !45, i64 32, !45, i64 40, !34, i64 48, !34, i64 60, !34, i64 72, !49, i64 720}
!51 = !{!50, !45, i64 40}
!52 = !{!"long", !34, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!41, !38, i64 44}
!55 = !{!35, !35, i64 0}
!56 = !{!38, !38, i64 0}
!57 = !{!34, !34, i64 0}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"double", !34, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTSN3jxl13CodecMetadataE", !39, i64 0}
!62 = !{!"_ZTSN3jxl15FrameDimensionsE", !52, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136}
!63 = !{!"_ZTSN3jxl6detail9PlaneBaseE", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !52, i64 16, !44, i64 24, !52, i64 48}
!64 = !{!"_ZTSN3jxl5PlaneIhEE", !63, i64 0}
!65 = !{!"p1 omnipotent char", !39, i64 0}
!66 = !{!"_ZTSN3jxl15AcStrategyImageE", !64, i64 0, !65, i64 56, !52, i64 64}
!67 = !{!"_ZTSN3jxl5PlaneIiEE", !63, i64 0}
!68 = !{!"_ZTSN3jxl5PlaneIaEE", !63, i64 0}
!69 = !{!"_ZTSN3jxl16ColorCorrelationE", !34, i64 0, !35, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !35, i64 32, !35, i64 36}
!70 = !{!"_ZTSN3jxl19ColorCorrelationMapE", !68, i64 0, !68, i64 56, !69, i64 112}
!71 = !{!"_ZTSNSt3__15arrayIfLm8EEE", !34, i64 0}
!72 = !{!"_ZTSN3jxl11NoiseParamsE", !71, i64 0}
!73 = !{!"p1 _ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !39, i64 0}
!74 = !{!"p1 _ZTSN3jxl13PatchPositionE", !39, i64 0}
!75 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchPositionELi0ELb0EEE", !74, i64 0}
!76 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !75, i64 0}
!77 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchPositionENS_9allocatorIS2_EEEE", !74, i64 0, !74, i64 8, !76, i64 16}
!78 = !{!"p1 _ZTSN3jxl22PatchReferencePositionE", !39, i64 0}
!79 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl22PatchReferencePositionELi0ELb0EEE", !78, i64 0}
!80 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !79, i64 0}
!81 = !{!"_ZTSNSt3__16vectorIN3jxl22PatchReferencePositionENS_9allocatorIS2_EEEE", !78, i64 0, !78, i64 8, !80, i64 16}
!82 = !{!"p1 _ZTSN3jxl13PatchBlendingE", !39, i64 0}
!83 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13PatchBlendingELi0ELb0EEE", !82, i64 0}
!84 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !83, i64 0}
!85 = !{!"_ZTSNSt3__16vectorIN3jxl13PatchBlendingENS_9allocatorIS2_EEEE", !82, i64 0, !82, i64 8, !84, i64 16}
!86 = !{!"p1 _ZTSN3jxl15PatchDictionary13PatchTreeNodeE", !39, i64 0}
!87 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15PatchDictionary13PatchTreeNodeELi0ELb0EEE", !86, i64 0}
!88 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !87, i64 0}
!89 = !{!"_ZTSNSt3__16vectorIN3jxl15PatchDictionary13PatchTreeNodeENS_9allocatorIS3_EEEE", !86, i64 0, !86, i64 8, !88, i64 16}
!90 = !{!"p1 long", !39, i64 0}
!91 = !{!"_ZTSNSt3__122__compressed_pair_elemIPmLi0ELb0EEE", !90, i64 0}
!92 = !{!"_ZTSNSt3__117__compressed_pairIPmNS_9allocatorImEEEE", !91, i64 0}
!93 = !{!"_ZTSNSt3__16vectorImNS_9allocatorImEEEE", !90, i64 0, !90, i64 8, !92, i64 16}
!94 = !{!"p1 _ZTSNSt3__14pairImmEE", !39, i64 0}
!95 = !{!"_ZTSNSt3__122__compressed_pair_elemIPNS_4pairImmEELi0ELb0EEE", !94, i64 0}
!96 = !{!"_ZTSNSt3__117__compressed_pairIPNS_4pairImmEENS_9allocatorIS2_EEEE", !95, i64 0}
!97 = !{!"_ZTSNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEEE", !94, i64 0, !94, i64 8, !96, i64 16}
!98 = !{!"_ZTSN3jxl15PatchDictionaryE", !43, i64 0, !73, i64 8, !77, i64 16, !81, i64 40, !85, i64 64, !52, i64 88, !89, i64 96, !93, i64 120, !97, i64 144, !97, i64 168}
!99 = !{!"p1 _ZTSN3jxl15QuantizedSplineE", !39, i64 0}
!100 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl15QuantizedSplineELi0ELb0EEE", !99, i64 0}
!101 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !100, i64 0}
!102 = !{!"_ZTSNSt3__16vectorIN3jxl15QuantizedSplineENS_9allocatorIS2_EEEE", !99, i64 0, !99, i64 8, !101, i64 16}
!103 = !{!"p1 _ZTSN3jxl6Spline5PointE", !39, i64 0}
!104 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl6Spline5PointELi0ELb0EEE", !103, i64 0}
!105 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !104, i64 0}
!106 = !{!"_ZTSNSt3__16vectorIN3jxl6Spline5PointENS_9allocatorIS3_EEEE", !103, i64 0, !103, i64 8, !105, i64 16}
!107 = !{!"p1 _ZTSN3jxl13SplineSegmentE", !39, i64 0}
!108 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN3jxl13SplineSegmentELi0ELb0EEE", !107, i64 0}
!109 = !{!"_ZTSNSt3__117__compressed_pairIPN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !108, i64 0}
!110 = !{!"_ZTSNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEEE", !107, i64 0, !107, i64 8, !109, i64 16}
!111 = !{!"_ZTSN3jxl7SplinesE", !35, i64 0, !102, i64 8, !106, i64 32, !110, i64 56, !93, i64 80, !93, i64 104}
!112 = !{!"_ZTSN3jxl13ImageFeaturesE", !72, i64 0, !98, i64 32, !111, i64 224}
!113 = !{!"p1 int", !39, i64 0}
!114 = !{!"_ZTSNSt3__122__compressed_pair_elemIPjLi0ELb0EEE", !113, i64 0}
!115 = !{!"_ZTSNSt3__117__compressed_pairIPjNS_9allocatorIjEEEE", !114, i64 0}
!116 = !{!"_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE", !113, i64 0, !113, i64 8, !115, i64 16}
!117 = !{!"_ZTSN3jxl6Image3IfEE", !34, i64 0}
!118 = !{!"p1 _ZTSN3jxl6Image3IfEE", !39, i64 0}
!119 = !{!"_ZTSNSt3__122__compressed_pair_elemIPhLi0ELb0EEE", !65, i64 0}
!120 = !{!"_ZTSNSt3__117__compressed_pairIPhNS_9allocatorIhEEEE", !119, i64 0}
!121 = !{!"_ZTSNSt3__16vectorIhNS_9allocatorIhEEEE", !65, i64 0, !65, i64 8, !120, i64 16}
!122 = !{!"_ZTSN3jxl11BlockCtxMapE", !34, i64 0, !116, i64 72, !121, i64 96, !52, i64 120, !52, i64 128}
!123 = !{!"_ZTSNSt3__15arrayIN3jxl14ReferenceFrameELm4EEE", !34, i64 0}
!124 = !{!"_ZTSN3jxl17PassesSharedStateE", !43, i64 0, !61, i64 8, !62, i64 16, !66, i64 160, !50, i64 232, !41, i64 976, !67, i64 1048, !64, i64 1104, !70, i64 1160, !112, i64 1312, !52, i64 1664, !116, i64 1672, !64, i64 1696, !117, i64 1752, !118, i64 1920, !122, i64 1928, !34, i64 2064, !123, i64 2736, !52, i64 2800}
!125 = !{!"bool", !34, i64 0}
end_hunk_1
