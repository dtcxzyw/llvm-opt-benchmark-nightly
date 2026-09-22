Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@process:bb.a
  %i.yl = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.yg, splat (float f0x3E53DCB1)
  %.v.i.i.i110.us = select <4 x i1> %i.yl, <4 x float> %i.yk, <4 x float> %i.yi
  %i.ym = fmul reassoc nsz arcp contract afn <4 x float> %.v.i.i.i110.us, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float poison> ; 3 uses
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yo = fmul reassoc nsz arcp contract afn <4 x float> %i.yn, <float f0x3FAC47DF, float f0xBF0B6AD5, float 0.000000e+00, float 0.000000e+00>
  %i.yp = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.yq = fmul reassoc nsz arcp contract afn <4 x float> %i.yp, <float f0xBE82DEFC, float f0x3FC10BA0, float 0.000000e+00, float 0.000000e+00>
  %i.yr = fadd reassoc nsz arcp contract afn <4 x float> %i.yo, %i.yq
  %i.ys = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yt = fmul reassoc nsz arcp contract afn <4 x float> %i.ys, <float -5.111180e-02, float 2.053510e-02, float f0x3F9B1CAF, float 0.000000e+00>
  %i.yu = fadd reassoc nsz arcp contract afn <4 x float> %i.yr, %i.yt ; 2 uses
  %i.yv = fsub reassoc nsz arcp contract afn <4 x float> %i.yu, %i.yp
  %i.yw = fmul reassoc nsz arcp contract afn <4 x float> %i.yv, %i.cv
  %i.yx = fadd reassoc nsz arcp contract afn <4 x float> %i.yw, %i.yp
  %.0.i111.us = select nsz i1 %i.cl, <4 x float> %i.yx, <4 x float> %i.yu
  %i.yy = fmul reassoc nsz arcp contract afn <4 x float> %.0.i111.us, %i.bx
  %i.yz = fadd reassoc nsz arcp contract afn <4 x float> %i.yy, %.sroa.0128.12.vec.insert171
  %i.za = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yz, <4 x float> zeroinitializer)
  %i.zb = bitcast <4 x float> %i.za to <4 x i32>  ; 2 uses
  %i.zc = lshr <4 x i32> %i.zb, splat (i32 23)
  %i.zd = and <4 x i32> %i.zc, splat (i32 255)
  %i.ze = add nsw <4 x i32> %i.zd, splat (i32 -127)
  %i.zf = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ze to <4 x float>
  %i.zg = and <4 x i32> %i.zb, splat (i32 8388607)
  %i.zh = or disjoint <4 x i32> %i.zg, splat (i32 1065353216)
  %i.zi = bitcast <4 x i32> %i.zh to <4 x float>  ; 5 uses
  %i.zj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.zi, splat (float f0x3D74552F)
  %i.zk = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zj, splat (float f0xBEEE7397)
  %i.zl = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.zk, %i.zi
  %i.zm = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zl, splat (float f0x3FBD96DD)
  %i.zn = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.zm, %i.zi
  %i.zo = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zn, splat (float f0xC02153F6)
  %i.zp = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.zo, %i.zi
  %i.zq = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zp, splat (float f0x4038D96C)
  %i.zr = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zi, splat (float -1.000000e+00)
  %i.zs = fmul reassoc nsz arcp contract afn <4 x float> %i.zq, %i.zr
  %i.zt = fadd reassoc nsz arcp contract afn <4 x float> %i.zs, %i.zf
  %i.zu = fmul reassoc nsz arcp contract afn <4 x float> %i.zt, %.sroa.0126.12.vec.insert173
  %i.zv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zu, <4 x float> splat (float 1.290000e+02))
  %i.zw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.zv, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.zx = fadd reassoc nsz arcp contract afn <4 x float> %i.zw, splat (float -5.000000e-01)
  %i.zy = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.zx) ; 2 uses
  %i.zz = sitofp reassoc nsz arcp contract afn <4 x i32> %i.zy to <4 x float>
  %i.aaa = fsub reassoc nsz arcp contract afn <4 x float> %i.zw, %i.zz ; 4 uses
  %i.aab = shl <4 x i32> %i.zy, splat (i32 23)
  %i.aac = add <4 x i32> %i.aab, splat (i32 1065353216)
  %i.aad = bitcast <4 x i32> %i.aac to <4 x float>
  %i.aae = fmul reassoc nsz arcp contract afn <4 x float> %i.aaa, splat (float f0x3C5DBE69)
  %i.aaf = fadd reassoc nsz arcp contract afn <4 x float> %i.aae, splat (float f0x3D5509F9)
  %i.aag = fmul reassoc nsz arcp contract afn <4 x float> %i.aaf, %i.aaa
  %i.aah = fadd reassoc nsz arcp contract afn <4 x float> %i.aag, splat (float f0x3E773CC5)
  %i.aai = fmul reassoc nsz arcp contract afn <4 x float> %i.aah, %i.aaa
  %i.aaj = fadd reassoc nsz arcp contract afn <4 x float> %i.aai, splat (float f0x3F3168B3)
  %i.aak = fmul reassoc nsz arcp contract afn <4 x float> %i.aaj, %i.aaa
  %i.aal = fadd reassoc nsz arcp contract afn <4 x float> %i.aak, splat (float f0x3F800016)
  %i.aam = fmul reassoc nsz arcp contract afn <4 x float> %i.aal, %i.aad ; 4 uses
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i109.us
  %i.aan = extractelement <4 x float> %i.aam, i64 0
  %i.aao = fmul reassoc nsz arcp contract afn float %i.aan, f0x3E937A01
  %i.aap = shufflevector <4 x float> %i.aam, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.aaq = fmul reassoc nsz arcp contract afn <2 x float> %i.aap, <float f0x3F363D62, float f0x38B3B9D6> ; 2 uses
  %i.aar = extractelement <2 x float> %i.aaq, i64 0
  %i.aas = fadd reassoc nsz arcp contract afn float %i.aao, %i.aar
  %i.aat = extractelement <2 x float> %i.aaq, i64 1
  %i.aau = fadd reassoc nsz arcp contract afn float %i.aas, %i.aat
  %i.aav = insertelement <4 x float> poison, float %i.aau, i64 0
  %i.aaw = shufflevector <4 x float> %i.aav, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aax = fsub reassoc nsz arcp contract afn <4 x float> %i.aam, %i.aaw
  %i.aay = fmul reassoc nsz arcp contract afn <4 x float> %i.aax, %i.cx
  %i.aaz = fadd reassoc nsz arcp contract afn <4 x float> %i.aay, %i.aaw
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i109.us
  %.1.i112.us = phi nsz <4 x float> [ %i.aaz, %bb.t ], [ %i.aam, %.lr.ph.i109.us ] ; 2 uses
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aba = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.1.i112.us, <4 x float> zeroinitializer)
  %i.abb = fmul reassoc nsz arcp contract afn <4 x float> %i.aba, %i.da
  %i.abc = bitcast <4 x float> %i.abb to <4 x i32> ; 2 uses
  %i.abd = lshr <4 x i32> %i.abc, splat (i32 23)
  %i.abe = and <4 x i32> %i.abd, splat (i32 255)
  %i.abf = add nsw <4 x i32> %i.abe, splat (i32 -127)
  %i.abg = sitofp reassoc nsz arcp contract afn <4 x i32> %i.abf to <4 x float>
  %i.abh = and <4 x i32> %i.abc, splat (i32 8388607)
  %i.abi = or disjoint <4 x i32> %i.abh, splat (i32 1065353216)
  %i.abj = bitcast <4 x i32> %i.abi to <4 x float> ; 5 uses
  %i.abk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abj, splat (float f0x3D74552F)
  %i.abl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abk, splat (float f0xBEEE7397)
  %i.abm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abl, %i.abj
  %i.abn = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abm, splat (float f0x3FBD96DD)
  %i.abo = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abn, %i.abj
  %i.abp = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abo, splat (float f0xC02153F6)
  %i.abq = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abp, %i.abj
  %i.abr = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abq, splat (float f0x4038D96C)
  %i.abs = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abj, splat (float -1.000000e+00)
  %i.abt = fmul reassoc nsz arcp contract afn <4 x float> %i.abr, %i.abs
  %i.abu = fadd reassoc nsz arcp contract afn <4 x float> %i.abt, %i.abg
  %i.abv = fmul reassoc nsz arcp contract afn <4 x float> %i.abu, %.sroa.0136.12.vec.insert
  %i.abw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.abv, <4 x float> splat (float 1.290000e+02))
  %i.abx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abw, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.aby = fadd reassoc nsz arcp contract afn <4 x float> %i.abx, splat (float -5.000000e-01)
  %i.abz = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.aby) ; 2 uses
  %i.aca = sitofp reassoc nsz arcp contract afn <4 x i32> %i.abz to <4 x float>
  %i.acb = fsub reassoc nsz arcp contract afn <4 x float> %i.abx, %i.aca ; 4 uses
  %i.acc = shl <4 x i32> %i.abz, splat (i32 23)
  %i.acd = add <4 x i32> %i.acc, splat (i32 1065353216)
  %i.ace = bitcast <4 x i32> %i.acd to <4 x float>
  %i.acf = fmul reassoc nsz arcp contract afn <4 x float> %i.acb, splat (float f0x3C5DBE69)
  %i.acg = fadd reassoc nsz arcp contract afn <4 x float> %i.acf, splat (float f0x3D5509F9)
  %i.ach = fmul reassoc nsz arcp contract afn <4 x float> %i.acg, %i.acb
  %i.aci = fadd reassoc nsz arcp contract afn <4 x float> %i.ach, splat (float f0x3E773CC5)
  %i.acj = fmul reassoc nsz arcp contract afn <4 x float> %i.aci, %i.acb
  %i.ack = fadd reassoc nsz arcp contract afn <4 x float> %i.acj, splat (float f0x3F3168B3)
  %i.acl = fmul reassoc nsz arcp contract afn <4 x float> %i.ack, %i.acb
  %i.acm = fadd reassoc nsz arcp contract afn <4 x float> %i.acl, splat (float f0x3F800016)
  %i.acn = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, %i.ace
  %i.aco = fmul reassoc nsz arcp contract afn <4 x float> %i.acn, %i.acm
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.i113.us = phi nsz <4 x float> [ %i.aco, %bb.v ], [ %.1.i112.us, %bb.u ] ; 3 uses
  %i.acp = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acq = fmul reassoc nsz arcp contract afn <4 x float> %i.acp, <float f0x3F4C346C, float f0x3E937A01, float 0.000000e+00, float 0.000000e+00>
  %i.acr = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.acs = fmul reassoc nsz arcp contract afn <4 x float> %i.acr, <float f0x3E0A6FB1, float f0x3F363D62, float 0.000000e+00, float 0.000000e+00>
  %i.act = fadd reassoc nsz arcp contract afn <4 x float> %i.acq, %i.acs
  %i.acu = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.acv = fmul reassoc nsz arcp contract afn <4 x float> %i.acu, <float 3.135340e-02, float f0x38B3B9D6, float f0x3F5340F6, float 0.000000e+00>
  %i.acw = fadd reassoc nsz arcp contract afn <4 x float> %i.act, %i.acv ; 3 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.xy
  %i.acy = fmul reassoc nsz arcp contract afn <4 x float> %i.acw, <float f0x3F84C0A6, float 1.000000e+00, float f0x3F9B2B9B, float 1.000000e+00> ; 3 uses
  %i.acz = bitcast <4 x float> %i.acy to <4 x i32>
  %i.ada = sitofp reassoc nsz arcp contract afn <4 x i32> %i.acz to <4 x float>
  %i.adb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ada, splat (float f0x3EAAAAAB)
  %i.adc = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.adb)
  %i.add = add <4 x i32> %i.adc, splat (i32 709921077)
  %i.ade = bitcast <4 x i32> %i.add to <4 x float> ; 4 uses
  %i.adf = fmul reassoc nsz arcp contract afn <4 x float> %i.ade, %i.ade
  %i.adg = fmul reassoc nsz arcp contract afn <4 x float> %i.adf, %i.ade ; 2 uses
  %factor.i.i.i114.us = fmul reassoc nsz arcp contract afn <4 x float> %i.acw, <float f0x4004C0A6, float 2.000000e+00, float f0x401B2B9B, float 2.000000e+00>
  %i.adh = fadd reassoc nsz arcp contract afn <4 x float> %i.adg, %factor.i.i.i114.us
  %i.adi = fmul reassoc nsz arcp contract afn <4 x float> %i.adh, %i.ade
  %factor19.i.i.i115.us = fmul reassoc nsz arcp contract afn <4 x float> %i.adg, splat (float 2.000000e+00)
  %i.adj = fadd reassoc nsz arcp contract afn <4 x float> %factor19.i.i.i115.us, %i.acy
  %i.adk = fdiv reassoc nsz arcp contract afn <4 x float> %i.adi, %i.adj
  %i.adl = fmul reassoc nsz arcp contract afn <4 x float> %i.acw, <float f0x410137F7, float f0x40F92F69, float f0x41170A26, float f0x40F92F69>
  %i.adm = fadd reassoc nsz arcp contract afn <4 x float> %i.adl, splat (float f0x3E0D3DCB)
  %i.adn = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.acy, splat (float f0x3C111AA7)
  %.v.i.i44.i.us = select <4 x i1> %i.adn, <4 x float> %i.adm, <4 x float> %i.adk ; 2 uses
  %i.ado = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.adp = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.adq = fsub reassoc nsz arcp contract afn <4 x float> %i.ado, %i.adp
  %i.adr = fmul reassoc nsz arcp contract afn <4 x float> %i.adq, <float 1.160000e+02, float 5.000000e+02, float 2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.adr, ptr %i.acx, align 16, !tbaa !35, !nontemporal !143
  %i.ads = add nuw i64 %.0437.i.us, 1             ; 2 uses
  %exitcond.not.i116.us = icmp eq i64 %i.ads, %i.xx
  br i1 %exitcond.not.i116.us, label %_process_legacy.exit.us148, label %.lr.ph.i109.us

_process_legacy.exit.us148:                       ; preds = %bb.w, %.lr.ph.split.us146
  %i.adt = icmp ult i64 %i.xs, %i.p
  br i1 %i.adt, label %.lr.ph.split.us146, label %._crit_edge

._crit_edge:                                      ; preds = %_process_legacy.exit.us148, %_process_legacy.exit.us145, %_process_legacy.exit.us, %_process_legacy.exit, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.x

_process_legacy.exit:                             ; preds = %.lr.ph, %_process_legacy.exit
  %.0142 = phi i64 [ %i.adu, %_process_legacy.exit ], [ 0, %.lr.ph ]
  %i.adu = add i64 %.0142, %i.bz                  ; 2 uses
  %i.adv = icmp ult i64 %i.adu, %i.p
  br i1 %i.adv, label %_process_legacy.exit, label %._crit_edge

bb.x:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !47  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load atomic i32, ptr %i.g seq_cst, align 4
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %bb.c, label %apply_lift_neutralize.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 10 uses
  %i.k = load ptr, ptr %i.a, align 16, !tbaa !47  ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = load float, ptr %i.l, align 16, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.q = load float, ptr %i.p, align 8, !tbaa !12
  %i.r = fmul reassoc nsz arcp contract afn float %i.n, 2.000000e-03
  %i.s = fmul reassoc nsz arcp contract afn float %i.o, 8.620690e-03
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0x3E0D3DCB ; 7 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.q, 5.000000e-03
  %i.v = fadd reassoc nsz arcp contract afn float %i.t, %i.r ; 5 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, f0x3E53DCB1
  %i.x = fmul reassoc nsz arcp contract afn float %i.v, %i.v
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %i.v
  %i.z = fmul reassoc nsz arcp contract afn float %i.v, f0x3E038026
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, f0xBC911AA6
  %i.ab = select reassoc nsz arcp contract afn i1 %i.w, float %i.y, float %i.aa ; 3 uses
  %3 = fcmp reassoc nsz arcp contract afn ogt float %i.t, f0x3E53DCB1
  %i.ac = fmul reassoc nsz arcp contract afn float %i.t, %i.t
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.t
  %i.ae = fmul reassoc nsz arcp contract afn float %i.t, f0x3E038026
  %4 = fadd reassoc nsz arcp contract afn float %i.ae, f0xBC911AA6
  %5 = select reassoc nsz arcp contract afn i1 %3, float %i.ad, float %4 ; 6 uses
  %6 = fsub reassoc nsz arcp contract afn float %i.t, %i.u ; 5 uses
  %7 = fcmp reassoc nsz arcp contract afn ogt float %6, f0x3E53DCB1
  %8 = fmul reassoc nsz arcp contract afn float %6, %6
  %9 = fmul reassoc nsz arcp contract afn float %8, %6
  %10 = fmul reassoc nsz arcp contract afn float %6, f0x3E038026
  %11 = fadd reassoc nsz arcp contract afn float %10, f0xBC911AA6
  %12 = select reassoc nsz arcp contract afn i1 %7, float %9, float %11 ; 3 uses
  %13 = fmul reassoc nsz arcp contract afn float %i.ab, 9.642000e-01
  %14 = fmul reassoc nsz arcp contract afn float %i.ab, f0x3FA61CF4
  %15 = fmul reassoc nsz arcp contract afn float %5, f0x3E82DEFC
  %16 = fsub reassoc nsz arcp contract afn float %14, %15
  %17 = fmul reassoc nsz arcp contract afn float %12, f0xBD2CB230
  %18 = fadd reassoc nsz arcp contract afn float %16, %17 ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, f0x3F066D1A
  %i.ag = fmul reassoc nsz arcp contract afn float %5, f0x3FC10BA0
  %19 = fsub reassoc nsz arcp contract afn float %i.ag, %i.af
  %i.ah = fmul reassoc nsz arcp contract afn float %12, f0x3C8AC481
  %20 = fadd reassoc nsz arcp contract afn float %19, %i.ah ; 2 uses
  %21 = fadd reassoc nsz arcp contract afn float %13, %5
  %i.ai = fmul reassoc nsz arcp contract afn float %21, 0.000000e+00
  %i.aj = fmul reassoc nsz arcp contract afn float %12, f0x3F7FE762
  %i.ak = fadd reassoc nsz arcp contract afn float %i.ai, %i.aj ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store float %18, ptr %22, align 4, !tbaa !12
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 268
  store float %20, ptr %.sroa.11.0..sroa_idx.i, align 4, !tbaa !12
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  store float %i.ak, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !12
  %23 = getelementptr inbounds nuw i8, ptr %i.k, i64 300
  store i32 1, ptr %23, align 4, !tbaa !15
  %24 = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %25 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %26 = load float, ptr %25, align 4, !tbaa !12
  %i.al = fsub reassoc nsz arcp contract afn float 2.000000e+00, %26
  %27 = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.al
  %28 = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %5, float %27)
  %29 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %30 = load float, ptr %29, align 4, !tbaa !12
  %31 = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %32 = load float, ptr %31, align 4, !tbaa !12
  %33 = fsub reassoc nsz arcp contract afn float 2.000000e+00, %32
  %34 = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %33
  %35 = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %5, float %34)
  %36 = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %37 = load float, ptr %36, align 4, !tbaa !12
  %38 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.am = load float, ptr %38, align 4, !tbaa !12
  %i.an = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.am
  %i.ao = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.an
  %i.ap = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %5, float %i.ao)
  %39 = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.aq = load float, ptr %39, align 4, !tbaa !12
  %40 = fadd reassoc nsz arcp contract afn float %28, 1.000000e+00
  %41 = fmul reassoc nsz arcp contract afn float %30, %18
  %42 = fsub reassoc nsz arcp contract afn float %40, %41
  %43 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store float %42, ptr %43, align 4, !tbaa !12
  %44 = fmul reassoc nsz arcp contract afn float %20, %37
  %45 = fsub reassoc nsz arcp contract afn float 1.000000e+00, %44
  %i.ar = fadd reassoc nsz arcp contract afn float %45, %35
  %46 = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  store float %i.ar, ptr %46, align 4, !tbaa !12
  %47 = fmul reassoc nsz arcp contract afn float %i.ak, %i.aq
  %48 = fsub reassoc nsz arcp contract afn float 1.000000e+00, %47
  %49 = fadd reassoc nsz arcp contract afn float %48, %i.ap
  %50 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store float %49, ptr %50, align 4, !tbaa !12
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 104
  %i.au = atomicrmw add ptr %i.at, i32 1 seq_cst, align 4 ; 0 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !92
  %i.ax = load float, ptr %43, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.aw, float noundef %i.ax) #23
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !93
  %i.ba = load float, ptr %46, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.az, float noundef %i.ba) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !94
  %i.bd = load float, ptr %50, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bc, float noundef %i.bd) #23
  %i.be = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !49
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef nonnull %24)
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bk = atomicrmw sub ptr %i.bj, i32 1 seq_cst, align 4 ; 0 uses
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.bl, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.d:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !97
  %i.bo = icmp eq ptr %1, %i.bn
  br i1 %i.bo, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = load atomic i32, ptr %i.bq seq_cst, align 4
  %.not.i29 = icmp eq i32 %i.br, 0
  br i1 %.not.i29, label %bb.f, label %apply_lift_neutralize.exit

bb.f:                                             ; preds = %bb.e
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !91 ; 8 uses
  %i.bu = load ptr, ptr %i.a, align 16, !tbaa !47 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12
  %i.by = load float, ptr %i.bv, align 16, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !12
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bx, 2.000000e-03
  %i.cc = fmul reassoc nsz arcp contract afn float %i.by, 8.620690e-03
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, f0x3E0D3DCB ; 7 uses
  %i.ce = fmul reassoc nsz arcp contract afn float %i.ca, 5.000000e-03
  %i.cf = fadd reassoc nsz arcp contract afn float %i.cd, %i.cb ; 5 uses
  %i.cg = fcmp reassoc nsz arcp contract afn ogt float %i.cf, f0x3E53DCB1
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cf, %i.cf
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, %i.cf
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cf, f0x3E038026
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, f0xBC911AA6
  %i.cl = fcmp reassoc nsz arcp contract afn ogt float %i.cd, f0x3E53DCB1
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cd, %i.cd
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.cd
  %i.co = fmul reassoc nsz arcp contract afn float %i.cd, f0x3E038026
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, f0xBC911AA6
  %i.cq = fsub reassoc nsz arcp contract afn float %i.cd, %i.ce ; 5 uses
  %i.cr = fcmp reassoc nsz arcp contract afn ogt float %i.cq, f0x3E53DCB1
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cq, %i.cq
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.cq
  %i.cu = fmul reassoc nsz arcp contract afn float %i.cq, f0x3E038026
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, f0xBC911AA6
  %i.cw = select reassoc nsz arcp contract afn i1 %i.cr, float %i.ct, float %i.cv ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, f0x3F7FE762
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bu, i64 276
  %.sroa.11.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.bu, i64 280
  %.sroa.18.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.bu, i64 284
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bu, i64 304
  store i32 1, ptr %i.cz, align 4, !tbaa !15
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bt, i64 28
  %i.dh = select reassoc nsz arcp contract afn i1 %i.cl, float %i.cn, float %i.cp ; 3 uses
  %i.di = select reassoc nsz arcp contract afn i1 %i.cg, float %i.ci, float %i.ck ; 2 uses
  %i.dj = fmul reassoc nsz arcp contract afn float %i.di, 9.642000e-01
  %i.dk = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dh, i64 1 ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, <float f0x3F066D1A, float f0x3E82DEFC>
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %i.dl, <float f0x3FA61CF4, float f0x3FC10BA0>
  %i.dp = fsub reassoc nsz arcp contract afn <2 x float> %i.do, %i.dn
  %i.dq = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dr, <float f0xBD2CB230, float f0x3C8AC481>
  %i.dt = fadd reassoc nsz arcp contract afn <2 x float> %i.dp, %i.ds ; 3 uses
  %i.du = fadd reassoc nsz arcp contract afn float %i.dj, %i.dh
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, 0.000000e+00
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, %i.cx ; 2 uses
  %i.dx = extractelement <2 x float> %i.dt, i64 0
  store float %i.dx, ptr %i.cy, align 4, !tbaa !12
  %i.dy = extractelement <2 x float> %i.dt, i64 1
  store float %i.dy, ptr %.sroa.11.0..sroa_idx.i30, align 4, !tbaa !12
  store float %i.dw, ptr %.sroa.18.0..sroa_idx.i31, align 4, !tbaa !12
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.dh) ; 2 uses
  %i.ea = load <2 x float>, ptr %i.db, align 4, !tbaa !12
  %i.eb = fmul reassoc nsz arcp contract afn <2 x float> %i.dt, %i.ea
  %i.ec = load <2 x float>, ptr %i.dc, align 4, !tbaa !12
  %i.ed = fadd reassoc nsz arcp contract afn <2 x float> %i.ec, %i.eb
  %i.ee = fadd reassoc nsz arcp contract afn <2 x float> %i.ed, splat (float -1.000000e+00)
  %i.ef = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.ee)
  %i.eg = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = fdiv reassoc nsz arcp contract afn <2 x float> %i.eh, %i.ef
  %i.ej = load float, ptr %i.dd, align 4, !tbaa !12
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.dw
  %i.el = load float, ptr %i.de, align 4, !tbaa !12
  %i.em = fadd reassoc nsz arcp contract afn float %i.ek, %i.el
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, -1.000000e+00
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.en)
  %i.ep = fdiv reassoc nsz arcp contract afn float %i.dz, %i.eo
  %i.eq = fpext <2 x float> %i.ei to <2 x double>
  %i.er = fsub reassoc nsz arcp contract afn <2 x double> splat (double 2.000000e+00), %i.eq ; 3 uses
  %i.es = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.er, splat (double 2.000000e+00)
  %i.et = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.er, splat (double f0x3F1A36E2E0000000)
  %i.eu = select <2 x i1> %i.et, <2 x double> splat (double f0x3F1A36E2E0000000), <2 x double> %i.er
  %i.ev = fptrunc <2 x double> %i.eu to <2 x float>
  %i.ew = select <2 x i1> %i.es, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ev
  store <2 x float> %i.ew, ptr %i.df, align 4, !tbaa !12
  %i.ex = fpext reassoc nsz arcp contract afn float %i.ep to double
  %i.ey = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.ex ; 3 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ogt double %i.ey, 2.000000e+00
  %i.fa = fcmp reassoc nsz arcp contract afn olt double %i.ey, f0x3F1A36E2E0000000
  %i.fb = select reassoc nsz arcp contract afn i1 %i.fa, double f0x3F1A36E2E0000000, double %i.ey
  %i.fc = fptrunc reassoc nsz arcp contract afn double %i.fb to float
  %i.fd = select i1 %i.ez, float 2.000000e+00, float %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 2 uses
  store float %i.fd, ptr %i.fe, align 4, !tbaa !12
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 104
  %i.fh = atomicrmw add ptr %i.fg, i32 1 seq_cst, align 4 ; 0 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bu, i64 152
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !98
  %i.fk = load float, ptr %i.df, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.fj, float noundef %i.fk) #23
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bu, i64 160
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !99
  %i.fn = load float, ptr %i.dg, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.fm, float noundef %i.fn) #23
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bu, i64 168
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !100
  %i.fq = load float, ptr %i.fe, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.fp, float noundef %i.fq) #23
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !97
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !101
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.fs, ptr noundef %i.fu, ptr noundef nonnull %i.da)
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 104
  %i.fx = atomicrmw sub ptr %i.fw, i32 1 seq_cst, align 4 ; 0 uses
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.fy, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.g:                                             ; preds = %bb.d
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !102
  %i.gb = icmp eq ptr %1, %i.ga
  br i1 %i.gb, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.gc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 104
  %i.ge = load atomic i32, ptr %i.gd seq_cst, align 4
  %.not.i32 = icmp eq i32 %i.ge, 0
  br i1 %.not.i32, label %bb.i, label %apply_lift_neutralize.exit

bb.i:                                             ; preds = %bb.h
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !91 ; 8 uses
  %i.gh = load ptr, ptr %i.a, align 16, !tbaa !47 ; 9 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !12
  %i.gl = load float, ptr %i.gi, align 16, !tbaa !12
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.gn = load float, ptr %i.gm, align 8, !tbaa !12
  %i.go = fmul reassoc nsz arcp contract afn float %i.gk, 2.000000e-03
  %i.gp = fmul reassoc nsz arcp contract afn float %i.gl, 8.620690e-03
  %i.gq = fadd reassoc nsz arcp contract afn float %i.gp, f0x3E0D3DCB ; 3 uses
  %i.gr = fmul reassoc nsz arcp contract afn float %i.gn, 5.000000e-03
  %i.gs = fadd reassoc nsz arcp contract afn float %i.gq, %i.go
  %i.gt = fsub reassoc nsz arcp contract afn float %i.gq, %i.gr ; 5 uses
  %i.gu = fcmp reassoc nsz arcp contract afn ogt float %i.gt, f0x3E53DCB1
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gt, %i.gt
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gv, %i.gt
  %i.gx = fmul reassoc nsz arcp contract afn float %i.gt, f0x3E038026
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gx, f0xBC911AA6
  %i.gz = select reassoc nsz arcp contract afn i1 %i.gu, float %i.gw, float %i.gy ; 2 uses
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gz, f0x3F7FE762
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gh, i64 288
  %.sroa.11.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.gh, i64 292
  %.sroa.18.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.gh, i64 296
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gh, i64 308
  store i32 1, ptr %i.hc, align 4, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gg, i64 36
  %i.he = getelementptr inbounds nuw i8, ptr %i.gg, i64 24
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gg, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gg, i64 40 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gg, i64 44
  %i.hk = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.gq, i64 1 ; 5 uses
  %i.hm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.hl, splat (float f0x3E53DCB1)
  %i.hn = fmul reassoc nsz arcp contract afn <2 x float> %i.hl, %i.hl
  %i.ho = fmul reassoc nsz arcp contract afn <2 x float> %i.hn, %i.hl
end_hunk_0
begin_hunk_1_@llvm.maxnum.f32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #22

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #3

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare void @gtk_container_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

declare ptr @dt_conf_get_string(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_text(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_show(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_grid_new() local_unnamed_addr #3

declare void @gtk_grid_set_column_homogeneous(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_grid_set_column_spacing(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_grid_attach_next_to(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gtk_notebook_new() local_unnamed_addr #3

declare i32 @gtk_notebook_append_page(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_RGB_sliders(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #14 {
bb.a:
  %i.a = load float, ptr %3, align 4, !tbaa !12   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !12 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !12 ; 7 uses
  %i.f = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00
  br i1 %i.f, label %hsl2rgb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fpext reassoc nsz arcp contract afn float %i.e to double ; 2 uses
  %i.h = fcmp reassoc nsz arcp contract afn olt float %i.e, 5.000000e-01
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = fpext reassoc nsz arcp contract afn float %i.c to double
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, 1.000000e+00
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptrunc reassoc nsz arcp contract afn double %i.k to float
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = fadd reassoc nsz arcp contract afn float %i.e, %i.c
  %i.n = fmul reassoc nsz arcp contract afn float %i.c, %i.e
  %i.o = fsub reassoc nsz arcp contract afn float %i.m, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi float [ %i.l, %bb.c ], [ %i.o, %bb.d ] ; 10 uses
  %i.q = fmul reassoc nsz arcp contract afn double %i.g, 2.000000e+00
  %i.r = fpext reassoc nsz arcp contract afn float %i.p to double
  %i.s = fsub reassoc nsz arcp contract afn double %i.q, %i.r
  %i.t = fptrunc reassoc nsz arcp contract afn double %i.s to float ; 15 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.a, 6.000000e+00 ; 8 uses
  %i.v = fcmp reassoc nsz arcp contract afn olt float %i.u, 4.000000e+00 ; 2 uses
  %.v.i = select i1 %i.v, float 2.000000e+00, float -4.000000e+00
  %i.w = fadd reassoc nsz arcp contract afn float %.v.i, %i.u ; 5 uses
  %i.x = fcmp reassoc nsz arcp contract afn olt float %i.w, 1.000000e+00
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.t
  br label %hue2rgb.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.w, 3.000000e+00
  br i1 %i.ab, label %hue2rgb.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = fcmp reassoc nsz arcp contract afn olt float %i.w, 4.000000e+00
  %i.ad = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ae = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.w
  %i.af = fmul reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %i.t
  %i.ah = select reassoc nsz arcp contract afn i1 %i.ac, float %i.ag, float %i.t
  br label %hue2rgb.exit.i

hue2rgb.exit.i:                                   ; preds = %bb.h, %bb.g, %bb.f
  %.0.i.i = phi nsz float [ %i.aa, %bb.f ], [ %i.ah, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn olt float %i.u, 1.000000e+00
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %hue2rgb.exit.i
  %i.aj = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.u
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, %i.t
  br label %hue2rgb.exit36.i

bb.j:                                             ; preds = %hue2rgb.exit.i
  %i.am = fcmp reassoc nsz arcp contract afn olt float %i.u, 3.000000e+00
  br i1 %i.am, label %hue2rgb.exit36.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.ao = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.u
  %i.ap = fmul reassoc nsz arcp contract afn float %i.an, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, %i.t
  %i.ar = select reassoc nsz arcp contract afn i1 %i.v, float %i.aq, float %i.t
  br label %hue2rgb.exit36.i

hue2rgb.exit36.i:                                 ; preds = %bb.k, %bb.j, %bb.i
  %.0.i35.i = phi nsz float [ %i.al, %bb.i ], [ %i.ar, %bb.k ], [ %i.p, %bb.j ] ; 3 uses
  %i.as = fcmp reassoc nsz arcp contract afn ogt float %i.u, 2.000000e+00
  %.v34.i = select i1 %i.as, float -2.000000e+00, float 4.000000e+00
  %i.at = fadd reassoc nsz arcp contract afn float %.v34.i, %i.u ; 5 uses
  %i.au = fcmp reassoc nsz arcp contract afn olt float %i.at, 1.000000e+00
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %hue2rgb.exit36.i
  %i.av = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.at
  %i.ax = fadd reassoc nsz arcp contract afn float %i.aw, %i.t
  br label %hsl2rgb.exit

bb.m:                                             ; preds = %hue2rgb.exit36.i
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %i.at, 3.000000e+00
  br i1 %i.ay, label %hsl2rgb.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = fcmp reassoc nsz arcp contract afn olt float %i.at, 4.000000e+00
  %i.ba = fsub reassoc nsz arcp contract afn float %i.p, %i.t
  %i.bb = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.at
  %i.bc = fmul reassoc nsz arcp contract afn float %i.ba, %i.bb
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.t
  %i.be = select reassoc nsz arcp contract afn i1 %i.az, float %i.bd, float %i.t
  br label %hsl2rgb.exit

hsl2rgb.exit:                                     ; preds = %bb.l, %bb.m, %bb.n, %bb.a
  %.sroa.0.0 = phi nsz float [ %i.e, %bb.a ], [ %.0.i.i, %bb.n ], [ %.0.i.i, %bb.m ], [ %.0.i.i, %bb.l ]
  %.sroa.6.0 = phi nsz float [ %i.e, %bb.a ], [ %.0.i35.i, %bb.n ], [ %.0.i35.i, %bb.m ], [ %.0.i35.i, %bb.l ]
  %.sroa.9.0 = phi nsz float [ %i.e, %bb.a ], [ %i.be, %bb.n ], [ %i.p, %bb.m ], [ %i.ax, %bb.l ]
  %i.bf = fcmp reassoc nsz arcp contract afn une float %i.a, -1.000000e+00
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %hsl2rgb.exit
  %i.bg = insertelement <2 x float> poison, float %.sroa.0.0, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %.sroa.6.0, i64 1
  %i.bi = fmul reassoc nsz arcp contract afn <2 x float> %i.bh, splat (float 2.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.bi, ptr %i.bj, align 4, !tbaa !12
  %i.bl = fmul reassoc nsz arcp contract afn float %.sroa.9.0, 2.000000e+00
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store float %i.bl, ptr %i.bm, align 4, !tbaa !12
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  %i.bp = atomicrmw add ptr %i.bo, i32 1 seq_cst, align 4 ; 0 uses
  %i.bq = load float, ptr %i.bj, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %0, float noundef %i.bq) #23
  %i.br = load float, ptr %i.bk, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %1, float noundef %i.br) #23
  %i.bs = load float, ptr %i.bm, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %2, float noundef %i.bs) #23
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.bv = atomicrmw sub ptr %i.bu, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %hsl2rgb.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.pow.v2f32(<2 x float>, <2 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <12 x float> @llvm.masked.load.v12f32.p0(ptr captures(none), <12 x i1>, <12 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x ptr> @llvm.masked.load.v4p0.p0(ptr captures(none), <4 x i1>, <4 x ptr>) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!17 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!18 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!19 = !{!"dt_dev_histogram_collection_params_t", !18, i64 0, !8, i64 8}
!20 = !{!"p1 int", !13, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !21, i64 8, !8, i64 16, !8, i64 20}
!23 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!24 = !{!"short", !7, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 2}
!26 = !{!"", !8, i64 0, !7, i64 16}
!27 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !25, i64 48, !26, i64 64, !7, i64 96, !8, i64 112}
!28 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!29 = !{!"p1 float", !13, i64 0}
!30 = !{!"dt_dev_distorted_mask_cache_t", !29, i64 0, !23, i64 8, !21, i64 32, !21, i64 40}
!31 = !{!"dt_dev_pixelpipe_iop_t", !16, i64 0, !17, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !19, i64 40, !20, i64 56, !22, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !21, i64 120, !8, i64 128, !8, i64 132, !23, i64 136, !23, i64 156, !23, i64 176, !23, i64 196, !8, i64 216, !8, i64 220, !27, i64 224, !27, i64 352, !7, i64 480, !8, i64 516, !28, i64 520, !30, i64 528, !30, i64 576}
!32 = !{!31, !13, i64 16}
!33 = !{!"dt_iop_colorbalance_data_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!34 = !{!33, !8, i64 0}
!35 = !{!7, !7, i64 0}
!36 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!37 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!38 = !{!"dt_pthread_mutex_t", !7, i64 0}
!39 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!40 = !{!"", !28, i64 0, !28, i64 8}
!41 = !{!"", !16, i64 0, !8, i64 8}
!42 = !{!"", !40, i64 0, !41, i64 16}
!43 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!44 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!45 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!46 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !36, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !20, i64 608, !22, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !37, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !38, i64 712, !13, i64 752, !13, i64 760, !39, i64 768, !39, i64 776, !13, i64 784, !42, i64 792, !43, i64 824, !43, i64 832, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !43, i64 872, !8, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !44, i64 912, !44, i64 920, !43, i64 928, !43, i64 936, !8, i64 944, !45, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !43, i64 1096, !13, i64 1104, !8, i64 1112}
!47 = !{!46, !13, i64 704}
!48 = !{!"dt_iop_colorbalance_gui_data_t", !43, i64 0, !43, i64 8, !43, i64 16, !7, i64 24, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !7, i64 264, !7, i64 276, !7, i64 288, !7, i64 300, !7, i64 312, !7, i64 324}
!49 = !{!48, !43, i64 72}
!50 = !{!"dt_codepath_t", !8, i64 0}
!51 = !{!"p1 _ZTS6_GList", !13, i64 0}
!52 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!53 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!54 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!55 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!56 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!57 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!58 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!59 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!60 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!61 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!62 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!63 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!64 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!65 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!66 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!67 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!68 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!69 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!70 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!71 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!72 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!73 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!74 = !{!"p1 omnipotent char", !13, i64 0}
!75 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!76 = !{!"_Bool", !7, i64 0}
!77 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!78 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!79 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!80 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!81 = !{!"", !75, i64 0, !38, i64 8, !7, i64 48, !76, i64 96, !76, i64 97, !77, i64 104, !78, i64 112, !79, i64 120, !80, i64 128, !80, i64 136, !80, i64 144}
!82 = !{!"double", !7, i64 0}
!83 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!84 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!85 = !{!"dt_sys_resources_t", !21, i64 0, !21, i64 8, !20, i64 16, !20, i64 24, !8, i64 32}
!86 = !{!"dt_backthumb_t", !82, i64 0, !82, i64 8, !8, i64 16, !8, i64 20}
!87 = !{!"dt_gimp_t", !8, i64 0, !74, i64 8, !74, i64 16, !8, i64 24, !8, i64 28}
!88 = !{!"dt_splash_t", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !8, i64 32}
!89 = !{!"darktable_t", !50, i64 0, !8, i64 4, !8, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !52, i64 48, !53, i64 56, !37, i64 64, !54, i64 72, !55, i64 80, !56, i64 88, !57, i64 96, !58, i64 104, !59, i64 112, !60, i64 120, !61, i64 128, !62, i64 136, !63, i64 144, !64, i64 152, !65, i64 160, !66, i64 168, !67, i64 176, !68, i64 184, !69, i64 192, !70, i64 200, !71, i64 208, !72, i64 216, !73, i64 224, !7, i64 232, !38, i64 2792, !38, i64 2832, !38, i64 2872, !38, i64 2912, !38, i64 2952, !38, i64 2992, !74, i64 3032, !74, i64 3040, !74, i64 3048, !74, i64 3056, !74, i64 3064, !74, i64 3072, !74, i64 3080, !74, i64 3088, !74, i64 3096, !74, i64 3104, !74, i64 3112, !74, i64 3120, !74, i64 3128, !81, i64 3136, !51, i64 3288, !82, i64 3296, !51, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !83, i64 3520, !84, i64 3528, !85, i64 3536, !86, i64 3576, !87, i64 3600, !88, i64 3632, !8, i64 3672}
!90 = !{!89, !58, i64 104}
!91 = !{!46, !13, i64 680}
!92 = !{!48, !43, i64 120}
!93 = !{!48, !43, i64 128}
!94 = !{!48, !43, i64 136}
!95 = !{!48, !43, i64 96}
!96 = !{!89, !37, i64 64}
!97 = !{!48, !43, i64 80}
!98 = !{!48, !43, i64 152}
!99 = !{!48, !43, i64 160}
!100 = !{!48, !43, i64 168}
!101 = !{!48, !43, i64 104}
!102 = !{!48, !43, i64 88}
!103 = !{!48, !43, i64 184}
!104 = !{!48, !43, i64 192}
!105 = !{!48, !43, i64 200}
!106 = !{!48, !43, i64 112}
!107 = !{!48, !43, i64 144}
!108 = !{!48, !43, i64 176}
!109 = !{!48, !43, i64 208}
!110 = !{!48, !43, i64 232}
!111 = !{!"dt_iop_colorbalance_params_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!112 = !{!48, !43, i64 248}
!113 = !{!48, !43, i64 256}
!114 = !{!"p1 _ZTS11dt_action_t", !13, i64 0}
!115 = !{!"dt_action_t", !8, i64 0, !74, i64 8, !74, i64 16, !13, i64 24, !114, i64 32, !114, i64 40}
!116 = !{!"dt_iop_module_so_t", !115, i64 0, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !36, i64 488, !7, i64 496, !13, i64 520, !8, i64 528, !13, i64 536, !8, i64 544, !8, i64 548}
!117 = !{!116, !13, i64 520}
!118 = !{!111, !8, i64 0}
!119 = !{!48, !43, i64 56}
!120 = !{!48, !43, i64 64}
!121 = !{!48, !43, i64 0}
!122 = !{!48, !43, i64 48}
!123 = !{!48, !43, i64 16}
!124 = !{!43, !43, i64 0}
!125 = !{!48, !43, i64 8}
!126 = !{!"dt_iop_colorbalance_params_v3_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64}
!127 = !{!126, !8, i64 0}
!128 = !{!"dt_iop_colorbalance_params_v2_t", !8, i64 0, !7, i64 4, !7, i64 20, !7, i64 36, !11, i64 52, !11, i64 56, !11, i64 60}
!129 = !{!128, !8, i64 0}
!130 = !{!128, !11, i64 60}
!131 = !{!126, !11, i64 60}
!132 = !{!126, !11, i64 64}
!133 = distinct !{!133, !"copy_pixel_nontemporal"}
!134 = distinct !{!134, !133, !"copy_pixel_nontemporal: argument 0"}
!135 = !{!31, !8, i64 132}
!136 = !{!33, !11, i64 56}
!137 = !{!23, !8, i64 8}
!138 = !{!23, !8, i64 12}
!139 = !{!33, !11, i64 64}
!140 = !{!33, !11, i64 52}
!141 = !{!33, !11, i64 60}
!142 = !{!134}
!143 = !{i32 1}
!144 = !{!111, !11, i64 60}
!145 = !{!"dt_iop_colorbalance_global_data_t", !8, i64 0, !8, i64 4, !8, i64 8}
!146 = !{!145, !8, i64 0}
!147 = !{!145, !8, i64 8}
!148 = !{!145, !8, i64 4}
!149 = !{!46, !43, i64 824}
!150 = !{!48, !43, i64 216}
!151 = !{!48, !43, i64 240}
!152 = !{!48, !43, i64 224}
!153 = !{!89, !8, i64 3312}
!154 = !{!89, !8, i64 8}
!155 = !{!89, !57, i64 96}
end_hunk_1
