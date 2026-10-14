Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl:bb.a
  br i1 %or.cond.i17.i.i, label %_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i, label %bb.bv

bb.bv:                                            ; preds = %.thread.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.33.0
  %.sroa.013.0.copyload.i.i = load i16, ptr %i.ie, align 1, !noalias !48359
  %i.if = call i16 @llvm.bswap.i16(i16 %.sroa.013.0.copyload.i.i)
  br label %_RNvMs6_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_10CoordsIter4next.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.ig = add nuw nsw i64 %.sroa.33.0, 1
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.33.0
  %i.ii = load i8, ptr %i.ih, align 1, !noalias !48359, !noundef !41
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
  %.sroa.013.0.copyload.i13.i = load i16, ptr %i.iq, align 1, !noalias !48360
  %i.ir = call i16 @llvm.bswap.i16(i16 %.sroa.013.0.copyload.i13.i)
  br label %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

bb.cb:                                            ; preds = %bb.by
  %i.is = add nuw nsw i64 %.sroa.43.0, 1
  %i.it = getelementptr inbounds nuw i8, ptr %i.gl, i64 %.sroa.43.0
  %i.iu = load i8, ptr %i.it, align 1, !noalias !48360, !noundef !41
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
  %i.jc = load i32, ptr %i.gm, align 8, !range !106, !alias.scope !48361, !noundef !41
  %.not.i80 = icmp eq i32 %i.jc, 0
  br i1 %.not.i80, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.010.0.copyload.i = load i32, ptr %i.gn, align 8, !alias.scope !48361
  %i.jd = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !48361 ; 8 uses
  %i.je = trunc i32 %.sroa.010.0.copyload.i to i1
  br i1 %i.je, label %bb.ce, label %bb.cf

bb.cd:                                            ; preds = %_RNvXs2_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_15GlyphPointsIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  br i1 %.not.not.not, label %bb.co, label %bb.cp

bb.ce:                                            ; preds = %bb.cc
  br i1 %.not.not.not, label %bb.ck, label %bb.cm

bb.cf:                                            ; preds = %bb.cc
  br i1 %.not.not.not, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 1, ptr %i.gn, align 8, !alias.scope !48361
  store <2 x float> %i.jb, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !48361
  br label %bb.cj

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.experimental.noalias.scope.decl(metadata !48362)
  %i.jf = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48363, !noundef !41
  %i.jg = trunc nuw i8 %i.jf to i1
  br i1 %i.jg, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.jh = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48363
  %i.ji = fmul <2 x float> %i.jh, %i.jb
  %i.jj = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jk = load <4 x float>, ptr %i.gp, align 8, !alias.scope !48363
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jm = fmul <2 x float> %i.jl, %i.jb
  %i.jn = fadd <2 x float> %i.jj, %i.jm
  %i.jo = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48363
  %i.jp = fadd <2 x float> %i.jo, %i.jn
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i: ; preds = %bb.ci, %bb.ch
  %i.jq = phi <2 x float> [ %i.jb, %bb.ch ], [ %i.jp, %bb.ci ] ; 4 uses
  %i.jr = load <2 x float>, ptr %7, align 8, !alias.scope !48363
  %i.js = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.jr, <2 x float> %i.jq)
  store <2 x float> %i.js, ptr %7, align 8, !alias.scope !48363
  %i.jt = extractelement <2 x float> %i.jq, i64 0
  %i.ju = extractelement <2 x float> %i.jq, i64 1
  %i.jv = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48363
  %i.jw = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.jv, <2 x float> %i.jq)
  store <2 x float> %i.jw, ptr %i.gu, align 8, !alias.scope !48363
  %i.jx = load ptr, ptr %i.gv, align 8, !alias.scope !48363, !nonnull !41, !noundef !41
  %i.jy = load ptr, ptr %i.gw, align 8, !alias.scope !48363, !nonnull !41, !align !46, !noundef !41
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  %i.ka = load ptr, ptr %i.jz, align 8, !invariant.load !41, !noalias !48362, !nonnull !41
  call void %i.ka(ptr noundef nonnull %i.jx, float noundef %i.jt, float noundef %i.ju) #59, !noalias !48362, !inline_history !48327
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ct, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit28.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i, %bb.cg
  br i1 %i.ha, label %bb.cu, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit

bb.ck:                                            ; preds = %bb.ce
  store i32 1, ptr %i.gn, align 8, !alias.scope !48361
  store <2 x float> %i.jb, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !48361
  %i.kb = fsub <2 x float> %i.jb, %i.jd
  %i.kc = fmul <2 x float> %i.kb, splat (float 5.000000e-01)
  %i.kd = fadd <2 x float> %i.jd, %i.kc           ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48364)
  %i.ke = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48365, !noundef !41
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kg = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48365
  %i.kh = load <2 x float>, ptr %i.gp, align 8, !alias.scope !48365 ; 2 uses
  %i.ki = load <2 x float>, ptr %i.gq, align 8, !alias.scope !48365 ; 2 uses
  %i.kj = fmul <2 x float> %i.jd, %i.kg
  %i.kk = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kl = shufflevector <2 x float> %i.kh, <2 x float> %i.ki, <2 x i32> <i32 0, i32 3>
  %i.km = fmul <2 x float> %i.jd, %i.kl
  %i.kn = fadd <2 x float> %i.kk, %i.km
  %i.ko = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48365 ; 2 uses
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
  %i.la = load <2 x float>, ptr %7, align 8, !alias.scope !48365
  %i.lb = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.la, <2 x float> %i.kw)
  %i.lc = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.lb, <2 x float> %i.kx)
  store <2 x float> %i.lc, ptr %7, align 8, !alias.scope !48365
  %i.ld = extractelement <2 x float> %i.kx, i64 0
  %i.le = extractelement <2 x float> %i.kx, i64 1
  %i.lf = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48365
  %i.lg = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.lf, <2 x float> %i.kw)
  %i.lh = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.lg, <2 x float> %i.kx)
  store <2 x float> %i.lh, ptr %i.gu, align 8, !alias.scope !48365
  %i.li = load ptr, ptr %i.gv, align 8, !alias.scope !48365, !nonnull !41, !noundef !41
  %i.lj = load ptr, ptr %i.gw, align 8, !alias.scope !48365, !nonnull !41, !align !46, !noundef !41
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !41, !noalias !48364, !nonnull !41
  call void %i.ll(ptr noundef nonnull %i.li, float noundef %i.ky, float noundef %i.kz, float noundef %i.ld, float noundef %i.le) #59, !noalias !48364, !inline_history !48330
  br label %bb.cj

bb.cm:                                            ; preds = %bb.ce
  store i32 0, ptr %i.gn, align 8, !alias.scope !48361
  call void @llvm.experimental.noalias.scope.decl(metadata !48366)
  %i.lm = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48367, !noundef !41
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit28.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %8 = load <2 x float>, ptr %i.gp, align 8
  %i.lo = load float, ptr %i.gt, align 4, !alias.scope !48367, !noundef !41
  %i.lp = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48367 ; 2 uses
  %i.lq = fmul <2 x float> %i.jd, %i.lp
  %i.lr = shufflevector <2 x float> %i.lq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ls = insertelement <2 x float> %8, float %i.lo, i64 1 ; 2 uses
  %i.lt = fmul <2 x float> %i.jd, %i.ls
  %i.lu = fadd <2 x float> %i.lr, %i.lt
  %i.lv = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48367 ; 2 uses
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
  %i.mg = load <2 x float>, ptr %7, align 8, !alias.scope !48367
  %i.mh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.mg, <2 x float> %i.mc)
  %i.mi = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.mh, <2 x float> %i.md)
  store <2 x float> %i.mi, ptr %7, align 8, !alias.scope !48367
  %i.mj = extractelement <2 x float> %i.md, i64 0
  %i.mk = extractelement <2 x float> %i.md, i64 1
  %i.ml = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48367
  %i.mm = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ml, <2 x float> %i.mc)
  %i.mn = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.mm, <2 x float> %i.md)
  store <2 x float> %i.mn, ptr %i.gu, align 8, !alias.scope !48367
  %i.mo = load ptr, ptr %i.gv, align 8, !alias.scope !48367, !nonnull !41, !noundef !41
  %i.mp = load ptr, ptr %i.gw, align 8, !alias.scope !48367, !nonnull !41, !align !46, !noundef !41
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 40
  %i.mr = load ptr, ptr %i.mq, align 8, !invariant.load !41, !noalias !48366, !nonnull !41
  call void %i.mr(ptr noundef nonnull %i.mo, float noundef %i.me, float noundef %i.mf, float noundef %i.mj, float noundef %i.mk) #59, !noalias !48366, !inline_history !48330
  br label %bb.cj

bb.co:                                            ; preds = %bb.cd
  %i.ms = load i32, ptr %i.gx, align 4, !range !106, !alias.scope !48361, !noundef !41
  %i.mt = trunc nuw i32 %i.ms to i1
  br i1 %i.mt, label %bb.cr, label %bb.ct

bb.cp:                                            ; preds = %bb.cd
  store i32 1, ptr %i.gm, align 8, !alias.scope !48361
  store <2 x float> %i.jb, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !48361
  call void @llvm.experimental.noalias.scope.decl(metadata !48368)
  %i.mu = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48369, !noundef !41
  %i.mv = trunc nuw i8 %i.mu to i1
  br i1 %i.mv, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mw = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48369
  %i.mx = fmul <2 x float> %i.mw, %i.jb
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mz = load <4 x float>, ptr %i.gp, align 8, !alias.scope !48369
  %i.na = shufflevector <4 x float> %i.mz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.nb = fmul <2 x float> %i.na, %i.jb
  %i.nc = fadd <2 x float> %i.my, %i.nb
  %i.nd = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48369
  %i.ne = fadd <2 x float> %i.nd, %i.nc
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit.i: ; preds = %bb.cq, %bb.cp
  %i.nf = phi <2 x float> [ %i.jb, %bb.cp ], [ %i.ne, %bb.cq ] ; 4 uses
  %i.ng = load <2 x float>, ptr %7, align 8, !alias.scope !48369
  %i.nh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.ng, <2 x float> %i.nf)
  store <2 x float> %i.nh, ptr %7, align 8, !alias.scope !48369
  %i.ni = extractelement <2 x float> %i.nf, i64 0
  %i.nj = extractelement <2 x float> %i.nf, i64 1
  %i.nk = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48369
  %i.nl = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.nk, <2 x float> %i.nf)
  store <2 x float> %i.nl, ptr %i.gu, align 8, !alias.scope !48369
  %i.nm = load ptr, ptr %i.gv, align 8, !alias.scope !48369, !nonnull !41, !noundef !41
  %i.nn = load ptr, ptr %i.gw, align 8, !alias.scope !48369, !nonnull !41, !align !46, !noundef !41
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = load ptr, ptr %i.no, align 8, !invariant.load !41, !noalias !48368, !nonnull !41
  call void %i.np(ptr noundef nonnull %i.nm, float noundef %i.ni, float noundef %i.nj) #59, !noalias !48368, !inline_history !48335
  br label %bb.cj

bb.cr:                                            ; preds = %bb.co
  %i.nq = load <2 x float>, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !48361 ; 2 uses
  %i.nr = fsub <2 x float> %i.jb, %i.nq
  %i.ns = fmul <2 x float> %i.nr, splat (float 5.000000e-01)
  %i.nt = fadd <2 x float> %i.nq, %i.ns           ; 4 uses
  store i32 1, ptr %i.gm, align 8, !alias.scope !48361
  store <2 x float> %i.nt, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !48361
  store i32 1, ptr %i.gn, align 8, !alias.scope !48361
  store <2 x float> %i.jb, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !48361
  call void @llvm.experimental.noalias.scope.decl(metadata !48370)
  %i.nu = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48371, !noundef !41
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.nw = load <2 x float>, ptr %i.gp, align 8, !alias.scope !48371
  %i.nx = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x float> %i.nx, %i.nw
  %i.nz = load <2 x float>, ptr %i.gq, align 8, !alias.scope !48371
  %i.oa = shufflevector <2 x float> %i.nt, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ob = fmul <2 x float> %i.oa, %i.nz
  %i.oc = fadd <2 x float> %i.ny, %i.ob
  %i.od = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48371
  %i.oe = fadd <2 x float> %i.od, %i.oc
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7move_to.exit33.i: ; preds = %bb.cs, %bb.cr
  %i.of = phi <2 x float> [ %i.nt, %bb.cr ], [ %i.oe, %bb.cs ] ; 4 uses
  %i.og = load <2 x float>, ptr %7, align 8, !alias.scope !48371
  %i.oh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.og, <2 x float> %i.of)
  store <2 x float> %i.oh, ptr %7, align 8, !alias.scope !48371
  %i.oi = extractelement <2 x float> %i.of, i64 0
  %i.oj = extractelement <2 x float> %i.of, i64 1
  %i.ok = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48371
  %i.ol = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ok, <2 x float> %i.of)
  store <2 x float> %i.ol, ptr %i.gu, align 8, !alias.scope !48371
  %i.om = load ptr, ptr %i.gv, align 8, !alias.scope !48371, !nonnull !41, !noundef !41
  %i.on = load ptr, ptr %i.gw, align 8, !alias.scope !48371, !nonnull !41, !align !46, !noundef !41
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8, !invariant.load !41, !noalias !48370, !nonnull !41
  call void %i.op(ptr noundef nonnull %i.om, float noundef %i.oi, float noundef %i.oj) #59, !noalias !48370, !inline_history !48335
  br label %bb.cj

bb.ct:                                            ; preds = %bb.co
  store i32 1, ptr %i.gx, align 4, !alias.scope !48361
  store <2 x float> %i.jb, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !48361
  br label %bb.cj

bb.cu:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !48372)
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.gx, align 4, !alias.scope !48373 ; 2 uses
  %.sroa.09.0.copyload.i.i = load i32, ptr %i.gn, align 8, !alias.scope !48373 ; 2 uses
  %i.oq = trunc i32 %.sroa.0.0.copyload.i.i to i1
  %i.or = trunc i32 %.sroa.09.0.copyload.i.i to i1
  %or.cond.i.i81 = select i1 %i.oq, i1 %i.or, i1 false
  br i1 %or.cond.i.i81, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i, %bb.cu
  %.sroa.022.0.copyload.i.i = phi i32 [ 0, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i ], [ %.sroa.09.0.copyload.i.i, %bb.cu ]
  %.sroa.013.0.copyload.i.i82 = load i32, ptr %i.gm, align 8, !alias.scope !48373 ; 2 uses
  %i.os = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !48373 ; 9 uses
  %i.ot = trunc i32 %.sroa.013.0.copyload.i.i82 to i1 ; 2 uses
  %i.ou = and i32 %.sroa.0.0.copyload.i.i, 1
  %i.ov = and i32 %i.ou, %.sroa.013.0.copyload.i.i82
  %or.cond5.not.i.i = icmp eq i32 %i.ov, 0
  br i1 %or.cond5.not.i.i, label %bb.cy, label %bb.cz

bb.cw:                                            ; preds = %bb.cu
  store i32 0, ptr %i.gn, align 8, !alias.scope !48373
  %i.ow = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !48373 ; 5 uses
  %i.ox = load <2 x float>, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !48373
  %i.oy = fsub <2 x float> %i.ox, %i.ow
  %i.oz = fmul <2 x float> %i.oy, splat (float 5.000000e-01)
  %i.pa = fadd <2 x float> %i.ow, %i.oz           ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48374)
  %i.pb = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48375, !noundef !41
  %i.pc = trunc nuw i8 %i.pb to i1
  br i1 %i.pc, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.pd = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48375
  %i.pe = load <2 x float>, ptr %i.gp, align 8, !alias.scope !48375 ; 2 uses
  %i.pf = load <2 x float>, ptr %i.gq, align 8, !alias.scope !48375 ; 2 uses
  %i.pg = fmul <2 x float> %i.ow, %i.pd
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pi = shufflevector <2 x float> %i.pe, <2 x float> %i.pf, <2 x i32> <i32 0, i32 3>
  %i.pj = fmul <2 x float> %i.ow, %i.pi
  %i.pk = fadd <2 x float> %i.ph, %i.pj
  %i.pl = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48375 ; 2 uses
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
  %i.px = load <2 x float>, ptr %7, align 8, !alias.scope !48375
  %i.py = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.px, <2 x float> %i.pt)
  %i.pz = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.py, <2 x float> %i.pu)
  store <2 x float> %i.pz, ptr %7, align 8, !alias.scope !48375
  %i.qa = extractelement <2 x float> %i.pu, i64 0
  %i.qb = extractelement <2 x float> %i.pu, i64 1
  %i.qc = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48375
  %i.qd = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.qc, <2 x float> %i.pt)
  %i.qe = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.qd, <2 x float> %i.pu)
  store <2 x float> %i.qe, ptr %i.gu, align 8, !alias.scope !48375
  %i.qf = load ptr, ptr %i.gv, align 8, !alias.scope !48375, !nonnull !41, !noundef !41
  %i.qg = load ptr, ptr %i.gw, align 8, !alias.scope !48375, !nonnull !41, !align !46, !noundef !41
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 40
  %i.qi = load ptr, ptr %i.qh, align 8, !invariant.load !41, !noalias !48376, !nonnull !41
  call void %i.qi(ptr noundef nonnull %i.qf, float noundef %i.pv, float noundef %i.pw, float noundef %i.qa, float noundef %i.qb) #59, !noalias !48376, !inline_history !48342
  br label %bb.cv

bb.cy:                                            ; preds = %bb.cv
  %i.qj = trunc i32 %.sroa.022.0.copyload.i.i to i1
  %or.cond8.i.i = select i1 %i.ot, i1 %i.qj, i1 false
  br i1 %or.cond8.i.i, label %bb.dc, label %bb.db

bb.cz:                                            ; preds = %bb.cv
  %i.qk = load <2 x float>, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !48373 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48377)
  %i.ql = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48378, !noundef !41
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %9 = load <2 x float>, ptr %i.gp, align 8
  %i.qn = load float, ptr %i.gt, align 4, !alias.scope !48378, !noundef !41
  %i.qo = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48378 ; 2 uses
  %i.qp = fmul <2 x float> %i.qk, %i.qo
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qr = insertelement <2 x float> %9, float %i.qn, i64 1 ; 2 uses
  %i.qs = fmul <2 x float> %i.qk, %i.qr
  %i.qt = fadd <2 x float> %i.qq, %i.qs
  %i.qu = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48378 ; 2 uses
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
  %i.rf = load <2 x float>, ptr %7, align 8, !alias.scope !48378
  %i.rg = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.rf, <2 x float> %i.rb)
  %i.rh = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.rg, <2 x float> %i.rc)
  store <2 x float> %i.rh, ptr %7, align 8, !alias.scope !48378
  %i.ri = extractelement <2 x float> %i.rc, i64 0
  %i.rj = extractelement <2 x float> %i.rc, i64 1
  %i.rk = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48378
  %i.rl = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.rk, <2 x float> %i.rb)
  %i.rm = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.rl, <2 x float> %i.rc)
  store <2 x float> %i.rm, ptr %i.gu, align 8, !alias.scope !48378
  %i.rn = load ptr, ptr %i.gv, align 8, !alias.scope !48378, !nonnull !41, !noundef !41 ; 2 uses
  %i.ro = load ptr, ptr %i.gw, align 8, !alias.scope !48378, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.rq = load ptr, ptr %i.rp, align 8, !invariant.load !41, !noalias !48379, !nonnull !41
  call void %i.rq(ptr noundef nonnull %i.rn, float noundef %i.rd, float noundef %i.re, float noundef %i.ri, float noundef %i.rj) #59, !noalias !48379, !inline_history !48342
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

bb.db:                                            ; preds = %bb.cy
  br i1 %i.ot, label %bb.de, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.db
  %.pre.i.i84 = load ptr, ptr %i.gv, align 8, !alias.scope !48373
  %.pre47.i.i = load ptr, ptr %i.gw, align 8, !alias.scope !48373
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

bb.dc:                                            ; preds = %bb.cy
  %i.rr = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 4, !alias.scope !48373 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48380)
  %i.rs = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48381, !noundef !41
  %i.rt = trunc nuw i8 %i.rs to i1
  br i1 %i.rt, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %10 = load <2 x float>, ptr %i.gp, align 8
  %i.ru = load float, ptr %i.gt, align 4, !alias.scope !48381, !noundef !41
  %i.rv = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48381 ; 2 uses
  %i.rw = fmul <2 x float> %i.rr, %i.rv
  %i.rx = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ry = insertelement <2 x float> %10, float %i.ru, i64 1 ; 2 uses
  %i.rz = fmul <2 x float> %i.rr, %i.ry
  %i.sa = fadd <2 x float> %i.rx, %i.rz
  %i.sb = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48381 ; 2 uses
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
  %i.sm = load <2 x float>, ptr %7, align 8, !alias.scope !48381
  %i.sn = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.sm, <2 x float> %i.si)
  %i.so = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.sn, <2 x float> %i.sj)
  store <2 x float> %i.so, ptr %7, align 8, !alias.scope !48381
  %i.sp = extractelement <2 x float> %i.sj, i64 0
  %i.sq = extractelement <2 x float> %i.sj, i64 1
  %i.sr = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48381
  %i.ss = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.sr, <2 x float> %i.si)
  %i.st = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.ss, <2 x float> %i.sj)
  store <2 x float> %i.st, ptr %i.gu, align 8, !alias.scope !48381
  %i.su = load ptr, ptr %i.gv, align 8, !alias.scope !48381, !nonnull !41, !noundef !41 ; 2 uses
  %i.sv = load ptr, ptr %i.gw, align 8, !alias.scope !48381, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  %i.sx = load ptr, ptr %i.sw, align 8, !invariant.load !41, !noalias !48382, !nonnull !41
  call void %i.sx(ptr noundef nonnull %i.su, float noundef %i.sk, float noundef %i.sl, float noundef %i.sp, float noundef %i.sq) #59, !noalias !48382, !inline_history !48342
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

bb.de:                                            ; preds = %bb.db
  call void @llvm.experimental.noalias.scope.decl(metadata !48383)
  %i.sy = load i8, ptr %i.go, align 4, !range !54, !alias.scope !48384, !noundef !41
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ta = load <2 x float>, ptr %i.gs, align 4, !alias.scope !48384
  %i.tb = fmul <2 x float> %i.os, %i.ta
  %i.tc = shufflevector <2 x float> %i.tb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.td = load <4 x float>, ptr %i.gp, align 8, !alias.scope !48384
  %i.te = shufflevector <4 x float> %i.td, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.tf = fmul <2 x float> %i.os, %i.te
  %i.tg = fadd <2 x float> %i.tc, %i.tf
  %i.th = load <2 x float>, ptr %i.gr, align 8, !alias.scope !48384
  %i.ti = fadd <2 x float> %i.th, %i.tg
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i: ; preds = %bb.df, %bb.de
  %i.tj = phi <2 x float> [ %i.os, %bb.de ], [ %i.ti, %bb.df ] ; 4 uses
  %i.tk = load <2 x float>, ptr %7, align 8, !alias.scope !48384
  %i.tl = call nsz <2 x float> @llvm.minimumnum.v2f32(<2 x float> %i.tk, <2 x float> %i.tj)
  store <2 x float> %i.tl, ptr %7, align 8, !alias.scope !48384
  %i.tm = extractelement <2 x float> %i.tj, i64 0
  %i.tn = extractelement <2 x float> %i.tj, i64 1
  %i.to = load <2 x float>, ptr %i.gu, align 8, !alias.scope !48384
  %i.tp = call nsz <2 x float> @llvm.maximumnum.v2f32(<2 x float> %i.to, <2 x float> %i.tj)
  store <2 x float> %i.tp, ptr %i.gu, align 8, !alias.scope !48384
  %i.tq = load ptr, ptr %i.gv, align 8, !alias.scope !48384, !nonnull !41, !noundef !41 ; 2 uses
  %i.tr = load ptr, ptr %i.gw, align 8, !alias.scope !48384, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tt = load ptr, ptr %i.ts, align 8, !invariant.load !41, !noalias !48385, !nonnull !41
  call void %i.tt(ptr noundef nonnull %i.tq, float noundef %i.tm, float noundef %i.tn) #59, !noalias !48385, !inline_history !48349
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder14finish_contour.exit.i: ; preds = %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i, %._crit_edge.i.i, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i
  %i.tu = phi ptr [ %.pre47.i.i, %._crit_edge.i.i ], [ %i.tr, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i ], [ %i.sv, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i ], [ %i.ro, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i ]
  %i.tv = phi ptr [ %.pre.i.i84, %._crit_edge.i.i ], [ %i.tq, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7line_to.exit.i.i ], [ %i.su, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit42.i.i ], [ %i.rn, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder7quad_to.exit37.i.i ]
  store i32 0, ptr %i.gm, align 8, !alias.scope !48373
  store i32 0, ptr %i.gx, align 4, !alias.scope !48373
  store i32 0, ptr %i.gn, align 8, !alias.scope !48373
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 56
  %i.tx = load ptr, ptr %i.tw, align 8, !invariant.load !41, !noalias !48372, !nonnull !41
  call void %i.tx(ptr noundef nonnull %i.tv) #59, !noalias !48372, !inline_history !48350
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

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph6decide(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 9 uses
  %i.b = alloca [120 x i8], align 8               ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 3 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [2 x i8], align 1                 ; 5 uses
  %i.i = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i64, ptr %i.j, align 16, !noundef !41
  %.not = icmp eq i64 %i.k, 0
  %.sink18.sroa.gep = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink18.sroa.gep19 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !41, !noundef !41
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %i.p = load i16, ptr %i.o, align 4, !noundef !41 ; 3 uses
  store i16 %i.p, ptr %i.i, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBT_EINtNtB2C_3map3MapIB3q_TNtNtBY_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBU_B1M_EENCNvMs_NtB4A_8layouterNtB5L_12GridLayouter20render_fills_strokessi_0EEE11spec_extendB4C_:bb.a

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.5.1.i.i.i.i = phi i64 [ %i.ad, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %.sroa.5.0.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i ] ; 3 uses
  br i1 %.not7.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i, %bb.g
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.ad, %bb.g ], [ %i.an, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i unwind label %bb.l, !noalias !51163

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1Q_5frame9FrameItemEEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %bb.i
  store ptr null, ptr %1, align 8, !alias.scope !51164, !noalias !51163
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51166)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !51167, !noalias !51168, !nonnull !41, !noundef !41 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !51167, !noalias !51168 ; 2 uses
  %.not8.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i, %i.ap
  br i1 %.not8.i.i.i.i.i.i.i, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.j
  %.sroa.5.32..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i.i.i.i.i, i64 8
  br label %bb.k

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.k
  store ptr %i.at, ptr %i.aq, align 8, !alias.scope !51167, !noalias !51168
  br label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.ar = phi i64 [ %.sroa.5.1.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aw, %bb.k ] ; 2 uses
  %i.as = phi ptr [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.at, %bb.k ] ; 3 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.5.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, i64 184, i1 false), !noalias !51169
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 208 ; 3 uses
  %i.au = getelementptr inbounds nuw [192 x i8], ptr %i.af, i64 %i.ar ; 2 uses
  %i.av = load <2 x double>, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !51169
  store <2 x double> %i.av, ptr %i.au, align 16, !noalias !51170
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.5.32..sroa_idx.i.i.i.i.i.i.i, i64 176, i1 false), !noalias !51171
  %i.aw = add i64 %i.ar, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %bb.k

bb.l:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %1, align 8, !alias.scope !51164, !noalias !51163
  store i64 %.sroa.5.0.i.i.i.i, ptr %i.y, align 8, !alias.scope !51150, !noalias !51172
  resume { ptr, i32 } %i.ax

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBL_5frame9FrameItemEE14extend_trustedQINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtB6_9into_iter8IntoIterBG_EINtNtB2k_3map3MapIB38_TNtNtBL_3abs3AbsNtNtNtCs7tN9tvpkfrg_12typst_layout4grid5lines14StrokePriorityBH_B1z_EENCNvMs_NtB4i_8layouterNtB5t_12GridLayouter20render_fills_strokessi_0EEEB4k_.exit: ; preds = %.thread.i, %bb.h, %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %i.ay = phi ptr [ %i.j, %.thread.i ], [ %i.y, %bb.h ], [ %i.y, %._crit_edge.i.i.i.i.i.i.i ], [ %i.y, %bb.j ]
  %.val2.i.i.sink.i.i.i.i.i = phi i64 [ %i.k, %.thread.i ], [ %.sroa.5.1.i.i.i.i, %bb.h ], [ %i.aw, %._crit_edge.i.i.i.i.i.i.i ], [ %.sroa.5.1.i.i.i.i, %bb.j ]
  store i64 %.val2.i.i.sink.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !51150, !noalias !51172
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder5close(ptr noalias nofree noundef align 8 dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  tail call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath10close_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder7line_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = insertelement <2 x float> poison, float %2, i64 0
  %i.d = insertelement <2 x float> %i.c, float %1, i64 1
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %i.f, align 8, !alias.scope !51175, !noundef !41
  %i.h = load <2 x double>, ptr %i.b, align 8, !alias.scope !51175 ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> %i.e, %i.i             ; 2 uses
  %i.k = fcmp ord <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> zeroinitializer
  %i.m = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x double> %i.m, %i.l             ; 3 uses
  %i.o = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.n)
  %i.p = fcmp one <2 x double> %i.o, splat (double +inf)
  %i.q = fneg <2 x double> %i.n
  %i.r = shufflevector <2 x double> %i.q, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.s = select <2 x i1> %i.p, <2 x double> %i.r, <2 x double> <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = fadd double %i.g, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = extractelement <2 x double> %i.s, i64 0
  store double %i.x, ptr %i.w, align 8
  store i64 1, ptr %i.a, align 8
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder7move_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = insertelement <2 x float> poison, float %2, i64 0
  %i.d = insertelement <2 x float> %i.c, float %1, i64 1
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load double, ptr %i.f, align 8, !alias.scope !51178, !noundef !41
  %i.h = load <2 x double>, ptr %i.b, align 8, !alias.scope !51178 ; 2 uses
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> %i.e, %i.i             ; 2 uses
  %i.k = fcmp ord <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> zeroinitializer
  %i.m = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.n = fmul <2 x double> %i.m, %i.l             ; 3 uses
  %i.o = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.n)
  %i.p = fcmp one <2 x double> %i.o, splat (double +inf)
  %i.q = fneg <2 x double> %i.n
  %i.r = shufflevector <2 x double> %i.q, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.s = select <2 x i1> %i.p, <2 x double> %i.r, <2 x double> <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = fadd double %i.g, %i.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.u, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.x = extractelement <2 x double> %i.s, i64 0
  store double %i.x, ptr %i.w, align 8
  store i64 0, ptr %i.a, align 8
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder7quad_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = insertelement <4 x float> poison, float %4, i64 0
  %i.d = insertelement <4 x float> %i.c, float %3, i64 1
  %i.e = insertelement <4 x float> %i.d, float %2, i64 2
  %i.f = insertelement <4 x float> %i.e, float %1, i64 3
  %i.g = fpext <4 x float> %i.f to <4 x double>
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load double, ptr %i.h, align 8, !alias.scope !51183, !noundef !41
  %i.j = load <2 x double>, ptr %i.b, align 8, !alias.scope !51183 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <4 x i32> zeroinitializer
  %i.l = fdiv <4 x double> %i.g, %i.k             ; 2 uses
  %i.m = fcmp ord <4 x double> %i.l, zeroinitializer
  %i.n = select <4 x i1> %i.m, <4 x double> %i.l, <4 x double> zeroinitializer
  %i.o = shufflevector <2 x double> %i.j, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.p = fmul <4 x double> %i.o, %i.n             ; 4 uses
  %i.q = tail call <4 x double> @llvm.fabs.v4f64(<4 x double> %i.p)
  %i.r = fcmp one <4 x double> %i.q, splat (double +inf) ; 3 uses
  %i.s = extractelement <4 x double> %i.p, i64 2
  %.neg.i = fneg double %i.s
  %i.t = extractelement <4 x i1> %i.r, i64 2
  %i.u = select i1 %i.t, double %.neg.i, double -0.000000e+00
  %i.v = shufflevector <4 x i1> %i.r, <4 x i1> poison, <2 x i32> <i32 3, i32 1>
  %i.w = shufflevector <4 x double> %i.p, <4 x double> poison, <2 x i32> <i32 3, i32 1>
  %i.x = select <2 x i1> %i.v, <2 x double> %i.w, <2 x double> zeroinitializer
  %i.y = insertelement <2 x double> poison, double %i.i, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = fadd <2 x double> %i.z, %i.x            ; 2 uses
  %i.ab = extractelement <4 x double> %i.p, i64 0
  %.neg.i6 = fneg double %i.ab
  %i.ac = extractelement <4 x i1> %i.r, i64 0
  %i.ad = select i1 %i.ac, double %.neg.i6, double -0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51184
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = extractelement <2 x double> %i.aa, i64 0
  store double %i.af, ptr %i.ae, align 8, !noalias !51184
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.u, ptr %i.ag, align 8, !noalias !51184
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = extractelement <2 x double> %i.aa, i64 1
  store double %i.ai, ptr %i.ah, align 8, !noalias !51184
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.ad, ptr %i.aj, align 8, !noalias !51184
  store i64 2, ptr %i.a, align 8, !noalias !51184
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51184
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline4decoNtB4_14BezPathBuilderNtCsdQl7XGSB5tC_10ttf_parser14OutlineBuilder8curve_to(ptr noalias nofree noundef align 8 dereferenceable(48) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %7 = load <1 x double>, ptr %i.b, align 8
  %i.c = insertelement <2 x float> poison, float %1, i64 0
  %i.d = insertelement <2 x float> %i.c, float %2, i64 1
  %i.e = fpext <2 x float> %i.d to <2 x double>
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %8 = load <1 x double>, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load double, ptr %i.g, align 8, !alias.scope !51189, !noundef !41 ; 3 uses
  %i.i = shufflevector <1 x double> %7, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.j = fdiv <2 x double> %i.e, %i.i             ; 2 uses
  %i.k = fcmp ord <2 x double> %i.j, zeroinitializer
  %i.l = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> zeroinitializer
  %i.m = shufflevector <1 x double> %8, <1 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.n = fmul <2 x double> %i.m, %i.l             ; 3 uses
  %i.o = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.n) ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = fcmp one double %i.p, +inf
  %i.r = extractelement <2 x double> %i.n, i64 0
  %spec.store.select4.i = select i1 %i.q, double %i.r, double 0.000000e+00
  %i.s = fadd double %i.h, %spec.store.select4.i
  %i.t = extractelement <2 x double> %i.o, i64 1
  %i.u = fcmp one double %i.t, +inf
  %i.v = extractelement <2 x double> %i.n, i64 1
  %.neg.i = fneg double %i.v
  %i.w = select i1 %i.u, double %.neg.i, double -0.000000e+00
  %i.x = insertelement <2 x float> poison, float %3, i64 0
  %i.y = insertelement <2 x float> %i.x, float %4, i64 1
  %i.z = fpext <2 x float> %i.y to <2 x double>
  %i.aa = fdiv <2 x double> %i.z, %i.i            ; 2 uses
  %i.ab = fcmp ord <2 x double> %i.aa, zeroinitializer
  %i.ac = select <2 x i1> %i.ab, <2 x double> %i.aa, <2 x double> zeroinitializer
  %i.ad = fmul <2 x double> %i.m, %i.ac           ; 3 uses
  %i.ae = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ad) ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 0
  %i.ag = fcmp one double %i.af, +inf
  %i.ah = extractelement <2 x double> %i.ad, i64 0
  %spec.store.select4.i3 = select i1 %i.ag, double %i.ah, double 0.000000e+00
  %i.ai = fadd double %i.h, %spec.store.select4.i3
  %i.aj = extractelement <2 x double> %i.ae, i64 1
  %i.ak = fcmp one double %i.aj, +inf
  %i.al = extractelement <2 x double> %i.ad, i64 1
  %.neg.i6 = fneg double %i.al
  %i.am = select i1 %i.ak, double %.neg.i6, double -0.000000e+00
  %i.an = insertelement <2 x float> poison, float %5, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %6, i64 1
  %i.ap = fpext <2 x float> %i.ao to <2 x double>
  %i.aq = fdiv <2 x double> %i.ap, %i.i           ; 2 uses
  %i.ar = fcmp ord <2 x double> %i.aq, zeroinitializer
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.aq, <2 x double> zeroinitializer
  %i.at = fmul <2 x double> %i.m, %i.as           ; 3 uses
  %i.au = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.at) ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  %i.aw = fcmp one double %i.av, +inf
  %i.ax = extractelement <2 x double> %i.at, i64 0
  %spec.store.select4.i9 = select i1 %i.aw, double %i.ax, double 0.000000e+00
  %i.ay = fadd double %i.h, %spec.store.select4.i9
  %i.az = extractelement <2 x double> %i.au, i64 1
  %i.ba = fcmp one double %i.az, +inf
  %i.bb = extractelement <2 x double> %i.at, i64 1
  %.neg.i12 = fneg double %i.bb
  %i.bc = select i1 %i.ba, double %.neg.i12, double -0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !51190
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %i.s, ptr %i.bd, align 8, !noalias !51190
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.w, ptr %i.be, align 8, !noalias !51190
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.ai, ptr %i.bf, align 8, !noalias !51190
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %i.am, ptr %i.bg, align 8, !noalias !51190
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %i.ay, ptr %i.bh, align 8, !noalias !51190
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.bc, ptr %i.bi, align 8, !noalias !51190
  store i64 3, ptr %i.a, align 8, !noalias !51190
  call void @_RNvMNtCsdqxqgV7ixUt_5kurbo7bezpathNtB2_7BezPath4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !51190
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB4_6GlyphsNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0 = load i64, ptr %.sroa.5.0.in, align 8, !noundef !41 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !alias.scope !139, !noundef !41 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load i64, ptr %i.b, align 8, !alias.scope !140, !noundef !41 ; 4 uses
  %i.c = icmp ult i64 %.val7, %.val
  %.not6 = icmp ugt i64 %.val7, %.sroa.5.0
  %or.cond = or i1 %i.c, %.not6
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !118

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = load ptr, ptr %.sroa.0.0.in, align 8, !nonnull !41, !noundef !41
  %i.d = sub nuw i64 %.val7, %.val
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.val
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.d, 1
  ret { ptr, i64 } %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.val, i64 noundef %.val7, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @857) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree readonly align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @858, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc { ptr, double } @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB4_3ZipINtNtB6_5chain5ChainINtNtNtBa_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtBa_6option8IntoIterQB1I_EEIBW_IBW_INtNtB6_3map3MapINtB1i_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB3K_8rowspansNtB3I_12GridLayouter14layout_rowspans_0EIB2C_NtNtB1M_3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB5T_EEENtNtNtB8_6traits8iterator8Iterator3nthB3M_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51231)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.promoted.i.i = load ptr, ptr %i.b, align 8, !alias.scope !51232 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !51233, !nonnull !41 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !49, !alias.scope !51233
  %.fr44.i.i = freeze i64 %i.e
  %i.f = trunc i64 %.fr44.i.i to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !51233, !nonnull !41 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load double, ptr %i.l, align 8, !alias.scope !51233 ; 4 uses
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !51233
  %.val.i.i.fr.i.i = freeze i64 %.val.i.i.i.i
  %i.n = trunc i64 %.val.i.i.fr.i.i to i1         ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i = load double, ptr %i.o, align 8, !alias.scope !51233 ; 4 uses
  %.promoted13.i.i = load i64, ptr %i.h, align 8, !alias.scope !51233 ; 4 uses
  %.promoted14.i.i = load ptr, ptr %i.i, align 8, !alias.scope !51233 ; 4 uses
  br i1 %i.f, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a
  %.promoted12.i.i = load ptr, ptr %i.a, align 8, !alias.scope !51233 ; 2 uses
  br i1 %i.n, label %.split.us.split.us.i.i, label %.split.us.split.i.i

.split.us.split.us.i.i:                           ; preds = %.split.us.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i
  %i.p = phi ptr [ %i.y, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i ], [ %.promoted14.i.i, %.split.us.i.i ] ; 5 uses
  %i.q = phi i64 [ %i.z, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i ], [ %.promoted13.i.i, %.split.us.i.i ] ; 4 uses
  %i.r = phi ptr [ %i.u, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i ], [ %.promoted12.i.i, %.split.us.i.i ] ; 3 uses
  %spec.select.i.i.i11.us.us.i.i = phi ptr [ %spec.select.i.i.i9.us.us.i.i, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i ], [ %.promoted.i.i, %.split.us.i.i ] ; 4 uses
  %.sroa.0.0.us.us.i.i = phi i64 [ %i.ab, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i ], [ %1, %.split.us.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51234)
  %.not.i.i.i.us.us.i.i = icmp eq ptr %spec.select.i.i.i11.us.us.i.i, null
  br i1 %.not.i.i.i.us.us.i.i, label %select.unfold.i.i.us.us.i.i, label %.sink.split.i.i.i.us.us.i.i

.sink.split.i.i.i.us.us.i.i:                      ; preds = %.split.us.split.us.i.i
  %i.s = icmp eq ptr %spec.select.i.i.i11.us.us.i.i, %i.d ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i11.us.us.i.i, i64 48 ; 2 uses
  %spec.select.i.i.i.us.us.i.i = select i1 %i.s, ptr null, ptr %i.t
  store ptr %spec.select.i.i.i.us.us.i.i, ptr %i.b, align 8, !alias.scope !51232
  br i1 %i.s, label %select.unfold.i.i.us.us.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtBa_6option8IntoIterQB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread11.i.us.us.i.i

select.unfold.i.i.us.us.i.i:                      ; preds = %.sink.split.i.i.i.us.us.i.i, %.split.us.split.us.i.i
  store ptr null, ptr %i.a, align 8, !alias.scope !51235, !noalias !51236
  %.not.i.us.us.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.us.us.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_5chain5ChainINtNtNtBb_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtBb_6option8IntoIterQB1J_EEIBX_IBX_INtNtB7_3map3MapINtB1j_4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB3L_8rowspansNtB3J_12GridLayouter14layout_rowspans_0EIB2D_NtNtB1N_3abs3AbsEEINtNtNtB9_7sources6repeat6RepeatB5U_EEEINtB5_7ZipImplBW_B37_E3nthB3N_.exit, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtBa_6option8IntoIterQB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread11.i.us.us.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtBa_6option8IntoIterQB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread11.i.us.us.i.i: ; preds = %select.unfold.i.i.us.us.i.i, %.sink.split.i.i.i.us.us.i.i
  %i.u = phi ptr [ null, %select.unfold.i.i.us.us.i.i ], [ %i.r, %.sink.split.i.i.i.us.us.i.i ]
  %spec.select.i.i.i9.us.us.i.i = phi ptr [ null, %select.unfold.i.i.us.us.i.i ], [ %i.t, %.sink.split.i.i.i.us.us.i.i ]
  %.sroa.0.0.i2.i14.i.us.us.i.i = phi ptr [ %i.r, %select.unfold.i.i.us.us.i.i ], [ %spec.select.i.i.i11.us.us.i.i, %.sink.split.i.i.i.us.us.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51238)
  %.not.i.i8.i.us.us.i.i = icmp eq i64 %i.q, -1
  br i1 %.not.i.i8.i.us.us.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter7IterMutNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEINtNtBa_6option8IntoIterQB1s_EENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread11.i.us.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51241)
  %.not.i.i.i.i.i.i.us.us.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.us.us.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51243)
  %i.v = icmp eq ptr %i.p, %i.k
  br i1 %i.v, label %bb.d, label %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1H_8rowspansNtB1F_12GridLayouter14layout_rowspans_0EINtNtBe_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1J_.exit.thread.i.i.i.us.us.i.i

_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1H_8rowspansNtB1F_12GridLayouter14layout_rowspans_0EINtNtBe_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1J_.exit.thread.i.i.i.us.us.i.i: ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.i, align 8, !alias.scope !51244
  %i.x = getelementptr i8, ptr %i.p, i64 16
  %.val.i.i.i.i.i.i.i.i.us.us.i.i = load double, ptr %i.x, align 8, !noalias !51245, !noundef !41
  br label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_3map3MapINtNtNtBa_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1N_8rowspansNtB1L_12GridLayouter14layout_rowspans_0EINtNtBa_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEINtNtNtB8_7sources6repeat6RepeatB4f_EENtNtNtB8_6traits8iterator8Iterator4nextB1P_.exit.i.us.us.i.i

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.i, align 8, !alias.scope !51246
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.not.i.i.i.i.i.i.i.us.us.i.i = icmp eq i64 %i.q, 2
  br i1 %.not.i.i.i.i.i.i.i.us.us.i.i, label %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1H_8rowspansNtB1F_12GridLayouter14layout_rowspans_0EINtNtBe_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1J_.exit.thread10.i.i.i.us.us.i.i, label %_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1H_8rowspansNtB1F_12GridLayouter14layout_rowspans_0EINtNtBe_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1J_.exit.i.i.i.us.us.i.i

_RNvYNvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters5chain5ChainINtNtBa_3map3MapINtNtNtBe_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter21FinishedHeaderRowInfoENCNvMNtB1H_8rowspansNtB1F_12GridLayouter14layout_rowspans_0EINtNtBe_6option8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB1J_.exit.i.i.i.us.us.i.i: ; preds = %bb.e
  store i64 0, ptr %i.h, align 8, !alias.scope !51247
end_hunk_1
