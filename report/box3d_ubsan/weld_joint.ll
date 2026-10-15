Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/weld_joint?download=true
inline.NumInlined: 121
inline.NumDeleted: 26
begin_hunk_0_@b3SolveWeldJoint:bb.a
  %shift1230 = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1231 = fadd <2 x float> %i.zn, %shift1230 ; 2 uses
  %i.zo = fmul float %i.za, %i.zf
  %i.zp = fmul float %i.tk, %i.zk
  %i.zq = fsub float %i.zo, %i.zp
  %foldExtExtBinop1233 = fmul <2 x float> %foldExtExtBinop1228, %foldExtExtBinop1231
  %i.zr = extractelement <2 x float> %foldExtExtBinop1233, i64 0
  %i.zs = fsub float %i.zq, %i.zr                 ; 2 uses
  %i.zt = call float @llvm.fabs.f32(float %i.zs)
  %i.zu = fcmp ogt float %i.zt, f0x057A0000
  br i1 %i.zu, label %bb.aa, label %b3Solve3.exit

bb.aa:                                            ; preds = %bb.z
  %i.zv = extractelement <2 x float> %foldExtExtBinop1228, i64 0 ; 3 uses
  %i.zw = fdiv float 1.000000e+00, %i.zs          ; 2 uses
  %i.zx = fmul float %i.yx, %i.zv
  %i.zy = fmul float %i.tk, %i.zc
  %i.zz = fadd float %i.zx, %i.zy
  %i.aaa = fmul float %i.zc, %i.za
  %i.aab = fmul float %i.zg, %i.zv
  %i.aac = fsub float %i.aaa, %i.aab
  %i.aad = fmul float %i.zg, %i.tk
  %i.aae = fmul float %i.yx, %i.za
  %i.aaf = fadd float %i.aad, %i.aae
  %i.aag = fmul float %i.tk, %i.yv
  %i.aah = fmul float %i.zv, %i.zb
  %i.aai = fadd float %i.aag, %i.aah
  %foldExtExtBinop1235 = fmul <2 x float> %foldExtExtBinop1228, %i.yw
  %i.aaj = extractelement <2 x float> %foldExtExtBinop1235, i64 0
  %i.aak = fmul float %i.yv, %i.za
  %i.aal = fadd float %i.aaj, %i.aak
  %i.aam = fmul float %i.za, %i.zb
  %i.aan = fmul float %i.tk, %i.zi
  %i.aao = fsub float %i.aam, %i.aan
  %i.aap = insertelement <3 x float> %.sroa.0178.0, float %.sroa.5.0, i64 0
  %i.aaq = fadd <3 x float> %i.pu, %i.aap         ; 6 uses
  %i.aar = shufflevector <3 x float> %i.aaq, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aas = insertelement <2 x float> poison, float %i.zf, i64 0
  %i.aat = insertelement <2 x float> %i.aas, float %i.zz, i64 1
  %i.aau = fmul <2 x float> %i.aar, %i.aat
  %i.aav = shufflevector <3 x float> %i.aaq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aaw = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.aax = insertelement <2 x float> %i.aaw, float %i.aac, i64 1
  %i.aay = fmul <2 x float> %i.aav, %i.aax
  %i.aaz = fadd <2 x float> %i.aau, %i.aay
  %i.aba = shufflevector <3 x float> %i.aaq, <3 x float> poison, <2 x i32> zeroinitializer
  %i.abb = insertelement <2 x float> %foldExtExtBinop1231, float %i.aaf, i64 1
  %i.abc = fmul <2 x float> %i.aba, %i.abb
  %i.abd = fadd <2 x float> %i.abc, %i.aaz
  %i.abe = insertelement <2 x float> poison, float %i.zw, i64 0
  %i.abf = shufflevector <2 x float> %i.abe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abg = fmul <2 x float> %i.abd, %i.abf
  %i.abh = extractelement <3 x float> %i.aaq, i64 1
  %i.abi = fmul float %i.abh, %i.aai
  %i.abj = extractelement <3 x float> %i.aaq, i64 2
  %i.abk = fmul float %i.abj, %i.aal
  %i.abl = fadd float %i.abi, %i.abk
  %i.abm = extractelement <3 x float> %i.aaq, i64 0
  %i.abn = fmul float %i.abm, %i.aao
  %i.abo = fadd float %i.abn, %i.abl
  %i.abp = fmul float %i.abo, %i.zw
  br label %b3Solve3.exit

b3Solve3.exit:                                    ; preds = %bb.aa, %bb.z
  %.sroa.050.0.i = phi <2 x float> [ %i.abg, %bb.aa ], [ zeroinitializer, %bb.z ]
  %.sroa.452.0.i = phi float [ %i.abp, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.abr = fneg float %.0483                      ; 2 uses
  %i.abs = fmul float %.sroa.452.0.i, %i.abr
  %.sroa.287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %.sroa.287.0.copyload = load float, ptr %.sroa.287.0..sroa_idx, align 4 ; 2 uses
  %i.abt = fmul float %.0484, %.sroa.287.0.copyload
  %i.abu = fsub float %i.abs, %i.abt              ; 7 uses
  %.sroa.086.0.copyload = load <2 x float>, ptr %i.abq, align 4 ; 2 uses
  %i.abv = insertelement <2 x float> poison, float %i.abr, i64 0
  %i.abw = shufflevector <2 x float> %i.abv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abx = fmul <2 x float> %.sroa.050.0.i, %i.abw
  %i.aby = insertelement <2 x float> poison, float %.0484, i64 0
  %i.abz = shufflevector <2 x float> %i.aby, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aca = fmul <2 x float> %i.abz, %.sroa.086.0.copyload
  %i.acb = fsub <2 x float> %i.abx, %i.aca        ; 8 uses
  %i.acc = fadd <2 x float> %.sroa.086.0.copyload, %i.acb
  %i.acd = fadd float %.sroa.287.0.copyload, %i.abu
  store <2 x float> %i.acc, ptr %i.abq, align 4, !tbaa !100
  store float %i.acd, ptr %.sroa.287.0..sroa_idx, align 4, !tbaa !100
  %i.ace = extractelement <2 x float> %i.acb, i64 1
  %i.acf = insertelement <2 x float> poison, float %i.i, i64 0
  %i.acg = shufflevector <2 x float> %i.acf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ach = fmul <2 x float> %i.acg, %i.acb
  %i.aci = fadd <2 x float> %.sroa.0402.0.copyload, %i.ach
  %i.acj = fmul float %i.i, %i.abu
  %i.ack = fadd float %.sroa.7405.0.copyload, %i.acj
  %i.acl = fmul float %i.rb, %i.ace
  %i.acm = shufflevector <2 x float> %i.acb, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.acn = insertelement <4 x float> %i.acm, float 1.000000e+00, i64 3
  %i.aco = insertelement <4 x float> %i.acn, float %i.abu, i64 0
  %i.acp = fmul <4 x float> %i.ow, %i.aco
  %i.acq = shufflevector <2 x float> %i.acb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.acr = insertelement <2 x float> %i.acq, float %i.abu, i64 0
  %i.acs = fmul <2 x float> %i.wu, %i.acr
  %i.act = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.acl, i64 0
  %i.acu = shufflevector <2 x float> %i.acs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.acv = shufflevector <4 x float> %i.act, <4 x float> %i.acu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.acw = fsub <4 x float> %i.acp, %i.acv        ; 4 uses
  %i.acx = extractelement <4 x float> %i.acw, i64 0 ; 2 uses
  %i.acy = fmul float %.sroa.71014.0.copyload, %i.acx
  %i.acz = extractelement <4 x float> %i.acw, i64 1 ; 2 uses
  %i.ada = fmul float %.sroa.131020.0.copyload, %i.acz
  %i.adb = fadd float %i.acy, %i.ada
  %i.adc = fmul float %i.tm, %i.acx
  %i.add = extractelement <2 x float> %i.p, i64 0
  %i.ade = fmul float %i.add, %i.acz
  %i.adf = extractelement <4 x float> %i.acw, i64 2 ; 2 uses
  %i.adg = extractelement <2 x float> %i.q, i64 0
  %i.adh = fmul float %i.adg, %i.adf
  %i.adi = shufflevector <2 x float> %.sroa.0395.0, <2 x float> %i.q, <4 x i32> <i32 poison, i32 poison, i32 3, i32 1>
  %i.adj = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adk = shufflevector <4 x float> %i.adi, <4 x float> %i.adj, <4 x i32> <i32 poison, i32 5, i32 2, i32 3>
  %i.adl = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adm = shufflevector <4 x float> %i.adk, <4 x float> %i.adl, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.adn = fmul <4 x float> %i.adm, %i.acw        ; 3 uses
  %i.ado = fmul float %.sroa.19.0.copyload, %i.adf
  %i.adp = fadd float %i.ado, %i.adb
  %i.adq = shufflevector <4 x float> %i.adn, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.adr = insertelement <2 x float> %i.adq, float %i.adc, i64 0
  %i.ads = shufflevector <4 x float> %i.adn, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.adt = insertelement <2 x float> %i.ads, float %i.ade, i64 0
  %i.adu = fadd <2 x float> %i.adr, %i.adt
  %i.adv = shufflevector <4 x float> %i.adn, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.adw = insertelement <2 x float> %i.adv, float %i.adh, i64 0
  %i.adx = fadd <2 x float> %i.adw, %i.adu
  %i.ady = fadd <2 x float> %.sroa.0395.0, %i.adx
  %i.adz = fadd float %.sroa.10.0, %i.adp
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !109
  %i.aec = and i32 %i.aeb, 4096
  %.not496 = icmp eq i32 %i.aec, 0
  br i1 %.not496, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %b3Solve3.exit
  %i.aed = shufflevector <2 x float> %i.acb, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 0>
  %i.aee = insertelement <3 x float> %i.aed, float %i.abu, i64 1
  %i.aef = fmul <3 x float> %i.nq, %i.aee
  %i.aeg = shufflevector <2 x float> %i.acb, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.aeh = insertelement <3 x float> %i.aeg, float %i.abu, i64 0
  %i.aei = fmul <3 x float> %i.nq, %i.aeh
  %i.aej = shufflevector <3 x float> %i.aei, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.aek = fsub <3 x float> %i.aef, %i.aej        ; 6 uses
  %i.ael = extractelement <3 x float> %i.aek, i64 0
  %i.aem = fmul float %.sroa.191042.0.copyload, %i.ael
  %i.aen = extractelement <3 x float> %i.aek, i64 1
  %i.aeo = fmul float %.sroa.71030.0.copyload, %i.aen
  %i.aep = extractelement <3 x float> %i.aek, i64 2
  %i.aeq = fmul float %.sroa.131036.0.copyload, %i.aep
  %i.aer = fadd float %i.aeo, %i.aeq
  %i.aes = fadd float %i.aem, %i.aer
  %i.aet = fsub float %.sroa.10413.0, %i.aes
  %i.aeu = shufflevector <3 x float> %i.aek, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aev = fmul <2 x float> %i.m, %i.aeu
  %i.aew = shufflevector <3 x float> %i.aek, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aex = fmul <2 x float> %i.k, %i.aew
  %i.aey = shufflevector <3 x float> %i.aek, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.aez = fmul <2 x float> %i.l, %i.aey
  %i.afa = fadd <2 x float> %i.aex, %i.aez
  %i.afb = fadd <2 x float> %i.aev, %i.afa
  %i.afc = fsub <2 x float> %.sroa.0408.0, %i.afb
  %i.afd = fmul float %i.h, %i.abu
  %i.afe = fsub float %.sroa.7419.0.copyload, %i.afd
  %i.aff = insertelement <2 x float> poison, float %i.h, i64 0
  %i.afg = shufflevector <2 x float> %i.aff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afh = fmul <2 x float> %i.afg, %i.acb
  %i.afi = fsub <2 x float> %.sroa.0416.0.copyload, %i.afh
  store <2 x float> %i.afi, ptr %i.ap, align 4, !tbaa !100
  store float %i.afe, ptr %.sroa.7419.0..sroa_idx, align 4, !tbaa !100
  store <2 x float> %i.afc, ptr %i.bs, align 4, !tbaa !100
  store float %i.aet, ptr %.sroa.10413.0..sroa_idx, align 4, !tbaa !100
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %b3Solve3.exit
  %i.afj = getelementptr inbounds nuw i8, ptr %i.bm, i64 52
  %i.afk = load i32, ptr %i.afj, align 4, !tbaa !109
  %i.afl = and i32 %i.afk, 4096
  %.not497 = icmp eq i32 %i.afl, 0
  br i1 %.not497, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store <2 x float> %i.aci, ptr %i.bm, align 4, !tbaa !100
  store float %i.ack, ptr %.sroa.7405.0..sroa_idx, align 4, !tbaa !100
  store <2 x float> %i.ady, ptr %i.by, align 4, !tbaa !100
  store float %i.adz, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !100
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawWeldJoint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, float noundef %4) local_unnamed_addr #4 !func_sanitize !143 {
bb.a:
  %5 = alloca %struct.b3Transform, align 8        ; 7 uses
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @55, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.076.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !100 ; 4 uses
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.477.0.copyload = load float, ptr %.sroa.477.0..sroa_idx, align 4, !tbaa !100 ; 4 uses
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.578.0.copyload = load <2 x float>, ptr %.sroa.578.0..sroa_idx, align 4, !tbaa !100 ; 5 uses
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.679.0.copyload = load <2 x float>, ptr %.sroa.679.0..sroa_idx, align 4, !tbaa !100 ; 4 uses
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <2 x float>, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.668.0.copyload = load <2 x float>, ptr %.sroa.668.0..sroa_idx, align 4 ; 9 uses
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.870.0.copyload = load <2 x float>, ptr %.sroa.870.0..sroa_idx, align 4 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.668.0.copyload, i64 0
  %i.i = shufflevector <2 x float> %.sroa.679.0.copyload, <2 x float> %.sroa.578.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.j = shufflevector <2 x float> %.sroa.668.0.copyload, <2 x float> %.sroa.870.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.k = fmul <2 x float> %i.i, %i.j
  %i.l = shufflevector <2 x float> %.sroa.578.0.copyload, <2 x float> %.sroa.679.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.m = shufflevector <2 x float> %.sroa.870.0.copyload, <2 x float> %.sroa.668.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.n = fmul <2 x float> %i.l, %i.m
  %i.o = fsub <2 x float> %i.k, %i.n
  %i.p = shufflevector <2 x float> %.sroa.870.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.q = fmul <2 x float> %.sroa.578.0.copyload, %i.p
  %i.r = fadd <2 x float> %i.q, %i.o
  %i.s = shufflevector <2 x float> %.sroa.679.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.t = fmul <2 x float> %i.s, %.sroa.668.0.copyload
  %i.u = fadd <2 x float> %i.t, %i.r
  %i.v = fmul <2 x float> %i.s, %.sroa.870.0.copyload ; 2 uses
  %i.w = shufflevector <2 x float> %.sroa.578.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %.sroa.668.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.y = fmul <2 x float> %i.w, %i.x              ; 2 uses
  %i.z = shufflevector <2 x float> %.sroa.578.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aa = fmul <2 x float> %i.z, %.sroa.668.0.copyload ; 2 uses
  %i.ab = fsub <2 x float> %i.aa, %i.y
  %i.ac = fadd <2 x float> %i.aa, %i.y
  %i.ad = shufflevector <2 x float> %i.ab, <2 x float> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.ae = shufflevector <2 x float> %.sroa.679.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %.sroa.870.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ag = fmul <2 x float> %i.ae, %i.af
  %i.ah = fadd <2 x float> %i.ad, %i.ag           ; 2 uses
  %i.ai = fadd <2 x float> %i.v, %i.ah
  %i.aj = fsub <2 x float> %i.v, %i.ah
  %i.ak = shufflevector <2 x float> %i.ai, <2 x float> %i.aj, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.u, ptr %i.h, align 4, !tbaa !100, !alias.scope !144
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store <2 x float> %i.ak, ptr %.sroa.4.0..sroa_idx.i15, align 4, !tbaa !100, !alias.scope !144
  %i.al = load <2 x float>, ptr %2, align 8
  %foldExtExtBinop = fmul <2 x float> %.sroa.076.0.copyload, %.sroa.870.0.copyload
  %i.am = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.an = fmul float %.sroa.477.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.ao = fsub float %i.am, %i.an
  %i.ap = shufflevector <2 x float> %.sroa.076.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aq = insertelement <2 x float> %i.ap, float %.sroa.477.0.copyload, i64 1 ; 2 uses
  %i.ar = fmul <2 x float> %i.aq, %.sroa.668.0.copyload
  %i.as = fmul <2 x float> %.sroa.076.0.copyload, %i.j
  %i.at = fsub <2 x float> %i.ar, %i.as           ; 2 uses
  %i.au = insertelement <2 x float> %i.ap, float %.sroa.477.0.copyload, i64 0
  %i.av = fmul <2 x float> %i.au, %i.p
  %i.aw = fmul <2 x float> %i.aq, %i.p
  %i.ax = fadd <2 x float> %i.av, %i.at           ; 2 uses
  %i.ay = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.az = insertelement <2 x float> %i.ay, float %i.ao, i64 0
  %i.ba = fadd <2 x float> %i.aw, %i.az           ; 2 uses
  %i.bb = fmul <2 x float> %i.j, %i.ax
  %i.bc = fmul <2 x float> %i.m, %i.ba
  %i.bd = fsub <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.bd, splat (float 2.000000e+00)
  %i.bf = fadd <2 x float> %.sroa.076.0.copyload, %i.be
  %i.bg = fadd <2 x float> %i.al, %i.bf
  store <2 x float> %i.bg, ptr %5, align 8, !tbaa !100
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.bh, align 4, !tbaa !100 ; 4 uses
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.457.0.copyload = load float, ptr %.sroa.457.0..sroa_idx, align 4, !tbaa !100 ; 4 uses
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.558.0.copyload = load <2 x float>, ptr %.sroa.558.0..sroa_idx, align 4, !tbaa !100 ; 5 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.659.0.copyload = load <2 x float>, ptr %.sroa.659.0..sroa_idx, align 4, !tbaa !100 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 9 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.09.0.vec.extract.i.i31 = extractelement <2 x float> %.sroa.6.0.copyload, i64 0
  %i.bj = shufflevector <2 x float> %.sroa.659.0.copyload, <2 x float> %.sroa.558.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bk = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bl = fmul <2 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %.sroa.558.0.copyload, <2 x float> %.sroa.659.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.bn = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bo = fmul <2 x float> %i.bm, %i.bn
  %i.bp = fsub <2 x float> %i.bl, %i.bo
  %i.bq = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.br = fmul <2 x float> %.sroa.558.0.copyload, %i.bq
  %i.bs = fadd <2 x float> %i.br, %i.bp
  %i.bt = shufflevector <2 x float> %.sroa.659.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bu = fmul <2 x float> %i.bt, %.sroa.6.0.copyload
  %i.bv = fadd <2 x float> %i.bu, %i.bs
  %i.bw = fmul <2 x float> %i.bt, %.sroa.8.0.copyload ; 2 uses
  %i.bx = shufflevector <2 x float> %.sroa.558.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = fmul <2 x float> %i.bx, %i.by           ; 2 uses
  %i.ca = shufflevector <2 x float> %.sroa.558.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x float> %i.ca, %.sroa.6.0.copyload ; 2 uses
  %i.cc = fsub <2 x float> %i.cb, %i.bz
  %i.cd = fadd <2 x float> %i.cb, %i.bz
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.cf = shufflevector <2 x float> %.sroa.659.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = fmul <2 x float> %i.cf, %i.cg
  %i.ci = fadd <2 x float> %i.ce, %i.ch           ; 2 uses
  %i.cj = fadd <2 x float> %i.bw, %i.ci
  %i.ck = fsub <2 x float> %i.bw, %i.ci
  %i.cl = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bv, ptr %i.bi, align 4, !tbaa !100, !alias.scope !145
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %i.cl, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !100, !alias.scope !145
  %i.cm = load <2 x float>, ptr %3, align 8
  %foldExtExtBinop87 = fmul <2 x float> %.sroa.056.0.copyload, %.sroa.8.0.copyload
  %i.cn = extractelement <2 x float> %foldExtExtBinop87, i64 0
  %i.co = fmul float %.sroa.457.0.copyload, %.sroa.09.0.vec.extract.i.i31
  %i.cp = fsub float %i.cn, %i.co
  %i.cq = shufflevector <2 x float> %.sroa.056.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cr = insertelement <2 x float> %i.cq, float %.sroa.457.0.copyload, i64 1 ; 2 uses
  %i.cs = fmul <2 x float> %i.cr, %.sroa.6.0.copyload
  %i.ct = fmul <2 x float> %.sroa.056.0.copyload, %i.bk
  %i.cu = fsub <2 x float> %i.cs, %i.ct           ; 2 uses
  %i.cv = insertelement <2 x float> %i.cq, float %.sroa.457.0.copyload, i64 0
  %i.cw = fmul <2 x float> %i.cv, %i.bq
  %i.cx = fmul <2 x float> %i.cr, %i.bq
  %i.cy = fadd <2 x float> %i.cw, %i.cu           ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.da = insertelement <2 x float> %i.cz, float %i.cp, i64 0
  %i.db = fadd <2 x float> %i.cx, %i.da           ; 2 uses
  %i.dc = fmul <2 x float> %i.bk, %i.cy
  %i.dd = fmul <2 x float> %i.bn, %i.db
  %i.de = fsub <2 x float> %i.dc, %i.dd
  %i.df = fmul <2 x float> %i.de, splat (float 2.000000e+00)
  %i.dg = fadd <2 x float> %.sroa.056.0.copyload, %i.df
  %i.dh = fadd <2 x float> %i.cm, %i.dg
  %i.di = shufflevector <2 x float> %.sroa.668.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.dj = shufflevector <2 x float> %i.ba, <2 x float> %i.db, <2 x i32> <i32 0, i32 2>
  %i.dk = fmul <2 x float> %i.di, %i.dj
  %i.dl = shufflevector <2 x float> %.sroa.668.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.dm = shufflevector <2 x float> %i.ax, <2 x float> %i.cy, <2 x i32> <i32 1, i32 3>
  %i.dn = fmul <2 x float> %i.dl, %i.dm
  %i.do = fsub <2 x float> %i.dk, %i.dn
  %i.dp = fmul <2 x float> %i.do, splat (float 2.000000e+00)
  %i.dq = insertelement <2 x float> poison, float %.sroa.477.0.copyload, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %.sroa.457.0.copyload, i64 1
  %i.ds = fadd <2 x float> %i.dr, %i.dp
  %i.dt = insertelement <2 x float> %i.g, float %.sroa.5.0.copyload, i64 1
  %i.du = fadd <2 x float> %i.dt, %i.ds           ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  store float %i.dv, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !100
  store <2 x float> %i.dh, ptr %6, align 8, !tbaa !100
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.dw = extractelement <2 x float> %i.du, i64 1
  store float %i.dw, ptr %.sroa.562.0..sroa_idx, align 8, !tbaa !100
  %i.dx = insertelement <2 x float> poison, float %4, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dy, <float 1.000000e-01, float 5.000000e-02> ; 2 uses
  %i.ea = fmul float %4, 2.500000e-02             ; 2 uses
  %i.eb = icmp ne ptr %0, null, !nosanitize !10
  %i.ec = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.ed = and i64 %i.ec, 7, !nosanitize !10
  %i.ee = icmp eq i64 %i.ed, 0, !nosanitize !10
  %i.ef = and i1 %i.eb, %i.ee, !nosanitize !10
  br i1 %i.ef, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @57, i64 %i.ec) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !148 ; 4 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8
  %i.ej = load i32, ptr %i.ei, align 4, !nosanitize !10
  %i.ek = icmp eq i32 %i.ej, -1056584962, !nosanitize !10
  br i1 %i.ek, label %bb.f, label %bb.h, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.el = getelementptr i8, ptr %i.eh, i64 -4
  %i.em = load i32, ptr %i.el, align 8, !nosanitize !10
  %i.en = icmp eq i32 %i.em, 288709804, !nosanitize !10
  br i1 %i.en, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.eo = ptrtoint ptr %i.eh to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @59, i64 %i.eo) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !149
  tail call void %i.eh(<2 x float> %i.dz, float %i.ea, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, i32 noundef 16747520, ptr noundef %i.eq) #7
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !148 ; 4 uses
  %i.es = getelementptr i8, ptr %i.er, i64 -8
  %i.et = load i32, ptr %i.es, align 4, !nosanitize !10
  %i.eu = icmp eq i32 %i.et, -1056584962, !nosanitize !10
  br i1 %i.eu, label %bb.i, label %bb.k, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  %i.ev = getelementptr i8, ptr %i.er, i64 -4
  %i.ew = load i32, ptr %i.ev, align 8, !nosanitize !10
  %i.ex = icmp eq i32 %i.ew, 288709804, !nosanitize !10
  br i1 %i.ex, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.ey = ptrtoint ptr %i.er to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @60, i64 %i.ey) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ez = load ptr, ptr %i.ep, align 8, !tbaa !149
  tail call void %i.er(<2 x float> %i.dz, float %i.ea, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 noundef 35723, ptr noundef %i.ez) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_function_type_mismatch_abort(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable }
attributes #4 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
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
!9 = !{i32 -1056584962, i32 1546161371}
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
end_hunk_0
