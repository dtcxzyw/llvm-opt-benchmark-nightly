Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt5_row:bb.a
  %i.bk = udiv <4 x i16> %i.bj, splat (i16 7)
  %i.bl = shl nuw nsw i16 %i.ao, 1
  %i.bm = mul nuw nsw i16 %i.ak, 5
  %i.bn = add nuw nsw i16 %i.bm, %i.bl
  %i.bo = udiv i16 %i.bn, 7
  %i.bp = mul nuw nsw i16 %i.ak, 6
  %i.bq = add nuw nsw i16 %i.bp, %i.ao
  %i.br = udiv i16 %i.bq, 7
  %i.bs = zext nneg i16 %i.br to i64
  %i.bt = shl nuw i64 %i.bs, 56
  %i.bu = zext nneg i16 %i.bo to i64
  %i.bv = shl nuw nsw i64 %i.bu, 48
  %i.bw = add nuw nsw i64 %i.bt, %i.bv
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit: ; preds = %.preheader9.i.i, %.preheader.i.i
  %.sroa.15.0.insert.insert.i.i = phi i64 [ %i.bw, %.preheader.i.i ], [ -72057594037927936, %.preheader9.i.i ]
  %i.bx = phi <4 x i16> [ %i.bk, %.preheader.i.i ], [ %i.ay, %.preheader9.i.i ] ; 4 uses
  %i.by = zext i8 %.val.i.i to i64                ; 3 uses
  %i.bz = shl nuw nsw i64 %i.by, 16
  %i.ca = zext i8 %.val.i.1.i to i64              ; 3 uses
  %i.cb = shl nuw nsw i64 %i.ca, 8
  %i.cc = or disjoint i64 %i.cb, %i.bz            ; 2 uses
  %i.cd = zext i8 %.val.i.2.i to i64              ; 3 uses
  %i.ce = or disjoint i64 %i.cc, %i.cd            ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 16
  %i.cg = zext i8 %.val.i.3.i to i64              ; 3 uses
  %i.ch = shl nuw nsw i64 %i.cg, 8
  %i.ci = zext i8 %.val.i.4.i to i64              ; 3 uses
  %i.cj = or disjoint i64 %i.ch, %i.cf
  %i.ck = or disjoint i64 %i.cj, %i.ci            ; 2 uses
  %i.cl = shl nuw nsw i64 %i.ck, 8
  %i.cm = zext i8 %.val.i.5.i to i64              ; 3 uses
  %i.cn = or disjoint i64 %i.cl, %i.cm
  %i.co = extractelement <4 x i16> %i.bx, i64 0
  %.sroa.12.0.insert.ext.i.i = zext nneg i16 %i.co to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.0.insert.ext.i.i, 40
  %i.cp = extractelement <4 x i16> %i.bx, i64 1
  %.sroa.9.0.insert.ext.i.i = zext nneg i16 %i.cp to i64
  %.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 32
  %i.cq = extractelement <4 x i16> %i.bx, i64 2
  %.sroa.6.0.insert.ext.i.i = zext nneg i16 %i.cq to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %i.cr = extractelement <4 x i16> %i.bx, i64 3
  %.sroa.3.0.insert.ext.i.i = zext nneg i16 %i.cr to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.9.0.insert.insert.masked.masked.masked.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %i.ai
  %.sroa.3.0.insert.mask.masked.masked.i.i = or i64 %.sroa.9.0.insert.insert.masked.masked.masked.i.i, %.sroa.9.0.insert.shift.i.i
  %.sroa.2.0.insert.mask.masked.i.i = or i64 %.sroa.3.0.insert.mask.masked.masked.i.i, %.sroa.15.0.insert.insert.i.i
  %.sroa.0.0.insert.mask.i.i = or i64 %.sroa.2.0.insert.mask.masked.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or i64 %.sroa.0.0.insert.mask.i.i, %.sroa.3.0.insert.shift.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.a, align 8, !noalias !975
  %i.cs = and i64 %i.cm, 7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !975, !noundef !5
  store i8 %i.cu, ptr %i.h, align 1, !alias.scope !973, !noalias !970
  %i.cv = lshr i64 %i.cm, 3
  %i.cw = and i64 %i.cv, 7
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !noalias !975, !noundef !5
  store i8 %i.cy, ptr %i.i, align 1, !alias.scope !973, !noalias !970
  %i.cz = lshr i64 %i.cn, 6
  %i.da = and i64 %i.cz, 7
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !noalias !975, !noundef !5
  store i8 %i.dc, ptr %i.j, align 1, !alias.scope !973, !noalias !970
  %i.dd = lshr i64 %i.ci, 1
  %i.de = and i64 %i.dd, 7
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !noalias !975, !noundef !5
  store i8 %i.dg, ptr %i.k, align 1, !alias.scope !973, !noalias !970
  %i.dh = lshr i64 %i.ci, 4
  %i.di = and i64 %i.dh, 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !975, !noundef !5
  store i8 %i.dk, ptr %i.l, align 1, !alias.scope !973, !noalias !970
  %i.dl = lshr i64 %i.ck, 7
  %i.dm = and i64 %i.dl, 7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !975, !noundef !5
  store i8 %i.do, ptr %i.m, align 1, !alias.scope !973, !noalias !970
  %i.dp = lshr i64 %i.cg, 2
  %i.dq = and i64 %i.dp, 7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !975, !noundef !5
  store i8 %i.ds, ptr %i.n, align 1, !alias.scope !973, !noalias !970
  %i.dt = lshr i64 %i.cg, 5
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !975, !noundef !5
  store i8 %i.dv, ptr %i.o, align 1, !alias.scope !973, !noalias !970
  %i.dw = and i64 %i.cd, 7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noalias !975, !noundef !5
  store i8 %i.dy, ptr %i.p, align 1, !alias.scope !973, !noalias !970
  %i.dz = lshr i64 %i.cd, 3
  %i.ea = and i64 %i.dz, 7
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !noalias !975, !noundef !5
  store i8 %i.ec, ptr %i.q, align 1, !alias.scope !973, !noalias !970
  %i.ed = lshr i64 %i.ce, 6
  %i.ee = and i64 %i.ed, 7
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !noalias !975, !noundef !5
  store i8 %i.eg, ptr %i.r, align 1, !alias.scope !973, !noalias !970
  %i.eh = lshr i64 %i.ca, 1
  %i.ei = and i64 %i.eh, 7
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !noalias !975, !noundef !5
  store i8 %i.ek, ptr %i.s, align 1, !alias.scope !973, !noalias !970
  %i.el = lshr i64 %i.ca, 4
  %i.em = and i64 %i.el, 7
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noalias !975, !noundef !5
  store i8 %i.eo, ptr %i.t, align 1, !alias.scope !973, !noalias !970
  %i.ep = lshr i64 %i.cc, 15
  %i.eq = and i64 %i.ep, 7
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !noalias !975, !noundef !5
  store i8 %i.es, ptr %i.u, align 1, !alias.scope !973, !noalias !970
  %i.et = lshr i64 %i.by, 2
  %i.eu = and i64 %i.et, 7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !noalias !975, !noundef !5
  store i8 %i.ew, ptr %i.v, align 1, !alias.scope !973, !noalias !970
  %i.ex = lshr i64 %i.by, 5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !noalias !975, !noundef !5
  store i8 %i.ez, ptr %i.w, align 1, !alias.scope !973, !noalias !970
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr6.i, ptr noalias nofree noundef nonnull %i.b, i64 noundef 64, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !975
  %i.fa = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.x
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !932

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %.lcssa = phi i64 [ %i.fa, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit ], [ %i.fe, %bb.i ], [ %i.fi, %bb.j ], [ %i.fl, %bb.k ] ; 2 uses
  %i.fb = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.fb, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fc, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !976, !noalias !980
  %i.fd = add nuw nsw i64 %i.e, %.sroa.10.021
  %i.fe = shl nuw i64 %i.fd, 4                    ; 3 uses
  %i.ff = or disjoint i64 %i.fe, 15
  %or.cond.not.1 = icmp ult i64 %i.ff, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !410

bb.j:                                             ; preds = %bb.i
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %i.fe
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fg, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.y, i64 16, i1 false), !alias.scope !976, !noalias !980
  %i.fh = add nuw nsw i64 %i.z, %.sroa.10.021
  %i.fi = shl i64 %i.fh, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.fi, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !410

bb.k:                                             ; preds = %bb.j
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !976, !noalias !980
  %i.fk = add nuw nsw i64 %i.ab, %.sroa.10.021
  %i.fl = shl i64 %i.fk, 4                        ; 3 uses
  %i.fm = or disjoint i64 %i.fl, 15
  %or.cond.not.3 = icmp ult i64 %i.fm, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !410

.loopexit:                                        ; preds = %bb.k
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fn, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !976, !noalias !980
  %i.fo = icmp eq i64 %i.ae, 0
  br i1 %i.fo, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 48, 65) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 27 uses
  %.off = add nsw i64 %2, -49
  %switch = icmp ult i64 %.off, 15
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %switch, label %bb.b, label %bb.c, !prof !982

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 77, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 1              ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 6 ; 2 uses
  %i.h = lshr i64 %2, 4                           ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.i, i8 0, i64 6, i1 false)
  %i.j = load i8, ptr %i.d, align 1, !noundef !5
  %i.k = load i8, ptr %i.c, align 1, !noundef !5
  %i.l = load i8, ptr %i.b, align 1, !noundef !5
  %i.m = load i8, ptr %0, align 1, !noundef !5
  %i.n = zext i8 %i.k to i16                      ; 2 uses
  %i.o = zext i8 %i.j to i16                      ; 2 uses
  %i.p = zext i8 %i.m to i16                      ; 2 uses
  %i.q = zext i8 %i.l to i16                      ; 2 uses
  %i.r = shl nuw i16 %i.q, 8
  %i.s = or disjoint i16 %i.r, %i.p               ; 2 uses
  %i.t = shl nuw i16 %i.o, 8
  %i.u = or disjoint i16 %i.t, %i.n               ; 2 uses
  %i.v = lshr i16 %i.s, 5
  %i.w = lshr i16 %i.q, 3
  %i.x = lshr i16 %i.u, 5
  %i.y = lshr i16 %i.o, 3
  %i.z = insertelement <4 x i16> poison, i16 %i.w, i64 0
  %i.aa = insertelement <4 x i16> %i.z, i16 %i.v, i64 1
  %i.ab = insertelement <4 x i16> %i.aa, i16 %i.p, i64 2
  %i.ac = insertelement <4 x i16> %i.ab, i16 %i.y, i64 3 ; 2 uses
  %i.ad = and <4 x i16> %i.ac, <i16 -1, i16 63, i16 31, i16 -1>
  %i.ae = shufflevector <4 x i16> %i.ac, <4 x i16> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 0>
  %i.af = insertelement <4 x i16> %i.ae, i16 %i.x, i64 1
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.n, i64 2
  %i.ah = and <4 x i16> %i.ag, <i16 -1, i16 63, i16 31, i16 -1>
  %i.ai = mul nuw nsw <4 x i16> %i.ad, <i16 255, i16 85, i16 255, i16 255>
  %i.aj = mul nuw nsw <4 x i16> %i.ah, <i16 255, i16 85, i16 255, i16 255>
  %i.ak = udiv <4 x i16> %i.ai, <i16 31, i16 21, i16 31, i16 31> ; 5 uses
  %i.al = udiv <4 x i16> %i.aj, <i16 31, i16 21, i16 31, i16 31> ; 9 uses
  %i.am = bitcast <4 x i16> %i.al to <8 x i8>
  %i.an = extractelement <8 x i8> %i.am, i64 2
  %i.ao = bitcast <4 x i16> %i.al to <8 x i8>
  %i.ap = extractelement <8 x i8> %i.ao, i64 4
  %i.aq = shufflevector <4 x i16> %i.al, <4 x i16> %i.ak, <4 x i32> <i32 3, i32 5, i32 6, i32 0>
  %i.ar = trunc <4 x i16> %i.aq to <4 x i8>
  store <4 x i8> %i.ar, ptr %i.a, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.an, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ap, ptr %.sroa.53.0..sroa_idx, align 1
  %i.as = icmp ule i16 %i.s, %i.u
  %brmerge.not = and i1 %3, %i.as
  br i1 %brmerge.not, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.c
  %i.at = shl nuw nsw <4 x i16> %i.ak, splat (i16 1)
  %i.au = add nuw nsw <4 x i16> %i.al, splat (i16 1)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.aw = add nuw nsw <4 x i16> %i.au, %i.at
  %i.ax = udiv <4 x i16> %i.aw, splat (i16 3)
  %i.ay = trunc <4 x i16> %i.ax to <4 x i8>
  store <4 x i8> %i.ay, ptr %i.g, align 2
  %i.az = shufflevector <4 x i16> %i.al, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.ba = shl nuw nsw <2 x i16> %i.az, splat (i16 1)
  %i.bb = shufflevector <4 x i16> %i.ak, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.bc = add nuw nsw <2 x i16> %i.bb, splat (i16 1)
  %i.bd = add nuw nsw <2 x i16> %i.bc, %i.ba
  %i.be = udiv <2 x i16> %i.bd, splat (i16 3)     ; 2 uses
  %i.bf = bitcast <2 x i16> %i.be to <4 x i8>
  %i.bg = extractelement <4 x i8> %i.bf, i64 0
  store i8 %i.bg, ptr %i.av, align 2
  %i.bh = extractelement <2 x i16> %i.be, i64 1
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  %shift = shufflevector <4 x i16> %i.al, <4 x i16> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nuw nsw <4 x i16> %i.al, %shift
  %i.bi = extractelement <4 x i16> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bj = lshr i16 %i.bi, 1
  %.sroa.08.0 = sub nsw i16 %i.bi, %i.bj
  %i.bk = trunc i16 %.sroa.08.0 to i8
  store i8 %i.bk, ptr %i.g, align 2
  %foldExtExtBinop2 = add nuw nsw <4 x i16> %i.al, %i.ak
  %i.bl = extractelement <4 x i16> %foldExtExtBinop2, i64 1 ; 2 uses
  %i.bm = lshr i16 %i.bl, 1
  %.sroa.08.0.1 = sub nsw i16 %i.bl, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bo = trunc i16 %.sroa.08.0.1 to i8
  store i8 %i.bo, ptr %i.bn, align 1
  %foldExtExtBinop4 = add nuw nsw <4 x i16> %i.al, %i.ak
  %i.bp = extractelement <4 x i16> %foldExtExtBinop4, i64 2 ; 2 uses
  %i.bq = lshr i16 %i.bp, 1
  %.sroa.08.0.2 = sub nsw i16 %i.bp, %i.bq
  br label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.lcssa30 = phi i64 [ %i.ff, %bb.h ], [ %i.ey, %bb.g ], [ %i.er, %bb.f ], [ %i.ek, %bb.e ]
  %.lcssa = phi i64 [ %i.fg, %bb.h ], [ %i.ez, %bb.g ], [ %i.es, %bb.f ], [ %i.el, %bb.e ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa30, i64 noundef %.lcssa, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28
  unreachable

bb.e:                                             ; preds = %.preheader22, %.preheader
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.preheader22 ], [ %.sink.sroa.gep6, %.preheader ]
  %.sink34 = phi i16 [ %i.bh, %.preheader22 ], [ %.sroa.08.0.2, %.preheader ]
  %i.br = trunc i16 %.sink34 to i8
  store i8 %i.br, ptr %.sink.sroa.phi, align 1
  %i.bs = trunc nuw nsw i64 %2 to i8
  %.lhs.trunc = add nsw i8 %i.bs, -3
  %.rhs.trunc = trunc nuw nsw i64 %i.h to i8
  %i.bt = udiv i8 %.lhs.trunc, %.rhs.trunc
  %.zext = zext i8 %i.bt to i64
  %4 = add nuw nsw i64 %.zext, 1                  ; 4 uses
  %i.bu = and i32 %i.f, 3
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.bw, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.bx = lshr i32 %i.f, 2
  %i.by = and i32 %i.bx, 3
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.cb = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ca, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cb, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.cc = shl nuw nsw i64 %i.h, 1
  %i.cd = lshr i32 %i.f, 4
  %i.ce = and i32 %i.cd, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  %i.ch = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ch, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.ci = mul nuw nsw i64 %i.h, 3
  %i.cj = lshr i32 %i.f, 6
  %i.ck = and i32 %i.cj, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.cn = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cm, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cn, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.co = shl nuw nsw i64 %i.h, 2
  %i.cp = lshr i32 %i.f, 8
  %i.cq = and i32 %i.cp, 3
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.co
  %i.ct = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cs, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ct, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.cu = mul nuw nsw i64 %i.h, 5
  %i.cv = lshr i32 %i.f, 10
  %i.cw = and i32 %i.cv, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  %i.cz = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cy, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cz, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.da = mul nuw nsw i64 %i.h, 6
  %i.db = lshr i32 %i.f, 12
  %i.dc = and i32 %i.db, 3
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.da
  %i.df = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.de, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.df, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.dg = mul nuw nsw i64 %i.h, 7
  %i.dh = lshr i32 %i.f, 14
  %i.di = and i32 %i.dh, 3
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.dl = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dk, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dl, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.dm = shl nuw nsw i64 %i.h, 3
  %i.dn = lshr i32 %i.f, 16
  %i.do = and i32 %i.dn, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 %i.dm
  %i.dr = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dq, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dr, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.ds = mul nuw nsw i64 %i.h, 9
  %i.dt = lshr i32 %i.f, 18
  %i.du = and i32 %i.dt, 3
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.ds
  %i.dx = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dw, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dx, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.dy = mul nuw nsw i64 %i.h, 10
  %i.dz = lshr i32 %i.f, 20
  %i.ea = and i32 %i.dz, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %i.dy
  %i.ed = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ec, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ed, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.ee = mul nuw nsw i64 %i.h, 11
  %i.ef = lshr i32 %i.f, 22
  %i.eg = and i32 %i.ef, 3
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 %i.ee
  %i.ej = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.eh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ei, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ej, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.ek = mul nuw nsw i64 %i.h, 12                ; 3 uses
  %i.el = or disjoint i64 %i.ek, 3
  %exitcond.12 = icmp eq i64 %4, 12
  br i1 %exitcond.12, label %bb.d, label %bb.f, !prof !177

bb.f:                                             ; preds = %bb.e
  %i.em = lshr i32 %i.f, 24
  %i.en = and i32 %i.em, 3
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek
  %i.eq = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ep, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.eq, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.er = mul nuw nsw i64 %i.h, 13                ; 3 uses
  %i.es = add nuw nsw i64 %i.er, 3
  %exitcond.13 = icmp eq i64 %4, 13
  br i1 %exitcond.13, label %bb.d, label %bb.g, !prof !177

bb.g:                                             ; preds = %bb.f
  %i.et = lshr i32 %i.f, 26
  %i.eu = and i32 %i.et, 3
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %i.er
  %i.ex = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ev
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ew, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ex, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.ey = mul nuw nsw i64 %i.h, 14                ; 3 uses
  %i.ez = add nuw nsw i64 %i.ey, 3
  %exitcond.14 = icmp eq i64 %4, 14
  br i1 %exitcond.14, label %bb.d, label %bb.h, !prof !177

bb.h:                                             ; preds = %bb.g
  %i.fa = lshr i32 %i.f, 28
  %i.fb = and i32 %i.fa, 3
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 %i.ey
  %i.fe = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.fc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fd, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fe, i64 3, i1 false), !alias.scope !983, !noalias !987
  %i.ff = mul nuw nsw i64 %i.h, 15                ; 3 uses
  %i.fg = add nuw nsw i64 %i.ff, 3
  %exitcond.15 = icmp eq i64 %4, 15
  br i1 %exitcond.15, label %bb.d, label %bb.i, !prof !177

bb.i:                                             ; preds = %bb.h
  %i.fh = lshr i32 %i.f, 30
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ff
  %i.fk = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.fi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fk, i64 3, i1 false), !alias.scope !983, !noalias !987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsa5QsYiPB8Gl_5image6codecs3hdr7decoder16limit_string_len(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 4, 21) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.d = icmp ult i64 %2, 32
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_RNvNtNtCsj6eKBz9Db1c_4core3str5count14do_count_chars(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_RNvNtNtCsj6eKBz9Db1c_4core3str5count23char_count_general_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  br label %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  %i.g = icmp ugt i64 %.sroa.0.0.i, %3
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.h = load i64, ptr %i.b, align 8, !range !166, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !299, !noundef !5 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.p, label %bb.q, !prof !177

bb.e:                                             ; preds = %_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !989
  store i64 0, ptr %i.a, align 8, !noalias !989
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 6 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !989
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !989
  %i.m = lshr i64 %2, 2
  %i.n = and i64 %2, 3
  %.not.i.i.i.i.i = icmp ne i64 %i.n, 0
  %i.o = zext i1 %.not.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = add nuw nsw i64 %i.m, %i.o
  %..i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %3, i64 %.sroa.0.0.i.i.i.i.i)
  %i.p = add nuw nsw i64 %..i.i.i.i.i, 1
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.p)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !989

.noexc4.i:                                        ; preds = %bb.e, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i
  %i.q = phi i64 [ %i.cp, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i ], [ %3, %bb.e ] ; 2 uses
  %i.r = phi ptr [ %i.cq, %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i ], [ %1, %bb.e ] ; 6 uses
  %.not.i.not.not.not.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, %i.c
  br i1 %.not.i.not.not.not.i.not.i.i.i.i.i.i.i, label %.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge, label %bb.f

.noexc4.i._RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i_crit_edge: ; preds = %.noexc4.i
  %.pre = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !993, !noalias !1004
  br label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB5_4TakeNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduQNCINvNvB1n_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB2B_6StringINtNtB1r_7collect6ExtendcE6extendINtNtB7_5chain5ChainBN_BY_EE0E0ECsa5QsYiPB8Gl_5image.exit.i.i.thread22.i.i

bb.f:                                             ; preds = %.noexc4.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 3 uses
  %i.t = load i8, ptr %i.r, align 1, !noalias !1008, !noundef !5 ; 5 uses
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %.thread.i.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.v = and i8 %i.t, 31
  %i.w = zext nneg i8 %i.v to i32                 ; 3 uses
  %i.x = icmp ne ptr %i.s, %i.c
  call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 3 uses
  %i.z = load i8, ptr %i.s, align 1, !noalias !1008, !noundef !5
  %i.aa = shl nuw nsw i32 %i.w, 6
  %i.ab = and i8 %i.z, 63
  %i.ac = zext nneg i8 %i.ab to i32               ; 2 uses
  %i.ad = or disjoint i32 %i.aa, %i.ac
  %i.ae = icmp samesign ugt i8 %i.t, -33
  br i1 %i.ae, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i, label %bb.g

.thread.i.i.i.i.i.i.i.i:                          ; preds = %bb.f
  %i.af = zext nneg i8 %i.t to i32
  %i.ag = add i64 %i.q, -1
  %i.ah = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1023, !noalias !1026, !noundef !5 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  br label %bb.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i
  %i.aj = icmp ne ptr %i.y, %i.c
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 3 uses
  %i.al = load i8, ptr %i.y, align 1, !noalias !1008, !noundef !5
  %i.am = shl nuw nsw i32 %i.ac, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.w, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.t, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i, label %bb.g

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i
  %i.at = icmp ne ptr %i.ak, %i.c
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.av = load i8, ptr %i.ak, align 1, !noalias !1008, !noundef !5
  %i.aw = shl nuw nsw i32 %i.w, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ap, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.ak, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.au, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %spec.select.i.ph.i.i.i.i.i.i.i.i = phi i32 [ %i.ar, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit14.i.i.i.i.i.i.i.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit16.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit12.i.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.be = add i64 %i.q, -1                        ; 4 uses
  %i.bf = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1023, !noalias !1026, !noundef !5 ; 6 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 128
  br i1 %i.bh, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 2048 ; 2 uses
  %i.bj = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 65536 ; 2 uses
  %..i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bj, i64 3, i64 4
  %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bi, i64 2, i64 %..i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !989

.noexc5.i:                                        ; preds = %bb.h
  %i.bk = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1023, !noalias !1026, !nonnull !5, !noundef !5
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 9 uses
  %i.bm = trunc i32 %spec.select.i.ph.i.i.i.i.i.i.i.i to i8
  %i.bn = and i8 %i.bm, 63
  %i.bo = or disjoint i8 %i.bn, -128              ; 3 uses
  %i.bp = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 6
  %i.bq = trunc i32 %i.bp to i8                   ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = or disjoint i8 %i.br, -128              ; 2 uses
  %i.bt = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 12
  %i.bu = trunc i32 %i.bt to i8                   ; 2 uses
  %i.bv = and i8 %i.bu, 63
  %i.bw = or disjoint i8 %i.bv, -128
  %i.bx = lshr i32 %spec.select.i.ph.i.i.i.i.i.i.i.i, 18
  %i.by = trunc nuw nsw i32 %i.bx to i8
  %i.bz = or disjoint i8 %i.by, -16
  br i1 %i.bi, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.g, %.thread.i.i.i.i.i.i.i.i
  %i.ca = phi i64 [ %i.ah, %.thread.i.i.i.i.i.i.i.i ], [ %i.bf, %bb.g ] ; 2 uses
  %i.cb = phi i64 [ %i.ag, %.thread.i.i.i.i.i.i.i.i ], [ %i.be, %bb.g ]
  %spec.select.i.ph16.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %.thread.i.i.i.i.i.i.i.i ], [ %spec.select.i.ph.i.i.i.i.i.i.i.i, %bb.g ]
  %i.cc = phi ptr [ %i.s, %.thread.i.i.i.i.i.i.i.i ], [ %i.bd, %bb.g ]
  invoke void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !989

.noexc6.i:                                        ; preds = %bb.i
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1023, !noalias !1026, !nonnull !5, !noundef !5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ca
  %i.cf = trunc nuw nsw i32 %spec.select.i.ph16.i.i.i.i.i.i.i.i to i8
  store i8 %i.cf, ptr %i.ce, align 1, !noalias !1026
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.noexc5.i
  %i.cg = or disjoint i8 %i.bq, -64
  store i8 %i.cg, ptr %i.bl, align 1, !noalias !1026
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bo, ptr %i.ch, align 1, !noalias !1026
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %.noexc5.i
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ci = or disjoint i8 %i.bu, -32
  store i8 %i.ci, ptr %i.bl, align 1, !noalias !1026
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 %i.bs, ptr %i.cj, align 1, !noalias !1026
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i8 %i.bo, ptr %i.ck, align 1, !noalias !1026
  br label %_RNCINvNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtB9_4TakepENtNtNtBd_6traits8iterator8Iterator8try_fold5checkcuINtNtNtBf_3ops9try_trait17NeverShortCircuituENCINvMB1W_B1T_10wrap_mut_2ucQNCINvNvB14_8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB3E_6StringINtNtB18_7collect6ExtendcE6extendINtNtBb_5chain5ChainIBS_NtNtNtBf_3str4iter5CharsEB5f_EE0E0E0E0Csa5QsYiPB8Gl_5image.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  store i8 %i.bz, ptr %i.bl, align 1, !noalias !1026
end_hunk_0
