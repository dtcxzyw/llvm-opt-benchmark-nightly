Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/poly1305_sse2?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@poly1305_init_ext:bb.a
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.c, i64 %i.a, i64 20) ; 2 uses
  %i.f = and i64 %i.e, 17592181915647             ; 4 uses
  %i.g = lshr i64 %i.c, 24                        ; 2 uses
  %i.h = and i64 %i.g, 68719475727                ; 4 uses
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = trunc i64 %i.a to i32
  %i.k = and i32 %i.j, 67108863
  store i32 %i.k, ptr %i.i, align 4
  %i.l = lshr i64 %i.d, 26
  %i.m = shl nuw nsw i64 %i.f, 18
  %i.n = or disjoint i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 67108611
  %i.q = getelementptr i8, ptr %0, i64 44
  store i32 %i.p, ptr %i.q, align 4
  %i.r = lshr i64 %i.e, 8
  %i.s = trunc i64 %i.r to i32
  %i.t = and i32 %i.s, 67092735
  %i.u = getelementptr i8, ptr %0, i64 48
  store i32 %i.t, ptr %i.u, align 4
  %i.v = lshr i64 %i.f, 34
  %i.w = shl nuw nsw i64 %i.g, 10
  %i.x = or disjoint i64 %i.v, %i.w
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 66076671
  %i.aa = getelementptr i8, ptr %0, i64 52
  store i32 %i.z, ptr %i.aa, align 4
  %i.ab = lshr i64 %i.h, 16
  %i.ac = trunc nuw nsw i64 %i.ab to i32
  %i.ad = getelementptr i8, ptr %0, i64 56
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = getelementptr i8, ptr %0, i64 104
  %i.af = getelementptr i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 1
  store i64 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr i8, ptr %0, i64 112
  %i.ai = getelementptr i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 1
  store i64 %i.aj, ptr %i.ah, align 4
  %i.ak = getelementptr i8, ptr %0, i64 80
  %i.al = icmp ult i64 %spec.store.select, 17
  br i1 %i.al, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.am = icmp ult i64 %spec.store.select, 96
  %i.an = getelementptr i8, ptr %0, i64 60
  %i.ao = mul nuw nsw i64 %i.h, 20
  %i.ap = zext nneg i64 %i.d to i128              ; 3 uses
  %i.aq = mul nuw nsw i128 %i.ap, %i.ap
  %i.ar = shl nuw nsw i64 %i.f, 1
  %i.as = zext nneg i64 %i.ar to i128
  %i.at = zext nneg i64 %i.ao to i128             ; 2 uses
  %i.au = mul nuw nsw i128 %i.at, %i.as
  %i.av = add nuw nsw i128 %i.au, %i.aq           ; 2 uses
  %i.aw = zext nneg i64 %i.h to i128
  %i.ax = mul nuw nsw i128 %i.at, %i.aw
  %i.ay = shl nuw nsw i64 %i.d, 1
  %i.az = zext nneg i64 %i.ay to i128
  %i.ba = zext nneg i64 %i.f to i128              ; 3 uses
  %i.bb = mul nuw nsw i128 %i.az, %i.ba
  %i.bc = add nuw nsw i128 %i.ax, %i.bb
  %i.bd = mul nuw nsw i128 %i.ba, %i.ba
  %i.be = shl nuw nsw i64 %i.h, 1
  %i.bf = zext nneg i64 %i.be to i128
  %i.bg = mul nuw nsw i128 %i.bf, %i.ap
  %i.bh = add nuw nsw i128 %i.bg, %i.bd
  %i.bi = trunc i128 %i.av to i64
  %i.bj = and i64 %i.bi, 17592186044415
  %i.bk = lshr i128 %i.av, 44
  %i.bl = add nuw nsw i128 %i.bc, %i.bk           ; 2 uses
  %i.bm = trunc i128 %i.bl to i64
  %i.bn = and i64 %i.bm, 17592186044415
  %i.bo = lshr i128 %i.bl, 44
  %i.bp = add nuw nsw i128 %i.bh, %i.bo           ; 2 uses
  %i.bq = trunc i128 %i.bp to i64
  %i.br = and i64 %i.bq, 4398046511103
  %i.bs = lshr i128 %i.bp, 42
  %i.bt = trunc nuw nsw i128 %i.bs to i64
  %i.bu = mul nuw nsw i64 %i.bt, 5
  %i.bv = add nuw nsw i64 %i.bu, %i.bj            ; 3 uses
  %i.bw = lshr i64 %i.bv, 44
  %i.bx = and i64 %i.bv, 17592186044415           ; 3 uses
  %i.by = add nuw nsw i64 %i.bw, %i.bn            ; 4 uses
  %i.bz = lshr i64 %i.by, 44
  %i.ca = and i64 %i.by, 17592186044415           ; 3 uses
  %i.cb = add nuw nsw i64 %i.bz, %i.br            ; 5 uses
  %i.cc = trunc i64 %i.bv to i32
  %i.cd = and i32 %i.cc, 67108863
  store i32 %i.cd, ptr %i.an, align 4
  %i.ce = lshr i64 %i.bx, 26
  %i.cf = shl nuw nsw i64 %i.by, 18
  %i.cg = or disjoint i64 %i.cf, %i.ce
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = and i32 %i.ch, 67108863
  %i.cj = getelementptr i8, ptr %0, i64 64
  store i32 %i.ci, ptr %i.cj, align 4
  %i.ck = lshr i64 %i.by, 8
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = and i32 %i.cl, 67108863
  %i.cn = getelementptr i8, ptr %0, i64 68
  store i32 %i.cm, ptr %i.cn, align 4
  %i.co = lshr i64 %i.ca, 34
  %i.cp = shl nuw nsw i64 %i.cb, 10
  %i.cq = or disjoint i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = and i32 %i.cr, 67108863
  %i.ct = getelementptr i8, ptr %0, i64 72
  store i32 %i.cs, ptr %i.ct, align 4
  %i.cu = lshr i64 %i.cb, 16
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = getelementptr i8, ptr %0, i64 76
  store i32 %i.cv, ptr %i.cw, align 4
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cx = mul nuw nsw i64 %i.cb, 20
  %i.cy = zext nneg i64 %i.bx to i128             ; 3 uses
  %i.cz = mul nuw nsw i128 %i.cy, %i.cy
  %i.da = shl nuw nsw i64 %i.ca, 1
  %i.db = zext nneg i64 %i.da to i128
  %i.dc = zext nneg i64 %i.cx to i128             ; 2 uses
  %i.dd = mul nuw nsw i128 %i.dc, %i.db
  %i.de = add nuw nsw i128 %i.dd, %i.cz           ; 2 uses
  %i.df = zext nneg i64 %i.cb to i128
  %i.dg = mul nuw nsw i128 %i.dc, %i.df
  %i.dh = shl nuw nsw i64 %i.bx, 1
  %i.di = zext nneg i64 %i.dh to i128
  %i.dj = zext nneg i64 %i.ca to i128             ; 3 uses
  %i.dk = mul nuw nsw i128 %i.di, %i.dj
  %i.dl = add nuw nsw i128 %i.dg, %i.dk
  %i.dm = mul nuw nsw i128 %i.dj, %i.dj
  %i.dn = shl nuw nsw i64 %i.cb, 1
  %i.do = zext nneg i64 %i.dn to i128
  %i.dp = mul nuw nsw i128 %i.do, %i.cy
  %i.dq = add nuw nsw i128 %i.dp, %i.dm
  %i.dr = trunc i128 %i.de to i64
  %i.ds = and i64 %i.dr, 17592186044415
  %i.dt = lshr i128 %i.de, 44
  %i.du = add nuw nsw i128 %i.dl, %i.dt           ; 2 uses
  %i.dv = trunc i128 %i.du to i64
  %i.dw = and i64 %i.dv, 17592186044415
  %i.dx = lshr i128 %i.du, 44
  %i.dy = add nuw nsw i128 %i.dq, %i.dx           ; 2 uses
  %i.dz = trunc i128 %i.dy to i64
  %i.ea = and i64 %i.dz, 4398046511103
  %i.eb = lshr i128 %i.dy, 42
  %i.ec = trunc nuw nsw i128 %i.eb to i64
  %i.ed = mul nuw nsw i64 %i.ec, 5
  %i.ee = add nuw nsw i64 %i.ed, %i.ds            ; 3 uses
  %i.ef = lshr i64 %i.ee, 44
  %i.eg = add nuw nsw i64 %i.ef, %i.dw            ; 4 uses
  %i.eh = lshr i64 %i.eg, 44
  %i.ei = add nuw nsw i64 %i.eh, %i.ea            ; 2 uses
  %i.ej = trunc i64 %i.ee to i32
  %i.ek = and i32 %i.ej, 67108863
  store i32 %i.ek, ptr %i.ak, align 4
  %i.el = lshr i64 %i.ee, 26
  %i.em = and i64 %i.el, 262143
  %i.en = shl nuw nsw i64 %i.eg, 18
  %i.eo = or disjoint i64 %i.en, %i.em
  %i.ep = trunc i64 %i.eo to i32
  %i.eq = and i32 %i.ep, 67108863
  %i.er = getelementptr i8, ptr %0, i64 84
  store i32 %i.eq, ptr %i.er, align 4
  %i.es = lshr i64 %i.eg, 8
  %i.et = trunc i64 %i.es to i32
  %i.eu = and i32 %i.et, 67108863
  %i.ev = getelementptr i8, ptr %0, i64 88
  store i32 %i.eu, ptr %i.ev, align 4
  %i.ew = lshr i64 %i.eg, 34
  %i.ex = and i64 %i.ew, 1023
  %i.ey = shl nuw nsw i64 %i.ei, 10
  %i.ez = or disjoint i64 %i.ey, %i.ex
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = and i32 %i.fa, 67108863
  %i.fc = getelementptr i8, ptr %0, i64 92
  store i32 %i.fb, ptr %i.fc, align 4
  %i.fd = lshr i64 %i.ei, 16
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  %i.ff = getelementptr i8, ptr %0, i64 96
  store i32 %i.fe, ptr %i.ff, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.fg = getelementptr i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable
define internal fastcc void @poly1305_blocks(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef range(i64 1, -31) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 5 uses
  %i.c = and i64 %i.b, 4
  %.not = icmp eq i64 %i.c, 0
  %.0717 = select i1 %.not, <2 x i64> splat (i64 16777216), <2 x i64> <i64 16777216, i64 0>
  %i.d = and i64 %i.b, 8
  %.not751 = icmp eq i64 %i.d, 0
  %.1718 = select i1 %.not751, <2 x i64> %.0717, <2 x i64> zeroinitializer ; 4 uses
  %.not752 = trunc i64 %i.b to i1
  br i1 %.not752, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 1
  %i.f = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 1
  %i.i = insertelement <2 x i64> %i.f, i64 %i.h, i64 1 ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 1
  %i.l = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 1
  %i.o = insertelement <2 x i64> %i.l, i64 %i.n, i64 1 ; 2 uses
  %i.p = and <2 x i64> %i.i, splat (i64 67108863)
  %i.q = lshr <2 x i64> %i.i, splat (i64 26)
  %i.r = and <2 x i64> %i.q, splat (i64 67108863)
  %i.s = tail call <2 x i64> @llvm.fshl.v2i64(<2 x i64> %i.o, <2 x i64> %i.i, <2 x i64> splat (i64 12)) ; 2 uses
  %i.t = and <2 x i64> %i.s, splat (i64 67108863)
  %i.u = lshr <2 x i64> %i.s, splat (i64 26)
  %i.v = and <2 x i64> %i.u, splat (i64 67108863)
  %i.w = lshr <2 x i64> %i.o, splat (i64 40)
  %i.x = or disjoint <2 x i64> %i.w, %.1718
  %i.y = getelementptr i8, ptr %1, i64 32
  %i.z = add i64 %2, -32
  %i.aa = or disjoint i64 %i.b, 1                 ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = load <4 x i32>, ptr %0, align 8         ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 16
  %i.ad = load <4 x i32>, ptr %i.ac, align 8      ; 2 uses
  %i.ae = getelementptr i8, ptr %0, i64 32
  %i.af = load <2 x i32>, ptr %i.ae, align 8
  %i.ag = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ah = bitcast <4 x i32> %i.ag to <2 x i64>
  %i.ai = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.aj = bitcast <4 x i32> %i.ai to <2 x i64>
  %i.ak = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.al = bitcast <4 x i32> %i.ak to <2 x i64>
  %i.am = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ap = bitcast <4 x i32> %i.ao to <2 x i64>
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = phi i64 [ %i.b, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %.0734 = phi <2 x i64> [ %i.ap, %bb.c ], [ %i.x, %bb.b ] ; 2 uses
  %.0730 = phi <2 x i64> [ %i.an, %bb.c ], [ %i.v, %bb.b ] ; 2 uses
  %.0726 = phi <2 x i64> [ %i.al, %bb.c ], [ %i.t, %bb.b ] ; 2 uses
  %.0722 = phi <2 x i64> [ %i.aj, %bb.c ], [ %i.r, %bb.b ] ; 2 uses
  %.0719 = phi <2 x i64> [ %i.ah, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.0714 = phi i64 [ %2, %bb.c ], [ %i.z, %bb.b ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.c ], [ %i.y, %bb.b ]    ; 2 uses
  %i.ar = and i64 %i.aq, 48
  %.not753 = icmp eq i64 %i.ar, 0
  br i1 %.not753, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = and i64 %i.aq, 16
  %.not754 = icmp eq i64 %i.as, 0
  %i.at = getelementptr i8, ptr %0, i64 40
  %i.au = load <4 x i32>, ptr %i.at, align 8      ; 4 uses
  %i.av = getelementptr i8, ptr %0, i64 56
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  br i1 %.not754, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.aw, i64 0
  %i.ay = bitcast <4 x i32> %i.ax to <2 x i64>
  %i.az = getelementptr i8, ptr %0, i64 60
  %i.ba = load <4 x i32>, ptr %i.az, align 4      ; 2 uses
  %i.bb = getelementptr i8, ptr %0, i64 76
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.bc, i64 0
  %i.be = bitcast <4 x i32> %i.bd to <2 x i64>
  %i.bf = shufflevector <4 x i32> %i.ba, <4 x i32> %i.au, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bg = shufflevector <4 x i32> %i.ba, <4 x i32> %i.au, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bh = shufflevector <2 x i64> %i.be, <2 x i64> %i.ay, <2 x i32> <i32 0, i32 2>
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bi = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.aw, i64 0
  %i.bj = bitcast <4 x i32> %i.bi to <2 x i64>
  %i.bk = shufflevector <4 x i32> %i.au, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bl = shufflevector <4 x i32> %i.au, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0749 = phi <2 x i64> [ %i.bh, %bb.f ], [ %i.bj, %bb.g ]
  %.0744.in = phi <4 x i32> [ %i.bg, %bb.f ], [ %i.bl, %bb.g ] ; 2 uses
  %.0742.in = phi <4 x i32> [ %i.bf, %bb.f ], [ %i.bk, %bb.g ] ; 2 uses
  %i.bm = shufflevector <4 x i32> %.0742.in, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bn = shufflevector <4 x i32> %.0742.in, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  %i.bo = shufflevector <4 x i32> %.0744.in, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bp = shufflevector <4 x i32> %.0744.in, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 3, i32 3>
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.bq = getelementptr i8, ptr %0, i64 60
  %i.br = load <4 x i32>, ptr %i.bq, align 4      ; 4 uses
  %i.bs = getelementptr i8, ptr %0, i64 76
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = insertelement <4 x i32> poison, i32 %i.bt, i64 0
  %i.bv = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bw = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bx = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.by = shufflevector <4 x i32> %i.br, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bz = shufflevector <4 x i32> %i.bu, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ca = bitcast <4 x i32> %i.bz to <2 x i64>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1750 = phi <2 x i64> [ %.0749, %bb.h ], [ %i.ca, %bb.i ]
  %.0748.in = phi <4 x i32> [ %i.bp, %bb.h ], [ %i.by, %bb.i ]
  %.0747.in = phi <4 x i32> [ %i.bo, %bb.h ], [ %i.bx, %bb.i ]
  %.0746.in = phi <4 x i32> [ %i.bn, %bb.h ], [ %i.bw, %bb.i ]
  %.0745.in = phi <4 x i32> [ %i.bm, %bb.h ], [ %i.bv, %bb.i ] ; 2 uses
  %i.cb = bitcast <4 x i32> %.0746.in to <2 x i64>
  %i.cc = and <2 x i64> %i.cb, splat (i64 4294967295) ; 9 uses
  %i.cd = mul nuw nsw <2 x i64> %i.cc, splat (i64 5) ; 2 uses
  %i.ce = bitcast <4 x i32> %.0747.in to <2 x i64>
  %i.cf = and <2 x i64> %i.ce, splat (i64 4294967295) ; 7 uses
  %i.cg = mul nuw nsw <2 x i64> %i.cf, splat (i64 5) ; 2 uses
  %i.ch = bitcast <4 x i32> %.0748.in to <2 x i64>
  %i.ci = and <2 x i64> %i.ch, splat (i64 4294967295) ; 5 uses
  %i.cj = mul nuw nsw <2 x i64> %i.ci, splat (i64 5) ; 2 uses
  %i.ck = and <2 x i64> %.1750, splat (i64 4294967295) ; 3 uses
  %i.cl = mul nuw nsw <2 x i64> %i.ck, splat (i64 5) ; 2 uses
  %i.cm = icmp ugt i64 %.0714, 63
  br i1 %i.cm, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.cn = getelementptr i8, ptr %0, i64 80
  %i.co = load <4 x i32>, ptr %i.cn, align 8      ; 4 uses
  %i.cp = getelementptr i8, ptr %0, i64 96
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %i.cs = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ct = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cu = bitcast <4 x i32> %i.ct to <2 x i64>
  %i.cv = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.cw = bitcast <4 x i32> %i.cv to <2 x i64>
  %i.cx = shufflevector <4 x i32> %i.co, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.cy = bitcast <4 x i32> %i.cx to <2 x i64>
  %i.cz = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.da = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.db = bitcast <4 x i32> %i.ct to <2 x i64>
  %i.dc = and <2 x i64> %i.db, splat (i64 4294967295) ; 4 uses
  %i.dd = mul <2 x i64> %i.cu, splat (i64 5)
  %i.de = bitcast <4 x i32> %i.cv to <2 x i64>
  %i.df = and <2 x i64> %i.de, splat (i64 4294967295) ; 3 uses
  %i.dg = mul <2 x i64> %i.cw, splat (i64 5)
  %i.dh = bitcast <4 x i32> %i.cx to <2 x i64>
  %i.di = and <2 x i64> %i.dh, splat (i64 4294967295) ; 2 uses
  %i.dj = mul <2 x i64> %i.cy, splat (i64 5)
  %i.dk = bitcast <4 x i32> %i.cz to <2 x i64>
  %i.dl = and <2 x i64> %i.dk, splat (i64 4294967295)
  %i.dm = mul <2 x i64> %i.da, splat (i64 5)
  %i.dn = and <2 x i64> %i.dd, splat (i64 4294967295)
  %i.do = and <2 x i64> %i.dg, splat (i64 4294967295) ; 2 uses
  %i.dp = and <2 x i64> %i.dj, splat (i64 4294967295) ; 3 uses
  %i.dq = and <2 x i64> %i.dm, splat (i64 4294967295) ; 4 uses
  %i.dr = bitcast <4 x i32> %i.cs to <2 x i64>
  %i.ds = and <2 x i64> %i.dr, splat (i64 4294967295) ; 5 uses
  %i.dt = and <2 x i64> %i.cd, splat (i64 4294967295)
  %i.du = and <2 x i64> %i.cg, splat (i64 4294967295) ; 2 uses
  %i.dv = and <2 x i64> %i.cj, splat (i64 4294967295) ; 3 uses
  %i.dw = and <2 x i64> %i.cl, splat (i64 4294967295) ; 4 uses
  %i.dx = bitcast <4 x i32> %.0745.in to <2 x i64>
  %i.dy = and <2 x i64> %i.dx, splat (i64 4294967295) ; 5 uses
  %i.dz = and <2 x i64> %.0730, splat (i64 4294967295)
  %i.ea = and <2 x i64> %.0726, splat (i64 4294967295)
  %i.eb = and <2 x i64> %.0719, splat (i64 4294967295)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.l
  %.1765 = phi ptr [ %.0, %bb.k ], [ %i.ki, %bb.l ] ; 7 uses
  %.1715764 = phi i64 [ %.0714, %bb.k ], [ %i.kj, %bb.l ]
  %.1720763 = phi <2 x i64> [ %i.eb, %bb.k ], [ %i.kc, %bb.l ] ; 5 uses
  %.1723762 = phi <2 x i64> [ %.0722, %bb.k ], [ %i.ke, %bb.l ]
  %.1727761 = phi <2 x i64> [ %i.ea, %bb.k ], [ %i.kb, %bb.l ] ; 5 uses
  %.1731760 = phi <2 x i64> [ %i.dz, %bb.k ], [ %i.kg, %bb.l ] ; 5 uses
  %.1735759 = phi <2 x i64> [ %.0734, %bb.k ], [ %i.kh, %bb.l ]
  %i.ec = and <2 x i64> %.1735759, splat (i64 4294967295) ; 5 uses
  %i.ed = mul nuw <2 x i64> %i.ec, %i.dn
  %i.ee = mul nuw <2 x i64> %.1731760, %i.do
  %i.ef = mul nuw <2 x i64> %i.ec, %i.do
  %i.eg = mul nuw <2 x i64> %.1731760, %i.dp
  %i.eh = mul nuw <2 x i64> %i.ec, %i.dp
  %i.ei = add <2 x i64> %i.ee, %i.ed
  %i.ej = mul nuw <2 x i64> %.1727761, %i.dp
  %i.ek = mul nuw <2 x i64> %i.ec, %i.dq
  %i.el = add <2 x i64> %i.eg, %i.ef
  %i.em = and <2 x i64> %.1723762, splat (i64 4294967295) ; 5 uses
  %i.en = mul nuw <2 x i64> %i.em, %i.dq
  %i.eo = mul nuw <2 x i64> %.1727761, %i.dq
  %i.ep = add <2 x i64> %i.ei, %i.ej
  %i.eq = mul nuw <2 x i64> %.1731760, %i.dq
end_hunk_0
begin_hunk_1_@poly1305_blocks:bb.a
  %.not756 = icmp eq ptr %.2, null
  br i1 %.not756, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.oi = bitcast <2 x i64> %.3 to <4 x i32>
  %i.oj = shufflevector <4 x i32> %i.oi, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ok = bitcast <4 x i32> %i.oj to <2 x i64>
  %i.ol = bitcast <2 x i64> %.3725 to <4 x i32>
  %i.om = shufflevector <4 x i32> %i.ol, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.on = bitcast <4 x i32> %i.om to <2 x i64>
  %i.oo = bitcast <2 x i64> %.3729 to <4 x i32>
  %i.op = shufflevector <4 x i32> %i.oo, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.oq = bitcast <4 x i32> %i.op to <2 x i64>
  %i.or = bitcast <2 x i64> %.3733 to <4 x i32>
  %i.os = shufflevector <4 x i32> %i.or, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ot = bitcast <4 x i32> %i.os to <2 x i64>
  %i.ou = bitcast <2 x i64> %.3737 to <4 x i32>
  %i.ov = shufflevector <4 x i32> %i.ou, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ow = bitcast <4 x i32> %i.ov to <2 x i64>
  %i.ox = shufflevector <2 x i64> %i.ok, <2 x i64> %i.on, <2 x i32> <i32 0, i32 2>
  %i.oy = shufflevector <2 x i64> %i.oq, <2 x i64> %i.ot, <2 x i32> <i32 0, i32 2>
  store <2 x i64> %i.ox, ptr %0, align 8
  %i.oz = getelementptr i8, ptr %0, i64 16
  store <2 x i64> %i.oy, ptr %i.oz, align 8
  %i.pa = getelementptr i8, ptr %0, i64 32
  %i.pb = extractelement <2 x i64> %i.ow, i64 0
  store i64 %i.pb, ptr %i.pa, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.pc = shufflevector <2 x i64> %.3, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pd = add <2 x i64> %.3, %i.pc
  %i.pe = shufflevector <2 x i64> %.3725, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pf = add <2 x i64> %.3725, %i.pe
  %i.pg = shufflevector <2 x i64> %.3729, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.ph = add <2 x i64> %.3729, %i.pg
  %i.pi = shufflevector <2 x i64> %.3733, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pj = add <2 x i64> %.3733, %i.pi
  %i.pk = shufflevector <2 x i64> %.3737, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %i.pl = add <2 x i64> %.3737, %i.pk
  %i.pm = bitcast <2 x i64> %i.pd to <4 x i32>
  %i.pn = extractelement <4 x i32> %i.pm, i64 0   ; 2 uses
  %i.po = lshr i32 %i.pn, 26
  %i.pp = and i32 %i.pn, 67108863
  %i.pq = bitcast <2 x i64> %i.pf to <4 x i32>
  %i.pr = extractelement <4 x i32> %i.pq, i64 0
  %i.ps = add i32 %i.po, %i.pr                    ; 2 uses
  %i.pt = lshr i32 %i.ps, 26
  %i.pu = and i32 %i.ps, 67108863
  %i.pv = bitcast <2 x i64> %i.ph to <4 x i32>
  %i.pw = extractelement <4 x i32> %i.pv, i64 0
  %i.px = add i32 %i.pt, %i.pw                    ; 2 uses
  %i.py = lshr i32 %i.px, 26
  %i.pz = and i32 %i.px, 67108863
  %i.qa = bitcast <2 x i64> %i.pj to <4 x i32>
  %i.qb = extractelement <4 x i32> %i.qa, i64 0
  %i.qc = add i32 %i.py, %i.qb                    ; 2 uses
  %i.qd = lshr i32 %i.qc, 26
  %i.qe = and i32 %i.qc, 67108863
  %i.qf = bitcast <2 x i64> %i.pl to <4 x i32>
  %i.qg = extractelement <4 x i32> %i.qf, i64 0
  %i.qh = add i32 %i.qd, %i.qg
  %i.qi = zext nneg i32 %i.pp to i64
  %i.qj = zext nneg i32 %i.pu to i64              ; 2 uses
  %i.qk = shl nuw nsw i64 %i.qj, 26
  %.masked = and i64 %i.qk, 17592118935552
  %i.ql = or disjoint i64 %.masked, %i.qi
  %i.qm = lshr i64 %i.qj, 18
  %i.qn = zext nneg i32 %i.pz to i64
  %i.qo = shl nuw nsw i64 %i.qn, 8
  %i.qp = or disjoint i64 %i.qo, %i.qm
  %i.qq = zext nneg i32 %i.qe to i64              ; 2 uses
  %i.qr = shl nuw nsw i64 %i.qq, 34
  %.masked757 = and i64 %i.qr, 17575006175232
  %i.qs = or disjoint i64 %i.qp, %.masked757
  %i.qt = lshr i64 %i.qq, 10
  %i.qu = zext i32 %i.qh to i64                   ; 2 uses
  %i.qv = shl nuw nsw i64 %i.qu, 16
  %i.qw = lshr i64 %i.qu, 26
  %.masked758 = and i64 %i.qv, 4398046445568
  %i.qx = or disjoint i64 %.masked758, %i.qt
  %i.qy = mul nuw nsw i64 %i.qw, 5
  %i.qz = add nuw nsw i64 %i.qy, %i.ql            ; 2 uses
  %i.ra = lshr i64 %i.qz, 44
  %i.rb = and i64 %i.qz, 17592186044415
  %i.rc = add nuw nsw i64 %i.qs, %i.ra            ; 2 uses
  %i.rd = lshr i64 %i.rc, 44
  %i.re = and i64 %i.rc, 17592186044415
  %i.rf = add nuw nsw i64 %i.rd, %i.qx            ; 3 uses
  %i.rg = lshr i64 %i.rf, 42
  %i.rh = and i64 %i.rf, 4398046511103
  %i.ri = mul nuw nsw i64 %i.rg, 5
  %i.rj = add nuw nsw i64 %i.ri, %i.rb            ; 2 uses
  %i.rk = lshr i64 %i.rj, 44
  %i.rl = and i64 %i.rj, 17592186044415           ; 2 uses
  %i.rm = add nuw nsw i64 %i.rk, %i.re            ; 2 uses
  %i.rn = add nuw nsw i64 %i.rl, 5                ; 2 uses
  %i.ro = lshr i64 %i.rn, 44
  %i.rp = add nuw nsw i64 %i.ro, %i.rm            ; 2 uses
  %i.rq = lshr i64 %i.rp, 44
  %i.rr = or i64 %i.rf, -4398046511104
  %i.rs = add nsw i64 %i.rr, %i.rq                ; 2 uses
  %i.rt = load volatile i64, ptr @optblocker_u64, align 8
  %i.ru = lshr i64 %i.rs, 63
  %i.rv = lshr i64 %i.rt, 2
  %i.rw = xor i64 %i.rv, %i.ru                    ; 2 uses
  %i.rx = add nsw i64 %i.rw, -1                   ; 2 uses
  %i.ry = sub nsw i64 0, %i.rw                    ; 3 uses
  %i.rz = and i64 %i.rl, %i.ry
  %i.sa = and i64 %i.rx, 17592186044415           ; 2 uses
  %i.sb = and i64 %i.sa, %i.rn
  %i.sc = or i64 %i.rz, %i.sb
  %i.sd = and i64 %i.rm, %i.ry
  %i.se = and i64 %i.sa, %i.rp
  %i.sf = or i64 %i.sd, %i.se
  %i.sg = and i64 %i.rh, %i.ry
  %i.sh = and i64 %i.rx, %i.rs
  %i.si = or i64 %i.sh, %i.sg
  store i64 %i.sc, ptr %0, align 8
  %i.sj = getelementptr i8, ptr %0, i64 8
  store i64 %i.sf, ptr %i.sj, align 8
  %i.sk = getelementptr i8, ptr %0, i64 16
  store i64 %i.si, ptr %i.sk, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  ret void
}

; Function Attrs: noinline nounwind ssp uwtable
define internal fastcc void @poly1305_finish_ext(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 8 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = and i64 %2, 16
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load <2 x i64>, ptr %1, align 1
  store <2 x i64> %i.c, ptr %i.a, align 16
  %i.d = getelementptr i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.022.i = phi ptr [ %i.d, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.neg = phi i64 [ 16, %bb.c ], [ 32, %bb.b ]
  %i.f = phi i64 [ 16, %bb.c ], [ 0, %bb.b ]      ; 2 uses
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %i.g = and i64 %2, 8
  %.not26.i = icmp eq i64 %i.g, 0
  br i1 %.not26.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = call ptr @__memcpy_chk(ptr noundef nonnull %.0.i, ptr noundef nonnull %.022.i, i64 noundef 8, i64 noundef %.neg) #12, !alias.scope !20 ; 0 uses
  %i.i = getelementptr i8, ptr %.022.i, i64 8
  %i.j = or disjoint i64 %i.f, 8
  %i.k = getelementptr i8, ptr %.0.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.123.i = phi ptr [ %i.i, %bb.e ], [ %.022.i, %bb.d ] ; 3 uses
  %i.l = phi i64 [ %i.j, %bb.e ], [ %i.f, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %i.k, %bb.e ], [ %.0.i, %bb.d ] ; 3 uses
  %i.m = and i64 %2, 4
  %.not27.i = icmp eq i64 %i.m, 0
  br i1 %.not27.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 32, %i.l
  %i.o = call ptr @__memcpy_chk(ptr noundef nonnull %.1.i, ptr noundef nonnull %.123.i, i64 noundef 4, i64 noundef %i.n) #12, !alias.scope !21 ; 0 uses
  %i.p = getelementptr i8, ptr %.123.i, i64 4
  %i.q = add nuw nsw i64 %i.l, 4
  %i.r = getelementptr i8, ptr %.1.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.224.i = phi ptr [ %i.p, %bb.g ], [ %.123.i, %bb.f ] ; 3 uses
  %i.s = phi i64 [ %i.q, %bb.g ], [ %i.l, %bb.f ]
  %.2.i = phi ptr [ %i.r, %bb.g ], [ %.1.i, %bb.f ] ; 3 uses
  %i.t = and i64 %2, 2
  %.not28.i = icmp eq i64 %i.t, 0
  br i1 %.not28.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = sub nuw nsw i64 32, %i.s
  %i.v = call ptr @__memcpy_chk(ptr noundef nonnull %.2.i, ptr noundef nonnull %.224.i, i64 noundef 2, i64 noundef %i.u) #12, !alias.scope !22 ; 0 uses
  %i.w = getelementptr i8, ptr %.224.i, i64 2
  %i.x = getelementptr i8, ptr %.2.i, i64 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.325.i = phi ptr [ %i.w, %bb.i ], [ %.224.i, %bb.h ]
  %.3.i = phi ptr [ %i.x, %bb.i ], [ %.2.i, %bb.h ]
  %.not29.i = trunc i64 %2 to i1
  br i1 %.not29.i, label %bb.k, label %poly1305_block_copy31.exit

bb.k:                                             ; preds = %bb.j
  %i.y = load i8, ptr %.325.i, align 1
  store i8 %i.y, ptr %.3.i, align 1
  br label %poly1305_block_copy31.exit

poly1305_block_copy31.exit:                       ; preds = %bb.j, %bb.k
  %.not31 = icmp eq i64 %2, 16
  br i1 %.not31, label %bb.m, label %bb.l

bb.l:                                             ; preds = %poly1305_block_copy31.exit
  %i.z = getelementptr i8, ptr %i.a, i64 %2
  store i8 1, ptr %i.z, align 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %poly1305_block_copy31.exit
  %i.aa = icmp ugt i64 %2, 15
  %i.ab = select i1 %i.aa, i64 4, i64 8
  %i.ac = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = or i64 %i.ad, %i.ab
  store i64 %i.ae, ptr %i.ac, align 8
  call fastcc void @poly1305_blocks(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.a
  %i.af = getelementptr i8, ptr %0, i64 120       ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %.not32 = trunc i64 %i.ag to i1
  br i1 %.not32, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = add i64 %2, -17
  %or.cond = icmp ult i64 %i.ah, -16
  %storemerge.v = select i1 %or.cond, i64 16, i64 32
  %storemerge = or i64 %i.ag, %storemerge.v
  store i64 %storemerge, ptr %i.af, align 8
  call fastcc void @poly1305_blocks(ptr noundef nonnull %0, ptr noundef null, i64 noundef 32)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ai = load i64, ptr %0, align 8
  %i.aj = getelementptr i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = load i64, ptr %i.al, align 8
  %i.an = shl i64 %i.ak, 44
  %i.ao = or i64 %i.an, %i.ai
  %i.ap = lshr i64 %i.ak, 20
  %i.aq = shl i64 %i.am, 24
  %i.ar = or i64 %i.aq, %i.ap
  %i.as = getelementptr i8, ptr %0, i64 104
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr i8, ptr %0, i64 112
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = call { i64, i64 } asm sideeffect "addq $2, $0 ;\0Aadcq $3, $1 ;\0A", "=r,=r,r,r,0,1,~{flags},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.at, i64 %i.av, i64 %i.ao, i64 %i.ar) #12, !srcloc !23 ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  store i64 %i.ax, ptr %3, align 1
  %i.az = getelementptr i8, ptr %3, i64 8
  store i64 %i.ay, ptr %i.az, align 1
  call void @sodium_memzero(ptr noundef nonnull %0, i64 noundef 168) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #9

declare i32 @crypto_verify_16(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.fshl.v2i64(<2 x i64>, <2 x i64>, <2 x i64>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind ssp memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind ssp uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !9}
!7 = distinct !{!7, !4}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !4}
!11 = distinct !{!11, i1 false, !"memcpy.inline"}
!12 = distinct !{!12, !11, !"memcpy.inline: argument 1"}
!13 = distinct !{!13, !11, !"memcpy.inline: argument 0"}
!14 = distinct !{!14, i1 false, !"memcpy.inline"}
!15 = distinct !{!15, !14, !"memcpy.inline: argument 1"}
!16 = distinct !{!16, !14, !"memcpy.inline: argument 0"}
!17 = distinct !{!17, i1 false, !"memcpy.inline"}
!18 = distinct !{!18, !17, !"memcpy.inline: argument 1"}
!19 = distinct !{!19, !17, !"memcpy.inline: argument 0"}
!20 = !{!13, !12}
!21 = !{!16, !15}
!22 = !{!19, !18}
!23 = !{i64 27982, i64 28009}
end_hunk_1
