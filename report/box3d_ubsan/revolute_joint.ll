Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/revolute_joint?download=true
inline.NumInlined: 226
inline.NumDeleted: 34
begin_hunk_0_@b3SolveRevoluteJoint:bb.a
  %i.amg = fmul <2 x float> %i.als, %i.alx        ; 2 uses
  %shift2177 = shufflevector <2 x float> %i.amg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2178 = fadd <2 x float> %i.amg, %shift2177
  %i.amh = extractelement <2 x float> %foldExtExtBinop2178, i64 0
  %i.ami = fmul float %i.alf, %i.aln
  %i.amj = fadd float %i.ami, %i.amh
  %i.amk = fmul float %i.amj, %i.alg
  %.sroa.050.4.vec.insert.i = insertelement <2 x float> %.sroa.050.0.vec.insert.i, float %i.amk, i64 1
  %i.aml = shufflevector <2 x float> %i.ake, <2 x float> %i.akf, <2 x i32> <i32 0, i32 2>
  %i.amm = fmul <2 x float> %i.aml, %i.akd
  %i.amn = shufflevector <2 x float> %i.akd, <2 x float> %i.ake, <2 x i32> <i32 1, i32 2>
  %i.amo = fmul <2 x float> %i.amn, %i.akm
  %i.amp = fadd <2 x float> %i.amm, %i.amo
  %i.amq = fmul <2 x float> %i.aly, %i.amp        ; 2 uses
  %shift2180 = shufflevector <2 x float> %i.amq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop2181 = fadd <2 x float> %shift2180, %i.amq
  %i.amr = extractelement <2 x float> %foldExtExtBinop2181, i64 0
  %i.ams = fmul float %i.alf, %i.alq
  %i.amt = fadd float %i.ams, %i.amr
  %i.amu = fmul float %i.amt, %i.alg
  br label %b3Solve3.exit

b3Solve3.exit:                                    ; preds = %bb.bc, %bb.bd
  %.sroa.050.0.i = phi <2 x float> [ %.sroa.050.4.vec.insert.i, %bb.bd ], [ zeroinitializer, %bb.bc ]
  %.sroa.452.0.i = phi float [ %i.amu, %bb.bd ], [ 0.000000e+00, %bb.bc ]
  %i.amv = fneg float %.0920                      ; 2 uses
  %i.amw = fmul float %.sroa.452.0.i, %i.amv
  %.sroa.094.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 2 uses
  %.sroa.295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.sroa.295.0.copyload = load float, ptr %.sroa.295.0..sroa_idx, align 4 ; 2 uses
  %i.amx = fmul float %.0921, %.sroa.295.0.copyload
  %i.amy = fsub float %i.amw, %i.amx              ; 7 uses
  %i.amz = insertelement <2 x float> poison, float %i.amv, i64 0
  %i.ana = shufflevector <2 x float> %i.amz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anb = fmul <2 x float> %.sroa.050.0.i, %i.ana
  %i.anc = insertelement <2 x float> poison, float %.0921, i64 0
  %i.and = shufflevector <2 x float> %i.anc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ane = fmul <2 x float> %i.and, %.sroa.094.0.copyload
  %i.anf = fsub <2 x float> %i.anb, %i.ane        ; 8 uses
  %i.ang = fadd <2 x float> %.sroa.094.0.copyload, %i.anf
  %i.anh = fadd float %.sroa.295.0.copyload, %i.amy
  store <2 x float> %i.ang, ptr %i.s, align 4, !tbaa !96
  store float %i.anh, ptr %.sroa.295.0..sroa_idx, align 4, !tbaa !96
  %i.ani = extractelement <2 x float> %i.anf, i64 0
  %i.anj = extractelement <2 x float> %i.anf, i64 1 ; 4 uses
  %i.ank = insertelement <2 x float> poison, float %i.i, i64 0
  %i.anl = shufflevector <2 x float> %i.ank, <2 x float> poison, <2 x i32> zeroinitializer
  %i.anm = fmul <2 x float> %i.anl, %i.anf
  %i.ann = fadd <2 x float> %.sroa.0782.0.copyload, %i.anm
  %i.ano = fmul float %i.i, %i.amy
  %i.anp = fadd float %.sroa.7785.0.copyload, %i.ano
  %i.anq = fmul float %i.acn, %i.amy
  %i.anr = fmul float %i.acs, %i.anj
  %i.ans = fsub float %i.anq, %i.anr              ; 3 uses
  %foldExtExtBinop2187 = fmul <2 x float> %i.acm, %i.anf
  %i.ant = extractelement <2 x float> %foldExtExtBinop2187, i64 0
  %i.anu = fmul float %i.acx, %i.amy
  %i.anv = fsub float %i.ant, %i.anu              ; 3 uses
  %i.anw = fmul float %i.acx, %i.anj
  %i.anx = fmul float %i.acn, %i.ani
  %i.any = fsub float %i.anw, %i.anx              ; 3 uses
  %i.anz = fmul float %.sroa.16.0.copyload, %i.ans
  %i.aoa = fmul float %.sroa.341789.0.copyload, %i.anv
  %i.aob = fadd float %i.anz, %i.aoa
  %i.aoc = extractelement <2 x float> %i.o, i64 0
  %i.aod = fmul float %i.aoc, %i.ans
  %i.aoe = extractelement <2 x float> %i.p, i64 0
  %i.aof = fmul float %i.aoe, %i.anv
  %i.aog = fadd float %i.aod, %i.aof
  %i.aoh = extractelement <2 x float> %i.q, i64 0
  %i.aoi = fmul float %i.aoh, %i.any
  %i.aoj = fadd float %i.aoi, %i.aog
  %i.aok = extractelement <2 x float> %i.o, i64 1
  %i.aol = fmul float %i.aok, %i.ans
  %i.aom = extractelement <2 x float> %i.p, i64 1
  %i.aon = fmul float %i.aom, %i.anv
  %i.aoo = fadd float %i.aol, %i.aon
  %i.aop = extractelement <2 x float> %i.q, i64 1
  %i.aoq = fmul float %i.aop, %i.any
  %i.aor = fadd float %i.aoq, %i.aoo
  %i.aos = fmul float %.sroa.52.0.copyload, %i.any
  %i.aot = fadd float %i.aos, %i.aob
  %i.aou = fadd float %.sroa.09.0.vec.extract.i1340, %i.aoj
  %.sroa.05.0.vec.insert.i1634 = insertelement <2 x float> poison, float %i.aou, i64 0
  %i.aov = fadd float %.sroa.09.4.vec.extract13.i1337, %i.aor
  %.sroa.05.4.vec.insert.i1635 = insertelement <2 x float> %.sroa.05.0.vec.insert.i1634, float %i.aov, i64 1
  %i.aow = fadd float %.sroa.22779.3, %i.aot
  %i.aox = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !121
  %i.aoz = and i32 %i.aoy, 4096
  %.not946 = icmp eq i32 %i.aoz, 0
  br i1 %.not946, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %b3Solve3.exit
  %i.apa = fmul float %i.ado, %i.anj
  %foldExtExtBinop2185 = fmul <2 x float> %i.ack, %i.anf
  %i.apb = extractelement <2 x float> %foldExtExtBinop2185, i64 0
  %i.apc = fsub float %i.apa, %i.apb              ; 3 uses
  %i.apd = fmul float %.sroa.521881.0.copyload, %i.apc
  %i.ape = fmul float %i.ade, %i.amy
  %i.apf = fmul float %i.adj, %i.anj
  %i.apg = fsub float %i.ape, %i.apf              ; 3 uses
  %i.aph = fmul float %.sroa.161833.0.copyload, %i.apg
  %foldExtExtBinop2183 = fmul <2 x float> %i.abk, %i.anf
  %i.api = extractelement <2 x float> %foldExtExtBinop2183, i64 0
  %i.apj = fmul float %i.ado, %i.amy
  %i.apk = fsub float %i.api, %i.apj              ; 3 uses
  %i.apl = fmul float %.sroa.341857.0.copyload, %i.apk
  %i.apm = fadd float %i.aph, %i.apl
  %i.apn = fadd float %i.apd, %i.apm
  %i.apo = fsub float %.sroa.22801.3, %i.apn
  %i.app = extractelement <2 x float> %i.n, i64 0
  %i.apq = fmul float %i.app, %i.apc
  %i.apr = extractelement <2 x float> %i.l, i64 0
  %i.aps = fmul float %i.apr, %i.apg
  %i.apt = extractelement <2 x float> %i.m, i64 0
  %i.apu = fmul float %i.apt, %i.apk
  %i.apv = fadd float %i.aps, %i.apu
  %i.apw = fadd float %i.apq, %i.apv
  %i.apx = fsub float %.sroa.09.0.vec.extract.i1364, %i.apw
  %.sroa.05.0.vec.insert.i1604 = insertelement <2 x float> poison, float %i.apx, i64 0
  %i.apy = extractelement <2 x float> %i.n, i64 1
  %i.apz = fmul float %i.apy, %i.apc
  %i.aqa = extractelement <2 x float> %i.l, i64 1
  %i.aqb = fmul float %i.aqa, %i.apg
  %i.aqc = extractelement <2 x float> %i.m, i64 1
  %i.aqd = fmul float %i.aqc, %i.apk
  %i.aqe = fadd float %i.aqb, %i.aqd
  %i.aqf = fadd float %i.apz, %i.aqe
  %i.aqg = fsub float %.sroa.09.4.vec.extract13.i1360, %i.aqf
  %.sroa.05.4.vec.insert.i1605 = insertelement <2 x float> %.sroa.05.0.vec.insert.i1604, float %i.aqg, i64 1
  %i.aqh = fmul float %i.h, %i.amy
  %i.aqi = fsub float %.sroa.7807.0.copyload, %i.aqh
  %i.aqj = insertelement <2 x float> poison, float %i.h, i64 0
  %i.aqk = shufflevector <2 x float> %i.aqj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aql = fmul <2 x float> %i.aqk, %i.anf
  %i.aqm = fsub <2 x float> %.sroa.0804.0.copyload, %i.aql
  store <2 x float> %i.aqm, ptr %i.ap, align 4, !tbaa !96
  store float %i.aqi, ptr %.sroa.7807.0..sroa_idx, align 4, !tbaa !96
  store <2 x float> %.sroa.05.4.vec.insert.i1605, ptr %i.bs, align 4, !tbaa !96
  store float %i.apo, ptr %.sroa.22801.0..sroa_idx, align 4, !tbaa !96
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %b3Solve3.exit
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.aqo = load i32, ptr %i.aqn, align 4, !tbaa !121
  %i.aqp = and i32 %i.aqo, 4096
  %.not947 = icmp eq i32 %i.aqp, 0
  br i1 %.not947, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store <2 x float> %i.ann, ptr %i.bm, align 4, !tbaa !96
  store float %i.anp, ptr %.sroa.7785.0..sroa_idx, align 4, !tbaa !96
  store <2 x float> %.sroa.05.4.vec.insert.i1635, ptr %i.by, align 4, !tbaa !96
  store float %i.aow, ptr %.sroa.22779.0..sroa_idx, align 4, !tbaa !96
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawRevoluteJoint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, float noundef %4) local_unnamed_addr #5 !func_sanitize !163 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @86, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0444.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !96 ; 4 uses
  %.sroa.4445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4445.0.copyload = load float, ptr %.sroa.4445.0..sroa_idx, align 4, !tbaa !96 ; 4 uses
  %.sroa.5446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5446.0.copyload = load <2 x float>, ptr %.sroa.5446.0..sroa_idx, align 4, !tbaa !96 ; 6 uses
  %.sroa.6447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6447.0.copyload = load <2 x float>, ptr %.sroa.6447.0..sroa_idx, align 4, !tbaa !96 ; 5 uses
  %.sroa.5435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5435.0.copyload = load float, ptr %.sroa.5435.0..sroa_idx, align 8
  %.sroa.6436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.6436.0.copyload = load <2 x float>, ptr %.sroa.6436.0..sroa_idx, align 4 ; 10 uses
  %.sroa.8438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8438.0.copyload = load <2 x float>, ptr %.sroa.8438.0..sroa_idx, align 4 ; 6 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6436.0.copyload, i64 0
  %foldExtExtBinop = fmul <2 x float> %.sroa.6447.0.copyload, %.sroa.8438.0.copyload
  %foldExtExtBinop480 = fmul <2 x float> %.sroa.5446.0.copyload, %.sroa.6436.0.copyload
  %foldExtExtBinop482 = fmul <2 x float> %.sroa.5446.0.copyload, %.sroa.6436.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop482, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop484 = fadd <2 x float> %foldExtExtBinop480, %shift
  %foldExtExtBinop486 = fmul <2 x float> %.sroa.6447.0.copyload, %.sroa.8438.0.copyload
  %foldExtExtBinop488 = fadd <2 x float> %foldExtExtBinop486, %foldExtExtBinop484
  %shift490 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop491 = fsub <2 x float> %shift490, %foldExtExtBinop488 ; 8 uses
  %i.g = extractelement <2 x float> %foldExtExtBinop491, i64 0 ; 5 uses
  %i.h = load <2 x float>, ptr %2, align 8
  %i.i = shufflevector <2 x float> %.sroa.8438.0.copyload, <2 x float> %.sroa.6436.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.j = fmul <2 x float> %.sroa.5446.0.copyload, %i.i
  %i.k = shufflevector <2 x float> %.sroa.5446.0.copyload, <2 x float> %.sroa.6447.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.l = fmul <2 x float> %i.k, %.sroa.6436.0.copyload
  %i.m = shufflevector <2 x float> %.sroa.6447.0.copyload, <2 x float> %.sroa.5446.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.n = fmul <2 x float> %i.m, %.sroa.6436.0.copyload
  %i.o = shufflevector <2 x float> %.sroa.6436.0.copyload, <2 x float> %.sroa.8438.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.p = fmul <2 x float> %.sroa.5446.0.copyload, %i.o
  %i.q = fsub <2 x float> %i.j, %i.n
  %i.r = fsub <2 x float> %i.l, %i.p
  %i.s = shufflevector <2 x float> %.sroa.8438.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.t = fmul <2 x float> %i.k, %i.s
  %i.u = fmul <2 x float> %i.m, %i.s
  %i.v = fadd <2 x float> %i.t, %i.q
  %i.w = fadd <2 x float> %i.r, %i.u
  %i.x = shufflevector <2 x float> %.sroa.6447.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.y = fmul <2 x float> %i.x, %i.i
  %i.z = fmul <2 x float> %i.x, %i.o
  %i.aa = fadd <2 x float> %i.z, %i.v             ; 24 uses
  %i.ab = fadd <2 x float> %i.y, %i.w             ; 5 uses
  %foldExtExtBinop493 = fmul <2 x float> %.sroa.0444.0.copyload, %.sroa.8438.0.copyload
  %i.ac = extractelement <2 x float> %foldExtExtBinop493, i64 0
  %i.ad = fmul float %.sroa.4445.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.ae = fsub float %i.ac, %i.ad
  %i.af = shufflevector <2 x float> %.sroa.0444.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.4445.0.copyload, i64 1 ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %.sroa.6436.0.copyload
  %i.ai = fmul <2 x float> %.sroa.0444.0.copyload, %i.o
  %i.aj = fsub <2 x float> %i.ah, %i.ai           ; 2 uses
  %i.ak = insertelement <2 x float> %i.af, float %.sroa.4445.0.copyload, i64 0
  %i.al = fmul <2 x float> %i.ak, %i.s
  %i.am = fmul <2 x float> %i.ag, %i.s
  %i.an = fadd <2 x float> %i.al, %i.aj           ; 2 uses
  %i.ao = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ap = insertelement <2 x float> %i.ao, float %i.ae, i64 0
  %i.aq = fadd <2 x float> %i.am, %i.ap           ; 2 uses
  %i.ar = fmul <2 x float> %i.o, %i.an
  %i.as = fmul <2 x float> %i.i, %i.aq
  %i.at = fsub <2 x float> %i.ar, %i.as
  %foldExtExtBinop495 = fmul <2 x float> %.sroa.6436.0.copyload, %i.aq
  %foldExtExtBinop497 = fmul <2 x float> %.sroa.6436.0.copyload, %i.an
  %shift499 = shufflevector <2 x float> %foldExtExtBinop497, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop500 = fsub <2 x float> %foldExtExtBinop495, %shift499
  %i.au = extractelement <2 x float> %foldExtExtBinop500, i64 0
  %i.av = fmul <2 x float> %i.at, splat (float 2.000000e+00)
  %i.aw = fadd <2 x float> %.sroa.0444.0.copyload, %i.av
  %i.ax = fmul float %i.au, 2.000000e+00
  %i.ay = fadd float %.sroa.4445.0.copyload, %i.ax
  %i.az = fadd <2 x float> %i.h, %i.aw            ; 14 uses
  %i.ba = fadd float %.sroa.5435.0.copyload, %i.ay ; 14 uses
  %i.bb = fmul float %4, 1.000000e-01             ; 4 uses
  %i.bc = icmp ne ptr %0, null, !nosanitize !10
  %i.bd = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.be = and i64 %i.bd, 7, !nosanitize !10
  %i.bf = icmp eq i64 %i.be, 0, !nosanitize !10
  %i.bg = and i1 %i.bc, %i.bf, !nosanitize !10
  br i1 %i.bg, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @88, i64 %i.bd) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !166 ; 4 uses
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
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @90, i64 %i.bp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.bq = extractelement <2 x float> %i.aa, i64 0 ; 5 uses
  %i.br = extractelement <2 x float> %i.aa, i64 1 ; 9 uses
  %i.bs = extractelement <2 x float> %i.ab, i64 1 ; 14 uses
  %i.bt = fmul <2 x float> %i.aa, zeroinitializer ; 6 uses
  %i.bu = shufflevector <2 x float> %foldExtExtBinop491, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bv = fmul <2 x float> %i.bu, <float 1.000000e+00, float 0.000000e+00> ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 1 ; 5 uses
  %i.by = extractelement <2 x float> %i.bt, i64 0 ; 3 uses
  %i.bz = extractelement <2 x float> %i.bt, i64 1 ; 3 uses
  %i.ca = fmul float %i.bs, 0.000000e+00          ; 8 uses
  %i.cb = fsub float %i.br, %i.ca
  %i.cc = fadd float %i.bx, %i.cb                 ; 2 uses
  %i.cd = fmul float %i.bs, %i.cc
  %i.ce = fsub float %i.by, %i.bz
  %i.cf = fadd float %i.g, %i.ce                  ; 2 uses
  %i.cg = fmul float %i.bq, %i.cf
  %i.ch = fsub float %i.cd, %i.cg
  %i.ci = fmul float %i.ch, 2.000000e+00
  %i.cj = fadd float %i.ci, 0.000000e+00
  %i.ck = fmul float %i.bb, %i.cj
  %i.cl = fadd float %i.ba, %i.ck
  %i.cm = fsub float %i.ca, %i.bq
  %i.cn = fadd float %i.bx, %i.cm                 ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cf, i64 1
  %i.cq = fmul <2 x float> %i.aa, %i.cp
  %i.cr = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 1, i32 3> ; 9 uses
  %i.cs = insertelement <2 x float> poison, float %i.cc, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cn, i64 1
  %i.cu = fmul <2 x float> %i.cr, %i.ct
  %i.cv = fsub <2 x float> %i.cq, %i.cu
  %i.cw = fmul <2 x float> %i.cv, splat (float 2.000000e+00)
  %i.cx = fadd <2 x float> %i.cw, <float 1.000000e+00, float 0.000000e+00>
  %i.cy = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.cz = shufflevector <2 x float> %i.cy, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.da = fmul <2 x float> %i.cz, %i.cx
  %i.db = fadd <2 x float> %i.az, %i.da
  %i.dc = load ptr, ptr %i.bw, align 8, !tbaa !167
  tail call void %i.bi(<2 x float> %i.az, float %i.ba, <2 x float> %i.db, float %i.cl, i32 noundef 16711680, ptr noundef %i.dc) #7
  %i.dd = load ptr, ptr %i.bh, align 8, !tbaa !166 ; 4 uses
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
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @91, i64 %i.dk) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.dl = fsub float %i.by, %i.br
  %i.dm = fsub float %i.bz, %i.ca
  %i.dn = fsub float %i.bs, %i.by
  %i.do = fadd float %i.g, %i.dm                  ; 2 uses
  %i.dp = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dq = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.dl, i64 1
  %i.ds = fadd <2 x float> %i.dp, %i.dr           ; 3 uses
  %i.dt = fmul <2 x float> %i.aa, %i.ds
  %i.du = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dv = insertelement <2 x float> %i.du, float %i.do, i64 0
  %i.dw = fmul <2 x float> %i.cr, %i.dv
  %i.dx = fsub <2 x float> %i.dt, %i.dw
  %i.dy = fmul float %i.bs, %i.do
  %shift502 = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop503 = fmul <2 x float> %i.aa, %shift502
  %i.dz = extractelement <2 x float> %foldExtExtBinop503, i64 0
  %i.ea = fsub float %i.dy, %i.dz
  %i.eb = fmul <2 x float> %i.dx, splat (float 2.000000e+00)
  %i.ec = fadd <2 x float> %i.eb, <float 0.000000e+00, float 1.000000e+00>
  %i.ed = fmul float %i.ea, 2.000000e+00
  %i.ee = fadd float %i.ed, 0.000000e+00
  %i.ef = fmul <2 x float> %i.cz, %i.ec
  %i.eg = fmul float %i.bb, %i.ee
  %i.eh = fadd <2 x float> %i.az, %i.ef
  %i.ei = fadd float %i.ba, %i.eg
  %i.ej = load ptr, ptr %i.bw, align 8, !tbaa !167
  tail call void %i.dd(<2 x float> %i.az, float %i.ba, <2 x float> %i.eh, float %i.ei, i32 noundef 32768, ptr noundef %i.ej) #7
  %i.ek = load ptr, ptr %i.bh, align 8, !tbaa !166 ; 4 uses
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
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @92, i64 %i.er) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.es = fsub float %i.bz, %i.bs
  %5 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.et = insertelement <2 x float> %5, float %i.ca, i64 0
  %i.eu = fsub <2 x float> %i.et, %i.bt
  %i.ev = fadd float %i.bx, %i.es                 ; 2 uses
  %i.ew = fadd <2 x float> %i.bv, %i.eu           ; 3 uses
  %i.ex = fmul <2 x float> %i.aa, %i.ew
  %i.ey = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ez = insertelement <2 x float> %i.ey, float %i.ev, i64 0
  %i.fa = fmul <2 x float> %i.cr, %i.ez
  %i.fb = fsub <2 x float> %i.ex, %i.fa
  %i.fc = fmul float %i.bs, %i.ev
  %shift505 = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop506 = fmul <2 x float> %i.aa, %shift505
  %i.fd = extractelement <2 x float> %foldExtExtBinop506, i64 0
  %i.fe = fsub float %i.fc, %i.fd
  %i.ff = fmul <2 x float> %i.fb, splat (float 2.000000e+00)
  %i.fg = fadd <2 x float> %i.ff, zeroinitializer
  %i.fh = fmul float %i.fe, 2.000000e+00
  %i.fi = fadd float %i.fh, 1.000000e+00
  %i.fj = fmul <2 x float> %i.cz, %i.fg
  %i.fk = fmul float %i.bb, %i.fi
  %i.fl = fadd <2 x float> %i.az, %i.fj
  %i.fm = fadd float %i.ba, %i.fk
  %i.fn = load ptr, ptr %i.bw, align 8, !tbaa !167
  tail call void %i.ek(<2 x float> %i.az, float %i.ba, <2 x float> %i.fl, float %i.fm, i32 noundef 255, ptr noundef %i.fn) #7
  %.sroa.5427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5427.0.copyload = load <2 x float>, ptr %.sroa.5427.0..sroa_idx, align 4, !tbaa !96 ; 5 uses
  %.sroa.6428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6428.0.copyload = load <2 x float>, ptr %.sroa.6428.0..sroa_idx, align 4, !tbaa !96 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 5 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 5 uses
  %i.fo = shufflevector <2 x float> %.sroa.6428.0.copyload, <2 x float> %.sroa.5427.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.fp = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fq = fmul <2 x float> %i.fo, %i.fp
  %i.fr = shufflevector <2 x float> %.sroa.5427.0.copyload, <2 x float> %.sroa.6428.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.fs = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.ft = fmul <2 x float> %i.fr, %i.fs
  %i.fu = fsub <2 x float> %i.fq, %i.ft
  %i.fv = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = fmul <2 x float> %.sroa.5427.0.copyload, %i.fv
  %i.fx = fadd <2 x float> %i.fw, %i.fu
  %i.fy = shufflevector <2 x float> %.sroa.6428.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fz = fmul <2 x float> %i.fy, %.sroa.6.0.copyload
  %i.ga = fadd <2 x float> %i.fz, %i.fx           ; 3 uses
  %i.gb = fmul <2 x float> %i.fy, %.sroa.8.0.copyload ; 2 uses
  %i.gc = shufflevector <2 x float> %.sroa.5427.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ge = fmul <2 x float> %i.gc, %i.gd           ; 2 uses
  %i.gf = shufflevector <2 x float> %.sroa.5427.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gg = fmul <2 x float> %i.gf, %.sroa.6.0.copyload ; 2 uses
  %i.gh = fsub <2 x float> %i.gg, %i.ge
  %i.gi = fadd <2 x float> %i.gg, %i.ge
  %i.gj = shufflevector <2 x float> %i.gh, <2 x float> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gk = shufflevector <2 x float> %.sroa.6428.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gm = fmul <2 x float> %i.gk, %i.gl
  %i.gn = fadd <2 x float> %i.gj, %i.gm           ; 2 uses
  %i.go = fadd <2 x float> %i.gb, %i.gn
  %i.gp = fsub <2 x float> %i.gb, %i.gn
  %i.gq = shufflevector <2 x float> %i.go, <2 x float> %i.gp, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 382
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !122 ; 3 uses
  %i.gt = icmp ult i8 %i.gs, 2
  br i1 %i.gt, label %bb.p, label %bb.o, !prof !11, !nosanitize !10

bb.o:                                             ; preds = %bb.n
  %i.gu = zext i8 %i.gs to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @93, i64 %i.gu) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.p:                                             ; preds = %bb.n
  %i.gv = trunc nuw i8 %i.gs to i1
  br i1 %i.gv, label %.split, label %bb.ai

.split:                                           ; preds = %bb.p
  %i.gw = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.gx = insertelement <4 x float> %i.gw, float %i.g, i64 3
  %i.gy = shufflevector <2 x float> %i.ga, <2 x float> %i.gq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gz = fmul <4 x float> %i.gx, %i.gy           ; 4 uses
  %shift508 = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop509 = fadd <4 x float> %i.gz, %shift508
  %shift511 = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop512 = fadd <4 x float> %shift511, %foldExtExtBinop509
  %shift514 = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop515 = fadd <4 x float> %shift514, %foldExtExtBinop512
  %i.ha = extractelement <4 x float> %foldExtExtBinop515, i64 0
  %i.hb = fcmp olt float %i.ha, 0.000000e+00      ; 2 uses
  %i.hc = fneg <2 x float> %i.gq
  %i.hd = fneg <2 x float> %i.ga
  %.sroa.085.0 = select i1 %i.hb, <2 x float> %i.hd, <2 x float> %i.ga ; 3 uses
  %.sroa.7.0 = select i1 %i.hb, <2 x float> %i.hc, <2 x float> %i.gq ; 3 uses
  %.sroa.3.8.vec.extract51.i318 = extractelement <2 x float> %.sroa.7.0, i64 0
  %.sroa.09.4.vec.extract13.i.i319 = extractelement <2 x float> %.sroa.085.0, i64 1 ; 2 uses
  %.sroa.09.0.vec.extract.i.i322 = extractelement <2 x float> %.sroa.085.0, i64 0
  %foldExtExtBinop517 = fmul <2 x float> %i.aa, %.sroa.085.0
  %i.he = extractelement <2 x float> %foldExtExtBinop517, i64 0
  %i.hf = fmul float %i.bs, %.sroa.09.4.vec.extract13.i.i319
  %i.hg = fsub float %i.he, %i.hf
  %foldExtExtBinop519 = fmul <2 x float> %foldExtExtBinop491, %.sroa.7.0
  %i.hh = extractelement <2 x float> %foldExtExtBinop519, i64 0
  %i.hi = fadd float %i.hg, %i.hh
  %.sroa.3.12.vec.extract53.i323 = extractelement <2 x float> %.sroa.7.0, i64 1 ; 2 uses
  %i.hj = fmul float %i.br, %.sroa.3.12.vec.extract53.i323
  %i.hk = fsub float %i.hi, %i.hj                 ; 2 uses
  %i.hl = fmul float %i.g, %.sroa.3.12.vec.extract53.i323
  %i.hm = fmul float %i.bs, %.sroa.09.0.vec.extract.i.i322
  %i.hn = fmul float %i.bq, %.sroa.09.4.vec.extract13.i.i319
  %i.ho = fadd float %i.hm, %i.hn
  %i.hp = fmul float %i.br, %.sroa.3.8.vec.extract51.i318
  %i.hq = fadd float %i.hp, %i.ho
  %i.hr = fadd float %i.hl, %i.hq                 ; 3 uses
  %i.hs = fmul float %4, 2.000000e-01
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.hv = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %6 = shufflevector <2 x float> %i.ab, <2 x float> %i.aa, <2 x i32> <i32 1, i32 2> ; 2 uses
  %7 = insertelement <2 x float> poison, float %i.ca, i64 0 ; 2 uses
  %8 = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 poison, i32 0> ; 3 uses
  br label %.split.split

bb.q:                                             ; preds = %bb.ae
  %i.hx = fcmp olt float %i.hr, 0.000000e+00
  br i1 %i.hx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hy = fneg float %i.hk
  %i.hz = fneg float %i.hr
  %i.ia = tail call float @b3Atan2(float noundef %i.hy, float noundef %i.hz) #7
  br label %b3GetTwistAngle.exit

bb.s:                                             ; preds = %bb.q
  %i.ib = tail call float @b3Atan2(float noundef %i.hk, float noundef %i.hr) #7
  br label %b3GetTwistAngle.exit

b3GetTwistAngle.exit:                             ; preds = %bb.r, %bb.s
  %i.ic = phi float [ %i.ia, %bb.r ], [ %i.ib, %bb.s ]
  %i.id = fmul float %i.ic, 2.000000e+00          ; 2 uses
  %i.ie = tail call <2 x float> @b3ComputeCosSin(float noundef %i.id) #7
  %i.if = tail call <2 x float> @b3ComputeCosSin(float noundef %i.id) #7
  %i.ig = shufflevector <2 x float> %i.ie, <2 x float> %i.if, <2 x i32> <i32 0, i32 3>
  %i.ih = fmul <2 x float> %i.hw, %i.ig           ; 5 uses
  %i.ii = load ptr, ptr %i.bh, align 8, !tbaa !166 ; 4 uses
  %i.ij = getelementptr i8, ptr %i.ii, i64 -8
  %i.ik = load i32, ptr %i.ij, align 4, !nosanitize !10
  %i.il = icmp eq i32 %i.ik, -1056584962, !nosanitize !10
  br i1 %i.il, label %bb.af, label %bb.ah, !nosanitize !10

.split.split:                                     ; preds = %.split, %bb.ae
  %.0464 = phi i32 [ %i.iu, %bb.ae ], [ 0, %.split ] ; 3 uses
  %i.im = uitofp nneg i32 %.0464 to float
  %i.in = fmul nnan float %i.im, 6.250000e-02     ; 2 uses
  %i.io = fsub nnan float 1.000000e+00, %i.in
  %i.ip = load float, ptr %i.ht, align 4, !tbaa !123 ; 2 uses
  %i.iq = fmul float %i.io, %i.ip
  %i.ir = load float, ptr %i.hu, align 4, !tbaa !124 ; 2 uses
  %i.is = fmul float %i.in, %i.ir
  %i.it = fadd float %i.iq, %i.is                 ; 2 uses
  %i.iu = add nuw nsw i32 %.0464, 1               ; 3 uses
  %i.iv = uitofp nneg i32 %i.iu to float
  %i.iw = fmul nnan float %i.iv, 6.250000e-02     ; 2 uses
  %i.ix = fsub nnan float 1.000000e+00, %i.iw
  %i.iy = fmul float %i.ix, %i.ip
  %i.iz = fmul float %i.iw, %i.ir
  %i.ja = fadd float %i.iy, %i.iz                 ; 2 uses
  %i.jb = tail call <2 x float> @b3ComputeCosSin(float noundef %i.it) #7
  %i.jc = tail call <2 x float> @b3ComputeCosSin(float noundef %i.it) #7
  %9 = shufflevector <2 x float> %i.jc, <2 x float> %i.jb, <2 x i32> <i32 1, i32 2>
  %i.jd = fmul <2 x float> %i.hw, %9              ; 7 uses
  %i.je = tail call <2 x float> @b3ComputeCosSin(float noundef %i.ja) #7
  %i.jf = tail call <2 x float> @b3ComputeCosSin(float noundef %i.ja) #7
  %10 = shufflevector <2 x float> %i.jf, <2 x float> %i.je, <2 x i32> <i32 1, i32 2>
  %i.jg = fmul <2 x float> %i.hw, %10             ; 7 uses
  switch i32 %.0464, label %bb.ab [
    i32 0, label %bb.t
    i32 15, label %bb.x
  ]

bb.t:                                             ; preds = %.split.split
  %i.jh = load ptr, ptr %i.bh, align 8, !tbaa !166 ; 4 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 -8
  %i.jj = load i32, ptr %i.ji, align 4, !nosanitize !10
  %i.jk = icmp eq i32 %i.jj, -1056584962, !nosanitize !10
  br i1 %i.jk, label %bb.u, label %bb.w, !nosanitize !10

bb.u:                                             ; preds = %bb.t
  %i.jl = getelementptr i8, ptr %i.jh, i64 -4
  %i.jm = load i32, ptr %i.jl, align 8, !nosanitize !10
  %i.jn = icmp eq i32 %i.jm, -341714709, !nosanitize !10
  br i1 %i.jn, label %bb.w, label %bb.v, !prof !11, !nosanitize !10

bb.v:                                             ; preds = %bb.u
  %i.jo = ptrtoint ptr %i.jh to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @94, i64 %i.jo) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.w:                                             ; preds = %bb.u, %bb.t
  %11 = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %shift523 = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop522 = fmul <2 x float> %foldExtExtBinop491, %shift523
  %foldExtExtBinop524 = fmul <2 x float> %foldExtExtBinop491, %i.jd
  %i.jp = fmul <2 x float> %i.cr, %11             ; 2 uses
  %i.jq = fmul <2 x float> %i.aa, %11             ; 2 uses
  %i.jr = shufflevector <2 x float> %i.jp, <2 x float> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.js = fsub <2 x float> %i.jr, %i.jq
  %i.jt = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ju = insertelement <2 x float> %i.jt, float %i.ca, i64 0
  %i.jv = fsub <2 x float> %i.jp, %i.ju
  %i.jw = shufflevector <2 x float> %i.bv, <2 x float> %foldExtExtBinop522, <2 x i32> <i32 1, i32 2>
  %i.jx = fadd <2 x float> %i.jw, %i.js           ; 2 uses
  %i.jy = shufflevector <2 x float> %foldExtExtBinop524, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.jz = fadd <2 x float> %i.jy, %i.jv           ; 2 uses
  %i.ka = fmul <2 x float> %i.aa, %i.jx
  %i.kb = fmul <2 x float> %i.cr, %i.jz
  %i.kc = fsub <2 x float> %i.ka, %i.kb
  %i.kd = extractelement <2 x float> %i.jz, i64 0
  %i.ke = fmul float %i.bs, %i.kd
  %shift526 = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop527 = fmul <2 x float> %i.aa, %shift526
  %i.kf = extractelement <2 x float> %foldExtExtBinop527, i64 0
  %i.kg = fsub float %i.ke, %i.kf
  %i.kh = fmul <2 x float> %i.kc, splat (float 2.000000e+00)
  %i.ki = fadd <2 x float> %11, %i.kh
  %i.kj = fmul float %i.kg, 2.000000e+00
  %i.kk = fadd float %i.kj, 0.000000e+00
  %i.kl = fadd <2 x float> %i.az, %i.ki
  %i.km = fadd float %i.ba, %i.kk
  %i.kn = load ptr, ptr %i.bw, align 8, !tbaa !167
  tail call void %i.jh(<2 x float> %i.az, float %i.ba, <2 x float> %i.kl, float %i.km, i32 noundef 65535, ptr noundef %i.kn) #7
  br label %bb.ab

bb.x:                                             ; preds = %.split.split
  %i.ko = load ptr, ptr %i.bh, align 8, !tbaa !166 ; 4 uses
  %i.kp = getelementptr i8, ptr %i.ko, i64 -8
  %i.kq = load i32, ptr %i.kp, align 4, !nosanitize !10
  %i.kr = icmp eq i32 %i.kq, -1056584962, !nosanitize !10
  br i1 %i.kr, label %bb.y, label %bb.aa, !nosanitize !10

bb.y:                                             ; preds = %bb.x
  %i.ks = getelementptr i8, ptr %i.ko, i64 -4
  %i.kt = load i32, ptr %i.ks, align 8, !nosanitize !10
  %i.ku = icmp eq i32 %i.kt, -341714709, !nosanitize !10
  br i1 %i.ku, label %bb.aa, label %bb.z, !prof !11, !nosanitize !10

bb.z:                                             ; preds = %bb.y
  %i.kv = ptrtoint ptr %i.ko to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @95, i64 %i.kv) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.aa:                                            ; preds = %bb.y, %bb.x
  %12 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %shift531 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop530 = fmul <2 x float> %foldExtExtBinop491, %shift531
  %foldExtExtBinop532 = fmul <2 x float> %foldExtExtBinop491, %i.jg
  %i.kw = fmul <2 x float> %i.cr, %12             ; 2 uses
  %i.kx = fmul <2 x float> %i.aa, %12             ; 2 uses
  %i.ky = shufflevector <2 x float> %i.kw, <2 x float> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.kz = fsub <2 x float> %i.ky, %i.kx
  %i.la = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lb = insertelement <2 x float> %i.la, float %i.ca, i64 0
  %i.lc = fsub <2 x float> %i.kw, %i.lb
  %i.ld = shufflevector <2 x float> %i.bv, <2 x float> %foldExtExtBinop530, <2 x i32> <i32 1, i32 2>
  %i.le = fadd <2 x float> %i.ld, %i.kz           ; 2 uses
  %i.lf = shufflevector <2 x float> %foldExtExtBinop532, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.lg = fadd <2 x float> %i.lf, %i.lc           ; 2 uses
  %i.lh = fmul <2 x float> %i.aa, %i.le
  %i.li = fmul <2 x float> %i.cr, %i.lg
  %i.lj = fsub <2 x float> %i.lh, %i.li
  %i.lk = extractelement <2 x float> %i.lg, i64 0
  %i.ll = fmul float %i.bs, %i.lk
  %shift534 = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop535 = fmul <2 x float> %i.aa, %shift534
  %i.lm = extractelement <2 x float> %foldExtExtBinop535, i64 0
  %i.ln = fsub float %i.ll, %i.lm
  %i.lo = fmul <2 x float> %i.lj, splat (float 2.000000e+00)
  %i.lp = fadd <2 x float> %12, %i.lo
  %i.lq = fmul float %i.ln, 2.000000e+00
  %i.lr = fadd float %i.lq, 0.000000e+00
  %i.ls = fadd <2 x float> %i.az, %i.lp
  %i.lt = fadd float %i.ba, %i.lr
  %i.lu = load ptr, ptr %i.bw, align 8, !tbaa !167
  tail call void %i.ko(<2 x float> %i.ls, float %i.lt, <2 x float> %i.az, float %i.ba, i32 noundef 65535, ptr noundef %i.lu) #7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %.split.split, %bb.aa
  %i.lv = load ptr, ptr %i.bh, align 8, !tbaa !166 ; 4 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 -8
  %i.lx = load i32, ptr %i.lw, align 4, !nosanitize !10
  %i.ly = icmp eq i32 %i.lx, -1056584962, !nosanitize !10
  br i1 %i.ly, label %bb.ac, label %bb.ae, !nosanitize !10

bb.ac:                                            ; preds = %bb.ab
  %i.lz = getelementptr i8, ptr %i.lv, i64 -4
  %i.ma = load i32, ptr %i.lz, align 8, !nosanitize !10
  %i.mb = icmp eq i32 %i.ma, -341714709, !nosanitize !10
  br i1 %i.mb, label %bb.ae, label %bb.ad, !prof !11, !nosanitize !10

bb.ad:                                            ; preds = %bb.ac
  %i.mc = ptrtoint ptr %i.lv to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @96, i64 %i.mc) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %13 = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %14 = extractelement <2 x float> %i.jd, i64 0   ; 2 uses
  %15 = fmul float %i.br, %14
  %16 = extractelement <2 x float> %i.jd, i64 1   ; 2 uses
  %17 = fmul float %i.br, %16
  %18 = fmul float %i.bs, %14
  %19 = fmul float %i.bq, %16
  %20 = fsub float %18, %19
  %21 = fmul <2 x float> %i.bu, %i.jd
  %22 = fadd float %i.bx, %20                     ; 2 uses
  %23 = insertelement <2 x float> %8, float %17, i64 0
  %24 = insertelement <2 x float> %7, float %15, i64 1
  %25 = fsub <2 x float> %23, %24
  %i.md = fadd <2 x float> %21, %25               ; 3 uses
  %i.me = fmul <2 x float> %6, %i.md              ; 2 uses
  %shift537 = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mf = fsub <2 x float> %i.me, %shift537
  %26 = extractelement <2 x float> %i.mf, i64 0
  %27 = fmul float %26, 2.000000e+00
  %28 = fadd float %27, 0.000000e+00
  %29 = insertelement <2 x float> %i.md, float %22, i64 1
  %foldExtExtBinop542 = fmul <2 x float> %i.cr, %29
  %30 = insertelement <2 x float> %i.md, float %22, i64 0
  %foldExtExtBinop545 = fmul <2 x float> %i.aa, %30
  %31 = fsub <2 x float> %foldExtExtBinop545, %foldExtExtBinop542
  %i.mg = fmul <2 x float> %31, splat (float 2.000000e+00)
  %32 = fadd <2 x float> %13, %i.mg
  %33 = fadd <2 x float> %i.az, %32
  %34 = fadd float %i.ba, %28
  %35 = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %36 = extractelement <2 x float> %i.jg, i64 0   ; 2 uses
  %37 = fmul float %i.br, %36
  %38 = extractelement <2 x float> %i.jg, i64 1   ; 2 uses
  %39 = fmul float %i.br, %38
  %40 = fmul float %i.bs, %36
  %41 = fmul float %i.bq, %38
  %42 = fsub float %40, %41
  %i.mh = fmul <2 x float> %i.bu, %i.jg
  %43 = fadd float %i.bx, %42                     ; 2 uses
  %44 = insertelement <2 x float> %8, float %39, i64 0
  %45 = insertelement <2 x float> %7, float %37, i64 1
  %i.mi = fsub <2 x float> %44, %45
  %46 = fadd <2 x float> %i.mh, %i.mi             ; 3 uses
  %i.mj = fmul <2 x float> %6, %46                ; 2 uses
  %shift540 = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop541 = fsub <2 x float> %i.mj, %shift540
  %47 = extractelement <2 x float> %foldExtExtBinop541, i64 0
  %48 = fmul float %47, 2.000000e+00
  %49 = fadd float %48, 0.000000e+00
  %50 = insertelement <2 x float> %46, float %43, i64 1
  %i.mk = fmul <2 x float> %i.cr, %50
  %51 = insertelement <2 x float> %46, float %43, i64 0
  %52 = fmul <2 x float> %i.aa, %51
  %53 = fsub <2 x float> %52, %i.mk
  %54 = fmul <2 x float> %53, splat (float 2.000000e+00)
  %55 = fadd <2 x float> %35, %54
  %i.ml = fadd <2 x float> %i.az, %55
  %i.mm = fadd float %i.ba, %49
  %i.mn = load ptr, ptr %i.bw, align 8, !tbaa !167
  tail call void %i.lv(<2 x float> %33, float %34, <2 x float> %i.ml, float %i.mm, i32 noundef 65535, ptr noundef %i.mn) #7
  %exitcond.not = icmp eq i32 %i.iu, 16
  br i1 %exitcond.not, label %bb.q, label %.split.split, !llvm.loop !162

bb.af:                                            ; preds = %b3GetTwistAngle.exit
  %i.mo = getelementptr i8, ptr %i.ii, i64 -4
  %i.mp = load i32, ptr %i.mo, align 8, !nosanitize !10
  %i.mq = icmp eq i32 %i.mp, -341714709, !nosanitize !10
  br i1 %i.mq, label %bb.ah, label %bb.ag, !prof !11, !nosanitize !10

bb.ag:                                            ; preds = %bb.af
  %i.mr = ptrtoint ptr %i.ii to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @97, i64 %i.mr) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.ah:                                            ; preds = %bb.af, %b3GetTwistAngle.exit
  %i.ms = fmul <2 x float> %i.aa, %i.ih
  %i.mt = extractelement <2 x float> %i.ih, i64 0
  %i.mu = fmul float %i.br, %i.mt
  %i.mv = extractelement <2 x float> %i.ih, i64 1 ; 2 uses
  %i.mw = fmul float %i.bs, %i.mv
  %foldExtExtBinop547 = fmul <2 x float> %foldExtExtBinop491, %i.ih
  %i.mx = fmul float %i.g, %i.mv
  %i.my = fsub float %i.mu, %i.ca
  %i.mz = insertelement <2 x float> %8, float %i.mw, i64 0
  %i.na = fsub <2 x float> %i.mz, %i.ms
  %i.nb = fadd float %i.mx, %i.my                 ; 2 uses
  %i.nc = shufflevector <2 x float> %i.bv, <2 x float> %foldExtExtBinop547, <2 x i32> <i32 1, i32 2>
  %i.nd = fadd <2 x float> %i.nc, %i.na           ; 3 uses
  %i.ne = fmul <2 x float> %i.aa, %i.nd
  %i.nf = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ng = insertelement <2 x float> %i.nf, float %i.nb, i64 0
  %i.nh = fmul <2 x float> %i.ab, %i.ng
  %i.ni = fsub <2 x float> %i.ne, %i.nh
  %i.nj = fmul float %i.bs, %i.nb
  %shift549 = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop550 = fmul <2 x float> %i.aa, %shift549
  %i.nk = extractelement <2 x float> %foldExtExtBinop550, i64 0
  %i.nl = fsub float %i.nj, %i.nk
  %i.nm = fmul <2 x float> %i.ni, splat (float 2.000000e+00)
  %i.nn = fadd <2 x float> %i.ih, %i.nm
  %i.no = fmul float %i.nl, 2.000000e+00
  %i.np = fadd float %i.no, 0.000000e+00
  %i.nq = fadd <2 x float> %i.az, %i.nn
  %i.nr = fadd float %i.ba, %i.np
  %i.ns = load ptr, ptr %i.bw, align 8, !tbaa !167
  tail call void %i.ii(<2 x float> %i.az, float %i.ba, <2 x float> %i.nq, float %i.nr, i32 noundef 16776960, ptr noundef %i.ns) #7
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.p
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #3

declare float @b3Atan2(float noundef, float noundef) local_unnamed_addr #2

declare <2 x float> @b3ComputeCosSin(float noundef) local_unnamed_addr #2

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
!78 = !{!"b3Quat", !63, i64 0, !62, i64 12}
!79 = !{!"b3Transform", !63, i64 0, !78, i64 12}
!80 = !{!"b3Matrix3", !63, i64 0, !63, i64 12, !63, i64 24}
!81 = !{!"b3Softness", !62, i64 0, !62, i64 4, !62, i64 8}
!82 = !{!"b3JointSim", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !79, i64 16, !79, i64 44, !62, i64 72, !62, i64 76, !80, i64 80, !80, i64 116, !62, i64 152, !62, i64 156, !81, i64 160, !62, i64 172, !62, i64 176, !69, i64 180, !5, i64 184}
!83 = !{!82, !6, i64 4}
!84 = !{!82, !6, i64 8}
!85 = !{i32 -1056584962, i32 1546161371}
!86 = !{!"", !72, i64 0, !62, i64 8}
!87 = !{!86, !62, i64 8}
!88 = !{!70, !62, i64 4744}
!89 = !{i32 -1056584962, i32 1524926171}
!90 = !{!"b3Vec2", !62, i64 0, !62, i64 4}
!91 = !{!"b3RevoluteJoint", !63, i64 0, !90, i64 12, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !62, i64 40, !62, i64 44, !62, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !6, i64 64, !6, i64 68, !79, i64 72, !79, i64 100, !63, i64 128, !63, i64 140, !63, i64 152, !63, i64 164, !62, i64 176, !62, i64 180, !81, i64 184, !69, i64 196, !69, i64 197, !69, i64 198}
!92 = !{!91, !62, i64 20}
!93 = !{!91, !62, i64 24}
!94 = !{!91, !62, i64 28}
!95 = !{!91, !62, i64 32}
!96 = !{!62, !62, i64 0}
!97 = !{!91, !62, i64 16}
!98 = !{i32 -1056584962, i32 -2108614514}
!99 = !{!"p1 _ZTS7b3World", !12, i64 0}
!100 = !{!"p1 _ZTS17b3ConstraintGraph", !12, i64 0}
!101 = !{!"p1 _ZTS11b3BodyState", !12, i64 0}
!102 = !{!"p1 _ZTS9b3BodySim", !12, i64 0}
!103 = !{!"p1 _ZTS23b3ContactConstraintWide", !12, i64 0}
!104 = !{!"p1 _ZTS17b3WidePrepareSpan", !12, i64 0}
!105 = !{!"p1 _ZTS20b3ManifoldConstraint", !12, i64 0}
!106 = !{!"p1 _ZTS19b3ContactConstraint", !12, i64 0}
!107 = !{!"p1 _ZTS20b3ContactPrepareSpan", !12, i64 0}
!108 = !{!"p1 _ZTS18b3JointPrepareSpan", !12, i64 0}
!109 = !{!"p1 _ZTS13b3SolverStage", !12, i64 0}
!110 = !{!"b3AtomicU32", !6, i64 0}
!111 = !{!"b3StepContext", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !6, i64 16, !81, i64 20, !81, i64 32, !62, i64 44, !62, i64 48, !99, i64 56, !100, i64 64, !101, i64 72, !102, i64 80, !15, i64 88, !6, i64 96, !15, i64 104, !19, i64 112, !15, i64 120, !103, i64 128, !104, i64 136, !6, i64 144, !105, i64 152, !106, i64 160, !107, i64 168, !107, i64 176, !108, i64 184, !6, i64 192, !6, i64 196, !109, i64 200, !6, i64 208, !69, i64 212, !5, i64 213, !110, i64 280, !5, i64 284, !19, i64 348, !5, i64 352}
!112 = !{!82, !62, i64 72}
!113 = !{!82, !62, i64 76}
!114 = !{!91, !6, i64 64}
!115 = !{!91, !6, i64 68}
!116 = !{!82, !69, i64 180}
!117 = !{!91, !62, i64 180}
!118 = !{!111, !62, i64 8}
!119 = !{!111, !101, i64 72}
!120 = !{!"b3BodyState", !63, i64 0, !63, i64 12, !63, i64 24, !78, i64 36, !6, i64 52}
!121 = !{!120, !6, i64 52}
!122 = !{!91, !69, i64 198}
!123 = !{!91, !62, i64 56}
!124 = !{!91, !62, i64 60}
!125 = !{i32 -1056584962, i32 -985130423}
!126 = !{!"", !72, i64 0, !62, i64 8, !62, i64 12}
!127 = !{!126, !62, i64 8}
!128 = !{!126, !62, i64 12}
!129 = !{!111, !99, i64 56}
!130 = !{!70, !28, i64 3880}
!131 = !{!70, !30, i64 3920}
!132 = !{!"b3Body", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !62, i64 52, !62, i64 56, !62, i64 60, !62, i64 64, !80, i64 68, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !64, i64 124}
!133 = !{!132, !6, i64 8}
!134 = !{!132, !6, i64 12}
!135 = !{!"b3DynamicArray_b3BodySim", !102, i64 0, !6, i64 8, !6, i64 12}
!136 = !{!"b3DynamicArray_b3BodyState", !101, i64 0, !6, i64 8, !6, i64 12}
!137 = !{!"p1 _ZTS10b3JointSim", !12, i64 0}
!138 = !{!"b3DynamicArray_b3JointSim", !137, i64 0, !6, i64 8, !6, i64 12}
!139 = !{!"p1 _ZTS11b3IslandSim", !12, i64 0}
!140 = !{!"b3DynamicArray_b3IslandSim", !139, i64 0, !6, i64 8, !6, i64 12}
!141 = !{!"b3SolverSet", !135, i64 0, !136, i64 16, !138, i64 32, !16, i64 48, !140, i64 64, !6, i64 80}
!142 = !{!141, !102, i64 0}
!143 = !{!"b3BodySim", !79, i64 0, !63, i64 28, !78, i64 40, !63, i64 56, !63, i64 68, !63, i64 80, !63, i64 92, !62, i64 104, !80, i64 108, !80, i64 144, !62, i64 180, !63, i64 184, !62, i64 196, !62, i64 200, !62, i64 204, !6, i64 208, !6, i64 212}
!144 = !{!143, !62, i64 104}
end_hunk_0
