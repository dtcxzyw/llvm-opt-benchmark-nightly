Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.15?download=true
inline.NumInlined: 862
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt15decode_dxt5_row:bb.a
  %i.bo = add nuw nsw i16 %i.bn, %i.bm
  %i.bp = udiv i16 %i.bo, 7
  %i.bq = mul nuw nsw i16 %i.ak, 6
  %i.br = add nuw nsw i16 %i.bq, %i.ao
  %i.bs = udiv i16 %i.br, 7
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = shl nuw i64 %i.bt, 56
  %i.bv = zext nneg i16 %i.bp to i64
  %i.bw = shl nuw nsw i64 %i.bv, 48
  %i.bx = add nuw nsw i64 %i.bu, %i.bw
  br label %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit

_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit: ; preds = %.preheader9.i.i, %.preheader.i.i
  %.sroa.15.0.insert.insert.i.i = phi i64 [ %i.bx, %.preheader.i.i ], [ -72057594037927936, %.preheader9.i.i ]
  %i.by = phi <4 x i16> [ %i.bl, %.preheader.i.i ], [ %i.az, %.preheader9.i.i ] ; 4 uses
  %i.bz = zext i8 %.val.i.i to i64                ; 3 uses
  %i.ca = shl nuw nsw i64 %i.bz, 16
  %i.cb = zext i8 %.val.i.1.i to i64              ; 3 uses
  %i.cc = shl nuw nsw i64 %i.cb, 8
  %i.cd = or disjoint i64 %i.cc, %i.ca            ; 2 uses
  %i.ce = zext i8 %.val.i.2.i to i64              ; 3 uses
  %i.cf = or disjoint i64 %i.cd, %i.ce            ; 2 uses
  %i.cg = shl nuw nsw i64 %i.cf, 16
  %i.ch = zext i8 %.val.i.3.i to i64              ; 3 uses
  %i.ci = shl nuw nsw i64 %i.ch, 8
  %i.cj = zext i8 %.val.i.4.i to i64              ; 3 uses
  %i.ck = or disjoint i64 %i.ci, %i.cg
  %i.cl = or disjoint i64 %i.ck, %i.cj            ; 2 uses
  %i.cm = shl nuw nsw i64 %i.cl, 8
  %i.cn = zext i8 %.val.i.5.i to i64              ; 3 uses
  %i.co = or disjoint i64 %i.cm, %i.cn
  %i.cp = extractelement <4 x i16> %i.by, i64 0
  %.sroa.12.0.insert.ext.i.i = zext nneg i16 %i.cp to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.12.0.insert.ext.i.i, 40
  %i.cq = extractelement <4 x i16> %i.by, i64 1
  %.sroa.9.0.insert.ext.i.i = zext nneg i16 %i.cq to i64
  %.sroa.9.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i, 32
  %i.cr = extractelement <4 x i16> %i.by, i64 2
  %.sroa.6.0.insert.ext.i.i = zext nneg i16 %i.cr to i64
  %.sroa.6.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i, 24
  %i.cs = extractelement <4 x i16> %i.by, i64 3
  %.sroa.3.0.insert.ext.i.i = zext nneg i16 %i.cs to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 16
  %.sroa.9.0.insert.insert.masked.masked.masked.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %i.ai
  %.sroa.3.0.insert.mask.masked.masked.i.i = or i64 %.sroa.9.0.insert.insert.masked.masked.masked.i.i, %.sroa.9.0.insert.shift.i.i
  %.sroa.2.0.insert.mask.masked.i.i = or i64 %.sroa.3.0.insert.mask.masked.masked.i.i, %.sroa.15.0.insert.insert.i.i
  %.sroa.0.0.insert.mask.i.i = or i64 %.sroa.2.0.insert.mask.masked.i.i, %.sroa.6.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or i64 %.sroa.0.0.insert.mask.i.i, %.sroa.3.0.insert.shift.i.i
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.a, align 8, !noalias !984
  %i.ct = and i64 %i.cn, 7
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !984, !noundef !5
  store i8 %i.cv, ptr %i.h, align 1, !alias.scope !983, !noalias !982
  %i.cw = lshr i64 %i.cn, 3
  %i.cx = and i64 %i.cw, 7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !984, !noundef !5
  store i8 %i.cz, ptr %i.i, align 1, !alias.scope !983, !noalias !982
  %i.da = lshr i64 %i.co, 6
  %i.db = and i64 %i.da, 7
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !984, !noundef !5
  store i8 %i.dd, ptr %i.j, align 1, !alias.scope !983, !noalias !982
  %i.de = lshr i64 %i.cj, 1
  %i.df = and i64 %i.de, 7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !noalias !984, !noundef !5
  store i8 %i.dh, ptr %i.k, align 1, !alias.scope !983, !noalias !982
  %i.di = lshr i64 %i.cj, 4
  %i.dj = and i64 %i.di, 7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !noalias !984, !noundef !5
  store i8 %i.dl, ptr %i.l, align 1, !alias.scope !983, !noalias !982
  %i.dm = lshr i64 %i.cl, 7
  %i.dn = and i64 %i.dm, 7
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !noalias !984, !noundef !5
  store i8 %i.dp, ptr %i.m, align 1, !alias.scope !983, !noalias !982
  %i.dq = lshr i64 %i.ch, 2
  %i.dr = and i64 %i.dq, 7
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !noalias !984, !noundef !5
  store i8 %i.dt, ptr %i.n, align 1, !alias.scope !983, !noalias !982
  %i.du = lshr i64 %i.ch, 5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !984, !noundef !5
  store i8 %i.dw, ptr %i.o, align 1, !alias.scope !983, !noalias !982
  %i.dx = and i64 %i.ce, 7
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !noalias !984, !noundef !5
  store i8 %i.dz, ptr %i.p, align 1, !alias.scope !983, !noalias !982
  %i.ea = lshr i64 %i.ce, 3
  %i.eb = and i64 %i.ea, 7
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !984, !noundef !5
  store i8 %i.ed, ptr %i.q, align 1, !alias.scope !983, !noalias !982
  %i.ee = lshr i64 %i.cf, 6
  %i.ef = and i64 %i.ee, 7
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !noalias !984, !noundef !5
  store i8 %i.eh, ptr %i.r, align 1, !alias.scope !983, !noalias !982
  %i.ei = lshr i64 %i.cb, 1
  %i.ej = and i64 %i.ei, 7
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !noalias !984, !noundef !5
  store i8 %i.el, ptr %i.s, align 1, !alias.scope !983, !noalias !982
  %i.em = lshr i64 %i.cb, 4
  %i.en = and i64 %i.em, 7
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !noalias !984, !noundef !5
  store i8 %i.ep, ptr %i.t, align 1, !alias.scope !983, !noalias !982
  %i.eq = lshr i64 %i.cd, 15
  %i.er = and i64 %i.eq, 7
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !noalias !984, !noundef !5
  store i8 %i.et, ptr %i.u, align 1, !alias.scope !983, !noalias !982
  %i.eu = lshr i64 %i.bz, 2
  %i.ev = and i64 %i.eu, 7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !noalias !984, !noundef !5
  store i8 %i.ex, ptr %i.v, align 1, !alias.scope !983, !noalias !982
  %i.ey = lshr i64 %i.bz, 5
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !noalias !984, !noundef !5
  store i8 %i.fa, ptr %i.w, align 1, !alias.scope !983, !noalias !982
  %.ptr6.i = getelementptr inbounds nuw i8, ptr %.sroa.0.023, i64 8
  call fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ptr6.i, ptr noalias nofree noundef nonnull %i.b, i64 noundef 64, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !984
  %i.fb = shl nuw nsw i64 %.sroa.10.021, 4        ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.10.021, %i.x
  br i1 %exitcond.not, label %bb.h, label %bb.i, !prof !30

._crit_edge:                                      ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.k, %bb.j, %bb.i, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %.lcssa = phi i64 [ %i.fb, %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit ], [ %i.ff, %bb.i ], [ %i.fj, %bb.j ], [ %i.fm, %bb.k ] ; 2 uses
  %i.fc = add i64 %.lcssa, 16
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.fc, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #28
  unreachable

bb.i:                                             ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt5_block.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 %i.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fd, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fe = add nuw nsw i64 %i.e, %.sroa.10.021
  %i.ff = shl nuw i64 %i.fe, 4                    ; 3 uses
  %i.fg = or disjoint i64 %i.ff, 15
  %or.cond.not.1 = icmp ult i64 %i.fg, %3
  br i1 %or.cond.not.1, label %bb.j, label %bb.h, !prof !25

bb.j:                                             ; preds = %bb.i
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fh, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.y, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fi = add nuw nsw i64 %i.z, %.sroa.10.021
  %i.fj = shl i64 %i.fi, 4                        ; 3 uses
  %or.cond.not.2 = icmp ult i64 %i.fj, %invariant.op
  br i1 %or.cond.not.2, label %bb.k, label %bb.h, !prof !25

bb.k:                                             ; preds = %bb.j
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %i.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.aa, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fl = add nuw nsw i64 %i.ab, %.sroa.10.021
  %i.fm = shl i64 %i.fl, 4                        ; 3 uses
  %i.fn = or disjoint i64 %i.fm, 15
  %or.cond.not.3 = icmp ult i64 %i.fn, %3
  br i1 %or.cond.not.3, label %.loopexit, label %bb.h, !prof !25

.loopexit:                                        ; preds = %bb.k
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 %i.fm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fo, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ac, i64 16, i1 false), !alias.scope !985, !noalias !986
  %i.fp = icmp eq i64 %i.ae, 0
  br i1 %i.fp, label %._crit_edge, label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsa5QsYiPB8Gl_5image6codecs3dxt17decode_dxt_colors(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef nonnull writeonly captures(none) %1, i64 noundef range(i64 48, 65) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 27 uses
  %.off = add nsw i64 %2, -49
  %switch = icmp ult i64 %.off, 15
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sink.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br i1 %switch, label %bb.b, label %bb.c, !prof !991

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
  %i.h = lshr i64 %2, 4                           ; 15 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.i, i8 0, i64 6, i1 false)
  %i.j = load i8, ptr %0, align 1, !noundef !5
  %i.k = load i8, ptr %i.b, align 1, !noundef !5
  %i.l = load i8, ptr %i.c, align 1, !noundef !5
  %i.m = load i8, ptr %i.d, align 1, !noundef !5
  %i.n = zext i8 %i.j to i16                      ; 2 uses
  %i.o = zext i8 %i.k to i16                      ; 2 uses
  %4 = shl nuw i16 %i.o, 8
  %5 = or disjoint i16 %4, %i.n                   ; 2 uses
  %6 = zext i8 %i.l to i16                        ; 2 uses
  %7 = zext i8 %i.m to i16                        ; 2 uses
  %i.p = shl nuw i16 %7, 8
  %i.q = or disjoint i16 %i.p, %6                 ; 2 uses
  %i.r = lshr i16 %i.o, 3
  %i.s = lshr i16 %5, 5
  %i.t = lshr i16 %7, 3
  %8 = insertelement <4 x i16> poison, i16 %i.r, i64 0
  %i.u = insertelement <4 x i16> %8, i16 %i.s, i64 1
  %i.v = insertelement <4 x i16> %i.u, i16 %i.n, i64 2
  %i.w = insertelement <4 x i16> %i.v, i16 %i.t, i64 3 ; 2 uses
  %9 = and <4 x i16> %i.w, <i16 -1, i16 63, i16 31, i16 -1>
  %10 = lshr i16 %i.q, 5
  %i.x = shufflevector <4 x i16> %i.w, <4 x i16> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 0>
  %i.y = insertelement <4 x i16> %i.x, i16 %10, i64 1
  %i.z = insertelement <4 x i16> %i.y, i16 %6, i64 2
  %i.aa = and <4 x i16> %i.z, <i16 -1, i16 63, i16 31, i16 -1>
  %i.ab = mul nuw nsw <4 x i16> %9, <i16 255, i16 85, i16 255, i16 255>
  %i.ac = mul nuw nsw <4 x i16> %i.aa, <i16 255, i16 85, i16 255, i16 255>
  %i.ad = udiv <4 x i16> %i.ab, <i16 31, i16 21, i16 31, i16 31> ; 5 uses
  %i.ae = udiv <4 x i16> %i.ac, <i16 31, i16 21, i16 31, i16 31> ; 9 uses
  %i.af = bitcast <4 x i16> %i.ae to <8 x i8>
  %i.ag = extractelement <8 x i8> %i.af, i64 2
  %i.ah = bitcast <4 x i16> %i.ae to <8 x i8>
  %i.ai = extractelement <8 x i8> %i.ah, i64 4
  %i.aj = shufflevector <4 x i16> %i.ae, <4 x i16> %i.ad, <4 x i32> <i32 3, i32 5, i32 6, i32 0>
  %i.ak = trunc <4 x i16> %i.aj to <4 x i8>
  store <4 x i8> %i.ak, ptr %i.a, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ag, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.ai, ptr %.sroa.53.0..sroa_idx, align 1
  %i.al = icmp ule i16 %5, %i.q
  %brmerge.not = and i1 %3, %i.al
  br i1 %brmerge.not, label %.preheader, label %.preheader22

.preheader22:                                     ; preds = %bb.c
  %i.am = shl nuw nsw <4 x i16> %i.ad, splat (i16 1)
  %i.an = add nuw nsw <4 x i16> %i.ae, splat (i16 1)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ap = add nuw nsw <4 x i16> %i.an, %i.am
  %i.aq = udiv <4 x i16> %i.ap, splat (i16 3)
  %i.ar = trunc <4 x i16> %i.aq to <4 x i8>
  store <4 x i8> %i.ar, ptr %i.g, align 2
  %i.as = shufflevector <4 x i16> %i.ae, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.at = shl nuw nsw <2 x i16> %i.as, splat (i16 1)
  %i.au = shufflevector <4 x i16> %i.ad, <4 x i16> poison, <2 x i32> <i32 1, i32 2>
  %i.av = add nuw nsw <2 x i16> %i.au, splat (i16 1)
  %i.aw = add nuw nsw <2 x i16> %i.av, %i.at
  %i.ax = udiv <2 x i16> %i.aw, splat (i16 3)     ; 2 uses
  %i.ay = bitcast <2 x i16> %i.ax to <4 x i8>
  %i.az = extractelement <4 x i8> %i.ay, i64 0
  store i8 %i.az, ptr %i.ao, align 2
  %i.ba = extractelement <2 x i16> %i.ax, i64 1
  br label %bb.e

.preheader:                                       ; preds = %bb.c
  %shift = shufflevector <4 x i16> %i.ae, <4 x i16> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nuw nsw <4 x i16> %i.ae, %shift
  %i.bb = extractelement <4 x i16> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bc = lshr i16 %i.bb, 1
  %.sroa.08.0 = sub nsw i16 %i.bb, %i.bc
  %i.bd = trunc i16 %.sroa.08.0 to i8
  store i8 %i.bd, ptr %i.g, align 2
  %foldExtExtBinop2 = add nuw nsw <4 x i16> %i.ae, %i.ad
  %i.be = extractelement <4 x i16> %foldExtExtBinop2, i64 1 ; 2 uses
  %i.bf = lshr i16 %i.be, 1
  %.sroa.08.0.1 = sub nsw i16 %i.be, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bh = trunc i16 %.sroa.08.0.1 to i8
  store i8 %i.bh, ptr %i.bg, align 1
  %foldExtExtBinop4 = add nuw nsw <4 x i16> %i.ae, %i.ad
  %i.bi = extractelement <4 x i16> %foldExtExtBinop4, i64 2 ; 2 uses
  %i.bj = lshr i16 %i.bi, 1
  %.sroa.08.0.2 = sub nsw i16 %i.bi, %i.bj
  br label %bb.e

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.lcssa30 = phi i64 [ %i.ew, %bb.h ], [ %i.ep, %bb.g ], [ %i.ei, %bb.f ], [ %i.eb, %bb.e ]
  %.lcssa = phi i64 [ %i.ex, %bb.h ], [ %i.eq, %bb.g ], [ %i.ej, %bb.f ], [ %i.ec, %bb.e ]
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa30, i64 noundef %.lcssa, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @75) #28
  unreachable

bb.e:                                             ; preds = %.preheader22, %.preheader
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.preheader22 ], [ %.sink.sroa.gep6, %.preheader ]
  %.sink48 = phi i16 [ %i.ba, %.preheader22 ], [ %.sroa.08.0.2, %.preheader ]
  %i.bk = trunc i16 %.sink48 to i8
  store i8 %i.bk, ptr %.sink.sroa.phi, align 1
  %i.bl = and i32 %i.f, 3
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %1, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.bn, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.bo = lshr i32 %i.f, 2
  %i.bp = and i32 %i.bo, 3
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.bs = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.br, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.bs, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.bt = shl nuw nsw i64 %i.h, 1
  %i.bu = lshr i32 %i.f, 4
  %i.bv = and i32 %i.bu, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %i.bt
  %i.by = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bx, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.by, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.bz = mul nuw nsw i64 %i.h, 3
  %i.ca = lshr i32 %i.f, 6
  %i.cb = and i32 %i.ca, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bz
  %i.ce = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cd, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ce, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cf = shl nuw nsw i64 %i.h, 2
  %i.cg = lshr i32 %i.f, 8
  %i.ch = and i32 %i.cg, 3
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf
  %i.ck = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ck, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cl = mul nuw nsw i64 %i.h, 5
  %i.cm = lshr i32 %i.f, 10
  %i.cn = and i32 %i.cm, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 %i.cl
  %i.cq = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cp, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cq, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cr = mul nuw nsw i64 %i.h, 6
  %i.cs = lshr i32 %i.f, 12
  %i.ct = and i32 %i.cs, 3
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.cw = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cv, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.cw, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.cx = mul nuw nsw i64 %i.h, 7
  %i.cy = lshr i32 %i.f, 14
  %i.cz = and i32 %i.cy, 3
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 %i.cx
  %i.dc = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.db, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.dc, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.dd = shl nuw nsw i64 %i.h, 3
  %i.de = lshr i32 %i.f, 16
  %i.df = and i32 %i.de, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.di = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dh, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.di, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.dj = mul nuw nsw i64 %i.h, 9
  %i.dk = lshr i32 %i.f, 18
  %i.dl = and i32 %i.dk, 3
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.dj
  %i.do = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dn, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.do, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.dp = mul nuw nsw i64 %i.h, 10
  %i.dq = lshr i32 %i.f, 20
  %i.dr = and i32 %i.dq, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %i.dp
  %i.du = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ds
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dt, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.du, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.dv = mul nuw nsw i64 %i.h, 11
  %i.dw = lshr i32 %i.f, 22
  %i.dx = and i32 %i.dw, 3
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  %i.ea = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.dz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ea, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.eb = mul nuw nsw i64 %i.h, 12                ; 3 uses
  %i.ec = or disjoint i64 %i.eb, 3                ; 2 uses
  %.not21.12 = icmp samesign ugt i64 %i.ec, %2
  br i1 %.not21.12, label %bb.d, label %bb.f, !prof !21

bb.f:                                             ; preds = %bb.e
  %i.ed = lshr i32 %i.f, 24
  %i.ee = and i32 %i.ed, 3
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.eb
  %i.eh = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ef
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.eg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.eh, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ei = mul nuw nsw i64 %i.h, 13                ; 3 uses
  %i.ej = add nuw nsw i64 %i.ei, 3                ; 2 uses
  %.not21.13 = icmp samesign ugt i64 %i.ej, %2
  br i1 %.not21.13, label %bb.d, label %bb.g, !prof !21

bb.g:                                             ; preds = %bb.f
  %i.ek = lshr i32 %i.f, 26
  %i.el = and i32 %i.ek, 3
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.eo = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.en, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.eo, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ep = mul nuw nsw i64 %i.h, 14                ; 3 uses
  %i.eq = add nuw nsw i64 %i.ep, 3                ; 2 uses
  %.not21.14 = icmp samesign ugt i64 %i.eq, %2
  br i1 %.not21.14, label %bb.d, label %bb.h, !prof !21

bb.h:                                             ; preds = %bb.g
  %i.er = lshr i32 %i.f, 28
  %i.es = and i32 %i.er, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.ep
  %i.ev = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.et
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.eu, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ev, i64 3, i1 false), !alias.scope !992, !noalias !993
  %i.ew = mul nuw nsw i64 %i.h, 15                ; 3 uses
  %i.ex = add nuw nsw i64 %i.ew, 3                ; 2 uses
  %.not21.15 = icmp samesign ugt i64 %i.ex, %2
  br i1 %.not21.15, label %bb.d, label %bb.i, !prof !21

bb.i:                                             ; preds = %bb.h
  %i.ey = lshr i32 %i.f, 30
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.fb = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.fa, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.fb, i64 3, i1 false), !alias.scope !992, !noalias !993
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
end_hunk_0
begin_hunk_1_@_RNvXsq_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsj6eKBz9Db1c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYINtNtNtCsgidZRN39rux_6flate24zlib5write11ZlibEncoderINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_allCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.040 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.119, %bb.k ] ; 3 uses
  %.sroa.6.039 = phi i64 [ %2, %.lr.ph ], [ %.sroa.6.117, %bb.k ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1749
  call void @_RNvMs2_NtCsgidZRN39rux_6flate23zioINtB5_6WriterINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB7_3mem8CompressE17write_with_statusCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.040, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039)
  %i.f = load i8, ptr %i.d, align 8, !range !1750, !noalias !1749, !noundef !5
  %i.g = icmp eq i8 %i.f, -1
  %i.h = load ptr, ptr %i.b, align 8, !noalias !1749 ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1749
  %i.i = ptrtoint ptr %i.h to i64                 ; 8 uses
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.j = and i64 %i.i, 3
  switch i64 %i.j, label %default.unreachable [
    i64 2, label %bb.d
    i64 3, label %.split26
    i64 0, label %.split27
    i64 1, label %.split
  ], !prof !16

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  %i.l = lshr i64 %i.i, 32
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.p = invoke noundef zeroext i1 %i.o(i32 noundef %i.m)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.l, !inline_history !0

.split26:                                         ; preds = %bb.c
  %i.q = lshr i64 %i.i, 32
  %i.r = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.q to i8
  %spec.select.i.i.i = select i1 %i.r, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.s = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.t, label %bb.i, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split27:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.v = load i8, ptr %i.u, align 8, !range !23, !noundef !5
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

.split:                                           ; preds = %bb.c
  %i.x = getelementptr i8, ptr %i.h, i64 31
  %i.y = load i8, ptr %i.x, align 8, !range !23, !noundef !5
  %i.z = icmp eq i8 %i.y, 35
  br i1 %i.z, label %bb.j, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

bb.e:                                             ; preds = %bb.b
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %.sroa.6.039, %i.i
  br i1 %i.ab, label %bb.g, label %bb.h, !prof !21

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.i, i64 noundef %.sroa.6.039, i64 noundef %.sroa.6.039, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ac = sub nuw nsw i64 %.sroa.6.039, %i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.040, i64 %i.i
  br label %bb.k

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.p, label %.thread.thread, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge: ; preds = %bb.k, %bb.e, %.split27, %.split26, %.split, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.a
  %.sroa.07.1 = phi ptr [ null, %bb.a ], [ @136, %bb.e ], [ %i.h, %.split27 ], [ %i.h, %.split26 ], [ %i.h, %.split ], [ %i.h, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit ], [ null, %bb.k ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.i:                                             ; preds = %.split26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = icmp ult ptr %i.h, inttoptr (i64 188978561024 to ptr)
  %i.af = and i64 %i.i, 1095216660480
  %i.ag = icmp ne i64 %i.af, 1095216660480
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.assume(i1 %i.ag)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

bb.j:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ah = getelementptr i8, ptr %i.h, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  store ptr %i.ah, ptr %i.e, align 8, !alias.scope !1751
  store i8 3, ptr %i.a, align 8, !alias.scope !1751
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit: ; preds = %.thread.thread, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit
  %.sroa.0.119 = phi ptr [ %.sroa.0.040, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ad, %bb.h ]
  %.sroa.6.117 = phi i64 [ %.sroa.6.039, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image.exit ], [ %i.ac, %bb.h ] ; 2 uses
  %i.ai = icmp eq i64 %.sroa.6.117, 0
  br i1 %i.ai, label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error14is_interrupted.exit._crit_edge, label %bb.b

bb.l:                                             ; preds = %.noexc, %bb.d
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa5QsYiPB8Gl_5image(ptr nonnull %i.h) #31
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB7_4seek4Seek13seek_relativeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.07.0.i = load i64, ptr %i.a, align 8, !alias.scope !1754, !noundef !5 ; 2 uses
  %i.b = add i64 %.sroa.07.0.i, %1                ; 2 uses
  %i.c = icmp ult i64 %i.b, %.sroa.07.0.i
  %i.d = icmp slt i64 %1, 0
  %i.e = xor i1 %i.d, %i.c
  br i1 %i.e, label %_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit, label %.sink.split.i, !prof !21

.sink.split.i:                                    ; preds = %bb.a
  store i64 %i.b, ptr %i.a, align 8, !alias.scope !1754
  br label %_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit

_RNvXs4_NtNtCsj6eKBz9Db1c_4core2io6cursorINtB5_6CursorRShENtNtB7_4seek4Seek4seekCsa5QsYiPB8Gl_5image.exit: ; preds = %.sink.split.i, %bb.a
  %.sroa.0.0 = phi ptr [ @114, %bb.a ], [ null, %.sink.split.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden noalias noundef ptr @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtB7_4seek4Seek6rewindCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(24) initializes((16, 24)) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.a, align 8, !alias.scope !1757
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvYINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32BV_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 16               ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 5 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store i8 1, ptr %i.o, align 8
  %2 = getelementptr inbounds nuw i8, ptr %i.m, i64 9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %2, ptr %i.f, align 16
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.n, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val1.i.i.i.i.i.i30.i180 = load i64, ptr %i.r, align 8, !alias.scope !1792, !noalias !1793, !noundef !5
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !1792, !noalias !1793, !noundef !5 ; 2 uses
  %i.u = icmp ugt i64 %.val1.i.i.i.i.i.i30.i180, %i.t
  br i1 %i.u, label %.lr.ph.i.lr.ph, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.z

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %i.x = insertelement <2 x ptr> poison, ptr %2, i64 0
  %i.y = insertelement <2 x ptr> %i.x, ptr %i.o, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98
  %i.z = phi i64 [ %i.t, %.lr.ph.i.lr.ph ], [ %i.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %i.aa = phi ptr [ %i.s, %.lr.ph.i.lr.ph ], [ %i.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ] ; 3 uses
  %i.ab = phi ptr [ %i.r, %.lr.ph.i.lr.ph ], [ %i.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %.val94183 = phi ptr [ %1, %.lr.ph.i.lr.ph ], [ %.val94, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ]
  %.sroa.0.0182 = phi i8 [ 0, %.lr.ph.i.lr.ph ], [ %.sroa.0.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ] ; 2 uses
  %.sroa.047.0181 = phi i32 [ 0, %.lr.ph.i.lr.ph ], [ %.sroa.047.1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ac = phi i64 [ %i.z, %.lr.ph.i ], [ %i.am, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.val94183, align 8, !alias.scope !1796, !noalias !1797, !nonnull !5, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !1798, !noundef !5 ; 8 uses
  %.sink2.i.i.i.i = add nuw i64 %i.ac, 1
  store i64 %.sink2.i.i.i.i, ptr %i.aa, align 8, !alias.scope !1795, !noalias !1799
  call void @llvm.experimental.noalias.scope.decl(metadata !1800)
  %i.af = load ptr, ptr %i.p, align 8, !alias.scope !1801, !noalias !1802, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !range !10, !alias.scope !1803, !noalias !1804, !noundef !5
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i8 %i.ae, 35
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ai = icmp eq i8 %i.ae, 13
  br i1 %i.ai, label %bb.e, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.d, %bb.c
  %i.aj = icmp eq i8 %i.ae, 10
  %i.ak = zext i1 %i.aj to i8
  br label %bb.e

bb.e:                                             ; preds = %.thread.i.i.i, %bb.d, %bb.c
  %.sroa.01.1.i.i.i = phi i8 [ 0, %.thread.i.i.i ], [ 1, %bb.c ], [ 0, %bb.d ]
  %.sroa.03.0.i.i.i = phi i8 [ %i.ak, %.thread.i.i.i ], [ 1, %bb.c ], [ 1, %bb.d ]
  store i8 %.sroa.03.0.i.i.i, ptr %i.af, align 1, !alias.scope !1803, !noalias !1804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1805
  store i8 %.sroa.01.1.i.i.i, ptr %i.a, align 8, !noalias !1805
  store i8 0, ptr %.sroa.410.sroa.4.0..sroa.410.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !1805
  store i8 %i.ae, ptr %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !1805
  %i.al = call noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvYINtNtNtBb_2io6cursor6CursorRShENtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12HeaderReader13read_next_u32s_0INtB7_5FnMutTRTbINtNtBb_6result6ResulthNtNtBY_5error5ErrorEEEE8call_mutB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !1806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1805
  br i1 %i.al, label %bb.g, label %bb.f

common.resume:                                    ; preds = %bb.l
  resume { ptr, i32 } %lpad.phi

bb.f:                                             ; preds = %bb.e
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !alias.scope !1807, !noalias !1797, !noundef !5
  %i.am = load i64, ptr %i.aa, align 8, !alias.scope !1807, !noalias !1797, !noundef !5 ; 3 uses
  %i.an = icmp ugt i64 %.val1.i.i.i.i.i.i.i, %i.am
  br i1 %i.an, label %bb.b, label %.loopexit

.thread136:                                       ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.aa

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  switch i8 %i.ae, label %bb.h [
    i8 9, label %bb.i
    i8 10, label %bb.i
    i8 11, label %bb.i
    i8 12, label %bb.i
    i8 13, label %bb.i
    i8 32, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ao = icmp sgt i8 %i.ae, -1
  br i1 %i.ao, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.ap = trunc nuw i8 %.sroa.0.0182 to i1
  br i1 %i.ap, label %.thread136, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit98: ; preds = %bb.v, %bb.i
  %.sroa.047.1 = phi i32 [ %i.bb, %bb.v ], [ %.sroa.047.0181, %bb.i ] ; 2 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.v ], [ 0, %bb.i ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store <2 x ptr> %i.y, ptr %i.f, align 16
  store ptr %i.n, ptr %i.q, align 16
  %.val94 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val94, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val94, i64 16 ; 3 uses
  %.val1.i.i.i.i.i.i30.i = load i64, ptr %i.aq, align 8, !alias.scope !1792, !noalias !1808, !noundef !5
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !1792, !noalias !1808, !noundef !5 ; 3 uses
  %i.at = icmp ugt i64 %.val1.i.i.i.i.i.i30.i, %i.as
  br i1 %i.at, label %.lr.ph.i, label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.ae, ptr %i.au, align 1
  store i8 2, ptr %i.k, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.l, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.k)
          to label %bb.m unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.h
  %i.av = add nsw i8 %i.ae, -48                   ; 2 uses
  %or.cond = icmp ult i8 %i.av, 10
  br i1 %or.cond, label %bb.o, label %bb.n

.loopexit138:                                     ; preds = %bb.q, %bb.t
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.j, %bb.n, %bb.r, %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit138
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit138 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image(i8 0, ptr undef) #31
          to label %common.resume unwind label %bb.y

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101: ; preds = %bb.m, %bb.x, %bb.w, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ab

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 4, ptr %i.aw, align 1
  store i8 4, ptr %i.i, align 8
  invoke void @_RNvXs_NtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoderNtNtBa_5error10ImageErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtB4_12DecoderErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.i)
          to label %bb.p unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.k
  %i.ax = zext nneg i8 %i.av to i32
  %i.ay = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.047.0181, i32 10) ; 2 uses
  %i.az = extractvalue { i32, i1 } %i.ay, 0       ; 2 uses
  %i.ba = extractvalue { i32, i1 } %i.ay, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 4, ptr %i.v, align 1
  store i8 18, ptr %i.h, align 8
  br i1 %i.ba, label %bb.r, label %bb.q, !prof !21

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResulthNtNtNtB4_2io5error5ErrorEECsa5QsYiPB8Gl_5image.exit101

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsa5QsYiPB8Gl_5image6codecs3pnm7decoder12DecoderErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.h)
          to label %bb.s unwind label %.loopexit138

bb.r:                                             ; preds = %bb.o
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.v, i64 3, i1 false)
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.559.0.copyload = load i32, ptr %.sroa.559.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i8 18, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.sroa.559.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
end_hunk_1
