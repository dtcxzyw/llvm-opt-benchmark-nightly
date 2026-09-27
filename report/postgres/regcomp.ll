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
  %.190211 = phi i32 [ %i.o, %.lr.ph213 ], [ %i.gy, %bb.ar ] ; 2 uses
  %.192210 = phi ptr [ %i.r, %.lr.ph213 ], [ %i.gx, %bb.ar ] ; 3 uses
  %i.aa = load i32, ptr %.192210, align 4         ; 5 uses
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
  %i.ag = add nuw nsw i32 %i.ae, 1                ; 2 uses
  br label %.lr.ph182

.lr.ph182:                                        ; preds = %.lr.ph182.preheader, %bb.x
  %indvars.iv = phi i64 [ %i.af, %.lr.ph182.preheader ], [ %indvars.iv.next, %bb.x ] ; 4 uses
  %.0.i175178 = phi i16 [ %.promoted, %.lr.ph182.preheader ], [ %.0.i174, %bb.x ] ; 2 uses
  %i.ah = load ptr, ptr %i.s, align 8
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2            ; 4 uses
  %i.ak = load ptr, ptr %i.t, align 8
  %i.al = sext i16 %i.aj to i64                   ; 3 uses
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i16, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.f, label %newsub.exit.i

bb.f:                                             ; preds = %.lr.ph182
  %i.aq = load i32, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add i32 %i.as, %i.aq
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %newsub.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = tail call fastcc signext i16 @newcolor(ptr noundef nonnull %i.c) ; 5 uses
  %i.aw = icmp eq i16 %i.av, -1
  br i1 %i.aw, label %newsub.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %i.t, align 8
  %i.ay = getelementptr inbounds [32 x i8], ptr %i.ax, i64 %i.al
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i16 %i.av, ptr %i.az, align 8
  %i.ba = load ptr, ptr %i.t, align 8
  %i.bb = sext i16 %i.av to i64
  %i.bc = getelementptr inbounds [32 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i16 %i.av, ptr %i.bd, align 8
  br label %newsub.exit.i

newsub.exit.i:                                    ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph182
  %.017.i.i = phi i16 [ -1, %bb.g ], [ %i.aj, %bb.f ], [ %i.av, %bb.h ], [ %i.ao, %.lr.ph182 ] ; 4 uses
  %i.be = load ptr, ptr %i.u, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.bf, align 8
  %.not.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i, label %bb.i, label %subcolor.exit

bb.i:                                             ; preds = %newsub.exit.i
  %i.bh = icmp eq i16 %i.aj, %.017.i.i
  br i1 %i.bh, label %subcolor.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.t, align 8
  %i.bj = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.al ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr %i.bj, align 8
  %i.bm = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.bn = sext i16 %.017.i.i to i64               ; 3 uses
  %i.bo = getelementptr inbounds [32 x i8], ptr %i.bm, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bs = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bs, ptr %i.br, align 8
  %.pre.i = load ptr, ptr %i.t, align 8           ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds [32 x i8], ptr %.pre.i, i64 %i.bn
  %.pre21.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bt = phi i32 [ %.pre21.i, %bb.k ], [ %i.bp, %bb.j ]
  %i.bu = phi ptr [ %.pre.i, %bb.k ], [ %i.bm, %bb.j ]
  %i.bv = getelementptr inbounds [32 x i8], ptr %i.bu, i64 %i.bn
  %i.bw = add i32 %i.bt, 1
  store i32 %i.bw, ptr %i.bv, align 8
  %i.bx = load ptr, ptr %i.s, align 8
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv
  store i16 %.017.i.i, ptr %i.by, align 2
  br label %subcolor.exit

subcolor.exit:                                    ; preds = %newsub.exit.i, %bb.i, %bb.l
  %.0.i = phi i16 [ %.017.i.i, %bb.l ], [ -1, %newsub.exit.i ], [ %i.aj, %bb.i ] ; 5 uses
  %i.bz = load i32, ptr %i.v, align 8
  %.not107 = icmp eq i32 %i.bz, 0
  br i1 %.not107, label %bb.m, label %.critedge

bb.m:                                             ; preds = %subcolor.exit
  %.not108 = icmp eq i16 %.0.i, %.0.i175178
  br i1 %.not108, label %bb.x, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.w, align 8
  %i.cb = load volatile i32, ptr @InterruptPending, align 4
  %.not.i113 = icmp eq i32 %i.cb, 0
  br i1 %.not.i113, label %bb.p, label %bb.o, !prof !22

bb.o:                                             ; preds = %bb.n
  tail call void @ProcessInterrupts() #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cc = load i32, ptr %i.x, align 4
  %i.cd = load i32, ptr %i.y, align 8
  %.not24.i = icmp sgt i32 %i.cc, %i.cd
  br i1 %.not24.i, label %bb.t, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %.031.i = load ptr, ptr %.0.in30.i, align 8     ; 2 uses
  %.not2632.i = icmp eq ptr %.031.i, null
  br i1 %.not2632.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.s
  %.033.i = phi ptr [ %.0.i114, %bb.s ], [ %.031.i, %.preheader.i ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.033.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = icmp eq ptr %i.cf, %3
  br i1 %i.cg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.033.i, i64 4
  %i.ci = load i16, ptr %i.ch, align 4
  %i.cj = icmp eq i16 %i.ci, %.0.i
  br i1 %i.cj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ck = load i32, ptr %.033.i, align 8
  %i.cl = icmp eq i32 %i.ck, 112
  br i1 %i.cl, label %newarc.exit, label %bb.s

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
  %i.cm = getelementptr inbounds nuw i8, ptr %.136.i, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = icmp eq ptr %i.cn, %2
  br i1 %i.co, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph37.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.136.i, i64 4
  %i.cq = load i16, ptr %i.cp, align 4
  %i.cr = icmp eq i16 %i.cq, %.0.i
  br i1 %i.cr, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cs = load i32, ptr %.136.i, align 8
  %i.ct = icmp eq i32 %i.cs, 112
  br i1 %i.ct, label %newarc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.lr.ph37.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.136.i, i64 40
  %.1.i = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %.1.i, null
  br i1 %.not25.i, label %.loopexit.i, label %.lr.ph37.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %bb.s, %bb.w, %bb.t, %.preheader.i
  tail call fastcc void @createarc(ptr noundef %i.ca, i32 noundef 112, i16 noundef signext %.0.i, ptr noundef %2, ptr noundef %3)
  br label %newarc.exit

newarc.exit:                                      ; preds = %bb.r, %bb.v, %.loopexit.i
  %i.cv = load i32, ptr %i.v, align 8
  %.not109 = icmp eq i32 %i.cv, 0
  br i1 %.not109, label %bb.x, label %.critedge

bb.x:                                             ; preds = %newarc.exit, %bb.m
  %.0.i174 = phi i16 [ %.0.i175178, %bb.m ], [ %.0.i, %newarc.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ag, %lftr.wideiv
  br i1 %exitcond.not, label %.thread152.loopexit, label %.lr.ph182, !llvm.loop !140

.thread152.loopexit:                              ; preds = %bb.x, %bb.e
  %.0.i175.lcssa = phi i16 [ %.promoted, %bb.e ], [ %.0.i174, %bb.x ]
  %.093.lcssa = phi i32 [ %i.aa, %bb.e ], [ %i.ag, %bb.x ]
  store i16 %.0.i175.lcssa, ptr %i.a, align 2
  br label %.thread152

.thread152:                                       ; preds = %.thread152.loopexit, %bb.d
  %.396 = phi i32 [ %i.aa, %bb.d ], [ %.093.lcssa, %.thread152.loopexit ] ; 7 uses
  %i.cw = icmp ult i32 %.396, %i.ac
  br i1 %i.cw, label %bb.y, label %bb.ap

bb.y:                                             ; preds = %.thread152
  %i.cx = load ptr, ptr %i.b, align 8             ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 112 ; 7 uses
end_hunk_0
