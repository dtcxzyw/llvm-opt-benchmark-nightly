Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9838
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl:bb.a
  %i.bc = add nuw nsw i64 %.sroa.7102.1, 2        ; 2 uses
  %.not.i187.i = icmp ugt i64 %i.bc, %i.j
  br i1 %.not.i187.i, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.7102.1
  %.sroa.0119.0.copyload.i = load i16, ptr %i.bd, align 1, !noalias !46207
  %i.be = call i16 @llvm.bswap.i16(i16 %.sroa.0119.0.copyload.i)
  %i.bf = sitofp i16 %i.be to float
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
  %8 = extractelement <2 x float> %.fr318, i64 0
  %9 = fcmp oeq float %8, 0.000000e+00
  %i.et = extractelement <2 x float> %.fr318, i64 1
  %i.eu = fcmp oeq float %i.et, 0.000000e+00
  %10 = fcmp une <4 x float> %.fr315, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %11 = bitcast <4 x i1> %10 to i4
  %12 = icmp eq i4 %11, 0
  %op.rdx = and i1 %12, %9
  %op.rdx314 = and i1 %op.rdx, %i.eu
  %.sroa.046.0 = zext i1 %op.rdx314 to i8
  store <2 x float> %.fr318, ptr %.sroa.12113.0..sroa_idx, align 8
  store i8 %.sroa.046.0, ptr %i.y, align 4
  store i32 0, ptr %i.z, align 8
  store i32 0, ptr %i.aa, align 4
  store i32 0, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf12outline_impl(ptr noalias nofree noundef align 2 captures(none) dereferenceable(10) %i.c, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dw, i8 noundef %i.ac, ptr noalias nofree noundef align 8 dereferenceable(96) %i.d) #59
  %i.ev = load i16, ptr %i.c, align 2, !range !150, !noundef !41
  %.not66 = icmp eq i16 %i.ev, 2
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
  %i.ew = icmp samesign ult i64 %5, 10
  br i1 %i.ew, label %bb.bg, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ex = add nsw i64 %5, -10                     ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 10 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46210
  store ptr %i.ey, ptr %i.b, align 8, !noalias !46210
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ex, ptr %i.ez, align 8, !noalias !46210
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.fb = shl nuw i16 %i.f, 1
  %i.fc = zext i16 %i.fb to i64                   ; 7 uses
  %.not.i.i75 = icmp samesign ult i64 %i.ex, %i.fc
  br i1 %.not.i.i75, label %bb.bf, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fd = add nuw nsw i64 %i.fc, 131070
  %i.fe = and i64 %i.fd, 131070                   ; 2 uses
  %.not.i.i.not.i = icmp samesign ult i64 %i.fe, %i.fc
  br i1 %.not.i.i.not.i, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %bb.ax
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fe
  %.val.i.i.i = load i16, ptr %i.ff, align 1, !alias.scope !46209
  %i.fg = tail call i16 @llvm.bswap.i16(i16 %.val.i.i.i) ; 2 uses
  %i.fh = add nuw i16 %i.fg, 1                    ; 2 uses
  switch i16 %i.fg, label %bb.az [
    i16 -1, label %bb.bf
    i16 0, label %.thread
  ], !prof !46211

.thread:                                          ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46210
  br label %.loopexit

bb.az:                                            ; preds = %bb.ay
  %i.fi = add nuw nsw i64 %i.fc, 2                ; 2 uses
  %.not.i124.i = icmp samesign ugt i64 %i.fi, %i.ex
  br i1 %.not.i124.i, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fc
  %.sroa.072.0.copyload.i = load i16, ptr %i.fj, align 1, !alias.scope !46209
  %i.fk = tail call i16 @llvm.bswap.i16(i16 %.sroa.072.0.copyload.i)
  %i.fl = zext i16 %i.fk to i64
  %i.fm = add nuw nsw i64 %i.fi, %i.fl
  %.fr = freeze i64 %i.fm                         ; 4 uses
  store i64 %.fr, ptr %i.fa, align 8, !noalias !46210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46210
  call void @_RNvNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyf18resolve_coords_len(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i16 noundef %i.fh), !noalias !46212
  %i.fn = load i32, ptr %i.a, align 4, !range !106, !noalias !46210, !noundef !41
  %i.fo = trunc nuw i32 %i.fn to i1
  br i1 %i.fo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !noalias !46210, !noundef !41
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !noalias !46210, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46210
  %i.ft = load i64, ptr %i.fa, align 8, !noalias !46210, !noundef !41 ; 6 uses
  %i.fu = zext i32 %i.fq to i64                   ; 3 uses
  %i.fv = add i64 %i.ft, %i.fu                    ; 4 uses
  %i.fw = zext i32 %i.fs to i64                   ; 3 uses
  %i.fx = add nuw i64 %i.fv, %i.fw
  %.val.i.i77 = load i16, ptr %i.ey, align 1, !alias.scope !46209
  %i.fy = call i16 @llvm.bswap.i16(i16 %.val.i.i77)
  %i.fz = icmp ult i64 %i.ft, %.fr
  br i1 %i.fz, label %bb.bf, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46210
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bb
  %i.ga = sub nuw i64 %i.ft, %.fr                 ; 2 uses
  %.not114.i = icmp ugt i64 %i.ft, %i.ex
  br i1 %.not114.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gb = icmp ult i64 %i.fv, %i.ft
  %.not115.i = icmp ugt i64 %i.fv, %i.ex
  %or.cond118.i = or i1 %i.gb, %.not115.i
  %.not116.i = icmp ugt i64 %i.fx, %i.ex
  %or.cond232 = select i1 %or.cond118.i, i1 true, i1 %.not116.i
  br i1 %or.cond232, label %bb.bf, label %.lr.ph248

.lr.ph248:                                        ; preds = %bb.be
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.fr ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ft ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fv ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46210
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 8 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 84 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 92 ; 9 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 9 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 9 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 18 uses
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 10 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 60 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 68 ; 4 uses
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
  %.sroa.38.0 = phi i16 [ 0, %.lr.ph248 ], [ %i.ie, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %.sroa.33.0 = phi i64 [ 0, %.lr.ph248 ], [ %.sroa.33.2, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 9 uses
  %.sroa.48.0 = phi i16 [ 0, %.lr.ph248 ], [ %i.iq, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %.sroa.25.0 = phi i8 [ 0, %.lr.ph248 ], [ %.sroa.25.3, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %.sroa.21.0 = phi i8 [ 0, %.lr.ph248 ], [ %.sroa.21.3, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 2 uses
  %.sroa.17.0255 = phi i64 [ 0, %.lr.ph248 ], [ %.sroa.17.4, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 6 uses
  %.sroa.9.0 = phi i16 [ %i.fy, %.lr.ph248 ], [ %.sroa.9.2, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 2 uses
  %.sroa.6.0 = phi i16 [ 1, %.lr.ph248 ], [ %.sroa.6.1, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ] ; 6 uses
  %i.gr = phi i16 [ %i.fh, %.lr.ph248 ], [ %i.gs, %_RNvMNtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB2_7Builder10push_point.exit ]
  %i.gs = add i16 %i.gr, -1                       ; 2 uses
  %i.gt = icmp eq i16 %.sroa.9.0, 0               ; 2 uses
  br i1 %i.gt, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.gu = icmp ult i16 %.sroa.6.0, %i.f
  br i1 %i.gu, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.gv = zext nneg i16 %.sroa.6.0 to i64
  %i.gw = shl nuw nsw i64 %i.gv, 1                ; 2 uses
  %.not.i.i.i.not = icmp samesign ult i64 %i.gw, %i.fc
  br i1 %.not.i.i.i.not, label %bb.bl, label %.thread21.i.i

bb.bk:                                            ; preds = %bb.bh
  %i.gx = add i16 %.sroa.9.0, -1
  br label %_RNvMs3_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_13EndpointsIter4next.exit.i

bb.bl:                                            ; preds = %bb.bj
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.gw
  %.val.i.i.i79 = load i16, ptr %i.gy, align 1, !noalias !46213
  %i.gz = call i16 @llvm.bswap.i16(i16 %.val.i.i.i79) ; 3 uses
  %i.ha = add nsw i16 %.sroa.6.0, -1              ; 2 uses
  %i.hb = icmp ult i16 %i.ha, %i.f
  br i1 %i.hb, label %bb.bm, label %.thread.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.hc = zext nneg i16 %i.ha to i64
  %i.hd = shl nuw nsw i64 %i.hc, 1                ; 2 uses
  %.not.i14.i.i.not = icmp samesign ult i64 %i.hd, %i.fc
  br i1 %.not.i14.i.i.not, label %bb.bo, label %.thread.i.i

bb.bn:                                            ; preds = %bb.bi
  %i.he = icmp eq i16 %.sroa.6.0, -1
  br i1 %i.he, label %_RNvMs3_NtNtCsdQl7XGSB5tC_10ttf_parser6tables4glyfNtB5_13EndpointsIter4next.exit.i, label %.thread21.i.i, !prof !147

bb.bo:                                            ; preds = %bb.bm
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.hd
  %.val.i15.i.i = load i16, ptr %i.hf, align 1, !noalias !46213
  %i.hg = call i16 @llvm.bswap.i16(i16 %.val.i15.i.i)
  %i.hh = call i16 @llvm.usub.sat.i16(i16 %i.gz, i16 %i.hg)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bo, %bb.bm, %bb.bl
  %.sroa.03.0.i.i = phi i16 [ %i.hh, %bb.bo ], [ %i.gz, %bb.bl ], [ %i.gz, %bb.bm ]
  %i.hi = call i16 @llvm.usub.sat.i16(i16 %.sroa.03.0.i.i, i16 1)
  br label %.thread21.i.i

end_hunk_0
