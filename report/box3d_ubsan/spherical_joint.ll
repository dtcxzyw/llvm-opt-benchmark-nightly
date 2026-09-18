Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/spherical_joint?download=true
inline.NumInlined: 228
inline.NumDeleted: 35
begin_hunk_0_@b3SolveSphericalJoint:bb.a
  %i.aml = fmul <2 x float> %i.alx, %i.amc        ; 2 uses
  %shift1978 = shufflevector <2 x float> %i.aml, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1979 = fadd <2 x float> %i.aml, %shift1978
  %i.amm = extractelement <2 x float> %foldExtExtBinop1979, i64 0
  %i.amn = fmul float %i.alk, %i.als
  %i.amo = fadd float %i.amn, %i.amm
  %i.amp = fmul float %i.amo, %i.all
  %.sroa.050.4.vec.insert.i = insertelement <2 x float> %.sroa.050.0.vec.insert.i, float %i.amp, i64 1
  %i.amq = shufflevector <2 x float> %i.akh, <2 x float> %i.akl, <2 x i32> <i32 0, i32 2>
  %i.amr = fmul <2 x float> %i.amq, %i.akg
  %i.ams = shufflevector <2 x float> %i.akg, <2 x float> %i.akh, <2 x i32> <i32 1, i32 2>
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
  store <2 x float> %i.anl, ptr %i.s, align 4
  store float %i.anm, ptr %.sroa.287.0..sroa_idx, align 4, !tbaa !88
  %i.ann = extractelement <2 x float> %i.ank, i64 0
  %i.ano = extractelement <2 x float> %i.ank, i64 1 ; 4 uses
  %i.anp = insertelement <2 x float> poison, float %i.h, i64 0
  %i.anq = shufflevector <2 x float> %i.anp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anr = fmul <2 x float> %i.anq, %i.ank
  %i.ans = fadd <2 x float> %.sroa.0719.0.copyload, %i.anr
  %i.ant = fmul float %i.h, %i.and
  %i.anu = fadd float %.sroa.7722.0.copyload, %i.ant
  %i.anv = fmul float %i.acw, %i.and
  %i.anw = fmul float %i.acv, %i.ano
  %i.anx = fsub float %i.anv, %i.anw              ; 3 uses
  %foldExtExtBinop1988 = fmul <2 x float> %i.aci, %i.ank
  %i.any = extractelement <2 x float> %foldExtExtBinop1988, i64 0
  %i.anz = fmul float %i.adc, %i.and
  %i.aoa = fsub float %i.any, %i.anz              ; 3 uses
  %i.aob = fmul float %i.adc, %i.ano
  %i.aoc = fmul float %i.acw, %i.ann
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
  %foldExtExtBinop1986 = fmul <2 x float> %i.acr, %i.ank
  %i.apg = extractelement <2 x float> %foldExtExtBinop1986, i64 0
  %i.aph = fsub float %i.apf, %i.apg              ; 3 uses
  %i.api = fmul float %.sroa.511705.0.copyload, %i.aph
  %i.apj = fmul float %i.adn, %i.and
  %i.apk = fmul float %i.adm, %i.ano
  %i.apl = fsub float %i.apj, %i.apk              ; 3 uses
  %i.apm = fmul float %.sroa.151669.0.copyload, %i.apl
  %foldExtExtBinop1984 = fmul <2 x float> %i.abq, %i.ank
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
  %i.aqm = fmul float %i.i, %i.and
  %i.aqn = fsub float %.sroa.7744.0.copyload, %i.aqm
  %i.aqo = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aqp = shufflevector <2 x float> %i.aqo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aqq = fmul <2 x float> %i.aqp, %i.ank
  %i.aqr = fsub <2 x float> %.sroa.0741.0.copyload, %i.aqq
  store <2 x float> %i.aqr, ptr %i.ap, align 4
  store float %i.aqn, ptr %.sroa.7744.0..sroa_idx, align 4, !tbaa !88
  store <2 x float> %.sroa.05.4.vec.insert.i1477, ptr %i.bs, align 4
  store float %i.apt, ptr %.sroa.22738.0..sroa_idx, align 4, !tbaa !88
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %b3Solve3.exit
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !122
  %i.aqu = and i32 %i.aqt, 4096
  %.not890 = icmp eq i32 %i.aqu, 0
  br i1 %.not890, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store <2 x float> %i.ans, ptr %i.bm, align 4
  store float %i.anu, ptr %.sroa.7722.0..sroa_idx, align 4, !tbaa !88
  store <2 x float> %.sroa.05.4.vec.insert.i1507, ptr %i.by, align 4
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
  %.sroa.0621.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 4 uses
  %.sroa.4622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4622.0.copyload = load float, ptr %.sroa.4622.0..sroa_idx, align 4, !tbaa !88 ; 4 uses
  %.sroa.5623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5623.0.copyload = load <2 x float>, ptr %.sroa.5623.0..sroa_idx, align 4 ; 6 uses
  %.sroa.6624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6624.0.copyload = load <2 x float>, ptr %.sroa.6624.0..sroa_idx, align 4 ; 5 uses
  %.sroa.5612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5612.0.copyload = load float, ptr %.sroa.5612.0..sroa_idx, align 8
  %.sroa.6613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.6613.0.copyload = load <2 x float>, ptr %.sroa.6613.0..sroa_idx, align 4 ; 10 uses
  %.sroa.8615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8615.0.copyload = load <2 x float>, ptr %.sroa.8615.0..sroa_idx, align 4 ; 6 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6613.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.6624.0.copyload, %.sroa.8615.0.copyload
  %foldExtExtBinop680 = fmul <2 x float> %.sroa.5623.0.copyload, %.sroa.6613.0.copyload
  %foldExtExtBinop682 = fmul <2 x float> %.sroa.5623.0.copyload, %.sroa.6613.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop682, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop684 = fadd <2 x float> %foldExtExtBinop680, %shift
  %foldExtExtBinop686 = fmul <2 x float> %.sroa.6624.0.copyload, %.sroa.8615.0.copyload
  %foldExtExtBinop688 = fadd <2 x float> %foldExtExtBinop686, %foldExtExtBinop684
  %shift690 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop691 = fsub <2 x float> %shift690, %foldExtExtBinop688 ; 12 uses
  %i.g = extractelement <2 x float> %foldExtExtBinop691, i64 0 ; 10 uses
  %i.h = load <2 x float>, ptr %2, align 8
  %i.i = shufflevector <2 x float> %.sroa.8615.0.copyload, <2 x float> %.sroa.6613.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.j = fmul <2 x float> %.sroa.5623.0.copyload, %i.i
  %i.k = shufflevector <2 x float> %.sroa.5623.0.copyload, <2 x float> %.sroa.6624.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.l = fmul <2 x float> %i.k, %.sroa.6613.0.copyload
  %i.m = shufflevector <2 x float> %.sroa.6624.0.copyload, <2 x float> %.sroa.5623.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.n = fmul <2 x float> %i.m, %.sroa.6613.0.copyload
  %i.o = shufflevector <2 x float> %.sroa.6613.0.copyload, <2 x float> %.sroa.8615.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.p = fmul <2 x float> %.sroa.5623.0.copyload, %i.o
  %i.q = fsub <2 x float> %i.j, %i.n
  %i.r = fsub <2 x float> %i.l, %i.p
  %i.s = shufflevector <2 x float> %.sroa.8615.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.t = fmul <2 x float> %i.k, %i.s
  %i.u = fmul <2 x float> %i.m, %i.s
  %i.v = fadd <2 x float> %i.t, %i.q
  %i.w = fadd <2 x float> %i.r, %i.u
  %i.x = shufflevector <2 x float> %.sroa.6624.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.y = fmul <2 x float> %i.x, %i.i
  %i.z = fmul <2 x float> %i.x, %i.o
  %i.aa = fadd <2 x float> %i.z, %i.v             ; 25 uses
  %i.ab = fadd <2 x float> %i.y, %i.w             ; 5 uses
  %foldExtExtBinop693 = fmul <2 x float> %.sroa.0621.0.copyload, %.sroa.8615.0.copyload
  %i.ac = extractelement <2 x float> %foldExtExtBinop693, i64 0
  %i.ad = fmul float %.sroa.4622.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.ae = shufflevector <2 x float> %.sroa.0621.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.af = insertelement <2 x float> %i.ae, float %.sroa.4622.0.copyload, i64 1 ; 2 uses
  %i.ag = fmul <2 x float> %i.af, %.sroa.6613.0.copyload
  %i.ah = fmul <2 x float> %.sroa.0621.0.copyload, %i.o
  %i.ai = fsub <2 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = fsub float %i.ac, %i.ad
  %i.ak = insertelement <2 x float> %i.ae, float %.sroa.4622.0.copyload, i64 0
  %i.al = fmul <2 x float> %i.ak, %i.s
  %i.am = fmul <2 x float> %i.af, %i.s
  %i.an = fadd <2 x float> %i.al, %i.ai           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ap = insertelement <2 x float> %i.ao, float %i.aj, i64 0
  %i.aq = fadd <2 x float> %i.am, %i.ap           ; 2 uses
  %i.ar = fmul <2 x float> %i.o, %i.an
  %i.as = fmul <2 x float> %i.i, %i.aq
  %i.at = fsub <2 x float> %i.ar, %i.as
  %foldExtExtBinop695 = fmul <2 x float> %.sroa.6613.0.copyload, %i.aq
  %foldExtExtBinop697 = fmul <2 x float> %.sroa.6613.0.copyload, %i.an
  %shift699 = shufflevector <2 x float> %foldExtExtBinop697, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop700 = fsub <2 x float> %foldExtExtBinop695, %shift699
  %i.au = extractelement <2 x float> %foldExtExtBinop700, i64 0
  %i.av = fmul <2 x float> %i.at, splat (float 2.000000e+00)
  %i.aw = fadd <2 x float> %.sroa.0621.0.copyload, %i.av
  %i.ax = fmul float %i.au, 2.000000e+00
  %i.ay = fadd float %.sroa.4622.0.copyload, %i.ax
  %i.az = fadd <2 x float> %i.h, %i.aw            ; 17 uses
  %i.ba = fadd float %.sroa.5612.0.copyload, %i.ay ; 17 uses
  %i.bb = fmul float %4, 1.000000e-01             ; 6 uses
  %i.bc = icmp ne ptr %0, null, !nosanitize !10
  %i.bd = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.be = and i64 %i.bd, 7, !nosanitize !10
  %i.bf = icmp eq i64 %i.be, 0, !nosanitize !10
  %i.bg = and i1 %i.bc, %i.bf, !nosanitize !10
  br i1 %i.bg, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @101, i64 %i.bd) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load i32, ptr %i.bj, align 4, !nosanitize !10
  %i.bl = icmp eq i32 %i.bk, -1056584962, !nosanitize !10
  br i1 %i.bl, label %bb.f, label %bb.h, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.bm = getelementptr i8, ptr %i.bi, i64 -4
  %i.bn = load i32, ptr %i.bm, align 8, !nosanitize !10
  %i.bo = icmp eq i32 %i.bn, -341714709, !nosanitize !10
  br i1 %i.bo, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.bp = ptrtoint ptr %i.bi to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @103, i64 %i.bp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.bq = extractelement <2 x float> %i.ab, i64 1 ; 19 uses
  %i.br = fmul <2 x float> %i.aa, zeroinitializer ; 8 uses
  %i.bs = shufflevector <2 x float> %foldExtExtBinop691, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, <float 1.000000e+00, float 0.000000e+00> ; 12 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 10 uses
  %i.bv = extractelement <2 x float> %i.bt, i64 1 ; 3 uses
  %i.bw = extractelement <2 x float> %i.br, i64 1 ; 3 uses
  %i.bx = extractelement <2 x float> %i.aa, i64 0 ; 10 uses
  %i.by = extractelement <2 x float> %i.aa, i64 1 ; 13 uses
  %i.bz = extractelement <2 x float> %i.br, i64 0 ; 3 uses
  %i.ca = fmul float %i.bq, 0.000000e+00          ; 9 uses
  %i.cb = fsub float %i.bz, %i.bw
  %i.cc = fsub float %i.ca, %i.bx
  %i.cd = fsub float %i.by, %i.ca
  %i.ce = fadd float %i.bv, %i.cd                 ; 2 uses
  %i.cf = fmul float %i.bq, %i.ce
  %i.cg = fadd float %i.g, %i.cb                  ; 2 uses
  %i.ch = fadd float %i.bv, %i.cc                 ; 2 uses
  %i.ci = fmul float %i.bx, %i.cg
  %i.cj = fsub float %i.cf, %i.ci
  %i.ck = fmul float %i.cj, 2.000000e+00
  %i.cl = fadd float %i.ck, 0.000000e+00
  %i.cm = fmul float %i.bb, %i.cl
  %i.cn = fadd float %i.ba, %i.cm
  %i.co = insertelement <2 x float> poison, float %i.ch, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cg, i64 1
  %i.cq = fmul <2 x float> %i.aa, %i.cp
  %i.cr = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 1, i32 3> ; 11 uses
  %i.cs = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.ch, i64 1
  %i.cu = fmul <2 x float> %i.cr, %i.ct
  %i.cv = fsub <2 x float> %i.cq, %i.cu
  %i.cw = fmul <2 x float> %i.cv, splat (float 2.000000e+00)
  %i.cx = fadd <2 x float> %i.cw, <float 1.000000e+00, float 0.000000e+00>
  %i.cy = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.da = fmul <2 x float> %i.cz, %i.cx
  %i.db = fadd <2 x float> %i.az, %i.da
  %i.dc = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.bi(<2 x float> %i.az, float %i.ba, <2 x float> %i.db, float %i.cn, i32 noundef 16711680, ptr noundef %i.dc) #7
  %i.dd = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -8
  %i.df = load i32, ptr %i.de, align 4, !nosanitize !10
  %i.dg = icmp eq i32 %i.df, -1056584962, !nosanitize !10
  br i1 %i.dg, label %bb.i, label %bb.k, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr i8, ptr %i.dd, i64 -4
  %i.di = load i32, ptr %i.dh, align 8, !nosanitize !10
  %i.dj = icmp eq i32 %i.di, -341714709, !nosanitize !10
  br i1 %i.dj, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.dk = ptrtoint ptr %i.dd to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @104, i64 %i.dk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.dl = fsub float %i.bz, %i.by
  %i.dm = fsub float %i.bq, %i.bz
  %i.dn = fsub float %i.bw, %i.ca
  %i.do = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.dl, i64 1
  %i.dr = fadd <2 x float> %i.do, %i.dq           ; 3 uses
  %i.ds = fadd float %i.g, %i.dn                  ; 2 uses
  %i.dt = fmul <2 x float> %i.aa, %i.dr
  %i.du = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dv = insertelement <2 x float> %i.du, float %i.ds, i64 0
  %i.dw = fmul <2 x float> %i.cr, %i.dv
  %i.dx = fsub <2 x float> %i.dt, %i.dw
  %i.dy = fmul float %i.bq, %i.ds
  %shift702 = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop703 = fmul <2 x float> %i.aa, %shift702
  %i.dz = extractelement <2 x float> %foldExtExtBinop703, i64 0
  %i.ea = fsub float %i.dy, %i.dz
  %i.eb = fmul <2 x float> %i.dx, splat (float 2.000000e+00)
  %i.ec = fadd <2 x float> %i.eb, <float 0.000000e+00, float 1.000000e+00>
  %i.ed = fmul float %i.ea, 2.000000e+00
  %i.ee = fadd float %i.ed, 0.000000e+00
  %i.ef = fmul <2 x float> %i.cz, %i.ec
  %i.eg = fmul float %i.bb, %i.ee
  %i.eh = fadd <2 x float> %i.az, %i.ef
  %i.ei = fadd float %i.ba, %i.eg
  %i.ej = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.dd(<2 x float> %i.az, float %i.ba, <2 x float> %i.eh, float %i.ei, i32 noundef 32768, ptr noundef %i.ej) #7
  %i.ek = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 -8
  %i.em = load i32, ptr %i.el, align 4, !nosanitize !10
  %i.en = icmp eq i32 %i.em, -1056584962, !nosanitize !10
  br i1 %i.en, label %bb.l, label %bb.n, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  %i.eo = getelementptr i8, ptr %i.ek, i64 -4
  %i.ep = load i32, ptr %i.eo, align 8, !nosanitize !10
  %i.eq = icmp eq i32 %i.ep, -341714709, !nosanitize !10
  br i1 %i.eq, label %bb.n, label %bb.m, !prof !11, !nosanitize !10

bb.m:                                             ; preds = %bb.l
  %i.er = ptrtoint ptr %i.ek to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @105, i64 %i.er) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.es = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.et = insertelement <2 x float> %i.es, float %i.ca, i64 0
  %i.eu = fsub <2 x float> %i.et, %i.br
  %i.ev = fsub float %i.bw, %i.bq
  %i.ew = fadd <2 x float> %i.bt, %i.eu           ; 3 uses
  %i.ex = fadd float %i.bv, %i.ev                 ; 2 uses
  %i.ey = fmul <2 x float> %i.aa, %i.ew
  %i.ez = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fa = insertelement <2 x float> %i.ez, float %i.ex, i64 0
  %i.fb = fmul <2 x float> %i.cr, %i.fa
  %i.fc = fsub <2 x float> %i.ey, %i.fb
  %i.fd = fmul float %i.bq, %i.ex
  %shift705 = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop706 = fmul <2 x float> %i.aa, %shift705
  %i.fe = extractelement <2 x float> %foldExtExtBinop706, i64 0
  %i.ff = fsub float %i.fd, %i.fe
  %i.fg = fmul <2 x float> %i.fc, splat (float 2.000000e+00)
  %i.fh = fadd <2 x float> %i.fg, zeroinitializer
  %i.fi = fmul float %i.ff, 2.000000e+00
  %i.fj = fadd float %i.fi, 1.000000e+00
  %i.fk = fmul <2 x float> %i.cz, %i.fh
  %i.fl = fmul float %i.bb, %i.fj
  %i.fm = fadd <2 x float> %i.az, %i.fk
  %i.fn = fadd float %i.ba, %i.fl
  %i.fo = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.ek(<2 x float> %i.az, float %i.ba, <2 x float> %i.fm, float %i.fn, i32 noundef 255, ptr noundef %i.fo) #7
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0601.0.copyload = load <2 x float>, ptr %i.fp, align 4 ; 4 uses
  %.sroa.4602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.4602.0.copyload = load float, ptr %.sroa.4602.0..sroa_idx, align 4, !tbaa !88 ; 4 uses
  %.sroa.5603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5603.0.copyload = load <2 x float>, ptr %.sroa.5603.0..sroa_idx, align 4 ; 5 uses
  %.sroa.6604.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6604.0.copyload = load <2 x float>, ptr %.sroa.6604.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5594.0.copyload = load float, ptr %.sroa.5594.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 11 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 8 uses
  %.sroa.09.0.vec.extract.i.i391 = extractelement <2 x float> %.sroa.6.0.copyload, i64 0
  %i.fq = shufflevector <2 x float> %.sroa.6604.0.copyload, <2 x float> %.sroa.5603.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fs = fmul <2 x float> %i.fq, %i.fr
  %i.ft = shufflevector <2 x float> %.sroa.5603.0.copyload, <2 x float> %.sroa.6604.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fu = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fv = fmul <2 x float> %i.ft, %i.fu
  %i.fw = fsub <2 x float> %i.fs, %i.fv
  %i.fx = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.fy = fmul <2 x float> %.sroa.5603.0.copyload, %i.fx
  %i.fz = fadd <2 x float> %i.fy, %i.fw
  %i.ga = shufflevector <2 x float> %.sroa.6604.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.gb = fmul <2 x float> %i.ga, %.sroa.6.0.copyload
  %i.gc = fadd <2 x float> %i.gb, %i.fz           ; 9 uses
  %i.gd = fmul <2 x float> %i.ga, %.sroa.8.0.copyload ; 2 uses
  %i.ge = shufflevector <2 x float> %.sroa.5603.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gf = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gg = fmul <2 x float> %i.ge, %i.gf           ; 2 uses
  %i.gh = shufflevector <2 x float> %.sroa.5603.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gi = fmul <2 x float> %i.gh, %.sroa.6.0.copyload ; 2 uses
  %i.gj = fsub <2 x float> %i.gi, %i.gg
  %i.gk = fadd <2 x float> %i.gi, %i.gg
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> %i.gk, <2 x i32> <i32 0, i32 3>
  %i.gm = shufflevector <2 x float> %.sroa.6604.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.go = fmul <2 x float> %i.gm, %i.gn
  %i.gp = fadd <2 x float> %i.gl, %i.go           ; 2 uses
  %i.gq = fadd <2 x float> %i.gd, %i.gp           ; 3 uses
  %i.gr = fsub <2 x float> %i.gd, %i.gp           ; 2 uses
  %i.gs = shufflevector <2 x float> %i.gq, <2 x float> %i.gr, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.gt = load <2 x float>, ptr %3, align 8
  %foldExtExtBinop715 = fmul <2 x float> %.sroa.0601.0.copyload, %.sroa.8.0.copyload
  %i.gu = extractelement <2 x float> %foldExtExtBinop715, i64 0
  %i.gv = fmul float %.sroa.4602.0.copyload, %.sroa.09.0.vec.extract.i.i391
  %i.gw = shufflevector <2 x float> %.sroa.0601.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gx = insertelement <2 x float> %i.gw, float %.sroa.4602.0.copyload, i64 1 ; 2 uses
  %i.gy = fmul <2 x float> %i.gx, %.sroa.6.0.copyload
  %i.gz = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ha = fmul <2 x float> %.sroa.0601.0.copyload, %i.gz
  %i.hb = fsub <2 x float> %i.gy, %i.ha           ; 2 uses
  %i.hc = fsub float %i.gu, %i.gv
  %i.hd = insertelement <2 x float> %i.gw, float %.sroa.4602.0.copyload, i64 0
  %i.he = fmul <2 x float> %i.hd, %i.fx
  %i.hf = fmul <2 x float> %i.gx, %i.fx
  %i.hg = fadd <2 x float> %i.he, %i.hb           ; 2 uses
  %i.hh = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hi = insertelement <2 x float> %i.hh, float %i.hc, i64 0
  %i.hj = fadd <2 x float> %i.hf, %i.hi           ; 2 uses
  %i.hk = fmul <2 x float> %i.gz, %i.hg
  %i.hl = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.hm = fmul <2 x float> %i.hl, %i.hj
  %i.hn = fsub <2 x float> %i.hk, %i.hm
  %foldExtExtBinop717 = fmul <2 x float> %.sroa.6.0.copyload, %i.hj
  %foldExtExtBinop719 = fmul <2 x float> %.sroa.6.0.copyload, %i.hg
  %shift721 = shufflevector <2 x float> %foldExtExtBinop719, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop722 = fsub <2 x float> %foldExtExtBinop717, %shift721
  %i.ho = extractelement <2 x float> %foldExtExtBinop722, i64 0
  %i.hp = fmul <2 x float> %i.hn, splat (float 2.000000e+00)
  %i.hq = fadd <2 x float> %.sroa.0601.0.copyload, %i.hp
  %i.hr = fmul float %i.ho, 2.000000e+00
  %i.hs = fadd float %.sroa.4602.0.copyload, %i.hr
  %i.ht = fadd <2 x float> %i.gt, %i.hq           ; 2 uses
  %i.hu = fadd float %.sroa.5594.0.copyload, %i.hs ; 2 uses
  %i.hv = fmul float %4, 2.000000e-01             ; 2 uses
  %i.hw = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 -8
  %i.hy = load i32, ptr %i.hx, align 4, !nosanitize !10
  %i.hz = icmp eq i32 %i.hy, -1056584962, !nosanitize !10
  br i1 %i.hz, label %bb.o, label %bb.q, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  %i.ia = getelementptr i8, ptr %i.hw, i64 -4
  %i.ib = load i32, ptr %i.ia, align 8, !nosanitize !10
  %i.ic = icmp eq i32 %i.ib, -341714709, !nosanitize !10
  br i1 %i.ic, label %bb.q, label %bb.p, !prof !11, !nosanitize !10

bb.p:                                             ; preds = %bb.o
  %i.id = ptrtoint ptr %i.hw to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @106, i64 %i.id) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ie = fmul <2 x float> %i.gc, <float 0.000000e+00, float 1.000000e+00>
  %i.if = shufflevector <2 x float> %i.gc, <2 x float> %i.gq, <2 x i32> <i32 1, i32 2> ; 2 uses
end_hunk_0
begin_hunk_1_@b3DrawSphericalJoint:bb.a
  %i.mx = fadd <2 x float> %i.az, %i.mu
  %i.my = fadd float %i.ba, %i.mw
  %i.mz = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.lt(<2 x float> %i.az, float %i.ba, <2 x float> %i.mx, float %i.my, i32 noundef 65535, ptr noundef %i.mz) #7
  br label %bb.ae

bb.aa:                                            ; preds = %.split.split
  %i.na = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 -8
  %i.nc = load i32, ptr %i.nb, align 4, !nosanitize !10
  %i.nd = icmp eq i32 %i.nc, -1056584962, !nosanitize !10
  br i1 %i.nd, label %bb.ab, label %bb.ad, !nosanitize !10

bb.ab:                                            ; preds = %bb.aa
  %i.ne = getelementptr i8, ptr %i.na, i64 -4
  %i.nf = load i32, ptr %i.ne, align 8, !nosanitize !10
  %i.ng = icmp eq i32 %i.nf, -341714709, !nosanitize !10
  br i1 %i.ng, label %bb.ad, label %bb.ac, !prof !11, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.nh = ptrtoint ptr %i.na to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @109, i64 %i.nh) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %foldExtExtBinop758 = fmul <2 x float> %foldExtExtBinop691, %i.ls
  %shift760 = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop761 = fmul <2 x float> %foldExtExtBinop691, %shift760
  %i.ni = fmul <2 x float> %i.cr, %i.ls           ; 2 uses
  %i.nj = fmul <2 x float> %i.aa, %i.ls           ; 2 uses
  %i.nk = shufflevector <2 x float> %i.ni, <2 x float> %i.br, <2 x i32> <i32 1, i32 2>
  %i.nl = fsub <2 x float> %i.nk, %i.nj
  %i.nm = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.nn = insertelement <2 x float> %i.nm, float %i.ca, i64 0
  %i.no = fsub <2 x float> %i.ni, %i.nn
  %i.np = shufflevector <2 x float> %i.bt, <2 x float> %foldExtExtBinop758, <2 x i32> <i32 1, i32 2>
  %i.nq = fadd <2 x float> %i.np, %i.nl           ; 2 uses
  %i.nr = shufflevector <2 x float> %foldExtExtBinop761, <2 x float> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.ns = fadd <2 x float> %i.nr, %i.no           ; 2 uses
  %i.nt = fmul <2 x float> %i.aa, %i.nq
  %i.nu = fmul <2 x float> %i.cr, %i.ns
  %i.nv = fsub <2 x float> %i.nt, %i.nu
  %i.nw = extractelement <2 x float> %i.ns, i64 0
  %i.nx = fmul float %i.bq, %i.nw
  %shift763 = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop764 = fmul <2 x float> %i.aa, %shift763
  %i.ny = extractelement <2 x float> %foldExtExtBinop764, i64 0
  %i.nz = fsub float %i.nx, %i.ny
  %i.oa = fmul <2 x float> %i.nv, splat (float 2.000000e+00)
  %i.ob = fadd <2 x float> %i.ls, %i.oa
  %i.oc = fmul float %i.nz, 2.000000e+00
  %i.od = fadd float %i.oc, 0.000000e+00
  %i.oe = fadd <2 x float> %i.az, %i.ob
  %i.of = fadd float %i.ba, %i.od
  %i.og = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.na(<2 x float> %i.oe, float %i.of, <2 x float> %i.az, float %i.ba, i32 noundef 65535, ptr noundef %i.og) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %.split.split, %bb.ad
  %i.oh = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 -8
  %i.oj = load i32, ptr %i.oi, align 4, !nosanitize !10
  %i.ok = icmp eq i32 %i.oj, -1056584962, !nosanitize !10
  br i1 %i.ok, label %bb.af, label %bb.ah, !nosanitize !10

bb.af:                                            ; preds = %bb.ae
  %i.ol = getelementptr i8, ptr %i.oh, i64 -4
  %i.om = load i32, ptr %i.ol, align 8, !nosanitize !10
  %i.on = icmp eq i32 %i.om, -341714709, !nosanitize !10
  br i1 %i.on, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  %i.oo = ptrtoint ptr %i.oh to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @110, i64 %i.oo) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %foldExtExtBinop766 = fmul <2 x float> %foldExtExtBinop691, %i.lo
  %shift768 = shufflevector <2 x float> %i.lo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop769 = fmul <2 x float> %foldExtExtBinop691, %shift768
  %i.op = fmul <2 x float> %i.cr, %i.lo           ; 2 uses
  %i.oq = fmul <2 x float> %i.aa, %i.lo           ; 2 uses
  %i.or = shufflevector <2 x float> %i.op, <2 x float> %i.br, <2 x i32> <i32 1, i32 2>
  %i.os = fsub <2 x float> %i.or, %i.oq
  %i.ot = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ou = insertelement <2 x float> %i.ot, float %i.ca, i64 0
  %i.ov = fsub <2 x float> %i.op, %i.ou
  %i.ow = shufflevector <2 x float> %i.bt, <2 x float> %foldExtExtBinop766, <2 x i32> <i32 1, i32 2>
  %i.ox = fadd <2 x float> %i.ow, %i.os           ; 2 uses
  %i.oy = shufflevector <2 x float> %foldExtExtBinop769, <2 x float> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.oz = fadd <2 x float> %i.oy, %i.ov           ; 2 uses
  %i.pa = fmul <2 x float> %i.aa, %i.ox
  %i.pb = fmul <2 x float> %i.cr, %i.oz
  %i.pc = fsub <2 x float> %i.pa, %i.pb
  %i.pd = fmul <2 x float> %i.pc, splat (float 2.000000e+00)
  %i.pe = fadd <2 x float> %i.lo, %i.pd
  %i.pf = fadd <2 x float> %i.az, %i.pe
  %foldExtExtBinop771 = fmul <2 x float> %foldExtExtBinop691, %i.ls
  %shift773 = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop774 = fmul <2 x float> %foldExtExtBinop691, %shift773
  %i.pg = fmul <2 x float> %i.cr, %i.ls           ; 2 uses
  %i.ph = fmul <2 x float> %i.aa, %i.ls           ; 2 uses
  %i.pi = shufflevector <2 x float> %i.pg, <2 x float> %i.br, <2 x i32> <i32 1, i32 2>
  %i.pj = fsub <2 x float> %i.pi, %i.ph
  %i.pk = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pl = insertelement <2 x float> %i.pk, float %i.ca, i64 0
  %i.pm = fsub <2 x float> %i.pg, %i.pl
  %i.pn = shufflevector <2 x float> %i.bt, <2 x float> %foldExtExtBinop771, <2 x i32> <i32 1, i32 2>
  %i.po = fadd <2 x float> %i.pn, %i.pj           ; 2 uses
  %i.pp = shufflevector <2 x float> %foldExtExtBinop774, <2 x float> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.pq = fadd <2 x float> %i.pp, %i.pm           ; 2 uses
  %i.pr = fmul <2 x float> %i.aa, %i.po
  %i.ps = fmul <2 x float> %i.cr, %i.pq
  %i.pt = fsub <2 x float> %i.pr, %i.ps
  %i.pu = shufflevector <2 x float> %i.oz, <2 x float> %i.pq, <2 x i32> <i32 0, i32 2>
  %i.pv = fmul <2 x float> %i.kg, %i.pu
  %i.pw = shufflevector <2 x float> %i.ox, <2 x float> %i.po, <2 x i32> <i32 1, i32 3>
  %i.px = fmul <2 x float> %i.es, %i.pw
  %i.py = fsub <2 x float> %i.pv, %i.px
  %i.pz = fmul <2 x float> %i.pt, splat (float 2.000000e+00)
  %i.qa = fadd <2 x float> %i.ls, %i.pz
  %i.qb = fmul <2 x float> %i.py, splat (float 2.000000e+00) ; 2 uses
  %i.qc = extractelement <2 x float> %i.qb, i64 0
  %i.qd = fadd float %i.qc, 0.000000e+00
  %i.qe = fadd float %i.ba, %i.qd
  %i.qf = extractelement <2 x float> %i.qb, i64 1
  %i.qg = fadd float %i.qf, 0.000000e+00
  %i.qh = fadd <2 x float> %i.az, %i.qa
  %i.qi = fadd float %i.ba, %i.qg
  %i.qj = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.oh(<2 x float> %i.pf, float %i.qe, <2 x float> %i.qh, float %i.qi, i32 noundef 65535, ptr noundef %i.qj) #7
  %exitcond.not = icmp eq i32 %i.le, 16
  br i1 %exitcond.not, label %bb.t, label %.split.split, !llvm.loop !164

bb.ai:                                            ; preds = %b3GetTwistAngle.exit
  %i.qk = getelementptr i8, ptr %i.ks, i64 -4
  %i.ql = load i32, ptr %i.qk, align 8, !nosanitize !10
  %i.qm = icmp eq i32 %i.ql, -341714709, !nosanitize !10
  br i1 %i.qm, label %bb.ak, label %bb.aj, !prof !11, !nosanitize !10

bb.aj:                                            ; preds = %bb.ai
  %i.qn = ptrtoint ptr %i.ks to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @111, i64 %i.qn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ak:                                            ; preds = %bb.ai, %b3GetTwistAngle.exit
  %i.qo = fmul <2 x float> %i.aa, %i.kr
  %i.qp = extractelement <2 x float> %i.kr, i64 0
  %i.qq = fmul float %i.by, %i.qp
  %i.qr = extractelement <2 x float> %i.kr, i64 1 ; 2 uses
  %i.qs = fmul float %i.bq, %i.qr
  %foldExtExtBinop776 = fmul <2 x float> %foldExtExtBinop691, %i.kr
  %i.qt = fmul float %i.g, %i.qr
  %i.qu = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qv = insertelement <2 x float> %i.qu, float %i.qs, i64 0
  %i.qw = fsub <2 x float> %i.qv, %i.qo
  %i.qx = fsub float %i.qq, %i.ca
  %i.qy = shufflevector <2 x float> %i.bt, <2 x float> %foldExtExtBinop776, <2 x i32> <i32 1, i32 2>
  %i.qz = fadd <2 x float> %i.qy, %i.qw           ; 3 uses
  %i.ra = fadd float %i.qt, %i.qx                 ; 2 uses
  %i.rb = fmul <2 x float> %i.aa, %i.qz
  %i.rc = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.rd = insertelement <2 x float> %i.rc, float %i.ra, i64 0
  %i.re = fmul <2 x float> %i.ab, %i.rd
  %i.rf = fsub <2 x float> %i.rb, %i.re
  %i.rg = fmul float %i.bq, %i.ra
  %shift778 = shufflevector <2 x float> %i.qz, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop779 = fmul <2 x float> %i.aa, %shift778
  %i.rh = extractelement <2 x float> %foldExtExtBinop779, i64 0
  %i.ri = fsub float %i.rg, %i.rh
  %i.rj = fmul <2 x float> %i.rf, splat (float 2.000000e+00)
  %i.rk = fadd <2 x float> %i.kr, %i.rj
  %i.rl = fmul float %i.ri, 2.000000e+00
  %i.rm = fadd float %i.rl, 0.000000e+00
  %i.rn = fadd <2 x float> %i.az, %i.rk
  %i.ro = fadd float %i.ba, %i.rm
  %i.rp = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.ks(<2 x float> %i.az, float %i.ba, <2 x float> %i.rn, float %i.ro, i32 noundef 16776960, ptr noundef %i.rp) #7
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.s
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 442
  %i.rr = load i8, ptr %i.rq, align 2, !tbaa !115 ; 3 uses
  %i.rs = icmp ult i8 %i.rr, 2
  br i1 %i.rs, label %bb.an, label %bb.am, !prof !11, !nosanitize !10

bb.am:                                            ; preds = %bb.al
  %i.rt = zext i8 %i.rr to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @112, i64 %i.rt) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.an:                                            ; preds = %bb.al
  %i.ru = trunc nuw i8 %i.rr to i1
  br i1 %i.ru, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !125
  %i.rx = tail call <2 x float> @b3ComputeCosSin(float noundef %i.rw) #7
  %.sroa.0.4.vec.extract.i492 = extractelement <2 x float> %i.rx, i64 1
  %i.ry = fmul float %i.bb, %.sroa.0.4.vec.extract.i492 ; 4 uses
  %i.rz = load float, ptr %i.rv, align 4, !tbaa !125
  %i.sa = tail call <2 x float> @b3ComputeCosSin(float noundef %i.rz) #7
  %.sroa.0.0.vec.extract.i493 = extractelement <2 x float> %i.sa, i64 0
  %i.sb = fmul float %i.bb, %.sroa.0.0.vec.extract.i493 ; 5 uses
  %i.sc = fmul float %i.bx, %i.sb                 ; 2 uses
  %i.sd = fmul float %i.bq, %i.sb                 ; 2 uses
  %i.se = fmul float %i.g, %i.sb                  ; 2 uses
  %i.sf = extractelement <2 x float> %i.az, i64 0 ; 2 uses
  %i.sg = extractelement <2 x float> %i.az, i64 1 ; 2 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.av
  %.0308645 = phi i32 [ 0, %bb.ao ], [ %i.sh, %bb.av ] ; 2 uses
  %i.sh = add nuw nsw i32 %.0308645, 1            ; 3 uses
  %i.si = uitofp nneg i32 %.0308645 to float
  %i.sj = fmul nnan float %i.si, 2.000000e+00
  %i.sk = fmul nnan float %i.sj, 6.250000e-02
  %i.sl = fmul nnan float %i.sk, f0x40490FDB      ; 2 uses
  %i.sm = uitofp nneg i32 %i.sh to float
  %i.sn = fmul nnan float %i.sm, 2.000000e+00
  %i.so = fmul nnan float %i.sn, 6.250000e-02
  %i.sp = fmul nnan float %i.so, f0x40490FDB      ; 2 uses
  %i.sq = tail call <2 x float> @b3ComputeCosSin(float noundef %i.sl) #7
  %.sroa.0.0.vec.extract.i494 = extractelement <2 x float> %i.sq, i64 0
  %5 = fmul float %i.ry, %.sroa.0.0.vec.extract.i494 ; 4 uses
  %i.sr = tail call <2 x float> @b3ComputeCosSin(float noundef %i.sl) #7
  %.sroa.0.4.vec.extract.i495 = extractelement <2 x float> %i.sr, i64 1
  %6 = fmul float %i.ry, %.sroa.0.4.vec.extract.i495 ; 4 uses
  %i.ss = tail call <2 x float> @b3ComputeCosSin(float noundef %i.sp) #7
  %.sroa.0.0.vec.extract.i496 = extractelement <2 x float> %i.ss, i64 0
  %i.st = fmul float %i.ry, %.sroa.0.0.vec.extract.i496 ; 4 uses
  %i.su = tail call <2 x float> @b3ComputeCosSin(float noundef %i.sp) #7
  %.sroa.0.4.vec.extract.i497 = extractelement <2 x float> %i.su, i64 1
  %i.sv = fmul float %i.ry, %.sroa.0.4.vec.extract.i497 ; 4 uses
  %i.sw = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.sx = getelementptr i8, ptr %i.sw, i64 -8
  %i.sy = load i32, ptr %i.sx, align 4, !nosanitize !10
  %i.sz = icmp eq i32 %i.sy, -1056584962, !nosanitize !10
  br i1 %i.sz, label %bb.aq, label %bb.as, !nosanitize !10

bb.aq:                                            ; preds = %bb.ap
  %i.ta = getelementptr i8, ptr %i.sw, i64 -4
  %i.tb = load i32, ptr %i.ta, align 8, !nosanitize !10
  %i.tc = icmp eq i32 %i.tb, -341714709, !nosanitize !10
  br i1 %i.tc, label %bb.as, label %bb.ar, !prof !11, !nosanitize !10

bb.ar:                                            ; preds = %bb.aq
  %i.td = ptrtoint ptr %i.sw to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @113, i64 %i.td) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %7 = fmul float %i.by, %6
  %8 = fsub float %i.sc, %7
  %9 = fmul float %i.by, %5
  %10 = fsub float %9, %i.sd
  %11 = fmul float %i.bq, %6
  %12 = fmul float %i.bx, %5
  %13 = fsub float %11, %12
  %14 = fmul float %i.g, %5
  %15 = fadd float %14, %8                        ; 2 uses
  %16 = fmul float %i.g, %6
  %17 = fadd float %16, %10                       ; 2 uses
  %18 = fadd float %i.se, %13                     ; 2 uses
  %19 = fmul float %i.bx, %18
  %20 = fmul float %i.by, %17
  %21 = fsub float %19, %20
  %22 = fmul float %i.by, %15
  %23 = fmul float %i.bq, %18
  %24 = fsub float %22, %23
  %25 = fmul float %i.bq, %17
  %26 = fmul float %i.bx, %15
  %27 = fsub float %25, %26
  %i.te = fmul float %21, 2.000000e+00
  %28 = fadd float %5, %i.te
  %29 = fmul float %24, 2.000000e+00
  %30 = fadd float %6, %29
  %31 = fmul float %27, 2.000000e+00
  %32 = fadd float %i.sb, %31
  %33 = fadd float %i.sf, %28
  %.sroa.09.0.vec.insert.i502 = insertelement <2 x float> poison, float %33, i64 0
  %i.tf = fadd float %i.sg, %30
  %.sroa.09.4.vec.insert.i503 = insertelement <2 x float> %.sroa.09.0.vec.insert.i502, float %i.tf, i64 1 ; 2 uses
  %i.tg = fadd float %i.ba, %32                   ; 2 uses
  %i.th = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.sw(<2 x float> %i.az, float %i.ba, <2 x float> %.sroa.09.4.vec.insert.i503, float %i.tg, i32 noundef 65535, ptr noundef %i.th) #7
  %i.ti = load ptr, ptr %i.bh, align 8, !tbaa !169 ; 4 uses
  %i.tj = getelementptr i8, ptr %i.ti, i64 -8
  %i.tk = load i32, ptr %i.tj, align 4, !nosanitize !10
  %i.tl = icmp eq i32 %i.tk, -1056584962, !nosanitize !10
  br i1 %i.tl, label %bb.at, label %bb.av, !nosanitize !10

bb.at:                                            ; preds = %bb.as
  %i.tm = getelementptr i8, ptr %i.ti, i64 -4
  %i.tn = load i32, ptr %i.tm, align 8, !nosanitize !10
  %i.to = icmp eq i32 %i.tn, -341714709, !nosanitize !10
  br i1 %i.to, label %bb.av, label %bb.au, !prof !11, !nosanitize !10

bb.au:                                            ; preds = %bb.at
  %i.tp = ptrtoint ptr %i.ti to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @114, i64 %i.tp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.av:                                            ; preds = %bb.at, %bb.as
  %i.tq = fmul float %i.by, %i.sv
  %i.tr = fsub float %i.sc, %i.tq
  %i.ts = fmul float %i.by, %i.st
  %i.tt = fsub float %i.ts, %i.sd
  %i.tu = fmul float %i.bq, %i.sv
  %i.tv = fmul float %i.bx, %i.st
  %i.tw = fsub float %i.tu, %i.tv
  %i.tx = fmul float %i.g, %i.st
  %i.ty = fadd float %i.tx, %i.tr                 ; 2 uses
  %i.tz = fmul float %i.g, %i.sv
  %i.ua = fadd float %i.tz, %i.tt                 ; 2 uses
  %i.ub = fadd float %i.se, %i.tw                 ; 2 uses
  %i.uc = fmul float %i.bx, %i.ub
  %i.ud = fmul float %i.by, %i.ua
  %i.ue = fsub float %i.uc, %i.ud
  %i.uf = fmul float %i.by, %i.ty
  %i.ug = fmul float %i.bq, %i.ub
  %i.uh = fsub float %i.uf, %i.ug
  %i.ui = fmul float %i.bq, %i.ua
  %i.uj = fmul float %i.bx, %i.ty
  %i.uk = fsub float %i.ui, %i.uj
  %i.ul = fmul float %i.ue, 2.000000e+00
  %i.um = fadd float %i.st, %i.ul
  %i.un = fmul float %i.uh, 2.000000e+00
  %i.uo = fadd float %i.sv, %i.un
  %i.up = fmul float %i.uk, 2.000000e+00
  %i.uq = fadd float %i.sb, %i.up
  %i.ur = fadd float %i.sf, %i.um
  %.sroa.09.0.vec.insert.i518 = insertelement <2 x float> poison, float %i.ur, i64 0
  %i.us = fadd float %i.sg, %i.uo
  %.sroa.09.4.vec.insert.i519 = insertelement <2 x float> %.sroa.09.0.vec.insert.i518, float %i.us, i64 1
  %i.ut = fadd float %i.ba, %i.uq
  %i.uu = load ptr, ptr %i.bu, align 8, !tbaa !170
  tail call void %i.ti(<2 x float> %.sroa.09.4.vec.insert.i503, float %i.tg, <2 x float> %.sroa.09.4.vec.insert.i519, float %i.ut, i32 noundef 65535, ptr noundef %i.uu) #7
  %exitcond654.not = icmp eq i32 %i.sh, 16
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
end_hunk_1
