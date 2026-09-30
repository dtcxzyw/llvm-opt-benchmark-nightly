Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/spherical_joint?download=true
inline.NumInlined: 228
inline.NumDeleted: 35
begin_hunk_0_@b3SolveSphericalJoint:bb.a
  %i.alu = extractelement <2 x float> %foldExtExtBinop1976, i64 0
  %i.alv = fsub float %i.alt, %i.alu
  %i.alw = fmul float %i.alk, %i.alj
  %i.alx = fadd <2 x float> %i.adw, %.sroa.0178.0 ; 4 uses
  %i.aly = insertelement <2 x float> poison, float %i.alo, i64 0
  %i.alz = insertelement <2 x float> %i.aly, float %i.alp, i64 1 ; 2 uses
  %i.ama = fadd <2 x float> %i.alz, %i.aln
  %i.amb = fsub <2 x float> %i.alz, %i.aln
  %i.amc = shufflevector <2 x float> %i.ama, <2 x float> %i.amb, <2 x i32> <i32 0, i32 3>
  %i.amd = shufflevector <2 x float> %i.alx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ame = extractelement <2 x float> %i.alx, i64 0
  %i.amf = fmul float %i.ame, %i.akw
  %i.amg = extractelement <2 x float> %i.alx, i64 1
  %i.amh = fmul float %i.amg, %i.akz
  %i.ami = fadd float %i.amf, %i.amh
  %i.amj = fadd float %i.alw, %i.ami
  %i.amk = fmul float %i.amj, %i.all
  %.sroa.050.0.vec.insert.i = insertelement <2 x float> poison, float %i.amk, i64 0
  %i.aml = fmul <2 x float> %i.alx, %i.amc        ; 2 uses
  %shift1978 = shufflevector <2 x float> %i.aml, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1979 = fadd <2 x float> %i.aml, %shift1978
  %i.amm = extractelement <2 x float> %foldExtExtBinop1979, i64 0
  %i.amn = fmul float %i.alk, %i.als
  %i.amo = fadd float %i.amn, %i.amm
  %i.amp = fmul float %i.amo, %i.all
  %.sroa.050.4.vec.insert.i = insertelement <2 x float> %.sroa.050.0.vec.insert.i, float %i.amp, i64 1
  %i.amq = shufflevector <2 x float> %i.akj, <2 x float> %i.akk, <2 x i32> <i32 0, i32 2>
  %i.amr = fmul <2 x float> %i.amq, %i.aki
  %i.ams = shufflevector <2 x float> %i.aki, <2 x float> %i.akj, <2 x i32> <i32 1, i32 2>
  %i.amt = fmul <2 x float> %i.ams, %i.akr
  %i.amu = fadd <2 x float> %i.amr, %i.amt
  %i.amv = fmul <2 x float> %i.amd, %i.amu        ; 2 uses
  %shift1981 = shufflevector <2 x float> %i.amv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1982 = fadd <2 x float> %shift1981, %i.amv
  %i.amw = extractelement <2 x float> %foldExtExtBinop1982, i64 0
  %i.amx = fmul float %i.alk, %i.alv
  %i.amy = fadd float %i.amx, %i.amw
  %i.amz = fmul float %i.amy, %i.all
  br label %b3Solve3.exit

b3Solve3.exit:                                    ; preds = %bb.bf, %bb.bg
  %.sroa.050.0.i = phi <2 x float> [ %.sroa.050.4.vec.insert.i, %bb.bg ], [ zeroinitializer, %bb.bf ]
  %.sroa.452.0.i = phi float [ %i.amz, %bb.bg ], [ 0.000000e+00, %bb.bf ]
  %i.ana = fneg float %.0856                      ; 2 uses
  %i.anb = fmul float %.sroa.452.0.i, %i.ana
  %.sroa.086.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 2 uses
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.sroa.287.0.copyload = load float, ptr %.sroa.287.0..sroa_idx, align 4 ; 2 uses
  %i.anc = fmul float %.0857, %.sroa.287.0.copyload
  %i.and = fsub float %i.anb, %i.anc              ; 7 uses
  %i.ane = insertelement <2 x float> poison, float %i.ana, i64 0
  %i.anf = shufflevector <2 x float> %i.ane, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ang = fmul <2 x float> %.sroa.050.0.i, %i.anf
  %i.anh = insertelement <2 x float> poison, float %.0857, i64 0
  %i.ani = shufflevector <2 x float> %i.anh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anj = fmul <2 x float> %i.ani, %.sroa.086.0.copyload
  %i.ank = fsub <2 x float> %i.ang, %i.anj        ; 8 uses
  %i.anl = fadd <2 x float> %.sroa.086.0.copyload, %i.ank
  %i.anm = fadd float %.sroa.287.0.copyload, %i.and
  store <2 x float> %i.anl, ptr %i.s, align 4, !tbaa !88
  store float %i.anm, ptr %.sroa.287.0..sroa_idx, align 4, !tbaa !88
  %i.ann = extractelement <2 x float> %i.ank, i64 0
  %i.ano = extractelement <2 x float> %i.ank, i64 1 ; 4 uses
  %i.anp = insertelement <2 x float> poison, float %i.i, i64 0
  %i.anq = shufflevector <2 x float> %i.anp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anr = fmul <2 x float> %i.anq, %i.ank
  %i.ans = fadd <2 x float> %.sroa.0719.0.copyload, %i.anr
  %i.ant = fmul float %i.i, %i.and
  %i.anu = fadd float %.sroa.7722.0.copyload, %i.ant
  %i.anv = fmul float %i.acs, %i.and
  %i.anw = fmul float %i.acx, %i.ano
  %i.anx = fsub float %i.anv, %i.anw              ; 3 uses
  %foldExtExtBinop1988 = fmul <2 x float> %i.acr, %i.ank
  %i.any = extractelement <2 x float> %foldExtExtBinop1988, i64 0
  %i.anz = fmul float %i.adc, %i.and
  %i.aoa = fsub float %i.any, %i.anz              ; 3 uses
  %i.aob = fmul float %i.adc, %i.ano
  %i.aoc = fmul float %i.acs, %i.ann
  %i.aod = fsub float %i.aob, %i.aoc              ; 3 uses
  %i.aoe = fmul float %.sroa.151621.0.copyload, %i.anx
  %i.aof = fmul float %.sroa.33.0.copyload, %i.aoa
  %i.aog = fadd float %i.aoe, %i.aof
  %i.aoh = extractelement <2 x float> %i.o, i64 0
  %i.aoi = fmul float %i.aoh, %i.anx
  %i.aoj = extractelement <2 x float> %i.p, i64 0
  %i.aok = fmul float %i.aoj, %i.aoa
  %i.aol = fadd float %i.aoi, %i.aok
  %i.aom = extractelement <2 x float> %i.q, i64 0
  %i.aon = fmul float %i.aom, %i.aod
  %i.aoo = fadd float %i.aon, %i.aol
  %i.aop = extractelement <2 x float> %i.o, i64 1
  %i.aoq = fmul float %i.aop, %i.anx
  %i.aor = extractelement <2 x float> %i.p, i64 1
  %i.aos = fmul float %i.aor, %i.aoa
  %i.aot = fadd float %i.aoq, %i.aos
  %i.aou = extractelement <2 x float> %i.q, i64 1
  %i.aov = fmul float %i.aou, %i.aod
  %i.aow = fadd float %i.aov, %i.aot
  %i.aox = fmul float %.sroa.51.0.copyload, %i.aod
  %i.aoy = fadd float %i.aox, %i.aog
  %i.aoz = fadd float %.sroa.09.0.vec.extract.i1216, %i.aoo
  %.sroa.05.0.vec.insert.i1506 = insertelement <2 x float> poison, float %i.aoz, i64 0
  %i.apa = fadd float %.sroa.09.4.vec.extract13.i, %i.aow
  %.sroa.05.4.vec.insert.i1507 = insertelement <2 x float> %.sroa.05.0.vec.insert.i1506, float %i.apa, i64 1
  %i.apb = fadd float %.sroa.22716.3, %i.aoy
  %i.apc = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !122
  %i.ape = and i32 %i.apd, 4096
  %.not889 = icmp eq i32 %i.ape, 0
  br i1 %.not889, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %b3Solve3.exit
  %i.apf = fmul float %i.adt, %i.ano
  %foldExtExtBinop1986 = fmul <2 x float> %i.acp, %i.ank
  %i.apg = extractelement <2 x float> %foldExtExtBinop1986, i64 0
  %i.aph = fsub float %i.apf, %i.apg              ; 3 uses
  %i.api = fmul float %.sroa.511705.0.copyload, %i.aph
  %i.apj = fmul float %i.adj, %i.and
  %i.apk = fmul float %i.ado, %i.ano
  %i.apl = fsub float %i.apj, %i.apk              ; 3 uses
  %i.apm = fmul float %.sroa.151669.0.copyload, %i.apl
  %foldExtExtBinop1984 = fmul <2 x float> %i.abp, %i.ank
  %i.apn = extractelement <2 x float> %foldExtExtBinop1984, i64 0
  %i.apo = fmul float %i.adt, %i.and
  %i.app = fsub float %i.apn, %i.apo              ; 3 uses
  %i.apq = fmul float %.sroa.331687.0.copyload, %i.app
  %i.apr = fadd float %i.apm, %i.apq
  %i.aps = fadd float %i.api, %i.apr
  %i.apt = fsub float %.sroa.22738.3, %i.aps
  %i.apu = extractelement <2 x float> %i.m, i64 0
  %i.apv = fmul float %i.apu, %i.aph
  %i.apw = extractelement <2 x float> %i.k, i64 0
  %i.apx = fmul float %i.apw, %i.apl
  %i.apy = extractelement <2 x float> %i.l, i64 0
  %i.apz = fmul float %i.apy, %i.app
  %i.aqa = fadd float %i.apx, %i.apz
  %i.aqb = fadd float %i.apv, %i.aqa
  %i.aqc = fsub float %.sroa.09.0.vec.extract.i1239, %i.aqb
  %.sroa.05.0.vec.insert.i1476 = insertelement <2 x float> poison, float %i.aqc, i64 0
  %i.aqd = extractelement <2 x float> %i.m, i64 1
  %i.aqe = fmul float %i.aqd, %i.aph
  %i.aqf = extractelement <2 x float> %i.k, i64 1
  %i.aqg = fmul float %i.aqf, %i.apl
  %i.aqh = extractelement <2 x float> %i.l, i64 1
  %i.aqi = fmul float %i.aqh, %i.app
  %i.aqj = fadd float %i.aqg, %i.aqi
  %i.aqk = fadd float %i.aqe, %i.aqj
  %i.aql = fsub float %.sroa.09.4.vec.extract13.i1235, %i.aqk
  %.sroa.05.4.vec.insert.i1477 = insertelement <2 x float> %.sroa.05.0.vec.insert.i1476, float %i.aql, i64 1
  %i.aqm = fmul float %i.h, %i.and
  %i.aqn = fsub float %.sroa.7744.0.copyload, %i.aqm
  %i.aqo = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aqp = shufflevector <2 x float> %i.aqo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqq = fmul <2 x float> %i.aqp, %i.ank
  %i.aqr = fsub <2 x float> %.sroa.0741.0.copyload, %i.aqq
  store <2 x float> %i.aqr, ptr %i.ap, align 4, !tbaa !88
  store float %i.aqn, ptr %.sroa.7744.0..sroa_idx, align 4, !tbaa !88
  store <2 x float> %.sroa.05.4.vec.insert.i1477, ptr %i.bs, align 4, !tbaa !88
  store float %i.apt, ptr %.sroa.22738.0..sroa_idx, align 4, !tbaa !88
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %b3Solve3.exit
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !122
  %i.aqu = and i32 %i.aqt, 4096
  %.not890 = icmp eq i32 %i.aqu, 0
  br i1 %.not890, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store <2 x float> %i.ans, ptr %i.bm, align 4, !tbaa !88
  store float %i.anu, ptr %.sroa.7722.0..sroa_idx, align 4, !tbaa !88
  store <2 x float> %.sroa.05.4.vec.insert.i1507, ptr %i.by, align 4, !tbaa !88
  store float %i.apb, ptr %.sroa.22716.0..sroa_idx, align 4, !tbaa !88
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawSphericalJoint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, float noundef %4) local_unnamed_addr #5 !func_sanitize !166 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @99, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0621.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !88 ; 4 uses
  %.sroa.4622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4622.0.copyload = load float, ptr %.sroa.4622.0..sroa_idx, align 4, !tbaa !88 ; 4 uses
  %.sroa.5623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5623.0.copyload = load <2 x float>, ptr %.sroa.5623.0..sroa_idx, align 4, !tbaa !88 ; 6 uses
  %.sroa.6624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6624.0.copyload = load <2 x float>, ptr %.sroa.6624.0..sroa_idx, align 4, !tbaa !88 ; 5 uses
  %.sroa.5612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5612.0.copyload = load float, ptr %.sroa.5612.0..sroa_idx, align 8
  %.sroa.6613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.6613.0.copyload = load <2 x float>, ptr %.sroa.6613.0..sroa_idx, align 4 ; 10 uses
  %.sroa.8615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8615.0.copyload = load <2 x float>, ptr %.sroa.8615.0..sroa_idx, align 4 ; 6 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6613.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.6624.0.copyload, %.sroa.8615.0.copyload
  %foldExtExtBinop680 = fmul <2 x float> %.sroa.5623.0.copyload, %.sroa.6613.0.copyload
  %foldExtExtBinop682.a = fmul <2 x float> %.sroa.5623.0.copyload, %.sroa.6613.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop682.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop684 = fadd <2 x float> %foldExtExtBinop680, %shift
  %foldExtExtBinop686.a = fmul <2 x float> %.sroa.6624.0.copyload, %.sroa.8615.0.copyload
  %foldExtExtBinop688 = fadd <2 x float> %foldExtExtBinop686.a, %foldExtExtBinop684
  %shift690 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop691 = fsub <2 x float> %shift690, %foldExtExtBinop688 ; 14 uses
  %5 = extractelement <2 x float> %foldExtExtBinop691, i64 0 ; 8 uses
  %6 = load <2 x float>, ptr %2, align 8
  %7 = shufflevector <2 x float> %.sroa.8615.0.copyload, <2 x float> %.sroa.6613.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.g = fmul <2 x float> %.sroa.5623.0.copyload, %7
  %8 = shufflevector <2 x float> %.sroa.5623.0.copyload, <2 x float> %.sroa.6624.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %9 = fmul <2 x float> %8, %.sroa.6613.0.copyload
  %10 = shufflevector <2 x float> %.sroa.6624.0.copyload, <2 x float> %.sroa.5623.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.h = fmul <2 x float> %10, %.sroa.6613.0.copyload
  %11 = shufflevector <2 x float> %.sroa.6613.0.copyload, <2 x float> %.sroa.8615.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %12 = fmul <2 x float> %.sroa.5623.0.copyload, %11
  %13 = fsub <2 x float> %i.g, %i.h
  %14 = fsub <2 x float> %9, %12
  %i.i = shufflevector <2 x float> %.sroa.8615.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.j = fmul <2 x float> %8, %i.i
  %15 = fmul <2 x float> %10, %i.i
  %16 = fadd <2 x float> %i.j, %13
  %17 = fadd <2 x float> %14, %15
  %18 = shufflevector <2 x float> %.sroa.6624.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.k = fmul <2 x float> %18, %7
  %19 = fmul <2 x float> %18, %11
  %20 = fadd <2 x float> %19, %16                 ; 28 uses
  %i.l = fadd <2 x float> %i.k, %17               ; 5 uses
  %foldExtExtBinop693 = fmul <2 x float> %.sroa.0621.0.copyload, %.sroa.8615.0.copyload
  %i.m = extractelement <2 x float> %foldExtExtBinop693, i64 0
  %21 = fmul float %.sroa.4622.0.copyload, %.sroa.09.0.vec.extract.i.i
  %22 = fsub float %i.m, %21
  %i.n = shufflevector <2 x float> %.sroa.0621.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.o = insertelement <2 x float> %i.n, float %.sroa.4622.0.copyload, i64 1 ; 2 uses
  %i.p = fmul <2 x float> %i.o, %.sroa.6613.0.copyload
  %i.q = fmul <2 x float> %.sroa.0621.0.copyload, %11
  %i.r = fsub <2 x float> %i.p, %i.q              ; 2 uses
  %i.s = insertelement <2 x float> %i.n, float %.sroa.4622.0.copyload, i64 0
  %23 = fmul <2 x float> %i.s, %i.i
  %24 = fmul <2 x float> %i.o, %i.i
  %25 = fadd <2 x float> %23, %i.r                ; 2 uses
  %26 = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %27 = insertelement <2 x float> %26, float %22, i64 0
  %i.t = fadd <2 x float> %24, %27                ; 2 uses
  %i.u = fmul <2 x float> %11, %25
  %i.v = fmul <2 x float> %7, %i.t
  %i.w = fsub <2 x float> %i.u, %i.v
  %foldExtExtBinop695 = fmul <2 x float> %.sroa.6613.0.copyload, %i.t
  %foldExtExtBinop697 = fmul <2 x float> %.sroa.6613.0.copyload, %25
  %shift699 = shufflevector <2 x float> %foldExtExtBinop697, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop700 = fsub <2 x float> %foldExtExtBinop695, %shift699
  %i.x = extractelement <2 x float> %foldExtExtBinop700, i64 0
  %i.y = fmul <2 x float> %i.w, splat (float 2.000000e+00)
  %i.z = fadd <2 x float> %.sroa.0621.0.copyload, %i.y
  %i.aa = fmul float %i.x, 2.000000e+00
  %i.ab = fadd float %.sroa.4622.0.copyload, %i.aa
  %i.ac = fadd <2 x float> %6, %i.z               ; 18 uses
  %i.ad = fadd float %.sroa.5612.0.copyload, %i.ab ; 17 uses
  %i.ae = fmul float %4, 1.000000e-01             ; 6 uses
  %i.af = icmp ne ptr %0, null, !nosanitize !10
  %i.ag = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.ah = and i64 %i.ag, 7, !nosanitize !10
  %i.ai = icmp eq i64 %i.ah, 0, !nosanitize !10
  %i.aj = and i1 %i.af, %i.ai, !nosanitize !10
  br i1 %i.aj, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @101, i64 %i.ag) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load i32, ptr %i.am, align 4, !nosanitize !10
  %i.ao = icmp eq i32 %i.an, -1056584962, !nosanitize !10
  br i1 %i.ao, label %bb.f, label %bb.h, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr i8, ptr %i.al, i64 -4
  %i.aq = load i32, ptr %i.ap, align 8, !nosanitize !10
  %i.ar = icmp eq i32 %i.aq, -341714709, !nosanitize !10
  br i1 %i.ar, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.as = ptrtoint ptr %i.al to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @103, i64 %i.as) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.e
  %28 = extractelement <2 x float> %20, i64 0     ; 7 uses
  %29 = extractelement <2 x float> %20, i64 1     ; 9 uses
  %30 = extractelement <2 x float> %i.l, i64 1    ; 17 uses
  %i.at = fmul <2 x float> %20, zeroinitializer   ; 8 uses
  %31 = shufflevector <2 x float> %foldExtExtBinop691, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %31, <float 1.000000e+00, float 0.000000e+00> ; 12 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.aw = extractelement <2 x float> %i.au, i64 1 ; 3 uses
  %32 = extractelement <2 x float> %i.at, i64 0   ; 3 uses
  %33 = extractelement <2 x float> %i.at, i64 1   ; 3 uses
  %34 = fmul float %30, 0.000000e+00              ; 9 uses
  %35 = fsub float %29, %34
  %i.ax = fadd float %i.aw, %35                   ; 2 uses
  %i.ay = fmul float %30, %i.ax
  %36 = fsub float %32, %33
  %37 = fadd float %5, %36                        ; 2 uses
  %38 = fmul float %28, %37
  %39 = fsub float %i.ay, %38
  %40 = fmul float %39, 2.000000e+00
  %41 = fadd float %40, 0.000000e+00
  %42 = fmul float %i.ae, %41
  %43 = fadd float %i.ad, %42
  %44 = fsub float %34, %28
  %i.az = fadd float %i.aw, %44                   ; 2 uses
  %45 = insertelement <2 x float> poison, float %i.az, i64 0
  %46 = insertelement <2 x float> %45, float %37, i64 1
  %i.ba = fmul <2 x float> %20, %46
  %47 = shufflevector <2 x float> %20, <2 x float> %i.l, <2 x i32> <i32 1, i32 3> ; 13 uses
  %48 = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.bb = insertelement <2 x float> %48, float %i.az, i64 1
  %i.bc = fmul <2 x float> %47, %i.bb
  %i.bd = fsub <2 x float> %i.ba, %i.bc
  %i.be = fmul <2 x float> %i.bd, splat (float 2.000000e+00)
  %i.bf = fadd <2 x float> %i.be, <float 1.000000e+00, float 0.000000e+00>
  %i.bg = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.bi = fmul <2 x float> %i.bh, %i.bf
  %i.bj = fadd <2 x float> %i.ac, %i.bi
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.al(<2 x float> %i.ac, float %i.ad, <2 x float> %i.bj, float %43, i32 noundef 16711680, ptr noundef %i.bk) #7
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !nosanitize !10
  %i.bo = icmp eq i32 %i.bn, -1056584962, !nosanitize !10
  br i1 %i.bo, label %bb.i, label %bb.k, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr i8, ptr %i.bl, i64 -4
  %i.bq = load i32, ptr %i.bp, align 8, !nosanitize !10
  %i.br = icmp eq i32 %i.bq, -341714709, !nosanitize !10
  br i1 %i.br, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.bs = ptrtoint ptr %i.bl to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @104, i64 %i.bs) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i, %bb.h
  %49 = fsub float %32, %29
  %i.bt = fsub float %33, %34
  %i.bu = fsub float %30, %32
  %50 = fadd float %5, %i.bt                      ; 2 uses
  %51 = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %52 = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bv = insertelement <2 x float> %52, float %49, i64 1
  %i.bw = fadd <2 x float> %51, %i.bv             ; 3 uses
  %i.bx = fmul <2 x float> %20, %i.bw
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bz = insertelement <2 x float> %i.by, float %50, i64 0
  %i.ca = fmul <2 x float> %47, %i.bz
  %i.cb = fsub <2 x float> %i.bx, %i.ca
  %i.cc = fmul float %30, %50
  %shift702 = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop703.a = fmul <2 x float> %20, %shift702
  %i.cd = extractelement <2 x float> %foldExtExtBinop703.a, i64 0
  %i.ce = fsub float %i.cc, %i.cd
  %i.cf = fmul <2 x float> %i.cb, splat (float 2.000000e+00)
  %i.cg = fadd <2 x float> %i.cf, <float 0.000000e+00, float 1.000000e+00>
  %i.ch = fmul float %i.ce, 2.000000e+00
  %i.ci = fadd float %i.ch, 0.000000e+00
  %i.cj = fmul <2 x float> %i.bh, %i.cg
  %i.ck = fmul float %i.ae, %i.ci
  %i.cl = fadd <2 x float> %i.ac, %i.cj
  %i.cm = fadd float %i.ad, %i.ck
  %i.cn = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.bl(<2 x float> %i.ac, float %i.ad, <2 x float> %i.cl, float %i.cm, i32 noundef 32768, ptr noundef %i.cn) #7
  %i.co = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -8
  %i.cq = load i32, ptr %i.cp, align 4, !nosanitize !10
  %i.cr = icmp eq i32 %i.cq, -1056584962, !nosanitize !10
  br i1 %i.cr, label %bb.l, label %bb.n, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  %i.cs = getelementptr i8, ptr %i.co, i64 -4
  %i.ct = load i32, ptr %i.cs, align 8, !nosanitize !10
  %i.cu = icmp eq i32 %i.ct, -341714709, !nosanitize !10
  br i1 %i.cu, label %bb.n, label %bb.m, !prof !11, !nosanitize !10

bb.m:                                             ; preds = %bb.l
  %i.cv = ptrtoint ptr %i.co to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @105, i64 %i.cv) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.l, %bb.k
  %53 = fsub float %33, %30
  %54 = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %55 = insertelement <2 x float> %54, float %34, i64 0
  %56 = fsub <2 x float> %55, %i.at
  %57 = fadd float %i.aw, %53                     ; 2 uses
  %i.cw = fadd <2 x float> %i.au, %56             ; 3 uses
  %i.cx = fmul <2 x float> %20, %i.cw
  %i.cy = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cz = insertelement <2 x float> %i.cy, float %57, i64 0
  %i.da = fmul <2 x float> %47, %i.cz
  %i.db = fsub <2 x float> %i.cx, %i.da
  %i.dc = fmul float %30, %57
  %shift705 = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop706 = fmul <2 x float> %20, %shift705
  %i.dd = extractelement <2 x float> %foldExtExtBinop706, i64 0
  %i.de = fsub float %i.dc, %i.dd
  %i.df = fmul <2 x float> %i.db, splat (float 2.000000e+00)
  %i.dg = fadd <2 x float> %i.df, zeroinitializer
  %i.dh = fmul float %i.de, 2.000000e+00
  %i.di = fadd float %i.dh, 1.000000e+00
  %i.dj = fmul <2 x float> %i.bh, %i.dg
  %i.dk = fmul float %i.ae, %i.di
  %i.dl = fadd <2 x float> %i.ac, %i.dj
  %i.dm = fadd float %i.ad, %i.dk
  %i.dn = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.co(<2 x float> %i.ac, float %i.ad, <2 x float> %i.dl, float %i.dm, i32 noundef 255, ptr noundef %i.dn) #7
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0601.0.copyload = load <2 x float>, ptr %i.do, align 4, !tbaa !88 ; 4 uses
  %.sroa.4602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.4602.0.copyload = load float, ptr %.sroa.4602.0..sroa_idx, align 4, !tbaa !88 ; 4 uses
  %.sroa.5603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5603.0.copyload = load <2 x float>, ptr %.sroa.5603.0..sroa_idx, align 4, !tbaa !88 ; 5 uses
  %.sroa.6604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6604.0.copyload = load <2 x float>, ptr %.sroa.6604.0..sroa_idx, align 4, !tbaa !88 ; 4 uses
  %.sroa.5594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5594.0.copyload = load float, ptr %.sroa.5594.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 8 uses
  %.sroa.09.0.vec.extract.i.i391 = extractelement <2 x float> %.sroa.6.0.copyload, i64 0
  %i.dp = shufflevector <2 x float> %.sroa.6604.0.copyload, <2 x float> %.sroa.5603.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x float> %i.dp, %i.dq
  %i.ds = shufflevector <2 x float> %.sroa.5603.0.copyload, <2 x float> %.sroa.6604.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.dt = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.du = fmul <2 x float> %i.ds, %i.dt
  %i.dv = fsub <2 x float> %i.dr, %i.du
  %i.dw = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.dx = fmul <2 x float> %.sroa.5603.0.copyload, %i.dw
  %i.dy = fadd <2 x float> %i.dx, %i.dv
  %i.dz = shufflevector <2 x float> %.sroa.6604.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ea = fmul <2 x float> %i.dz, %.sroa.6.0.copyload
  %i.eb = fadd <2 x float> %i.ea, %i.dy           ; 9 uses
  %i.ec = fmul <2 x float> %i.dz, %.sroa.8.0.copyload ; 2 uses
  %i.ed = shufflevector <2 x float> %.sroa.5603.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ef = fmul <2 x float> %i.ed, %i.ee           ; 2 uses
  %i.eg = shufflevector <2 x float> %.sroa.5603.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eh = fmul <2 x float> %i.eg, %.sroa.6.0.copyload ; 2 uses
  %i.ei = fsub <2 x float> %i.eh, %i.ef
  %i.ej = fadd <2 x float> %i.eh, %i.ef
  %i.ek = shufflevector <2 x float> %i.ei, <2 x float> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.el = shufflevector <2 x float> %.sroa.6604.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.en = fmul <2 x float> %i.el, %i.em
  %i.eo = fadd <2 x float> %i.ek, %i.en           ; 2 uses
  %i.ep = fadd <2 x float> %i.ec, %i.eo           ; 3 uses
  %i.eq = fsub <2 x float> %i.ec, %i.eo           ; 2 uses
  %i.er = shufflevector <2 x float> %i.ep, <2 x float> %i.eq, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.es = load <2 x float>, ptr %3, align 8
  %foldExtExtBinop715 = fmul <2 x float> %.sroa.0601.0.copyload, %.sroa.8.0.copyload
  %i.et = extractelement <2 x float> %foldExtExtBinop715, i64 0
  %i.eu = fmul float %.sroa.4602.0.copyload, %.sroa.09.0.vec.extract.i.i391
  %i.ev = fsub float %i.et, %i.eu
  %i.ew = shufflevector <2 x float> %.sroa.0601.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ex = insertelement <2 x float> %i.ew, float %.sroa.4602.0.copyload, i64 1 ; 2 uses
  %i.ey = fmul <2 x float> %i.ex, %.sroa.6.0.copyload
  %i.ez = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fa = fmul <2 x float> %.sroa.0601.0.copyload, %i.ez
  %i.fb = fsub <2 x float> %i.ey, %i.fa           ; 2 uses
  %i.fc = insertelement <2 x float> %i.ew, float %.sroa.4602.0.copyload, i64 0
  %i.fd = fmul <2 x float> %i.fc, %i.dw
  %i.fe = fmul <2 x float> %i.ex, %i.dw
  %i.ff = fadd <2 x float> %i.fd, %i.fb           ; 2 uses
  %i.fg = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fh = insertelement <2 x float> %i.fg, float %i.ev, i64 0
  %i.fi = fadd <2 x float> %i.fe, %i.fh           ; 2 uses
  %i.fj = fmul <2 x float> %i.ez, %i.ff
  %i.fk = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fl = fmul <2 x float> %i.fk, %i.fi
  %i.fm = fsub <2 x float> %i.fj, %i.fl
  %foldExtExtBinop717 = fmul <2 x float> %.sroa.6.0.copyload, %i.fi
  %foldExtExtBinop719 = fmul <2 x float> %.sroa.6.0.copyload, %i.ff
  %shift721 = shufflevector <2 x float> %foldExtExtBinop719, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop722 = fsub <2 x float> %foldExtExtBinop717, %shift721
  %i.fn = extractelement <2 x float> %foldExtExtBinop722, i64 0
  %i.fo = fmul <2 x float> %i.fm, splat (float 2.000000e+00)
  %i.fp = fadd <2 x float> %.sroa.0601.0.copyload, %i.fo
  %i.fq = fmul float %i.fn, 2.000000e+00
  %i.fr = fadd float %.sroa.4602.0.copyload, %i.fq
  %i.fs = fadd <2 x float> %i.es, %i.fp           ; 2 uses
  %i.ft = fadd float %.sroa.5594.0.copyload, %i.fr ; 2 uses
  %i.fu = fmul float %4, 2.000000e-01             ; 2 uses
  %i.fv = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8
  %i.fx = load i32, ptr %i.fw, align 4, !nosanitize !10
  %i.fy = icmp eq i32 %i.fx, -1056584962, !nosanitize !10
  br i1 %i.fy, label %bb.o, label %bb.q, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr i8, ptr %i.fv, i64 -4
  %i.ga = load i32, ptr %i.fz, align 8, !nosanitize !10
  %i.gb = icmp eq i32 %i.ga, -341714709, !nosanitize !10
  br i1 %i.gb, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.gc = ptrtoint ptr %i.fv to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @106, i64 %i.gc) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.gd = shufflevector <2 x float> %i.eb, <2 x float> %i.ep, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ge = fmul <2 x float> %i.gd, zeroinitializer ; 2 uses
  %shift724 = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop725 = fsub <2 x float> %shift724, %i.eb
  %i.gf = fmul <2 x float> %i.eb, <float 0.000000e+00, float 1.000000e+00>
  %i.gg = fsub <2 x float> %i.gf, %i.ge
  %i.gh = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x float> %i.gh, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %shift727 = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop728 = fadd <2 x float> %shift727, %foldExtExtBinop725 ; 2 uses
  %i.gj = fadd <2 x float> %i.gi, %i.gg           ; 3 uses
  %i.gk = fmul <2 x float> %i.gd, %i.gj
  %i.gl = shufflevector <2 x float> %i.ep, <2 x float> %i.eb, <2 x i32> <i32 0, i32 2>
  %i.gm = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gn = shufflevector <2 x float> %foldExtExtBinop728, <2 x float> %i.gm, <2 x i32> <i32 0, i32 3>
  %i.go = fmul <2 x float> %i.gl, %i.gn
  %i.gp = fsub <2 x float> %i.gk, %i.go
  %foldExtExtBinop730.a = fmul <2 x float> %i.eb, %foldExtExtBinop728
  %foldExtExtBinop732.a = fmul <2 x float> %i.eb, %i.gj
  %shift734 = shufflevector <2 x float> %foldExtExtBinop732.a, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop735 = fsub <2 x float> %foldExtExtBinop730.a, %shift734
  %i.gq = extractelement <2 x float> %foldExtExtBinop735, i64 0
  %i.gr = fmul <2 x float> %i.gp, splat (float 2.000000e+00)
  %i.gs = fadd <2 x float> %i.gr, zeroinitializer
  %i.gt = fmul float %i.gq, 2.000000e+00
  %i.gu = fadd float %i.gt, 1.000000e+00
  %i.gv = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gw = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x float> %i.gw, %i.gs
  %i.gy = fmul float %i.fu, %i.gu
  %i.gz = fadd <2 x float> %i.fs, %i.gx
  %i.ha = fadd float %i.ft, %i.gy
  %i.hb = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.fv(<2 x float> %i.fs, float %i.ft, <2 x float> %i.gz, float %i.ha, i32 noundef 16753920, ptr noundef %i.hb) #7
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 443
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !117 ; 3 uses
  %i.he = icmp ult i8 %i.hd, 2
  br i1 %i.he, label %bb.s, label %bb.r, !prof !11, !nosanitize !10

bb.r:                                             ; preds = %bb.q
  %i.hf = zext i8 %i.hd to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @107, i64 %i.hf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.s:                                             ; preds = %bb.q
  %i.hg = trunc nuw i8 %i.hd to i1
  br i1 %i.hg, label %.split, label %bb.al

.split:                                           ; preds = %bb.s
  %58 = shufflevector <2 x float> %i.l, <2 x float> %20, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %59 = insertelement <4 x float> %58, float %5, i64 3
  %i.hh = shufflevector <2 x float> %i.eb, <2 x float> %i.er, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hi = fmul <4 x float> %59, %i.hh             ; 4 uses
  %shift737 = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop738 = fadd <4 x float> %i.hi, %shift737
  %shift740 = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop741 = fadd <4 x float> %shift740, %foldExtExtBinop738
  %shift743 = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop744 = fadd <4 x float> %shift743, %foldExtExtBinop741
  %i.hj = extractelement <4 x float> %foldExtExtBinop744, i64 0
  %i.hk = fcmp olt float %i.hj, 0.000000e+00      ; 2 uses
  %i.hl = fneg <2 x float> %i.er
  %i.hm = fneg <2 x float> %i.eb
  %.sroa.0140.0 = select i1 %i.hk, <2 x float> %i.hm, <2 x float> %i.eb ; 3 uses
  %.sroa.7.0 = select i1 %i.hk, <2 x float> %i.hl, <2 x float> %i.er ; 3 uses
  %.sroa.3.8.vec.extract51.i440 = extractelement <2 x float> %.sroa.7.0, i64 0
  %.sroa.09.4.vec.extract13.i.i441 = extractelement <2 x float> %.sroa.0140.0, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i.i444 = extractelement <2 x float> %.sroa.0140.0, i64 0
  %foldExtExtBinop746 = fmul <2 x float> %20, %.sroa.0140.0
  %60 = extractelement <2 x float> %foldExtExtBinop746, i64 0
  %i.hn = fmul float %30, %.sroa.09.4.vec.extract13.i.i441
  %i.ho = fsub float %60, %i.hn
  %foldExtExtBinop748 = fmul <2 x float> %foldExtExtBinop691, %.sroa.7.0
  %i.hp = extractelement <2 x float> %foldExtExtBinop748, i64 0
  %i.hq = fadd float %i.ho, %i.hp
  %.sroa.3.12.vec.extract53.i445 = extractelement <2 x float> %.sroa.7.0, i64 1 ; 2 uses
  %i.hr = fmul float %29, %.sroa.3.12.vec.extract53.i445
  %i.hs = fsub float %i.hq, %i.hr                 ; 2 uses
  %i.ht = fmul float %5, %.sroa.3.12.vec.extract53.i445
  %61 = fmul float %30, %.sroa.09.0.vec.extract.i.i444
  %i.hu = fmul float %28, %.sroa.09.4.vec.extract13.i.i441
  %i.hv = fadd float %61, %i.hu
  %i.hw = fmul float %29, %.sroa.3.8.vec.extract51.i440
  %i.hx = fadd float %i.hw, %i.hv
  %i.hy = fadd float %i.ht, %i.hx                 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 260
  %62 = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %.split.split

bb.t:                                             ; preds = %bb.ah
  %i.ib = fcmp olt float %i.hy, 0.000000e+00
  br i1 %i.ib, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ic = fneg float %i.hs
  %i.id = fneg float %i.hy
  %i.ie = tail call float @b3Atan2(float noundef %i.ic, float noundef %i.id) #7
  br label %b3GetTwistAngle.exit

bb.v:                                             ; preds = %bb.t
  %i.if = tail call float @b3Atan2(float noundef %i.hs, float noundef %i.hy) #7
  br label %b3GetTwistAngle.exit

b3GetTwistAngle.exit:                             ; preds = %bb.u, %bb.v
  %i.ig = phi float [ %i.ie, %bb.u ], [ %i.if, %bb.v ]
  %i.ih = fmul float %i.ig, 2.000000e+00          ; 2 uses
  %i.ii = tail call <2 x float> @b3ComputeCosSin(float noundef %i.ih) #7
  %i.ij = tail call <2 x float> @b3ComputeCosSin(float noundef %i.ih) #7
  %63 = shufflevector <2 x float> %i.ii, <2 x float> %i.ij, <2 x i32> <i32 0, i32 3>
  %i.ik = fmul <2 x float> %i.bh, %63             ; 5 uses
  %i.il = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.im = getelementptr i8, ptr %i.il, i64 -8
  %i.in = load i32, ptr %i.im, align 4, !nosanitize !10
  %i.io = icmp eq i32 %i.in, -1056584962, !nosanitize !10
  br i1 %i.io, label %bb.ai, label %bb.ak, !nosanitize !10

.split.split:                                     ; preds = %.split, %bb.ah
  %.0644 = phi i32 [ %i.ix, %bb.ah ], [ 0, %.split ] ; 3 uses
  %i.ip = uitofp nneg i32 %.0644 to float
  %i.iq = fmul nnan float %i.ip, 6.250000e-02     ; 2 uses
  %i.ir = fsub nnan float 1.000000e+00, %i.iq
  %i.is = load float, ptr %i.hz, align 4, !tbaa !123 ; 2 uses
  %i.it = fmul float %i.ir, %i.is
  %i.iu = load float, ptr %i.ia, align 4, !tbaa !124 ; 2 uses
  %i.iv = fmul float %i.iq, %i.iu
  %i.iw = fadd float %i.it, %i.iv                 ; 2 uses
  %i.ix = add nuw nsw i32 %.0644, 1               ; 3 uses
  %i.iy = uitofp nneg i32 %i.ix to float
  %i.iz = fmul nnan float %i.iy, 6.250000e-02     ; 2 uses
  %i.ja = fsub nnan float 1.000000e+00, %i.iz
  %i.jb = fmul float %i.ja, %i.is
  %i.jc = fmul float %i.iz, %i.iu
  %i.jd = fadd float %i.jb, %i.jc                 ; 2 uses
  %i.je = tail call <2 x float> @b3ComputeCosSin(float noundef %i.iw) #7
  %i.jf = tail call <2 x float> @b3ComputeCosSin(float noundef %i.iw) #7
  %64 = shufflevector <2 x float> %i.je, <2 x float> %i.jf, <2 x i32> <i32 0, i32 3>
  %i.jg = fmul <2 x float> %i.bh, %64             ; 10 uses
  %i.jh = tail call <2 x float> @b3ComputeCosSin(float noundef %i.jd) #7
  %i.ji = tail call <2 x float> @b3ComputeCosSin(float noundef %i.jd) #7
  %65 = shufflevector <2 x float> %i.jh, <2 x float> %i.ji, <2 x i32> <i32 0, i32 3>
  %i.jj = fmul <2 x float> %i.bh, %65             ; 10 uses
  switch i32 %.0644, label %bb.ae [
    i32 0, label %bb.w
    i32 15, label %bb.aa
  ]

bb.w:                                             ; preds = %.split.split
  %i.jk = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.jl = getelementptr i8, ptr %i.jk, i64 -8
  %i.jm = load i32, ptr %i.jl, align 4, !nosanitize !10
  %i.jn = icmp eq i32 %i.jm, -1056584962, !nosanitize !10
  br i1 %i.jn, label %bb.x, label %bb.z, !nosanitize !10

bb.x:                                             ; preds = %bb.w
  %i.jo = getelementptr i8, ptr %i.jk, i64 -4
  %i.jp = load i32, ptr %i.jo, align 8, !nosanitize !10
  %i.jq = icmp eq i32 %i.jp, -341714709, !nosanitize !10
  br i1 %i.jq, label %bb.z, label %bb.y, !prof !11, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  %i.jr = ptrtoint ptr %i.jk to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @108, i64 %i.jr) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.z:                                             ; preds = %bb.x, %bb.w
  %foldExtExtBinop750 = fmul <2 x float> %foldExtExtBinop691, %i.jg
  %shift752 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop753 = fmul <2 x float> %foldExtExtBinop691, %shift752
  %i.js = fmul <2 x float> %47, %i.jg             ; 2 uses
  %66 = fmul <2 x float> %20, %i.jg               ; 2 uses
  %67 = shufflevector <2 x float> %i.js, <2 x float> %i.at, <2 x i32> <i32 1, i32 2>
  %68 = fsub <2 x float> %67, %66
  %69 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %70 = insertelement <2 x float> %69, float %34, i64 0
  %71 = fsub <2 x float> %i.js, %70
  %72 = shufflevector <2 x float> %i.au, <2 x float> %foldExtExtBinop750, <2 x i32> <i32 1, i32 2>
  %73 = fadd <2 x float> %72, %68                 ; 2 uses
  %74 = shufflevector <2 x float> %foldExtExtBinop753, <2 x float> %i.au, <2 x i32> <i32 0, i32 3>
  %i.jt = fadd <2 x float> %74, %71               ; 2 uses
  %75 = fmul <2 x float> %20, %73
  %i.ju = fmul <2 x float> %47, %i.jt
  %76 = fsub <2 x float> %75, %i.ju
  %77 = extractelement <2 x float> %i.jt, i64 0
  %78 = fmul float %30, %77
  %shift755 = shufflevector <2 x float> %73, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop756 = fmul <2 x float> %20, %shift755
  %i.jv = extractelement <2 x float> %foldExtExtBinop756, i64 0
  %i.jw = fsub float %78, %i.jv
  %i.jx = fmul <2 x float> %76, splat (float 2.000000e+00)
  %i.jy = fadd <2 x float> %i.jg, %i.jx
  %i.jz = fmul float %i.jw, 2.000000e+00
  %i.ka = fadd float %i.jz, 0.000000e+00
  %i.kb = fadd <2 x float> %i.ac, %i.jy
  %i.kc = fadd float %i.ad, %i.ka
  %i.kd = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.jk(<2 x float> %i.ac, float %i.ad, <2 x float> %i.kb, float %i.kc, i32 noundef 65535, ptr noundef %i.kd) #7
  br label %bb.ae

bb.aa:                                            ; preds = %.split.split
  %i.ke = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.kf = getelementptr i8, ptr %i.ke, i64 -8
  %i.kg = load i32, ptr %i.kf, align 4, !nosanitize !10
  %i.kh = icmp eq i32 %i.kg, -1056584962, !nosanitize !10
  br i1 %i.kh, label %bb.ab, label %bb.ad, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.ki = getelementptr i8, ptr %i.ke, i64 -4
  %i.kj = load i32, ptr %i.ki, align 8, !nosanitize !10
  %i.kk = icmp eq i32 %i.kj, -341714709, !nosanitize !10
  br i1 %i.kk, label %bb.ad, label %bb.ac, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.kl = ptrtoint ptr %i.ke to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @109, i64 %i.kl) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %foldExtExtBinop758 = fmul <2 x float> %foldExtExtBinop691, %i.jj
  %shift760 = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop761 = fmul <2 x float> %foldExtExtBinop691, %shift760
  %i.km = fmul <2 x float> %47, %i.jj             ; 2 uses
  %79 = fmul <2 x float> %20, %i.jj               ; 2 uses
  %80 = shufflevector <2 x float> %i.km, <2 x float> %i.at, <2 x i32> <i32 1, i32 2>
  %81 = fsub <2 x float> %80, %79
  %82 = shufflevector <2 x float> %79, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %83 = insertelement <2 x float> %82, float %34, i64 0
  %84 = fsub <2 x float> %i.km, %83
  %85 = shufflevector <2 x float> %i.au, <2 x float> %foldExtExtBinop758, <2 x i32> <i32 1, i32 2>
  %86 = fadd <2 x float> %85, %81                 ; 2 uses
  %87 = shufflevector <2 x float> %foldExtExtBinop761, <2 x float> %i.au, <2 x i32> <i32 0, i32 3>
  %i.kn = fadd <2 x float> %87, %84               ; 2 uses
  %88 = fmul <2 x float> %20, %86
  %i.ko = fmul <2 x float> %47, %i.kn
  %89 = fsub <2 x float> %88, %i.ko
  %90 = extractelement <2 x float> %i.kn, i64 0
  %91 = fmul float %30, %90
  %shift763 = shufflevector <2 x float> %86, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop764.a = fmul <2 x float> %20, %shift763
  %i.kp = extractelement <2 x float> %foldExtExtBinop764.a, i64 0
  %i.kq = fsub float %91, %i.kp
  %i.kr = fmul <2 x float> %89, splat (float 2.000000e+00)
  %i.ks = fadd <2 x float> %i.jj, %i.kr
  %i.kt = fmul float %i.kq, 2.000000e+00
  %i.ku = fadd float %i.kt, 0.000000e+00
  %i.kv = fadd <2 x float> %i.ac, %i.ks
  %i.kw = fadd float %i.ad, %i.ku
  %i.kx = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.ke(<2 x float> %i.kv, float %i.kw, <2 x float> %i.ac, float %i.ad, i32 noundef 65535, ptr noundef %i.kx) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %.split.split, %bb.ad
  %i.ky = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.kz = getelementptr i8, ptr %i.ky, i64 -8
  %i.la = load i32, ptr %i.kz, align 4, !nosanitize !10
  %i.lb = icmp eq i32 %i.la, -1056584962, !nosanitize !10
  br i1 %i.lb, label %bb.af, label %bb.ah, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.lc = getelementptr i8, ptr %i.ky, i64 -4
  %i.ld = load i32, ptr %i.lc, align 8, !nosanitize !10
  %i.le = icmp eq i32 %i.ld, -341714709, !nosanitize !10
  br i1 %i.le, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  %i.lf = ptrtoint ptr %i.ky to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @110, i64 %i.lf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %foldExtExtBinop766 = fmul <2 x float> %foldExtExtBinop691, %i.jg
  %shift768 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop769 = fmul <2 x float> %foldExtExtBinop691, %shift768
  %i.lg = fmul <2 x float> %47, %i.jg             ; 2 uses
  %i.lh = fmul <2 x float> %20, %i.jg             ; 2 uses
  %92 = shufflevector <2 x float> %i.lg, <2 x float> %i.at, <2 x i32> <i32 1, i32 2>
  %i.li = fsub <2 x float> %92, %i.lh
  %93 = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lj = insertelement <2 x float> %93, float %34, i64 0
  %i.lk = fsub <2 x float> %i.lg, %i.lj
  %94 = shufflevector <2 x float> %i.au, <2 x float> %foldExtExtBinop766, <2 x i32> <i32 1, i32 2>
  %i.ll = fadd <2 x float> %94, %i.li             ; 2 uses
  %95 = shufflevector <2 x float> %foldExtExtBinop769, <2 x float> %i.au, <2 x i32> <i32 0, i32 3>
  %96 = fadd <2 x float> %95, %i.lk               ; 2 uses
  %97 = fmul <2 x float> %20, %i.ll
  %98 = fmul <2 x float> %47, %96
  %99 = fsub <2 x float> %97, %98
  %100 = fmul <2 x float> %99, splat (float 2.000000e+00)
  %101 = fadd <2 x float> %i.jg, %100
  %102 = fadd <2 x float> %i.ac, %101
  %foldExtExtBinop771 = fmul <2 x float> %foldExtExtBinop691, %i.jj
  %shift773 = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop774 = fmul <2 x float> %foldExtExtBinop691, %shift773
  %103 = fmul <2 x float> %47, %i.jj              ; 2 uses
  %104 = fmul <2 x float> %20, %i.jj              ; 2 uses
  %105 = shufflevector <2 x float> %103, <2 x float> %i.at, <2 x i32> <i32 1, i32 2>
  %106 = fsub <2 x float> %105, %104
  %107 = shufflevector <2 x float> %104, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %108 = insertelement <2 x float> %107, float %34, i64 0
  %109 = fsub <2 x float> %103, %108
  %110 = shufflevector <2 x float> %i.au, <2 x float> %foldExtExtBinop771, <2 x i32> <i32 1, i32 2>
  %111 = fadd <2 x float> %110, %106              ; 2 uses
  %112 = shufflevector <2 x float> %foldExtExtBinop774, <2 x float> %i.au, <2 x i32> <i32 0, i32 3>
  %i.lm = fadd <2 x float> %112, %109             ; 2 uses
  %113 = fmul <2 x float> %20, %111
  %114 = fmul <2 x float> %47, %i.lm
  %i.ln = fsub <2 x float> %113, %114
  %115 = shufflevector <2 x float> %96, <2 x float> %i.lm, <2 x i32> <i32 0, i32 2>
  %i.lo = fmul <2 x float> %62, %115
  %116 = shufflevector <2 x float> %i.ll, <2 x float> %111, <2 x i32> <i32 1, i32 3>
  %117 = fmul <2 x float> %54, %116
  %118 = fsub <2 x float> %i.lo, %117
  %119 = fmul <2 x float> %i.ln, splat (float 2.000000e+00)
  %120 = fadd <2 x float> %i.jj, %119
  %i.lp = fmul <2 x float> %118, splat (float 2.000000e+00) ; 2 uses
  %121 = extractelement <2 x float> %i.lp, i64 0
  %122 = fadd float %121, 0.000000e+00
  %123 = fadd float %i.ad, %122
  %124 = extractelement <2 x float> %i.lp, i64 1
  %125 = fadd float %124, 0.000000e+00
  %i.lq = fadd <2 x float> %i.ac, %120
  %i.lr = fadd float %i.ad, %125
  %i.ls = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.ky(<2 x float> %102, float %123, <2 x float> %i.lq, float %i.lr, i32 noundef 65535, ptr noundef %i.ls) #7
  %exitcond.not = icmp eq i32 %i.ix, 16
  br i1 %exitcond.not, label %bb.t, label %.split.split, !llvm.loop !164

bb.ai:                                            ; preds = %b3GetTwistAngle.exit
  %i.lt = getelementptr i8, ptr %i.il, i64 -4
  %i.lu = load i32, ptr %i.lt, align 8, !nosanitize !10
  %i.lv = icmp eq i32 %i.lu, -341714709, !nosanitize !10
  br i1 %i.lv, label %bb.ak, label %bb.aj, !prof !11, !nosanitize !10

bb.aj:                                            ; preds = %bb.ai
  %i.lw = ptrtoint ptr %i.il to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @111, i64 %i.lw) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ak:                                            ; preds = %bb.ai, %b3GetTwistAngle.exit
  %i.lx = fmul <2 x float> %20, %i.ik
  %126 = extractelement <2 x float> %i.ik, i64 0
  %127 = fmul float %29, %126
  %128 = extractelement <2 x float> %i.ik, i64 1  ; 2 uses
  %129 = fmul float %30, %128
  %foldExtExtBinop776 = fmul <2 x float> %foldExtExtBinop691, %i.ik
  %130 = fmul float %5, %128
  %131 = fsub float %127, %34
  %132 = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %133 = insertelement <2 x float> %132, float %129, i64 0
  %134 = fsub <2 x float> %133, %i.lx
  %135 = fadd float %130, %131                    ; 2 uses
  %136 = shufflevector <2 x float> %i.au, <2 x float> %foldExtExtBinop776, <2 x i32> <i32 1, i32 2>
  %137 = fadd <2 x float> %136, %134              ; 3 uses
  %i.ly = fmul <2 x float> %20, %137
  %i.lz = shufflevector <2 x float> %137, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %138 = insertelement <2 x float> %i.lz, float %135, i64 0
  %i.ma = fmul <2 x float> %i.l, %138
  %i.mb = fsub <2 x float> %i.ly, %i.ma
  %139 = fmul float %30, %135
  %shift778 = shufflevector <2 x float> %137, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop779 = fmul <2 x float> %20, %shift778
  %140 = extractelement <2 x float> %foldExtExtBinop779, i64 0
  %i.mc = fsub float %139, %140
  %i.md = fmul <2 x float> %i.mb, splat (float 2.000000e+00)
  %i.me = fadd <2 x float> %i.ik, %i.md
  %i.mf = fmul float %i.mc, 2.000000e+00
  %i.mg = fadd float %i.mf, 0.000000e+00
  %i.mh = fadd <2 x float> %i.ac, %i.me
  %i.mi = fadd float %i.ad, %i.mg
  %i.mj = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.il(<2 x float> %i.ac, float %i.ad, <2 x float> %i.mh, float %i.mi, i32 noundef 16776960, ptr noundef %i.mj) #7
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.s
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 442
  %i.ml = load i8, ptr %i.mk, align 2, !tbaa !115 ; 3 uses
  %i.mm = icmp ult i8 %i.ml, 2
  br i1 %i.mm, label %bb.an, label %bb.am, !prof !11, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  %i.mn = zext i8 %i.ml to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @112, i64 %i.mn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.an:                                            ; preds = %bb.al
  %i.mo = trunc nuw i8 %i.ml to i1
  br i1 %i.mo, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !125
  %i.mr = tail call <2 x float> @b3ComputeCosSin(float noundef %i.mq) #7
  %.sroa.0.4.vec.extract.i492 = extractelement <2 x float> %i.mr, i64 1
  %i.ms = fmul float %i.ae, %.sroa.0.4.vec.extract.i492 ; 3 uses
  %i.mt = load float, ptr %i.mp, align 4, !tbaa !125
  %i.mu = tail call <2 x float> @b3ComputeCosSin(float noundef %i.mt) #7
  %.sroa.0.0.vec.extract.i493 = extractelement <2 x float> %i.mu, i64 0
  %i.mv = fmul float %i.ae, %.sroa.0.0.vec.extract.i493 ; 5 uses
  %i.mw = fmul float %28, %i.mv                   ; 2 uses
  %i.mx = fmul float %30, %i.mv                   ; 2 uses
  %i.my = fmul float %5, %i.mv                    ; 3 uses
  %141 = extractelement <2 x float> %i.ac, i64 0
  %142 = extractelement <2 x float> %i.ac, i64 1
  %i.mz = insertelement <2 x float> poison, float %i.ms, i64 0
  %143 = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = insertelement <2 x float> poison, float %i.my, i64 0
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.av
  %.0308645 = phi i32 [ 0, %bb.ao ], [ %i.nb, %bb.av ] ; 2 uses
  %i.nb = add nuw nsw i32 %.0308645, 1            ; 3 uses
  %i.nc = uitofp nneg i32 %.0308645 to float
  %i.nd = fmul nnan float %i.nc, 2.000000e+00
  %i.ne = fmul nnan float %i.nd, 6.250000e-02
  %i.nf = fmul nnan float %i.ne, f0x40490FDB      ; 2 uses
  %i.ng = uitofp nneg i32 %i.nb to float
  %i.nh = fmul nnan float %i.ng, 2.000000e+00
  %i.ni = fmul nnan float %i.nh, 6.250000e-02
  %i.nj = fmul nnan float %i.ni, f0x40490FDB      ; 2 uses
  %i.nk = tail call <2 x float> @b3ComputeCosSin(float noundef %i.nf) #7
  %i.nl = tail call <2 x float> @b3ComputeCosSin(float noundef %i.nf) #7
  %i.nm = shufflevector <2 x float> %i.nk, <2 x float> %i.nl, <2 x i32> <i32 0, i32 3>
  %i.nn = fmul <2 x float> %143, %i.nm            ; 5 uses
  %i.no = tail call <2 x float> @b3ComputeCosSin(float noundef %i.nj) #7
  %.sroa.0.0.vec.extract.i496 = extractelement <2 x float> %i.no, i64 0
  %144 = fmul float %i.ms, %.sroa.0.0.vec.extract.i496 ; 4 uses
  %i.np = tail call <2 x float> @b3ComputeCosSin(float noundef %i.nj) #7
  %.sroa.0.4.vec.extract.i497 = extractelement <2 x float> %i.np, i64 1
  %145 = fmul float %i.ms, %.sroa.0.4.vec.extract.i497 ; 4 uses
  %i.nq = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 -8
  %i.ns = load i32, ptr %i.nr, align 4, !nosanitize !10
  %i.nt = icmp eq i32 %i.ns, -1056584962, !nosanitize !10
  br i1 %i.nt, label %bb.aq, label %bb.as, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  %i.nu = getelementptr i8, ptr %i.nq, i64 -4
  %i.nv = load i32, ptr %i.nu, align 8, !nosanitize !10
  %i.nw = icmp eq i32 %i.nv, -341714709, !nosanitize !10
  br i1 %i.nw, label %bb.as, label %bb.ar, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  %i.nx = ptrtoint ptr %i.nq to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @113, i64 %i.nx) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %foldExtExtBinop781 = fmul <2 x float> %foldExtExtBinop691, %i.nn
  %shift783 = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop784 = fmul <2 x float> %foldExtExtBinop691, %shift783
  %146 = fmul <2 x float> %47, %i.nn              ; 2 uses
  %i.ny = fmul <2 x float> %20, %i.nn             ; 2 uses
  %i.nz = shufflevector <2 x float> %146, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oa = insertelement <2 x float> %i.nz, float %i.mw, i64 1
  %i.ob = fsub <2 x float> %i.oa, %i.ny
  %i.oc = shufflevector <2 x float> %i.ny, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.od = insertelement <2 x float> %i.oc, float %i.mx, i64 0
  %i.oe = fsub <2 x float> %146, %i.od
  %i.of = shufflevector <2 x float> %i.na, <2 x float> %foldExtExtBinop781, <2 x i32> <i32 0, i32 2>
  %i.og = fadd <2 x float> %i.of, %i.ob           ; 2 uses
  %i.oh = insertelement <2 x float> %foldExtExtBinop784, float %i.my, i64 1
  %i.oi = fadd <2 x float> %i.oh, %i.oe           ; 2 uses
  %i.oj = fmul <2 x float> %20, %i.og
  %i.ok = fmul <2 x float> %47, %i.oi
  %i.ol = fsub <2 x float> %i.oj, %i.ok
  %147 = extractelement <2 x float> %i.oi, i64 0
  %148 = fmul float %30, %147
  %shift786 = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop787 = fmul <2 x float> %20, %shift786
  %i.om = extractelement <2 x float> %foldExtExtBinop787, i64 0
  %149 = fsub float %148, %i.om
  %i.on = fmul <2 x float> %i.ol, splat (float 2.000000e+00)
  %i.oo = fadd <2 x float> %i.nn, %i.on
  %i.op = fmul float %149, 2.000000e+00
  %i.oq = fadd float %i.mv, %i.op
  %i.or = fadd <2 x float> %i.ac, %i.oo           ; 2 uses
  %i.os = fadd float %i.ad, %i.oq                 ; 2 uses
  %i.ot = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.nq(<2 x float> %i.ac, float %i.ad, <2 x float> %i.or, float %i.os, i32 noundef 65535, ptr noundef %i.ot) #7
  %i.ou = load ptr, ptr %i.ak, align 8, !tbaa !169 ; 4 uses
  %i.ov = getelementptr i8, ptr %i.ou, i64 -8
  %i.ow = load i32, ptr %i.ov, align 4, !nosanitize !10
  %i.ox = icmp eq i32 %i.ow, -1056584962, !nosanitize !10
  br i1 %i.ox, label %bb.at, label %bb.av, !nosanitize !10

bb.at:                                            ; preds = %bb.as
  %i.oy = getelementptr i8, ptr %i.ou, i64 -4
  %i.oz = load i32, ptr %i.oy, align 8, !nosanitize !10
  %i.pa = icmp eq i32 %i.oz, -341714709, !nosanitize !10
  br i1 %i.pa, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  %i.pb = ptrtoint ptr %i.ou to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @114, i64 %i.pb) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at, %bb.as
  %150 = fmul float %29, %145
  %151 = fsub float %i.mw, %150
  %i.pc = fmul float %29, %144
  %152 = fsub float %i.pc, %i.mx
  %153 = fmul float %30, %145
  %154 = fmul float %28, %144
  %155 = fsub float %153, %154
  %156 = fmul float %5, %144
  %157 = fadd float %156, %151                    ; 2 uses
  %158 = fmul float %5, %145
  %i.pd = fadd float %158, %152                   ; 2 uses
  %159 = fadd float %i.my, %155                   ; 2 uses
  %160 = fmul float %28, %159
  %161 = fmul float %29, %i.pd
  %162 = fsub float %160, %161
  %163 = fmul float %29, %157
  %164 = fmul float %30, %159
  %165 = fsub float %163, %164
  %166 = fmul float %30, %i.pd
  %i.pe = fmul float %28, %157
  %167 = fsub float %166, %i.pe
  %168 = fmul float %162, 2.000000e+00
  %169 = fadd float %144, %168
  %170 = fmul float %165, 2.000000e+00
  %171 = fadd float %145, %170
  %172 = fmul float %167, 2.000000e+00
  %173 = fadd float %i.mv, %172
  %174 = fadd float %141, %169
  %.sroa.09.0.vec.insert.i518 = insertelement <2 x float> poison, float %174, i64 0
  %175 = fadd float %142, %171
  %.sroa.09.4.vec.insert.i519 = insertelement <2 x float> %.sroa.09.0.vec.insert.i518, float %175, i64 1
  %i.pf = fadd float %i.ad, %173
  %i.pg = load ptr, ptr %i.av, align 8, !tbaa !170
  tail call void %i.ou(<2 x float> %i.or, float %i.os, <2 x float> %.sroa.09.4.vec.insert.i519, float %i.pf, i32 noundef 65535, ptr noundef %i.pg) #7
  %exitcond654.not = icmp eq i32 %i.nb, 16
  br i1 %exitcond654.not, label %.loopexit, label %bb.ap, !llvm.loop !165

.loopexit:                                        ; preds = %bb.av, %bb.an
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #3

declare float @b3Atan2(float noundef, float noundef) local_unnamed_addr #2

declare <2 x float> @b3ComputeCosSin(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{i32 -1056584962, i32 -2039853244}
!10 = !{}
!11 = !{!"branch_weights", i32 1048575, i32 1}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"b3Stack", !13, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !5, i64 24, !6, i64 792}
!15 = !{!"p1 int", !12, i64 0}
!16 = !{!"b3DynamicArray_int", !15, i64 0, !6, i64 8, !6, i64 12}
!17 = !{!"p1 _ZTS12b3MoveResult", !12, i64 0}
!18 = !{!"p1 _ZTS10b3MovePair", !12, i64 0}
!19 = !{!"b3AtomicInt", !6, i64 0}
!20 = !{!"p1 _ZTS9b3SetItem", !12, i64 0}
!21 = !{!"b3HashSet", !20, i64 0, !6, i64 8, !6, i64 12}
!22 = !{!"b3BroadPhase", !5, i64 0, !5, i64 240, !16, i64 288, !17, i64 304, !18, i64 312, !6, i64 320, !19, i64 324, !21, i64 328}
!23 = !{!"b3ConstraintGraph", !5, i64 0}
!24 = !{!"p1 _ZTS16b3BlockAllocator", !12, i64 0}
!25 = !{!"b3DynamicArray_b3BlockAllocator", !24, i64 0, !6, i64 8, !6, i64 12}
!26 = !{!"p1 _ZTS7b3Mutex", !12, i64 0}
!27 = !{!"b3IdPool", !16, i64 0, !6, i64 16}
!28 = !{!"p1 _ZTS6b3Body", !12, i64 0}
!29 = !{!"b3DynamicArray_b3Body", !28, i64 0, !6, i64 8, !6, i64 12}
!30 = !{!"p1 _ZTS11b3SolverSet", !12, i64 0}
!31 = !{!"b3DynamicArray_b3SolverSet", !30, i64 0, !6, i64 8, !6, i64 12}
!32 = !{!"p1 _ZTS7b3Joint", !12, i64 0}
!33 = !{!"b3DynamicArray_b3Joint", !32, i64 0, !6, i64 8, !6, i64 12}
!34 = !{!"p1 _ZTS9b3Contact", !12, i64 0}
!35 = !{!"b3DynamicArray_b3Contact", !34, i64 0, !6, i64 8, !6, i64 12}
!36 = !{!"p1 _ZTS8b3Island", !12, i64 0}
!37 = !{!"b3DynamicArray_b3Island", !36, i64 0, !6, i64 8, !6, i64 12}
!38 = !{!"p1 _ZTS7b3Shape", !12, i64 0}
!39 = !{!"b3DynamicArray_b3Shape", !38, i64 0, !6, i64 8, !6, i64 12}
!40 = !{!"p1 _ZTS11b3NameEntry", !12, i64 0}
!41 = !{!"b3DynamicArray_b3NameEntry", !40, i64 0, !6, i64 8, !6, i64 12}
!42 = !{!"b3NameCache", !41, i64 0, !12, i64 16}
!43 = !{!"p1 _ZTS8b3Sensor", !12, i64 0}
!44 = !{!"b3DynamicArray_b3Sensor", !43, i64 0, !6, i64 8, !6, i64 12}
!45 = !{!"p1 _ZTS13b3TaskContext", !12, i64 0}
!46 = !{!"b3DynamicArray_b3TaskContext", !45, i64 0, !6, i64 8, !6, i64 12}
!47 = !{!"p1 _ZTS19b3SensorTaskContext", !12, i64 0}
!48 = !{!"b3DynamicArray_b3SensorTaskContext", !47, i64 0, !6, i64 8, !6, i64 12}
!49 = !{!"p1 _ZTS15b3BodyMoveEvent", !12, i64 0}
!50 = !{!"b3DynamicArray_b3BodyMoveEvent", !49, i64 0, !6, i64 8, !6, i64 12}
!51 = !{!"p1 _ZTS23b3SensorBeginTouchEvent", !12, i64 0}
!52 = !{!"b3DynamicArray_b3SensorBeginTouchEvent", !51, i64 0, !6, i64 8, !6, i64 12}
!53 = !{!"p1 _ZTS24b3ContactBeginTouchEvent", !12, i64 0}
!54 = !{!"b3DynamicArray_b3ContactBeginTouchEvent", !53, i64 0, !6, i64 8, !6, i64 12}
!55 = !{!"p1 _ZTS17b3ContactHitEvent", !12, i64 0}
!56 = !{!"b3DynamicArray_b3ContactHitEvent", !55, i64 0, !6, i64 8, !6, i64 12}
!57 = !{!"p1 _ZTS12b3JointEvent", !12, i64 0}
!58 = !{!"b3DynamicArray_b3JointEvent", !57, i64 0, !6, i64 8, !6, i64 12}
!59 = !{!"p1 long", !12, i64 0}
!60 = !{!"b3BitSet", !59, i64 0, !6, i64 8, !6, i64 12}
!61 = !{!"long", !5, i64 0}
!62 = !{!"float", !5, i64 0}
!63 = !{!"b3Vec3", !62, i64 0, !62, i64 4, !62, i64 8}
!64 = !{!"short", !5, i64 0}
!65 = !{!"b3Profile", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !62, i64 68, !62, i64 72, !62, i64 76, !62, i64 80, !62, i64 84, !62, i64 88}
!66 = !{!"b3Capacity", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!67 = !{!"p1 _ZTS11b3Scheduler", !12, i64 0}
!68 = !{!"p1 _ZTS11b3Recording", !12, i64 0}
!69 = !{!"_Bool", !5, i64 0}
!70 = !{!"b3World", !14, i64 0, !22, i64 800, !23, i64 1144, !25, i64 3832, !26, i64 3848, !27, i64 3856, !29, i64 3880, !27, i64 3896, !31, i64 3920, !27, i64 3936, !33, i64 3960, !27, i64 3976, !35, i64 4000, !27, i64 4016, !37, i64 4040, !27, i64 4056, !39, i64 4080, !12, i64 4096, !42, i64 4104, !44, i64 4128, !46, i64 4144, !48, i64 4160, !50, i64 4176, !52, i64 4192, !54, i64 4208, !5, i64 4224, !5, i64 4256, !6, i64 4288, !56, i64 4296, !58, i64 4312, !60, i64 4328, !60, i64 4344, !60, i64 4360, !60, i64 4376, !12, i64 4392, !12, i64 4400, !12, i64 4408, !61, i64 4416, !6, i64 4424, !63, i64 4428, !62, i64 4440, !62, i64 4444, !62, i64 4448, !62, i64 4452, !62, i64 4456, !62, i64 4460, !62, i64 4464, !12, i64 4472, !12, i64 4480, !64, i64 4488, !65, i64 4492, !6, i64 4584, !6, i64 4588, !5, i64 4592, !66, i64 4624, !12, i64 4648, !12, i64 4656, !12, i64 4664, !12, i64 4672, !6, i64 4680, !12, i64 4688, !12, i64 4696, !12, i64 4704, !12, i64 4712, !67, i64 4720, !12, i64 4728, !68, i64 4736, !62, i64 4744, !62, i64 4748, !6, i64 4752, !6, i64 4756, !64, i64 4760, !69, i64 4762, !69, i64 4763, !69, i64 4764, !69, i64 4765, !69, i64 4766, !69, i64 4767}
!71 = !{!70, !68, i64 4736}
!72 = !{!"b3JointId", !6, i64 0, !64, i64 4, !64, i64 6}
!73 = !{!"", !72, i64 0, !69, i64 8}
!74 = !{!73, !69, i64 8}
!75 = !{!5, !5, i64 0}
!76 = !{i32 -1056584962, i32 -1869024694}
!77 = !{i32 -1056584962, i32 815956314}
!78 = !{i32 -1056584962, i32 1546161371}
!79 = !{!"", !72, i64 0, !62, i64 8}
!80 = !{!79, !62, i64 8}
!81 = !{!"b3Quat", !63, i64 0, !62, i64 12}
!82 = !{!"b3Transform", !63, i64 0, !81, i64 12}
!83 = !{!"b3Matrix3", !63, i64 0, !63, i64 12, !63, i64 24}
!84 = !{!"b3Softness", !62, i64 0, !62, i64 4, !62, i64 8}
!85 = !{!"b3JointSim", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !82, i64 16, !82, i64 44, !62, i64 72, !62, i64 76, !83, i64 80, !83, i64 116, !62, i64 152, !62, i64 156, !84, i64 160, !62, i64 172, !62, i64 176, !69, i64 180, !5, i64 184}
!86 = !{!85, !6, i64 4}
!87 = !{!85, !6, i64 8}
!88 = !{!62, !62, i64 0}
!89 = !{i32 -1056584962, i32 1667022125}
!90 = !{!70, !62, i64 4744}
!91 = !{i32 -1056584962, i32 1524926171}
!92 = !{!"b3SphericalJoint", !63, i64 0, !63, i64 12, !63, i64 24, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !63, i64 60, !62, i64 72, !62, i64 76, !62, i64 80, !81, i64 84, !6, i64 100, !6, i64 104, !82, i64 108, !82, i64 136, !63, i64 164, !63, i64 176, !63, i64 188, !83, i64 200, !62, i64 236, !62, i64 240, !84, i64 244, !69, i64 256, !69, i64 257, !69, i64 258, !69, i64 259}
!93 = !{!92, !62, i64 44}
!94 = !{!92, !62, i64 40}
!95 = !{!92, !62, i64 36}
!96 = !{i32 -1056584962, i32 -2108614514}
!97 = !{!"p1 _ZTS7b3World", !12, i64 0}
!98 = !{!"p1 _ZTS17b3ConstraintGraph", !12, i64 0}
!99 = !{!"p1 _ZTS11b3BodyState", !12, i64 0}
!100 = !{!"p1 _ZTS9b3BodySim", !12, i64 0}
!101 = !{!"p1 _ZTS23b3ContactConstraintWide", !12, i64 0}
!102 = !{!"p1 _ZTS17b3WidePrepareSpan", !12, i64 0}
!103 = !{!"p1 _ZTS20b3ManifoldConstraint", !12, i64 0}
!104 = !{!"p1 _ZTS19b3ContactConstraint", !12, i64 0}
!105 = !{!"p1 _ZTS20b3ContactPrepareSpan", !12, i64 0}
!106 = !{!"p1 _ZTS18b3JointPrepareSpan", !12, i64 0}
!107 = !{!"p1 _ZTS13b3SolverStage", !12, i64 0}
!108 = !{!"b3AtomicU32", !6, i64 0}
!109 = !{!"b3StepContext", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !6, i64 16, !84, i64 20, !84, i64 32, !62, i64 44, !62, i64 48, !97, i64 56, !98, i64 64, !99, i64 72, !100, i64 80, !15, i64 88, !6, i64 96, !15, i64 104, !19, i64 112, !15, i64 120, !101, i64 128, !102, i64 136, !6, i64 144, !103, i64 152, !104, i64 160, !105, i64 168, !105, i64 176, !106, i64 184, !6, i64 192, !6, i64 196, !107, i64 200, !6, i64 208, !69, i64 212, !5, i64 213, !108, i64 280, !5, i64 284, !19, i64 348, !5, i64 352}
!110 = !{!85, !62, i64 72}
!111 = !{!85, !62, i64 76}
!112 = !{!85, !69, i64 180}
!113 = !{!92, !6, i64 100}
!114 = !{!92, !6, i64 104}
!115 = !{!92, !69, i64 258}
!116 = !{!92, !62, i64 236}
!117 = !{!92, !69, i64 259}
!118 = !{!92, !62, i64 240}
!119 = !{!109, !62, i64 8}
!120 = !{!109, !99, i64 72}
!121 = !{!"b3BodyState", !63, i64 0, !63, i64 12, !63, i64 24, !81, i64 36, !6, i64 52}
!122 = !{!121, !6, i64 52}
!123 = !{!92, !62, i64 72}
!124 = !{!92, !62, i64 76}
!125 = !{!92, !62, i64 80}
!126 = !{i32 -1056584962, i32 -985130423}
!127 = !{!"", !72, i64 0, !62, i64 8, !62, i64 12}
!128 = !{!127, !62, i64 8}
!129 = !{!127, !62, i64 12}
!130 = !{i32 -1056584962, i32 17263629}
!131 = !{i32 -1056584962, i32 -625784607}
!132 = !{i32 -1056584962, i32 -1634720429}
!133 = !{!109, !97, i64 56}
!134 = !{!70, !28, i64 3880}
!135 = !{!70, !30, i64 3920}
!136 = !{!"b3Body", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !83, i64 68, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !64, i64 124}
!137 = !{!136, !6, i64 8}
!138 = !{!136, !6, i64 12}
!139 = !{!"b3DynamicArray_b3BodySim", !100, i64 0, !6, i64 8, !6, i64 12}
!140 = !{!"b3DynamicArray_b3BodyState", !99, i64 0, !6, i64 8, !6, i64 12}
!141 = !{!"p1 _ZTS10b3JointSim", !12, i64 0}
!142 = !{!"b3DynamicArray_b3JointSim", !141, i64 0, !6, i64 8, !6, i64 12}
!143 = !{!"p1 _ZTS11b3IslandSim", !12, i64 0}
!144 = !{!"b3DynamicArray_b3IslandSim", !143, i64 0, !6, i64 8, !6, i64 12}
!145 = !{!"b3SolverSet", !139, i64 0, !140, i64 16, !142, i64 32, !16, i64 48, !144, i64 64, !6, i64 80}
!146 = !{!145, !100, i64 0}
!147 = !{!"b3BodySim", !82, i64 0, !63, i64 28, !81, i64 40, !63, i64 56, !63, i64 68, !63, i64 80, !63, i64 92, !62, i64 104, !83, i64 108, !83, i64 144, !62, i64 180, !63, i64 184, !62, i64 196, !62, i64 200, !62, i64 204, !6, i64 208, !6, i64 212}
!148 = !{!147, !62, i64 104}
!149 = !{i64 0, i64 4, !88, i64 4, i64 4, !88, i64 8, i64 4, !88, i64 12, i64 4, !88, i64 16, i64 4, !88, i64 20, i64 4, !88, i64 24, i64 4, !88, i64 28, i64 4, !88, i64 32, i64 4, !88}
!150 = !{!92, !62, i64 48}
!151 = !{!92, !62, i64 52}
!152 = !{!109, !69, i64 212}
!153 = !{i32 -1056584962, i32 -1373691390}
!154 = !{!92, !69, i64 256}
!155 = !{!92, !62, i64 244}
!156 = !{!92, !62, i64 248}
!157 = !{!92, !62, i64 252}
!158 = !{!92, !69, i64 257}
!159 = !{!92, !62, i64 56}
!160 = !{!109, !62, i64 12}
!161 = !{!85, !62, i64 160}
!162 = !{!85, !62, i64 164}
end_hunk_0
