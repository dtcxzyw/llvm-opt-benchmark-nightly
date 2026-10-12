Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_connected_components?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@stbcc__build_all_connections_for_cluster:bb.a
  %i.p = sext i32 %i.h to i64                     ; 6 uses
  %i.q = icmp slt i32 %1, -1
  br i1 %i.q, label %.loopexit.3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = add nsw i32 %1, 1
  %i.s = load i32, ptr %i.k, align 4, !tbaa !21
  %.not = icmp sge i32 %i.r, %i.s
  %i.t = icmp slt i32 %2, 0
  %or.cond = or i1 %.not, %i.t
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122 = icmp slt i32 %2, %i.u
  br i1 %.not122, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.v = or disjoint i64 %i.p, 31                 ; 2 uses
  %i.w = trunc nsw i64 %i.v to i32
  %i.x = ashr i32 %i.w, 3
  %i.y = sext i32 %i.x to i64
  %invariant.gep = getelementptr i8, ptr %i.m, i64 %i.y
  %i.z = add nsw i64 %i.p, 32                     ; 2 uses
  %i.aa = trunc nsw i64 %i.z to i32
  %i.ab = ashr exact i32 %i.aa, 3
  %i.ac = sext i32 %i.ab to i64
  %invariant.gep167 = getelementptr i8, ptr %i.m, i64 %i.ac
  %invariant.gep169 = getelementptr [2 x i8], ptr %i.n, i64 %i.v
  %invariant.gep171 = getelementptr [2 x i8], ptr %i.n, i64 %i.z
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.1129 = phi i32 [ 0, %bb.d ], [ %.3, %bb.i ]   ; 4 uses
  %.0106128 = phi i32 [ 0, %bb.d ], [ %i.bb, %bb.i ]
  %i.ad = add nuw nsw i64 %indvars.iv, %i.o       ; 4 uses
  %gep = getelementptr [128 x i8], ptr %invariant.gep, i64 %i.ad
  %i.ae = load i8, ptr %gep, align 1, !tbaa !11
  %.not123 = icmp sgt i8 %i.ae, -1
  br i1 %.not123, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %gep168 = getelementptr [128 x i8], ptr %invariant.gep167, i64 %i.ad
  %i.af = load i8, ptr %gep168, align 1, !tbaa !11
  %i.ag = and i8 %i.af, 1
  %.not124 = icmp eq i8 %i.ag, 0
  br i1 %.not124, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %gep170 = getelementptr [2048 x i8], ptr %invariant.gep169, i64 %i.ad
  %i.ah = load i16, ptr %gep170, align 2, !tbaa !10
  %gep172 = getelementptr [2048 x i8], ptr %invariant.gep171, i64 %i.ad
  %i.ai = load i16, ptr %gep172, align 2, !tbaa !10
  %i.aj = zext i16 %i.ah to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.aj
  %i.al = zext i16 %i.ai to i32                   ; 2 uses
  %i.am = lshr i32 %i.al, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !11  ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = and i32 %i.al, 7
  %i.as = shl nuw nsw i32 1, %i.ar                ; 2 uses
  %i.at = and i32 %i.as, %i.aq
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = trunc nuw i32 %i.as to i8
  %i.aw = or i8 %i.ap, %i.av
  store i8 %i.aw, ptr %i.ao, align 1, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aj ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.ax, align 1, !tbaa !11
  %i.ba = add nsw i32 %.1129, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f, %bb.e
  %.3 = phi i32 [ %.1129, %bb.e ], [ %.1129, %bb.f ], [ %i.ba, %bb.h ], [ %.1129, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bb = add nuw nsw i32 %.0106128, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bb, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !39

.loopexit:                                        ; preds = %bb.i, %bb.b, %bb.c
  %.4 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ %.3, %bb.i ] ; 4 uses
  %i.bc = icmp slt i32 %1, 1
  br i1 %i.bc, label %.loopexit.1, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.bd = load i32, ptr %i.k, align 4, !tbaa !21
  %.not.1.not = icmp sgt i32 %1, %i.bd
  %i.be = icmp slt i32 %2, 0
  %or.cond181 = or i1 %.not.1.not, %i.be
  br i1 %or.cond181, label %.loopexit.1.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122.1 = icmp slt i32 %2, %i.bf
  br i1 %.not122.1, label %bb.l, label %.loopexit.1.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.bg = lshr exact i32 %i.h, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %invariant.gep173 = getelementptr i8, ptr %i.m, i64 %i.bh
  %i.bi = add nsw i64 %i.p, -1                    ; 2 uses
  %i.bj = trunc nsw i64 %i.bi to i32
  %i.bk = ashr i32 %i.bj, 3
  %i.bl = sext i32 %i.bk to i64
  %invariant.gep175 = getelementptr i8, ptr %i.m, i64 %i.bl
  %invariant.gep177 = getelementptr [2 x i8], ptr %i.n, i64 %i.p
  %invariant.gep179 = getelementptr [2 x i8], ptr %i.n, i64 %i.bi
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.l
  %indvars.iv.1 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next.1, %bb.q ] ; 2 uses
  %.1129.1 = phi i32 [ %.4, %bb.l ], [ %.3.1, %bb.q ] ; 4 uses
  %.0106128.1 = phi i32 [ 0, %bb.l ], [ %i.ck, %bb.q ]
  %i.bm = add nuw nsw i64 %indvars.iv.1, %i.o     ; 4 uses
  %gep174 = getelementptr [128 x i8], ptr %invariant.gep173, i64 %i.bm
  %i.bn = load i8, ptr %gep174, align 1, !tbaa !11
  %i.bo = and i8 %i.bn, 1
  %.not123.1 = icmp eq i8 %i.bo, 0
  br i1 %.not123.1, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %gep176 = getelementptr [128 x i8], ptr %invariant.gep175, i64 %i.bm
  %i.bp = load i8, ptr %gep176, align 1, !tbaa !11
  %.not124.1 = icmp sgt i8 %i.bp, -1
  br i1 %.not124.1, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %gep178 = getelementptr [2048 x i8], ptr %invariant.gep177, i64 %i.bm
  %i.bq = load i16, ptr %gep178, align 2, !tbaa !10
  %gep180 = getelementptr [2048 x i8], ptr %invariant.gep179, i64 %i.bm
  %i.br = load i16, ptr %gep180, align 2, !tbaa !10
  %i.bs = zext i16 %i.bq to i64                   ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = zext i16 %i.br to i32                   ; 2 uses
  %i.bv = lshr i32 %i.bu, 3
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !11  ; 2 uses
  %i.bz = zext i8 %i.by to i32
  %i.ca = and i32 %i.bu, 7
  %i.cb = shl nuw nsw i32 1, %i.ca                ; 2 uses
  %i.cc = and i32 %i.cb, %i.bz
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ce = trunc nuw i32 %i.cb to i8
  %i.cf = or i8 %i.by, %i.ce
  store i8 %i.cf, ptr %i.bx, align 1, !tbaa !11
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bs ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !11
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !11
  %i.cj = add nsw i32 %.1129.1, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.3.1 = phi i32 [ %.1129.1, %bb.m ], [ %.1129.1, %bb.n ], [ %i.cj, %bb.p ], [ %.1129.1, %bb.o ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %i.ck = add nuw nsw i32 %.0106128.1, 1          ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.ck, 32
  br i1 %exitcond.1.not, label %.loopexit.1, label %bb.m, !llvm.loop !39

.loopexit.1:                                      ; preds = %bb.q, %.loopexit
  %.4.1 = phi i32 [ %.4, %.loopexit ], [ %.3.1, %bb.q ] ; 2 uses
  %i.cl = icmp slt i32 %1, 0
  br i1 %i.cl, label %.loopexit.3, label %.loopexit.1.thread

.loopexit.1.thread:                               ; preds = %bb.j, %bb.k, %.loopexit.1
  %.4.1159 = phi i32 [ %.4.1, %.loopexit.1 ], [ %.4, %bb.k ], [ %.4, %bb.j ] ; 3 uses
  %i.cm = load i32, ptr %i.k, align 4, !tbaa !21
  %.not.2 = icmp sge i32 %1, %i.cm
  %i.cn = icmp slt i32 %2, 1
  %or.cond182 = or i1 %.not.2, %i.cn
  br i1 %or.cond182, label %.loopexit.2.thread, label %bb.r

bb.r:                                             ; preds = %.loopexit.1.thread
  %i.co = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122.2.not = icmp sgt i32 %2, %i.co
  br i1 %.not122.2.not, label %.loopexit.2.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %i.m, i64 %i.o
  %i.cq = add nsw i64 %i.o, -1                    ; 2 uses
  %i.cr = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.cq
  %i.cs = getelementptr inbounds nuw [2048 x i8], ptr %i.n, i64 %i.o
  %i.ct = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.cq
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %bb.s
  %indvars.iv135.2 = phi i64 [ 0, %bb.s ], [ %indvars.iv.next136.2, %bb.x ] ; 4 uses
  %.1129.2 = phi i32 [ %.4.1159, %bb.s ], [ %.3.2, %bb.x ] ; 4 uses
  %.0106128.2 = phi i32 [ 0, %bb.s ], [ %i.ef, %bb.x ]
  %i.cu = add nuw nsw i64 %indvars.iv135.2, %i.p  ; 4 uses
  %3 = lshr i64 %i.cu, 3
  %4 = and i64 %3, 536870911
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %4
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !11
  %i.cx = zext i8 %i.cw to i32
  %i.cy = trunc nuw nsw i64 %indvars.iv135.2 to i32
  %i.cz = and i32 %i.cy, 7
  %i.da = shl nuw nsw i32 1, %i.cz
  %i.db = and i32 %i.da, %i.cx
  %.not123.2 = icmp eq i32 %i.db, 0
  br i1 %.not123.2, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = trunc i64 %indvars.iv135.2 to i32
  %5 = lshr i64 %i.cu, 3
  %6 = and i64 %5, 536870911
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 %6
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !11
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.dc, 7
  %i.dh = shl nuw nsw i32 1, %i.dg
  %i.di = and i32 %i.dh, %i.df
  %.not124.2 = icmp eq i32 %i.di, 0
  br i1 %.not124.2, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %i.cu
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !10
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cu
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !10
  %i.dn = zext i16 %i.dk to i64                   ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dn
  %i.dp = zext i16 %i.dm to i32                   ; 2 uses
  %i.dq = lshr i32 %i.dp, 3
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dr ; 2 uses
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !11  ; 2 uses
  %i.du = zext i8 %i.dt to i32
  %i.dv = and i32 %i.dp, 7
  %i.dw = shl nuw nsw i32 1, %i.dv                ; 2 uses
  %i.dx = and i32 %i.dw, %i.du
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dz = trunc nuw i32 %i.dw to i8
  %i.ea = or i8 %i.dt, %i.dz
  store i8 %i.ea, ptr %i.ds, align 1, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dn ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !11
  %i.ed = add i8 %i.ec, 1
  store i8 %i.ed, ptr %i.eb, align 1, !tbaa !11
  %i.ee = add nsw i32 %.1129.2, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  %.3.2 = phi i32 [ %.1129.2, %bb.t ], [ %.1129.2, %bb.u ], [ %i.ee, %bb.w ], [ %.1129.2, %bb.v ] ; 3 uses
  %indvars.iv.next136.2 = add nuw nsw i64 %indvars.iv135.2, 1
  %i.ef = add nuw nsw i32 %.0106128.2, 1          ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.ef, 32
  br i1 %exitcond.2.not, label %.loopexit.2, label %bb.t, !llvm.loop !39

.loopexit.2:                                      ; preds = %bb.x
  %i.eg = icmp slt i32 %1, 0
  br i1 %i.eg, label %.loopexit.3, label %.loopexit.2.thread

.loopexit.2.thread:                               ; preds = %.loopexit.1.thread, %bb.r, %.loopexit.2
  %.4.2163 = phi i32 [ %.3.2, %.loopexit.2 ], [ %.4.1159, %bb.r ], [ %.4.1159, %.loopexit.1.thread ] ; 3 uses
  %i.eh = load i32, ptr %i.k, align 4, !tbaa !21
  %.not.3 = icmp sge i32 %1, %i.eh
  %i.ei = icmp slt i32 %2, -1
  %or.cond183 = or i1 %.not.3, %i.ei
  br i1 %or.cond183, label %.loopexit.3, label %bb.y

bb.y:                                             ; preds = %.loopexit.2.thread
  %i.ej = add nsw i32 %2, 1
  %i.ek = load i32, ptr %i.l, align 4, !tbaa !22
  %.not122.3 = icmp slt i32 %i.ej, %i.ek
  br i1 %.not122.3, label %bb.z, label %.loopexit.3

bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.el = or disjoint i64 %i.o, 31                ; 2 uses
  %i.em = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.el
  %i.en = add nsw i64 %i.o, 32                    ; 2 uses
  %i.eo = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.en
  %i.ep = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.el
  %i.eq = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.en
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %bb.z
  %indvars.iv135.3 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next136.3, %bb.ae ] ; 4 uses
  %.1129.3 = phi i32 [ %.4.2163, %bb.z ], [ %.3.3, %bb.ae ] ; 4 uses
  %.0106128.3 = phi i32 [ 0, %bb.z ], [ %i.gc, %bb.ae ]
  %i.er = add nuw nsw i64 %indvars.iv135.3, %i.p  ; 4 uses
  %7 = lshr i64 %i.er, 3
  %8 = and i64 %7, 536870911
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 %8
  %i.et = load i8, ptr %i.es, align 1, !tbaa !11
  %i.eu = zext i8 %i.et to i32
  %i.ev = trunc nuw nsw i64 %indvars.iv135.3 to i32
  %i.ew = and i32 %i.ev, 7
  %i.ex = shl nuw nsw i32 1, %i.ew
  %i.ey = and i32 %i.ex, %i.eu
  %.not123.3 = icmp eq i32 %i.ey, 0
  br i1 %.not123.3, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ez = trunc i64 %indvars.iv135.3 to i32
  %9 = lshr i64 %i.er, 3
  %10 = and i64 %9, 536870911
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 %10
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = zext i8 %i.fb to i32
  %i.fd = and i32 %i.ez, 7
  %i.fe = shl nuw nsw i32 1, %i.fd
  %i.ff = and i32 %i.fe, %i.fc
  %.not124.3 = icmp eq i32 %i.ff, 0
  br i1 %.not124.3, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.er
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !10
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.er
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !10
  %i.fk = zext i16 %i.fh to i64                   ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fk
  %i.fm = zext i16 %i.fj to i32                   ; 2 uses
  %i.fn = lshr i32 %i.fm, 3
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fo ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !11  ; 2 uses
  %i.fr = zext i8 %i.fq to i32
  %i.fs = and i32 %i.fm, 7
  %i.ft = shl nuw nsw i32 1, %i.fs                ; 2 uses
  %i.fu = and i32 %i.ft, %i.fr
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.fw = trunc nuw i32 %i.ft to i8
  %i.fx = or i8 %i.fq, %i.fw
  store i8 %i.fx, ptr %i.fp, align 1, !tbaa !11
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fk ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !11
  %i.ga = add i8 %i.fz, 1
  store i8 %i.ga, ptr %i.fy, align 1, !tbaa !11
  %i.gb = add nsw i32 %.1129.3, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.3.3 = phi i32 [ %.1129.3, %bb.aa ], [ %.1129.3, %bb.ab ], [ %i.gb, %bb.ad ], [ %.1129.3, %bb.ac ] ; 2 uses
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135.3, 1
  %i.gc = add nuw nsw i32 %.0106128.3, 1          ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.gc, 32
  br i1 %exitcond.3.not, label %.loopexit.3, label %bb.aa, !llvm.loop !39

.loopexit.3:                                      ; preds = %bb.ae, %bb.a, %.loopexit.1, %bb.y, %.loopexit.2.thread, %.loopexit.2
  %.4.3 = phi i32 [ %.3.2, %.loopexit.2 ], [ %.4.2163, %.loopexit.2.thread ], [ %.4.1, %.loopexit.1 ], [ %.4.2163, %bb.y ], [ 0, %bb.a ], [ %.3.3, %bb.ae ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ge = load i8, ptr %i.gd, align 2, !tbaa !13  ; 5 uses
  %i.gf = zext i8 %i.ge to i32                    ; 3 uses
  %i.gg = shl nuw nsw i32 %i.gf, 2
  %i.gh = add nsw i32 %i.gg, %.4.3
  %i.gi = icmp slt i32 %i.gh, 129
  br i1 %i.gi, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.loopexit.3
  %i.gj = shl nuw nsw i32 %i.gf, 1
  %i.gk = add nsw i32 %i.gj, %.4.3
  %i.gl = icmp slt i32 %i.gk, 129
  br i1 %i.gl, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gm = add nsw i32 %.4.3, %i.gf
  %i.gn = icmp slt i32 %i.gm, 129
  %. = zext i1 %i.gn to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.loopexit.3
  %.0 = phi i32 [ 2, %bb.af ], [ 4, %.loopexit.3 ], [ %., %bb.ag ] ; 3 uses
  %.not134 = icmp eq i8 %i.ge, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.go = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %wide.trip.count = zext i8 %i.ge to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gp = icmp eq i8 %i.ge, 1
  br i1 %i.gp, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.new
  %indvars.iv141 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next142.1, %bb.ai ] ; 4 uses
  %.5133 = phi i32 [ 0, %.lr.ph.new ], [ %i.hl, %bb.ai ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ai ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv141
  %i.gr = load i8, ptr %i.gq, align 2, !tbaa !11
  %i.gs = zext i8 %i.gr to i32
  %i.gt = add nuw nsw i32 %.0, %i.gs
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.gt, i32 64) ; 2 uses
  %i.gu = trunc i32 %.5133 to i8
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv141 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 6
  store i8 %i.gu, ptr %i.gw, align 2, !tbaa !17
  %i.gx = trunc nuw nsw i32 %spec.store.select to i8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 5
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !23
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i8 0, ptr %i.gz, align 4, !tbaa !18
  %i.ha = add nuw nsw i32 %spec.store.select, %.5133 ; 2 uses
  %indvars.iv.next142 = or disjoint i64 %indvars.iv141, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next142
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !11
  %i.hd = zext i8 %i.hc to i32
  %i.he = add nuw nsw i32 %.0, %i.hd
  %spec.store.select.1 = tail call i32 @llvm.umin.i32(i32 %i.he, i32 64) ; 2 uses
  %i.hf = trunc i32 %i.ha to i8
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv.next142 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 6
  store i8 %i.hf, ptr %i.hh, align 2, !tbaa !17
  %i.hi = trunc nuw nsw i32 %spec.store.select.1 to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 5
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !23
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  store i8 0, ptr %i.hk, align 4, !tbaa !18
  %i.hl = add nuw nsw i32 %spec.store.select.1, %i.ha ; 2 uses
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv141.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next142.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.5133.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.hl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i8 %i.ge to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv141.epil.init
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  %i.ho = zext i8 %i.hn to i32
  %i.hp = add nuw nsw i32 %.0, %i.ho
  %spec.store.select.epil = tail call i32 @llvm.umin.i32(i32 %i.hp, i32 64)
  %i.hq = trunc i32 %.5133.epil.init to i8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv141.epil.init ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 6
  store i8 %i.hq, ptr %i.hs, align 2, !tbaa !17
  %i.ht = trunc nuw nsw i32 %spec.store.select.epil to i8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 5
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i8 0, ptr %i.hv, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.ah
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef 0)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef -1)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__add_connections_to_adjacent_cluster(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x [8 x i8]], align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.b = shl nuw nsw i32 %1, 5
  %i.c = shl nuw nsw i32 %2, 5
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 2 uses
  %i.g = icmp sge i32 %1, %i.f
  %i.h = icmp slt i32 %2, 0
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 2 uses
  %.not = icmp slt i32 %2, %i.j
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %3, %1                       ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  %.not97 = icmp slt i32 %i.k, %i.f
  %or.cond103 = and i1 %i.l, %.not97
  br i1 %or.cond103, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %4, %2                       ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %.not98 = icmp slt i32 %i.m, %i.j
  %or.cond104 = and i1 %i.n, %.not98
  br i1 %or.cond104, label %bb.f, label %.loopexit

end_hunk_0
