Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/iqp?download=true
inline.NumInlined: 70
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 22
begin_hunk_0_@ggml_compute_forward_mul_mat_id_iqp:bb.a
  %i.ft = shufflevector <16 x i8> %i.fs, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.fu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.fr, <32 x i8> %i.ft, <32 x i8> %i.el)
  %i.fv = bitcast <2 x i64> %i.ec to <16 x i8>
  %i.fw = shufflevector <16 x i8> %i.fv, <16 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.fx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.fu, <32 x i8> %i.fw, <32 x i8> %i.en)
  %i.fy = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.fz = shufflevector <16 x i8> %i.fy, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ga = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.fz, <32 x i8> %i.eh)
  %i.gb = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.gc = shufflevector <16 x i8> %i.gb, <16 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7>
  %i.gd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ga, <32 x i8> %i.gc, <32 x i8> %i.ej)
  %i.ge = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.gf = shufflevector <16 x i8> %i.ge, <16 x i8> poison, <32 x i32> <i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11>
  %i.gg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gd, <32 x i8> %i.gf, <32 x i8> %i.el)
  %i.gh = bitcast <2 x i64> %i.ee to <16 x i8>
  %i.gi = shufflevector <16 x i8> %i.gh, <16 x i8> poison, <32 x i32> <i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15>
  %i.gj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.gg, <32 x i8> %i.gi, <32 x i8> %i.en)
  %i.gk = shl nuw nsw i64 %indvars.iv.i.i.us, 3
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.gk
  %.val9394.i.i.us = load <8 x i8>, ptr %i.gl, align 1, !tbaa !29, !alias.scope !52
  %i.gm = sext <8 x i8> %.val9394.i.i.us to <8 x i32> ; 4 uses
  %i.gn = mul <8 x i32> %i.ez, %i.gm
  %i.go = add <8 x i32> %i.gn, %.sroa.0135.0.i.i.us ; 2 uses
  %i.gp = mul <8 x i32> %i.fl, %i.gm
  %i.gq = add <8 x i32> %i.gp, %.sroa.8138.0.i.i.us ; 2 uses
  %i.gr = mul <8 x i32> %i.fx, %i.gm
  %i.gs = add <8 x i32> %i.gr, %.sroa.13.0.i.i.us ; 2 uses
  %i.gt = mul <8 x i32> %i.gj, %i.gm
  %i.gu = add <8 x i32> %i.gt, %.sroa.18.0.i.i.us ; 2 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, 16
  br i1 %exitcond.not.i.i.us, label %bb.g, label %bb.f, !llvm.loop !0

bb.g:                                             ; preds = %bb.f
  %i.gv = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.gw = load <8 x i32>, ptr %i.gv, align 1, !tbaa !29, !alias.scope !52 ; 4 uses
  %i.gx = sub <8 x i32> %i.go, %i.gw
  %i.gy = sub <8 x i32> %i.gq, %i.gw
  %i.gz = sub <8 x i32> %i.gs, %i.gw
  %i.ha = sub <8 x i32> %i.gu, %i.gw
  %i.hb = load <8 x float>, ptr %i.dl, align 1, !tbaa !29, !alias.scope !52 ; 4 uses
  %i.hc = sitofp <8 x i32> %i.gx to <8 x float>
  %i.hd = load float, ptr %i.do, align 4, !tbaa !33, !noalias !51
  %i.he = insertelement <8 x float> poison, float %i.hd, i64 0
  %i.hf = shufflevector <8 x float> %i.he, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hg = fmul <8 x float> %i.hb, %i.hf
  %i.hh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hc, <8 x float> %i.hg, <8 x float> %.sroa.0145.1.i.i.us) ; 2 uses
  %i.hi = sitofp <8 x i32> %i.gy to <8 x float>
  %i.hj = load float, ptr %i.dq, align 4, !tbaa !33, !noalias !51
  %i.hk = insertelement <8 x float> poison, float %i.hj, i64 0
  %i.hl = shufflevector <8 x float> %i.hk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hm = fmul <8 x float> %i.hb, %i.hl
  %i.hn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hi, <8 x float> %i.hm, <8 x float> %.sroa.6147.1.i.i.us) ; 2 uses
  %i.ho = sitofp <8 x i32> %i.gz to <8 x float>
  %i.hp = load float, ptr %i.ds, align 4, !tbaa !33, !noalias !51
  %i.hq = insertelement <8 x float> poison, float %i.hp, i64 0
  %i.hr = shufflevector <8 x float> %i.hq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hs = fmul <8 x float> %i.hb, %i.hr
  %i.ht = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ho, <8 x float> %i.hs, <8 x float> %.sroa.9149.1.i.i.us) ; 2 uses
  %i.hu = sitofp <8 x i32> %i.ha to <8 x float>
  %i.hv = load float, ptr %i.du, align 4, !tbaa !33, !noalias !51
  %i.hw = insertelement <8 x float> poison, float %i.hv, i64 0
  %i.hx = shufflevector <8 x float> %i.hw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hy = fmul <8 x float> %i.hb, %i.hx
  %i.hz = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.hu, <8 x float> %i.hy, <8 x float> %.sroa.12151.1.i.i.us) ; 2 uses
  %indvars.iv.next122.i.i.us = add nuw nsw i64 %indvars.iv121.i.i.us, 1 ; 2 uses
  %exitcond124.not.i.i.us = icmp eq i64 %indvars.iv.next122.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond124.not.i.i.us, label %_ZL20iqp_gemm_8x8_q8_K_p4iPfmPKvPKS1_i.exit.us, label %.lr.ph.i.i.us, !llvm.loop !1

_ZL20iqp_gemm_8x8_q8_K_p4iPfmPKvPKS1_i.exit.us:   ; preds = %bb.g, %bb.e
  %.sroa.12151.0.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.hz, %bb.g ]
  %.sroa.9149.0.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.ht, %bb.g ]
  %.sroa.6147.0.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.hn, %bb.g ]
  %.sroa.0145.0.i.i.us = phi <8 x float> [ zeroinitializer, %bb.e ], [ %i.hh, %bb.g ]
  %i.ia = icmp sgt i64 %i.bi, 0
  br i1 %i.ia, label %.lr.ph.us, label %._crit_edge.us

.lr.ph.us:                                        ; preds = %_ZL20iqp_gemm_8x8_q8_K_p4iPfmPKvPKS1_i.exit.us
  %i.ib = load ptr, ptr %i.bd, align 8, !tbaa !26
  %.idx143.us = shl nuw nsw i64 %.0119154.us, 3
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 %.idx143.us ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !28
  %i.ie = sext i32 %i.id to i64
  %i.if = mul i64 %i.w, %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.ij = sext i32 %i.ii to i64
  %i.ik = mul i64 %i.y, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ik
  %i.im = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.be
  store <8 x float> %.sroa.0145.0.i.i.us, ptr %i.im, align 4
  %exitcond171.not = icmp slt i64 %indvars.iv, 2
  br i1 %exitcond171.not, label %._crit_edge.us, label %.lr.ph.us.1

.lr.ph.us.1:                                      ; preds = %.lr.ph.us
  %i.in = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.io = shl i64 %.0119154.us, 3
  %i.ip = getelementptr inbounds nuw i8, ptr %4, i64 %i.io ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !28
  %i.is = sext i32 %i.ir to i64
  %i.it = mul i64 %i.w, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !28
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul i64 %i.y, %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iy
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.be
  store <8 x float> %.sroa.6147.0.i.i.us, ptr %i.ja, align 4
  %exitcond171.not.1 = icmp eq i64 %indvars.iv, 2
  br i1 %exitcond171.not.1, label %._crit_edge.us, label %.lr.ph.us.2

.lr.ph.us.2:                                      ; preds = %.lr.ph.us.1
  %i.jb = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.jc = shl i64 %.0119154.us, 3
  %i.jd = getelementptr inbounds nuw i8, ptr %4, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !28
  %i.jg = sext i32 %i.jf to i64
  %i.jh = mul i64 %i.w, %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jd, i64 20
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !28
  %i.jl = sext i32 %i.jk to i64
  %i.jm = mul i64 %i.y, %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jm
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.jn, i64 %i.be
  store <8 x float> %.sroa.9149.0.i.i.us, ptr %i.jo, align 4
  %exitcond171.not.2 = icmp eq i64 %indvars.iv, 3
  br i1 %exitcond171.not.2, label %._crit_edge.us, label %.lr.ph.us.3

.lr.ph.us.3:                                      ; preds = %.lr.ph.us.2
  %i.jp = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.jq = shl i64 %.0119154.us, 3
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 %i.jq ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !28
  %i.ju = sext i32 %i.jt to i64
  %i.jv = mul i64 %i.w, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jv
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 28
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !28
  %i.jz = sext i32 %i.jy to i64
  %i.ka = mul i64 %i.y, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.ka
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.be
  store <8 x float> %.sroa.12151.0.i.i.us, ptr %i.kc, align 4
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.us, %.lr.ph.us.1, %.lr.ph.us.2, %.lr.ph.us.3, %_ZL20iqp_gemm_8x8_q8_K_p4iPfmPKvPKS1_i.exit.us
  %i.kd = add nuw nsw i64 %.0119154.us, 4         ; 2 uses
  %i.ke = icmp slt i64 %i.kd, %3
  %indvars.iv.next = add i64 %indvars.iv, -4
  br i1 %i.ke, label %bb.e, label %._crit_edge157.us, !llvm.loop !47

._crit_edge157.us:                                ; preds = %._crit_edge.us
  %i.kf = add i64 %.0120158.us, 1                 ; 2 uses
  %exitcond172.not = icmp eq i64 %i.kf, %i.aw
  br i1 %exitcond172.not, label %._crit_edge161, label %.lr.ph156.us, !llvm.loop !48

._crit_edge161:                                   ; preds = %.lr.ph160.split, %._crit_edge157.us, %bb.d
  ret void

.lr.ph160.split:                                  ; preds = %.lr.ph160, %.lr.ph160.split
  %.0120158 = phi i64 [ %i.kk, %.lr.ph160.split ], [ %i.as, %.lr.ph160 ] ; 2 uses
  %i.kg = shl nsw i64 %.0120158, 3
  %i.kh = load i32, ptr %i.b, align 8, !tbaa !20
  %i.ki = mul i64 %i.kg, %i.o
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ki
  tail call fastcc void @_ZL18iqp_decode_panel_89ggml_typePKcmlP12block_iqp_x8(i32 noundef %i.kh, ptr noundef %i.kj, i64 noundef %i.o, i64 noundef %i.ac, ptr noundef %i.am)
  %i.kk = add i64 %.0120158, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.kk, %i.aw
  br i1 %exitcond.not, label %._crit_edge161, label %.lr.ph160.split, !llvm.loop !48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, -63) i64 @ggml_cpu_iqp_scratch_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15
  %i.e = sdiv i64 %i.d, 256
  %i.f = mul i64 %i.e, 2240
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL18iqp_decode_panel_89ggml_typePKcmlP12block_iqp_x8(i32 noundef %0, ptr noalias nofree noundef readonly %1, i64 noundef %2, i64 noundef range(i64 -36028797018963968, 36028797018963968) %3, ptr noalias nofree noundef writeonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x [256 x i8]], align 16        ; 68 uses
  %i.b = alloca [8 x [16 x i8]], align 16         ; 4 uses
  %i.c = alloca [8 x float], align 16             ; 4 uses
  %i.d = tail call i64 @ggml_type_size(i32 noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.e = icmp sgt i64 %3, 0
  br i1 %i.e, label %.preheader51.lr.ph, label %._crit_edge

.preheader51.lr.ph:                               ; preds = %bb.a
  switch i32 %0, label %_ZL21iqp_decode_superblock9ggml_typePKvPaS2_Pf.exit [
    i32 16, label %.preheader51.preheader
    i32 17, label %.preheader51.preheader
    i32 22, label %.preheader51.preheader
    i32 18, label %.preheader51.preheader
    i32 21, label %.preheader51.preheader
    i32 19, label %.preheader51.preheader
    i32 29, label %.preheader51.preheader
    i32 23, label %.preheader51.preheader
  ]

.preheader51.preheader:                           ; preds = %.preheader51.lr.ph, %.preheader51.lr.ph, %.preheader51.lr.ph, %.preheader51.lr.ph, %.preheader51.lr.ph, %.preheader51.lr.ph, %.preheader51.lr.ph, %.preheader51.lr.ph
  %gep.1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %gep.2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %gep.3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %gep.4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %gep.5.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1280
  %gep.6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1536
  %gep.7.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1792
  %invariant.gep.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %gep.1.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %gep.2.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %gep.3.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  %gep.4.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %gep.5.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  %gep.6.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1568
  %gep.7.i.1 = getelementptr inbounds nuw i8, ptr %i.a, i64 1824
  %invariant.gep.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %gep.1.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %gep.2.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %gep.3.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  %gep.4.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %gep.5.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1344
  %gep.6.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1600
  %gep.7.i.2 = getelementptr inbounds nuw i8, ptr %i.a, i64 1856
  %invariant.gep.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %gep.1.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %gep.2.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %gep.3.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  %gep.4.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %gep.5.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1376
  %gep.6.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1632
  %gep.7.i.3 = getelementptr inbounds nuw i8, ptr %i.a, i64 1888
  %invariant.gep.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %gep.1.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %gep.2.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %gep.3.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %gep.4.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  %gep.5.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1408
  %gep.6.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1664
  %gep.7.i.4 = getelementptr inbounds nuw i8, ptr %i.a, i64 1920
  %invariant.gep.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %gep.1.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %gep.2.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %gep.3.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %gep.4.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %gep.5.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1440
  %gep.6.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1696
  %gep.7.i.5 = getelementptr inbounds nuw i8, ptr %i.a, i64 1952
  %invariant.gep.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %gep.1.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %gep.2.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %gep.3.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %gep.4.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %gep.5.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1472
  %gep.6.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1728
  %gep.7.i.6 = getelementptr inbounds nuw i8, ptr %i.a, i64 1984
  %invariant.gep.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %gep.1.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %gep.2.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  %gep.3.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %gep.4.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1248
  %gep.5.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1504
  %gep.6.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1760
  %gep.7.i.7 = getelementptr inbounds nuw i8, ptr %i.a, i64 2016
  br label %.preheader51

.preheader51:                                     ; preds = %.preheader51.preheader, %.preheader
  %.04157 = phi i64 [ 0, %.preheader51.preheader ], [ %i.bjk, %.preheader ] ; 2 uses
  %.04256 = phi ptr [ %4, %.preheader51.preheader ], [ %i.bjj, %.preheader ] ; 68 uses
  %i.f = mul i64 %.04157, %i.d
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.f
  br label %bb.b

._crit_edge:                                      ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

.preheader50:                                     ; preds = %.loopexit
  %i.g = getelementptr inbounds nuw i8, ptr %.04256, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %.04256, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.04256, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa !139
  br label %bb.j

bb.b:                                             ; preds = %.preheader51, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader51 ], [ %indvars.iv.next, %.loopexit ] ; 5 uses
  %i.i = mul i64 %2, %indvars.iv
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.i ; 116 uses
  %i.j = getelementptr inbounds nuw [256 x i8], ptr %i.a, i64 %indvars.iv ; 51 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv ; 56 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  switch i32 %0, label %bb.i [
    i32 16, label %.loopexit.loopexit
    i32 17, label %bb.c
    i32 22, label %.loopexit.loopexit113
    i32 18, label %bb.e
    i32 21, label %.loopexit.loopexit115
    i32 19, label %.loopexit.loopexit116
    i32 29, label %bb.g
  ]

.loopexit.loopexit:                               ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.m = load i16, ptr %gep, align 2, !tbaa !150, !alias.scope !151
  %i.n = zext i16 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !139, !noalias !152
  %i.q = fmul float %i.p, 1.250000e-01
  store float %i.q, ptr %i.l, align 4, !tbaa !139, !alias.scope !153
  %i.r = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 2, !alias.scope !151 ; 3 uses
  %i.t = lshr i32 %.sroa.7.0.copyload.i.i, 27
  %i.u = trunc nuw nsw i32 %i.t to i8
  %i.v = or i8 %i.u, 1                            ; 2 uses
  store i8 %i.v, ptr %i.k, align 16, !tbaa !29, !alias.scope !154
  store i8 %i.v, ptr %i.s, align 1, !tbaa !29, !alias.scope !154
  %i.w = insertelement <4 x i32> poison, i32 %.sroa.7.0.copyload.i.i, i64 0
  %i.x = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.y = lshr <4 x i32> %i.x, <i32 7, i32 14, i32 21, i32 0>
  %i.z = and i32 %.sroa.7.0.copyload.i.i, 127
  %i.aa = and <4 x i32> %i.y, splat (i32 127)     ; 3 uses
  %i.ab = lshr <4 x i32> %i.aa, splat (i32 4)
  %i.ac = xor <4 x i32> %i.ab, %i.aa              ; 2 uses
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 2)
  %i.ae = xor <4 x i32> %i.ad, %i.ac              ; 2 uses
  %i.af = lshr <4 x i32> %i.ae, splat (i32 1)
  %i.ag = xor <4 x i32> %i.af, %i.ae
  %i.ah = shl nuw nsw <4 x i32> %i.ag, splat (i32 7)
  %i.ai = and <4 x i32> %i.ah, splat (i32 128)
  %i.aj = insertelement <4 x i32> %i.aa, i32 0, i64 3
  %i.ak = or disjoint <4 x i32> %i.ai, %i.aj
  %i.al = shl nuw <4 x i32> %i.ak, <i32 8, i32 16, i32 24, i32 0>
  %i.am = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.al)
  %op.rdx = or disjoint i32 %i.am, %i.z
  %i.an = load <4 x i8>, ptr %i.r, align 2, !alias.scope !151
  %i.ao = zext <4 x i8> %i.an to <4 x i64>
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_ZL11iq2xxs_grid, <4 x i64> %i.ao
  %i.aq = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.ap, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !15, !noalias !152
  %i.ar = insertelement <8 x i32> poison, i32 %op.rdx, i64 0
  %i.as = bitcast <8 x i32> %i.ar to <32 x i8>
  %i.at = shufflevector <32 x i8> %i.as, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.au = tail call <32 x i8> @llvm.x86.vgf2p8affineqb.256(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.at, i8 0) ; 2 uses
  %i.av = bitcast <4 x i64> %i.aq to <32 x i8>
  %i.aw = xor <32 x i8> %i.au, %i.av
  %i.ax = sub <32 x i8> %i.aw, %i.au
  store <32 x i8> %i.ax, ptr %i.j, align 16, !tbaa !29, !alias.scope !155
  %i.ay = getelementptr inbounds nuw i8, ptr %gep, i64 10
  %.sroa.7.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %gep, i64 14
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  %.sroa.7.0.copyload.i.i.1 = load i32, ptr %.sroa.7.0..sroa_idx.i.i.1, align 2, !alias.scope !151 ; 3 uses
  %i.bb = lshr i32 %.sroa.7.0.copyload.i.i.1, 27
  %i.bc = trunc nuw nsw i32 %i.bb to i8
  %i.bd = or i8 %i.bc, 1                          ; 2 uses
  store i8 %i.bd, ptr %i.az, align 2, !tbaa !29, !alias.scope !154
  store i8 %i.bd, ptr %i.ba, align 1, !tbaa !29, !alias.scope !154
  %i.be = insertelement <4 x i32> poison, i32 %.sroa.7.0.copyload.i.i.1, i64 0
  %i.bf = shufflevector <4 x i32> %i.be, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bg = lshr <4 x i32> %i.bf, <i32 7, i32 14, i32 21, i32 0>
  %i.bh = and i32 %.sroa.7.0.copyload.i.i.1, 127
  %i.bi = and <4 x i32> %i.bg, splat (i32 127)    ; 3 uses
  %i.bj = lshr <4 x i32> %i.bi, splat (i32 4)
  %i.bk = xor <4 x i32> %i.bj, %i.bi              ; 2 uses
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 2)
  %i.bm = xor <4 x i32> %i.bl, %i.bk              ; 2 uses
  %i.bn = lshr <4 x i32> %i.bm, splat (i32 1)
  %i.bo = xor <4 x i32> %i.bn, %i.bm
  %i.bp = shl nuw nsw <4 x i32> %i.bo, splat (i32 7)
  %i.bq = and <4 x i32> %i.bp, splat (i32 128)
  %i.br = insertelement <4 x i32> %i.bi, i32 0, i64 3
  %i.bs = or disjoint <4 x i32> %i.bq, %i.br
  %i.bt = shl nuw <4 x i32> %i.bs, <i32 8, i32 16, i32 24, i32 0>
  %i.bu = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bt)
  %op.rdx.1 = or disjoint i32 %i.bu, %i.bh
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.bw = load <4 x i8>, ptr %i.ay, align 2, !alias.scope !151
  %i.bx = zext <4 x i8> %i.bw to <4 x i64>
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZL11iq2xxs_grid, <4 x i64> %i.bx
  %i.bz = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.by, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !15, !noalias !152
  %i.ca = insertelement <8 x i32> poison, i32 %op.rdx.1, i64 0
  %i.cb = bitcast <8 x i32> %i.ca to <32 x i8>
  %i.cc = shufflevector <32 x i8> %i.cb, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.cd = tail call <32 x i8> @llvm.x86.vgf2p8affineqb.256(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.cc, i8 0) ; 2 uses
  %i.ce = bitcast <4 x i64> %i.bz to <32 x i8>
  %i.cf = xor <32 x i8> %i.cd, %i.ce
  %i.cg = sub <32 x i8> %i.cf, %i.cd
  store <32 x i8> %i.cg, ptr %i.bv, align 16, !tbaa !29, !alias.scope !155
  %i.ch = getelementptr inbounds nuw i8, ptr %gep, i64 18
  %.sroa.7.0..sroa_idx.i.i.2 = getelementptr inbounds nuw i8, ptr %gep, i64 22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %.sroa.7.0.copyload.i.i.2 = load i32, ptr %.sroa.7.0..sroa_idx.i.i.2, align 2, !alias.scope !151 ; 3 uses
  %i.ck = lshr i32 %.sroa.7.0.copyload.i.i.2, 27
  %i.cl = trunc nuw nsw i32 %i.ck to i8
  %i.cm = or i8 %i.cl, 1                          ; 2 uses
  store i8 %i.cm, ptr %i.ci, align 4, !tbaa !29, !alias.scope !154
  store i8 %i.cm, ptr %i.cj, align 1, !tbaa !29, !alias.scope !154
  %i.cn = insertelement <4 x i32> poison, i32 %.sroa.7.0.copyload.i.i.2, i64 0
  %i.co = shufflevector <4 x i32> %i.cn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cp = lshr <4 x i32> %i.co, <i32 7, i32 14, i32 21, i32 0>
  %i.cq = and i32 %.sroa.7.0.copyload.i.i.2, 127
  %i.cr = and <4 x i32> %i.cp, splat (i32 127)    ; 3 uses
  %i.cs = lshr <4 x i32> %i.cr, splat (i32 4)
  %i.ct = xor <4 x i32> %i.cs, %i.cr              ; 2 uses
  %i.cu = lshr <4 x i32> %i.ct, splat (i32 2)
  %i.cv = xor <4 x i32> %i.cu, %i.ct              ; 2 uses
  %i.cw = lshr <4 x i32> %i.cv, splat (i32 1)
  %i.cx = xor <4 x i32> %i.cw, %i.cv
  %i.cy = shl nuw nsw <4 x i32> %i.cx, splat (i32 7)
  %i.cz = and <4 x i32> %i.cy, splat (i32 128)
  %i.da = insertelement <4 x i32> %i.cr, i32 0, i64 3
  %i.db = or disjoint <4 x i32> %i.cz, %i.da
  %i.dc = shl nuw <4 x i32> %i.db, <i32 8, i32 16, i32 24, i32 0>
  %i.dd = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dc)
  %op.rdx.2 = or disjoint i32 %i.dd, %i.cq
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.df = load <4 x i8>, ptr %i.ch, align 2, !alias.scope !151
  %i.dg = zext <4 x i8> %i.df to <4 x i64>
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @_ZL11iq2xxs_grid, <4 x i64> %i.dg
  %i.di = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.dh, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !15, !noalias !152
  %i.dj = insertelement <8 x i32> poison, i32 %op.rdx.2, i64 0
  %i.dk = bitcast <8 x i32> %i.dj to <32 x i8>
  %i.dl = shufflevector <32 x i8> %i.dk, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.dm = tail call <32 x i8> @llvm.x86.vgf2p8affineqb.256(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.dl, i8 0) ; 2 uses
  %i.dn = bitcast <4 x i64> %i.di to <32 x i8>
  %i.do = xor <32 x i8> %i.dm, %i.dn
  %i.dp = sub <32 x i8> %i.do, %i.dm
  store <32 x i8> %i.dp, ptr %i.de, align 16, !tbaa !29, !alias.scope !155
  %i.dq = getelementptr inbounds nuw i8, ptr %gep, i64 26
  %.sroa.7.0..sroa_idx.i.i.3 = getelementptr inbounds nuw i8, ptr %gep, i64 30
  %i.dr = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  %.sroa.7.0.copyload.i.i.3 = load i32, ptr %.sroa.7.0..sroa_idx.i.i.3, align 2, !alias.scope !151 ; 3 uses
  %i.dt = lshr i32 %.sroa.7.0.copyload.i.i.3, 27
  %i.du = trunc nuw nsw i32 %i.dt to i8
  %i.dv = or i8 %i.du, 1                          ; 2 uses
  store i8 %i.dv, ptr %i.dr, align 2, !tbaa !29, !alias.scope !154
  store i8 %i.dv, ptr %i.ds, align 1, !tbaa !29, !alias.scope !154
  %i.dw = insertelement <4 x i32> poison, i32 %.sroa.7.0.copyload.i.i.3, i64 0
  %i.dx = shufflevector <4 x i32> %i.dw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dy = lshr <4 x i32> %i.dx, <i32 7, i32 14, i32 21, i32 0>
  %i.dz = and i32 %.sroa.7.0.copyload.i.i.3, 127
  %i.ea = and <4 x i32> %i.dy, splat (i32 127)    ; 3 uses
  %i.eb = lshr <4 x i32> %i.ea, splat (i32 4)
  %i.ec = xor <4 x i32> %i.eb, %i.ea              ; 2 uses
  %i.ed = lshr <4 x i32> %i.ec, splat (i32 2)
  %i.ee = xor <4 x i32> %i.ed, %i.ec              ; 2 uses
  %i.ef = lshr <4 x i32> %i.ee, splat (i32 1)
  %i.eg = xor <4 x i32> %i.ef, %i.ee
  %i.eh = shl nuw nsw <4 x i32> %i.eg, splat (i32 7)
  %i.ei = and <4 x i32> %i.eh, splat (i32 128)
  %i.ej = insertelement <4 x i32> %i.ea, i32 0, i64 3
  %i.ek = or disjoint <4 x i32> %i.ei, %i.ej
  %i.el = shl nuw <4 x i32> %i.ek, <i32 8, i32 16, i32 24, i32 0>
  %i.em = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.el)
  %op.rdx.3 = or disjoint i32 %i.em, %i.dz
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.eo = load <4 x i8>, ptr %i.dq, align 2, !alias.scope !151
  %i.ep = zext <4 x i8> %i.eo to <4 x i64>
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @_ZL11iq2xxs_grid, <4 x i64> %i.ep
  %i.er = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.eq, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !15, !noalias !152
  %i.es = insertelement <8 x i32> poison, i32 %op.rdx.3, i64 0
  %i.et = bitcast <8 x i32> %i.es to <32 x i8>
  %i.eu = shufflevector <32 x i8> %i.et, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ev = tail call <32 x i8> @llvm.x86.vgf2p8affineqb.256(<32 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128, i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <32 x i8> %i.eu, i8 0) ; 2 uses
  %i.ew = bitcast <4 x i64> %i.er to <32 x i8>
  %i.ex = xor <32 x i8> %i.ev, %i.ew
  %i.ey = sub <32 x i8> %i.ex, %i.ev
  store <32 x i8> %i.ey, ptr %i.en, align 16, !tbaa !29, !alias.scope !155
  %i.ez = getelementptr inbounds nuw i8, ptr %gep, i64 34
  %.sroa.7.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %gep, i64 38
  %i.fa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %.sroa.7.0.copyload.i.i.4 = load i32, ptr %.sroa.7.0..sroa_idx.i.i.4, align 2, !alias.scope !151 ; 3 uses
  %i.fc = lshr i32 %.sroa.7.0.copyload.i.i.4, 27
  %i.fd = trunc nuw nsw i32 %i.fc to i8
  %i.fe = or i8 %i.fd, 1                          ; 2 uses
  store i8 %i.fe, ptr %i.fa, align 8, !tbaa !29, !alias.scope !154
  store i8 %i.fe, ptr %i.fb, align 1, !tbaa !29, !alias.scope !154
  %i.ff = insertelement <4 x i32> poison, i32 %.sroa.7.0.copyload.i.i.4, i64 0
  %i.fg = shufflevector <4 x i32> %i.ff, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fh = lshr <4 x i32> %i.fg, <i32 7, i32 14, i32 21, i32 0>
  %i.fi = and i32 %.sroa.7.0.copyload.i.i.4, 127
  %i.fj = and <4 x i32> %i.fh, splat (i32 127)    ; 3 uses
  %i.fk = lshr <4 x i32> %i.fj, splat (i32 4)
  %i.fl = xor <4 x i32> %i.fk, %i.fj              ; 2 uses
  %i.fm = lshr <4 x i32> %i.fl, splat (i32 2)
  %i.fn = xor <4 x i32> %i.fm, %i.fl              ; 2 uses
  %i.fo = lshr <4 x i32> %i.fn, splat (i32 1)
  %i.fp = xor <4 x i32> %i.fo, %i.fn
  %i.fq = shl nuw nsw <4 x i32> %i.fp, splat (i32 7)
  %i.fr = and <4 x i32> %i.fq, splat (i32 128)
  %i.fs = insertelement <4 x i32> %i.fj, i32 0, i64 3
  %i.ft = or disjoint <4 x i32> %i.fr, %i.fs
end_hunk_0
begin_hunk_1_@_ZL18iqp_decode_panel_89ggml_typePKcmlP12block_iqp_x8:bb.a
  %i.ard = lshr i32 %i.ara, %i.arc
  %.tr.i.i = trunc i32 %i.ard to i8
  %i.are = shl i8 %.tr.i.i, 1
  %i.arf = and i8 %i.are, 14
  %i.arg = or disjoint i8 %i.arf, 1
  %i.arh = shl nuw nsw i64 %indvars.iv.i49.i, 1
  %i.ari = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.arh ; 2 uses
  store i8 %i.arg, ptr %i.ari, align 2, !tbaa !29, !alias.scope !219
  %i.arj = add nuw nsw i32 %i.arc, 3
  %i.ark = lshr i32 %i.ara, %i.arj
  %.tr40.i.i = trunc i32 %i.ark to i8
  %i.arl = shl i8 %.tr40.i.i, 1
  %i.arm = and i8 %i.arl, 14
  %i.arn = or disjoint i8 %i.arm, 1
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ari, i64 1
  store i8 %i.arn, ptr %i.aro, align 1, !tbaa !29, !alias.scope !219
  %i.arp = shl nuw nsw i64 %indvars.iv.i49.i, 5
  %i.arq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.arp
  %i.arr = load <2 x i8>, ptr %.03845.i.i, align 1, !tbaa !29, !alias.scope !216 ; 3 uses
  %i.ars = shufflevector <2 x i8> %i.arr, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.art = extractelement <2 x i8> %i.arr, i64 1  ; 2 uses
  %i.aru = extractelement <2 x i8> %i.arr, i64 0  ; 2 uses
  %i.arv = zext <4 x i8> %i.ars to <4 x i32>
  %i.arw = load <4 x i8>, ptr %.046.i.i, align 1, !tbaa !29, !alias.scope !216
  %i.arx = zext <4 x i8> %i.arw to <4 x i32>
  %i.ary = shl nuw nsw <4 x i32> %i.arv, <i32 8, i32 4, i32 8, i32 4>
  %i.arz = and <4 x i32> %i.ary, splat (i32 1792)
  %i.asa = or disjoint <4 x i32> %i.arz, %i.arx
  %i.asb = zext nneg <4 x i32> %i.asa to <4 x i64>
  %i.asc = and i8 %i.aru, 8
  %.not.i50.i = icmp eq i8 %i.asc, 0
  %i.asd = select i1 %.not.i50.i, i32 1, i32 255
  %.not41.i.i = icmp sgt i8 %i.aru, -1
  %i.ase = select i1 %.not41.i.i, i32 256, i32 65280
  %i.asf = or disjoint i32 %i.asd, %i.ase
  %i.asg = and i8 %i.art, 8
  %.not42.i.i = icmp eq i8 %i.asg, 0
  %i.ash = select i1 %.not42.i.i, i32 65536, i32 16711680
  %.not43.i.i = icmp sgt i8 %i.art, -1
  %i.asi = select i1 %.not43.i.i, i32 16777216, i32 -16777216
  %i.asj = or disjoint i32 %i.asf, %i.asi
  %i.ask = or disjoint i32 %i.asj, %i.ash
  %i.asl = getelementptr inbounds nuw [8 x i8], ptr @_ZL9iq1s_grid, <4 x i64> %i.asb
  %i.asm = tail call <4 x i64> @llvm.masked.gather.v4i64.v4p0(<4 x ptr> align 8 %i.asl, <4 x i1> splat (i1 true), <4 x i64> poison), !tbaa !15, !noalias !217
  %i.asn = bitcast <4 x i64> %i.asm to <32 x i8>
  %i.aso = shl <32 x i8> %i.asn, splat (i8 3)
  %i.asp = insertelement <8 x i32> poison, i32 %i.ask, i64 0
  %i.asq = bitcast <8 x i32> %i.asp to <32 x i8>
  %i.asr = shufflevector <32 x i8> %i.asq, <32 x i8> poison, <32 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ass = add <32 x i8> %i.asr, %i.aso
  store <32 x i8> %i.ass, ptr %i.arq, align 16, !tbaa !29, !alias.scope !220
  %i.ast = getelementptr inbounds nuw i8, ptr %.046.i.i, i64 4
  %i.asu = getelementptr inbounds nuw i8, ptr %.03845.i.i, i64 2
  %indvars.iv.next.i51.i = add nuw nsw i64 %indvars.iv.i49.i, 1 ; 2 uses
  %exitcond.not.i52.i = icmp eq i64 %indvars.iv.next.i51.i, 8
  br i1 %exitcond.not.i52.i, label %.loopexit, label %bb.h, !llvm.loop !109

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.asv = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.asw = load i16, ptr %gep, align 2, !tbaa !226, !alias.scope !227
  %i.asx = zext i16 %i.asw to i64
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.asx
  %i.asz = load float, ptr %i.asy, align 4, !tbaa !139, !noalias !228
  store float %i.asz, ptr %i.l, align 4, !tbaa !139, !alias.scope !229
  %i.ata = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.atb = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.atc = load i16, ptr %i.atb, align 2, !tbaa !230, !alias.scope !227
  %.0.val.i.i = load <2 x i64>, ptr %i.asv, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.atd = bitcast <2 x i64> %.0.val.i.i to <16 x i8>
  %i.ate = and <16 x i8> %i.atd, splat (i8 15)
  %i.atf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.ate)
  store <16 x i8> %i.atf, ptr %i.j, align 16, !tbaa !29, !alias.scope !231
  %i.atg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ath = bitcast <2 x i64> %.0.val.i.i to <8 x i16>
  %i.ati = lshr <8 x i16> %i.ath, splat (i16 4)
  %i.atj = bitcast <8 x i16> %i.ati to <16 x i8>
  %i.atk = and <16 x i8> %i.atj, splat (i8 15)
  %i.atl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.atk)
  store <16 x i8> %i.atl, ptr %i.atg, align 16, !tbaa !29, !alias.scope !231
  %i.atm = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %i.atn = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.0.val.1.i.i = load <2 x i64>, ptr %i.atm, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.ato = bitcast <2 x i64> %.0.val.1.i.i to <16 x i8>
  %i.atp = and <16 x i8> %i.ato, splat (i8 15)
  %i.atq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.atp)
  store <16 x i8> %i.atq, ptr %i.atn, align 16, !tbaa !29, !alias.scope !231
  %i.atr = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ats = bitcast <2 x i64> %.0.val.1.i.i to <8 x i16>
  %i.att = lshr <8 x i16> %i.ats, splat (i16 4)
  %i.atu = bitcast <8 x i16> %i.att to <16 x i8>
  %i.atv = and <16 x i8> %i.atu, splat (i8 15)
  %i.atw = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.atv)
  store <16 x i8> %i.atw, ptr %i.atr, align 16, !tbaa !29, !alias.scope !231
  %i.atx = getelementptr inbounds nuw i8, ptr %gep, i64 40
  %i.aty = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %.0.val.2.i.i = load <2 x i64>, ptr %i.atx, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.atz = bitcast <2 x i64> %.0.val.2.i.i to <16 x i8>
  %i.aua = and <16 x i8> %i.atz, splat (i8 15)
  %i.aub = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.aua)
  store <16 x i8> %i.aub, ptr %i.aty, align 16, !tbaa !29, !alias.scope !231
  %i.auc = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.aud = bitcast <2 x i64> %.0.val.2.i.i to <8 x i16>
  %i.aue = lshr <8 x i16> %i.aud, splat (i16 4)
  %i.auf = bitcast <8 x i16> %i.aue to <16 x i8>
  %i.aug = and <16 x i8> %i.auf, splat (i8 15)
  %i.auh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.aug)
  store <16 x i8> %i.auh, ptr %i.auc, align 16, !tbaa !29, !alias.scope !231
  %i.aui = getelementptr inbounds nuw i8, ptr %gep, i64 56
  %i.auj = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %.0.val.3.i.i = load <2 x i64>, ptr %i.aui, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.auk = bitcast <2 x i64> %.0.val.3.i.i to <16 x i8>
  %i.aul = and <16 x i8> %i.auk, splat (i8 15)
  %i.aum = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.aul)
  store <16 x i8> %i.aum, ptr %i.auj, align 16, !tbaa !29, !alias.scope !231
  %i.aun = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  %i.auo = bitcast <2 x i64> %.0.val.3.i.i to <8 x i16>
  %i.aup = lshr <8 x i16> %i.auo, splat (i16 4)
  %i.auq = bitcast <8 x i16> %i.aup to <16 x i8>
  %i.aur = and <16 x i8> %i.auq, splat (i8 15)
  %i.aus = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.aur)
  store <16 x i8> %i.aus, ptr %i.aun, align 16, !tbaa !29, !alias.scope !231
  %i.aut = getelementptr inbounds nuw i8, ptr %gep, i64 72
  %i.auu = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %.0.val.4.i.i = load <2 x i64>, ptr %i.aut, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.auv = bitcast <2 x i64> %.0.val.4.i.i to <16 x i8>
  %i.auw = and <16 x i8> %i.auv, splat (i8 15)
  %i.aux = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.auw)
  store <16 x i8> %i.aux, ptr %i.auu, align 16, !tbaa !29, !alias.scope !231
  %i.auy = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.auz = bitcast <2 x i64> %.0.val.4.i.i to <8 x i16>
  %i.ava = lshr <8 x i16> %i.auz, splat (i16 4)
  %i.avb = bitcast <8 x i16> %i.ava to <16 x i8>
  %i.avc = and <16 x i8> %i.avb, splat (i8 15)
  %i.avd = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.avc)
  store <16 x i8> %i.avd, ptr %i.auy, align 16, !tbaa !29, !alias.scope !231
  %i.ave = getelementptr inbounds nuw i8, ptr %gep, i64 88
  %i.avf = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  %.0.val.5.i.i = load <2 x i64>, ptr %i.ave, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.avg = bitcast <2 x i64> %.0.val.5.i.i to <16 x i8>
  %i.avh = and <16 x i8> %i.avg, splat (i8 15)
  %i.avi = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.avh)
  store <16 x i8> %i.avi, ptr %i.avf, align 16, !tbaa !29, !alias.scope !231
  %i.avj = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  %i.avk = bitcast <2 x i64> %.0.val.5.i.i to <8 x i16>
  %i.avl = lshr <8 x i16> %i.avk, splat (i16 4)
  %i.avm = bitcast <8 x i16> %i.avl to <16 x i8>
  %i.avn = and <16 x i8> %i.avm, splat (i8 15)
  %i.avo = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.avn)
  store <16 x i8> %i.avo, ptr %i.avj, align 16, !tbaa !29, !alias.scope !231
  %i.avp = getelementptr inbounds nuw i8, ptr %gep, i64 104
  %i.avq = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %.0.val.6.i.i = load <2 x i64>, ptr %i.avp, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.avr = bitcast <2 x i64> %.0.val.6.i.i to <16 x i8>
  %i.avs = and <16 x i8> %i.avr, splat (i8 15)
  %i.avt = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.avs)
  store <16 x i8> %i.avt, ptr %i.avq, align 16, !tbaa !29, !alias.scope !231
  %i.avu = getelementptr inbounds nuw i8, ptr %i.j, i64 208
  %i.avv = bitcast <2 x i64> %.0.val.6.i.i to <8 x i16>
  %i.avw = lshr <8 x i16> %i.avv, splat (i16 4)
  %i.avx = bitcast <8 x i16> %i.avw to <16 x i8>
  %i.avy = and <16 x i8> %i.avx, splat (i8 15)
  %i.avz = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.avy)
  store <16 x i8> %i.avz, ptr %i.avu, align 16, !tbaa !29, !alias.scope !231
  %i.awa = getelementptr inbounds nuw i8, ptr %gep, i64 120
  %i.awb = zext i16 %i.atc to i32
  %i.awc = insertelement <3 x i32> poison, i32 %i.awb, i64 0
  %i.awd = shufflevector <3 x i32> %i.awc, <3 x i32> poison, <8 x i32> zeroinitializer
  %i.awe = shl nuw nsw <8 x i32> %i.awd, <i32 4, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.awf = load <4 x i8>, ptr %i.ata, align 2, !tbaa !29, !alias.scope !227
  %i.awg = shufflevector <4 x i8> %i.awf, <4 x i8> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.awh = zext <8 x i8> %i.awg to <8 x i32>      ; 2 uses
  %i.awi = and <8 x i32> %i.awh, <i32 15, i32 poison, i32 15, i32 poison, i32 15, i32 poison, i32 15, i32 poison>
  %i.awj = lshr <8 x i32> %i.awh, <i32 15, i32 4, i32 15, i32 4, i32 15, i32 4, i32 15, i32 4>
  %i.awk = shufflevector <8 x i32> %i.awi, <8 x i32> %i.awj, <8 x i32> <i32 0, i32 9, i32 2, i32 11, i32 4, i32 13, i32 6, i32 15>
  %i.awl = lshr <8 x i32> %i.awe, <i32 0, i32 0, i32 0, i32 2, i32 4, i32 6, i32 8, i32 10>
  %i.awm = and <8 x i32> %i.awl, splat (i32 48)
  %i.awn = or disjoint <8 x i32> %i.awm, %i.awk
  %i.awo = trunc nuw nsw <8 x i32> %i.awn to <8 x i8>
  %i.awp = add nsw <8 x i8> %i.awo, splat (i8 -32)
  %i.awq = shufflevector <8 x i8> %i.awp, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.awq, ptr %i.k, align 16, !tbaa !29, !alias.scope !232
  %i.awr = getelementptr inbounds nuw i8, ptr %i.j, i64 224
  %.0.val.7.i.i = load <2 x i64>, ptr %i.awa, align 2, !tbaa !29, !alias.scope !227 ; 2 uses
  %i.aws = bitcast <2 x i64> %.0.val.7.i.i to <16 x i8>
  %i.awt = and <16 x i8> %i.aws, splat (i8 15)
  %i.awu = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.awt)
  store <16 x i8> %i.awu, ptr %i.awr, align 16, !tbaa !29, !alias.scope !231
  %i.awv = getelementptr inbounds nuw i8, ptr %i.j, i64 240
  %i.aww = bitcast <2 x i64> %.0.val.7.i.i to <8 x i16>
  %i.awx = lshr <8 x i16> %i.aww, splat (i16 4)
  %i.awy = bitcast <8 x i16> %i.awx to <16 x i8>
  %i.awz = and <16 x i8> %i.awy, splat (i8 15)
  %i.axa = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <16 x i8> %i.awz)
  store <16 x i8> %i.axa, ptr %i.awv, align 16, !tbaa !29, !alias.scope !231
  br label %.loopexit

_ZL21iqp_decode_superblock9ggml_typePKvPaS2_Pf.exit: ; preds = %.preheader51.lr.ph
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 581, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #16
  unreachable

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.d, %.loopexit.loopexit116, %.loopexit.loopexit115, %.loopexit.loopexit113, %.loopexit.loopexit, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.preheader50, label %bb.b, !llvm.loop !117

.preheader:                                       ; preds = %bb.j
  %i.axb = getelementptr inbounds nuw i8, ptr %.04256, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.axc = load <8 x i32>, ptr %i.a, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axd = load <8 x i32>, ptr %gep.1.i, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axe = load <8 x i32>, ptr %gep.2.i, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axf = load <8 x i32>, ptr %gep.3.i, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axg = load <8 x i32>, ptr %gep.4.i, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axh = load <8 x i32>, ptr %gep.5.i, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axi = load <8 x i32>, ptr %gep.6.i, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axj = load <8 x i32>, ptr %gep.7.i, align 16, !tbaa !29, !noalias !233 ; 2 uses
  %i.axk = shufflevector <8 x i32> %i.axc, <8 x i32> %i.axd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.axl = shufflevector <8 x i32> %i.axc, <8 x i32> %i.axd, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.axm = shufflevector <8 x i32> %i.axe, <8 x i32> %i.axf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.axn = shufflevector <8 x i32> %i.axe, <8 x i32> %i.axf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.axo = shufflevector <8 x i32> %i.axg, <8 x i32> %i.axh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.axp = shufflevector <8 x i32> %i.axg, <8 x i32> %i.axh, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.axq = shufflevector <8 x i32> %i.axi, <8 x i32> %i.axj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.axr = shufflevector <8 x i32> %i.axi, <8 x i32> %i.axj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.axs = shufflevector <8 x i32> %i.axk, <8 x i32> %i.axm, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.axt = shufflevector <8 x i32> %i.axk, <8 x i32> %i.axm, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.axu = shufflevector <8 x i32> %i.axl, <8 x i32> %i.axn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.axv = shufflevector <8 x i32> %i.axl, <8 x i32> %i.axn, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.axw = shufflevector <8 x i32> %i.axo, <8 x i32> %i.axq, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.axx = shufflevector <8 x i32> %i.axo, <8 x i32> %i.axq, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.axy = shufflevector <8 x i32> %i.axp, <8 x i32> %i.axr, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.axz = shufflevector <8 x i32> %i.axp, <8 x i32> %i.axr, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.aya = shufflevector <8 x i32> %i.axs, <8 x i32> %i.axw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.aya, ptr %i.axb, align 4, !tbaa !29, !alias.scope !233
  %i.ayb = getelementptr inbounds nuw i8, ptr %.04256, i64 224
  %i.ayc = shufflevector <8 x i32> %i.axt, <8 x i32> %i.axx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.ayc, ptr %i.ayb, align 4, !tbaa !29, !alias.scope !233
  %i.ayd = getelementptr inbounds nuw i8, ptr %.04256, i64 256
  %i.aye = shufflevector <8 x i32> %i.axu, <8 x i32> %i.axy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.aye, ptr %i.ayd, align 4, !tbaa !29, !alias.scope !233
  %i.ayf = getelementptr inbounds nuw i8, ptr %.04256, i64 288
  %i.ayg = shufflevector <8 x i32> %i.axv, <8 x i32> %i.axz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.ayg, ptr %i.ayf, align 4, !tbaa !29, !alias.scope !233
  %i.ayh = getelementptr inbounds nuw i8, ptr %.04256, i64 320
  %i.ayi = shufflevector <8 x i32> %i.axs, <8 x i32> %i.axw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ayi, ptr %i.ayh, align 4, !tbaa !29, !alias.scope !233
  %i.ayj = getelementptr inbounds nuw i8, ptr %.04256, i64 352
  %i.ayk = shufflevector <8 x i32> %i.axt, <8 x i32> %i.axx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ayk, ptr %i.ayj, align 4, !tbaa !29, !alias.scope !233
  %i.ayl = getelementptr inbounds nuw i8, ptr %.04256, i64 384
  %i.aym = shufflevector <8 x i32> %i.axu, <8 x i32> %i.axy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.aym, ptr %i.ayl, align 4, !tbaa !29, !alias.scope !233
  %i.ayn = getelementptr inbounds nuw i8, ptr %.04256, i64 416
  %i.ayo = shufflevector <8 x i32> %i.axv, <8 x i32> %i.axz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.ayo, ptr %i.ayn, align 4, !tbaa !29, !alias.scope !233
  %i.ayp = getelementptr inbounds nuw i8, ptr %.04256, i64 448
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.ayq = load <8 x i32>, ptr %invariant.gep.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ayr = load <8 x i32>, ptr %gep.1.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ays = load <8 x i32>, ptr %gep.2.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ayt = load <8 x i32>, ptr %gep.3.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ayu = load <8 x i32>, ptr %gep.4.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ayv = load <8 x i32>, ptr %gep.5.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ayw = load <8 x i32>, ptr %gep.6.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ayx = load <8 x i32>, ptr %gep.7.i.1, align 16, !tbaa !29, !noalias !234 ; 2 uses
  %i.ayy = shufflevector <8 x i32> %i.ayq, <8 x i32> %i.ayr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ayz = shufflevector <8 x i32> %i.ayq, <8 x i32> %i.ayr, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aza = shufflevector <8 x i32> %i.ays, <8 x i32> %i.ayt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.azb = shufflevector <8 x i32> %i.ays, <8 x i32> %i.ayt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.azc = shufflevector <8 x i32> %i.ayu, <8 x i32> %i.ayv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.azd = shufflevector <8 x i32> %i.ayu, <8 x i32> %i.ayv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.aze = shufflevector <8 x i32> %i.ayw, <8 x i32> %i.ayx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.azf = shufflevector <8 x i32> %i.ayw, <8 x i32> %i.ayx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.azg = shufflevector <8 x i32> %i.ayy, <8 x i32> %i.aza, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.azh = shufflevector <8 x i32> %i.ayy, <8 x i32> %i.aza, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.azi = shufflevector <8 x i32> %i.ayz, <8 x i32> %i.azb, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.azj = shufflevector <8 x i32> %i.ayz, <8 x i32> %i.azb, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.azk = shufflevector <8 x i32> %i.azc, <8 x i32> %i.aze, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.azl = shufflevector <8 x i32> %i.azc, <8 x i32> %i.aze, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.azm = shufflevector <8 x i32> %i.azd, <8 x i32> %i.azf, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.azn = shufflevector <8 x i32> %i.azd, <8 x i32> %i.azf, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.azo = shufflevector <8 x i32> %i.azg, <8 x i32> %i.azk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.azo, ptr %i.ayp, align 4, !tbaa !29, !alias.scope !234
  %i.azp = getelementptr inbounds nuw i8, ptr %.04256, i64 480
  %i.azq = shufflevector <8 x i32> %i.azh, <8 x i32> %i.azl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.azq, ptr %i.azp, align 4, !tbaa !29, !alias.scope !234
  %i.azr = getelementptr inbounds nuw i8, ptr %.04256, i64 512
  %i.azs = shufflevector <8 x i32> %i.azi, <8 x i32> %i.azm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.azs, ptr %i.azr, align 4, !tbaa !29, !alias.scope !234
  %i.azt = getelementptr inbounds nuw i8, ptr %.04256, i64 544
  %i.azu = shufflevector <8 x i32> %i.azj, <8 x i32> %i.azn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.azu, ptr %i.azt, align 4, !tbaa !29, !alias.scope !234
  %i.azv = getelementptr inbounds nuw i8, ptr %.04256, i64 576
  %i.azw = shufflevector <8 x i32> %i.azg, <8 x i32> %i.azk, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.azw, ptr %i.azv, align 4, !tbaa !29, !alias.scope !234
  %i.azx = getelementptr inbounds nuw i8, ptr %.04256, i64 608
  %i.azy = shufflevector <8 x i32> %i.azh, <8 x i32> %i.azl, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.azy, ptr %i.azx, align 4, !tbaa !29, !alias.scope !234
  %i.azz = getelementptr inbounds nuw i8, ptr %.04256, i64 640
  %i.baa = shufflevector <8 x i32> %i.azi, <8 x i32> %i.azm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.baa, ptr %i.azz, align 4, !tbaa !29, !alias.scope !234
  %i.bab = getelementptr inbounds nuw i8, ptr %.04256, i64 672
  %i.bac = shufflevector <8 x i32> %i.azj, <8 x i32> %i.azn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bac, ptr %i.bab, align 4, !tbaa !29, !alias.scope !234
  %i.bad = getelementptr inbounds nuw i8, ptr %.04256, i64 704
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %i.bae = load <8 x i32>, ptr %invariant.gep.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.baf = load <8 x i32>, ptr %gep.1.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.bag = load <8 x i32>, ptr %gep.2.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.bah = load <8 x i32>, ptr %gep.3.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.bai = load <8 x i32>, ptr %gep.4.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.baj = load <8 x i32>, ptr %gep.5.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.bak = load <8 x i32>, ptr %gep.6.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.bal = load <8 x i32>, ptr %gep.7.i.2, align 16, !tbaa !29, !noalias !235 ; 2 uses
  %i.bam = shufflevector <8 x i32> %i.bae, <8 x i32> %i.baf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.ban = shufflevector <8 x i32> %i.bae, <8 x i32> %i.baf, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bao = shufflevector <8 x i32> %i.bag, <8 x i32> %i.bah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bap = shufflevector <8 x i32> %i.bag, <8 x i32> %i.bah, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.baq = shufflevector <8 x i32> %i.bai, <8 x i32> %i.baj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bar = shufflevector <8 x i32> %i.bai, <8 x i32> %i.baj, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bas = shufflevector <8 x i32> %i.bak, <8 x i32> %i.bal, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bat = shufflevector <8 x i32> %i.bak, <8 x i32> %i.bal, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bau = shufflevector <8 x i32> %i.bam, <8 x i32> %i.bao, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bav = shufflevector <8 x i32> %i.bam, <8 x i32> %i.bao, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.baw = shufflevector <8 x i32> %i.ban, <8 x i32> %i.bap, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bax = shufflevector <8 x i32> %i.ban, <8 x i32> %i.bap, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bay = shufflevector <8 x i32> %i.baq, <8 x i32> %i.bas, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.baz = shufflevector <8 x i32> %i.baq, <8 x i32> %i.bas, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bba = shufflevector <8 x i32> %i.bar, <8 x i32> %i.bat, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bbb = shufflevector <8 x i32> %i.bar, <8 x i32> %i.bat, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bbc = shufflevector <8 x i32> %i.bau, <8 x i32> %i.bay, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bbc, ptr %i.bad, align 4, !tbaa !29, !alias.scope !235
  %i.bbd = getelementptr inbounds nuw i8, ptr %.04256, i64 736
  %i.bbe = shufflevector <8 x i32> %i.bav, <8 x i32> %i.baz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bbe, ptr %i.bbd, align 4, !tbaa !29, !alias.scope !235
  %i.bbf = getelementptr inbounds nuw i8, ptr %.04256, i64 768
  %i.bbg = shufflevector <8 x i32> %i.baw, <8 x i32> %i.bba, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bbg, ptr %i.bbf, align 4, !tbaa !29, !alias.scope !235
  %i.bbh = getelementptr inbounds nuw i8, ptr %.04256, i64 800
  %i.bbi = shufflevector <8 x i32> %i.bax, <8 x i32> %i.bbb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bbi, ptr %i.bbh, align 4, !tbaa !29, !alias.scope !235
  %i.bbj = getelementptr inbounds nuw i8, ptr %.04256, i64 832
  %i.bbk = shufflevector <8 x i32> %i.bau, <8 x i32> %i.bay, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bbk, ptr %i.bbj, align 4, !tbaa !29, !alias.scope !235
  %i.bbl = getelementptr inbounds nuw i8, ptr %.04256, i64 864
  %i.bbm = shufflevector <8 x i32> %i.bav, <8 x i32> %i.baz, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bbm, ptr %i.bbl, align 4, !tbaa !29, !alias.scope !235
  %i.bbn = getelementptr inbounds nuw i8, ptr %.04256, i64 896
  %i.bbo = shufflevector <8 x i32> %i.baw, <8 x i32> %i.bba, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bbo, ptr %i.bbn, align 4, !tbaa !29, !alias.scope !235
  %i.bbp = getelementptr inbounds nuw i8, ptr %.04256, i64 928
  %i.bbq = shufflevector <8 x i32> %i.bax, <8 x i32> %i.bbb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bbq, ptr %i.bbp, align 4, !tbaa !29, !alias.scope !235
  %i.bbr = getelementptr inbounds nuw i8, ptr %.04256, i64 960
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.bbs = load <8 x i32>, ptr %invariant.gep.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bbt = load <8 x i32>, ptr %gep.1.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bbu = load <8 x i32>, ptr %gep.2.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bbv = load <8 x i32>, ptr %gep.3.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bbw = load <8 x i32>, ptr %gep.4.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bbx = load <8 x i32>, ptr %gep.5.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bby = load <8 x i32>, ptr %gep.6.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bbz = load <8 x i32>, ptr %gep.7.i.3, align 16, !tbaa !29, !noalias !236 ; 2 uses
  %i.bca = shufflevector <8 x i32> %i.bbs, <8 x i32> %i.bbt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bcb = shufflevector <8 x i32> %i.bbs, <8 x i32> %i.bbt, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bcc = shufflevector <8 x i32> %i.bbu, <8 x i32> %i.bbv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bcd = shufflevector <8 x i32> %i.bbu, <8 x i32> %i.bbv, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bce = shufflevector <8 x i32> %i.bbw, <8 x i32> %i.bbx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bcf = shufflevector <8 x i32> %i.bbw, <8 x i32> %i.bbx, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bcg = shufflevector <8 x i32> %i.bby, <8 x i32> %i.bbz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.bch = shufflevector <8 x i32> %i.bby, <8 x i32> %i.bbz, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.bci = shufflevector <8 x i32> %i.bca, <8 x i32> %i.bcc, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bcj = shufflevector <8 x i32> %i.bca, <8 x i32> %i.bcc, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bck = shufflevector <8 x i32> %i.bcb, <8 x i32> %i.bcd, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bcl = shufflevector <8 x i32> %i.bcb, <8 x i32> %i.bcd, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bcm = shufflevector <8 x i32> %i.bce, <8 x i32> %i.bcg, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bcn = shufflevector <8 x i32> %i.bce, <8 x i32> %i.bcg, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bco = shufflevector <8 x i32> %i.bcf, <8 x i32> %i.bch, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13> ; 2 uses
  %i.bcp = shufflevector <8 x i32> %i.bcf, <8 x i32> %i.bch, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15> ; 2 uses
  %i.bcq = shufflevector <8 x i32> %i.bci, <8 x i32> %i.bcm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bcq, ptr %i.bbr, align 4, !tbaa !29, !alias.scope !236
  %i.bcr = getelementptr inbounds nuw i8, ptr %.04256, i64 992
  %i.bcs = shufflevector <8 x i32> %i.bcj, <8 x i32> %i.bcn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bcs, ptr %i.bcr, align 4, !tbaa !29, !alias.scope !236
  %i.bct = getelementptr inbounds nuw i8, ptr %.04256, i64 1024
  %i.bcu = shufflevector <8 x i32> %i.bck, <8 x i32> %i.bco, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bcu, ptr %i.bct, align 4, !tbaa !29, !alias.scope !236
  %i.bcv = getelementptr inbounds nuw i8, ptr %.04256, i64 1056
  %i.bcw = shufflevector <8 x i32> %i.bcl, <8 x i32> %i.bcp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  store <8 x i32> %i.bcw, ptr %i.bcv, align 4, !tbaa !29, !alias.scope !236
  %i.bcx = getelementptr inbounds nuw i8, ptr %.04256, i64 1088
  %i.bcy = shufflevector <8 x i32> %i.bci, <8 x i32> %i.bcm, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bcy, ptr %i.bcx, align 4, !tbaa !29, !alias.scope !236
  %i.bcz = getelementptr inbounds nuw i8, ptr %.04256, i64 1120
  %i.bda = shufflevector <8 x i32> %i.bcj, <8 x i32> %i.bcn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <8 x i32> %i.bda, ptr %i.bcz, align 4, !tbaa !29, !alias.scope !236
  %i.bdb = getelementptr inbounds nuw i8, ptr %.04256, i64 1152
end_hunk_1
