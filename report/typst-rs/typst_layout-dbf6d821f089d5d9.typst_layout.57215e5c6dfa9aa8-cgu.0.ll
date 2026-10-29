Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9838
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl:bb.a
  %i.bg = fmul nnan float %i.bf, f0x38800000      ; 2 uses
  br label %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

bb.z:                                             ; preds = %bb.w
  %i.bh = add nuw nsw i64 %.sroa.7102.1, 4        ; 2 uses
  %.not.i191.i = icmp ugt i64 %i.bh, %i.j
  br i1 %.not.i191.i, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.7102.1
  %i.bj = load <2 x i16>, ptr %i.bi, align 1, !noalias !46207
  %i.bk = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.bj)
  %i.bl = sitofp <2 x i16> %i.bk to <2 x float>
  %i.bm = fmul nnan <2 x float> %i.bl, splat (float f0x38800000) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = extractelement <2 x float> %i.bm, i64 1
  br label %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.ae, %bb.aa, %bb.y, %bb.v
  %.sroa.7102.2 = phi i64 [ %.sroa.7102.1, %bb.v ], [ %i.bc, %bb.y ], [ %i.bh, %bb.aa ], [ %i.cb, %bb.ae ]
  %.sroa.10.0.i = phi float [ 1.000000e+00, %bb.v ], [ %i.bg, %bb.y ], [ %i.bo, %bb.aa ], [ %i.ci, %bb.ae ]
  %.sroa.8.0.i = phi float [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.aa ], [ %i.ch, %bb.ae ]
  %.sroa.6.0.i = phi float [ 0.000000e+00, %bb.v ], [ 0.000000e+00, %bb.y ], [ 0.000000e+00, %bb.aa ], [ %i.bz, %bb.ae ]
  %.sroa.07.0.i = phi float [ 1.000000e+00, %bb.v ], [ %i.bg, %bb.y ], [ %i.bn, %bb.aa ], [ %i.bu, %bb.ae ]
  %i.bp = and i16 %i.af, 32
  %.not137.i = icmp eq i16 %i.bp, 0
  %spec.select = select i1 %.not137.i, i64 %i.j, i64 %.sroa.7102.2 ; 2 uses
  %i.bq = icmp eq i16 %.sroa.066.0.copyload.i, -1
  br i1 %i.bq, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.af

bb.ab:                                            ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.7102.1
  %.sroa.089.0.copyload.i = load i16, ptr %i.br, align 1, !noalias !46207
  %i.bs = call i16 @llvm.bswap.i16(i16 %.sroa.089.0.copyload.i)
  %i.bt = sitofp i16 %i.bs to float
  %i.bu = fmul nnan float %i.bt, f0x38800000
  %i.bv = add nuw nsw i64 %.sroa.7102.1, 4        ; 2 uses
  %.not.i195.i = icmp ugt i64 %i.bv, %i.j
  br i1 %.not.i195.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.az
  %.sroa.094.0.copyload.i = load i16, ptr %i.bw, align 1, !noalias !46207
  %i.bx = call i16 @llvm.bswap.i16(i16 %.sroa.094.0.copyload.i)
  %i.by = sitofp i16 %i.bx to float
  %i.bz = fmul nnan float %i.by, f0x38800000
  %i.ca = add nuw nsw i64 %.sroa.7102.1, 6
  %.not.i199.i = icmp ugt i64 %i.ca, %i.j
  br i1 %.not.i199.i, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cb = add nuw nsw i64 %.sroa.7102.1, 8        ; 2 uses
  %.not.i203.i = icmp ugt i64 %i.cb, %i.j
  br i1 %.not.i203.i, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.bv
  %i.cd = load <2 x i16>, ptr %i.cc, align 1, !noalias !46207
  %i.ce = call <2 x i16> @llvm.bswap.v2i16(<2 x i16> %i.cd)
  %i.cf = sitofp <2 x i16> %i.ce to <2 x float>
  %i.cg = fmul nnan <2 x float> %i.cf, splat (float f0x38800000) ; 2 uses
  %i.ch = extractelement <2 x float> %i.cg, i64 0
  %i.ci = extractelement <2 x float> %i.cg, i64 1
  br label %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit

bb.af:                                            ; preds = %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit
  %i.cj = add nuw i16 %i.aj, 1                    ; 5 uses
  %.not.i72 = icmp ult i16 %i.cj, %.sroa.0.0.i71
  br i1 %.not.i72, label %bb.ag, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.ag:                                            ; preds = %bb.af
  br i1 %i.o, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ck = icmp ult i16 %i.aj, %i.t
  br i1 %i.ck, label %bb.ai, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.ai:                                            ; preds = %bb.ah
  %i.cl = zext i16 %i.aj to i64
  %i.cm = shl nuw nsw i64 %i.cl, 2                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  %i.cn = add nuw nsw i64 %i.cm, 4
  %.not.i.i74 = icmp ugt i64 %i.cn, %i.n
  br i1 %.not.i.i74, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.ap

bb.aj:                                            ; preds = %bb.ag
  %i.co = icmp ult i16 %i.aj, %i.r
  br i1 %i.co, label %bb.ak, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.cp = zext i16 %i.aj to i64
  %i.cq = shl nuw nsw i64 %i.cp, 1                ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val26.i) ]
  %i.cr = add nuw nsw i64 %i.cq, 2
  %.not.i34.i = icmp ugt i64 %i.cr, %i.n
  br i1 %.not.i34.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cs = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.cq
  %.val.i35.i = load i16, ptr %i.cs, align 1, !noalias !46208
  %i.ct = call i16 @llvm.bswap.i16(i16 %.val.i35.i)
  %i.cu = icmp ult i16 %i.cj, %i.r
  br i1 %i.cu, label %bb.am, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.cv = zext i16 %i.cj to i64
  %i.cw = shl nuw nsw i64 %i.cv, 1                ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, 2
  %.not.i38.i = icmp ugt i64 %i.cx, %i.n
  br i1 %.not.i38.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cy = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.cw
  %.val.i39.i = load i16, ptr %i.cy, align 1, !noalias !46208
  %i.cz = call i16 @llvm.bswap.i16(i16 %.val.i39.i)
  %i.da = zext i16 %i.ct to i64
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = zext i16 %i.cz to i64
  %i.dd = shl nuw nsw i64 %i.dc, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %bb.an
  %.sroa.4.0.i = phi i64 [ %i.dn, %bb.ar ], [ %i.dd, %bb.an ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.dm, %bb.ar ], [ %i.db, %bb.an ] ; 3 uses
  %.not24.i = icmp samesign uge i64 %.sroa.01.0.i, %.sroa.4.0.i
  %.not65 = icmp samesign ugt i64 %.sroa.4.0.i, %3
  %or.cond233 = select i1 %.not24.i, i1 true, i1 %.not65
  br i1 %or.cond233, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.as

bb.ap:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.cm
  %.val.i.i = load i32, ptr %i.de, align 1, !noalias !46208
  %i.df = call i32 @llvm.bswap.i32(i32 %.val.i.i)
  %i.dg = icmp ult i16 %i.cj, %i.t
  br i1 %i.dg, label %bb.aq, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.dh = zext i16 %i.cj to i64
  %i.di = shl nuw nsw i64 %i.dh, 2                ; 2 uses
  %i.dj = add nuw nsw i64 %i.di, 4
  %.not.i43.i = icmp ugt i64 %i.dj, %i.n
  br i1 %.not.i43.i, label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dk = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %i.di
  %.val.i44.i = load i32, ptr %i.dk, align 1, !noalias !46208
  %i.dl = call i32 @llvm.bswap.i32(i32 %.val.i44.i)
  %i.dm = zext i32 %i.df to i64
  %i.dn = zext i32 %i.dl to i64
  br label %bb.ao

.loopexit:                                        ; preds = %bb.ad, %bb.o, %bb.p, %bb.n, %bb.j, %bb.r, %bb.x, %bb.w, %bb.ac, %bb.ab, %bb.u, %bb.z, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit, %.thread, %bb.i, %bb.f
  %i.do = load float, ptr %7, align 8, !noundef !41 ; 4 uses
  %i.dp = fcmp oeq float %i.do, f0x7F7FFFFF
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dr = load float, ptr %i.dq, align 4          ; 4 uses
  %i.ds = fcmp oeq float %i.dr, f0x7F7FFFFF
  %or.cond17 = select i1 %i.dp, i1 %i.ds, i1 false
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.du = load float, ptr %i.dt, align 8          ; 4 uses
  br i1 %or.cond17, label %bb.dg, label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.sroa.6127.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 12
  %.sroa.6127.0.copyload.pre = load float, ptr %.sroa.6127.0..sroa_idx.phi.trans.insert, align 4
  br label %bb.dh

_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread: ; preds = %bb.ao, %bb.ai, %bb.ap, %bb.aq, %bb.ak, %bb.al, %bb.am, %_RNvXs0_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_18CompositeGlyphIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit, %bb.aj, %bb.af, %bb.ah, %bb.at
  %i.dv = add nuw nsw i64 %spec.select, 2         ; 2 uses
  %.not.i.i = icmp ugt i64 %i.dv, %i.j
  br i1 %.not.i.i, label %.loopexit, label %bb.j

bb.as:                                            ; preds = %bb.ao
  %i.dw = sub nuw nsw i64 %.sroa.4.0.i, %.sroa.01.0.i
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  %i.dy = load <2 x ptr>, ptr %i.v, align 8
  store <2 x ptr> %i.dy, ptr %i.w, align 8
  %i.dz = load <2 x float>, ptr %i.u, align 8     ; 2 uses
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eb = load <2 x float>, ptr %.sroa.5115.0..sroa_idx, align 8 ; 2 uses
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ed = insertelement <4 x float> poison, float %.sroa.07.0.i, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %.sroa.8.0.i, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.eg = fmul <4 x float> %i.ef, %i.ea
  %i.eh = insertelement <4 x float> poison, float %.sroa.6.0.i, i64 0
  %i.ei = insertelement <4 x float> %i.eh, float %.sroa.10.0.i, i64 1
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ek = fmul <4 x float> %i.ej, %i.ec
  %i.el = fadd <4 x float> %i.eg, %i.ek
  %.fr315 = freeze <4 x float> %i.el              ; 2 uses
  store <4 x float> %.fr315, ptr %i.x, align 8
  %i.em = load <2 x float>, ptr %.sroa.7117.0..sroa_idx, align 8
  %i.en = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fmul <2 x float> %i.en, %i.dz
  %i.ep = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eq = fmul <2 x float> %i.ep, %i.eb
  %i.er = fadd <2 x float> %i.eo, %i.eq
  %i.es = fadd <2 x float> %i.em, %i.er
  %.fr318 = freeze <2 x float> %i.es              ; 3 uses
  %i.et = extractelement <2 x float> %.fr318, i64 0
  %i.eu = fcmp oeq float %i.et, 0.000000e+00
  %i.ev = extractelement <2 x float> %.fr318, i64 1
  %i.ew = fcmp oeq float %i.ev, 0.000000e+00
  %i.ex = fcmp une <4 x float> %.fr315, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ey = bitcast <4 x i1> %i.ex to i4
  %i.ez = icmp eq i4 %i.ey, 0
  %op.rdx = and i1 %i.ez, %i.eu
  %op.rdx314 = and i1 %op.rdx, %i.ew
  %.sroa.046.0 = zext i1 %op.rdx314 to i8
  store <2 x float> %.fr318, ptr %.sroa.12113.0..sroa_idx, align 8
  store i8 %.sroa.046.0, ptr %i.y, align 4
  store i32 0, ptr %i.z, align 8
  store i32 0, ptr %i.aa, align 4
  store i32 0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl(ptr noalias nofree noundef align 2 captures(none) dereferenceable(10) %i.c, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dw, i8 noundef %i.ac, ptr noalias nofree noundef align 8 dereferenceable(96) %i.d) #59
  %i.fa = load i16, ptr %i.c, align 2, !range !150, !noundef !41
  %.not66 = icmp eq i16 %i.fa, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not66, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4locaNtB2_5Table11glyph_range.exit.thread

bb.au:                                            ; preds = %bb.as
  store i16 2, ptr %0, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dr

bb.av:                                            ; preds = %bb.e
  %i.fb = icmp samesign ult i64 %5, 10
  br i1 %i.fb, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fc = add nsw i64 %5, -10                     ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46210
  store ptr %i.fd, ptr %i.b, align 8, !noalias !46210
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.fc, ptr %i.fe, align 8, !noalias !46210
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.fg = shl nuw i16 %i.f, 1
  %i.fh = zext i16 %i.fg to i64                   ; 7 uses
  %.not.i.i75 = icmp samesign ult i64 %i.fc, %i.fh
  br i1 %.not.i.i75, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fi = add nuw nsw i64 %i.fh, 131070
  %i.fj = and i64 %i.fi, 131070                   ; 2 uses
  %.not.i.i.not.i = icmp samesign ult i64 %i.fj, %i.fh
  br i1 %.not.i.i.not.i, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fj
  %.val.i.i.i = load i16, ptr %i.fk, align 1, !alias.scope !46209
  %i.fl = tail call i16 @llvm.bswap.i16(i16 %.val.i.i.i) ; 2 uses
  %i.fm = add nuw i16 %i.fl, 1                    ; 2 uses
  switch i16 %i.fl, label %bb.az [
    i16 -1, label %bb.bf
    i16 0, label %.thread
  ], !prof !46211

.thread:                                          ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46210
  br label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.fn = add nuw nsw i64 %i.fh, 2                ; 2 uses
  %.not.i124.i = icmp samesign ugt i64 %i.fn, %i.fc
  br i1 %.not.i124.i, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fh
  %.sroa.072.0.copyload.i = load i16, ptr %i.fo, align 1, !alias.scope !46209
  %i.fp = tail call i16 @llvm.bswap.i16(i16 %.sroa.072.0.copyload.i)
  %i.fq = zext i16 %i.fp to i64
  %i.fr = add nuw nsw i64 %i.fn, %i.fq
  %.fr = freeze i64 %i.fr                         ; 4 uses
  store i64 %.fr, ptr %i.ff, align 8, !noalias !46210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46210
  call void @_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf18resolve_coords_len(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i16 noundef %i.fm), !noalias !46212
  %i.fs = load i32, ptr %i.a, align 4, !range !106, !noalias !46210, !noundef !41
  %i.ft = trunc nuw i32 %i.fs to i1
  br i1 %i.ft, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !noalias !46210, !noundef !41
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fx = load i32, ptr %i.fw, align 4, !noalias !46210, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46210
  %i.fy = load i64, ptr %i.ff, align 8, !noalias !46210, !noundef !41 ; 6 uses
  %i.fz = zext i32 %i.fv to i64                   ; 3 uses
  %i.ga = add i64 %i.fy, %i.fz                    ; 4 uses
  %i.gb = zext i32 %i.fx to i64                   ; 3 uses
  %i.gc = add nuw i64 %i.ga, %i.gb
  %.val.i.i77 = load i16, ptr %i.fd, align 1, !alias.scope !46209
  %i.gd = call i16 @llvm.bswap.i16(i16 %.val.i.i77)
  %i.ge = icmp ult i64 %i.fy, %.fr
  br i1 %i.ge, label %bb.bf, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46210
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.gf = sub nuw i64 %i.fy, %.fr                 ; 2 uses
  %.not114.i = icmp ugt i64 %i.fy, %i.fc
  br i1 %.not114.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gg = icmp ult i64 %i.ga, %i.fy
  %.not115.i = icmp ugt i64 %i.ga, %i.fc
  %or.cond118.i = or i1 %i.gg, %.not115.i
  %.not116.i = icmp ugt i64 %i.gc, %i.fc
  %or.cond232 = select i1 %or.cond118.i, i1 true, i1 %.not116.i
  br i1 %or.cond232, label %bb.bf, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.be
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fd, i64 %.fr ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fy ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.ga ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46210
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 9 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 9 uses
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 9 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 8 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 18 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  br label %bb.bh

bb.bf:                                            ; preds = %bb.ax, %bb.az, %bb.bb, %bb.be, %bb.bc, %bb.aw, %bb.ay, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46210
  br label %bb.bg

bb.bg:                                            ; preds = %bb.av, %bb.bf
  store i16 2, ptr %0, align 2
  br label %bb.dr

bb.bh:                                            ; preds = %.lr.ph248, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit
  %.sroa.43.0 = phi i64 [ 0, %.lr.ph248 ], [ %.sroa.43.2, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 9 uses
  %.sroa.38.0 = phi i16 [ 0, %.lr.ph248 ], [ %i.ij, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %.sroa.33.0 = phi i64 [ 0, %.lr.ph248 ], [ %.sroa.33.2, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 9 uses
  %.sroa.48.0 = phi i16 [ 0, %.lr.ph248 ], [ %i.iv, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %.sroa.25.0 = phi i8 [ 0, %.lr.ph248 ], [ %.sroa.25.3, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %.sroa.21.0 = phi i8 [ 0, %.lr.ph248 ], [ %.sroa.21.3, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 2 uses
  %.sroa.17.0255 = phi i64 [ 0, %.lr.ph248 ], [ %.sroa.17.4, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 6 uses
  %.sroa.9.0 = phi i16 [ %i.gd, %.lr.ph248 ], [ %.sroa.9.2, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 2 uses
  %.sroa.6.0 = phi i16 [ 1, %.lr.ph248 ], [ %.sroa.6.1, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 6 uses
  %i.gw = phi i16 [ %i.fm, %.lr.ph248 ], [ %i.gx, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %i.gx = add i16 %i.gw, -1                       ; 2 uses
  %i.gy = icmp eq i16 %.sroa.9.0, 0               ; 2 uses
  br i1 %i.gy, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gz = icmp ult i16 %.sroa.6.0, %i.f
  br i1 %i.gz, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.ha = zext nneg i16 %.sroa.6.0 to i64
  %i.hb = shl nuw nsw i64 %i.ha, 1                ; 2 uses
  %.not.i.i.i.not = icmp samesign ult i64 %i.hb, %i.fh
  br i1 %.not.i.i.i.not, label %bb.bl, label %.thread21.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.hc = add i16 %.sroa.9.0, -1
  br label %_RNvMs3_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_13EndpointsIter4next.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.hb
  %.val.i.i.i79 = load i16, ptr %i.hd, align 1, !noalias !46213
  %i.he = call i16 @llvm.bswap.i16(i16 %.val.i.i.i79) ; 3 uses
  %i.hf = add nsw i16 %.sroa.6.0, -1              ; 2 uses
  %i.hg = icmp ult i16 %i.hf, %i.f
  br i1 %i.hg, label %bb.bm, label %.thread.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.hh = zext nneg i16 %i.hf to i64
  %i.hi = shl nuw nsw i64 %i.hh, 1                ; 2 uses
  %.not.i14.i.i.not = icmp samesign ult i64 %i.hi, %i.fh
  br i1 %.not.i14.i.i.not, label %bb.bo, label %.thread.i.i

bb.bn:                                            ; preds = %bb.bi
  %i.hj = icmp eq i16 %.sroa.6.0, -1
  br i1 %i.hj, label %_RNvMs3_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_13EndpointsIter4next.exit.i, label %.thread21.i.i, !prof !147

bb.bo:                                            ; preds = %bb.bm
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.hi
  %.val.i15.i.i = load i16, ptr %i.hk, align 1, !noalias !46213
  %i.hl = call i16 @llvm.bswap.i16(i16 %.val.i15.i.i)
  %i.hm = call i16 @llvm.usub.sat.i16(i16 %i.he, i16 %i.hl)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bo, %bb.bm, %bb.bl
  %.sroa.03.0.i.i = phi i16 [ %i.hm, %bb.bo ], [ %i.he, %bb.bl ], [ %i.he, %bb.bm ]
  %i.hn = call i16 @llvm.usub.sat.i16(i16 %.sroa.03.0.i.i, i16 1)
  br label %.thread21.i.i

end_hunk_0
