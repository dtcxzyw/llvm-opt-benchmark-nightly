Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@png_error
; Function Attrs: nounwind uwtable
define internal fastcc i32 @load_format_20(ptr nofree noundef nonnull writeonly captures(none) %0, ptr noundef %1, i16 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.d = zext i16 %2 to i64                       ; 10 uses
  %i.e = shl nuw nsw i64 %i.d, 1                  ; 6 uses
  %i.f = icmp ugt i64 %i.e, %3
  br i1 %i.f, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call ptr @ft_mem_qrealloc(ptr noundef %i.c, i64 noundef 2, i64 noundef 0, i64 noundef %i.d, ptr noundef null, ptr noundef nonnull %i.a) #27 ; 9 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !30
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %1, i64 noundef %i.e) #27 ; 2 uses
  store i32 %i.i, ptr %i.a, align 4, !tbaa !30
  %.not82 = icmp eq i32 %i.i, 0
  br i1 %.not82, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.not99 = icmp eq i16 %2, 0
  br i1 %.not99, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137  ; 30 uses
  %min.iters.check = icmp ult i16 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.l = getelementptr i8, ptr %i.g, i64 %i.e
  %i.m = getelementptr i8, ptr %i.k, i64 %i.e
  %bound0 = icmp ult ptr %i.g, %i.m
  %bound1 = icmp ult ptr %i.k, %i.l
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check114 = icmp ult i16 %2, 16
  br i1 %min.iters.check114, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %i.d, 8
  %n.vec = and i64 %i.d, 65520                    ; 5 uses
  %i.o = shl nuw nsw i64 %n.vec, 1
  %i.p = getelementptr i8, ptr %i.k, i64 %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dq, %vector.body ]
  %vec.phi115 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dr, %vector.body ]
  %i.q = shl i64 %index, 1                        ; 16 uses
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.q ; 2 uses
  %i.r = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.r, i64 2
  %i.s = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep117 = getelementptr i8, ptr %i.s, i64 4
  %i.t = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.t, i64 6
  %i.u = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep119 = getelementptr i8, ptr %i.u, i64 8
  %i.v = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.v, i64 10
  %i.w = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep121 = getelementptr i8, ptr %i.w, i64 12
  %i.x = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep122 = getelementptr i8, ptr %i.x, i64 14
  %i.y = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.y, i64 16
  %i.z = getelementptr i8, ptr %i.k, i64 %i.q     ; 2 uses
  %next.gep124 = getelementptr i8, ptr %i.z, i64 18
  %i.aa = getelementptr i8, ptr %i.k, i64 %i.q    ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.aa, i64 20
  %i.ab = getelementptr i8, ptr %i.k, i64 %i.q    ; 2 uses
  %next.gep126 = getelementptr i8, ptr %i.ab, i64 22
  %i.ac = getelementptr i8, ptr %i.k, i64 %i.q    ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.ac, i64 24
  %i.ad = getelementptr i8, ptr %i.k, i64 %i.q    ; 2 uses
  %next.gep128 = getelementptr i8, ptr %i.ad, i64 26
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.q    ; 2 uses
  %next.gep129 = getelementptr i8, ptr %i.ae, i64 28
  %i.af = getelementptr i8, ptr %i.k, i64 %i.q    ; 2 uses
  %next.gep130 = getelementptr i8, ptr %i.af, i64 30
  %i.ag = load i8, ptr %next.gep, align 1, !tbaa !29, !alias.scope !762
  %i.ah = load i8, ptr %next.gep116, align 1, !tbaa !29, !alias.scope !762
  %i.ai = load i8, ptr %next.gep117, align 1, !tbaa !29, !alias.scope !762
  %i.aj = load i8, ptr %next.gep118, align 1, !tbaa !29, !alias.scope !762
  %i.ak = load i8, ptr %next.gep119, align 1, !tbaa !29, !alias.scope !762
  %i.al = load i8, ptr %next.gep120, align 1, !tbaa !29, !alias.scope !762
  %i.am = load i8, ptr %next.gep121, align 1, !tbaa !29, !alias.scope !762
  %i.an = load i8, ptr %next.gep122, align 1, !tbaa !29, !alias.scope !762
  %i.ao = insertelement <8 x i8> poison, i8 %i.ag, i64 0
  %i.ap = insertelement <8 x i8> %i.ao, i8 %i.ah, i64 1
  %i.aq = insertelement <8 x i8> %i.ap, i8 %i.ai, i64 2
  %i.ar = insertelement <8 x i8> %i.aq, i8 %i.aj, i64 3
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 4
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 5
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 6
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 7
  %i.aw = load i8, ptr %next.gep123, align 1, !tbaa !29, !alias.scope !762
  %i.ax = load i8, ptr %next.gep124, align 1, !tbaa !29, !alias.scope !762
  %i.ay = load i8, ptr %next.gep125, align 1, !tbaa !29, !alias.scope !762
  %i.az = load i8, ptr %next.gep126, align 1, !tbaa !29, !alias.scope !762
  %i.ba = load i8, ptr %next.gep127, align 1, !tbaa !29, !alias.scope !762
  %i.bb = load i8, ptr %next.gep128, align 1, !tbaa !29, !alias.scope !762
  %i.bc = load i8, ptr %next.gep129, align 1, !tbaa !29, !alias.scope !762
  %i.bd = load i8, ptr %next.gep130, align 1, !tbaa !29, !alias.scope !762
  %i.be = insertelement <8 x i8> poison, i8 %i.aw, i64 0
  %i.bf = insertelement <8 x i8> %i.be, i8 %i.ax, i64 1
  %i.bg = insertelement <8 x i8> %i.bf, i8 %i.ay, i64 2
  %i.bh = insertelement <8 x i8> %i.bg, i8 %i.az, i64 3
  %i.bi = insertelement <8 x i8> %i.bh, i8 %i.ba, i64 4
  %i.bj = insertelement <8 x i8> %i.bi, i8 %i.bb, i64 5
  %i.bk = insertelement <8 x i8> %i.bj, i8 %i.bc, i64 6
  %i.bl = insertelement <8 x i8> %i.bk, i8 %i.bd, i64 7
  %i.bm = zext <8 x i8> %i.av to <8 x i16>
  %i.bn = zext <8 x i8> %i.bl to <8 x i16>
  %i.bo = shl nuw <8 x i16> %i.bm, splat (i16 8)
  %i.bp = shl nuw <8 x i16> %i.bn, splat (i16 8)
  %i.bq = getelementptr inbounds nuw i8, ptr %next.gep, i64 1
  %i.br = getelementptr i8, ptr %i.r, i64 3
  %i.bs = getelementptr i8, ptr %i.s, i64 5
  %i.bt = getelementptr i8, ptr %i.t, i64 7
  %i.bu = getelementptr i8, ptr %i.u, i64 9
  %i.bv = getelementptr i8, ptr %i.v, i64 11
  %i.bw = getelementptr i8, ptr %i.w, i64 13
  %i.bx = getelementptr i8, ptr %i.x, i64 15
  %i.by = getelementptr i8, ptr %i.y, i64 17
  %i.bz = getelementptr i8, ptr %i.z, i64 19
  %i.ca = getelementptr i8, ptr %i.aa, i64 21
  %i.cb = getelementptr i8, ptr %i.ab, i64 23
  %i.cc = getelementptr i8, ptr %i.ac, i64 25
  %i.cd = getelementptr i8, ptr %i.ad, i64 27
  %i.ce = getelementptr i8, ptr %i.ae, i64 29
  %i.cf = getelementptr i8, ptr %i.af, i64 31
  %i.cg = load i8, ptr %i.bq, align 1, !tbaa !29, !alias.scope !762
  %i.ch = load i8, ptr %i.br, align 1, !tbaa !29, !alias.scope !762
  %i.ci = load i8, ptr %i.bs, align 1, !tbaa !29, !alias.scope !762
  %i.cj = load i8, ptr %i.bt, align 1, !tbaa !29, !alias.scope !762
  %i.ck = load i8, ptr %i.bu, align 1, !tbaa !29, !alias.scope !762
  %i.cl = load i8, ptr %i.bv, align 1, !tbaa !29, !alias.scope !762
  %i.cm = load i8, ptr %i.bw, align 1, !tbaa !29, !alias.scope !762
  %i.cn = load i8, ptr %i.bx, align 1, !tbaa !29, !alias.scope !762
  %i.co = insertelement <8 x i8> poison, i8 %i.cg, i64 0
  %i.cp = insertelement <8 x i8> %i.co, i8 %i.ch, i64 1
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 2
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 3
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 4
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 5
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 6
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 7
  %i.cw = load i8, ptr %i.by, align 1, !tbaa !29, !alias.scope !762
  %i.cx = load i8, ptr %i.bz, align 1, !tbaa !29, !alias.scope !762
  %i.cy = load i8, ptr %i.ca, align 1, !tbaa !29, !alias.scope !762
  %i.cz = load i8, ptr %i.cb, align 1, !tbaa !29, !alias.scope !762
  %i.da = load i8, ptr %i.cc, align 1, !tbaa !29, !alias.scope !762
  %i.db = load i8, ptr %i.cd, align 1, !tbaa !29, !alias.scope !762
  %i.dc = load i8, ptr %i.ce, align 1, !tbaa !29, !alias.scope !762
  %i.dd = load i8, ptr %i.cf, align 1, !tbaa !29, !alias.scope !762
  %i.de = insertelement <8 x i8> poison, i8 %i.cw, i64 0
  %i.df = insertelement <8 x i8> %i.de, i8 %i.cx, i64 1
  %i.dg = insertelement <8 x i8> %i.df, i8 %i.cy, i64 2
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 3
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 4
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 5
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 6
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 7
  %i.dm = zext <8 x i8> %i.cv to <8 x i16>
  %i.dn = zext <8 x i8> %i.dl to <8 x i16>
  %i.do = or disjoint <8 x i16> %i.bo, %i.dm      ; 2 uses
  %i.dp = or disjoint <8 x i16> %i.bp, %i.dn      ; 2 uses
  %i.dq = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.do, <8 x i16> %vec.phi) ; 2 uses
  %i.dr = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dp, <8 x i16> %vec.phi115) ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <8 x i16> %i.do, ptr %i.ds, align 2, !tbaa !154, !alias.scope !763, !noalias !762
  store <8 x i16> %i.dp, ptr %i.dt, align 2, !tbaa !154, !alias.scope !763, !noalias !762
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !756

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.dq, <8 x i16> %i.dr)
  %i.dv = call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %rdx.minmax) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !764

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.dv, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.d, 65528                 ; 4 uses
  %4 = shl nuw nsw i64 %n.vec131, 1
  %5 = getelementptr i8, ptr %i.k, i64 %4
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next142, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi133 = phi <8 x i16> [ %broadcast.splat, %vec.epilog.ph ], [ %i.fw, %vec.epilog.vector.body ]
  %i.dw = shl i64 %index132, 1                    ; 8 uses
  %next.gep134 = getelementptr i8, ptr %i.k, i64 %i.dw ; 2 uses
  %i.dx = getelementptr i8, ptr %i.k, i64 %i.dw   ; 2 uses
  %next.gep135 = getelementptr i8, ptr %i.dx, i64 2
  %i.dy = getelementptr i8, ptr %i.k, i64 %i.dw   ; 2 uses
  %next.gep136 = getelementptr i8, ptr %i.dy, i64 4
  %i.dz = getelementptr i8, ptr %i.k, i64 %i.dw   ; 2 uses
  %next.gep137 = getelementptr i8, ptr %i.dz, i64 6
  %i.ea = getelementptr i8, ptr %i.k, i64 %i.dw   ; 2 uses
  %next.gep138 = getelementptr i8, ptr %i.ea, i64 8
  %i.eb = getelementptr i8, ptr %i.k, i64 %i.dw   ; 2 uses
  %next.gep139 = getelementptr i8, ptr %i.eb, i64 10
  %i.ec = getelementptr i8, ptr %i.k, i64 %i.dw   ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.ec, i64 12
  %i.ed = getelementptr i8, ptr %i.k, i64 %i.dw   ; 2 uses
  %next.gep141 = getelementptr i8, ptr %i.ed, i64 14
  %i.ee = load i8, ptr %next.gep134, align 1, !tbaa !29, !alias.scope !762
  %i.ef = load i8, ptr %next.gep135, align 1, !tbaa !29, !alias.scope !762
  %i.eg = load i8, ptr %next.gep136, align 1, !tbaa !29, !alias.scope !762
  %i.eh = load i8, ptr %next.gep137, align 1, !tbaa !29, !alias.scope !762
  %i.ei = load i8, ptr %next.gep138, align 1, !tbaa !29, !alias.scope !762
  %i.ej = load i8, ptr %next.gep139, align 1, !tbaa !29, !alias.scope !762
  %i.ek = load i8, ptr %next.gep140, align 1, !tbaa !29, !alias.scope !762
  %i.el = load i8, ptr %next.gep141, align 1, !tbaa !29, !alias.scope !762
  %i.em = insertelement <8 x i8> poison, i8 %i.ee, i64 0
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 1
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 2
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 3
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 4
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 5
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 6
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 7
  %i.eu = zext <8 x i8> %i.et to <8 x i16>
  %i.ev = shl nuw <8 x i16> %i.eu, splat (i16 8)
  %i.ew = getelementptr inbounds nuw i8, ptr %next.gep134, i64 1
  %i.ex = getelementptr i8, ptr %i.dx, i64 3
  %i.ey = getelementptr i8, ptr %i.dy, i64 5
  %i.ez = getelementptr i8, ptr %i.dz, i64 7
  %i.fa = getelementptr i8, ptr %i.ea, i64 9
  %i.fb = getelementptr i8, ptr %i.eb, i64 11
  %i.fc = getelementptr i8, ptr %i.ec, i64 13
  %i.fd = getelementptr i8, ptr %i.ed, i64 15
  %i.fe = load i8, ptr %i.ew, align 1, !tbaa !29, !alias.scope !762
  %i.ff = load i8, ptr %i.ex, align 1, !tbaa !29, !alias.scope !762
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !29, !alias.scope !762
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !29, !alias.scope !762
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !29, !alias.scope !762
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !29, !alias.scope !762
  %i.fk = load i8, ptr %i.fc, align 1, !tbaa !29, !alias.scope !762
  %i.fl = load i8, ptr %i.fd, align 1, !tbaa !29, !alias.scope !762
  %i.fm = insertelement <8 x i8> poison, i8 %i.fe, i64 0
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 1
  %i.fo = insertelement <8 x i8> %i.fn, i8 %i.fg, i64 2
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 3
  %i.fq = insertelement <8 x i8> %i.fp, i8 %i.fi, i64 4
  %i.fr = insertelement <8 x i8> %i.fq, i8 %i.fj, i64 5
  %i.fs = insertelement <8 x i8> %i.fr, i8 %i.fk, i64 6
  %i.ft = insertelement <8 x i8> %i.fs, i8 %i.fl, i64 7
  %i.fu = zext <8 x i8> %i.ft to <8 x i16>
  %i.fv = or disjoint <8 x i16> %i.ev, %i.fu      ; 2 uses
  %i.fw = call <8 x i16> @llvm.umax.v8i16(<8 x i16> %i.fv, <8 x i16> %vec.phi133) ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index132
  store <8 x i16> %i.fv, ptr %i.fx, align 2, !tbaa !154, !alias.scope !763, !noalias !762
  %index.next142 = add nuw i64 %index132, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next142, %n.vec131
  br i1 %i.fy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !757

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fz = call i16 @llvm.vector.reduce.umax.v8i16(<8 x i16> %i.fw) ; 2 uses
  %cmp.n143 = icmp eq i64 %n.vec131, %i.d
  br i1 %cmp.n143, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec131, %vec.epilog.middle.block ] ; 4 uses
  %.07389.ph = phi ptr [ %i.k, %iter.check ], [ %i.k, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %5, %vec.epilog.middle.block ] ; 4 uses
  %.07588.ph = phi i16 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.dv, %vec.epilog.iter.check ], [ %i.fz, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %i.d, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %.07389.ph, i64 2
  %i.gb = load i8, ptr %.07389.ph, align 1, !tbaa !29
  %i.gc = zext i8 %i.gb to i16
  %i.gd = shl nuw i16 %i.gc, 8
  %i.ge = getelementptr inbounds nuw i8, ptr %.07389.ph, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !29
  %i.gg = zext i8 %i.gf to i16
  %i.gh = or disjoint i16 %i.gd, %i.gg            ; 2 uses
  %spec.select.prol = call i16 @llvm.umax.i16(i16 %i.gh, i16 %.07588.ph) ; 2 uses
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.ph
  store i16 %i.gh, ptr %i.gi, align 2, !tbaa !154
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i16 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.07389.unr = phi ptr [ %.07389.ph, %.lr.ph.preheader ], [ %i.ga, %.lr.ph.prol ]
  %.07588.unr = phi i16 [ %.07588.ph, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.gj = add nsw i64 %i.d, -1
  %i.gk = icmp eq i64 %indvars.iv.ph, %i.gj
  br i1 %i.gk, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.07389 = phi ptr [ %i.gu, %.lr.ph ], [ %.07389.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.07588 = phi i16 [ %spec.select.1, %.lr.ph ], [ %.07588.unr, %.lr.ph.prol.loopexit ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.07389, i64 2
  %i.gm = load i8, ptr %.07389, align 1, !tbaa !29
  %i.gn = zext i8 %i.gm to i16
  %i.go = shl nuw i16 %i.gn, 8
  %i.gp = getelementptr inbounds nuw i8, ptr %.07389, i64 1
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !29
  %i.gr = zext i8 %i.gq to i16
  %i.gs = or disjoint i16 %i.go, %i.gr            ; 2 uses
  %spec.select = call i16 @llvm.umax.i16(i16 %i.gs, i16 %.07588)
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !154
  %i.gu = getelementptr inbounds nuw i8, ptr %.07389, i64 4
  %i.gv = load i8, ptr %i.gl, align 1, !tbaa !29
  %i.gw = zext i8 %i.gv to i16
  %i.gx = shl nuw i16 %i.gw, 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.07389, i64 3
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !29
  %i.ha = zext i8 %i.gz to i16
  %i.hb = or disjoint i16 %i.gx, %i.ha            ; 2 uses
  %spec.select.1 = call i16 @llvm.umax.i16(i16 %i.hb, i16 %spec.select) ; 2 uses
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  store i16 %i.hb, ptr %i.hd, align 2, !tbaa !154
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.d
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !758

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %.075.lcssa = phi i16 [ 0, %bb.d ], [ %i.fz, %vec.epilog.middle.block ], [ %i.dv, %middle.block ], [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 2 uses
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %1) #27
  %i.he = call i16 @llvm.usub.sat.i16(i16 %.075.lcssa, i16 257) ; 3 uses
  %.not83 = icmp ult i16 %.075.lcssa, 258
  br i1 %.not83, label %.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.hf = sub nuw i64 %3, %i.e                    ; 3 uses
  %i.hg = zext i16 %i.he to i64                   ; 5 uses
  %i.hh = shl nuw nsw i64 %i.hg, 3
  %i.hi = add i64 %i.hf, 1
  %i.hj = add i64 %i.hi, %i.hh
  %i.hk = call ptr @ft_mem_qalloc(ptr noundef %i.c, i64 noundef %i.hj, ptr noundef nonnull %i.a) #27 ; 9 uses
  %i.hl = load i32, ptr %i.a, align 4, !tbaa !30
  %.not84 = icmp eq i32 %i.hl, 0
  br i1 %.not84, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hg ; 3 uses
  %i.hn = call i32 @FT_Stream_Read(ptr noundef nonnull %1, ptr noundef %i.hm, i64 noundef %i.hf) #27 ; 2 uses
  store i32 %i.hn, ptr %i.a, align 4, !tbaa !30
  %.not85 = icmp eq i32 %i.hn, 0
  br i1 %.not85, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hf ; 4 uses
  %.not100 = icmp eq i64 %3, %i.e
  br i1 %.not100, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.g, %.lr.ph93
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %.lr.ph93 ], [ 0, %bb.g ] ; 2 uses
  %.07291 = phi ptr [ %i.ht, %.lr.ph93 ], [ %i.hm, %bb.g ] ; 3 uses
  %i.hp = load i8, ptr %.07291, align 1, !tbaa !29
  %i.hq = getelementptr inbounds nuw i8, ptr %.07291, i64 1 ; 2 uses
  store i8 0, ptr %.07291, align 1, !tbaa !29
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv104
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !141
  %i.hs = zext i8 %i.hp to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hs ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 3 uses
  %i.hu = icmp ult ptr %i.ht, %i.ho
  %i.hv = icmp samesign ult i64 %indvars.iv.next105, %i.hg ; 2 uses
  %i.hw = select i1 %i.hu, i1 %i.hv, i1 false
  br i1 %i.hw, label %.lr.ph93, label %._crit_edge94.loopexit, !llvm.loop !759

._crit_edge94.loopexit:                           ; preds = %.lr.ph93
  %i.hx = trunc nuw i64 %indvars.iv.next105 to i16
  br label %._crit_edge94

._crit_edge94:                                    ; preds = %._crit_edge94.loopexit, %bb.g
  %.178.lcssa = phi i16 [ 0, %bb.g ], [ %i.hx, %._crit_edge94.loopexit ] ; 2 uses
  %.lcssa = phi i1 [ true, %bb.g ], [ %i.hv, %._crit_edge94.loopexit ]
  store i8 0, ptr %i.ho, align 1, !tbaa !29
  %i.hy = icmp ult i16 %.178.lcssa, %i.he
  %or.cond = select i1 %.lcssa, i1 %i.hy, i1 false
  br i1 %or.cond, label %.lr.ph98.preheader, label %.thread

.lr.ph98.preheader:                               ; preds = %._crit_edge94
  %i.hz = zext i16 %.178.lcssa to i64             ; 4 uses
end_hunk_0
