Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/wheel_joint?download=true
inline.NumInlined: 311
inline.NumDeleted: 26
begin_hunk_0_@b3SolveWheelJoint:bb.a
  %i.bhd = insertelement <2 x float> poison, float %i.bgq, i64 0 ; 2 uses
  %i.bhe = insertelement <2 x float> %i.bhd, float %i.bgr, i64 1
  %i.bhf = fmul <2 x float> %i.bhc, %i.bhe
  %i.bhg = shufflevector <2 x float> %i.bhb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bhh = fmul <2 x float> %i.bhf, %i.bhg        ; 2 uses
  %i.bhi = shufflevector <2 x float> %i.bhd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhj = fmul <2 x float> %i.bfb, %i.bhi
  %i.bhk = fmul <2 x float> %i.bhj, %i.bhb        ; 2 uses
  %i.bhl = fsub <2 x float> %i.bhk, %i.bhh
  %i.bhm = fadd <2 x float> %i.bhk, %i.bhh
  %i.bhn = shufflevector <2 x float> %i.bhl, <2 x float> %i.bhm, <2 x i32> <i32 0, i32 3>
  br label %b3Solve2.exit2736

b3Solve2.exit2736:                                ; preds = %bb.bw, %bb.bx
  %.sroa.0.0.i2731 = phi <2 x float> [ %i.bhn, %bb.bx ], [ zeroinitializer, %bb.bw ]
  %i.bho = extractelement <2 x float> %i.bbp, i64 0
  %i.bhp = fneg float %i.bho
  %i.bhq = shufflevector <2 x float> %i.bbp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bhr = fmul <2 x float> %i.bhq, %i.bfc
  %i.bhs = insertelement <2 x float> poison, float %i.bhp, i64 0
  %i.bht = shufflevector <2 x float> %i.bhs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhu = fmul <2 x float> %.sroa.0.0.i2731, %i.bht
  %i.bhv = fsub <2 x float> %i.bhu, %i.bhr        ; 9 uses
  %i.bhw = fadd <2 x float> %i.bfc, %i.bhv
  store <2 x float> %i.bhw, ptr %i.u, align 4, !tbaa !85
  %foldExtExtBinop3437 = fmul <2 x float> %i.jm, %i.bhv
  %foldExtExtBinop3439 = fmul <2 x float> %i.ly, %i.bhv
  %shift3441 = shufflevector <2 x float> %foldExtExtBinop3439, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop3442 = fadd <2 x float> %foldExtExtBinop3437, %shift3441 ; 2 uses
  %i.bhx = extractelement <2 x float> %foldExtExtBinop3442, i64 0
  %i.bhy = shufflevector <2 x float> %i.jm, <2 x float> %i.ly, <2 x i32> <i32 1, i32 2>
  %i.bhz = shufflevector <2 x float> %i.bhv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bia = fmul <2 x float> %i.bhy, %i.bhz
  %i.bib = shufflevector <2 x float> %i.bhv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bic = fmul <2 x float> %i.nz, %i.bib
  %i.bid = fadd <2 x float> %i.bia, %i.bic        ; 2 uses
  %i.bie = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bif = fmul <2 x float> %i.bie, %i.bid
  %i.big = fadd <2 x float> %.sroa.01515.1, %i.bif
  %i.bih = fmul float %i.n, %i.bhx
  %i.bii = extractelement <4 x float> %i.anv, i64 0
  %i.bij = fadd float %i.bii, %i.bih
  %i.bik = shufflevector <2 x float> %i.bhv, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.bil = insertelement <4 x float> %i.bik, float 1.000000e+00, i64 3
  %i.bim = fmul <4 x float> %i.mt, %i.bil
  %i.bin = shufflevector <2 x float> %i.bhv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.bio = insertelement <4 x float> %i.bin, float 1.000000e+00, i64 3
  %i.bip = fmul <4 x float> %i.np, %i.bio
  %i.biq = fadd <4 x float> %i.bim, %i.bip        ; 5 uses
  %i.bir = extractelement <4 x float> %i.biq, i64 0
  %i.bis = extractelement <2 x float> %i.q, i64 0
  %i.bit = fmul float %i.bis, %i.bir
  %i.biu = extractelement <4 x float> %i.biq, i64 1 ; 2 uses
  %i.biv = fmul float %.sroa.70.0.copyload, %i.biu
  %i.biw = fadd float %i.bit, %i.biv
  %foldExtExtBinop3446 = fmul <4 x float> %i.o, %i.biq
  %i.bix = extractelement <4 x float> %foldExtExtBinop3446, i64 0
  %i.biy = fmul float %.sroa.44.0.copyload, %i.biu
  %i.biz = extractelement <4 x float> %i.biq, i64 2 ; 2 uses
  %i.bja = extractelement <2 x float> %i.s, i64 0
  %i.bjb = fmul float %i.bja, %i.biz
  %i.bjc = shufflevector <2 x float> %.sroa.01492.5, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bjd = shufflevector <4 x float> %i.bjc, <4 x float> %i.o, <4 x i32> <i32 5, i32 poison, i32 poison, i32 1>
  %i.bje = shufflevector <4 x float> %i.bjd, <4 x float> %i.bdl, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.bjf = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bjg = shufflevector <4 x float> %i.bje, <4 x float> %i.bjf, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bjh = fmul <4 x float> %i.bjg, %i.biq        ; 3 uses
  %i.bji = fmul float %.sroa.109.0.copyload, %i.biz
  %i.bjj = fadd float %i.bji, %i.biw
  %i.bjk = shufflevector <4 x float> %i.bjh, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bjl = insertelement <2 x float> %i.bjk, float %i.bix, i64 0
  %i.bjm = shufflevector <4 x float> %i.bjh, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.bjn = insertelement <2 x float> %i.bjm, float %i.biy, i64 0
  %i.bjo = fadd <2 x float> %i.bjl, %i.bjn
  %i.bjp = shufflevector <4 x float> %i.bjh, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bjq = insertelement <2 x float> %i.bjp, float %i.bjb, i64 0
  %i.bjr = fadd <2 x float> %i.bjq, %i.bjo
  %i.bjs = fadd <2 x float> %.sroa.01492.5, %i.bjr
  %i.bjt = fadd float %.sroa.34.5, %i.bjj
  %i.bju = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  %i.bjv = load i32, ptr %i.bju, align 4, !tbaa !142
  %i.bjw = and i32 %i.bjv, 4096
  %.not1756 = icmp eq i32 %i.bjw, 0
  br i1 %.not1756, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %b3Solve2.exit2736
  %i.bjx = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bjy = fmul <2 x float> %i.bjx, %i.bid
  %i.bjz = fsub <2 x float> %.sroa.01550.1, %i.bjy
  %i.bka = shufflevector <2 x float> %i.bhv, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.bkb = fmul <3 x float> %i.nj, %i.bka
  %i.bkc = shufflevector <2 x float> %i.bhv, <2 x float> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.bkd = fmul <3 x float> %i.nk, %i.bkc
  %i.bke = fadd <3 x float> %i.bkb, %i.bkd        ; 6 uses
  %i.bkf = extractelement <3 x float> %i.bke, i64 0
  %i.bkg = fmul float %.sroa.1093199.0.copyload, %i.bkf
  %i.bkh = extractelement <3 x float> %i.bke, i64 1
  %i.bki = fmul float %.sroa.313097.0.copyload, %i.bkh
  %i.bkj = extractelement <3 x float> %i.bke, i64 2
  %i.bkk = fmul float %.sroa.703148.0.copyload, %i.bkj
  %i.bkl = fadd float %i.bki, %i.bkk
  %i.bkm = fadd float %i.bkg, %i.bkl
  %i.bkn = fsub float %.sroa.341547.5, %i.bkm
  %i.bko = shufflevector <3 x float> %i.bke, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bkp = fmul <2 x float> %i.k, %i.bko
  %i.bkq = shufflevector <3 x float> %i.bke, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bkr = fmul <2 x float> %i.i, %i.bkq
  %i.bks = shufflevector <3 x float> %i.bke, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bkt = fmul <2 x float> %i.j, %i.bks
  %i.bku = fadd <2 x float> %i.bkr, %i.bkt
  %i.bkv = fadd <2 x float> %i.bkp, %i.bku
  %i.bkw = fsub <2 x float> %.sroa.01526.5, %i.bkv
  %i.bkx = extractelement <4 x float> %i.anv, i64 1
  %foldExtExtBinop3444 = fmul <2 x float> %i.m, %foldExtExtBinop3442
  %i.bky = extractelement <2 x float> %foldExtExtBinop3444, i64 0
  %i.bkz = fsub float %i.bkx, %i.bky
  store <2 x float> %i.bjz, ptr %i.ar, align 4, !tbaa !85
  store float %i.bkz, ptr %.sroa.161559.0..sroa_idx, align 4, !tbaa !85
  store <2 x float> %i.bkw, ptr %i.bu, align 4, !tbaa !85
  store float %i.bkn, ptr %.sroa.341547.0..sroa_idx, align 4, !tbaa !85
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %b3Solve2.exit2736
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bo, i64 52
  %i.blb = load i32, ptr %i.bla, align 4, !tbaa !142
  %i.blc = and i32 %i.blb, 4096
  %.not1757 = icmp eq i32 %i.blc, 0
  br i1 %.not1757, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store <2 x float> %i.big, ptr %i.bo, align 4, !tbaa !85
  store float %i.bij, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !85
  store <2 x float> %i.bjs, ptr %i.ca, align 4, !tbaa !85
  store float %i.bjt, ptr %.sroa.34.0..sroa_idx, align 4, !tbaa !85
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3DrawWheelJoint(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, float noundef %4) local_unnamed_addr #5 !func_sanitize !180 {
bb.a:
  %i.a = icmp ne ptr %1, null, !nosanitize !10
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @146, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0569.0.copyload = load <2 x float>, ptr %i.f, align 4, !tbaa !85 ; 4 uses
  %.sroa.4570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.4570.0.copyload = load float, ptr %.sroa.4570.0..sroa_idx, align 4, !tbaa !85 ; 4 uses
  %.sroa.5571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.5571.0.copyload = load <2 x float>, ptr %.sroa.5571.0..sroa_idx, align 4, !tbaa !85 ; 6 uses
  %.sroa.6572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.6572.0.copyload = load <2 x float>, ptr %.sroa.6572.0..sroa_idx, align 4, !tbaa !85 ; 5 uses
  %.sroa.5560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5560.0.copyload = load float, ptr %.sroa.5560.0..sroa_idx, align 8
  %.sroa.6561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.6561.0.copyload = load <2 x float>, ptr %.sroa.6561.0..sroa_idx, align 4 ; 9 uses
  %.sroa.8563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.8563.0.copyload = load <2 x float>, ptr %.sroa.8563.0..sroa_idx, align 4 ; 6 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.6561.0.copyload, i64 0
  %i.g = shufflevector <2 x float> %.sroa.8563.0.copyload, <2 x float> %.sroa.6561.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.h = fmul <2 x float> %.sroa.5571.0.copyload, %i.g
  %i.i = shufflevector <2 x float> %.sroa.6572.0.copyload, <2 x float> %.sroa.5571.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.j = fmul <2 x float> %i.i, %.sroa.6561.0.copyload
  %i.k = shufflevector <2 x float> %.sroa.5571.0.copyload, <2 x float> %.sroa.6572.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.l = fmul <2 x float> %i.k, %.sroa.6561.0.copyload
  %i.m = shufflevector <2 x float> %.sroa.6561.0.copyload, <2 x float> %.sroa.8563.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.n = fmul <2 x float> %.sroa.5571.0.copyload, %i.m
  %i.o = fsub <2 x float> %i.h, %i.j
  %i.p = shufflevector <2 x float> %.sroa.8563.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.q = fmul <2 x float> %i.k, %i.p
  %i.r = fsub <2 x float> %i.l, %i.n
  %i.s = fmul <2 x float> %i.i, %i.p
  %i.t = fadd <2 x float> %i.q, %i.o
  %i.u = shufflevector <2 x float> %.sroa.6572.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.v = fmul <2 x float> %i.u, %i.m
  %i.w = fadd <2 x float> %i.r, %i.s
  %i.x = fmul <2 x float> %i.u, %i.g
  %i.y = fadd <2 x float> %i.v, %i.t              ; 13 uses
  %i.z = fadd <2 x float> %i.x, %i.w              ; 7 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.6572.0.copyload, %.sroa.8563.0.copyload
  %foldExtExtBinop600 = fmul <2 x float> %.sroa.5571.0.copyload, %.sroa.6561.0.copyload
  %foldExtExtBinop602 = fmul <2 x float> %.sroa.5571.0.copyload, %.sroa.6561.0.copyload
  %shift = shufflevector <2 x float> %foldExtExtBinop602, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop604 = fadd <2 x float> %foldExtExtBinop600, %shift
  %foldExtExtBinop606 = fmul <2 x float> %.sroa.6572.0.copyload, %.sroa.8563.0.copyload
  %foldExtExtBinop608 = fadd <2 x float> %foldExtExtBinop606, %foldExtExtBinop604
  %shift610 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop611 = fsub <2 x float> %shift610, %foldExtExtBinop608 ; 5 uses
  %i.aa = extractelement <2 x float> %foldExtExtBinop611, i64 0 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0549.0.copyload = load <2 x float>, ptr %i.ab, align 4, !tbaa !85 ; 4 uses
  %.sroa.4550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.sroa.4550.0.copyload = load float, ptr %.sroa.4550.0..sroa_idx, align 4, !tbaa !85 ; 4 uses
  %.sroa.5551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.5551.0.copyload = load <2 x float>, ptr %.sroa.5551.0..sroa_idx, align 4, !tbaa !85 ; 5 uses
  %.sroa.6552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6552.0.copyload = load <2 x float>, ptr %.sroa.6552.0..sroa_idx, align 4, !tbaa !85 ; 4 uses
  %.sroa.5540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5540.0.copyload = load float, ptr %.sroa.5540.0..sroa_idx, align 8
  %.sroa.6541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.6541.0.copyload = load <2 x float>, ptr %.sroa.6541.0..sroa_idx, align 4 ; 9 uses
  %.sroa.8543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.8543.0.copyload = load <2 x float>, ptr %.sroa.8543.0..sroa_idx, align 4 ; 6 uses
  %.sroa.09.0.vec.extract.i.i327 = extractelement <2 x float> %.sroa.6541.0.copyload, i64 0
  %foldExtExtBinop615.a = fmul <2 x float> %.sroa.0549.0.copyload, %.sroa.8543.0.copyload
  %i.ac = extractelement <2 x float> %foldExtExtBinop615.a, i64 0
  %i.ad = fmul float %.sroa.4550.0.copyload, %.sroa.09.0.vec.extract.i.i327
  %i.ae = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %foldExtExtBinop617.a = fmul <2 x float> %foldExtExtBinop611, %i.y
  %i.af = extractelement <2 x float> %foldExtExtBinop617.a, i64 0
  %i.ag = extractelement <2 x float> %i.y, i64 1  ; 6 uses
  %i.ah = fmul float %i.ag, %i.ae
  %i.ai = extractelement <2 x float> %i.z, i64 1  ; 5 uses
  %i.aj = fmul float %i.aa, %i.ai
  %i.ak = fmul float %i.ag, %i.ai
  %i.al = fmul float %i.ai, %i.ae                 ; 2 uses
  %i.am = fmul float %i.ag, %i.ag
  %i.an = fmul float %i.ag, %i.aa                 ; 2 uses
  %i.ao = fsub float %i.ak, %i.af
  %i.ap = fmul float %i.ao, 2.000000e+00          ; 3 uses
  %i.aq = fsub float %i.al, %i.an
  %i.ar = load <2 x float>, ptr %2, align 8
  %foldExtExtBinop617 = fmul <2 x float> %.sroa.0569.0.copyload, %.sroa.8563.0.copyload
  %5 = extractelement <2 x float> %foldExtExtBinop617, i64 0
  %6 = fmul float %.sroa.4570.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.as = fsub float %5, %6
  %i.at = shufflevector <2 x float> %.sroa.0569.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.au = insertelement <2 x float> %i.at, float %.sroa.4570.0.copyload, i64 1 ; 2 uses
  %i.av = fmul <2 x float> %i.au, %.sroa.6561.0.copyload
  %i.aw = fmul <2 x float> %.sroa.0569.0.copyload, %i.m
  %i.ax = fsub <2 x float> %i.av, %i.aw           ; 2 uses
  %i.ay = insertelement <2 x float> %i.at, float %.sroa.4570.0.copyload, i64 0
  %i.az = fmul <2 x float> %i.ay, %i.p
  %i.ba = fmul <2 x float> %i.au, %i.p
  %i.bb = fadd <2 x float> %i.az, %i.ax           ; 2 uses
  %i.bc = shufflevector <2 x float> %i.ax, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bd = insertelement <2 x float> %i.bc, float %i.as, i64 0
  %i.be = fadd <2 x float> %i.ba, %i.bd           ; 2 uses
  %i.bf = fmul <2 x float> %i.m, %i.bb
  %i.bg = fmul <2 x float> %i.g, %i.be
  %i.bh = fsub <2 x float> %i.bf, %i.bg
  %i.bi = shufflevector <2 x float> %i.y, <2 x float> %i.z, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bi
  %i.bk = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fadd <2 x float> %i.bl, %i.bj
  %i.bn = shufflevector <2 x float> %.sroa.6561.0.copyload, <2 x float> %i.bm, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bo = shufflevector <2 x float> %i.be, <2 x float> %i.bb, <4 x i32> <i32 poison, i32 poison, i32 0, i32 3>
  %i.bp = shufflevector <4 x float> <float 2.000000e+00, float 2.000000e+00, float poison, float poison>, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bq = fmul <4 x float> %i.bn, %i.bp           ; 4 uses
  %i.br = extractelement <4 x float> %i.bq, i64 0
  %i.bs = fsub float 1.000000e+00, %i.br          ; 2 uses
  %shift619 = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop620 = fsub <4 x float> %i.bq, %shift619
  %i.bt = extractelement <4 x float> %foldExtExtBinop620, i64 2
  %i.bu = fmul <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bv = fadd <2 x float> %.sroa.0569.0.copyload, %i.bu
  %i.bw = fmul float %i.bt, 2.000000e+00
  %i.bx = fadd float %.sroa.4570.0.copyload, %i.bw
  %i.by = fadd <2 x float> %i.ar, %i.bv           ; 6 uses
  %i.bz = fadd float %.sroa.5560.0.copyload, %i.bx ; 6 uses
  %i.ca = fadd float %i.an, %i.al
  %i.cb = fmul float %i.ca, 2.000000e+00          ; 2 uses
  %i.cc = fmul float %i.aq, 2.000000e+00
  %i.cd = extractelement <4 x float> %i.bq, i64 1
  %i.ce = fsub float 1.000000e+00, %i.cd
  %i.cf = fadd float %i.ah, %i.aj
  %i.cg = fmul float %i.cf, 2.000000e+00          ; 2 uses
  %i.ch = load <2 x float>, ptr %3, align 8
  %i.ci = shufflevector <2 x float> %.sroa.6552.0.copyload, <2 x float> %.sroa.5551.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cj = shufflevector <2 x float> %.sroa.6541.0.copyload, <2 x float> %.sroa.8543.0.copyload, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.ck = fmul <2 x float> %i.ci, %i.cj
  %i.cl = shufflevector <2 x float> %.sroa.5551.0.copyload, <2 x float> %.sroa.6552.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.cm = shufflevector <2 x float> %.sroa.8543.0.copyload, <2 x float> %.sroa.6541.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cn = fmul <2 x float> %i.cl, %i.cm
  %i.co = fsub <2 x float> %i.ck, %i.cn
  %i.cp = shufflevector <2 x float> %.sroa.8543.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.cq = fmul <2 x float> %.sroa.5551.0.copyload, %i.cp
  %i.cr = fadd <2 x float> %i.cq, %i.co
  %i.cs = shufflevector <2 x float> %.sroa.6552.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ct = fmul <2 x float> %i.cs, %.sroa.6541.0.copyload
  %i.cu = fadd <2 x float> %i.ct, %i.cr           ; 6 uses
  %i.cv = fmul <2 x float> %i.cs, %.sroa.8543.0.copyload ; 2 uses
  %i.cw = shufflevector <2 x float> %.sroa.5551.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cx = shufflevector <2 x float> %.sroa.6541.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cy = fmul <2 x float> %i.cw, %i.cx           ; 2 uses
  %i.cz = shufflevector <2 x float> %.sroa.5551.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.da = fmul <2 x float> %i.cz, %.sroa.6541.0.copyload ; 2 uses
  %i.db = fsub <2 x float> %i.da, %i.cy
  %i.dc = fadd <2 x float> %i.da, %i.cy
  %i.dd = shufflevector <2 x float> %i.db, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.de = shufflevector <2 x float> %.sroa.6552.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = shufflevector <2 x float> %.sroa.8543.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = fmul <2 x float> %i.de, %i.df
  %i.dh = fadd <2 x float> %i.dd, %i.dg           ; 2 uses
  %i.di = fadd <2 x float> %i.cv, %i.dh
  %i.dj = fsub <2 x float> %i.cv, %i.dh
  %i.dk = fsub float %i.ac, %i.ad
  %i.dl = shufflevector <2 x float> %.sroa.0549.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dm = insertelement <2 x float> %i.dl, float %.sroa.4550.0.copyload, i64 1 ; 2 uses
  %i.dn = fmul <2 x float> %i.dm, %.sroa.6541.0.copyload
  %i.do = fmul <2 x float> %.sroa.0549.0.copyload, %i.cj
  %i.dp = fsub <2 x float> %i.dn, %i.do           ; 2 uses
  %i.dq = insertelement <2 x float> %i.dl, float %.sroa.4550.0.copyload, i64 0
  %i.dr = fmul <2 x float> %i.dq, %i.cp
  %i.ds = fmul <2 x float> %i.dm, %i.cp
  %i.dt = fadd <2 x float> %i.dr, %i.dp           ; 2 uses
  %i.du = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dv = insertelement <2 x float> %i.du, float %i.dk, i64 0
  %i.dw = fadd <2 x float> %i.ds, %i.dv           ; 2 uses
  %i.dx = fmul <2 x float> %i.cj, %i.dt
  %i.dy = fmul <2 x float> %i.cm, %i.dw
  %i.dz = fsub <2 x float> %i.dx, %i.dy
  %foldExtExtBinop622 = fmul <2 x float> %.sroa.6541.0.copyload, %i.dw
  %foldExtExtBinop624 = fmul <2 x float> %.sroa.6541.0.copyload, %i.dt
  %shift626 = shufflevector <2 x float> %foldExtExtBinop624, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop627 = fsub <2 x float> %foldExtExtBinop622, %shift626
  %i.ea = extractelement <2 x float> %foldExtExtBinop627, i64 0
  %i.eb = fmul <2 x float> %i.dz, splat (float 2.000000e+00)
  %i.ec = fadd <2 x float> %.sroa.0549.0.copyload, %i.eb
  %i.ed = fmul float %i.ea, 2.000000e+00
  %i.ee = fadd float %.sroa.4550.0.copyload, %i.ed
  %i.ef = fadd <2 x float> %i.ch, %i.ec           ; 8 uses
  %i.eg = fadd float %.sroa.5540.0.copyload, %i.ee ; 8 uses
  %i.eh = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ej = fmul <2 x float> %i.eh, %i.ei           ; 2 uses
  %i.ek = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul <2 x float> %i.ek, %i.cu           ; 2 uses
  %foldExtExtBinop629 = fmul <2 x float> %i.cu, %i.cu
  %foldExtExtBinop631 = fmul <2 x float> %i.cu, %i.cu
  %i.em = fadd <2 x float> %i.el, %i.ej
  %i.en = fsub <2 x float> %i.el, %i.ej
  %i.eo = shufflevector <2 x float> %i.em, <2 x float> %i.en, <2 x i32> <i32 0, i32 3>
  %i.ep = fmul <2 x float> %i.eo, splat (float 2.000000e+00) ; 2 uses
  %shift633 = shufflevector <2 x float> %foldExtExtBinop629, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop634 = fadd <2 x float> %foldExtExtBinop631, %shift633
  %i.eq = extractelement <2 x float> %foldExtExtBinop634, i64 0
  %i.er = fmul float %i.eq, 2.000000e+00
  %i.es = fsub float 1.000000e+00, %i.er          ; 2 uses
  %i.et = icmp ne ptr %0, null, !nosanitize !10
  %i.eu = ptrtoint ptr %0 to i64, !nosanitize !10 ; 2 uses
  %i.ev = and i64 %i.eu, 7, !nosanitize !10
  %i.ew = icmp eq i64 %i.ev, 0, !nosanitize !10
  %i.ex = and i1 %i.et, %i.ew, !nosanitize !10
  br i1 %i.ex, label %bb.e, label %bb.d, !prof !11, !nosanitize !10

bb.d:                                             ; preds = %bb.c
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @148, i64 %i.eu) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.e:                                             ; preds = %bb.c
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !183 ; 4 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 -8
  %i.fb = load i32, ptr %i.fa, align 4, !nosanitize !10
  %i.fc = icmp eq i32 %i.fb, -1056584962, !nosanitize !10
  br i1 %i.fc, label %bb.f, label %bb.h, !nosanitize !10

bb.f:                                             ; preds = %bb.e
  %i.fd = getelementptr i8, ptr %i.ez, i64 -4
  %i.fe = load i32, ptr %i.fd, align 8, !nosanitize !10
  %i.ff = icmp eq i32 %i.fe, -341714709, !nosanitize !10
  br i1 %i.ff, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  %i.fg = ptrtoint ptr %i.ez to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @150, i64 %i.fg) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 11 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !184
  tail call void %i.ez(<2 x float> %i.by, float %i.bz, <2 x float> %i.ef, float %i.eg, i32 noundef 255, ptr noundef %i.fi) #7
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 390
  %i.fk = load i8, ptr %i.fj, align 2, !tbaa !146 ; 3 uses
  %i.fl = icmp ult i8 %i.fk, 2
  br i1 %i.fl, label %bb.j, label %bb.i, !prof !11, !nosanitize !10

bb.i:                                             ; preds = %bb.h
  %i.fm = zext i8 %i.fk to i64, !nosanitize !10
  tail call void @__ubsan_handle_load_invalid_value_abort(ptr nonnull @151, i64 %i.fm) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.j:                                             ; preds = %bb.h
  %i.fn = trunc nuw i8 %i.fk to i1
  br i1 %i.fn, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !114 ; 2 uses
  %i.fq = fmul float %i.ap, %i.fp
  %i.fr = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.fs = insertelement <2 x float> %i.fr, float %i.cb, i64 1 ; 2 uses
  %i.ft = insertelement <2 x float> poison, float %i.fp, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = fmul <2 x float> %i.fs, %i.fu
  %i.fw = fadd <2 x float> %i.by, %i.fv           ; 3 uses
  %i.fx = fadd float %i.bz, %i.fq                 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 228
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !147 ; 2 uses
  %i.ga = fmul float %i.ap, %i.fz
  %i.gb = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.fs, %i.gc
  %i.ge = fadd <2 x float> %i.by, %i.gd           ; 3 uses
  %i.gf = fadd float %i.bz, %i.ga                 ; 3 uses
  %i.gg = load ptr, ptr %i.ey, align 8, !tbaa !183 ; 4 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 -8
  %i.gi = load i32, ptr %i.gh, align 4, !nosanitize !10
  %i.gj = icmp eq i32 %i.gi, -1056584962, !nosanitize !10
  br i1 %i.gj, label %bb.l, label %bb.n, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  %i.gk = getelementptr i8, ptr %i.gg, i64 -4
  %i.gl = load i32, ptr %i.gk, align 8, !nosanitize !10
  %i.gm = icmp eq i32 %i.gl, -341714709, !nosanitize !10
  br i1 %i.gm, label %bb.n, label %bb.m, !prof !11, !nosanitize !10

bb.m:                                             ; preds = %bb.l
  %i.gn = ptrtoint ptr %i.gg to i64, !nosanitize !10
  tail call void @__ubsan_handle_function_type_mismatch_abort(ptr nonnull @152, i64 %i.gn) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.go = load ptr, ptr %i.fh, align 8, !tbaa !184
end_hunk_0
