Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/regcomp?download=true
inline.NumInlined: 319
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cclasscvec:bb.a
  br i1 %.not20.i59, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 20
  %i.dn = load i32, ptr %i.dm, align 4
  %.not21.i60 = icmp slt i32 %i.dn, 3
  br i1 %.not21.i60, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dj, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 0, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  store i32 -1, ptr %i.dp, align 8
  br label %bb.ae

bb.ac:                                            ; preds = %bb.aa, %bb.z
  tail call void @pfree(ptr noundef nonnull %i.dj) #17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.y
  %i.dq = tail call ptr @palloc_extended(i64 noundef 64, i32 noundef 2) #17 ; 11 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %getcvec.exit65, label %newcvec.exit.i62

newcvec.exit.i62:                                 ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  store i32 0, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 40 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dt, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store ptr %i.dt, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 20
  store i32 3, ptr %i.dw, align 4
  store i32 0, ptr %i.dq, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  store i32 0, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  store i32 -1, ptr %i.dy, align 8
  store ptr %i.dq, ptr %i.di, align 8
  %.pre = load i32, ptr %i.dx, align 8
  %i.dz = shl i32 %.pre, 1
  %i.ea = sext i32 %i.dz to i64
  br label %bb.ae

getcvec.exit65:                                   ; preds = %bb.ad
  store ptr null, ptr %i.di, align 8
  br label %.thread75.sink.split

bb.ae:                                            ; preds = %bb.ab, %newcvec.exit.i62
  %i.eb = phi i64 [ %i.ea, %newcvec.exit.i62 ], [ 0, %bb.ab ]
  %.0.i61.ph = phi ptr [ %i.dq, %newcvec.exit.i62 ], [ %i.dj, %bb.ab ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.0.i61.ph, i64 24 ; 6 uses
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %.0.i61.ph, i64 16 ; 9 uses
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.eb
  store i32 48, ptr %i.ef, align 4
  %i.eg = load ptr, ptr %i.ec, align 8
  %i.eh = load i32, ptr %i.ee, align 8
  %i.ei = shl i32 %i.eh, 1
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr [4 x i8], ptr %i.eg, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 4
  store i32 57, ptr %i.el, align 4
  %i.em = load i32, ptr %i.ee, align 8
  %i.en = add i32 %i.em, 1                        ; 2 uses
  store i32 %i.en, ptr %i.ee, align 8
  %i.eo = load ptr, ptr %i.ec, align 8
  %i.ep = shl i32 %i.en, 1
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.eq
  store i32 97, ptr %i.er, align 4
  %i.es = load ptr, ptr %i.ec, align 8
  %i.et = load i32, ptr %i.ee, align 8
  %i.eu = shl i32 %i.et, 1
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr [4 x i8], ptr %i.es, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  store i32 102, ptr %i.ex, align 4
  %i.ey = load i32, ptr %i.ee, align 8
  %i.ez = add i32 %i.ey, 1                        ; 2 uses
  store i32 %i.ez, ptr %i.ee, align 8
  %i.fa = load ptr, ptr %i.ec, align 8
  %i.fb = shl i32 %i.ez, 1
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fc
  store i32 65, ptr %i.fd, align 4
  %i.fe = load ptr, ptr %i.ec, align 8
  %i.ff = load i32, ptr %i.ee, align 8
  %i.fg = shl i32 %i.ff, 1
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr [4 x i8], ptr %i.fe, i64 %i.fh
  %i.fj = getelementptr i8, ptr %i.fi, i64 4
  store i32 70, ptr %i.fj, align 4
  %i.fk = load i32, ptr %i.ee, align 8
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr %i.ee, align 8
  br label %.thread

bb.af:                                            ; preds = %bb.a
  %i.fm = tail call fastcc ptr @regc_ctype_get_cache(ptr noundef nonnull @regc_wc_isspace, i32 noundef 10)
  br label %bb.aj

bb.ag:                                            ; preds = %bb.a
  %i.fn = tail call fastcc ptr @regc_ctype_get_cache(ptr noundef nonnull @regc_wc_islower, i32 noundef 7)
  br label %bb.aj

bb.ah:                                            ; preds = %bb.a
  %i.fo = tail call fastcc ptr @regc_ctype_get_cache(ptr noundef nonnull @regc_wc_isupper, i32 noundef 11)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.a
  %i.fp = tail call fastcc ptr @regc_ctype_get_cache(ptr noundef nonnull @regc_wc_isgraph, i32 noundef 6)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.x, %bb.w, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.dh, %bb.x ], [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.f, %bb.d ], [ %i.g, %bb.e ], [ %i.fm, %bb.af ], [ %i.fp, %bb.ai ], [ %i.fn, %bb.ag ], [ %i.fo, %bb.ah ], [ %i.dg, %bb.w ] ; 2 uses
  %i.fq = icmp eq ptr %.0, null
  br i1 %i.fq, label %.thread75, label %.thread

.thread75.sink.split:                             ; preds = %getcvec.exit, %getcvec.exit65
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8            ; 2 uses
  %.not23.i63 = icmp eq i32 %i.fs, 0
  %spec.select.i64 = select i1 %.not23.i63, i32 12, i32 %i.fs
  store i32 %spec.select.i64, ptr %i.fr, align 8
  br label %.thread75

.thread75:                                        ; preds = %.thread75.sink.split, %bb.a, %bb.aj
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 101, ptr %i.ft, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8            ; 2 uses
  %.not41 = icmp eq i32 %i.fv, 0
  %spec.select = select i1 %.not41, i32 12, i32 %i.fv
  store i32 %spec.select, ptr %i.fu, align 8
  br label %.thread

.thread:                                          ; preds = %bb.ae, %getcvec.exit57, %getcvec.exit49, %bb.l, %.thread75, %bb.aj
  %.073 = phi ptr [ %.0, %bb.aj ], [ null, %.thread75 ], [ %.0.i61.ph, %bb.ae ], [ %.0.i53, %getcvec.exit57 ], [ %.0.i45, %getcvec.exit49 ], [ %.0.i.ph, %bb.l ]
  ret ptr %.073
}

; Function Attrs: nounwind uwtable
define internal fastcc void @subcolorcvec(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i16 -1, ptr %i.a, align 2
  %i.d = load i32, ptr %1, align 8                ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.089173 = phi i32 [ %i.d, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %.091172 = phi ptr [ %i.g, %.lr.ph ], [ %i.k, %bb.c ] ; 2 uses
  %i.i = load i32, ptr %.091172, align 4
  call fastcc void @subcoloronechr(ptr noundef %0, i32 noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %i.a)
  %i.j = load i32, ptr %i.h, align 8
  %.not111 = icmp eq i32 %i.j, 0
  br i1 %.not111, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.091172, i64 4
  %i.l = add nsw i32 %.089173, -1
  %i.m = icmp sgt i32 %.089173, 1
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !139

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph213, label %._crit_edge214

.lr.ph213:                                        ; preds = %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.0.in30.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph213, %bb.ar
  %.190211 = phi i32 [ %i.o, %.lr.ph213 ], [ %i.gx, %bb.ar ] ; 2 uses
  %.192210 = phi ptr [ %i.r, %.lr.ph213 ], [ %i.gw, %bb.ar ] ; 3 uses
  %i.aa = load i32, ptr %.192210, align 4         ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.192210, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 13 uses
  %i.ad = icmp ult i32 %i.aa, 2048
  br i1 %i.ad, label %bb.e, label %.thread152

bb.e:                                             ; preds = %bb.d
  %.promoted = load i16, ptr %i.a, align 2        ; 2 uses
  %.not106177 = icmp ult i32 %i.ac, %i.aa
  br i1 %.not106177, label %.thread152.loopexit, label %.lr.ph182.preheader

.lr.ph182.preheader:                              ; preds = %bb.e
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 2047)
  %i.af = zext nneg i32 %i.aa to i64
  %umax = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %i.ae)
  %4 = add nuw nsw i32 %umax, 1                   ; 2 uses
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %bb.x
  %indvars.iv = phi i64 [ %i.af, %.lr.ph182.preheader ], [ %indvars.iv.next, %bb.x ] ; 4 uses
  %.0.i175178 = phi i16 [ %.promoted, %.lr.ph182.preheader ], [ %.0.i174, %bb.x ] ; 2 uses
  %i.ag = load ptr, ptr %i.s, align 8
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2            ; 4 uses
  %i.aj = load ptr, ptr %i.t, align 8
  %i.ak = sext i16 %i.ai to i64                   ; 3 uses
  %i.al = getelementptr inbounds [32 x i8], ptr %i.aj, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i16, ptr %i.am, align 8            ; 2 uses
  %i.ao = icmp eq i16 %i.an, -1
  br i1 %i.ao, label %bb.f, label %newsub.exit.i

bb.f:                                             ; preds = %.lr.ph182
  %i.ap = load i32, ptr %i.al, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add i32 %i.ar, %i.ap
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %newsub.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = tail call fastcc signext i16 @newcolor(ptr noundef nonnull %i.c) ; 5 uses
  %i.av = icmp eq i16 %i.au, -1
  br i1 %i.av, label %newsub.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = load ptr, ptr %i.t, align 8
  %i.ax = getelementptr inbounds [32 x i8], ptr %i.aw, i64 %i.ak
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i16 %i.au, ptr %i.ay, align 8
  %i.az = load ptr, ptr %i.t, align 8
  %i.ba = sext i16 %i.au to i64
  %i.bb = getelementptr inbounds [32 x i8], ptr %i.az, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i16 %i.au, ptr %i.bc, align 8
  br label %newsub.exit.i

newsub.exit.i:                                    ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph182
  %.017.i.i = phi i16 [ -1, %bb.g ], [ %i.ai, %bb.f ], [ %i.au, %bb.h ], [ %i.an, %.lr.ph182 ] ; 4 uses
  %i.bd = load ptr, ptr %i.u, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load i32, ptr %i.be, align 8
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %bb.i, label %subcolor.exit

bb.i:                                             ; preds = %newsub.exit.i
  %i.bg = icmp eq i16 %i.ai, %.017.i.i
  br i1 %i.bg, label %subcolor.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.t, align 8
  %i.bi = getelementptr inbounds [32 x i8], ptr %i.bh, i64 %i.ak ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = add i32 %i.bj, -1
  store i32 %i.bk, ptr %i.bi, align 8
  %i.bl = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.bm = sext i16 %.017.i.i to i64               ; 3 uses
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8            ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = trunc nuw i64 %indvars.iv to i32
  store i32 %i.br, ptr %i.bq, align 8
  %.pre.i = load ptr, ptr %i.t, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds [32 x i8], ptr %.pre.i, i64 %i.bm
  %.pre21.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bs = phi i32 [ %.pre21.i, %bb.k ], [ %i.bo, %bb.j ]
  %i.bt = phi ptr [ %.pre.i, %bb.k ], [ %i.bl, %bb.j ]
  %i.bu = getelementptr inbounds [32 x i8], ptr %i.bt, i64 %i.bm
  %i.bv = add i32 %i.bs, 1
  store i32 %i.bv, ptr %i.bu, align 8
  %i.bw = load ptr, ptr %i.s, align 8
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %indvars.iv
  store i16 %.017.i.i, ptr %i.bx, align 2
  br label %subcolor.exit

subcolor.exit:                                    ; preds = %newsub.exit.i, %bb.i, %bb.l
  %.0.i = phi i16 [ %.017.i.i, %bb.l ], [ -1, %newsub.exit.i ], [ %i.ai, %bb.i ] ; 5 uses
  %i.by = load i32, ptr %i.v, align 8
  %.not107 = icmp eq i32 %i.by, 0
  br i1 %.not107, label %bb.m, label %.critedge

bb.m:                                             ; preds = %subcolor.exit
  %.not108 = icmp eq i16 %.0.i, %.0.i175178
  br i1 %.not108, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.w, align 8
  %i.ca = load volatile i32, ptr @InterruptPending, align 4
  %.not.i113 = icmp eq i32 %i.ca, 0
  br i1 %.not.i113, label %bb.p, label %bb.o, !prof !22

bb.o:                                             ; preds = %bb.n
  tail call void @ProcessInterrupts() #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cb = load i32, ptr %i.x, align 4
  %i.cc = load i32, ptr %i.y, align 8
  %.not24.i = icmp sgt i32 %i.cb, %i.cc
  br i1 %.not24.i, label %bb.t, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %.031.i = load ptr, ptr %.0.in30.i, align 8     ; 2 uses
  %.not2632.i = icmp eq ptr %.031.i, null
  br i1 %.not2632.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.s
  %.033.i = phi ptr [ %.0.i114, %bb.s ], [ %.031.i, %.preheader.i ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = icmp eq ptr %i.ce, %3
  br i1 %i.cf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %i.ch = load i16, ptr %i.cg, align 4
  %i.ci = icmp eq i16 %i.ch, %.0.i
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cj = load i32, ptr %.033.i, align 8
  %i.ck = icmp eq i32 %i.cj, 112
  br i1 %i.ck, label %newarc.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %.lr.ph.i
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.033.i, i64 24
  %.0.i114 = load ptr, ptr %.0.in.i, align 8      ; 2 uses
  %.not26.i = icmp eq ptr %.0.i114, null
  br i1 %.not26.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !4

bb.t:                                             ; preds = %bb.p
  %.134.i = load ptr, ptr %i.z, align 8           ; 2 uses
  %.not2535.i = icmp eq ptr %.134.i, null
  br i1 %.not2535.i, label %.loopexit.i, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.t, %bb.w
  %.136.i = phi ptr [ %.1.i, %bb.w ], [ %.134.i, %bb.t ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.136.i, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = icmp eq ptr %i.cm, %2
  br i1 %i.cn, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph37.i
  %i.co = getelementptr inbounds nuw i8, ptr %.136.i, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = icmp eq i16 %i.cp, %.0.i
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cr = load i32, ptr %.136.i, align 8
  %i.cs = icmp eq i32 %i.cr, 112
  br i1 %i.cs, label %newarc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph37.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.136.i, i64 40
  %.1.i = load ptr, ptr %i.ct, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %.1.i, null
  br i1 %.not25.i, label %.loopexit.i, label %.lr.ph37.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %bb.s, %bb.w, %bb.t, %.preheader.i
  tail call fastcc void @createarc(ptr noundef %i.bz, i32 noundef 112, i16 noundef signext %.0.i, ptr noundef %2, ptr noundef %3)
  br label %newarc.exit

newarc.exit:                                      ; preds = %bb.r, %bb.v, %.loopexit.i
  %i.cu = load i32, ptr %i.v, align 8
  %.not109 = icmp eq i32 %i.cu, 0
  br i1 %.not109, label %bb.x, label %.critedge

bb.x:                                             ; preds = %newarc.exit, %bb.m
  %.0.i174 = phi i16 [ %.0.i175178, %bb.m ], [ %.0.i, %newarc.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %4, %lftr.wideiv
  br i1 %exitcond.not, label %.thread152.loopexit, label %.lr.ph182, !llvm.loop !140

.thread152.loopexit:                              ; preds = %bb.x, %bb.e
  %.0.i175.lcssa = phi i16 [ %.promoted, %bb.e ], [ %.0.i174, %bb.x ]
  %.093.lcssa = phi i32 [ %i.aa, %bb.e ], [ %4, %bb.x ]
  store i16 %.0.i175.lcssa, ptr %i.a, align 2
  br label %.thread152

.thread152:                                       ; preds = %.thread152.loopexit, %bb.d
  %.396 = phi i32 [ %i.aa, %bb.d ], [ %.093.lcssa, %.thread152.loopexit ] ; 7 uses
  %i.cv = icmp ult i32 %.396, %i.ac
  br i1 %i.cv, label %bb.y, label %bb.ap

bb.y:                                             ; preds = %.thread152
  %i.cw = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 112 ; 7 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = shl i32 %i.cy, 1
  %i.da = or disjoint i32 %i.cz, 1
  %i.db = sext i32 %i.da to i64
  %i.dc = tail call ptr @palloc_mul_extended(i64 noundef 12, i64 noundef %i.db, i32 noundef 2) #17 ; 10 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 36
  store i32 101, ptr %i.dg, align 4
  %i.dh = load ptr, ptr %i.de, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8            ; 2 uses
  %.not150.i = icmp eq i32 %i.dj, 0
  %spec.select.i = select i1 %.not150.i, i32 12, i32 %i.dj
  store i32 %spec.select.i, ptr %i.di, align 8
  br label %subcoloronerange.exit

bb.aa:                                            ; preds = %bb.y
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cw, i64 120 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 4 uses
  %i.dm = load i32, ptr %i.cx, align 8            ; 3 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i117.preheader, label %._crit_edge.i

.lr.ph.i117.preheader:                            ; preds = %bb.aa
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dp = load i32, ptr %i.do, align 4
  %.not.i118184 = icmp ult i32 %i.dp, %.396
  br i1 %.not.i118184, label %.lr.ph187, label %._crit_edge.i

.lr.ph.i117:                                      ; preds = %.lr.ph187
  %i.dq = getelementptr inbounds nuw i8, ptr %.0128152.i186, i64 16
  %i.dr = load i32, ptr %i.dq, align 4
  %.not.i118 = icmp ult i32 %i.dr, %.396
  br i1 %.not.i118, label %.lr.ph187, label %._crit_edge.loopexit.split.loop.exit.i.loopexit, !llvm.loop !141

.lr.ph187:                                        ; preds = %.lr.ph.i117.preheader, %.lr.ph.i117
  %.0128152.i186 = phi ptr [ %i.dt, %.lr.ph.i117 ], [ %i.dl, %.lr.ph.i117.preheader ] ; 3 uses
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i, %.lr.ph.i117 ], [ 0, %.lr.ph.i117.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i185, 1 ; 3 uses
  %indvars183.i = trunc i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.ds = getelementptr inbounds nuw [12 x i8], ptr %i.dc, i64 %indvars.iv.i185
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ds, ptr noundef nonnull align 4 dereferenceable(12) %.0128152.i186, i64 12, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.0128152.i186, i64 12 ; 3 uses
  %i.du = load i32, ptr %i.cx, align 8            ; 3 uses
  %i.dv = icmp sgt i32 %i.du, %indvars183.i
  br i1 %i.dv, label %.lr.ph.i117, label %._crit_edge.i, !llvm.loop !141

._crit_edge.loopexit.split.loop.exit.i.loopexit:  ; preds = %.lr.ph.i117
  %i.dw = trunc i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph187, %._crit_edge.loopexit.split.loop.exit.i.loopexit, %.lr.ph.i117.preheader, %bb.aa
  %i.dx = phi i32 [ %i.dm, %bb.aa ], [ %i.dm, %.lr.ph.i117.preheader ], [ %i.du, %._crit_edge.loopexit.split.loop.exit.i.loopexit ], [ %i.du, %.lr.ph187 ] ; 3 uses
  %.0131.lcssa.i = phi i32 [ 0, %bb.aa ], [ 0, %.lr.ph.i117.preheader ], [ %i.dw, %._crit_edge.loopexit.split.loop.exit.i.loopexit ], [ %indvars183.i, %.lr.ph187 ] ; 7 uses
  %.0128.lcssa.i = phi ptr [ %i.dl, %bb.aa ], [ %i.dl, %.lr.ph.i117.preheader ], [ %i.dt, %._crit_edge.loopexit.split.loop.exit.i.loopexit ], [ %i.dt, %.lr.ph187 ] ; 4 uses
  %i.dy = icmp slt i32 %.0131.lcssa.i, %i.dx
  br i1 %i.dy, label %.lr.ph165.i, label %.critedge.i

.lr.ph165.i:                                      ; preds = %._crit_edge.i
  %i.dz = add nuw i32 %i.ac, 1
  %i.ea = load i32, ptr %.0128.lcssa.i, align 4   ; 2 uses
  %.not145.i191 = icmp ugt i32 %i.ea, %i.ac
  br i1 %.not145.i191, label %.critedge.i, label %.lr.ph198

bb.ab:                                            ; preds = %bb.ak
  %i.eb = load i32, ptr %i.fz, align 4            ; 2 uses
  %.not145.i = icmp ugt i32 %i.eb, %i.ac
  br i1 %.not145.i, label %.critedge.i, label %.lr.ph198, !llvm.loop !142

.lr.ph198:                                        ; preds = %.lr.ph165.i, %bb.ab
  %i.ec = phi i32 [ %i.eb, %bb.ab ], [ %i.ea, %.lr.ph165.i ] ; 3 uses
  %.0134160.i197 = phi i32 [ %.2136.i, %bb.ab ], [ %.396, %.lr.ph165.i ] ; 6 uses
  %.1132161.i196 = phi i32 [ %.5.i, %bb.ab ], [ %.0131.lcssa.i, %.lr.ph165.i ] ; 5 uses
  %.1129162.i193 = phi ptr [ %i.fz, %bb.ab ], [ %.0128.lcssa.i, %.lr.ph165.i ] ; 10 uses
  %.1163.i192 = phi i32 [ %i.ga, %bb.ab ], [ %.0131.lcssa.i, %.lr.ph165.i ]
  %i.ed = icmp ult i32 %.0134160.i197, %i.ec
  br i1 %i.ed, label %.thread.i, label %bb.ac

.thread.i:                                        ; preds = %.lr.ph198
  %i.ee = sext i32 %.1132161.i196 to i64
  %i.ef = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.ee ; 3 uses
  store i32 %.0134160.i197, ptr %i.ef, align 4
  %i.eg = load i32, ptr %.1129162.i193, align 4
  %i.eh = add i32 %i.eg, -1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  store i32 %i.eh, ptr %i.ei, align 4
  %i.ej = tail call fastcc i32 @newhicolorrow(ptr noundef %i.cw, i32 noundef 0) ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i32 %i.ej, ptr %i.ek, align 4
  %i.el = add i32 %.1132161.i196, 1
  call fastcc void @subcoloronerow(ptr noundef nonnull readonly %0, i32 noundef %i.ej, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %i.em = load i32, ptr %.1129162.i193, align 4
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph198
  %.not148.i = icmp ugt i32 %.0134160.i197, %i.ec
  br i1 %.not148.i, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i
  %.2133205.i = phi i32 [ %i.el, %.thread.i ], [ %.1132161.i196, %bb.ac ] ; 3 uses
  %.1135204.i = phi i32 [ %i.em, %.thread.i ], [ %.0134160.i197, %bb.ac ]
  %i.en = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4
  %.not149.i = icmp ult i32 %i.ac, %i.eo
  br i1 %.not149.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ep = add i32 %.2133205.i, 1
  %i.eq = sext i32 %.2133205.i to i64
  %i.er = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.er, ptr noundef nonnull align 4 dereferenceable(12) %.1129162.i193, i64 12, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 8
  %i.et = load i32, ptr %i.es, align 4
  br label %bb.ak

bb.af:                                            ; preds = %bb.ac
  %i.eu = sext i32 %.1132161.i196 to i64
  %i.ev = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.eu ; 3 uses
  store i32 %i.ec, ptr %i.ev, align 4
  %i.ew = add i32 %.0134160.i197, -1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.ew, ptr %i.ex, align 4
  %i.ey = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 8
  %i.ez = load i32, ptr %i.ey, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %i.ez, ptr %i.fa, align 4
  %i.fb = add i32 %.1132161.i196, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad
  %.1135203.i = phi i32 [ %.0134160.i197, %bb.af ], [ %.1135204.i, %bb.ad ] ; 2 uses
  %.3.i = phi i32 [ %i.fb, %bb.af ], [ %.2133205.i, %bb.ad ] ; 3 uses
  %i.fc = sext i32 %.3.i to i64
  %i.fd = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.fc ; 3 uses
  store i32 %.1135203.i, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 4 ; 5 uses
  %i.ff = load i32, ptr %i.fe, align 4
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  store i32 %..i, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 8 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = tail call fastcc i32 @newhicolorrow(ptr noundef %i.cw, i32 noundef %i.fi) ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i32 %i.fj, ptr %i.fk, align 4
  %i.fl = add i32 %.3.i, 1                        ; 2 uses
  %i.fm = load i32, ptr %i.fe, align 4
  %i.fn = icmp ult i32 %i.ac, %i.fm
  br i1 %i.fn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fo = sext i32 %i.fl to i64
  %i.fp = getelementptr inbounds [12 x i8], ptr %i.dc, i64 %i.fo ; 3 uses
  store i32 %i.dz, ptr %i.fp, align 4
  %i.fq = load i32, ptr %i.fe, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = load i32, ptr %.1129162.i193, align 4
  %i.ft = icmp ugt i32 %.1135203.i, %i.fs
  %i.fu = load i32, ptr %i.fh, align 4            ; 2 uses
  br i1 %i.ft, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fv = tail call fastcc i32 @newhicolorrow(ptr noundef %i.cw, i32 noundef %i.fu)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fw = phi i32 [ %i.fv, %bb.ai ], [ %i.fu, %bb.ah ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i32 %i.fw, ptr %i.fx, align 4
  %i.fy = add i32 %.3.i, 2
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag, %bb.ae
  %.2136.in.in.i = phi ptr [ %i.en, %bb.ae ], [ %i.fe, %bb.aj ], [ %i.fe, %bb.ag ]
  %.5.i = phi i32 [ %i.ep, %bb.ae ], [ %i.fy, %bb.aj ], [ %i.fl, %bb.ag ] ; 3 uses
  %.0.i116 = phi i32 [ %i.et, %bb.ae ], [ %i.fj, %bb.aj ], [ %i.fj, %bb.ag ]
  %.2136.in.i = load i32, ptr %.2136.in.in.i, align 4
  %.2136.i = add i32 %.2136.in.i, 1               ; 3 uses
  call fastcc void @subcoloronerow(ptr noundef nonnull readonly %0, i32 noundef %.0.i116, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a)
  %i.fz = getelementptr inbounds nuw i8, ptr %.1129162.i193, i64 12 ; 4 uses
  %i.ga = add nuw nsw i32 %.1163.i192, 1          ; 4 uses
  %i.gb = load i32, ptr %i.cx, align 8            ; 3 uses
  %i.gc = icmp slt i32 %i.ga, %i.gb
end_hunk_0
