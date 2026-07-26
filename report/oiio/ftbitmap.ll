inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@FT_Bitmap_Blend:bb.a
    i8 0, label %.thread
    i8 7, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread284, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.o = load i8, ptr %i.n, align 2, !tbaa !30
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %.thread284, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !30
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.thread284, label %.thread283

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %.0212.sroa.gep237, align 8, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !7
  %i.w = xor i32 %i.v, %i.t
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %.thread284, label %.thread283

.thread283:                                       ; preds = %.thread, %bb.e
  %i.y = phi ptr [ %i.q, %.thread ], [ %i.n, %bb.e ]
  %i.z = load i32, ptr %.0212.sroa.gep243, align 4, !tbaa !31 ; 2 uses
  %.not265 = icmp eq i32 %i.z, 0
  br i1 %.not265, label %.thread284, label %bb.f

bb.f:                                             ; preds = %.thread283
  %i.aa = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %.not266 = icmp eq i32 %i.aa, 0
  br i1 %.not266, label %.thread284, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = and i64 %2, -64                         ; 4 uses
  %i.ac = and i64 %3, -64                         ; 5 uses
  %i.ad = load i64, ptr %5, align 8, !tbaa !72
  %i.ae = and i64 %i.ad, -64                      ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !75
  %i.ah = and i64 %i.ag, -64                      ; 3 uses
  %i.ai = shl i32 %i.aa, 6
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = add nuw nsw i64 %i.aj, -9223372036854775744
  %i.al = icmp sgt i64 %i.ak, %i.ac
  br i1 %i.al, label %.thread284, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = sub nsw i64 %i.ac, %i.aj                ; 2 uses
  %i.an = shl i32 %i.z, 6
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = sub nuw nsw i64 9223372036854775743, %i.ao
  %i.aq = icmp slt i64 %i.ap, %i.ab
  br i1 %i.aq, label %.thread284, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = add nsw i64 %i.ab, %i.ao                ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31 ; 3 uses
  %.not267 = icmp eq i32 %i.at, 0                 ; 2 uses
  br i1 %.not267, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %4, align 8, !tbaa !25    ; 2 uses
  %.not268 = icmp eq i32 %i.au, 0
  br i1 %.not268, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = shl i32 %i.au, 6
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %i.ax = or disjoint i64 %i.aw, -9223372036854775808
  %i.ay = icmp sgt i64 %i.ax, %i.ah
  br i1 %i.ay, label %.thread284, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = shl i32 %i.at, 6
  %i.ba = zext i32 %i.az to i64                   ; 2 uses
  %i.bb = xor i64 %i.ba, 9223372036854775807
  %i.bc = icmp slt i64 %i.bb, %i.ae
  br i1 %i.bc, label %.thread284, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = sub nsw i64 %i.ah, %i.aw
  %i.be = add nsw i64 %i.ae, %i.ba
  %i.bf = tail call i64 @llvm.smax.i64(i64 %i.ar, i64 %i.be)
  %i.bg = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 %i.ah)
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.m
  %.0222 = phi i64 [ %i.bg, %bb.m ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ]
  %.0221 = phi i64 [ %i.bf, %bb.m ], [ %i.ar, %bb.j ], [ %i.ar, %bb.i ]
  %.0219 = phi i64 [ %i.bd, %bb.m ], [ 9223372036854775807, %bb.j ], [ 9223372036854775807, %bb.i ] ; 4 uses
  %.0217 = phi i64 [ %i.ae, %bb.m ], [ 9223372036854775807, %bb.j ], [ 9223372036854775807, %bb.i ] ; 4 uses
  %i.bh = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 %.0217) ; 4 uses
  %i.bi = tail call i64 @llvm.smin.i64(i64 %i.am, i64 %.0219) ; 4 uses
  %i.bj = sub nsw i64 %.0221, %i.bh
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = trunc i64 %i.bk to i32                  ; 6 uses
  %i.bm = sub nsw i64 %.0222, %i.bi               ; 2 uses
  %i.bn = lshr i64 %i.bm, 6                       ; 4 uses
  %i.bo = trunc i64 %i.bn to i32                  ; 6 uses
  %i.bp = icmp ne i32 %i.bl, 0
  %i.bq = icmp ne i32 %i.bo, 0
  %or.cond7 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond7, label %bb.o, label %.thread284

bb.o:                                             ; preds = %bb.n
  %i.br = sub nsw i64 %i.ab, %i.bh
  %i.bs = sub nsw i64 %i.am, %i.bi
  br i1 %.not267, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load i32, ptr %4, align 8, !tbaa !25
  %.not270 = icmp eq i32 %i.bt, 0
  br i1 %.not270, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = sub nsw i64 %.0217, %i.bh
  %i.bv = sub nsw i64 %.0219, %i.bi
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.1220 = phi i64 [ %i.bv, %bb.q ], [ %.0219, %bb.p ], [ %.0219, %bb.o ]
  %.1218 = phi i64 [ %i.bu, %bb.q ], [ %.0217, %bb.p ], [ %.0217, %bb.o ]
  %i.bw = icmp eq i8 %i.k, 0                      ; 3 uses
  br i1 %i.bw, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  store i32 %i.bl, ptr %i.as, align 4, !tbaa !31
  store i32 %i.bo, ptr %4, align 8, !tbaa !25
  store i8 7, ptr %i.j, align 2, !tbaa !30
  %i.bx = shl nsw i32 %i.bl, 2                    ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !7
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 256, ptr %i.bz, align 8, !tbaa !36
  %i.ca = sext i32 %i.bx to i64
  %i.cb = sdiv i64 9223372036854775807, %i.ca
  %sext295 = shl i64 %i.bn, 32
  %i.cc = ashr exact i64 %sext295, 32
  %i.cd = icmp slt i64 %i.cb, %i.cc
  br i1 %i.cd, label %.thread284, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = mul nsw i32 %i.bx, %i.bo
  %i.cf = sext i32 %i.ce to i64
  %i.cg = call ptr @ft_mem_alloc(ptr noundef %i.i, i64 noundef %i.cf, ptr noundef nonnull %i.a) #7
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !19
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not274 = icmp eq i32 %i.ci, 0
  br i1 %.not274, label %bb.ab, label %.thread284

bb.u:                                             ; preds = %bb.r
  %.not271 = icmp eq i32 %i.at, %i.bl
  br i1 %.not271, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = load i32, ptr %4, align 8, !tbaa !25
  %.not272 = icmp eq i32 %i.cj, %i.bo
  br i1 %.not272, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !7
  %spec.select = tail call i32 @llvm.abs.i32(i32 %i.cl, i1 true) ; 2 uses
  %i.cm = shl nsw i32 %i.bl, 2                    ; 4 uses
  %i.cn = sext i32 %i.cm to i64                   ; 3 uses
  %i.co = sdiv i64 9223372036854775807, %i.cn
  %sext = shl i64 %i.bn, 32
  %i.cp = ashr exact i64 %sext, 32
  %i.cq = icmp slt i64 %i.co, %i.cp
  br i1 %i.cq, label %.thread284, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = mul nsw i32 %i.cm, %i.bo
  %i.cs = sext i32 %i.cr to i64
  %i.ct = call ptr @ft_mem_alloc(ptr noundef %i.i, i64 noundef %i.cs, ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !3
  %.not273 = icmp eq i32 %i.cu, 0
  br i1 %.not273, label %bb.y, label %.thread293

bb.y:                                             ; preds = %bb.x
  %i.cv = load i32, ptr %i.ck, align 8, !tbaa !7
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.thread286, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !19 ; 2 uses
  %i.cz = load i32, ptr %4, align 8, !tbaa !25    ; 2 uses
  %i.da = mul nsw i32 %i.cz, %spec.select         ; 2 uses
  %8 = zext nneg i32 %i.da to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %8
  %i.dc = icmp sgt i32 %i.da, 0
  br i1 %i.dc, label %.lr.ph, label %.thread286

.lr.ph:                                           ; preds = %bb.z
  %i.dd = and i64 %i.bn, 4294967295
  %i.de = ashr i64 %.1220, 6
  %i.df = zext i32 %i.cz to i64
  %i.dg = add nsw i64 %i.de, %i.df
  %i.dh = sub nsw i64 %i.dd, %i.dg
  %i.di = mul nsw i64 %i.dh, %i.cn
  %i.dj = getelementptr inbounds i8, ptr %i.ct, i64 %i.di
  %i.dk = ashr i64 %.1218, 4
  %i.dl = and i64 %i.dk, -4
  %i.dm = getelementptr inbounds i8, ptr %i.dj, i64 %i.dl
  %i.dn = zext nneg i32 %spec.select to i64       ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.aa
  %.0228302 = phi ptr [ %i.dm, %.lr.ph ], [ %i.dp, %bb.aa ] ; 2 uses
  %.0229301 = phi ptr [ %i.cy, %.lr.ph ], [ %i.do, %bb.aa ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0228302, ptr align 1 %.0229301, i64 %i.dn, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.0229301, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.0228302, i64 %i.cn
  %i.dq = icmp ult ptr %i.do, %i.db
  br i1 %i.dq, label %bb.aa, label %.thread286, !llvm.loop !76

.thread286:                                       ; preds = %bb.aa, %bb.z, %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !19
  call void @ft_mem_free(ptr noundef %i.i, ptr noundef %i.ds) #7
  store i32 %i.bl, ptr %i.as, align 4, !tbaa !31
  store i32 %i.bo, ptr %4, align 8, !tbaa !25
  %i.dt = load i32, ptr %i.ck, align 8, !tbaa !7
  %i.du = icmp slt i32 %i.dt, 0
  %i.dv = sub nsw i32 0, %i.cm
  %storemerge = select i1 %i.du, i32 %i.dv, i32 %i.cm
  store i32 %storemerge, ptr %i.ck, align 8, !tbaa !7
  store ptr %i.ct, ptr %i.dr, align 8, !tbaa !19
  br label %bb.ab

bb.ab:                                            ; preds = %.thread286, %bb.t, %bb.v
  %i.dw = load i8, ptr %i.y, align 2, !tbaa !30
  %.not275 = icmp eq i8 %i.dw, 2                  ; 3 uses
  br i1 %.not275, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %i.dx = call i32 @FT_Bitmap_Convert(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %7, i32 noundef 1) ; 2 uses
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !3
  %.not276 = icmp eq i32 %i.dx, 0
  br i1 %.not276, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0212.sroa.phi238.sroa.phi = phi ptr [ %.0212.sroa.phi238.sroa.gep, %bb.ac ], [ %.0212.sroa.phi238.sroa.gep282, %bb.ab ]
  %.0212.sroa.phi238 = phi ptr [ %7, %bb.ac ], [ %1, %bb.ab ]
  %.0212.sroa.phi241 = phi ptr [ %.0212.sroa.gep242, %bb.ac ], [ %.0212.sroa.gep243, %bb.ab ]
  %.0212.sroa.phi244 = phi ptr [ %.0212.sroa.gep236, %bb.ac ], [ %.0212.sroa.gep237, %bb.ab ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !7  ; 3 uses
  %i.ea = icmp slt i32 %i.dz, 0
  br i1 %i.ea, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %.0212.sroa.phi238.sroa.phi, align 8, !tbaa !19 ; 2 uses
  %i.ec = load i32, ptr %.0212.sroa.phi238, align 8, !tbaa !25 ; 2 uses
  %i.ed = load i32, ptr %.0212.sroa.phi244, align 8, !tbaa !7 ; 2 uses
  %i.ee = mul nsw i32 %i.ed, %i.ec                ; 2 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.eb, i64 %i.ef
  %i.eh = icmp sgt i32 %i.ee, 0
  br i1 %i.eh, label %.lr.ph309, label %.loopexit

.lr.ph309:                                        ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !19
  %i.ek = load i32, ptr %4, align 8, !tbaa !25
  %i.el = zext i32 %i.ek to i64
  %i.em = lshr i64 %i.bs, 6
  %i.en = zext i32 %i.ec to i64
  %i.eo = add nuw nsw i64 %i.em, %i.en
  %i.ep = sub nsw i64 %i.el, %i.eo
  %i.eq = zext nneg i32 %i.dz to i64
  %i.er = mul nsw i64 %i.ep, %i.eq
  %i.es = getelementptr inbounds i8, ptr %i.ej, i64 %i.er
  %i.et = lshr i64 %i.br, 4
  %i.eu = and i64 %i.et, 1152921504606846972
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.eu
  %i.ew = and i32 %6, 255
  %i.ex = and i32 %.sroa.2.0.extract.shift, 255
  %i.ey = and i32 %.sroa.3.0.extract.shift, 255
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph309, %._crit_edge
  %i.ez = phi i32 [ %i.dz, %.lr.ph309 ], [ %i.gt, %._crit_edge ]
  %i.fa = phi i32 [ %i.ed, %.lr.ph309 ], [ %i.gu, %._crit_edge ]
  %.0225307 = phi ptr [ %i.ev, %.lr.ph309 ], [ %i.gy, %._crit_edge ] ; 2 uses
  %.0226306 = phi ptr [ %i.eb, %.lr.ph309 ], [ %i.gw, %._crit_edge ] ; 3 uses
  %i.fb = load i32, ptr %.0212.sroa.phi241, align 4, !tbaa !31 ; 2 uses
  %i.fc = zext i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %.0226306, i64 %i.fc
  %.not310 = icmp eq i32 %i.fb, 0
  br i1 %.not310, label %._crit_edge, label %.lr.ph305

.lr.ph305:                                        ; preds = %bb.af, %.lr.ph305
  %.0223304 = phi ptr [ %i.gr, %.lr.ph305 ], [ %.0225307, %bb.af ] ; 6 uses
  %.0224303 = phi ptr [ %i.fe, %.lr.ph305 ], [ %.0226306, %bb.af ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0224303, i64 1 ; 2 uses
  %i.ff = load i8, ptr %.0224303, align 1, !tbaa !23
  %i.fg = zext i8 %i.ff to i32
  %i.fh = mul nuw nsw i32 %.sroa.4208.0.extract.shift, %i.fg
  %i.fi = udiv i32 %i.fh, 255                     ; 5 uses
  %i.fj = mul nuw nsw i32 %i.fi, %i.ew
  %i.fk = udiv i32 %i.fj, 255
  %i.fl = mul nuw nsw i32 %i.fi, %i.ex
  %i.fm = udiv i32 %i.fl, 255
  %i.fn = mul nuw nsw i32 %i.fi, %i.ey
  %i.fo = udiv i32 %i.fn, 255
  %i.fp = sub nuw nsw i32 255, %i.fi              ; 4 uses
  %i.fq = load i8, ptr %.0223304, align 1, !tbaa !23
  %i.fr = zext i8 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0223304, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !23
  %i.fu = zext i8 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %.0223304, i64 2 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !23
  %i.fx = zext i8 %i.fw to i32
  %i.fy = getelementptr inbounds nuw i8, ptr %.0223304, i64 3 ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !23
  %i.ga = zext i8 %i.fz to i32
  %i.gb = mul nuw nsw i32 %i.fp, %i.fr
  %.lhs.trunc = trunc nuw i32 %i.gb to i16
  %i.gc = udiv i16 %.lhs.trunc, 255
  %.zext = zext nneg i16 %i.gc to i32
  %i.gd = add nuw nsw i32 %i.fk, %.zext
  %i.ge = trunc i32 %i.gd to i8
  store i8 %i.ge, ptr %.0223304, align 1, !tbaa !23
  %i.gf = mul nuw nsw i32 %i.fp, %i.fu
  %.lhs.trunc334 = trunc nuw i32 %i.gf to i16
  %i.gg = udiv i16 %.lhs.trunc334, 255
  %.zext335 = zext nneg i16 %i.gg to i32
  %i.gh = add nuw nsw i32 %i.fm, %.zext335
  %i.gi = trunc i32 %i.gh to i8
  store i8 %i.gi, ptr %i.fs, align 1, !tbaa !23
  %i.gj = mul nuw nsw i32 %i.fp, %i.fx
  %.lhs.trunc336 = trunc nuw i32 %i.gj to i16
  %i.gk = udiv i16 %.lhs.trunc336, 255
  %.zext337 = zext nneg i16 %i.gk to i32
  %i.gl = add nuw nsw i32 %i.fo, %.zext337
  %i.gm = trunc i32 %i.gl to i8
  store i8 %i.gm, ptr %i.fv, align 1, !tbaa !23
  %i.gn = mul nuw nsw i32 %i.fp, %i.ga
  %.lhs.trunc338 = trunc nuw i32 %i.gn to i16
  %i.go = udiv i16 %.lhs.trunc338, 255
  %.zext339 = zext nneg i16 %i.go to i32
  %i.gp = add nuw nsw i32 %i.fi, %.zext339
  %i.gq = trunc i32 %i.gp to i8
  %i.gr = getelementptr inbounds nuw i8, ptr %.0223304, i64 4
  store i8 %i.gq, ptr %i.fy, align 1, !tbaa !23
  %i.gs = icmp ult ptr %i.fe, %i.fd
  br i1 %i.gs, label %.lr.ph305, label %._crit_edge.loopexit, !llvm.loop !77

._crit_edge.loopexit:                             ; preds = %.lr.ph305
  %.pre = load i32, ptr %.0212.sroa.phi244, align 8, !tbaa !7
  %.pre311 = load i32, ptr %i.dy, align 8, !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.af
  %i.gt = phi i32 [ %.pre311, %._crit_edge.loopexit ], [ %i.ez, %bb.af ] ; 2 uses
  %i.gu = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.fa, %bb.af ] ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds i8, ptr %.0226306, i64 %i.gv ; 2 uses
  %i.gx = sext i32 %i.gt to i64
  %i.gy = getelementptr inbounds i8, ptr %.0225307, i64 %i.gx
  %i.gz = icmp ult ptr %i.gw, %i.eg
  br i1 %i.gz, label %bb.af, label %.loopexit, !llvm.loop !78

.loopexit:                                        ; preds = %._crit_edge, %bb.ae, %bb.ad
  store i64 %i.bh, ptr %5, align 8, !tbaa !72
  %i.ha = and i64 %i.bm, 4294967232
  %i.hb = add nsw i64 %i.ha, %i.bi
  store i64 %i.hb, ptr %i.af, align 8, !tbaa !75
  %.pre312 = load i32, ptr %i.a, align 4, !tbaa !3
  %i.hc = icmp ne i32 %.pre312, 0
  %i.hd = and i1 %i.bw, %i.hc
  br i1 %i.hd, label %FT_Bitmap_Done.exit, label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.bw, label %.thread293.critedge, label %.thread293

FT_Bitmap_Done.exit:                              ; preds = %.loopexit
  %i.he = load ptr, ptr %0, align 8, !tbaa !12
  %i.hf = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !19
  call void @ft_mem_free(ptr noundef %i.he, ptr noundef %i.hg) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  br i1 %.not275, label %.thread293, label %FT_Bitmap_Done.exit281

bb.ah:                                            ; preds = %.loopexit
  br i1 %.not275, label %.thread293, label %FT_Bitmap_Done.exit281

end_hunk_0
