Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lut3d?download=true
inline.NumInlined: 51
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_correct_pixel_trilinear:bb.a
  %wide.masked.gather221 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep220, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep222 = getelementptr i8, <8 x ptr> %wide.gep216, i64 16
  %wide.masked.gather223 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep222, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep224 = getelementptr i8, <8 x ptr> %wide.gep216, i64 8
  %wide.masked.gather225 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep224, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep226 = getelementptr i8, <8 x ptr> %wide.gep216, i64 20
  %wide.masked.gather227 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep226, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep228 = getelementptr i8, <8 x ptr> %wide.gep216, i64 24
  %wide.masked.gather229 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep228, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %i.df = add nsw <8 x i64> %broadcast.splat187, %i.bp
  %i.dg = mul <8 x i64> %i.df, splat (i64 12)
  %wide.gep230 = getelementptr i8, ptr %3, <8 x i64> %i.dg ; 7 uses
  %wide.gep231 = getelementptr i8, <8 x ptr> %wide.gep230, i64 12
  %wide.masked.gather232 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep230, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.masked.gather233 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep231, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72 ; 2 uses
  %wide.gep234 = getelementptr i8, <8 x ptr> %wide.gep230, i64 4
  %wide.masked.gather235 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep234, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep236 = getelementptr i8, <8 x ptr> %wide.gep230, i64 16
  %wide.masked.gather237 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep236, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep238 = getelementptr i8, <8 x ptr> %wide.gep230, i64 8
  %wide.masked.gather239 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep238, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep240 = getelementptr i8, <8 x ptr> %wide.gep230, i64 20
  %wide.masked.gather241 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep240, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %wide.gep242 = getelementptr i8, <8 x ptr> %wide.gep230, i64 24
  %wide.masked.gather243 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep242, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !72
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ab
  %i.di = shufflevector <8 x float> %wide.masked.gather233, <8 x float> %wide.masked.gather237, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dj = shufflevector <8 x float> %i.bf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dk = fmul reassoc nsz arcp contract afn <16 x float> %i.di, %i.dj
  %i.dl = shufflevector <8 x float> %wide.masked.gather232, <8 x float> %wide.masked.gather235, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dm = shufflevector <8 x float> %i.br, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dn = fmul reassoc nsz arcp contract afn <16 x float> %i.dl, %i.dm
  %i.do = fadd reassoc nsz arcp contract afn <16 x float> %i.dk, %i.dn
  %i.dp = shufflevector <8 x float> %i.bh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dq = fmul reassoc nsz arcp contract afn <16 x float> %i.do, %i.dp
  %i.dr = shufflevector <8 x float> %wide.masked.gather219, <8 x float> %wide.masked.gather223, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ds = shufflevector <8 x float> %i.bf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dt = fmul reassoc nsz arcp contract afn <16 x float> %i.dr, %i.ds
  %i.du = shufflevector <8 x float> %wide.masked.gather218, <8 x float> %wide.masked.gather221, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dv = shufflevector <8 x float> %i.br, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dw = fmul reassoc nsz arcp contract afn <16 x float> %i.du, %i.dv
  %i.dx = fadd reassoc nsz arcp contract afn <16 x float> %i.dt, %i.dw
  %i.dy = shufflevector <8 x float> %i.cq, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dz = fmul reassoc nsz arcp contract afn <16 x float> %i.dx, %i.dy
  %i.ea = fadd reassoc nsz arcp contract afn <16 x float> %i.dq, %i.dz
  %i.eb = shufflevector <8 x float> %i.ct, <8 x float> %i.cw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ec = fsub reassoc nsz arcp contract afn <16 x float> %i.ea, %i.eb
  %i.ed = shufflevector <8 x float> %i.bj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ee = fmul reassoc nsz arcp contract afn <16 x float> %i.ec, %i.ed
  %i.ef = shufflevector <8 x float> %i.ct, <8 x float> %i.cw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eg = fadd reassoc nsz arcp contract afn <16 x float> %i.ee, %i.ef
  %i.eh = shufflevector <8 x float> %wide.masked.gather241, <8 x float> %wide.masked.gather243, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ei = shufflevector <8 x float> %i.bf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ej = fmul reassoc nsz arcp contract afn <16 x float> %i.eh, %i.ei
  %i.ek = shufflevector <8 x float> %wide.masked.gather239, <8 x float> %wide.masked.gather233, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.el = shufflevector <8 x float> %i.br, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.em = fmul reassoc nsz arcp contract afn <16 x float> %i.ek, %i.el
  %i.en = fadd reassoc nsz arcp contract afn <16 x float> %i.ej, %i.em
  %i.eo = shufflevector <8 x float> %i.bh, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ep = fmul reassoc nsz arcp contract afn <16 x float> %i.en, %i.eo
  %i.eq = shufflevector <8 x float> %wide.masked.gather227, <8 x float> %wide.masked.gather229, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = shufflevector <8 x float> %i.bf, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.es = fmul reassoc nsz arcp contract afn <16 x float> %i.eq, %i.er
  %i.et = shufflevector <8 x float> %wide.masked.gather225, <8 x float> %wide.masked.gather219, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eu = shufflevector <8 x float> %i.br, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ev = fmul reassoc nsz arcp contract afn <16 x float> %i.et, %i.eu
  %i.ew = fadd reassoc nsz arcp contract afn <16 x float> %i.es, %i.ev
  %i.ex = shufflevector <8 x float> %i.cq, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ey = fmul reassoc nsz arcp contract afn <16 x float> %i.ew, %i.ex
  %i.ez = fadd reassoc nsz arcp contract afn <16 x float> %i.ep, %i.ey
  %i.fa = shufflevector <8 x float> %i.cz, <8 x float> %i.dc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fb = fsub reassoc nsz arcp contract afn <16 x float> %i.ez, %i.fa
  %i.fc = shufflevector <8 x float> %i.bj, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fd = fmul reassoc nsz arcp contract afn <16 x float> %i.fb, %i.fc
  %i.fe = shufflevector <8 x float> %i.cz, <8 x float> %i.dc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ff = fadd reassoc nsz arcp contract afn <16 x float> %i.fd, %i.fe
  %interleaved.vec = shufflevector <16 x float> %i.eg, <16 x float> %i.ff, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.dh, align 4, !tbaa !72, !alias.scope !154, !noalias !153
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %.preheader130.preheader.preheader244, label %vector.body, !llvm.loop !151

._crit_edge:                                      ; preds = %.preheader130.preheader, %bb.a
  ret void

.preheader130.preheader:                          ; preds = %.preheader130.preheader.preheader244, %.preheader130.preheader
  %.0117142 = phi i64 [ %i.iy, %.preheader130.preheader ], [ %.0117142.ph, %.preheader130.preheader.preheader244 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0117142 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !72 ; 3 uses
  %i.fk = fcmp reassoc nsz arcp contract afn ult float %i.fj, 0.000000e+00
  %.inv.2 = fcmp reassoc nsz arcp contract afn ole float %i.fj, 1.000000e+00
  %i.fl = select i1 %.inv.2, float %i.fj, float 1.000000e+00
  %spec.select.2 = fmul reassoc arcp contract afn float %i.fl, %i.f
  %i.fm = select i1 %i.fk, float 0.000000e+00, float %spec.select.2 ; 2 uses
  %i.fn = fptosi float %i.fm to i32               ; 2 uses
  %i.fo = load <2 x float>, ptr %i.fh, align 4, !tbaa !72 ; 3 uses
  %i.fp = fcmp reassoc nsz arcp contract afn ult <2 x float> %i.fo, zeroinitializer
  %i.fq = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.fo, splat (float 1.000000e+00)
  %i.fr = select <2 x i1> %i.fq, <2 x float> %i.fo, <2 x float> splat (float 1.000000e+00)
  %i.fs = fmul reassoc arcp contract afn <2 x float> %i.fr, %i.p
  %i.ft = select <2 x i1> %i.fp, <2 x float> zeroinitializer, <2 x float> %i.fs ; 2 uses
  %i.fu = fptosi <2 x float> %i.ft to <2 x i32>   ; 2 uses
  %i.fv = icmp slt <2 x i32> %i.r, %i.fu
  %i.fw = icmp slt i32 %i.b, %i.fn
  %spec.select121.2 = tail call i32 @llvm.smax.i32(i32 %i.fn, i32 0)
  %i.fx = select i1 %i.fw, i32 %i.b, i32 %spec.select121.2 ; 2 uses
  %i.fy = sitofp reassoc nsz arcp contract afn i32 %i.fx to float
  %i.fz = fsub reassoc nsz arcp contract afn float %i.fm, %i.fy
  %i.ga = sext i32 %i.fx to i64
  %i.gb = mul nsw i64 %i.ga, %i.d
  %i.gc = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fu, <2 x i32> zeroinitializer)
  %i.gd = select <2 x i1> %i.fv, <2 x i32> %i.r, <2 x i32> %i.gc ; 3 uses
  %i.ge = sitofp <2 x i32> %i.gd to <2 x float>
  %i.gf = fsub reassoc nsz arcp contract afn <2 x float> %i.ft, %i.ge ; 5 uses
  %i.gg = extractelement <2 x i32> %i.gd, i64 1
  %i.gh = mul nsw i32 %i.gg, %i.a
  %i.gi = extractelement <2 x i32> %i.gd, i64 0
  %i.gj = add nsw i32 %i.gh, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = add nsw i64 %i.gb, %i.gk                ; 3 uses
  %i.gm = mul i64 %i.gl, 3                        ; 2 uses
  %i.gn = getelementptr [4 x i8], ptr %3, i64 %i.gm ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 16
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.gm ; 2 uses
  %i.gp = getelementptr i8, ptr %gep, i64 16
  %i.gq = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.gf ; 4 uses
  %i.gr = add nsw i64 %i.gl, %i.d
  %.idx122 = mul i64 %i.gr, 12
  %i.gs = getelementptr i8, ptr %3, i64 %.idx122  ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  %i.gu = add nsw i64 %i.j, %i.gl
  %.idx = mul i64 %i.gu, 12
  %i.gv = getelementptr i8, ptr %3, i64 %.idx     ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 16
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0117142
  %i.gy = load <4 x float>, ptr %i.gn, align 4, !tbaa !72 ; 3 uses
  %i.gz = load <3 x float>, ptr %i.go, align 4, !tbaa !72
  %i.ha = load <4 x float>, ptr %gep, align 4, !tbaa !72 ; 3 uses
  %i.hb = shufflevector <3 x float> %i.gz, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> %i.ha, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.hd = shufflevector <2 x float> %i.gf, <2 x float> %i.gq, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 4 uses
  %i.he = fmul reassoc nsz arcp contract afn <4 x float> %i.hc, %i.hd
  %i.hf = load <3 x float>, ptr %i.gp, align 4, !tbaa !72
  %i.hg = shufflevector <4 x float> %i.gy, <4 x float> %i.ha, <4 x i32> <i32 1, i32 7, i32 3, i32 poison>
  %i.hh = shufflevector <3 x float> %i.hf, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.hi = shufflevector <4 x float> %i.hg, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hj = shufflevector <2 x float> %i.gq, <2 x float> %i.gf, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 4 uses
  %i.hk = fmul reassoc nsz arcp contract afn <4 x float> %i.hi, %i.hj
  %i.hl = fadd reassoc nsz arcp contract afn <4 x float> %i.he, %i.hk
  %i.hm = shufflevector <4 x float> %i.ha, <4 x float> %i.gy, <4 x i32> <i32 1, i32 7, i32 3, i32 poison>
  %i.hn = shufflevector <4 x float> %i.hm, <4 x float> %i.hb, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ho = fmul reassoc nsz arcp contract afn <4 x float> %i.hn, %i.hj
  %i.hp = shufflevector <4 x float> %i.hh, <4 x float> %i.gy, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.hq = fmul reassoc nsz arcp contract afn <4 x float> %i.hp, %i.hd
  %i.hr = fadd reassoc nsz arcp contract afn <4 x float> %i.hq, %i.ho
  %i.hs = shufflevector <2 x float> %i.gq, <2 x float> %i.gf, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %i.hl, %i.hs
  %i.hu = shufflevector <2 x float> %i.gf, <2 x float> %i.gq, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.hv = fmul reassoc nsz arcp contract afn <4 x float> %i.hr, %i.hu
  %i.hw = fadd reassoc nsz arcp contract afn <4 x float> %i.hv, %i.ht ; 2 uses
  %i.hx = load <4 x float>, ptr %i.gs, align 4, !tbaa !72 ; 3 uses
  %i.hy = load <3 x float>, ptr %i.gt, align 4, !tbaa !72
  %i.hz = load <4 x float>, ptr %i.gv, align 4, !tbaa !72 ; 3 uses
  %i.ia = shufflevector <3 x float> %i.hy, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> %i.hz, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.ic = fmul reassoc nsz arcp contract afn <4 x float> %i.ib, %i.hd
  %i.id = load <3 x float>, ptr %i.gw, align 4, !tbaa !72
  %i.ie = shufflevector <4 x float> %i.hx, <4 x float> %i.hz, <4 x i32> <i32 1, i32 7, i32 3, i32 poison>
  %i.if = shufflevector <3 x float> %i.id, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.ig = shufflevector <4 x float> %i.ie, <4 x float> %i.if, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.ig, %i.hj
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ih
  %i.ij = shufflevector <4 x float> %i.hz, <4 x float> %i.hx, <4 x i32> <i32 1, i32 7, i32 3, i32 poison>
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.il = fmul reassoc nsz arcp contract afn <4 x float> %i.ik, %i.hj
  %i.im = shufflevector <4 x float> %i.if, <4 x float> %i.hx, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.in = fmul reassoc nsz arcp contract afn <4 x float> %i.im, %i.hd
  %i.io = fadd reassoc nsz arcp contract afn <4 x float> %i.in, %i.il
  %i.ip = fmul reassoc nsz arcp contract afn <4 x float> %i.ii, %i.hs
  %i.iq = fmul reassoc nsz arcp contract afn <4 x float> %i.io, %i.hu
  %i.ir = fadd reassoc nsz arcp contract afn <4 x float> %i.iq, %i.ip
  %i.is = fsub reassoc nsz arcp contract afn <4 x float> %i.ir, %i.hw
  %i.it = insertelement <4 x float> poison, float %i.fz, i64 0
  %i.iu = shufflevector <4 x float> %i.it, <4 x float> poison, <4 x i32> zeroinitializer
  %i.iv = fmul reassoc nsz arcp contract afn <4 x float> %i.is, %i.iu
  %i.iw = fadd reassoc nsz arcp contract afn <4 x float> %i.iv, %i.hw
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.ix, ptr %i.gx, align 4, !tbaa !72
  %i.iy = add nuw i64 %.0117142, 4                ; 2 uses
  %i.iz = icmp ult i64 %i.iy, %i.k
  br i1 %i.iz, label %.preheader130.preheader, label %._crit_edge, !llvm.loop !152
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_correct_pixel_pyramid(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 -4611686016279904256, 4611686018427387905) %2, ptr noalias nofree noundef nonnull readonly captures(none) %3, i16 noundef zeroext %4) unnamed_addr #7 {
bb.a:
  %i.a = zext i16 %4 to i32                       ; 7 uses
  %i.b = mul nuw nsw i32 %i.a, %i.a               ; 4 uses
  %i.c = add nsw i32 %i.a, -1
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 3 uses
  %i.e = shl i64 %2, 2                            ; 4 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = add nsw i32 %i.a, -2                     ; 4 uses
  %i.g = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.h = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.i = getelementptr i8, ptr %3, i64 4          ; 3 uses
  %i.j = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %i.k = getelementptr i8, ptr %3, i64 4          ; 4 uses
  %i.l = getelementptr i8, ptr %3, i64 8          ; 4 uses
  %i.m = getelementptr i8, ptr %3, i64 12         ; 3 uses
  %i.n = add i64 %i.e, -1                         ; 2 uses
  %i.o = lshr i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 33
  br i1 %min.iters.check, label %.preheader188.preheader.preheader, label %vector.memcheck

.preheader188.preheader.preheader:                ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %.0164196.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %i.y, %vector.body ]
  %5 = insertelement <2 x float> poison, float %i.d, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %8 = shufflevector <2 x i32> %7, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader188.preheader

vector.memcheck:                                  ; preds = %.lr.ph
  %i.q = shl i64 %i.n, 2                          ; 2 uses
  %i.r = and i64 %i.q, -16
  %i.s = getelementptr i8, ptr %1, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = getelementptr i8, ptr %0, i64 %i.q
  %bound0 = icmp ult ptr %1, %i.u
  %bound1 = icmp ult ptr %0, %i.t
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader188.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.v = and i64 %i.p, 7                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 8, i64 %i.v
  %n.vec = sub nsw i64 %i.p, %i.x                 ; 2 uses
  %i.y = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.d, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert229 = insertelement <8 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat230 = shufflevector <8 x i32> %broadcast.splatinsert229, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert231 = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat232 = shufflevector <8 x i32> %broadcast.splatinsert231, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %invariant.op = add <8 x i32> %broadcast.splat230, %broadcast.splat232
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl nuw i64 %index, 2                    ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z
  %wide.vec = load <32 x float>, ptr %i.aa, align 4, !tbaa !72, !alias.scope !162 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 3 uses
  %strided.vec233 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 3 uses
  %strided.vec234 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec, zeroinitializer
  %i.ac = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec, splat (float 1.000000e+00)
  %i.ad = select <8 x i1> %i.ac, <8 x float> %strided.vec, <8 x float> splat (float 1.000000e+00)
  %i.ae = fmul reassoc arcp contract afn <8 x float> %i.ad, %broadcast.splat228
  %i.af = select <8 x i1> %i.ab, <8 x float> zeroinitializer, <8 x float> %i.ae ; 2 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec233, zeroinitializer
  %i.ah = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec233, splat (float 1.000000e+00)
  %i.ai = select <8 x i1> %i.ah, <8 x float> %strided.vec233, <8 x float> splat (float 1.000000e+00)
  %i.aj = fmul reassoc arcp contract afn <8 x float> %i.ai, %broadcast.splat228
  %i.ak = select <8 x i1> %i.ag, <8 x float> zeroinitializer, <8 x float> %i.aj ; 2 uses
  %i.al = fcmp reassoc nsz arcp contract afn ult <8 x float> %strided.vec234, zeroinitializer
  %i.am = fcmp reassoc nsz arcp contract afn ole <8 x float> %strided.vec234, splat (float 1.000000e+00)
  %i.an = select <8 x i1> %i.am, <8 x float> %strided.vec234, <8 x float> splat (float 1.000000e+00)
  %i.ao = fmul reassoc arcp contract afn <8 x float> %i.an, %broadcast.splat228
  %i.ap = select <8 x i1> %i.al, <8 x float> zeroinitializer, <8 x float> %i.ao ; 2 uses
  %i.aq = fptosi <8 x float> %i.af to <8 x i32>   ; 2 uses
  %i.ar = fptosi <8 x float> %i.ak to <8 x i32>   ; 2 uses
  %i.as = fptosi <8 x float> %i.ap to <8 x i32>   ; 2 uses
  %i.at = icmp slt <8 x i32> %broadcast.splat, %i.aq
  %i.au = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.aq, <8 x i32> zeroinitializer)
  %i.av = select <8 x i1> %i.at, <8 x i32> %broadcast.splat, <8 x i32> %i.au ; 2 uses
  %i.aw = icmp slt <8 x i32> %broadcast.splat, %i.ar
  %i.ax = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ar, <8 x i32> zeroinitializer)
  %i.ay = select <8 x i1> %i.aw, <8 x i32> %broadcast.splat, <8 x i32> %i.ax ; 2 uses
  %i.az = icmp slt <8 x i32> %broadcast.splat, %i.as
  %i.ba = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.as, <8 x i32> zeroinitializer)
  %i.bb = select <8 x i1> %i.az, <8 x i32> %broadcast.splat, <8 x i32> %i.ba ; 2 uses
  %i.bc = sitofp reassoc nsz arcp contract afn <8 x i32> %i.av to <8 x float>
  %i.bd = fsub reassoc nsz arcp contract afn <8 x float> %i.af, %i.bc ; 22 uses
  %i.be = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ay to <8 x float>
  %i.bf = fsub reassoc nsz arcp contract afn <8 x float> %i.ak, %i.be ; 19 uses
  %i.bg = sitofp reassoc nsz arcp contract afn <8 x i32> %i.bb to <8 x float>
  %i.bh = fsub reassoc nsz arcp contract afn <8 x float> %i.ap, %i.bg ; 14 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %i.bj = mul nsw <8 x i32> %i.ay, %broadcast.splat230
  %i.bk = add nsw <8 x i32> %i.bj, %i.av
  %i.bl = mul nsw <8 x i32> %i.bb, %broadcast.splat232
  %i.bm = add nsw <8 x i32> %i.bk, %i.bl          ; 4 uses
  %i.bn = mul nsw <8 x i32> %i.bm, splat (i32 3)
  %i.bo = sext <8 x i32> %i.bn to <8 x i64>       ; 8 uses
  %i.bp = add nsw <8 x i32> %i.bm, %broadcast.splat230
  %i.bq = mul nsw <8 x i32> %i.bp, splat (i32 3)
  %i.br = sext <8 x i32> %i.bq to <8 x i64>       ; 6 uses
  %i.bs = add nsw <8 x i32> %i.bm, %broadcast.splat232
  %i.bt = mul nsw <8 x i32> %i.bs, splat (i32 3)
  %i.bu = sext <8 x i32> %i.bt to <8 x i64>       ; 6 uses
  %.reass = add <8 x i32> %i.bm, %invariant.op
  %i.bv = mul nsw <8 x i32> %.reass, splat (i32 3)
  %i.bw = sext <8 x i32> %i.bv to <8 x i64>       ; 4 uses
  %i.bx = add nsw <8 x i64> %i.bw, splat (i64 3)
  %i.by = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bf, %i.bd
  %i.bz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bh, %i.bd
  %i.ca = select <8 x i1> %i.by, <8 x i1> %i.bz, <8 x i1> zeroinitializer ; 25 uses
  %i.cb = xor <8 x i1> %i.ca, splat (i1 true)     ; 4 uses
  %i.cc = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bd, %i.bf
  %i.cd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bh, %i.bf
  %i.ce = select <8 x i1> %i.cc, <8 x i1> %i.cd, <8 x i1> zeroinitializer ; 2 uses
  %wide.gep = getelementptr [4 x i8], ptr %3, <8 x i64> %i.bo ; 6 uses
  %wide.gep235 = getelementptr i8, <8 x ptr> %wide.gep, i64 12
  %wide.gep236 = getelementptr [4 x i8], ptr %3, <8 x i64> %i.bx ; 6 uses
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.cb, <8 x float> poison), !tbaa !72 ; 6 uses
  %wide.masked.gather237 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep235, <8 x i1> %i.cb, <8 x float> poison), !tbaa !72 ; 11 uses
  %i.cf = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather237, %wide.masked.gather
  %9 = fmul reassoc nsz arcp contract afn <8 x float> %i.cf, %i.bd
  %10 = fadd reassoc nsz arcp contract afn <8 x float> %9, %wide.masked.gather ; 2 uses
  %wide.gep238 = getelementptr i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather239 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep238, <8 x i1> %i.cb, <8 x float> poison), !tbaa !72 ; 4 uses
  %i.cg = select <8 x i1> %i.ca, <8 x i1> splat (i1 true), <8 x i1> %i.ce
  %i.ch = xor <8 x i1> %i.cg, splat (i1 true)     ; 15 uses
  %wide.gep240 = getelementptr [4 x i8], ptr %3, <8 x i64> %i.br ; 6 uses
  %wide.gep241 = getelementptr i8, <8 x ptr> %wide.gep240, i64 12
  %wide.masked.gather242 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep240, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.ci = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather242, %wide.masked.gather
  %wide.masked.gather243 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep236, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72
  %wide.masked.gather244 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep241, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 4 uses
  %i.cj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather243, %wide.masked.gather244
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %i.bh
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather237, %wide.masked.gather242
  %i.cm = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.cl
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, %wide.masked.gather244
  %i.co = fmul reassoc nsz arcp contract afn <8 x float> %i.cn, %i.bd
  %i.cp = fadd reassoc nsz arcp contract afn <8 x float> %i.co, %i.ci
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %i.cp, %i.bf
  %i.cr = fadd reassoc nsz arcp contract afn <8 x float> %10, %i.ck
  %i.cs = fadd reassoc nsz arcp contract afn <8 x float> %i.cr, %i.cq
  %wide.gep245 = getelementptr [4 x i8], ptr %i.g, <8 x i64> %i.bo
  %wide.masked.gather246 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep245, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 4 uses
  %i.ct = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather239, %wide.masked.gather246
  %11 = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.bd
  %wide.gep247 = getelementptr [4 x i8], ptr %i.g, <8 x i64> %i.br
  %wide.masked.gather248 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep247, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.cu = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather248, %wide.masked.gather246
  %wide.gep249 = getelementptr i8, <8 x ptr> %wide.gep236, i64 4 ; 3 uses
  %wide.masked.gather250 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep249, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72
  %wide.gep251 = getelementptr i8, <8 x ptr> %wide.gep240, i64 16
  %wide.masked.gather252 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep251, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.cv = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather250, %wide.masked.gather252
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %i.cv, %i.bh
  %i.cx = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather239, %wide.masked.gather248
  %i.cy = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather246, %i.cx
  %i.cz = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %wide.masked.gather252
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.cz, %i.bd
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.da, %i.cu
  %i.dc = fmul reassoc nsz arcp contract afn <8 x float> %i.db, %i.bf
  %i.dd = fadd reassoc nsz arcp contract afn <8 x float> %11, %wide.masked.gather246
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %i.dd, %i.cw
  %i.df = fadd reassoc nsz arcp contract afn <8 x float> %i.de, %i.dc
  %wide.gep253 = getelementptr [4 x i8], ptr %i.h, <8 x i64> %i.bo
  %wide.masked.gather254 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep253, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 4 uses
  %wide.gep255 = getelementptr i8, <8 x ptr> %wide.gep, i64 20 ; 2 uses
  %wide.masked.gather256 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep255, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.dg = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather256, %wide.masked.gather254
  %12 = fmul reassoc nsz arcp contract afn <8 x float> %i.dg, %i.bd
  %wide.gep257 = getelementptr [4 x i8], ptr %i.h, <8 x i64> %i.br
  %wide.masked.gather258 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep257, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.dh = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather258, %wide.masked.gather254
  %wide.gep259 = getelementptr i8, <8 x ptr> %wide.gep236, i64 8 ; 3 uses
  %wide.masked.gather260 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep259, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72
  %wide.gep261 = getelementptr i8, <8 x ptr> %wide.gep240, i64 20
  %wide.masked.gather262 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep261, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.di = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather260, %wide.masked.gather262
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.di, %i.bh
  %i.dk = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather256, %wide.masked.gather258
  %i.dl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather254, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn <8 x float> %i.dl, %wide.masked.gather262
  %i.dn = fmul reassoc nsz arcp contract afn <8 x float> %i.dm, %i.bd
  %i.do = fadd reassoc nsz arcp contract afn <8 x float> %i.dn, %i.dh
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %i.do, %i.bf
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %12, %wide.masked.gather254
  %i.dr = fadd reassoc nsz arcp contract afn <8 x float> %i.dq, %i.dj
  %i.ds = fadd reassoc nsz arcp contract afn <8 x float> %i.dr, %i.dp
  %wide.gep263 = getelementptr i8, <8 x ptr> %wide.gep, i64 24 ; 2 uses
  %wide.masked.gather264 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep263, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.dt = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather264, %wide.masked.gather237
  %13 = fmul reassoc nsz arcp contract afn <8 x float> %i.dt, %i.bd
  %14 = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather244, %wide.masked.gather237
  %wide.gep265 = getelementptr i8, <8 x ptr> %wide.gep236, i64 12 ; 3 uses
  %wide.masked.gather266 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep265, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72
  %wide.gep267 = getelementptr i8, <8 x ptr> %wide.gep240, i64 24
  %wide.masked.gather268 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep267, <8 x i1> %i.ch, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.du = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather266, %wide.masked.gather268
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %i.du, %i.bh
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather264, %wide.masked.gather244
  %i.dx = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather237, %i.dw
  %i.dy = fadd reassoc nsz arcp contract afn <8 x float> %i.dx, %wide.masked.gather268
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %i.dy, %i.bd
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, %14
  %i.eb = fmul reassoc nsz arcp contract afn <8 x float> %i.ea, %i.bf
  %i.ec = fadd reassoc nsz arcp contract afn <8 x float> %13, %wide.masked.gather237
  %i.ed = fadd reassoc nsz arcp contract afn <8 x float> %i.ec, %i.dv
  %i.ee = fadd reassoc nsz arcp contract afn <8 x float> %i.ed, %i.eb
  %i.ef = select <8 x i1> %i.cb, <8 x i1> %i.ce, <8 x i1> zeroinitializer ; 19 uses
  %wide.gep269 = getelementptr [4 x i8], ptr %3, <8 x i64> %i.bu ; 6 uses
  %wide.gep270 = getelementptr i8, <8 x ptr> %wide.gep269, i64 12
  %wide.masked.gather271 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep236, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72
  %wide.masked.gather272 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep270, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 4 uses
  %i.eg = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather271, %wide.masked.gather272
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %i.bf
  %wide.masked.gather273 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep269, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.ei = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather273, %wide.masked.gather
  %i.ej = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.gather272
  %i.ek = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather237, %wide.masked.gather273
  %i.el = fsub reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ek
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %i.el, %i.bd
  %i.en = fadd reassoc nsz arcp contract afn <8 x float> %i.em, %i.ei
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.en, %i.bh
  %i.ep = fadd reassoc nsz arcp contract afn <8 x float> %10, %i.eh
  %i.eq = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %i.eo
  %wide.gep274 = getelementptr [4 x i8], ptr %i.i, <8 x i64> %i.bo
  %wide.masked.gather275 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep274, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 4 uses
  %i.er = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather239, %wide.masked.gather275
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.er, %i.bd
  %wide.masked.gather276 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep249, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72
  %wide.gep277 = getelementptr i8, <8 x ptr> %wide.gep269, i64 16
  %wide.masked.gather278 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep277, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather276, %wide.masked.gather278
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.bf
  %wide.gep279 = getelementptr [4 x i8], ptr %i.i, <8 x i64> %i.bu
  %wide.masked.gather280 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep279, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.ev = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather280, %wide.masked.gather275
  %i.ew = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather275, %wide.masked.gather278
  %i.ex = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather239, %wide.masked.gather280
  %i.ey = fsub reassoc nsz arcp contract afn <8 x float> %i.ew, %i.ex
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %i.ey, %i.bd
  %i.fa = fadd reassoc nsz arcp contract afn <8 x float> %i.ez, %i.ev
  %i.fb = fmul reassoc nsz arcp contract afn <8 x float> %i.fa, %i.bh
  %i.fc = fadd reassoc nsz arcp contract afn <8 x float> %i.es, %wide.masked.gather275
  %i.fd = fadd reassoc nsz arcp contract afn <8 x float> %i.fc, %i.eu
  %i.fe = fadd reassoc nsz arcp contract afn <8 x float> %i.fd, %i.fb
  %wide.gep281 = getelementptr [4 x i8], ptr %i.j, <8 x i64> %i.bo
  %wide.masked.gather282 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep281, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 4 uses
  %wide.masked.gather283 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep255, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.ff = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather283, %wide.masked.gather282
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, %i.bd
  %wide.masked.gather284 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep259, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72
  %wide.gep285 = getelementptr i8, <8 x ptr> %wide.gep269, i64 20
  %wide.masked.gather286 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep285, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.fh = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather284, %wide.masked.gather286
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.fh, %i.bf
  %wide.gep287 = getelementptr [4 x i8], ptr %i.j, <8 x i64> %i.bu
  %wide.masked.gather288 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep287, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.fj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather288, %wide.masked.gather282
  %i.fk = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather282, %wide.masked.gather286
  %i.fl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather283, %wide.masked.gather288
  %i.fm = fsub reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fl
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %i.fm, %i.bd
  %i.fo = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, %i.fj
  %i.fp = fmul reassoc nsz arcp contract afn <8 x float> %i.fo, %i.bh
  %i.fq = fadd reassoc nsz arcp contract afn <8 x float> %i.fg, %wide.masked.gather282
  %i.fr = fadd reassoc nsz arcp contract afn <8 x float> %i.fq, %i.fi
  %i.fs = fadd reassoc nsz arcp contract afn <8 x float> %i.fr, %i.fp
  %wide.masked.gather289 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep263, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.ft = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather289, %wide.masked.gather237
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.ft, %i.bd
  %wide.masked.gather290 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep265, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72
  %wide.gep291 = getelementptr i8, <8 x ptr> %wide.gep269, i64 24
  %wide.masked.gather292 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep291, <8 x i1> %i.ef, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.fv = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather290, %wide.masked.gather292
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fv, %i.bf
  %i.fx = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather272, %wide.masked.gather237
  %i.fy = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather237, %wide.masked.gather292
  %i.fz = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather289, %wide.masked.gather272
  %i.ga = fsub reassoc nsz arcp contract afn <8 x float> %i.fy, %i.fz
  %i.gb = fmul reassoc nsz arcp contract afn <8 x float> %i.ga, %i.bd
  %i.gc = fadd reassoc nsz arcp contract afn <8 x float> %i.gb, %i.fx
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %i.gc, %i.bh
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %i.fu, %wide.masked.gather237
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, %i.fw
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %i.gd
  %wide.masked.gather293 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 4 uses
  %wide.masked.gather294 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep236, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 3 uses
  %wide.gep295 = getelementptr [4 x i8], ptr %3, <8 x i64> %i.bw
  %wide.masked.gather296 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep295, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.gh = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather294, %wide.masked.gather296
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %i.gh, %i.bd
  %wide.masked.gather297 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep240, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.gj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather297, %wide.masked.gather293
  %i.gk = fmul reassoc nsz arcp contract afn <8 x float> %i.gj, %i.bf
  %wide.masked.gather298 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep269, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.gl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather298, %wide.masked.gather293
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather296, %wide.masked.gather293
  %i.gn = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather297, %wide.masked.gather298
  %i.go = fsub reassoc nsz arcp contract afn <8 x float> %i.gm, %i.gn
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %i.go, %i.bf
  %i.gq = fadd reassoc nsz arcp contract afn <8 x float> %i.gp, %i.gl
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %i.gq, %i.bh
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gi, %wide.masked.gather293
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %i.gs, %i.gk
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gr
  %wide.gep299 = getelementptr [4 x i8], ptr %i.k, <8 x i64> %i.bo
  %wide.masked.gather300 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep299, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 4 uses
  %wide.masked.gather301 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep249, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72
  %wide.gep302 = getelementptr [4 x i8], ptr %i.k, <8 x i64> %i.bw
  %wide.masked.gather303 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep302, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather301, %wide.masked.gather303
  %i.gw = fmul reassoc nsz arcp contract afn <8 x float> %i.gv, %i.bd
  %wide.gep304 = getelementptr [4 x i8], ptr %i.k, <8 x i64> %i.br
  %wide.masked.gather305 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep304, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.gx = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather305, %wide.masked.gather300
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, %i.bf
  %wide.gep306 = getelementptr [4 x i8], ptr %i.k, <8 x i64> %i.bu
  %wide.masked.gather307 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep306, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.gz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather307, %wide.masked.gather300
  %i.ha = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather303, %wide.masked.gather300
  %i.hb = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather305, %wide.masked.gather307
  %i.hc = fsub reassoc nsz arcp contract afn <8 x float> %i.ha, %i.hb
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %i.hc, %i.bf
  %i.he = fadd reassoc nsz arcp contract afn <8 x float> %i.hd, %i.gz
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %i.he, %i.bh
  %i.hg = fadd reassoc nsz arcp contract afn <8 x float> %i.gw, %wide.masked.gather300
  %i.hh = fadd reassoc nsz arcp contract afn <8 x float> %i.hg, %i.gy
  %i.hi = fadd reassoc nsz arcp contract afn <8 x float> %i.hh, %i.hf
  %wide.gep308 = getelementptr [4 x i8], ptr %i.l, <8 x i64> %i.bo
  %wide.masked.gather309 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep308, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 4 uses
  %wide.masked.gather310 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep259, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72
  %wide.gep311 = getelementptr [4 x i8], ptr %i.l, <8 x i64> %i.bw
  %wide.masked.gather312 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep311, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.hj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather310, %wide.masked.gather312
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, %i.bd
  %wide.gep313 = getelementptr [4 x i8], ptr %i.l, <8 x i64> %i.br
  %wide.masked.gather314 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep313, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.hl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather314, %wide.masked.gather309
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.bf
  %wide.gep315 = getelementptr [4 x i8], ptr %i.l, <8 x i64> %i.bu
  %wide.masked.gather316 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep315, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.hn = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather316, %wide.masked.gather309
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather312, %wide.masked.gather309
  %i.hp = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather314, %wide.masked.gather316
  %i.hq = fsub reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hp
  %i.hr = fmul reassoc nsz arcp contract afn <8 x float> %i.hq, %i.bf
  %i.hs = fadd reassoc nsz arcp contract afn <8 x float> %i.hr, %i.hn
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %i.hs, %i.bh
  %i.hu = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %wide.masked.gather309
  %i.hv = fadd reassoc nsz arcp contract afn <8 x float> %i.hu, %i.hm
  %i.hw = fadd reassoc nsz arcp contract afn <8 x float> %i.hv, %i.ht
  %wide.gep317 = getelementptr [4 x i8], ptr %i.m, <8 x i64> %i.bo
  %wide.masked.gather318 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep317, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 4 uses
  %wide.masked.gather319 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep265, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72
  %i.hx = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather319, %wide.masked.gather294
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.hx, %i.bd
  %wide.gep320 = getelementptr [4 x i8], ptr %i.m, <8 x i64> %i.br
  %wide.masked.gather321 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep320, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.hz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather321, %wide.masked.gather318
  %i.ia = fmul reassoc nsz arcp contract afn <8 x float> %i.hz, %i.bf
  %wide.gep322 = getelementptr [4 x i8], ptr %i.m, <8 x i64> %i.bu
  %wide.masked.gather323 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep322, <8 x i1> %i.ca, <8 x float> poison), !tbaa !72 ; 2 uses
  %i.ib = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather323, %wide.masked.gather318
  %i.ic = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather294, %wide.masked.gather318
  %i.id = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather321, %wide.masked.gather323
  %i.ie = fsub reassoc nsz arcp contract afn <8 x float> %i.ic, %i.id
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %i.ie, %i.bf
  %i.ig = fadd reassoc nsz arcp contract afn <8 x float> %i.if, %i.ib
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %i.ig, %i.bh
  %i.ii = fadd reassoc nsz arcp contract afn <8 x float> %i.hy, %wide.masked.gather318
  %i.ij = fadd reassoc nsz arcp contract afn <8 x float> %i.ii, %i.ia
  %i.ik = fadd reassoc nsz arcp contract afn <8 x float> %i.ij, %i.ih
  %predphi = select nsz <8 x i1> %i.ef, <8 x float> %i.gg, <8 x float> %i.ee
  %predphi324 = select nsz <8 x i1> %i.ca, <8 x float> %i.ik, <8 x float> %predphi
  %predphi325 = select nsz <8 x i1> %i.ef, <8 x float> %i.fs, <8 x float> %i.ds
  %predphi326 = select nsz <8 x i1> %i.ca, <8 x float> %i.hw, <8 x float> %predphi325
  %predphi327 = select nsz <8 x i1> %i.ef, <8 x float> %i.fe, <8 x float> %i.df
  %predphi328 = select nsz <8 x i1> %i.ca, <8 x float> %i.hi, <8 x float> %predphi327
  %predphi329 = select nsz <8 x i1> %i.ef, <8 x float> %i.eq, <8 x float> %i.cs
  %predphi330 = select nsz <8 x i1> %i.ca, <8 x float> %i.gu, <8 x float> %predphi329
  %i.il = shufflevector <8 x float> %predphi330, <8 x float> %predphi328, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.im = shufflevector <8 x float> %predphi326, <8 x float> %predphi324, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.il, <16 x float> %i.im, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.bi, align 4, !tbaa !72, !alias.scope !163, !noalias !162
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %.preheader188.preheader.preheader, label %vector.body, !llvm.loop !160

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.preheader188.preheader:                          ; preds = %.preheader188.preheader.preheader, %.loopexit
  %.0164196 = phi i64 [ %i.nh, %.loopexit ], [ %.0164196.ph, %.preheader188.preheader.preheader ] ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0164196 ; 2 uses
  %15 = load float, ptr %i.io, align 4, !tbaa !72 ; 3 uses
  %16 = fcmp reassoc nsz arcp contract afn ult float %15, 0.000000e+00
  %.inv = fcmp reassoc nsz arcp contract afn ole float %15, 1.000000e+00
  %17 = select i1 %.inv, float %15, float 1.000000e+00
  %spec.select = fmul reassoc arcp contract afn float %17, %i.d
  %18 = select i1 %16, float 0.000000e+00, float %spec.select ; 3 uses
  %19 = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %20 = fptosi float %18 to i32                   ; 2 uses
  %21 = icmp slt i32 %i.f, %20
  %spec.select170 = tail call i32 @llvm.smax.i32(i32 %20, i32 0)
  %22 = select i1 %21, i32 %i.f, i32 %spec.select170 ; 2 uses
  %23 = sitofp reassoc nsz arcp contract afn i32 %22 to float ; 2 uses
  %24 = load <2 x float>, ptr %19, align 4, !tbaa !72 ; 3 uses
  %25 = fcmp reassoc nsz arcp contract afn ult <2 x float> %24, zeroinitializer
  %26 = fcmp reassoc nsz arcp contract afn ole <2 x float> %24, splat (float 1.000000e+00)
  %27 = select <2 x i1> %26, <2 x float> %24, <2 x float> splat (float 1.000000e+00)
  %28 = fmul reassoc arcp contract afn <2 x float> %27, %6
  %29 = select <2 x i1> %25, <2 x float> zeroinitializer, <2 x float> %28 ; 2 uses
  %30 = fptosi <2 x float> %29 to <2 x i32>       ; 2 uses
  %31 = icmp slt <2 x i32> %8, %30
  %32 = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %30, <2 x i32> zeroinitializer)
  %33 = select <2 x i1> %31, <2 x i32> %8, <2 x i32> %32 ; 3 uses
  %34 = fsub reassoc nsz arcp contract afn float %18, %23 ; 4 uses
  %.scalar = fsub reassoc nsz arcp contract afn float %18, %23
  %35 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %.scalar, i64 1 ; 4 uses
  %36 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %37 = sitofp <2 x i32> %33 to <2 x float>
  %38 = fsub reassoc nsz arcp contract afn <2 x float> %29, %37 ; 8 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0164196
  %i.iq = extractelement <2 x i32> %33, i64 0
  %i.ir = mul nsw i32 %i.iq, %i.a
  %i.is = add nsw i32 %i.ir, %22
  %i.it = extractelement <2 x i32> %33, i64 1
  %i.iu = mul nsw i32 %i.it, %i.b
  %i.iv = add nsw i32 %i.is, %i.iu                ; 3 uses
  %i.iw = mul nsw i32 %i.iv, 3
  %i.ix = sext i32 %i.iw to i64                   ; 5 uses
  %i.iy = add nsw i32 %i.iv, %i.a                 ; 2 uses
  %i.iz = mul nsw i32 %i.iy, 3
  %i.ja = sext i32 %i.iz to i64                   ; 2 uses
  %i.jb = add nsw i32 %i.iv, %i.b
  %i.jc = mul nsw i32 %i.jb, 3
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = add nsw i32 %i.iy, %i.b
  %i.jf = mul nsw i32 %i.je, 3
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = add nsw i64 %i.jg, 3                    ; 2 uses
  %i.ji = extractelement <2 x float> %38, i64 0   ; 3 uses
  %i.jj = fcmp reassoc nsz arcp contract afn ogt float %i.ji, %34
  %i.jk = extractelement <2 x float> %38, i64 1   ; 2 uses
  %i.jl = fcmp reassoc nsz arcp contract afn ogt float %i.jk, %34
  %or.cond = select i1 %i.jj, i1 %i.jl, i1 false
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %.preheader188.preheader
  %i.jm = getelementptr [4 x i8], ptr %3, i64 %i.jh
  %i.jn = getelementptr [4 x i8], ptr %3, i64 %i.ix
  %i.jo = getelementptr [4 x i8], ptr %3, i64 %i.jg
  %i.jp = getelementptr [4 x i8], ptr %3, i64 %i.ja
  %i.jq = getelementptr [4 x i8], ptr %3, i64 %i.jd
  %i.jr = load <4 x float>, ptr %i.jo, align 4, !tbaa !72 ; 2 uses
  %i.js = load <4 x float>, ptr %i.jn, align 4, !tbaa !72 ; 4 uses
  %i.jt = load <4 x float>, ptr %i.jm, align 4, !tbaa !72
  %i.ju = fsub reassoc nsz arcp contract afn <4 x float> %i.jt, %i.jr
  %39 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jv = fmul reassoc nsz arcp contract afn <4 x float> %i.ju, %39
  %i.jw = load <4 x float>, ptr %i.jp, align 4, !tbaa !72 ; 2 uses
  %i.jx = fsub reassoc nsz arcp contract afn <4 x float> %i.jw, %i.js
  %40 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jy = fmul reassoc nsz arcp contract afn <4 x float> %i.jx, %40
  %i.jz = load <4 x float>, ptr %i.jq, align 4, !tbaa !72 ; 2 uses
  %i.ka = fsub reassoc nsz arcp contract afn <4 x float> %i.jz, %i.js
  %i.kb = fadd reassoc nsz arcp contract afn <4 x float> %i.jr, %i.js
  %i.kc = fadd reassoc nsz arcp contract afn <4 x float> %i.jw, %i.jz
  %i.kd = fsub reassoc nsz arcp contract afn <4 x float> %i.kb, %i.kc
  %i.ke = fmul reassoc nsz arcp contract afn <4 x float> %i.kd, %40
  %i.kf = fadd reassoc nsz arcp contract afn <4 x float> %i.ke, %i.ka
  %41 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.kg = fmul reassoc nsz arcp contract afn <4 x float> %i.kf, %41
  %i.kh = fadd reassoc nsz arcp contract afn <4 x float> %i.jv, %i.js
  %i.ki = fadd reassoc nsz arcp contract afn <4 x float> %i.kh, %i.jy
  %i.kj = fadd reassoc nsz arcp contract afn <4 x float> %i.ki, %i.kg
  br label %.loopexit

bb.b:                                             ; preds = %.preheader188.preheader
  %i.kk = fcmp reassoc nsz arcp contract afn ogt float %34, %i.ji
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.jk, %i.ji
  %or.cond225 = select i1 %i.kk, i1 %i.kl, i1 false
  %i.km = getelementptr [4 x i8], ptr %3, i64 %i.ix ; 3 uses
  %i.kn = getelementptr i8, ptr %i.km, i64 12
  %i.ko = getelementptr [4 x i8], ptr %3, i64 %i.jh ; 2 uses
  %i.kp = getelementptr [4 x i8], ptr %3, i64 %i.ix
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !72 ; 5 uses
  %i.kr = load <2 x float>, ptr %i.kn, align 4, !tbaa !72 ; 7 uses
  %i.ks = extractelement <2 x float> %i.kr, i64 0
  %i.kt = fsub reassoc nsz arcp contract afn float %i.ks, %i.kq
  %42 = fmul reassoc nsz arcp contract afn float %i.kt, %34
  %43 = fadd reassoc nsz arcp contract afn float %42, %i.kq ; 2 uses
  br i1 %or.cond225, label %.preheader183, label %.loopexit.loopexit198

.preheader183:                                    ; preds = %bb.b
  %i.ku = getelementptr [4 x i8], ptr %3, i64 %i.jd ; 2 uses
  %i.kv = getelementptr i8, ptr %i.ku, i64 12
  %i.kw = getelementptr [4 x i8], ptr %i.i, i64 %i.ix
  %i.kx = getelementptr i8, ptr %i.km, i64 20
  %i.ky = load <2 x float>, ptr %i.kw, align 4, !tbaa !72
  %i.kz = load <4 x float>, ptr %i.ku, align 4, !tbaa !72 ; 2 uses
  %i.la = load <2 x float>, ptr %i.kx, align 4, !tbaa !72 ; 2 uses
  %i.lb = shufflevector <2 x float> %i.kr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.lc = insertelement <4 x float> %i.lb, float -0.000000e+00, i64 0
  %i.ld = shufflevector <2 x float> %i.la, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.le = shufflevector <4 x float> %i.lc, <4 x float> %i.ld, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lf = shufflevector <2 x float> %i.ky, <2 x float> %i.kr, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 4 uses
  %i.lg = insertelement <4 x float> %i.lf, float 0.000000e+00, i64 0
  %i.lh = fsub reassoc nsz arcp contract afn <4 x float> %i.le, %i.lg
  %i.li = fmul reassoc nsz arcp contract afn <4 x float> %i.lh, %36
  %i.lj = load <4 x float>, ptr %i.ko, align 4, !tbaa !72
  %i.lk = load <4 x float>, ptr %i.kv, align 4, !tbaa !72 ; 3 uses
  %i.ll = fsub reassoc nsz arcp contract afn <4 x float> %i.lj, %i.lk
  %44 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> zeroinitializer
  %i.lm = fmul reassoc nsz arcp contract afn <4 x float> %i.ll, %44
  %i.ln = insertelement <4 x float> %i.lf, float %i.kq, i64 0
  %i.lo = fsub reassoc nsz arcp contract afn <4 x float> %i.kz, %i.ln
  %i.lp = shufflevector <4 x float> %i.lk, <4 x float> %i.lf, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.lq = insertelement <4 x float> %i.lk, float %i.kq, i64 0
  %i.lr = fadd reassoc nsz arcp contract afn <4 x float> %i.lp, %i.lq
  %i.ls = shufflevector <2 x float> %i.kr, <2 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lt = fadd reassoc nsz arcp contract afn <4 x float> %i.ls, %i.kz
  %i.lu = fsub reassoc nsz arcp contract afn <4 x float> %i.lr, %i.lt
  %45 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lv = fmul reassoc nsz arcp contract afn <4 x float> %i.lu, %45
  %i.lw = fadd reassoc nsz arcp contract afn <4 x float> %i.lv, %i.lo
  %46 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lx = fmul reassoc nsz arcp contract afn <4 x float> %i.lw, %46
  %47 = insertelement <4 x float> %i.lf, float %43, i64 0
  %i.ly = fadd reassoc nsz arcp contract afn <4 x float> %47, %i.li
  %i.lz = fadd reassoc nsz arcp contract afn <4 x float> %i.ly, %i.lm
  %i.ma = fadd reassoc nsz arcp contract afn <4 x float> %i.lz, %i.lx
  br label %.loopexit

.loopexit.loopexit198:                            ; preds = %bb.b
  %i.mb = getelementptr [4 x i8], ptr %3, i64 %i.ja ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 12
  %i.md = getelementptr [4 x i8], ptr %i.g, i64 %i.ix
  %i.me = getelementptr i8, ptr %i.km, i64 20
  %i.mf = load <2 x float>, ptr %i.md, align 4, !tbaa !72
  %i.mg = load <4 x float>, ptr %i.mb, align 4, !tbaa !72 ; 2 uses
  %i.mh = load <2 x float>, ptr %i.me, align 4, !tbaa !72 ; 2 uses
  %i.mi = shufflevector <2 x float> %i.kr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mj = insertelement <4 x float> %i.mi, float -0.000000e+00, i64 0
  %i.mk = shufflevector <2 x float> %i.mh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ml = shufflevector <4 x float> %i.mj, <4 x float> %i.mk, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mm = shufflevector <2 x float> %i.mf, <2 x float> %i.kr, <4 x i32> <i32 poison, i32 0, i32 1, i32 2> ; 3 uses
  %i.mn = insertelement <4 x float> %i.mm, float 0.000000e+00, i64 0
  %i.mo = fsub reassoc nsz arcp contract afn <4 x float> %i.ml, %i.mn
  %48 = fmul reassoc nsz arcp contract afn <4 x float> %i.mo, %36
  %i.mp = load <4 x float>, ptr %i.mc, align 4, !tbaa !72 ; 2 uses
  %i.mq = insertelement <4 x float> %i.mm, float %i.kq, i64 0 ; 2 uses
  %i.mr = fsub reassoc nsz arcp contract afn <4 x float> %i.mg, %i.mq
  %i.ms = load <4 x float>, ptr %i.ko, align 4, !tbaa !72
  %i.mt = fsub reassoc nsz arcp contract afn <4 x float> %i.ms, %i.mp
  %49 = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mu = fmul reassoc nsz arcp contract afn <4 x float> %i.mt, %49
  %i.mv = shufflevector <2 x float> %i.kr, <2 x float> %i.mh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.mw = fadd reassoc nsz arcp contract afn <4 x float> %i.mv, %i.mg
  %i.mx = fsub reassoc nsz arcp contract afn <4 x float> %i.mq, %i.mw
  %i.my = fadd reassoc nsz arcp contract afn <4 x float> %i.mx, %i.mp
  %50 = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mz = fmul reassoc nsz arcp contract afn <4 x float> %i.my, %50
  %i.na = fadd reassoc nsz arcp contract afn <4 x float> %i.mz, %i.mr
  %i.nb = shufflevector <2 x float> %38, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nc = fmul reassoc nsz arcp contract afn <4 x float> %i.na, %i.nb
  %51 = insertelement <4 x float> %i.mm, float %43, i64 0
  %i.nd = fadd reassoc nsz arcp contract afn <4 x float> %51, %48
  %i.ne = fadd reassoc nsz arcp contract afn <4 x float> %i.nd, %i.mu
  %i.nf = fadd reassoc nsz arcp contract afn <4 x float> %i.ne, %i.nc
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit198, %.preheader183, %.preheader
  %i.ng = phi <4 x float> [ %i.kj, %.preheader ], [ %i.ma, %.preheader183 ], [ %i.nf, %.loopexit.loopexit198 ]
  store <4 x float> %i.ng, ptr %i.ip, align 4, !tbaa !72, !alias.scope !163
  %i.nh = add nuw i64 %.0164196, 4                ; 2 uses
  %i.ni = icmp ult i64 %i.nh, %i.e
  br i1 %i.ni, label %.preheader188.preheader, label %._crit_edge, !llvm.loop !161
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @filepath_set_unix_separator(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23 ; 5 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647     ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 16
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp samesign ult i64 %wide.trip.count, 128
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %i.a, 112
  %n.vec = and i64 %i.a, 2147483520               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %index     ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 64       ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 96       ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.e, align 1, !tbaa !75
  %wide.load10 = load <32 x i8>, ptr %i.f, align 1, !tbaa !75
  %wide.load11 = load <32 x i8>, ptr %i.g, align 1, !tbaa !75
  %wide.load12 = load <32 x i8>, ptr %i.h, align 1, !tbaa !75
  %i.i = icmp eq <32 x i8> %wide.load, splat (i8 92)
  %i.j = icmp eq <32 x i8> %wide.load10, splat (i8 92)
  %i.k = icmp eq <32 x i8> %wide.load11, splat (i8 92)
  %i.l = icmp eq <32 x i8> %wide.load12, splat (i8 92)
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> splat (i8 47), ptr align 1 %i.e, <32 x i1> %i.i), !tbaa !75
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> splat (i8 47), ptr align 1 %i.f, <32 x i1> %i.j), !tbaa !75
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> splat (i8 47), ptr align 1 %i.g, <32 x i1> %i.k), !tbaa !75
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> splat (i8 47), ptr align 1 %i.h, <32 x i1> %i.l), !tbaa !75
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !76

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %i.a, 2147483632             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 %index14   ; 2 uses
  %wide.load15 = load <16 x i8>, ptr %i.n, align 1, !tbaa !75
  %i.o = icmp eq <16 x i8> %wide.load15, splat (i8 92)
  tail call void @llvm.masked.store.v16i8.p0(<16 x i8> splat (i8 47), ptr align 1 %i.n, <16 x i1> %i.o), !tbaa !75
  %index.next16 = add nuw i64 %index14, 16        ; 2 uses
  %i.p = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.p, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !165

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %wide.trip.count, %n.vec13
  br i1 %cmp.n17, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !75
  %i.s = icmp eq i8 %i.r, 92
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i8 47, ptr %i.q, align 1, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !166
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !80
  store <4 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !11
  %i.c = tail call ptr @g_get_user_cache_dir() #21
  %i.d = tail call noalias ptr (ptr, ...) @g_build_filename(ptr noundef %i.c, ptr noundef nonnull @.str.13, ptr noundef null) #21 ; 2 uses
  %i.e = tail call ptr @dt_loc_init_generic(ptr noundef %i.d, ptr noundef null, ptr noundef null) #21
  tail call void @g_free(ptr noundef %i.d) #21
  tail call void @g_free(ptr noundef %i.e) #21
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare noalias ptr @g_build_filename(ptr noundef, ...) local_unnamed_addr #3

declare ptr @g_get_user_cache_dir() local_unnamed_addr #3

declare ptr @dt_loc_init_generic(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  tail call void @free(ptr noundef %i.b) #21
  store ptr null, ptr %i.a, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define hidden void @_lut3d_add_lutname_to_list(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.b) #21
  %i.d = tail call ptr @gtk_tree_model_filter_get_model(ptr noundef %i.c) #21
  tail call void (ptr, ptr, i32, ...) @gtk_list_store_insert_with_values(ptr noundef %i.d, ptr noundef null, i32 noundef -1, i32 noundef 0, ptr noundef %1, i32 noundef 1, i32 noundef 1, i32 noundef -1) #21
  ret void
}

declare ptr @gtk_tree_view_get_model(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_tree_model_filter_get_model(ptr noundef) local_unnamed_addr #3

declare void @gtk_list_store_insert_with_values(ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden void @_lut3d_clear_lutname_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = tail call ptr @gtk_tree_view_get_model(ptr noundef %i.b) #21
  %i.d = tail call ptr @gtk_tree_model_filter_get_model(ptr noundef %i.c) #21
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.f = tail call ptr @gtk_tree_view_get_selection(ptr noundef %i.e) #21 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !83
  tail call void @g_signal_handler_block(ptr noundef %i.f, i64 noundef %i.h) #21
  tail call void @gtk_list_store_clear(ptr noundef %i.d) #21
  %i.i = load i64, ptr %i.g, align 8, !tbaa !83
  tail call void @g_signal_handler_unblock(ptr noundef %i.f, i64 noundef %i.i) #21
  ret void
}

declare ptr @gtk_tree_view_get_selection(ptr noundef) local_unnamed_addr #3

declare void @g_signal_handler_block(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @gtk_list_store_clear(ptr noundef) local_unnamed_addr #3

declare void @g_signal_handler_unblock(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca [3 x [50 x i8]], align 16         ; 13 uses
  %i.d = alloca ptr, align 8                      ; 15 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca [3 x [50 x i8]], align 16         ; 18 uses
end_hunk_0
