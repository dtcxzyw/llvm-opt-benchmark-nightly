Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/weld_joint?download=true
inline.NumInlined: 121
inline.NumDeleted: 26
begin_hunk_0_@b3SolveWeldJoint:bb.a
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
  %.sroa.567.0.copyload = load float, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.668.0.copyload = load <2 x float>, ptr %.sroa.668.0..sroa_idx, align 4 ; 8 uses
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.870.0.copyload = load <2 x float>, ptr %.sroa.870.0..sroa_idx, align 4 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.668.0.copyload, i64 0
  %i.h = shufflevector <2 x float> %.sroa.679.0.copyload, <2 x float> %.sroa.578.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.i = shufflevector <2 x float> %.sroa.668.0.copyload, <2 x float> %.sroa.870.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.j = fmul <2 x float> %i.h, %i.i
  %i.k = shufflevector <2 x float> %.sroa.578.0.copyload, <2 x float> %.sroa.679.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.l = shufflevector <2 x float> %.sroa.870.0.copyload, <2 x float> %.sroa.668.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.m = fmul <2 x float> %i.k, %i.l
  %i.n = fsub <2 x float> %i.j, %i.m
  %i.o = shufflevector <2 x float> %.sroa.870.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.p = fmul <2 x float> %.sroa.578.0.copyload, %i.o
  %i.q = fadd <2 x float> %i.p, %i.n
  %i.r = shufflevector <2 x float> %.sroa.679.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.s = fmul <2 x float> %i.r, %.sroa.668.0.copyload
  %i.t = fadd <2 x float> %i.s, %i.q
  %i.u = fmul <2 x float> %i.r, %.sroa.870.0.copyload ; 2 uses
  %i.v = shufflevector <2 x float> %.sroa.578.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %.sroa.668.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.x = fmul <2 x float> %i.v, %i.w              ; 2 uses
  %i.y = shufflevector <2 x float> %.sroa.578.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul <2 x float> %i.y, %.sroa.668.0.copyload ; 2 uses
  %i.aa = fsub <2 x float> %i.z, %i.x
  %i.ab = fadd <2 x float> %i.z, %i.x
  %i.ac = shufflevector <2 x float> %i.aa, <2 x float> %i.ab, <2 x i32> <i32 0, i32 3>
  %i.ad = shufflevector <2 x float> %.sroa.679.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = shufflevector <2 x float> %.sroa.870.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.af = fmul <2 x float> %i.ad, %i.ae
  %i.ag = fadd <2 x float> %i.ac, %i.af           ; 2 uses
  %i.ah = fadd <2 x float> %i.u, %i.ag
  %i.ai = fsub <2 x float> %i.u, %i.ag
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.t, ptr %i.g, align 4, !tbaa !100, !alias.scope !144
  %.sroa.4.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %5, i64 20
  store <2 x float> %i.aj, ptr %.sroa.4.0..sroa_idx.i15, align 4, !tbaa !100, !alias.scope !144
  %i.ak = load <2 x float>, ptr %2, align 8
  %foldExtExtBinop = fmul <2 x float> %.sroa.076.0.copyload, %.sroa.870.0.copyload
  %i.al = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.am = fmul float %.sroa.477.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.an = fsub float %i.al, %i.am
  %i.ao = shufflevector <2 x float> %.sroa.076.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ap = insertelement <2 x float> %i.ao, float %.sroa.477.0.copyload, i64 1 ; 2 uses
  %i.aq = fmul <2 x float> %i.ap, %.sroa.668.0.copyload
  %i.ar = fmul <2 x float> %.sroa.076.0.copyload, %i.i
  %i.as = fsub <2 x float> %i.aq, %i.ar           ; 2 uses
  %i.at = insertelement <2 x float> %i.ao, float %.sroa.477.0.copyload, i64 0
  %i.au = fmul <2 x float> %i.at, %i.o
  %i.av = fmul <2 x float> %i.ap, %i.o
  %i.aw = fadd <2 x float> %i.au, %i.as           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x float> %i.ax, float %i.an, i64 0
  %i.az = fadd <2 x float> %i.av, %i.ay           ; 2 uses
  %i.ba = fmul <2 x float> %i.i, %i.aw
  %i.bb = fmul <2 x float> %i.l, %i.az
  %i.bc = fsub <2 x float> %i.ba, %i.bb
  %7 = shufflevector <2 x float> %i.az, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3>
  %8 = fmul <2 x float> %.sroa.668.0.copyload, %7 ; 2 uses
  %i.bd = fmul <2 x float> %i.bc, splat (float 2.000000e+00)
  %i.be = fadd <2 x float> %.sroa.076.0.copyload, %i.bd
  %i.bf = fadd <2 x float> %i.ak, %i.be
  store <2 x float> %i.bf, ptr %5, align 8, !tbaa !100
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.056.0.copyload = load <2 x float>, ptr %i.bg, align 4, !tbaa !100 ; 4 uses
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.457.0.copyload = load float, ptr %.sroa.457.0..sroa_idx, align 4, !tbaa !100 ; 4 uses
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.558.0.copyload = load <2 x float>, ptr %.sroa.558.0..sroa_idx, align 4, !tbaa !100 ; 5 uses
  %.sroa.659.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.659.0.copyload = load <2 x float>, ptr %.sroa.659.0..sroa_idx, align 4, !tbaa !100 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 8 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8.0.copyload = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 4 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.09.0.vec.extract.i.i31 = extractelement <2 x float> %.sroa.6.0.copyload, i64 0
  %i.bi = shufflevector <2 x float> %.sroa.659.0.copyload, <2 x float> %.sroa.558.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bj = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.8.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.bk = fmul <2 x float> %i.bi, %i.bj
  %i.bl = shufflevector <2 x float> %.sroa.558.0.copyload, <2 x float> %.sroa.659.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.bm = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = fsub <2 x float> %i.bk, %i.bn
  %i.bp = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.bq = fmul <2 x float> %.sroa.558.0.copyload, %i.bp
  %i.br = fadd <2 x float> %i.bq, %i.bo
  %i.bs = shufflevector <2 x float> %.sroa.659.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bt = fmul <2 x float> %i.bs, %.sroa.6.0.copyload
  %i.bu = fadd <2 x float> %i.bt, %i.br
  %i.bv = fmul <2 x float> %i.bs, %.sroa.8.0.copyload ; 2 uses
  %i.bw = shufflevector <2 x float> %.sroa.558.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = fmul <2 x float> %i.bw, %i.bx           ; 2 uses
  %i.bz = shufflevector <2 x float> %.sroa.558.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = fmul <2 x float> %i.bz, %.sroa.6.0.copyload ; 2 uses
  %i.cb = fsub <2 x float> %i.ca, %i.by
  %i.cc = fadd <2 x float> %i.ca, %i.by
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.ce = shufflevector <2 x float> %.sroa.659.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = shufflevector <2 x float> %.sroa.8.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = fmul <2 x float> %i.ce, %i.cf
  %i.ch = fadd <2 x float> %i.cd, %i.cg           ; 2 uses
  %i.ci = fadd <2 x float> %i.bv, %i.ch
  %i.cj = fsub <2 x float> %i.bv, %i.ch
  %i.ck = shufflevector <2 x float> %i.ci, <2 x float> %i.cj, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.bu, ptr %i.bh, align 4, !tbaa !100, !alias.scope !145
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %i.ck, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !100, !alias.scope !145
  %i.cl = load <2 x float>, ptr %3, align 8
  %foldExtExtBinop87 = fmul <2 x float> %.sroa.056.0.copyload, %.sroa.8.0.copyload
  %i.cm = extractelement <2 x float> %foldExtExtBinop87, i64 0
  %i.cn = fmul float %.sroa.457.0.copyload, %.sroa.09.0.vec.extract.i.i31
  %i.co = fsub float %i.cm, %i.cn
  %i.cp = shufflevector <2 x float> %.sroa.056.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = insertelement <2 x float> %i.cp, float %.sroa.457.0.copyload, i64 1 ; 2 uses
  %i.cr = fmul <2 x float> %i.cq, %.sroa.6.0.copyload
  %i.cs = fmul <2 x float> %.sroa.056.0.copyload, %i.bj
  %i.ct = fsub <2 x float> %i.cr, %i.cs           ; 2 uses
  %i.cu = insertelement <2 x float> %i.cp, float %.sroa.457.0.copyload, i64 0
  %i.cv = fmul <2 x float> %i.cu, %i.bp
  %i.cw = fmul <2 x float> %i.cq, %i.bp
  %i.cx = fadd <2 x float> %i.cv, %i.ct           ; 2 uses
  %i.cy = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cz = insertelement <2 x float> %i.cy, float %i.co, i64 0
  %i.da = fadd <2 x float> %i.cw, %i.cz           ; 2 uses
  %i.db = fmul <2 x float> %i.bj, %i.cx
  %i.dc = fmul <2 x float> %i.bm, %i.da
  %i.dd = fsub <2 x float> %i.db, %i.dc
  %9 = shufflevector <2 x float> %i.da, <2 x float> %i.cx, <2 x i32> <i32 0, i32 3>
  %10 = fmul <2 x float> %.sroa.6.0.copyload, %9  ; 2 uses
  %11 = fmul <2 x float> %i.dd, splat (float 2.000000e+00)
  %12 = fadd <2 x float> %.sroa.056.0.copyload, %11
  %i.de = shufflevector <2 x float> %8, <2 x float> %10, <2 x i32> <i32 0, i32 2>
  %i.df = shufflevector <2 x float> %8, <2 x float> %10, <2 x i32> <i32 1, i32 3>
  %13 = fsub <2 x float> %i.de, %i.df
  %i.dg = fmul <2 x float> %13, splat (float 2.000000e+00) ; 2 uses
  %14 = extractelement <2 x float> %i.dg, i64 0
  %15 = fadd float %.sroa.477.0.copyload, %14
  %16 = fadd float %.sroa.567.0.copyload, %15
  store float %16, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !100
  %17 = extractelement <2 x float> %i.dg, i64 1
  %18 = fadd float %.sroa.457.0.copyload, %17
  %i.dh = fadd <2 x float> %i.cl, %12
  %19 = fadd float %.sroa.5.0.copyload, %18
  store <2 x float> %i.dh, ptr %6, align 8, !tbaa !100
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %19, ptr %.sroa.562.0..sroa_idx, align 8, !tbaa !100
  %i.di = insertelement <2 x float> poison, float %4, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul <2 x float> %i.dj, <float 1.000000e-01, float 5.000000e-02> ; 2 uses
  %i.dl = fmul float %4, 2.500000e-02             ; 2 uses
  %i.dm = icmp ne ptr %0, null, !nosanitize !10
  %i.dn = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.do = and i64 %i.dn, 7, !nosanitize !10
  %i.dp = icmp eq i64 %i.do, 0, !nosanitize !10
  %i.dq = and i1 %i.dm, %i.dp, !nosanitize !10
  br i1 %i.dq, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @57, i64 %i.dn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !148 ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = load i32, ptr %i.dt, align 4, !nosanitize !10
  %i.dv = icmp eq i32 %i.du, -1056584962, !nosanitize !10
  br i1 %i.dv, label %bb.f, label %bb.h, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.dw = getelementptr i8, ptr %i.ds, i64 -4
  %i.dx = load i32, ptr %i.dw, align 8, !nosanitize !10
  %i.dy = icmp eq i32 %i.dx, 288709804, !nosanitize !10
  br i1 %i.dy, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.dz = ptrtoint ptr %i.ds to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @59, i64 %i.dz) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !149
  tail call void %i.ds(<2 x float> %i.dk, float %i.dl, ptr noundef nonnull byval(%struct.b3Transform) align 8 %5, i32 noundef 16747520, ptr noundef %i.eb) #7
  %i.ec = load ptr, ptr %i.dr, align 8, !tbaa !148 ; 4 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  %i.ee = load i32, ptr %i.ed, align 4, !nosanitize !10
  %i.ef = icmp eq i32 %i.ee, -1056584962, !nosanitize !10
  br i1 %i.ef, label %bb.i, label %bb.k, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  %i.eg = getelementptr i8, ptr %i.ec, i64 -4
  %i.eh = load i32, ptr %i.eg, align 8, !nosanitize !10
  %i.ei = icmp eq i32 %i.eh, 288709804, !nosanitize !10
  br i1 %i.ei, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  %i.ej = ptrtoint ptr %i.ec to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @60, i64 %i.ej) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ek = load ptr, ptr %i.ea, align 8, !tbaa !149
  tail call void %i.ec(<2 x float> %i.dk, float %i.dl, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 noundef 35723, ptr noundef %i.ek) #7
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
!69 = !{!"_Bool", !5, i64 0}
!70 = !{!"b3World", !14, i64 0, !22, i64 800, !23, i64 1144, !25, i64 3832, !26, i64 3848, !27, i64 3856, !29, i64 3880, !27, i64 3896, !31, i64 3920, !27, i64 3936, !33, i64 3960, !27, i64 3976, !35, i64 4000, !27, i64 4016, !37, i64 4040, !27, i64 4056, !39, i64 4080, !12, i64 4096, !42, i64 4104, !44, i64 4128, !46, i64 4144, !48, i64 4160, !50, i64 4176, !52, i64 4192, !54, i64 4208, !5, i64 4224, !5, i64 4256, !6, i64 4288, !56, i64 4296, !58, i64 4312, !60, i64 4328, !60, i64 4344, !60, i64 4360, !60, i64 4376, !12, i64 4392, !12, i64 4400, !12, i64 4408, !61, i64 4416, !6, i64 4424, !63, i64 4428, !62, i64 4440, !62, i64 4444, !62, i64 4448, !62, i64 4452, !62, i64 4456, !62, i64 4460, !62, i64 4464, !12, i64 4472, !12, i64 4480, !64, i64 4488, !65, i64 4492, !6, i64 4584, !6, i64 4588, !5, i64 4592, !66, i64 4624, !12, i64 4648, !12, i64 4656, !12, i64 4664, !12, i64 4672, !6, i64 4680, !12, i64 4688, !12, i64 4696, !12, i64 4704, !12, i64 4712, !67, i64 4720, !12, i64 4728, !68, i64 4736, !62, i64 4744, !62, i64 4748, !6, i64 4752, !6, i64 4756, !64, i64 4760, !69, i64 4762, !69, i64 4763, !69, i64 4764, !69, i64 4765, !69, i64 4766, !69, i64 4767}
!71 = !{!70, !68, i64 4736}
!72 = !{!"b3JointId", !6, i64 0, !64, i64 4, !64, i64 6}
!73 = !{!"", !72, i64 0, !62, i64 8}
!74 = !{!73, !62, i64 8}
!75 = !{!5, !5, i64 0}
!76 = !{i32 -1056584962, i32 815956314}
!77 = !{i32 -1056584962, i32 1524926171}
!78 = !{!70, !62, i64 4744}
!79 = !{i32 -1056584962, i32 -2108614514}
!80 = !{!"b3Softness", !62, i64 0, !62, i64 4, !62, i64 8}
!81 = !{!"p1 _ZTS7b3World", !12, i64 0}
!82 = !{!"p1 _ZTS17b3ConstraintGraph", !12, i64 0}
!83 = !{!"p1 _ZTS11b3BodyState", !12, i64 0}
!84 = !{!"p1 _ZTS9b3BodySim", !12, i64 0}
!85 = !{!"p1 _ZTS23b3ContactConstraintWide", !12, i64 0}
!86 = !{!"p1 _ZTS17b3WidePrepareSpan", !12, i64 0}
!87 = !{!"p1 _ZTS20b3ManifoldConstraint", !12, i64 0}
!88 = !{!"p1 _ZTS19b3ContactConstraint", !12, i64 0}
!89 = !{!"p1 _ZTS20b3ContactPrepareSpan", !12, i64 0}
!90 = !{!"p1 _ZTS18b3JointPrepareSpan", !12, i64 0}
!91 = !{!"p1 _ZTS13b3SolverStage", !12, i64 0}
!92 = !{!"b3AtomicU32", !6, i64 0}
!93 = !{!"b3StepContext", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !6, i64 16, !80, i64 20, !80, i64 32, !62, i64 44, !62, i64 48, !81, i64 56, !82, i64 64, !83, i64 72, !84, i64 80, !15, i64 88, !6, i64 96, !15, i64 104, !19, i64 112, !15, i64 120, !85, i64 128, !86, i64 136, !6, i64 144, !87, i64 152, !88, i64 160, !89, i64 168, !89, i64 176, !90, i64 184, !6, i64 192, !6, i64 196, !91, i64 200, !6, i64 208, !69, i64 212, !5, i64 213, !92, i64 280, !5, i64 284, !19, i64 348, !5, i64 352}
!94 = !{!"b3Quat", !63, i64 0, !62, i64 12}
!95 = !{!"b3Transform", !63, i64 0, !94, i64 12}
!96 = !{!"b3Matrix3", !63, i64 0, !63, i64 12, !63, i64 24}
!97 = !{!"b3JointSim", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !95, i64 16, !95, i64 44, !62, i64 72, !62, i64 76, !96, i64 80, !96, i64 116, !62, i64 152, !62, i64 156, !80, i64 160, !62, i64 172, !62, i64 176, !69, i64 180, !5, i64 184}
!98 = !{!97, !62, i64 72}
!99 = !{!97, !62, i64 76}
!100 = !{!62, !62, i64 0}
!101 = !{!97, !69, i64 180}
!102 = !{!"b3WeldJoint", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !80, i64 16, !80, i64 28, !63, i64 40, !63, i64 52, !6, i64 64, !6, i64 68, !95, i64 72, !95, i64 100, !63, i64 128, !96, i64 140}
!103 = !{!102, !6, i64 64}
!104 = !{!102, !6, i64 68}
!105 = !{!102, !62, i64 0}
!106 = !{!102, !62, i64 8}
!107 = !{!93, !83, i64 72}
!108 = !{!"b3BodyState", !63, i64 0, !63, i64 12, !63, i64 24, !94, i64 36, !6, i64 52}
!109 = !{!108, !6, i64 52}
!110 = !{!93, !81, i64 56}
end_hunk_0
