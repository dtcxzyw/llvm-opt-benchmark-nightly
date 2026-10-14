Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl:bb.a
  br i1 %or.cond.i17.i.i, label %_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.thread.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.33.0
  %.sroa.013.0.copyload.i.i = load i16, ptr %i.ie, align 1, !noalias !8436
  %i.if = call i16 @llvm.bswap.i16(i16 %.sroa.013.0.copyload.i.i)
  br label %_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.ig = add nuw nsw i64 %.sroa.33.0, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.33.0
  %i.ii = load i8, ptr %i.ih, align 1, !noalias !8436, !noundef !12
  %i.ij = zext i8 %i.ii to i16
  br label %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i

_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i: ; preds = %bb.bw, %bb.bu
  %.sroa.33.1 = phi i64 [ %i.ig, %bb.bw ], [ %.sroa.33.0, %bb.bu ]
  %.sroa.0.0.i.i = phi i16 [ %i.ij, %bb.bw ], [ 0, %bb.bu ] ; 2 uses
  %i.ik = sub nsw i16 0, %.sroa.0.0.i.i
  %spec.select.i.i = select i1 %.not20.i, i16 %i.ik, i16 %.sroa.0.0.i.i
  br label %_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i

_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i: ; preds = %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i, %bb.bv, %.thread.i, %bb.bt
  %.sroa.33.2 = phi i64 [ %.sroa.33.0, %.thread.i ], [ %i.ic, %bb.bv ], [ %.sroa.33.0, %bb.bt ], [ %.sroa.33.1, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i ]
  %.sroa.25.3 = phi i8 [ %.sroa.25.2, %.thread.i ], [ %.sroa.25.2, %bb.bv ], [ %.sroa.25.1, %bb.bt ], [ %.sroa.25.1, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i ] ; 4 uses
  %.sroa.21.3 = phi i8 [ %.sroa.21.2, %.thread.i ], [ %.sroa.21.2, %bb.bv ], [ %.sroa.21.1, %bb.bt ], [ %.sroa.21.1, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i ]
  %.sroa.17.4 = phi i64 [ %.sroa.17.3, %.thread.i ], [ %.sroa.17.3, %bb.bv ], [ %.sroa.17.2, %bb.bt ], [ %.sroa.17.2, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i ]
  %.sroa.02.0.i9.i = phi i16 [ 0, %.thread.i ], [ %i.if, %bb.bv ], [ 0, %bb.bt ], [ %spec.select.i.i, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i.i ]
  %i.il = add i16 %.sroa.38.0, %.sroa.02.0.i9.i   ; 2 uses
  %i.im = and i8 %.sroa.25.3, 4
  %.not21.i = icmp eq i8 %i.im, 0
  %i.in = and i8 %.sroa.25.3, 32
  %.not22.i = icmp eq i8 %i.in, 0                 ; 2 uses
  br i1 %.not21.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i
  br i1 %.not22.i, label %bb.bz, label %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

bb.by:                                            ; preds = %_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i
  %or.cond.i.not.i15.i = icmp ult i64 %.sroa.43.0, %i.gd
  br i1 %or.cond.i.not.i15.i, label %bb.cb, label %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i16.i

bb.bz:                                            ; preds = %bb.bx
  %i.io = add i64 %.sroa.43.0, 2                  ; 2 uses
  %i.ip = icmp ugt i64 %.sroa.43.0, -3
  %.not.i16.i11.i = icmp ugt i64 %i.io, %i.gd
  %or.cond.i17.i12.i = or i1 %i.ip, %.not.i16.i11.i
  br i1 %or.cond.i17.i12.i, label %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sroa.43.0
  %.sroa.013.0.copyload.i13.i = load i16, ptr %i.iq, align 1, !noalias !8437
  %i.ir = call i16 @llvm.bswap.i16(i16 %.sroa.013.0.copyload.i13.i)
  br label %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

bb.cb:                                            ; preds = %bb.by
  %i.is = add nuw nsw i64 %.sroa.43.0, 1
  %i.it = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sroa.43.0
  %i.iu = load i8, ptr %i.it, align 1, !noalias !8437, !noundef !12
  %i.iv = zext i8 %i.iu to i16
  br label %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i16.i

_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i16.i: ; preds = %bb.cb, %bb.by
  %.sroa.43.1 = phi i64 [ %i.is, %bb.cb ], [ %.sroa.43.0, %bb.by ]
  %.sroa.0.0.i17.i = phi i16 [ %i.iv, %bb.cb ], [ 0, %bb.by ] ; 2 uses
  %i.iw = sub nsw i16 0, %.sroa.0.0.i17.i
  %spec.select.i18.i = select i1 %.not22.i, i16 %i.iw, i16 %.sroa.0.0.i17.i
  br label %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.bx, %bb.bz, %bb.ca, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i16.i
  %.sroa.43.2 = phi i64 [ %.sroa.43.0, %bb.bz ], [ %i.io, %bb.ca ], [ %.sroa.43.0, %bb.bx ], [ %.sroa.43.1, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i16.i ]
  %.sroa.02.0.i14.i = phi i16 [ 0, %bb.bz ], [ %i.ir, %bb.ca ], [ 0, %bb.bx ], [ %spec.select.i18.i, %_RNvMsw_NtCsdQl7XGSB5tC_10ttf_parser6parserNtB5_6Stream10read_bytes.exit.thread.i16.i ]
  %i.ix = add i16 %.sroa.48.0, %.sroa.02.0.i14.i  ; 2 uses
  %i.iy = and i8 %.sroa.25.3, 1
  %.not.not.not = icmp eq i8 %i.iy, 0             ; 3 uses
  %i.iz = insertelement <2 x i16> poison, i16 %i.il, i64 0
  %i.ja = insertelement <2 x i16> %i.iz, i16 %i.ix, i64 1
  %i.jb = sitofp <2 x i16> %i.ja to <2 x float>   ; 16 uses
  %i.jc = load i32, ptr %i.gm, align 8, !range !25, !alias.scope !8438, !noundef !12
  %.not.i80 = icmp eq i32 %i.jc, 0
  br i1 %.not.i80, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.010.0.copyload.i = load i32, ptr %i.gn, align 8, !alias.scope !8438
  %i.jd = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !8438 ; 8 uses
  %i.je = trunc i32 %.sroa.010.0.copyload.i to i1
  br i1 %i.je, label %bb.ce, label %bb.cf

bb.cd:                                            ; preds = %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  br i1 %.not.not.not, label %bb.co, label %bb.cp

bb.ce:                                            ; preds = %bb.cc
  br i1 %.not.not.not, label %bb.ck, label %bb.cm

bb.cf:                                            ; preds = %bb.cc
  br i1 %.not.not.not, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 1, ptr %i.gn, align 8, !alias.scope !8438
  store <2 x float> %i.jb, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !8438
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !8439)
  %i.jf = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8440, !noundef !12
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jh = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8440
  %i.ji = fmul <2 x float> %i.jh, %i.jb
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jk = load <4 x float>, ptr %i.gp, align 8, !alias.scope !8440
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jm = fmul <2 x float> %i.jl, %i.jb
  %i.jn = fadd <2 x float> %i.jj, %i.jm
  %i.jo = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8440
  %i.jp = fadd <2 x float> %i.jo, %i.jn
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i: ; preds = %bb.ci, %bb.ch
  %i.jq = phi <2 x float> [ %i.jb, %bb.ch ], [ %i.jp, %bb.ci ] ; 4 uses
  %i.jr = load <2 x float>, ptr %7, align 8, !alias.scope !8440
  %i.js = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.jr, <2 x float> %i.jq)
  store <2 x float> %i.js, ptr %7, align 8, !alias.scope !8440
  %i.jt = extractelement <2 x float> %i.jq, i64 0
  %i.ju = extractelement <2 x float> %i.jq, i64 1
  %i.jv = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8440
  %i.jw = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.jv, <2 x float> %i.jq)
  store <2 x float> %i.jw, ptr %i.gu, align 8, !alias.scope !8440
  %i.jx = load ptr, ptr %i.gv, align 8, !alias.scope !8440, !nonnull !12, !noundef !12
  %i.jy = load ptr, ptr %i.gw, align 8, !alias.scope !8440, !nonnull !12, !align !23, !noundef !12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !invariant.load !12, !noalias !8439, !nonnull !12
  call void %i.ka(ptr noundef nonnull %i.jx, float noundef %i.jt, float noundef %i.ju) #34, !noalias !8439, !inline_history !8403
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ct, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit28.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i, %bb.cg
  br i1 %i.ha, label %bb.cu, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit

bb.ck:                                            ; preds = %bb.ce
  store i32 1, ptr %i.gn, align 8, !alias.scope !8438
  store <2 x float> %i.jb, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !8438
  %i.kb = fsub <2 x float> %i.jb, %i.jd
  %i.kc = fmul <2 x float> %i.kb, splat (float 5.000000e-01)
  %i.kd = fadd <2 x float> %i.jd, %i.kc           ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8441)
  %i.ke = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8442, !noundef !12
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kg = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8442
  %i.kh = load <2 x float>, ptr %i.gp, align 8, !alias.scope !8442 ; 2 uses
  %i.ki = load <2 x float>, ptr %i.gq, align 8, !alias.scope !8442 ; 2 uses
  %i.kj = fmul <2 x float> %i.jd, %i.kg
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = shufflevector <2 x float> %i.kh, <2 x float> %i.ki, <2 x i32> <i32 0, i32 3>
  %i.km = fmul <2 x float> %i.jd, %i.kl
  %i.kn = fadd <2 x float> %i.kk, %i.km
  %i.ko = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8442 ; 2 uses
  %i.kp = fadd <2 x float> %i.ko, %i.kn
  %i.kq = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = fmul <2 x float> %i.kq, %i.kh
  %i.ks = shufflevector <2 x float> %i.kd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kt = fmul <2 x float> %i.ks, %i.ki
  %i.ku = fadd <2 x float> %i.kr, %i.kt
  %i.kv = fadd <2 x float> %i.ko, %i.ku
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i: ; preds = %bb.cl, %bb.ck
  %i.kw = phi <2 x float> [ %i.jd, %bb.ck ], [ %i.kp, %bb.cl ] ; 4 uses
  %i.kx = phi <2 x float> [ %i.kd, %bb.ck ], [ %i.kv, %bb.cl ] ; 4 uses
  %i.ky = extractelement <2 x float> %i.kw, i64 0
  %i.kz = extractelement <2 x float> %i.kw, i64 1
  %i.la = load <2 x float>, ptr %7, align 8, !alias.scope !8442
  %i.lb = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.la, <2 x float> %i.kw)
  %i.lc = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.lb, <2 x float> %i.kx)
  store <2 x float> %i.lc, ptr %7, align 8, !alias.scope !8442
  %i.ld = extractelement <2 x float> %i.kx, i64 0
  %i.le = extractelement <2 x float> %i.kx, i64 1
  %i.lf = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8442
  %i.lg = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.lf, <2 x float> %i.kw)
  %i.lh = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.lg, <2 x float> %i.kx)
  store <2 x float> %i.lh, ptr %i.gu, align 8, !alias.scope !8442
  %i.li = load ptr, ptr %i.gv, align 8, !alias.scope !8442, !nonnull !12, !noundef !12
  %i.lj = load ptr, ptr %i.gw, align 8, !alias.scope !8442, !nonnull !12, !align !23, !noundef !12
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !12, !noalias !8441, !nonnull !12
  call void %i.ll(ptr noundef nonnull %i.li, float noundef %i.ky, float noundef %i.kz, float noundef %i.ld, float noundef %i.le) #34, !noalias !8441, !inline_history !8406
  br label %bb.cj

bb.cm:                                            ; preds = %bb.ce
  store i32 0, ptr %i.gn, align 8, !alias.scope !8438
  call void @llvm.experimental.noalias.scope.decl(metadata !8443)
  %i.lm = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8444, !noundef !12
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit28.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %8 = load <2 x float>, ptr %i.gp, align 8
  %i.lo = load float, ptr %i.gt, align 4, !alias.scope !8444, !noundef !12
  %i.lp = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8444 ; 2 uses
  %i.lq = fmul <2 x float> %i.jd, %i.lp
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ls = insertelement <2 x float> %8, float %i.lo, i64 1 ; 2 uses
  %i.lt = fmul <2 x float> %i.jd, %i.ls
  %i.lu = fadd <2 x float> %i.lr, %i.lt
  %i.lv = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8444 ; 2 uses
  %i.lw = fadd <2 x float> %i.lv, %i.lu
  %i.lx = fmul <2 x float> %i.lp, %i.jb
  %i.ly = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lz = fmul <2 x float> %i.ls, %i.jb
  %i.ma = fadd <2 x float> %i.ly, %i.lz
  %i.mb = fadd <2 x float> %i.lv, %i.ma
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit28.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit28.i: ; preds = %bb.cn, %bb.cm
  %i.mc = phi <2 x float> [ %i.jd, %bb.cm ], [ %i.lw, %bb.cn ] ; 4 uses
  %i.md = phi <2 x float> [ %i.jb, %bb.cm ], [ %i.mb, %bb.cn ] ; 4 uses
  %i.me = extractelement <2 x float> %i.mc, i64 0
  %i.mf = extractelement <2 x float> %i.mc, i64 1
  %i.mg = load <2 x float>, ptr %7, align 8, !alias.scope !8444
  %i.mh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.mg, <2 x float> %i.mc)
  %i.mi = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.mh, <2 x float> %i.md)
  store <2 x float> %i.mi, ptr %7, align 8, !alias.scope !8444
  %i.mj = extractelement <2 x float> %i.md, i64 0
  %i.mk = extractelement <2 x float> %i.md, i64 1
  %i.ml = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8444
  %i.mm = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ml, <2 x float> %i.mc)
  %i.mn = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.mm, <2 x float> %i.md)
  store <2 x float> %i.mn, ptr %i.gu, align 8, !alias.scope !8444
  %i.mo = load ptr, ptr %i.gv, align 8, !alias.scope !8444, !nonnull !12, !noundef !12
  %i.mp = load ptr, ptr %i.gw, align 8, !alias.scope !8444, !nonnull !12, !align !23, !noundef !12
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8, !invariant.load !12, !noalias !8443, !nonnull !12
  call void %i.mr(ptr noundef nonnull %i.mo, float noundef %i.me, float noundef %i.mf, float noundef %i.mj, float noundef %i.mk) #34, !noalias !8443, !inline_history !8406
  br label %bb.cj

bb.co:                                            ; preds = %bb.cd
  %i.ms = load i32, ptr %i.gx, align 4, !range !25, !alias.scope !8438, !noundef !12
  %i.mt = trunc nuw i32 %i.ms to i1
  br i1 %i.mt, label %bb.cr, label %bb.ct

bb.cp:                                            ; preds = %bb.cd
  store i32 1, ptr %i.gm, align 8, !alias.scope !8438
  store <2 x float> %i.jb, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !8438
  call void @llvm.experimental.noalias.scope.decl(metadata !8445)
  %i.mu = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8446, !noundef !12
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mw = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8446
  %i.mx = fmul <2 x float> %i.mw, %i.jb
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mz = load <4 x float>, ptr %i.gp, align 8, !alias.scope !8446
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.nb = fmul <2 x float> %i.na, %i.jb
  %i.nc = fadd <2 x float> %i.my, %i.nb
  %i.nd = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8446
  %i.ne = fadd <2 x float> %i.nd, %i.nc
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i: ; preds = %bb.cq, %bb.cp
  %i.nf = phi <2 x float> [ %i.jb, %bb.cp ], [ %i.ne, %bb.cq ] ; 4 uses
  %i.ng = load <2 x float>, ptr %7, align 8, !alias.scope !8446
  %i.nh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.ng, <2 x float> %i.nf)
  store <2 x float> %i.nh, ptr %7, align 8, !alias.scope !8446
  %i.ni = extractelement <2 x float> %i.nf, i64 0
  %i.nj = extractelement <2 x float> %i.nf, i64 1
  %i.nk = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8446
  %i.nl = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.nk, <2 x float> %i.nf)
  store <2 x float> %i.nl, ptr %i.gu, align 8, !alias.scope !8446
  %i.nm = load ptr, ptr %i.gv, align 8, !alias.scope !8446, !nonnull !12, !noundef !12
  %i.nn = load ptr, ptr %i.gw, align 8, !alias.scope !8446, !nonnull !12, !align !23, !noundef !12
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !invariant.load !12, !noalias !8445, !nonnull !12
  call void %i.np(ptr noundef nonnull %i.nm, float noundef %i.ni, float noundef %i.nj) #34, !noalias !8445, !inline_history !8411
  br label %bb.cj

bb.cr:                                            ; preds = %bb.co
  %i.nq = load <2 x float>, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !8438 ; 2 uses
  %i.nr = fsub <2 x float> %i.jb, %i.nq
  %i.ns = fmul <2 x float> %i.nr, splat (float 5.000000e-01)
  %i.nt = fadd <2 x float> %i.nq, %i.ns           ; 4 uses
  store i32 1, ptr %i.gm, align 8, !alias.scope !8438
  store <2 x float> %i.nt, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !8438
  store i32 1, ptr %i.gn, align 8, !alias.scope !8438
  store <2 x float> %i.jb, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !8438
  call void @llvm.experimental.noalias.scope.decl(metadata !8447)
  %i.nu = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8448, !noundef !12
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nw = load <2 x float>, ptr %i.gp, align 8, !alias.scope !8448
  %i.nx = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x float> %i.nx, %i.nw
  %i.nz = load <2 x float>, ptr %i.gq, align 8, !alias.scope !8448
  %i.oa = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ob = fmul <2 x float> %i.oa, %i.nz
  %i.oc = fadd <2 x float> %i.ny, %i.ob
  %i.od = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8448
  %i.oe = fadd <2 x float> %i.od, %i.oc
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i: ; preds = %bb.cs, %bb.cr
  %i.of = phi <2 x float> [ %i.nt, %bb.cr ], [ %i.oe, %bb.cs ] ; 4 uses
  %i.og = load <2 x float>, ptr %7, align 8, !alias.scope !8448
  %i.oh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.og, <2 x float> %i.of)
  store <2 x float> %i.oh, ptr %7, align 8, !alias.scope !8448
  %i.oi = extractelement <2 x float> %i.of, i64 0
  %i.oj = extractelement <2 x float> %i.of, i64 1
  %i.ok = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8448
  %i.ol = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ok, <2 x float> %i.of)
  store <2 x float> %i.ol, ptr %i.gu, align 8, !alias.scope !8448
  %i.om = load ptr, ptr %i.gv, align 8, !alias.scope !8448, !nonnull !12, !noundef !12
  %i.on = load ptr, ptr %i.gw, align 8, !alias.scope !8448, !nonnull !12, !align !23, !noundef !12
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8, !invariant.load !12, !noalias !8447, !nonnull !12
  call void %i.op(ptr noundef nonnull %i.om, float noundef %i.oi, float noundef %i.oj) #34, !noalias !8447, !inline_history !8411
  br label %bb.cj

bb.ct:                                            ; preds = %bb.co
  store i32 1, ptr %i.gx, align 4, !alias.scope !8438
  store <2 x float> %i.jb, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !8438
  br label %bb.cj

bb.cu:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !8449)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.gx, align 4, !alias.scope !8450 ; 2 uses
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.gn, align 8, !alias.scope !8450 ; 2 uses
  %i.oq = trunc i32 %.sroa.0.0.copyload.i.i to i1
  %i.or = trunc i32 %.sroa.09.0.copyload.i.i to i1
  %or.cond.i.i81 = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond.i.i81, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i, %bb.cu
  %.sroa.022.0.copyload.i.i = phi i32 [ 0, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i ], [ %.sroa.09.0.copyload.i.i, %bb.cu ]
  %.sroa.013.0.copyload.i.i82 = load i32, ptr %i.gm, align 8, !alias.scope !8450 ; 2 uses
  %i.os = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !8450 ; 9 uses
  %i.ot = trunc i32 %.sroa.013.0.copyload.i.i82 to i1 ; 2 uses
  %i.ou = and i32 %.sroa.0.0.copyload.i.i, 1
  %i.ov = and i32 %i.ou, %.sroa.013.0.copyload.i.i82
  %or.cond5.not.i.i = icmp eq i32 %i.ov, 0
  br i1 %or.cond5.not.i.i, label %bb.cy, label %bb.cz

bb.cw:                                            ; preds = %bb.cu
  store i32 0, ptr %i.gn, align 8, !alias.scope !8450
  %i.ow = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !8450 ; 5 uses
  %i.ox = load <2 x float>, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !8450
  %i.oy = fsub <2 x float> %i.ox, %i.ow
  %i.oz = fmul <2 x float> %i.oy, splat (float 5.000000e-01)
  %i.pa = fadd <2 x float> %i.ow, %i.oz           ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8451)
  %i.pb = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8452, !noundef !12
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pd = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8452
  %i.pe = load <2 x float>, ptr %i.gp, align 8, !alias.scope !8452 ; 2 uses
  %i.pf = load <2 x float>, ptr %i.gq, align 8, !alias.scope !8452 ; 2 uses
  %i.pg = fmul <2 x float> %i.ow, %i.pd
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pi = shufflevector <2 x float> %i.pe, <2 x float> %i.pf, <2 x i32> <i32 0, i32 3>
  %i.pj = fmul <2 x float> %i.ow, %i.pi
  %i.pk = fadd <2 x float> %i.ph, %i.pj
  %i.pl = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8452 ; 2 uses
  %i.pm = fadd <2 x float> %i.pl, %i.pk
  %i.pn = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.po = fmul <2 x float> %i.pn, %i.pe
  %i.pp = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pq = fmul <2 x float> %i.pp, %i.pf
  %i.pr = fadd <2 x float> %i.po, %i.pq
  %i.ps = fadd <2 x float> %i.pl, %i.pr
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i: ; preds = %bb.cx, %bb.cw
  %i.pt = phi <2 x float> [ %i.ow, %bb.cw ], [ %i.pm, %bb.cx ] ; 4 uses
  %i.pu = phi <2 x float> [ %i.pa, %bb.cw ], [ %i.ps, %bb.cx ] ; 4 uses
  %i.pv = extractelement <2 x float> %i.pt, i64 0
  %i.pw = extractelement <2 x float> %i.pt, i64 1
  %i.px = load <2 x float>, ptr %7, align 8, !alias.scope !8452
  %i.py = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.px, <2 x float> %i.pt)
  %i.pz = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.py, <2 x float> %i.pu)
  store <2 x float> %i.pz, ptr %7, align 8, !alias.scope !8452
  %i.qa = extractelement <2 x float> %i.pu, i64 0
  %i.qb = extractelement <2 x float> %i.pu, i64 1
  %i.qc = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8452
  %i.qd = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.qc, <2 x float> %i.pt)
  %i.qe = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.qd, <2 x float> %i.pu)
  store <2 x float> %i.qe, ptr %i.gu, align 8, !alias.scope !8452
  %i.qf = load ptr, ptr %i.gv, align 8, !alias.scope !8452, !nonnull !12, !noundef !12
  %i.qg = load ptr, ptr %i.gw, align 8, !alias.scope !8452, !nonnull !12, !align !23, !noundef !12
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 40
  %i.qi = load ptr, ptr %i.qh, align 8, !invariant.load !12, !noalias !8453, !nonnull !12
  call void %i.qi(ptr noundef nonnull %i.qf, float noundef %i.pv, float noundef %i.pw, float noundef %i.qa, float noundef %i.qb) #34, !noalias !8453, !inline_history !8418
  br label %bb.cv

bb.cy:                                            ; preds = %bb.cv
  %i.qj = trunc i32 %.sroa.022.0.copyload.i.i to i1
  %or.cond8.i.i = select i1 %i.ot, i1 %i.qj, i1 false
  br i1 %or.cond8.i.i, label %bb.dc, label %bb.db

bb.cz:                                            ; preds = %bb.cv
  %i.qk = load <2 x float>, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !8450 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8454)
  %i.ql = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8455, !noundef !12
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %9 = load <2 x float>, ptr %i.gp, align 8
  %i.qn = load float, ptr %i.gt, align 4, !alias.scope !8455, !noundef !12
  %i.qo = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8455 ; 2 uses
  %i.qp = fmul <2 x float> %i.qk, %i.qo
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qr = insertelement <2 x float> %9, float %i.qn, i64 1 ; 2 uses
  %i.qs = fmul <2 x float> %i.qk, %i.qr
  %i.qt = fadd <2 x float> %i.qq, %i.qs
  %i.qu = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8455 ; 2 uses
  %i.qv = fadd <2 x float> %i.qu, %i.qt
  %i.qw = fmul <2 x float> %i.os, %i.qo
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qy = fmul <2 x float> %i.os, %i.qr
  %i.qz = fadd <2 x float> %i.qx, %i.qy
  %i.ra = fadd <2 x float> %i.qu, %i.qz
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i: ; preds = %bb.da, %bb.cz
  %i.rb = phi <2 x float> [ %i.qk, %bb.cz ], [ %i.qv, %bb.da ] ; 4 uses
  %i.rc = phi <2 x float> [ %i.os, %bb.cz ], [ %i.ra, %bb.da ] ; 4 uses
  %i.rd = extractelement <2 x float> %i.rb, i64 0
  %i.re = extractelement <2 x float> %i.rb, i64 1
  %i.rf = load <2 x float>, ptr %7, align 8, !alias.scope !8455
  %i.rg = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.rf, <2 x float> %i.rb)
  %i.rh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.rg, <2 x float> %i.rc)
  store <2 x float> %i.rh, ptr %7, align 8, !alias.scope !8455
  %i.ri = extractelement <2 x float> %i.rc, i64 0
  %i.rj = extractelement <2 x float> %i.rc, i64 1
  %i.rk = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8455
  %i.rl = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.rk, <2 x float> %i.rb)
  %i.rm = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.rl, <2 x float> %i.rc)
  store <2 x float> %i.rm, ptr %i.gu, align 8, !alias.scope !8455
  %i.rn = load ptr, ptr %i.gv, align 8, !alias.scope !8455, !nonnull !12, !noundef !12 ; 2 uses
  %i.ro = load ptr, ptr %i.gw, align 8, !alias.scope !8455, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.rq = load ptr, ptr %i.rp, align 8, !invariant.load !12, !noalias !8456, !nonnull !12
  call void %i.rq(ptr noundef nonnull %i.rn, float noundef %i.rd, float noundef %i.re, float noundef %i.ri, float noundef %i.rj) #34, !noalias !8456, !inline_history !8418
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

bb.db:                                            ; preds = %bb.cy
  br i1 %i.ot, label %bb.de, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.db
  %.pre.i.i84 = load ptr, ptr %i.gv, align 8, !alias.scope !8450
  %.pre47.i.i = load ptr, ptr %i.gw, align 8, !alias.scope !8450
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

bb.dc:                                            ; preds = %bb.cy
  %i.rr = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !8450 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8457)
  %i.rs = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8458, !noundef !12
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %10 = load <2 x float>, ptr %i.gp, align 8
  %i.ru = load float, ptr %i.gt, align 4, !alias.scope !8458, !noundef !12
  %i.rv = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8458 ; 2 uses
  %i.rw = fmul <2 x float> %i.rr, %i.rv
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ry = insertelement <2 x float> %10, float %i.ru, i64 1 ; 2 uses
  %i.rz = fmul <2 x float> %i.rr, %i.ry
  %i.sa = fadd <2 x float> %i.rx, %i.rz
  %i.sb = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8458 ; 2 uses
  %i.sc = fadd <2 x float> %i.sb, %i.sa
  %i.sd = fmul <2 x float> %i.os, %i.rv
  %i.se = shufflevector <2 x float> %i.sd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sf = fmul <2 x float> %i.os, %i.ry
  %i.sg = fadd <2 x float> %i.se, %i.sf
  %i.sh = fadd <2 x float> %i.sb, %i.sg
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i: ; preds = %bb.dd, %bb.dc
  %i.si = phi <2 x float> [ %i.rr, %bb.dc ], [ %i.sc, %bb.dd ] ; 4 uses
  %i.sj = phi <2 x float> [ %i.os, %bb.dc ], [ %i.sh, %bb.dd ] ; 4 uses
  %i.sk = extractelement <2 x float> %i.si, i64 0
  %i.sl = extractelement <2 x float> %i.si, i64 1
  %i.sm = load <2 x float>, ptr %7, align 8, !alias.scope !8458
  %i.sn = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.sm, <2 x float> %i.si)
  %i.so = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.sn, <2 x float> %i.sj)
  store <2 x float> %i.so, ptr %7, align 8, !alias.scope !8458
  %i.sp = extractelement <2 x float> %i.sj, i64 0
  %i.sq = extractelement <2 x float> %i.sj, i64 1
  %i.sr = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8458
  %i.ss = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.sr, <2 x float> %i.si)
  %i.st = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ss, <2 x float> %i.sj)
  store <2 x float> %i.st, ptr %i.gu, align 8, !alias.scope !8458
  %i.su = load ptr, ptr %i.gv, align 8, !alias.scope !8458, !nonnull !12, !noundef !12 ; 2 uses
  %i.sv = load ptr, ptr %i.gw, align 8, !alias.scope !8458, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.sx = load ptr, ptr %i.sw, align 8, !invariant.load !12, !noalias !8459, !nonnull !12
  call void %i.sx(ptr noundef nonnull %i.su, float noundef %i.sk, float noundef %i.sl, float noundef %i.sp, float noundef %i.sq) #34, !noalias !8459, !inline_history !8418
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

bb.de:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !8460)
  %i.sy = load i8, ptr %i.go, align 4, !range !19, !alias.scope !8461, !noundef !12
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ta = load <2 x float>, ptr %i.gs, align 4, !alias.scope !8461
  %i.tb = fmul <2 x float> %i.os, %i.ta
  %i.tc = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.td = load <4 x float>, ptr %i.gp, align 8, !alias.scope !8461
  %i.te = shufflevector <4 x float> %i.td, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.tf = fmul <2 x float> %i.os, %i.te
  %i.tg = fadd <2 x float> %i.tc, %i.tf
  %i.th = load <2 x float>, ptr %i.gr, align 8, !alias.scope !8461
  %i.ti = fadd <2 x float> %i.th, %i.tg
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i: ; preds = %bb.df, %bb.de
  %i.tj = phi <2 x float> [ %i.os, %bb.de ], [ %i.ti, %bb.df ] ; 4 uses
  %i.tk = load <2 x float>, ptr %7, align 8, !alias.scope !8461
  %i.tl = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.tk, <2 x float> %i.tj)
  store <2 x float> %i.tl, ptr %7, align 8, !alias.scope !8461
  %i.tm = extractelement <2 x float> %i.tj, i64 0
  %i.tn = extractelement <2 x float> %i.tj, i64 1
  %i.to = load <2 x float>, ptr %i.gu, align 8, !alias.scope !8461
  %i.tp = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.to, <2 x float> %i.tj)
  store <2 x float> %i.tp, ptr %i.gu, align 8, !alias.scope !8461
  %i.tq = load ptr, ptr %i.gv, align 8, !alias.scope !8461, !nonnull !12, !noundef !12 ; 2 uses
  %i.tr = load ptr, ptr %i.gw, align 8, !alias.scope !8461, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tt = load ptr, ptr %i.ts, align 8, !invariant.load !12, !noalias !8462, !nonnull !12
  call void %i.tt(ptr noundef nonnull %i.tq, float noundef %i.tm, float noundef %i.tn) #34, !noalias !8462, !inline_history !8425
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i: ; preds = %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i, %._crit_edge.i.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i
  %i.tu = phi ptr [ %.pre47.i.i, %._crit_edge.i.i ], [ %i.tr, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i ], [ %i.sv, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i ], [ %i.ro, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i ]
  %i.tv = phi ptr [ %.pre.i.i84, %._crit_edge.i.i ], [ %i.tq, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i ], [ %i.su, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i ], [ %i.rn, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i ]
  store i32 0, ptr %i.gm, align 8, !alias.scope !8450
  store i32 0, ptr %i.gx, align 4, !alias.scope !8450
  store i32 0, ptr %i.gn, align 8, !alias.scope !8450
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  %i.tx = load ptr, ptr %i.tw, align 8, !invariant.load !12, !noalias !8449, !nonnull !12
  call void %i.tx(ptr noundef nonnull %i.tv) #34, !noalias !8449, !inline_history !8426
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit: ; preds = %bb.cj, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i
  %i.ty = icmp eq i16 %i.gz, 0
  br i1 %i.ty, label %.loopexit, label %bb.bh

bb.dg:                                            ; preds = %.loopexit
  %i.tz = fcmp oeq float %i.du, f0xFF7FFFFF
  %i.ua = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ub = load float, ptr %i.ua, align 4          ; 2 uses
  %i.uc = fcmp oeq float %i.ub, f0xFF7FFFFF
  %or.cond = select i1 %i.tz, i1 %i.uc, i1 false
  br i1 %or.cond, label %bb.dq, label %bb.dh

bb.dh:                                            ; preds = %.loopexit._crit_edge, %bb.dg
  %.sroa.6127.0.copyload = phi float [ %.sroa.6127.0.copyload.pre, %.loopexit._crit_edge ], [ %i.ub, %bb.dg ] ; 3 uses
  %i.ud = fcmp oge float %i.do, f0xCF000000
  %i.ue = fcmp olt float %i.do, f0x4F000000
  %or.cond.i88 = and i1 %i.ud, %i.ue
  br i1 %or.cond.i88, label %bb.di, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit

bb.di:                                            ; preds = %bb.dh
  %i.uf = call i32 @llvm.fptosi.sat.i32.f32(float %i.do) ; 2 uses
  %i.ug = add i32 %i.uf, -32768
  %or.cond4.i = icmp ult i32 %i.ug, -65536
  br i1 %or.cond4.i, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.uh = trunc nsw i32 %i.uf to i16
  %i.ui = fcmp oge float %i.dr, f0xCF000000
  %i.uj = fcmp olt float %i.dr, f0x4F000000
  %or.cond1.i = and i1 %i.ui, %i.uj
  br i1 %or.cond1.i, label %bb.dk, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit

bb.dk:                                            ; preds = %bb.dj
  %i.uk = call i32 @llvm.fptosi.sat.i32.f32(float %i.dr) ; 2 uses
  %i.ul = add i32 %i.uk, -32768
  %or.cond5.i = icmp ult i32 %i.ul, -65536
  br i1 %or.cond5.i, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.um = trunc nsw i32 %i.uk to i16
  %i.un = fcmp oge float %i.du, f0xCF000000
  %i.uo = fcmp olt float %i.du, f0x4F000000
  %or.cond2.i = and i1 %i.un, %i.uo
  br i1 %or.cond2.i, label %bb.dm, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit

bb.dm:                                            ; preds = %bb.dl
  %i.up = call i32 @llvm.fptosi.sat.i32.f32(float %i.du) ; 2 uses
  %i.uq = add i32 %i.up, -32768
  %or.cond6.i = icmp ult i32 %i.uq, -65536
  br i1 %or.cond6.i, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ur = trunc nsw i32 %i.up to i16
  %i.us = fcmp oge float %.sroa.6127.0.copyload, f0xCF000000
  %i.ut = fcmp olt float %.sroa.6127.0.copyload, f0x4F000000
  %or.cond3.i = and i1 %i.us, %i.ut
  br i1 %or.cond3.i, label %bb.do, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit

bb.do:                                            ; preds = %bb.dn
  %i.uu = call i32 @llvm.fptosi.sat.i32.f32(float %.sroa.6127.0.copyload) ; 2 uses
  %i.uv = add i32 %i.uu, -32768
  %or.cond7.i = icmp ult i32 %i.uv, -65536
  br i1 %or.cond7.i, label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uw = trunc nsw i32 %i.uu to i16
  br label %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit

_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit: ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dk, %bb.dl, %bb.dm, %bb.dn, %bb.do, %bb.dp
  %.sroa.7123.0 = phi i16 [ undef, %bb.di ], [ undef, %bb.dk ], [ undef, %bb.dm ], [ undef, %bb.do ], [ %i.uw, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.dj ], [ undef, %bb.dh ]
  %.sroa.6122.0 = phi i16 [ undef, %bb.di ], [ undef, %bb.dk ], [ undef, %bb.dm ], [ undef, %bb.do ], [ %i.ur, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.dj ], [ undef, %bb.dh ]
  %.sroa.5121.0 = phi i16 [ undef, %bb.di ], [ undef, %bb.dk ], [ undef, %bb.dm ], [ undef, %bb.do ], [ %i.um, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.dj ], [ undef, %bb.dh ]
  %.sroa.4120.0 = phi i16 [ undef, %bb.di ], [ undef, %bb.dk ], [ undef, %bb.dm ], [ undef, %bb.do ], [ %i.uh, %bb.dp ], [ undef, %bb.dn ], [ undef, %bb.dl ], [ undef, %bb.dj ], [ undef, %bb.dh ]
  %storemerge.i = phi i16 [ 0, %bb.di ], [ 0, %bb.dk ], [ 0, %bb.dm ], [ 0, %bb.do ], [ 1, %bb.dp ], [ 0, %bb.dn ], [ 0, %bb.dl ], [ 0, %bb.dj ], [ 0, %bb.dh ]
  store i16 %storemerge.i, ptr %0, align 2
  %.sroa.4120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %.sroa.4120.0, ptr %.sroa.4120.0..sroa_idx, align 2
  %.sroa.5121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %.sroa.5121.0, ptr %.sroa.5121.0..sroa_idx, align 2
  %.sroa.6122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %.sroa.6122.0, ptr %.sroa.6122.0..sroa_idx, align 2
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %.sroa.7123.0, ptr %.sroa.7123.0..sroa_idx, align 2
  br label %bb.dr

bb.dq:                                            ; preds = %bb.dg
  store i16 0, ptr %0, align 2
  br label %bb.dr

bb.dr:                                            ; preds = %bb.d, %bb.dq, %bb.bg, %bb.au, %bb.h, %_RNvMs8_CsdQl7XGSB5tC_10ttf_parserNtB5_5RectF7to_rect.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs3oUPovFnLWP_4core3anyINtNtCs1xwejQucwHj_5alloc3vec3VechENtB2_3Any7type_idCsl4q486LaARA_9typst_svg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @238, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCs3oUPovFnLWP_4core3anyINtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes10StrWrapperNtNtCs1xwejQucwHj_5alloc6string6StringENtB2_3Any7type_idCsl4q486LaARA_9typst_svg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @239, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, i64 } @_RNvXNtCs3oUPovFnLWP_4core7convertRShINtB2_5AsRefBw_E6as_refCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %i.c, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXNtNtCsbMQOdixSu6G_5image2io7encoderINtNtNtB6_6codecs3png10PngEncoderQINtNtCs1xwejQucwHj_5alloc3vec3VechEENtB2_17ImageEncoderBoxed11write_imageCsl4q486LaARA_9typst_svg(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %4, i32 noundef %5, i8 noundef range(i8 0, 29) %6, i8 %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
