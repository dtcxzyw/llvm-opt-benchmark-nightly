Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalance?download=true
inline.NumInlined: 167
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumUnrolled: 41
begin_hunk_0_@process:bb.a
  %.v.i.i.i110.us = select <4 x i1> %i.xz, <4 x float> %i.xy, <4 x float> %i.xw
  %i.ya = fmul reassoc nsz arcp contract afn <4 x float> %.v.i.i.i110.us, <float 9.642000e-01, float 1.000000e+00, float f0x3F532CA5, float poison> ; 3 uses
  %i.yb = shufflevector <4 x float> %i.ya, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yc = fmul reassoc nsz arcp contract afn <4 x float> %i.yb, <float f0x3FAC47DF, float f0xBF0B6AD5, float 0.000000e+00, float 0.000000e+00>
  %i.yd = shufflevector <4 x float> %i.ya, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.ye = fmul reassoc nsz arcp contract afn <4 x float> %i.yd, <float f0xBE82DEFC, float f0x3FC10BA0, float 0.000000e+00, float 0.000000e+00>
  %i.yf = fadd reassoc nsz arcp contract afn <4 x float> %i.yc, %i.ye
  %i.yg = shufflevector <4 x float> %i.ya, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.yh = fmul reassoc nsz arcp contract afn <4 x float> %i.yg, <float -5.111180e-02, float 2.053510e-02, float f0x3F9B1CAF, float 0.000000e+00>
  %i.yi = fadd reassoc nsz arcp contract afn <4 x float> %i.yf, %i.yh ; 2 uses
  %i.yj = fsub reassoc nsz arcp contract afn <4 x float> %i.yi, %i.yd
  %i.yk = fmul reassoc nsz arcp contract afn <4 x float> %i.yj, %i.cv
  %i.yl = fadd reassoc nsz arcp contract afn <4 x float> %i.yk, %i.yd
  %.0.i111.us = select nsz i1 %i.cl, <4 x float> %i.yl, <4 x float> %i.yi
  %i.ym = fmul reassoc nsz arcp contract afn <4 x float> %.0.i111.us, %i.bx
  %i.yn = fadd reassoc nsz arcp contract afn <4 x float> %i.ym, %.sroa.0128.12.vec.insert171
  %i.yo = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.yn, <4 x float> zeroinitializer)
  %i.yp = bitcast <4 x float> %i.yo to <4 x i32>  ; 2 uses
  %i.yq = lshr <4 x i32> %i.yp, splat (i32 23)
  %i.yr = and <4 x i32> %i.yq, splat (i32 255)
  %i.ys = add nsw <4 x i32> %i.yr, splat (i32 -127)
  %i.yt = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ys to <4 x float>
  %i.yu = and <4 x i32> %i.yp, splat (i32 8388607)
  %i.yv = or disjoint <4 x i32> %i.yu, splat (i32 1065353216)
  %i.yw = bitcast <4 x i32> %i.yv to <4 x float>  ; 5 uses
  %i.yx = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.yw, splat (float f0x3D74552F)
  %i.yy = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.yx, splat (float f0xBEEE7397)
  %i.yz = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.yy, %i.yw
  %i.za = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.yz, splat (float f0x3FBD96DD)
  %i.zb = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.za, %i.yw
  %i.zc = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zb, splat (float f0xC02153F6)
  %i.zd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.zc, %i.yw
  %i.ze = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.zd, splat (float f0x4038D96C)
  %i.zf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.yw, splat (float -1.000000e+00)
  %i.zg = fmul reassoc nsz arcp contract afn <4 x float> %i.ze, %i.zf
  %i.zh = fadd reassoc nsz arcp contract afn <4 x float> %i.zg, %i.yt
  %i.zi = fmul reassoc nsz arcp contract afn <4 x float> %i.zh, %.sroa.0126.12.vec.insert173
  %i.zj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zi, <4 x float> splat (float 1.290000e+02))
  %i.zk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.zj, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.zl = fadd reassoc nsz arcp contract afn <4 x float> %i.zk, splat (float -5.000000e-01)
  %i.zm = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.zl) ; 2 uses
  %i.zn = sitofp reassoc nsz arcp contract afn <4 x i32> %i.zm to <4 x float>
  %i.zo = fsub reassoc nsz arcp contract afn <4 x float> %i.zk, %i.zn ; 4 uses
  %i.zp = shl <4 x i32> %i.zm, splat (i32 23)
  %i.zq = add <4 x i32> %i.zp, splat (i32 1065353216)
  %i.zr = bitcast <4 x i32> %i.zq to <4 x float>
  %i.zs = fmul reassoc nsz arcp contract afn <4 x float> %i.zo, splat (float f0x3C5DBE69)
  %i.zt = fadd reassoc nsz arcp contract afn <4 x float> %i.zs, splat (float f0x3D5509F9)
  %i.zu = fmul reassoc nsz arcp contract afn <4 x float> %i.zt, %i.zo
  %i.zv = fadd reassoc nsz arcp contract afn <4 x float> %i.zu, splat (float f0x3E773CC5)
  %i.zw = fmul reassoc nsz arcp contract afn <4 x float> %i.zv, %i.zo
  %i.zx = fadd reassoc nsz arcp contract afn <4 x float> %i.zw, splat (float f0x3F3168B3)
  %i.zy = fmul reassoc nsz arcp contract afn <4 x float> %i.zx, %i.zo
  %i.zz = fadd reassoc nsz arcp contract afn <4 x float> %i.zy, splat (float f0x3F800016)
  %i.aaa = fmul reassoc nsz arcp contract afn <4 x float> %i.zz, %i.zr ; 5 uses
  br i1 %i.cp, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i109.us
  %i.aab = extractelement <4 x float> %i.aaa, i64 0
  %i.aac = fmul reassoc nsz arcp contract afn float %i.aab, f0x3E937A01
  %i.aad = extractelement <4 x float> %i.aaa, i64 1
  %i.aae = fmul reassoc nsz arcp contract afn float %i.aad, f0x3F363D62
  %i.aaf = fadd reassoc nsz arcp contract afn float %i.aac, %i.aae
  %i.aag = extractelement <4 x float> %i.aaa, i64 2
  %i.aah = fmul reassoc nsz arcp contract afn float %i.aag, f0x38B3B9D6
  %i.aai = fadd reassoc nsz arcp contract afn float %i.aaf, %i.aah
  %i.aaj = insertelement <4 x float> poison, float %i.aai, i64 0
  %i.aak = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aal = fsub reassoc nsz arcp contract afn <4 x float> %i.aaa, %i.aak
  %i.aam = fmul reassoc nsz arcp contract afn <4 x float> %i.aal, %i.cx
  %i.aan = fadd reassoc nsz arcp contract afn <4 x float> %i.aam, %i.aak
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph.i109.us
  %.1.i112.us = phi nsz <4 x float> [ %i.aan, %bb.t ], [ %i.aaa, %.lr.ph.i109.us ] ; 2 uses
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aao = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.1.i112.us, <4 x float> zeroinitializer)
  %i.aap = fmul reassoc nsz arcp contract afn <4 x float> %i.aao, %i.da
  %i.aaq = bitcast <4 x float> %i.aap to <4 x i32> ; 2 uses
  %i.aar = lshr <4 x i32> %i.aaq, splat (i32 23)
  %i.aas = and <4 x i32> %i.aar, splat (i32 255)
  %i.aat = add nsw <4 x i32> %i.aas, splat (i32 -127)
  %i.aau = sitofp reassoc nsz arcp contract afn <4 x i32> %i.aat to <4 x float>
  %i.aav = and <4 x i32> %i.aaq, splat (i32 8388607)
  %i.aaw = or disjoint <4 x i32> %i.aav, splat (i32 1065353216)
  %i.aax = bitcast <4 x i32> %i.aaw to <4 x float> ; 5 uses
  %i.aay = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aax, splat (float f0x3D74552F)
  %i.aaz = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aay, splat (float f0xBEEE7397)
  %i.aba = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aaz, %i.aax
  %i.abb = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aba, splat (float f0x3FBD96DD)
  %i.abc = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abb, %i.aax
  %i.abd = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abc, splat (float f0xC02153F6)
  %i.abe = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.abd, %i.aax
  %i.abf = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.abe, splat (float f0x4038D96C)
  %i.abg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.aax, splat (float -1.000000e+00)
  %i.abh = fmul reassoc nsz arcp contract afn <4 x float> %i.abf, %i.abg
  %i.abi = fadd reassoc nsz arcp contract afn <4 x float> %i.abh, %i.aau
  %i.abj = fmul reassoc nsz arcp contract afn <4 x float> %i.abi, %.sroa.0136.12.vec.insert
  %i.abk = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.abj, <4 x float> splat (float 1.290000e+02))
  %i.abl = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.abk, <4 x float> splat (float f0xC2FDFFFF)) ; 2 uses
  %i.abm = fadd reassoc nsz arcp contract afn <4 x float> %i.abl, splat (float -5.000000e-01)
  %i.abn = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.abm) ; 2 uses
  %i.abo = sitofp reassoc nsz arcp contract afn <4 x i32> %i.abn to <4 x float>
  %i.abp = fsub reassoc nsz arcp contract afn <4 x float> %i.abl, %i.abo ; 4 uses
  %i.abq = shl <4 x i32> %i.abn, splat (i32 23)
  %i.abr = add <4 x i32> %i.abq, splat (i32 1065353216)
  %i.abs = bitcast <4 x i32> %i.abr to <4 x float>
  %i.abt = fmul reassoc nsz arcp contract afn <4 x float> %i.abp, splat (float f0x3C5DBE69)
  %i.abu = fadd reassoc nsz arcp contract afn <4 x float> %i.abt, splat (float f0x3D5509F9)
  %i.abv = fmul reassoc nsz arcp contract afn <4 x float> %i.abu, %i.abp
  %i.abw = fadd reassoc nsz arcp contract afn <4 x float> %i.abv, splat (float f0x3E773CC5)
  %i.abx = fmul reassoc nsz arcp contract afn <4 x float> %i.abw, %i.abp
  %i.aby = fadd reassoc nsz arcp contract afn <4 x float> %i.abx, splat (float f0x3F3168B3)
  %i.abz = fmul reassoc nsz arcp contract afn <4 x float> %i.aby, %i.abp
  %i.aca = fadd reassoc nsz arcp contract afn <4 x float> %i.abz, splat (float f0x3F800016)
  %i.acb = fmul reassoc nsz arcp contract afn <4 x float> %i.cz, %i.abs
  %i.acc = fmul reassoc nsz arcp contract afn <4 x float> %i.acb, %i.aca
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.i113.us = phi nsz <4 x float> [ %i.acc, %bb.v ], [ %.1.i112.us, %bb.u ] ; 3 uses
  %i.acd = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ace = fmul reassoc nsz arcp contract afn <4 x float> %i.acd, <float f0x3F4C346C, float f0x3E937A01, float 0.000000e+00, float 0.000000e+00>
  %i.acf = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.acg = fmul reassoc nsz arcp contract afn <4 x float> %i.acf, <float f0x3E0A6FB1, float f0x3F363D62, float 0.000000e+00, float 0.000000e+00>
  %i.ach = fadd reassoc nsz arcp contract afn <4 x float> %i.ace, %i.acg
  %i.aci = shufflevector <4 x float> %.2.i113.us, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.acj = fmul reassoc nsz arcp contract afn <4 x float> %i.aci, <float 3.135340e-02, float f0x38B3B9D6, float f0x3F5340F6, float 0.000000e+00>
  %i.ack = fadd reassoc nsz arcp contract afn <4 x float> %i.ach, %i.acj ; 3 uses
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.xm
  %i.acm = fmul reassoc nsz arcp contract afn <4 x float> %i.ack, <float f0x3F84C0A6, float 1.000000e+00, float f0x3F9B2B9B, float 1.000000e+00> ; 3 uses
  %i.acn = bitcast <4 x float> %i.acm to <4 x i32>
  %i.aco = sitofp reassoc nsz arcp contract afn <4 x i32> %i.acn to <4 x float>
  %i.acp = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.aco, splat (float f0x3EAAAAAB)
  %i.acq = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.acp)
  %i.acr = add <4 x i32> %i.acq, splat (i32 709921077)
  %i.acs = bitcast <4 x i32> %i.acr to <4 x float> ; 4 uses
  %i.act = fmul reassoc nsz arcp contract afn <4 x float> %i.acs, %i.acs
  %i.acu = fmul reassoc nsz arcp contract afn <4 x float> %i.act, %i.acs ; 2 uses
  %factor.i.i.i114.us = fmul reassoc nsz arcp contract afn <4 x float> %i.ack, <float f0x4004C0A6, float 2.000000e+00, float f0x401B2B9B, float 2.000000e+00>
  %i.acv = fadd reassoc nsz arcp contract afn <4 x float> %i.acu, %factor.i.i.i114.us
  %i.acw = fmul reassoc nsz arcp contract afn <4 x float> %i.acv, %i.acs
  %factor19.i.i.i115.us = fmul reassoc nsz arcp contract afn <4 x float> %i.acu, splat (float 2.000000e+00)
  %i.acx = fadd reassoc nsz arcp contract afn <4 x float> %factor19.i.i.i115.us, %i.acm
  %i.acy = fdiv reassoc nsz arcp contract afn <4 x float> %i.acw, %i.acx
  %i.acz = fmul reassoc nsz arcp contract afn <4 x float> %i.ack, <float f0x410137F7, float f0x40F92F69, float f0x41170A26, float f0x40F92F69>
  %i.ada = fadd reassoc nsz arcp contract afn <4 x float> %i.acz, splat (float f0x3E0D3DCB)
  %i.adb = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.acm, splat (float f0x3C111AA7)
  %.v.i.i44.i.us = select <4 x i1> %i.adb, <4 x float> %i.ada, <4 x float> %i.acy ; 2 uses
  %i.adc = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 3>
  %i.add = shufflevector <4 x float> %.v.i.i44.i.us, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.ade = fsub reassoc nsz arcp contract afn <4 x float> %i.adc, %i.add
  %i.adf = fmul reassoc nsz arcp contract afn <4 x float> %i.ade, <float 1.160000e+02, float 5.000000e+02, float 2.000000e+02, float 0.000000e+00>
  store <4 x float> %i.adf, ptr %i.acl, align 16, !tbaa !35, !nontemporal !143
  %i.adg = add nuw i64 %.0437.i.us, 1             ; 2 uses
  %exitcond.not.i116.us = icmp eq i64 %i.adg, %i.xl
  br i1 %exitcond.not.i116.us, label %_process_legacy.exit.us148, label %.lr.ph.i109.us

_process_legacy.exit.us148:                       ; preds = %bb.w, %.lr.ph.split.us146
  %i.adh = icmp ult i64 %i.xg, %i.p
  br i1 %i.adh, label %.lr.ph.split.us146, label %._crit_edge

._crit_edge:                                      ; preds = %_process_legacy.exit.us148, %_process_legacy.exit.us145, %_process_legacy.exit.us, %_process_legacy.exit, %bb.b
  tail call void @llvm.x86.sse.sfence()
  br label %bb.x

_process_legacy.exit:                             ; preds = %.lr.ph, %_process_legacy.exit
  %.0142 = phi i64 [ %i.adi, %_process_legacy.exit ], [ 0, %.lr.ph ]
  %i.adi = add i64 %.0142, %i.bz                  ; 2 uses
  %i.adj = icmp ult i64 %i.adi, %i.p
  br i1 %i.adj, label %_process_legacy.exit, label %._crit_edge

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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91   ; 8 uses
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
  %i.ac = fsub reassoc nsz arcp contract afn float %i.t, %i.u ; 5 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ab, 9.642000e-01
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ab, f0x3FA61CF4
  %i.af = fmul reassoc nsz arcp contract afn float %i.ab, f0x3F066D1A
  %3 = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %.sroa.11.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.k, i64 268
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 300
  store i32 1, ptr %i.ag, align 4, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ap = fcmp reassoc nsz arcp contract afn ogt float %i.t, f0x3E53DCB1
  %i.aq = fmul reassoc nsz arcp contract afn float %i.t, %i.t
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.t
  %i.as = fmul reassoc nsz arcp contract afn float %i.t, f0x3E038026
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, f0xBC911AA6
  %i.au = select reassoc nsz arcp contract afn i1 %i.ap, float %i.ar, float %i.at ; 5 uses
  %i.av = fcmp reassoc nsz arcp contract afn ogt float %i.ac, f0x3E53DCB1
  %i.aw = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.ac
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ac, f0x3E038026
  %i.az = fadd reassoc nsz arcp contract afn float %i.ay, f0xBC911AA6
  %i.ba = select reassoc nsz arcp contract afn i1 %i.av, float %i.ax, float %i.az ; 2 uses
  %i.bb = fmul reassoc nsz arcp contract afn float %i.au, f0x3E82DEFC
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ae, %i.bb
  %i.bd = fmul reassoc nsz arcp contract afn float %i.ba, f0xBD2CB230
  %i.be = fadd reassoc nsz arcp contract afn float %i.bc, %i.bd ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.au, f0x3FC10BA0
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bf, %i.af
  %i.bh = fadd reassoc nsz arcp contract afn float %i.ad, %i.au
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bh, 0.000000e+00
  %i.bj = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul reassoc nsz arcp contract afn <2 x float> %i.bk, <float f0x3C8AC481, float f0x3F7FE762>
  %i.bm = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bi, i64 1
  %i.bo = fadd reassoc nsz arcp contract afn <2 x float> %i.bn, %i.bl ; 3 uses
  store float %i.be, ptr %3, align 4, !tbaa !12
  %4 = extractelement <2 x float> %i.bo, i64 0
  store float %4, ptr %.sroa.11.0..sroa_idx.i.a, align 4, !tbaa !12
  %5 = extractelement <2 x float> %i.bo, i64 1
  store float %5, ptr %.sroa.18.0..sroa_idx.i, align 4, !tbaa !12
  %i.bp = load float, ptr %i.ai, align 4, !tbaa !12
  %i.bq = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.bp
  %i.br = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bq
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.au, float %i.br)
  %i.bt = load float, ptr %i.aj, align 4, !tbaa !12
  %i.bu = load <2 x float>, ptr %i.ak, align 4, !tbaa !12
  %i.bv = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.bu
  %i.bw = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.bv
  %i.bx = insertelement <2 x float> poison, float %i.au, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.by, <2 x float> %i.bw)
  %i.ca = load <2 x float>, ptr %i.al, align 4, !tbaa !12
  %i.cb = fadd reassoc nsz arcp contract afn float %i.bs, 1.000000e+00
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bt, %i.be
  %i.cd = fsub reassoc nsz arcp contract afn float %i.cb, %i.cc
  store float %i.cd, ptr %i.am, align 4, !tbaa !12
  %i.ce = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.ca
  %i.cf = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ce
  %i.cg = fadd reassoc nsz arcp contract afn <2 x float> %i.cf, %i.bz
  store <2 x float> %i.cg, ptr %i.an, align 4, !tbaa !12
  %i.ch = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  %i.cj = atomicrmw add ptr %i.ci, i32 1 seq_cst, align 4 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !92
  %i.cm = load float, ptr %i.am, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cl, float noundef %i.cm) #23
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !93
  %i.cp = load float, ptr %i.an, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.co, float noundef %i.cp) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !94
  %i.cs = load float, ptr %i.ao, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cr, float noundef %i.cs) #23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !49
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !95
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.cu, ptr noundef %i.cw, ptr noundef nonnull %i.ah)
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  %i.cz = atomicrmw sub ptr %i.cy, i32 1 seq_cst, align 4 ; 0 uses
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.da, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.d:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !97
  %i.dd = icmp eq ptr %1, %i.dc
  br i1 %i.dd, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 104
  %i.dg = load atomic i32, ptr %i.df seq_cst, align 4
  %.not.i29 = icmp eq i32 %i.dg, 0
  br i1 %.not.i29, label %bb.f, label %apply_lift_neutralize.exit

bb.f:                                             ; preds = %bb.e
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !91 ; 8 uses
  %i.dj = load ptr, ptr %i.a, align 16, !tbaa !47 ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !12
  %i.dn = load float, ptr %i.dk, align 16, !tbaa !12
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.dp = load float, ptr %i.do, align 8, !tbaa !12
  %i.dq = fmul reassoc nsz arcp contract afn float %i.dm, 2.000000e-03
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dn, 8.620690e-03
  %i.ds = fadd reassoc nsz arcp contract afn float %i.dr, f0x3E0D3DCB ; 7 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dp, 5.000000e-03
  %i.du = fadd reassoc nsz arcp contract afn float %i.ds, %i.dq ; 5 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ogt float %i.du, f0x3E53DCB1
  %i.dw = fmul reassoc nsz arcp contract afn float %i.du, %i.du
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.du
  %i.dy = fmul reassoc nsz arcp contract afn float %i.du, f0x3E038026
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, f0xBC911AA6
  %i.ea = fcmp reassoc nsz arcp contract afn ogt float %i.ds, f0x3E53DCB1
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ds, %i.ds
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.ds
  %i.ed = fmul reassoc nsz arcp contract afn float %i.ds, f0x3E038026
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, f0xBC911AA6
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ds, %i.dt ; 5 uses
  %i.eg = fcmp reassoc nsz arcp contract afn ogt float %i.ef, f0x3E53DCB1
  %i.eh = fmul reassoc nsz arcp contract afn float %i.ef, %i.ef
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, %i.ef
  %i.ej = fmul reassoc nsz arcp contract afn float %i.ef, f0x3E038026
  %i.ek = fadd reassoc nsz arcp contract afn float %i.ej, f0xBC911AA6
  %i.el = select reassoc nsz arcp contract afn i1 %i.eg, float %i.ei, float %i.ek ; 2 uses
  %i.em = fmul reassoc nsz arcp contract afn float %i.el, f0x3F7FE762
  %6 = getelementptr inbounds nuw i8, ptr %i.dj, i64 276
  %.sroa.11.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.dj, i64 280
  %.sroa.18.0..sroa_idx.i31 = getelementptr inbounds nuw i8, ptr %i.dj, i64 284
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 304
  store i32 1, ptr %i.en, align 4, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.ep = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  %i.eq = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.es = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.di, i64 28
  %i.ev = select reassoc nsz arcp contract afn i1 %i.dv, float %i.dx, float %i.dz ; 2 uses
  %i.ew = select reassoc nsz arcp contract afn i1 %i.ea, float %i.ec, float %i.ee ; 3 uses
  %i.ex = fmul reassoc nsz arcp contract afn float %i.ev, 9.642000e-01
  %i.ey = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ew, i64 1 ; 2 uses
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, <float f0x3F066D1A, float f0x3E82DEFC>
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, <float f0x3FA61CF4, float f0x3FC10BA0>
  %i.fd = fsub reassoc nsz arcp contract afn <2 x float> %i.fc, %i.fb
  %i.fe = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = fmul reassoc nsz arcp contract afn <2 x float> %i.ff, <float f0xBD2CB230, float f0x3C8AC481>
  %i.fh = fadd reassoc nsz arcp contract afn <2 x float> %i.fd, %i.fg ; 3 uses
  %i.fi = fadd reassoc nsz arcp contract afn float %i.ex, %i.ew
  %i.fj = fmul reassoc nsz arcp contract afn float %i.fi, 0.000000e+00
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.em ; 2 uses
  %7 = extractelement <2 x float> %i.fh, i64 0
  store float %7, ptr %6, align 4, !tbaa !12
  %8 = extractelement <2 x float> %i.fh, i64 1
  store float %8, ptr %.sroa.11.0..sroa_idx.i30, align 4, !tbaa !12
  store float %i.fk, ptr %.sroa.18.0..sroa_idx.i31, align 4, !tbaa !12
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.ew) ; 2 uses
  %i.fm = load <2 x float>, ptr %i.ep, align 4, !tbaa !12
  %i.fn = fmul reassoc nsz arcp contract afn <2 x float> %i.fh, %i.fm
  %i.fo = load <2 x float>, ptr %i.eq, align 4, !tbaa !12
  %i.fp = fadd reassoc nsz arcp contract afn <2 x float> %i.fo, %i.fn
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.fp, splat (float -1.000000e+00)
  %i.fr = tail call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.fq)
  %i.fs = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.ft = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fu = fdiv reassoc nsz arcp contract afn <2 x float> %i.ft, %i.fr
  %i.fv = load float, ptr %i.er, align 4, !tbaa !12
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %i.fk
  %i.fx = load float, ptr %i.es, align 4, !tbaa !12
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fw, %i.fx
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, -1.000000e+00
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.fz)
  %i.gb = fdiv reassoc nsz arcp contract afn float %i.fl, %i.ga
  %i.gc = fpext <2 x float> %i.fu to <2 x double>
  %i.gd = fsub reassoc nsz arcp contract afn <2 x double> splat (double 2.000000e+00), %i.gc ; 3 uses
  %i.ge = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.gd, splat (double 2.000000e+00)
  %i.gf = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.gd, splat (double f0x3F1A36E2E0000000)
  %i.gg = select <2 x i1> %i.gf, <2 x double> splat (double f0x3F1A36E2E0000000), <2 x double> %i.gd
  %i.gh = fptrunc <2 x double> %i.gg to <2 x float>
  %i.gi = select <2 x i1> %i.ge, <2 x float> splat (float 2.000000e+00), <2 x float> %i.gh
  store <2 x float> %i.gi, ptr %i.et, align 4, !tbaa !12
  %i.gj = fpext reassoc nsz arcp contract afn float %i.gb to double
  %i.gk = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.gj ; 3 uses
  %i.gl = fcmp reassoc nsz arcp contract afn ogt double %i.gk, 2.000000e+00
  %i.gm = fcmp reassoc nsz arcp contract afn olt double %i.gk, f0x3F1A36E2E0000000
  %i.gn = select reassoc nsz arcp contract afn i1 %i.gm, double f0x3F1A36E2E0000000, double %i.gk
  %i.go = fptrunc reassoc nsz arcp contract afn double %i.gn to float
  %i.gp = select i1 %i.gl, float 2.000000e+00, float %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 2 uses
  store float %i.gp, ptr %i.gq, align 4, !tbaa !12
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 104
  %i.gt = atomicrmw add ptr %i.gs, i32 1 seq_cst, align 4 ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.dj, i64 152
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !98
  %i.gw = load float, ptr %i.et, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gv, float noundef %i.gw) #23
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dj, i64 160
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !99
  %i.gz = load float, ptr %i.eu, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.gy, float noundef %i.gz) #23
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dj, i64 168
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !100
  %i.hc = load float, ptr %i.gq, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.hb, float noundef %i.hc) #23
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dj, i64 80
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %i.dj, i64 104
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !101
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.he, ptr noundef %i.hg, ptr noundef nonnull %i.eo)
  %i.hh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 104
  %i.hj = atomicrmw sub ptr %i.hi, i32 1 seq_cst, align 4 ; 0 uses
  %i.hk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.hk, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.g:                                             ; preds = %bb.d
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !102
  %i.hn = icmp eq ptr %1, %i.hm
  br i1 %i.hn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ho = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 104
  %i.hq = load atomic i32, ptr %i.hp seq_cst, align 4
  %.not.i32 = icmp eq i32 %i.hq, 0
  br i1 %.not.i32, label %bb.i, label %apply_lift_neutralize.exit

bb.i:                                             ; preds = %bb.h
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !91 ; 8 uses
  %i.ht = load ptr, ptr %i.a, align 16, !tbaa !47 ; 9 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !12
  %i.hx = load float, ptr %i.hu, align 16, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.hz = load float, ptr %i.hy, align 8, !tbaa !12
  %i.ia = fmul reassoc nsz arcp contract afn float %i.hw, 2.000000e-03
  %i.ib = fmul reassoc nsz arcp contract afn float %i.hx, 8.620690e-03
  %i.ic = fadd reassoc nsz arcp contract afn float %i.ib, f0x3E0D3DCB ; 3 uses
  %i.id = fmul reassoc nsz arcp contract afn float %i.hz, 5.000000e-03
  %i.ie = fadd reassoc nsz arcp contract afn float %i.ic, %i.ia
  %i.if = fsub reassoc nsz arcp contract afn float %i.ic, %i.id ; 5 uses
  %i.ig = fcmp reassoc nsz arcp contract afn ogt float %i.if, f0x3E53DCB1
  %i.ih = fmul reassoc nsz arcp contract afn float %i.if, %i.if
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ih, %i.if
  %i.ij = fmul reassoc nsz arcp contract afn float %i.if, f0x3E038026
  %i.ik = fadd reassoc nsz arcp contract afn float %i.ij, f0xBC911AA6
  %i.il = select reassoc nsz arcp contract afn i1 %i.ig, float %i.ii, float %i.ik ; 2 uses
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, f0x3F7FE762
  %9 = getelementptr inbounds nuw i8, ptr %i.ht, i64 288
  %.sroa.11.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.ht, i64 292
  %.sroa.18.0..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.ht, i64 296
  %i.in = getelementptr inbounds nuw i8, ptr %i.ht, i64 308
  store i32 1, ptr %i.in, align 4, !tbaa !15
  %i.io = getelementptr inbounds nuw i8, ptr %i.hs, i64 36
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.it = getelementptr inbounds nuw i8, ptr %i.hs, i64 40 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hs, i64 44
  %i.iv = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.iw = insertelement <2 x float> %i.iv, float %i.ic, i64 1 ; 5 uses
  %i.ix = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.iw, splat (float f0x3E53DCB1)
  %i.iy = fmul reassoc nsz arcp contract afn <2 x float> %i.iw, %i.iw
  %i.iz = fmul reassoc nsz arcp contract afn <2 x float> %i.iy, %i.iw
  %i.ja = fmul reassoc nsz arcp contract afn <2 x float> %i.iw, splat (float f0x3E038026)
  %i.jb = fadd reassoc nsz arcp contract afn <2 x float> %i.ja, splat (float f0xBC911AA6)
  %i.jc = select <2 x i1> %i.ix, <2 x float> %i.iz, <2 x float> %i.jb ; 5 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0
  %i.je = fmul reassoc nsz arcp contract afn float %i.jd, 9.642000e-01
  %i.jf = fmul reassoc nsz arcp contract afn <2 x float> %i.jc, <float f0x3F066D1A, float f0x3E82DEFC>
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jh = fmul reassoc nsz arcp contract afn <2 x float> %i.jc, <float f0x3FA61CF4, float f0x3FC10BA0>
  %i.ji = fsub reassoc nsz arcp contract afn <2 x float> %i.jh, %i.jg
  %i.jj = insertelement <2 x float> poison, float %i.il, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul reassoc nsz arcp contract afn <2 x float> %i.jk, <float f0xBD2CB230, float f0x3C8AC481>
  %i.jm = fadd reassoc nsz arcp contract afn <2 x float> %i.ji, %i.jl ; 4 uses
  %i.jn = extractelement <2 x float> %i.jc, i64 1 ; 2 uses
  %i.jo = fadd reassoc nsz arcp contract afn float %i.je, %i.jn
  %i.jp = fmul reassoc nsz arcp contract afn float %i.jo, 0.000000e+00
  %i.jq = fadd reassoc nsz arcp contract afn float %i.jp, %i.im ; 3 uses
  %10 = extractelement <2 x float> %i.jm, i64 0
  store float %10, ptr %9, align 4, !tbaa !12
  %11 = extractelement <2 x float> %i.jm, i64 1
  store float %11, ptr %.sroa.11.0..sroa_idx.i33, align 4, !tbaa !12
  store float %i.jq, ptr %.sroa.18.0..sroa_idx.i34, align 4, !tbaa !12
  %i.jr = load <2 x float>, ptr %i.ip, align 4, !tbaa !12
  %i.js = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.jr
  %i.jt = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.js
  %i.ju = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jv = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ju, <2 x float> %i.jt)
  %i.jw = load <2 x float>, ptr %i.iq, align 4, !tbaa !12
  %i.jx = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jw
  %i.jy = fadd reassoc nsz arcp contract afn <2 x float> %i.jx, %i.jv
  %i.jz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.jm, splat (float f0x358637BD)
  %i.ka = select <2 x i1> %i.jz, <2 x float> %i.jm, <2 x float> splat (float f0x358637BD)
  %i.kb = fdiv reassoc nsz arcp contract afn <2 x float> %i.jy, %i.ka
  %i.kc = load float, ptr %i.ir, align 4, !tbaa !12
  %i.kd = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.kc
  %i.ke = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kd
  %i.kf = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jn, float %i.ke)
  %i.kg = load float, ptr %i.is, align 4, !tbaa !12
  %i.kh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.kg
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kh, %i.kf
  %i.kj = fcmp reassoc nsz arcp contract afn ogt float %i.jq, f0x358637BD
  %spec.select.2.i = select reassoc nsz arcp contract afn i1 %i.kj, float %i.jq, float f0x358637BD
  %i.kk = fdiv reassoc nsz arcp contract afn float %i.ki, %spec.select.2.i
  store <2 x float> %i.kb, ptr %i.it, align 4, !tbaa !12
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hs, i64 48 ; 2 uses
  store float %i.kk, ptr %i.kl, align 4, !tbaa !12
  %i.km = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 104
  %i.ko = atomicrmw add ptr %i.kn, i32 1 seq_cst, align 4 ; 0 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ht, i64 184
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !103
  %i.kr = load float, ptr %i.it, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kq, float noundef %i.kr) #23
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ht, i64 192
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !104
  %i.ku = load float, ptr %i.iu, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kt, float noundef %i.ku) #23
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ht, i64 200
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !105
  %i.kx = load float, ptr %i.kl, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.kw, float noundef %i.kx) #23
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ht, i64 88
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !102
  %i.la = getelementptr inbounds nuw i8, ptr %i.ht, i64 112
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !106
  tail call fastcc void @set_HSL_sliders(ptr noundef %i.kz, ptr noundef %i.lb, ptr noundef nonnull %i.io)
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 104
  %i.le = atomicrmw sub ptr %i.ld, i32 1 seq_cst, align 4 ; 0 uses
  %i.lf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.lf, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.j:                                             ; preds = %bb.g
  %i.lg = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !107
  %i.li = icmp eq ptr %1, %i.lh
  br i1 %i.li, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.lj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 104
  %i.ll = load atomic i32, ptr %i.lk seq_cst, align 4
  %.not.i35 = icmp eq i32 %i.ll, 0
  br i1 %.not.i35, label %bb.l, label %apply_lift_neutralize.exit

bb.l:                                             ; preds = %bb.k
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !91 ; 2 uses
  %i.lo = load ptr, ptr %i.a, align 16, !tbaa !47 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.lq = load float, ptr %i.lp, align 16, !tbaa !12
  %i.lr = fmul reassoc nsz arcp contract afn float %i.lq, 8.620690e-03
  %i.ls = fadd reassoc nsz arcp contract afn float %i.lr, f0x3E0D3DCB ; 5 uses
  %i.lt = fcmp reassoc nsz arcp contract afn ogt float %i.ls, f0x3E53DCB1
  %i.lu = fmul reassoc nsz arcp contract afn float %i.ls, %i.ls
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, %i.ls
  %i.lw = fmul reassoc nsz arcp contract afn float %i.ls, f0x3E038026
  %i.lx = fadd reassoc nsz arcp contract afn float %i.lw, f0xBC911AA6
  %i.ly = select reassoc nsz arcp contract afn i1 %i.lt, float %i.lv, float %i.lx ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lo, i64 312
  store float %i.ly, ptr %i.lz, align 8, !tbaa !12
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lo, i64 324
  store i32 1, ptr %i.ma, align 4, !tbaa !15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 36
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !12
  %i.md = fmul reassoc nsz arcp contract afn float %i.ly, %i.mc
  %i.me = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ln, i64 4 ; 2 uses
  store float %i.me, ptr %i.mf, align 4, !tbaa !12
  %i.mg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 104
  %i.mi = atomicrmw add ptr %i.mh, i32 1 seq_cst, align 4 ; 0 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 144
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !107
  %i.ml = load float, ptr %i.mf, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.mk, float noundef %i.ml) #23
  %i.mm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 104
  %i.mo = atomicrmw sub ptr %i.mn, i32 1 seq_cst, align 4 ; 0 uses
  %i.mp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.mp, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.m:                                             ; preds = %bb.j
  %i.mq = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !108
  %i.ms = icmp eq ptr %1, %i.mr
  br i1 %i.ms, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.mt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 104
  %i.mv = load atomic i32, ptr %i.mu seq_cst, align 4
  %.not.i36 = icmp eq i32 %i.mv, 0
  br i1 %.not.i36, label %bb.o, label %apply_lift_neutralize.exit

bb.o:                                             ; preds = %bb.n
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !91 ; 3 uses
  %i.my = load ptr, ptr %i.a, align 16, !tbaa !47 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.na = load float, ptr %i.mz, align 16, !tbaa !12
  %i.nb = fmul reassoc nsz arcp contract afn float %i.na, 8.620690e-03
  %i.nc = fadd reassoc nsz arcp contract afn float %i.nb, f0x3E0D3DCB ; 5 uses
  %i.nd = fcmp reassoc nsz arcp contract afn ogt float %i.nc, f0x3E53DCB1
  %i.ne = fmul reassoc nsz arcp contract afn float %i.nc, %i.nc
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, %i.nc
  %i.ng = fmul reassoc nsz arcp contract afn float %i.nc, f0x3E038026
  %i.nh = fadd reassoc nsz arcp contract afn float %i.ng, f0xBC911AA6
  %i.ni = select reassoc nsz arcp contract afn i1 %i.nd, float %i.nf, float %i.nh ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.my, i64 316
  store float %i.ni, ptr %i.nj, align 4, !tbaa !12
  %i.nk = getelementptr inbounds nuw i8, ptr %i.my, i64 328
  store i32 1, ptr %i.nk, align 4, !tbaa !15
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mx, i64 36
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12
  %i.nn = fmul reassoc nsz arcp contract afn float %i.ni, %i.nm
  %i.no = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  %i.np = load float, ptr %i.no, align 4, !tbaa !12
  %i.nq = fadd reassoc nsz arcp contract afn float %i.np, %i.nn
  %i.nr = fadd reassoc nsz arcp contract afn float %i.nq, -1.000000e+00 ; 2 uses
  %i.ns = fcmp reassoc nsz arcp contract afn ogt float %i.nr, f0x358637BD
  %i.nt = tail call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.nr)
  %i.nu = fdiv reassoc nsz arcp contract afn float f0x3FD88AB6, %i.nt
  %i.nv = fadd reassoc nsz arcp contract afn float %i.nu, 2.000000e+00
  %i.nw = select i1 %i.ns, float %i.nv, float f0x3FF05380
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mx, i64 20 ; 2 uses
  store float %i.nw, ptr %i.nx, align 4, !tbaa !12
  %i.ny = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 104
  %i.oa = atomicrmw add ptr %i.nz, i32 1 seq_cst, align 4 ; 0 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.my, i64 176
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !108
  %i.od = load float, ptr %i.nx, align 4, !tbaa !12
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.oc, float noundef %i.od) #23
  %i.oe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 104
  %i.og = atomicrmw sub ptr %i.of, i32 1 seq_cst, align 4 ; 0 uses
  %i.oh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !96
  tail call void @dt_dev_add_history_item(ptr noundef %i.oh, ptr noundef nonnull %0, i32 noundef 1) #23
  br label %apply_lift_neutralize.exit

bb.p:                                             ; preds = %bb.m
  %i.oi = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !109
  %i.ok = icmp eq ptr %1, %i.oj
  br i1 %i.ok, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 104
  %i.on = load atomic i32, ptr %i.om seq_cst, align 4
  %.not.i37 = icmp eq i32 %i.on, 0
  br i1 %.not.i37, label %bb.r, label %apply_lift_neutralize.exit

bb.r:                                             ; preds = %bb.q
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !91 ; 2 uses
  %i.oq = load ptr, ptr %i.a, align 16, !tbaa !47 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.os = load float, ptr %i.or, align 16, !tbaa !12
  %i.ot = fmul reassoc nsz arcp contract afn float %i.os, 8.620690e-03
  %i.ou = fadd reassoc nsz arcp contract afn float %i.ot, f0x3E0D3DCB ; 5 uses
  %i.ov = fcmp reassoc nsz arcp contract afn ogt float %i.ou, f0x3E53DCB1
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ou, %i.ou
  %i.ox = fmul reassoc nsz arcp contract afn float %i.ow, %i.ou
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ou, f0x3E038026
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, f0xBC911AA6
  %i.pa = select reassoc nsz arcp contract afn i1 %i.ov, float %i.ox, float %i.oz ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oq, i64 320
  store float %i.pa, ptr %i.pb, align 8, !tbaa !12
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oq, i64 332
  store i32 1, ptr %i.pc, align 4, !tbaa !15
  %i.pd = getelementptr inbounds nuw i8, ptr %i.op, i64 4
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !12
  %i.pf = fdiv reassoc nsz arcp contract afn float %i.pe, %i.pa
  %i.pg = getelementptr inbounds nuw i8, ptr %i.op, i64 36 ; 2 uses
  store float %i.pf, ptr %i.pg, align 4, !tbaa !12
  %i.ph = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !90
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 104
end_hunk_0
