inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@iostat_packet:bb.a
  %i.su = load i64, ptr %i.st, align 8            ; 4 uses
  %i.sv = getelementptr i8, ptr %.0403.lcssa, i64 48 ; 4 uses
  switch i32 %i.so, label %bb.df [
    i32 22, label %bb.dc
    i32 23, label %bb.dd
    i32 25, label %bb.de
  ]

bb.dc:                                            ; preds = %bb.db
  %i.sw = load float, ptr %i.sv, align 8
  %i.sx = fptoui float %i.sw to i64
  %i.sy = load i32, ptr %i.sh, align 8
  %i.sz = zext i32 %i.sy to i64
  %i.ta = udiv i64 %i.sx, %i.sz
  %.458 = tail call i64 @llvm.umax.i64(i64 %i.su, i64 %i.ta)
  store i64 %.458, ptr %i.st, align 8
  br label %bb.dg

bb.dd:                                            ; preds = %bb.db
  %i.tb = load double, ptr %i.sv, align 8
  %i.tc = fptoui double %i.tb to i64
  %i.td = load i32, ptr %i.sh, align 8
  %i.te = zext i32 %i.td to i64
  %i.tf = udiv i64 %i.tc, %i.te
  %.459 = tail call i64 @llvm.umax.i64(i64 %i.su, i64 %i.tf)
  store i64 %.459, ptr %i.st, align 8
  br label %bb.dg

bb.de:                                            ; preds = %bb.db
  %i.tg = load i64, ptr %i.sv, align 8
  %i.th = load i32, ptr %i.sh, align 8
  %i.ti = zext i32 %i.th to i64
  %i.tj = udiv i64 %i.tg, %i.ti
  %i.tk = add i64 %i.tj, 500000000
  %i.tl = udiv i64 %i.tk, 1000000000
  %.460 = tail call i64 @llvm.umax.i64(i64 %i.su, i64 %i.tl)
  store i64 %.460, ptr %i.st, align 8
  br label %bb.dg

bb.df:                                            ; preds = %bb.db
  %i.tm = load i64, ptr %i.sv, align 8
  %i.tn = load i32, ptr %i.sh, align 8
  %i.to = zext i32 %i.tn to i64
  %i.tp = udiv i64 %i.tm, %i.to
  %.461 = tail call i64 @llvm.umax.i64(i64 %i.su, i64 %i.tp)
  store i64 %.461, ptr %i.st, align 8
  br label %bb.dg

bb.dg:                                            ; preds = %.loopexit, %bb.cu, %bb.ct, %bb.cs, %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.da, %bb.df, %bb.de, %bb.dd, %bb.dc, %bb.co
  %.0401 = phi i32 [ 2, %bb.co ], [ 1, %bb.dc ], [ 1, %bb.dd ], [ 1, %bb.de ], [ 1, %bb.df ], [ 1, %bb.da ], [ 1, %bb.cw ], [ 1, %bb.cx ], [ 1, %bb.cy ], [ 1, %bb.cz ], [ 1, %bb.cs ], [ 1, %bb.ct ], [ 1, %bb.cu ], [ 1, %.loopexit ]
  ret i32 %.0401
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @iostat_draw(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %1 = alloca %struct.nstime_t, align 8           ; 9 uses
  %i.a = alloca [7 x i8], align 1                 ; 4 uses
  %i.b = alloca [7 x i8], align 1                 ; 4 uses
  %i.c = alloca [7 x i8], align 1                 ; 4 uses
  %i.d = alloca [7 x i8], align 1                 ; 4 uses
  %i.e = alloca [31 x i8], align 16               ; 6 uses
  %2 = alloca %struct.nstime_t, align 8           ; 4 uses
  %i.f = alloca [31 x i8], align 16               ; 14 uses
  %3 = alloca %struct.nstime_t, align 8           ; 7 uses
  %4 = alloca %struct.nstime_t, align 8           ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.g = load ptr, ptr %0, align 8                ; 16 uses
  %i.h = getelementptr i8, ptr %i.g, i64 12       ; 9 uses
  %i.i = load i32, ptr %i.h, align 4              ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 9 uses
  %i.k = tail call noalias ptr @g_malloc_n(i64 noundef %i.j, i64 noundef 8) #16 ; 11 uses
  %i.l = tail call noalias ptr @g_malloc0_n(i64 noundef %i.j, i64 noundef 8) #16 ; 4 uses
  %.pre319 = shl nuw nsw i64 %i.j, 3              ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 120), align 8
  %i.n = mul i64 %i.m, 1000000
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 128), align 8
  %i.p = add i32 %i.o, 500
  %i.q = sdiv i32 %i.p, 1000
  %i.r = sext i32 %i.q to i64
  %i.s = add i64 %i.n, %i.r                       ; 7 uses
  %i.t = tail call noalias ptr @g_malloc(i64 noundef %.pre319) #15 ; 4 uses
  %.not287 = icmp eq i32 %i.i, 0                  ; 5 uses
  br i1 %.not287, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr i8, ptr %i.g, i64 16
  %.pre = load ptr, ptr %i.u, align 8             ; 3 uses
  %min.iters.check = icmp ult i32 %i.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.j, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr [56 x i8], ptr %.pre, <2 x i64> %vec.ind
  %wide.gep371 = getelementptr [56 x i8], ptr %.pre, <2 x i64> %step.add
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 16
  store <2 x ptr> %wide.gep, ptr %i.v, align 8
  store <2 x ptr> %wide.gep371, ptr %i.w, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.j
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.y = getelementptr [56 x i8], ptr %.pre, i64 %indvars.iv
  %i.z = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.y, ptr %i.z, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.aa = load i64, ptr %i.g, align 8             ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, %i.s
  %i.ac = icmp eq i64 %i.aa, -1
  %or.cond231 = or i1 %i.ab, %i.ac                ; 2 uses
  br i1 %or.cond231, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store i64 -1, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.0 = phi i64 [ %i.s, %bb.b ], [ %i.aa, %._crit_edge ] ; 6 uses
  %i.ad = udiv i64 %i.s, 1000000
  %i.ae = and i64 %i.ad, 4294967295               ; 4 uses
  %i.af = icmp samesign ult i64 %i.ae, 10         ; 2 uses
  br i1 %i.af, label %magnitude.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp samesign ult i64 %i.ae, 100
  br i1 %i.ag, label %magnitude.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp samesign ult i64 %i.ae, 1000
  br i1 %i.ah, label %magnitude.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp samesign ult i64 %i.ae, 10000
  %spec.select365 = select i1 %i.ai, i32 4, i32 5
  br label %magnitude.exit

magnitude.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.lcssa.i = phi i32 [ 1, %bb.c ], [ %spec.select365, %bb.f ], [ 2, %bb.d ], [ 3, %bb.e ] ; 3 uses
  %i.aj = icmp ult i64 %.0, 10000000
  br i1 %i.aj, label %magnitude.exit237, label %bb.g

bb.g:                                             ; preds = %magnitude.exit
  %i.ak = icmp ult i64 %.0, 100000000
  br i1 %i.ak, label %magnitude.exit237, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = icmp ult i64 %.0, 1000000000
  br i1 %i.al, label %magnitude.exit237, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = icmp ult i64 %.0, 10000000000
  %spec.select366 = select i1 %i.am, i32 4, i32 5
  br label %magnitude.exit237

magnitude.exit237:                                ; preds = %bb.i, %bb.h, %bb.g, %magnitude.exit
  %.lcssa.i236 = phi i32 [ 1, %magnitude.exit ], [ %spec.select366, %bb.i ], [ 2, %bb.g ], [ 3, %bb.h ]
  %i.an = icmp eq i64 %.0, %i.s
  br i1 %i.an, label %.thread, label %bb.j

.thread:                                          ; preds = %magnitude.exit237
  %.0215 = select i1 %i.af, i32 3, i32 1          ; 2 uses
  %i.ao = add nuw nsw i32 %.lcssa.i, 31
  %i.ap = add nuw nsw i32 %i.ao, %.0215
  br label %.lr.ph262.preheader

bb.j:                                             ; preds = %magnitude.exit237
  %i.aq = getelementptr i8, ptr %i.g, i64 8
  %i.ar = load i32, ptr %i.aq, align 8            ; 4 uses
  %i.as = tail call i32 @llvm.umax.i32(i32 %.lcssa.i236, i32 %.lcssa.i)
  %i.at = add nuw nsw i32 %i.as, 25
  %i.au = icmp eq i32 %i.ar, 0
  %i.av = add i32 %i.ar, 1
  %i.aw = select i1 %i.au, i32 0, i32 %i.av
  %i.ax = add i32 %i.at, %i.aw                    ; 2 uses
  %.not288 = icmp eq i32 %i.ar, 0
  br i1 %.not288, label %._crit_edge263, label %.lr.ph262.preheader

.lr.ph262.preheader:                              ; preds = %.thread, %bb.j
  %.1216359 = phi i32 [ %.0215, %.thread ], [ %i.ar, %bb.j ] ; 6 uses
  %.0217357 = phi i32 [ %i.ap, %.thread ], [ %i.ax, %bb.j ] ; 2 uses
  %xtraiter = and i32 %.1216359, 1
  %5 = icmp eq i32 %.1216359, 1
  br i1 %5, label %.lr.ph262.epil, label %.lr.ph262.preheader.new

.lr.ph262.preheader.new:                          ; preds = %.lr.ph262.preheader
  %unroll_iter = and i32 %.1216359, -2
  br label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph262, %.lr.ph262.preheader.new
  %.0203260 = phi i64 [ 1000000, %.lr.ph262.preheader.new ], [ %6, %.lr.ph262 ]
  %niter = phi i32 [ 0, %.lr.ph262.preheader.new ], [ %niter.next.3, %.lr.ph262 ]
  %6 = udiv i64 %.0203260, 100                    ; 3 uses
  %niter.next.3 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge263.loopexit.unr-lcssa, label %.lr.ph262, !llvm.loop !34

._crit_edge263.loopexit.unr-lcssa:                ; preds = %.lr.ph262
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge263, label %.lr.ph262.epil

.lr.ph262.epil:                                   ; preds = %._crit_edge263.loopexit.unr-lcssa, %.lr.ph262.preheader
  %.0203260.epil = phi i64 [ 1000000, %.lr.ph262.preheader ], [ %6, %._crit_edge263.loopexit.unr-lcssa ]
  %lcmp.mod376 = trunc i32 %.1216359 to i1
  tail call void @llvm.assume(i1 %lcmp.mod376)
  %7 = udiv i64 %.0203260.epil, 10
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %.lr.ph262.epil, %._crit_edge263.loopexit.unr-lcssa, %bb.j
  %.not288362 = phi i1 [ true, %bb.j ], [ false, %._crit_edge263.loopexit.unr-lcssa ], [ false, %.lr.ph262.epil ] ; 3 uses
  %.1216360 = phi i32 [ 0, %bb.j ], [ %.1216359, %._crit_edge263.loopexit.unr-lcssa ], [ %.1216359, %.lr.ph262.epil ] ; 12 uses
  %.0217358 = phi i32 [ %i.ax, %bb.j ], [ %.0217357, %._crit_edge263.loopexit.unr-lcssa ], [ %.0217357, %.lr.ph262.epil ]
  %.0203.lcssa = phi i64 [ 1000000, %bb.j ], [ %6, %._crit_edge263.loopexit.unr-lcssa ], [ %7, %.lr.ph262.epil ] ; 3 uses
  %i.ay = urem i64 %i.s, %.0203.lcssa
  %i.az = udiv i64 %.0203.lcssa, 10
  %i.ba = mul nuw nsw i64 %i.az, 5                ; 2 uses
  %i.bb = icmp samesign ugt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %magnitude.exit242

bb.k:                                             ; preds = %._crit_edge263
  %i.bc = add i64 %i.ba, %i.s
  %.fr = freeze i64 %i.bc                         ; 2 uses
  %i.bd = urem i64 %.fr, %.0203.lcssa
  %i.be = sub nuw i64 %.fr, %i.bd                 ; 5 uses
  %i.bf = udiv i64 %i.be, 1000000
  %i.bg = and i64 %i.bf, 4294967295               ; 4 uses
  %i.bh = icmp samesign ult i64 %i.bg, 10
  br i1 %i.bh, label %magnitude.exit242, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp samesign ult i64 %i.bg, 100
  br i1 %i.bi, label %magnitude.exit242, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = icmp samesign ult i64 %i.bg, 1000
  br i1 %i.bj, label %magnitude.exit242, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp samesign ult i64 %i.bg, 10000
  %spec.select367 = select i1 %i.bk, i32 4, i32 5
  br label %magnitude.exit242

magnitude.exit242:                                ; preds = %bb.n, %bb.k, %bb.l, %bb.m, %._crit_edge263
  %.0214 = phi i32 [ %.lcssa.i, %._crit_edge263 ], [ 1, %bb.k ], [ %spec.select367, %bb.n ], [ 2, %bb.l ], [ 3, %bb.m ]
  %.0199 = phi i64 [ %i.s, %._crit_edge263 ], [ %i.be, %bb.k ], [ %i.be, %bb.n ], [ %i.be, %bb.l ], [ %i.be, %bb.m ] ; 5 uses
  %spec.select = select i1 %or.cond231, i64 %.0199, i64 %.0 ; 8 uses
  %i.bl = add i32 %.1216360, 1
  %i.bm = select i1 %.not288362, i32 0, i32 %i.bl ; 2 uses
  %i.bn = add i32 %i.bm, 1
  %i.bo = add i32 %i.bn, %.0214
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 3) ; 3 uses
  %i.bq = tail call i32 @timestamp_get_type()
  switch i32 %i.bq, label %bb.p [
    i32 3, label %bb.o
    i32 4, label %bb.o
    i32 9, label %bb.o
    i32 10, label %bb.o
  ]

bb.o:                                             ; preds = %magnitude.exit242, %magnitude.exit242, %magnitude.exit242, %magnitude.exit242
  %i.br = add i32 %.1216360, 25
  br label %bb.q

bb.p:                                             ; preds = %magnitude.exit242
  %i.bs = shl nuw i32 %i.bp, 1
  %i.bt = add i32 %i.bs, 6
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0220 = phi i32 [ %i.bt, %bb.p ], [ %i.br, %bb.o ] ; 4 uses
  %i.bu = load i32, ptr %i.h, align 4
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %iostat_calc_cols_width_and_fmt.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.bv = getelementptr i8, ptr %i.g, i64 80
  %i.bw = getelementptr i8, ptr %i.g, i64 56      ; 7 uses
  %i.bx = getelementptr i8, ptr %i.g, i64 72
  %i.by = getelementptr i8, ptr %i.g, i64 64
  br label %bb.r

bb.r:                                             ; preds = %bb.cp, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cp ] ; 18 uses
  %.090126.i = phi ptr [ null, %.lr.ph.i ], [ %.3.i, %bb.cp ]
  %.092125.i = phi i32 [ 0, %.lr.ph.i ], [ %.294.i, %bb.cp ] ; 2 uses
  %i.bz = load ptr, ptr %i.bv, align 8
  %i.ca = getelementptr [4 x i8], ptr %i.bz, i64 %indvars.iv.i
  %i.cb = load i32, ptr %i.ca, align 4            ; 5 uses
  %i.cc = icmp eq i32 %i.cb, 2
  br i1 %i.cc, label %.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr [16 x i8], ptr @calc_type_table, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 16
  %i.cg = tail call i64 @strlen(ptr noundef %i.cf) #14
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = icmp eq i32 %i.cb, 0
  switch i32 %i.cb, label %bb.as [
    i32 3, label %bb.ai
    i32 0, label %.thread.i
    i32 1, label %bb.ai
  ]

.thread.i:                                        ; preds = %bb.s, %bb.r
  %i.cj = phi i1 [ false, %bb.r ], [ %i.ci, %bb.s ]
  %i.ck = load ptr, ptr %i.by, align 8
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = load i32, ptr %i.cl, align 4            ; 4 uses
  %i.cn = icmp ult i32 %i.cm, 1000000
  br i1 %i.cn, label %magnitude.exit.i, label %bb.t

bb.t:                                             ; preds = %.thread.i
  %i.co = icmp ult i32 %i.cm, 10000000
  br i1 %i.co, label %magnitude.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cp = icmp ult i32 %i.cm, 100000000
  br i1 %i.cp, label %magnitude.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = icmp ult i32 %i.cm, 1000000000
  %spec.select.i = select i1 %i.cq, i32 9, i32 10
  br label %magnitude.exit.i

magnitude.exit.i:                                 ; preds = %bb.v, %bb.u, %bb.t, %.thread.i
  %.lcssa.i.i = phi i32 [ 6, %.thread.i ], [ %spec.select.i, %bb.v ], [ 8, %bb.u ], [ 7, %bb.t ] ; 4 uses
  %i.cr = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i ; 2 uses
  store i32 %.lcssa.i.i, ptr %i.cr, align 4
  %i.cs = add i32 %.092125.i, 3
  %i.ct = add i32 %i.cs, %.lcssa.i.i              ; 2 uses
  br i1 %i.cj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %magnitude.exit.i
  %i.cu = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.40, i32 noundef %.lcssa.i.i)
  br label %bb.ah

bb.x:                                             ; preds = %magnitude.exit.i
  %i.cv = load ptr, ptr %i.bw, align 8
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %indvars.iv.i
  %i.cx = load i64, ptr %i.cw, align 8            ; 10 uses
  %i.cy = icmp ult i64 %i.cx, 100000
  br i1 %i.cy, label %magnitude.exit103.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = icmp ult i64 %i.cx, 1000000
  br i1 %i.cz, label %magnitude.exit103.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = icmp ult i64 %i.cx, 10000000
  br i1 %i.da, label %magnitude.exit103.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.db = icmp ult i64 %i.cx, 100000000
  br i1 %i.db, label %magnitude.exit103.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = icmp ult i64 %i.cx, 1000000000
  br i1 %i.dc, label %magnitude.exit103.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = icmp ult i64 %i.cx, 10000000000
  br i1 %i.dd, label %magnitude.exit103.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = icmp ult i64 %i.cx, 100000000000
  br i1 %i.de, label %magnitude.exit103.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.df = icmp ult i64 %i.cx, 1000000000000
  br i1 %i.df, label %magnitude.exit103.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = icmp ult i64 %i.cx, 10000000000000
  br i1 %i.dg, label %magnitude.exit103.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = icmp ult i64 %i.cx, 100000000000000
  %spec.select221.i = select i1 %i.dh, i32 14, i32 15
  br label %magnitude.exit103.i

magnitude.exit103.i:                              ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.lcssa.i102.i = phi i32 [ 5, %bb.x ], [ 12, %bb.ae ], [ 8, %bb.aa ], [ 6, %bb.y ], [ 10, %bb.ac ], [ 9, %bb.ab ], [ 7, %bb.z ], [ %spec.select221.i, %bb.ag ], [ 13, %bb.af ], [ 11, %bb.ad ] ; 3 uses
  %i.di = getelementptr i8, ptr %i.cr, i64 4
  store i32 %.lcssa.i102.i, ptr %i.di, align 4
  %i.dj = add i32 %i.ct, 3
  %i.dk = add i32 %i.dj, %.lcssa.i102.i
  %i.dl = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.41, i32 noundef %.lcssa.i.i, i32 noundef %.lcssa.i102.i)
  br label %bb.ah

bb.ah:                                            ; preds = %magnitude.exit103.i, %bb.w
  %.193.i = phi i32 [ %i.ct, %bb.w ], [ %i.dk, %magnitude.exit103.i ] ; 2 uses
  %.1.i = phi ptr [ %i.cu, %bb.w ], [ %i.dl, %magnitude.exit103.i ] ; 2 uses
  %.not98.i = icmp eq ptr %.1.i, null
  br i1 %.not98.i, label %bb.cp, label %.sink.split.i

bb.ai:                                            ; preds = %bb.s, %bb.s
  %i.dm = load ptr, ptr %i.bw, align 8
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %indvars.iv.i
  %i.do = load i64, ptr %i.dn, align 8            ; 10 uses
  %i.dp = icmp ult i64 %i.do, 100000
  br i1 %i.dp, label %magnitude.exit108.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dq = icmp ult i64 %i.do, 1000000
  br i1 %i.dq, label %magnitude.exit108.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = icmp ult i64 %i.do, 10000000
  br i1 %i.dr, label %magnitude.exit108.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = icmp ult i64 %i.do, 100000000
end_hunk_0
begin_hunk_1_@iostat_draw:bb.a
    i32 7, label %bb.bk
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.fb = load ptr, ptr %i.bw, align 8
  %i.fc = getelementptr [8 x i8], ptr %i.fb, i64 %indvars.iv.i ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8
  %i.fe = udiv i64 %i.fd, %spec.select
  store i64 %i.fe, ptr %i.fc, align 8
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.ff = load ptr, ptr %i.bw, align 8
  %i.fg = getelementptr [8 x i8], ptr %i.ff, i64 %indvars.iv.i ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = add i64 %i.fh, 500000000
  %i.fj = udiv i64 %i.fi, 1000000000
  store i64 %i.fj, ptr %i.fg, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.fk = load ptr, ptr %i.bw, align 8
  %i.fl = getelementptr [8 x i8], ptr %i.fk, i64 %indvars.iv.i
  %i.fm = load i64, ptr %i.fl, align 8            ; 14 uses
  %i.fn = icmp ult i64 %i.fm, 10
  br i1 %i.fn, label %magnitude.exit118.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fo = icmp ult i64 %i.fm, 100
  br i1 %i.fo, label %magnitude.exit118.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fp = icmp ult i64 %i.fm, 1000
  br i1 %i.fp, label %magnitude.exit118.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fq = icmp ult i64 %i.fm, 10000
  br i1 %i.fq, label %magnitude.exit118.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fr = icmp ult i64 %i.fm, 100000
  br i1 %i.fr, label %magnitude.exit118.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fs = icmp ult i64 %i.fm, 1000000
  br i1 %i.fs, label %magnitude.exit118.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ft = icmp ult i64 %i.fm, 10000000
  br i1 %i.ft, label %magnitude.exit118.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fu = icmp ult i64 %i.fm, 100000000
  br i1 %i.fu, label %magnitude.exit118.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fv = icmp ult i64 %i.fm, 1000000000
  br i1 %i.fv, label %magnitude.exit118.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.fw = icmp ult i64 %i.fm, 10000000000
  br i1 %i.fw, label %magnitude.exit118.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.fx = icmp ult i64 %i.fm, 100000000000
  br i1 %i.fx, label %magnitude.exit118.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.fy = icmp ult i64 %i.fm, 1000000000000
  br i1 %i.fy, label %magnitude.exit118.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.fz = icmp ult i64 %i.fm, 10000000000000
  br i1 %i.fz, label %magnitude.exit118.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ga = icmp ult i64 %i.fm, 100000000000000
  %spec.select228.i = select i1 %i.ga, i32 14, i32 15
  br label %magnitude.exit118.i

magnitude.exit118.i:                              ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  %.lcssa.i117.i = phi i32 [ 1, %bb.bk ], [ 12, %bb.bv ], [ 2, %bb.bl ], [ 8, %bb.br ], [ 3, %bb.bm ], [ 9, %bb.bs ], [ 4, %bb.bn ], [ %spec.select228.i, %bb.bx ], [ 5, %bb.bo ], [ 11, %bb.bu ], [ 6, %bb.bp ], [ 13, %bb.bw ], [ 7, %bb.bq ], [ 10, %bb.bt ] ; 2 uses
  %i.gb = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.44, i32 noundef %.lcssa.i117.i)
  %i.gc = add nuw nsw i32 %.lcssa.i117.i, 7
  %i.gd = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ge = getelementptr i8, ptr %i.gd, i64 4
  store i32 %i.gc, ptr %i.ge, align 4
  br label %bb.co

bb.by:                                            ; preds = %bb.as
  %i.gf = load ptr, ptr %i.bw, align 8
  %i.gg = getelementptr [8 x i8], ptr %i.gf, i64 %indvars.iv.i
  %i.gh = load i64, ptr %i.gg, align 8            ; 14 uses
  %i.gi = icmp ult i64 %i.gh, 10
  br i1 %i.gi, label %magnitude.exit123.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gj = icmp ult i64 %i.gh, 100
  br i1 %i.gj, label %magnitude.exit123.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.gk = icmp ult i64 %i.gh, 1000
  br i1 %i.gk, label %magnitude.exit123.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gl = icmp ult i64 %i.gh, 10000
  br i1 %i.gl, label %magnitude.exit123.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gm = icmp ult i64 %i.gh, 100000
  br i1 %i.gm, label %magnitude.exit123.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.gn = icmp ult i64 %i.gh, 1000000
  br i1 %i.gn, label %magnitude.exit123.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.go = icmp ult i64 %i.gh, 10000000
  br i1 %i.go, label %magnitude.exit123.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gp = icmp ult i64 %i.gh, 100000000
  br i1 %i.gp, label %magnitude.exit123.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gq = icmp ult i64 %i.gh, 1000000000
  br i1 %i.gq, label %magnitude.exit123.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.gr = icmp ult i64 %i.gh, 10000000000
  br i1 %i.gr, label %magnitude.exit123.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.gs = icmp ult i64 %i.gh, 100000000000
  br i1 %i.gs, label %magnitude.exit123.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gt = icmp ult i64 %i.gh, 1000000000000
  br i1 %i.gt, label %magnitude.exit123.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gu = icmp ult i64 %i.gh, 10000000000000
  br i1 %i.gu, label %magnitude.exit123.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gv = icmp ult i64 %i.gh, 100000000000000
  %spec.select229.i = select i1 %i.gv, i32 14, i32 15
  br label %magnitude.exit123.i

magnitude.exit123.i:                              ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by
  %.lcssa.i122.i = phi i32 [ 1, %bb.by ], [ 12, %bb.cj ], [ 2, %bb.bz ], [ 8, %bb.cf ], [ 3, %bb.ca ], [ 9, %bb.cg ], [ 4, %bb.cb ], [ %spec.select229.i, %bb.cl ], [ 5, %bb.cc ], [ 11, %bb.ci ], [ 6, %bb.cd ], [ 13, %bb.ck ], [ 7, %bb.ce ], [ 10, %bb.ch ]
  %i.gw = tail call i32 @llvm.umax.i32(i32 %i.ch, i32 %.lcssa.i122.i) ; 3 uses
  %i.gx = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 4
  store i32 %i.gw, ptr %i.gy, align 4
  switch i32 %i.ef, label %bb.co [
    i32 4, label %bb.cm
    i32 5, label %bb.cm
    i32 6, label %bb.cm
    i32 7, label %bb.cm
    i32 11, label %bb.cm
    i32 12, label %bb.cn
    i32 13, label %bb.cn
    i32 14, label %bb.cn
    i32 15, label %bb.cn
    i32 19, label %bb.cn
  ]

bb.cm:                                            ; preds = %magnitude.exit123.i, %magnitude.exit123.i, %magnitude.exit123.i, %magnitude.exit123.i, %magnitude.exit123.i
  %i.gz = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.42, i32 noundef %i.gw)
  br label %bb.co

bb.cn:                                            ; preds = %magnitude.exit123.i, %magnitude.exit123.i, %magnitude.exit123.i, %magnitude.exit123.i, %magnitude.exit123.i
  %i.ha = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.45, i32 noundef %i.gw)
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %magnitude.exit123.i, %magnitude.exit118.i, %magnitude.exit113.i, %magnitude.exit108.i
  %.2.i = phi ptr [ %.090126.i, %magnitude.exit123.i ], [ %i.gz, %bb.cm ], [ %i.ha, %bb.cn ], [ %i.ex, %magnitude.exit113.i ], [ %i.gb, %magnitude.exit118.i ], [ %i.eb, %magnitude.exit108.i ] ; 2 uses
  %i.hb = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.hc = getelementptr i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = add i32 %.092125.i, 3
  %i.hf = add i32 %i.he, %i.hd                    ; 2 uses
  %.not97.i = icmp eq ptr %.2.i, null
  br i1 %.not97.i, label %bb.cp, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.co, %bb.ah
  %.2.sink.i = phi ptr [ %.1.i, %bb.ah ], [ %.2.i, %bb.co ] ; 2 uses
  %.294.ph.i = phi i32 [ %.193.i, %bb.ah ], [ %i.hf, %bb.co ]
  %i.hg = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.i
  store ptr %.2.sink.i, ptr %i.hg, align 8
  br label %bb.cp

bb.cp:                                            ; preds = %.sink.split.i, %bb.co, %bb.ah
  %.294.i = phi i32 [ %i.hf, %bb.co ], [ %.193.i, %bb.ah ], [ %.294.ph.i, %.sink.split.i ] ; 2 uses
  %.3.i = phi ptr [ null, %bb.co ], [ null, %bb.ah ], [ %.2.sink.i, %.sink.split.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hh = load i32, ptr %i.h, align 4
  %i.hi = zext i32 %i.hh to i64
  %i.hj = icmp samesign ult i64 %indvars.iv.next.i, %i.hi
  br i1 %i.hj, label %bb.r, label %iostat_calc_cols_width_and_fmt.exit, !llvm.loop !35

iostat_calc_cols_width_and_fmt.exit:              ; preds = %bb.cp, %bb.q
  %.092.lcssa.i = phi i32 [ 0, %bb.q ], [ %.294.i, %bb.cp ]
  %i.hk = add i32 %.092.lcssa.i, %.0220           ; 6 uses
  %i.hl = tail call i32 @llvm.umax.i32(i32 %.0217358, i32 %i.hk) ; 3 uses
  br i1 %.not287, label %._crit_edge267, label %.lr.ph266

.lr.ph266:                                        ; preds = %iostat_calc_cols_width_and_fmt.exit
  %i.hm = getelementptr i8, ptr %i.g, i64 48
  %i.hn = load ptr, ptr %i.hm, align 8
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph266, %bb.cs
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %bb.cs ] ; 2 uses
  %.0221264 = phi i32 [ 0, %.lr.ph266 ], [ %i.ht, %bb.cs ]
  %i.ho = getelementptr [8 x i8], ptr %i.hn, i64 %indvars.iv299
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %.not230 = icmp eq ptr %i.hp, null
  br i1 %.not230, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hp) #14
  %i.hr = trunc i64 %i.hq to i32
  %i.hs = add i32 %i.hr, 11
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cq, %bb.cr
  %.sink = phi i32 [ %i.hs, %bb.cr ], [ 26, %bb.cq ]
  %i.ht = tail call i32 @llvm.umax.i32(i32 %.0221264, i32 %.sink) ; 2 uses
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %i.j
  br i1 %exitcond303.not, label %._crit_edge267, label %bb.cq, !llvm.loop !36

._crit_edge267:                                   ; preds = %bb.cs, %iostat_calc_cols_width_and_fmt.exit
  %.0221.lcssa = phi i32 [ 0, %iostat_calc_cols_width_and_fmt.exit ], [ %i.ht, %bb.cs ] ; 2 uses
  %i.hu = icmp ugt i32 %.0221.lcssa, %i.hl
  %i.hv = icmp ult i32 %i.hl, 102
  %or.cond = and i1 %i.hv, %i.hu
  %i.hw = tail call i32 @llvm.umin.i32(i32 %.0221.lcssa, i32 102)
  %.1218 = select i1 %or.cond, i32 %i.hw, i32 %i.hl ; 2 uses
  %i.hx = sub i32 %.1218, %i.hk
  %i.hy = icmp eq i32 %i.hx, 1
  %i.hz = zext i1 %i.hy to i32
  %.2219 = add i32 %.1218, %i.hz                  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ia = udiv i64 %spec.select, 1000000
  %i.ib = urem i64 %spec.select, 1000000
  store i64 %i.ia, ptr %3, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.id = trunc nuw nsw i64 %i.ib to i32
  %i.ie = mul nuw nsw i32 %i.id, 1000
  store i32 %i.ie, ptr %i.ic, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.if, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.ig = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.38) ; 0 uses
  %.not.i243 = icmp eq i32 %.2219, 0              ; 2 uses
  br i1 %.not.i243, label %._crit_edge.i, label %.lr.ph.i244

.lr.ph.i244:                                      ; preds = %._crit_edge267, %.lr.ph.i244
  %.02.i = phi i32 [ %i.ii, %.lr.ph.i244 ], [ 0, %._crit_edge267 ]
  %i.ih = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.39) ; 0 uses
  %i.ii = add nuw i32 %.02.i, 1                   ; 2 uses
  %exitcond.not.i245 = icmp eq i32 %i.ii, %.2219
  br i1 %exitcond.not.i245, label %._crit_edge.i, label %.lr.ph.i244, !llvm.loop !37

._crit_edge.i:                                    ; preds = %.lr.ph.i244, %._crit_edge267
  %i.ij = add i32 %.2219, -2                      ; 3 uses
  %i.ik = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %i.ij, ptr noundef nonnull @.str.47) ; 0 uses
  %i.il = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.48, i32 noundef %i.ij, ptr noundef nonnull @.str.13) ; 0 uses
  %i.im = select i1 %.not288362, i32 6, i32 %.1216360 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @nstime_rounded(ptr noundef nonnull %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cfile, i64 120), i32 noundef %i.im)
  %i.in = load i64, ptr getelementptr inbounds nuw (i8, ptr @cfile, i64 120), align 8 ; 4 uses
  %i.io = icmp ult i64 %i.in, 10
  br i1 %i.io, label %magnitude.exit.i247, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge.i
  %i.ip = icmp ult i64 %i.in, 100
  br i1 %i.ip, label %magnitude.exit.i247, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.iq = icmp ult i64 %i.in, 1000
  br i1 %i.iq, label %magnitude.exit.i247, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ir = icmp ult i64 %i.in, 10000
  %spec.select.i246 = select i1 %i.ir, i32 4, i32 5
  br label %magnitude.exit.i247

magnitude.exit.i247:                              ; preds = %bb.cv, %bb.cu, %bb.ct, %._crit_edge.i
  %.lcssa.i.i248 = phi i32 [ 1, %._crit_edge.i ], [ %spec.select.i246, %bb.cv ], [ 2, %bb.ct ], [ 3, %bb.cu ]
  %i.is = add i32 %.lcssa.i.i248, %i.bm           ; 2 uses
  %i.it = call ptr @g_string_new(ptr noundef nonnull @.str.49) ; 5 uses
  call void @display_signed_time(ptr noundef nonnull %i.e, i64 noundef 31, ptr noundef nonnull %2, i32 noundef %i.im)
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.it, ptr noundef nonnull @.str.50, i32 noundef %i.is, ptr noundef nonnull %i.e)
  %i.iu = getelementptr i8, ptr %i.it, i64 8
  %i.iv = load i64, ptr %i.iu, align 8
  %i.iw = trunc i64 %i.iv to i32
  %i.ix = sub i32 %.2219, %i.iw
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.it, ptr noundef nonnull @.str.36, i32 noundef %i.ix, ptr noundef nonnull @.str.37)
  %i.iy = load ptr, ptr %i.it, align 8
  %i.iz = call i32 @puts(ptr noundef %i.iy)       ; 0 uses
  %i.ja = call ptr @g_string_free(ptr noundef %i.it, i32 noundef 1) ; 0 uses
  %i.jb = call ptr @g_string_new(ptr noundef nonnull @.str.51) ; 5 uses
  call void @display_signed_time(ptr noundef nonnull %i.e, i64 noundef 31, ptr noundef nonnull %3, i32 noundef %.1216360)
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.jb, ptr noundef nonnull @.str.50, i32 noundef %i.is, ptr noundef nonnull %i.e)
  %i.jc = getelementptr i8, ptr %i.jb, i64 8
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = trunc i64 %i.jd to i32
  %i.jf = sub i32 %.2219, %i.je
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.jb, ptr noundef nonnull @.str.36, i32 noundef %i.jf, ptr noundef nonnull @.str.37)
  %i.jg = load ptr, ptr %i.jb, align 8
  %i.jh = call i32 @puts(ptr noundef %i.jg)       ; 0 uses
  %i.ji = call ptr @g_string_free(ptr noundef %i.jb, i32 noundef 1) ; 0 uses
  %i.jj = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.48, i32 noundef %i.ij, ptr noundef nonnull @.str.13) ; 0 uses
  %i.jk = load i32, ptr %i.h, align 4
  %.not78.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not78.i.i, label %iostat_draw_filters.exit.i, label %.lr.ph76.i.i

.lr.ph76.i.i:                                     ; preds = %magnitude.exit.i247
  %i.jl = getelementptr i8, ptr %i.g, i64 48
  %i.jm = add i32 %.2219, -11                     ; 2 uses
  %i.jn = zext i32 %i.jm to i64                   ; 4 uses
  br label %bb.cw

bb.cw:                                            ; preds = %g_string_append_len_inline.exit66.i.i, %.lr.ph76.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph76.i.i ], [ %indvars.iv.next.i.i, %g_string_append_len_inline.exit66.i.i ] ; 3 uses
  %i.jo = icmp eq i64 %indvars.iv.i.i, 0
  %.str.55..str.56.i.i = select i1 %i.jo, ptr @.str.55, ptr @.str.56
  %i.jp = call ptr @g_string_new(ptr noundef nonnull %.str.55..str.56.i.i) ; 11 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.jq = trunc nuw i64 %indvars.iv.next.i.i to i32
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %i.jp, ptr noundef nonnull @.str.57, i32 noundef %i.jq)
  %i.jr = load ptr, ptr %i.jl, align 8
  %i.js = getelementptr [8 x i8], ptr %i.jr, i64 %indvars.iv.i.i
  %i.jt = load ptr, ptr %i.js, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.jt, null
  br i1 %.not.i.i, label %bb.cx, label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %.not.i59.i.i = icmp eq ptr %i.jp, null
  br i1 %.not.i59.i.i, label %bb.cy, label %bb.cz, !prof !19

bb.cy:                                            ; preds = %bb.cx
  %i.ju = call ptr @g_string_append_len(ptr noundef null, ptr noundef nonnull @.str.58, i64 noundef 16) ; 0 uses
  br label %g_string_append_len_inline.exit66.i.i

bb.cz:                                            ; preds = %bb.cx
  %i.jv = getelementptr i8, ptr %i.jp, i64 8      ; 3 uses
  %i.jw = load i64, ptr %i.jv, align 8            ; 2 uses
  %i.jx = add i64 %i.jw, 16
  %i.jy = getelementptr i8, ptr %i.jp, i64 16
  %i.jz = load i64, ptr %i.jy, align 8
  %.not56.i61.i.i = icmp ult i64 %i.jx, %i.jz
  br i1 %.not56.i61.i.i, label %bb.da, label %bb.db, !prof !20

bb.da:                                            ; preds = %bb.cz
  %i.ka = load ptr, ptr %i.jp, align 8
  %i.kb = getelementptr i8, ptr %i.ka, i64 %i.jw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(16) %i.kb, ptr noundef nonnull align 1 dereferenceable(16) @.str.58, i64 noundef 16, i1 noundef false) #13
  %i.kc = load i64, ptr %i.jv, align 8
  %i.kd = add i64 %i.kc, 16                       ; 2 uses
  store i64 %i.kd, ptr %i.jv, align 8
  %i.ke = load ptr, ptr %i.jp, align 8
  %i.kf = getelementptr i8, ptr %i.ke, i64 %i.kd
  store i8 0, ptr %i.kf, align 1
  br label %g_string_append_len_inline.exit66.i.i

bb.db:                                            ; preds = %bb.cz
  %i.kg = call ptr @g_string_insert_len(ptr noundef nonnull %i.jp, i64 noundef -1, ptr noundef nonnull @.str.58, i64 noundef 16) ; 0 uses
  br label %g_string_append_len_inline.exit66.i.i

bb.dc:                                            ; preds = %bb.cw
  %i.kh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jt) #14
  %i.ki = icmp ugt i64 %i.kh, %i.jn
  br i1 %i.ki, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.dc, %g_string_append_len_inline.exit58.i.i
  %.04371.i.i = phi ptr [ %i.lr, %g_string_append_len_inline.exit58.i.i ], [ %i.jt, %bb.dc ] ; 11 uses
  %.170.i.i = phi ptr [ %i.lp, %g_string_append_len_inline.exit58.i.i ], [ %i.jp, %bb.dc ] ; 11 uses
  %i.kj = call ptr @g_strrstr_len(ptr noundef %.04371.i.i, i64 noundef %i.jn, ptr noundef nonnull @.str.59) ; 2 uses
  %.not50.i.i = icmp eq ptr %i.kj, null           ; 2 uses
  %i.kk = ptrtoint ptr %i.kj to i64
  %i.kl = ptrtoint ptr %.04371.i.i to i64
  %i.km = sub i64 %i.kk, %i.kl                    ; 2 uses
  %i.kn = trunc i64 %i.km to i32
  %i.ko = add i32 %i.kn, 1
  %.042.i.i = select i1 %.not50.i.i, i64 %i.jn, i64 %i.km ; 6 uses
  %.0.i.i = select i1 %.not50.i.i, i32 %i.jm, i32 %i.ko
  %.not.i51.i.i = icmp eq ptr %.170.i.i, null
  br i1 %.not.i51.i.i, label %bb.dd, label %bb.de, !prof !19

bb.dd:                                            ; preds = %.lr.ph.i.i
  %i.kp = call ptr @g_string_append_len(ptr noundef null, ptr noundef %.04371.i.i, i64 noundef %.042.i.i) ; 0 uses
  br label %g_string_append_len_inline.exit58.i.i

bb.de:                                            ; preds = %.lr.ph.i.i
  %.not54.i52.i.i = icmp eq ptr %.04371.i.i, null
  br i1 %.not54.i52.i.i, label %bb.df, label %bb.dh, !prof !19

bb.df:                                            ; preds = %bb.de
  %.not59.i.i.i = icmp eq i64 %.042.i.i, 0
  br i1 %.not59.i.i.i, label %g_string_append_len_inline.exit58.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.kq = call ptr @g_string_append_len(ptr noundef nonnull %.170.i.i, ptr noundef null, i64 noundef %.042.i.i) ; 0 uses
  br label %g_string_append_len_inline.exit58.i.i

bb.dh:                                            ; preds = %bb.de
  %i.kr = icmp slt i64 %.042.i.i, 0
  br i1 %i.kr, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ks = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.04371.i.i) #14
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.047.i.i.i = phi i64 [ %i.ks, %bb.di ], [ %.042.i.i, %bb.dh ] ; 6 uses
  %i.kt = getelementptr i8, ptr %.170.i.i, i64 8  ; 3 uses
  %i.ku = load i64, ptr %i.kt, align 8            ; 2 uses
  %i.kv = add i64 %i.ku, %.047.i.i.i
  %i.kw = getelementptr i8, ptr %.170.i.i, i64 16
  %i.kx = load i64, ptr %i.kw, align 8
  %.not56.i53.i.i = icmp ult i64 %i.kv, %i.kx
  br i1 %.not56.i53.i.i, label %bb.dk, label %bb.do, !prof !20

bb.dk:                                            ; preds = %bb.dj
  %i.ky = load ptr, ptr %.170.i.i, align 8
  %i.kz = getelementptr i8, ptr %i.ky, i64 %i.ku  ; 4 uses
  %i.la = getelementptr i8, ptr %.04371.i.i, i64 %.047.i.i.i
  %.not57.i55.i.i = icmp ugt ptr %i.la, %i.kz
  %i.lb = getelementptr i8, ptr %i.kz, i64 %.047.i.i.i
  %i.lc = icmp ule ptr %.04371.i.i, %i.lb
  %or.cond.i56.not.i.i = and i1 %.not57.i55.i.i, %i.lc
  br i1 %or.cond.i56.not.i.i, label %bb.dm, label %bb.dl, !prof !19

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.kz, ptr noundef nonnull align 1 %.04371.i.i, i64 noundef %.047.i.i.i, i1 noundef false) #13
  br label %bb.dn

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.kz, ptr noundef nonnull align 1 %.04371.i.i, i64 noundef %.047.i.i.i, i1 noundef false) #13
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.ld = load i64, ptr %i.kt, align 8
  %i.le = add i64 %i.ld, %.047.i.i.i              ; 2 uses
  store i64 %i.le, ptr %i.kt, align 8
  %i.lf = load ptr, ptr %.170.i.i, align 8
  %i.lg = getelementptr i8, ptr %i.lf, i64 %i.le
  store i8 0, ptr %i.lg, align 1
  br label %g_string_append_len_inline.exit58.i.i

bb.do:                                            ; preds = %bb.dj
  %i.lh = call ptr @g_string_insert_len(ptr noundef nonnull %.170.i.i, i64 noundef -1, ptr noundef nonnull %.04371.i.i, i64 noundef %.042.i.i) ; 0 uses
  br label %g_string_append_len_inline.exit58.i.i

g_string_append_len_inline.exit58.i.i:            ; preds = %bb.do, %bb.dn, %bb.dg, %bb.df, %bb.dd
  %i.li = getelementptr i8, ptr %.170.i.i, i64 8
  %i.lj = load i64, ptr %i.li, align 8
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = sub i32 %.2219, %i.lk
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %.170.i.i, ptr noundef nonnull @.str.36, i32 noundef %i.ll, ptr noundef nonnull @.str.37)
  %i.lm = load ptr, ptr %.170.i.i, align 8
  %i.ln = call i32 @puts(ptr noundef %i.lm)       ; 0 uses
  %i.lo = call ptr @g_string_free(ptr noundef %.170.i.i, i32 noundef 1) ; 0 uses
  %i.lp = call ptr @g_string_new(ptr noundef nonnull @.str.60) ; 2 uses
  %i.lq = zext i32 %.0.i.i to i64
  %i.lr = getelementptr i8, ptr %.04371.i.i, i64 %i.lq ; 3 uses
  %i.ls = call i64 @strlen(ptr noundef %i.lr) #14
  %i.lt = icmp ugt i64 %i.ls, %i.jn
  br i1 %i.lt, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !38

._crit_edge.i.i:                                  ; preds = %g_string_append_len_inline.exit58.i.i, %bb.dc
  %.1.lcssa.i.i = phi ptr [ %i.jp, %bb.dc ], [ %i.lp, %g_string_append_len_inline.exit58.i.i ] ; 10 uses
  %.043.lcssa.i.i = phi ptr [ %i.jt, %bb.dc ], [ %i.lr, %g_string_append_len_inline.exit58.i.i ] ; 8 uses
  %.not.i.i.i = icmp eq ptr %.1.lcssa.i.i, null
  br i1 %.not.i.i.i, label %bb.dp, label %bb.dq, !prof !19

bb.dp:                                            ; preds = %._crit_edge.i.i
  %i.lu = call ptr @g_string_append_len(ptr noundef null, ptr noundef %.043.lcssa.i.i, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit66.i.i

bb.dq:                                            ; preds = %._crit_edge.i.i
  %.not54.i.i.i = icmp eq ptr %.043.lcssa.i.i, null
  br i1 %.not54.i.i.i, label %bb.dr, label %bb.ds, !prof !19

bb.dr:                                            ; preds = %bb.dq
  %i.lv = call ptr @g_string_append_len(ptr noundef nonnull %.1.lcssa.i.i, ptr noundef null, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit66.i.i

bb.ds:                                            ; preds = %bb.dq
  %i.lw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.043.lcssa.i.i) #14 ; 6 uses
  %i.lx = getelementptr i8, ptr %.1.lcssa.i.i, i64 8 ; 3 uses
  %i.ly = load i64, ptr %i.lx, align 8            ; 2 uses
  %i.lz = add i64 %i.ly, %i.lw
  %i.ma = getelementptr i8, ptr %.1.lcssa.i.i, i64 16
  %i.mb = load i64, ptr %i.ma, align 8
  %.not56.i.i.i = icmp ult i64 %i.lz, %i.mb
  br i1 %.not56.i.i.i, label %bb.dt, label %bb.dx, !prof !20

bb.dt:                                            ; preds = %bb.ds
  %i.mc = load ptr, ptr %.1.lcssa.i.i, align 8
  %i.md = getelementptr i8, ptr %i.mc, i64 %i.ly  ; 4 uses
  %i.me = getelementptr i8, ptr %.043.lcssa.i.i, i64 %i.lw
  %.not57.i.i.i = icmp ugt ptr %i.me, %i.md
  %i.mf = getelementptr i8, ptr %i.md, i64 %i.lw
  %i.mg = icmp ule ptr %.043.lcssa.i.i, %i.mf
  %or.cond.i.not.i.i = and i1 %.not57.i.i.i, %i.mg
  br i1 %or.cond.i.not.i.i, label %bb.dv, label %bb.du, !prof !19

bb.du:                                            ; preds = %bb.dt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.md, ptr noundef nonnull align 1 %.043.lcssa.i.i, i64 noundef %i.lw, i1 noundef false) #13
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 %i.md, ptr noundef nonnull align 1 %.043.lcssa.i.i, i64 noundef %i.lw, i1 noundef false) #13
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.mh = load i64, ptr %i.lx, align 8
  %i.mi = add i64 %i.mh, %i.lw                    ; 2 uses
  store i64 %i.mi, ptr %i.lx, align 8
  %i.mj = load ptr, ptr %.1.lcssa.i.i, align 8
  %i.mk = getelementptr i8, ptr %i.mj, i64 %i.mi
  store i8 0, ptr %i.mk, align 1
  br label %g_string_append_len_inline.exit66.i.i

bb.dx:                                            ; preds = %bb.ds
  %i.ml = call ptr @g_string_insert_len(ptr noundef nonnull %.1.lcssa.i.i, i64 noundef -1, ptr noundef nonnull %.043.lcssa.i.i, i64 noundef -1) ; 0 uses
  br label %g_string_append_len_inline.exit66.i.i

g_string_append_len_inline.exit66.i.i:            ; preds = %bb.dx, %bb.dw, %bb.dr, %bb.dp, %bb.db, %bb.da, %bb.cy
  %.2.i.i = phi ptr [ %i.jp, %bb.db ], [ null, %bb.cy ], [ %i.jp, %bb.da ], [ null, %bb.dp ], [ %.1.lcssa.i.i, %bb.dr ], [ %.1.lcssa.i.i, %bb.dw ], [ %.1.lcssa.i.i, %bb.dx ] ; 4 uses
  %i.mm = getelementptr i8, ptr %.2.i.i, i64 8
  %i.mn = load i64, ptr %i.mm, align 8
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = sub i32 %.2219, %i.mo
  call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %.2.i.i, ptr noundef nonnull @.str.36, i32 noundef %i.mp, ptr noundef nonnull @.str.37)
  %i.mq = load ptr, ptr %.2.i.i, align 8
  %i.mr = call i32 @puts(ptr noundef %i.mq)       ; 0 uses
  %i.ms = call ptr @g_string_free(ptr noundef %.2.i.i, i32 noundef 1) ; 0 uses
  %i.mt = load i32, ptr %i.h, align 4
  %i.mu = zext i32 %i.mt to i64
  %i.mv = icmp samesign ult i64 %indvars.iv.next.i.i, %i.mu
  br i1 %i.mv, label %bb.cw, label %iostat_draw_filters.exit.i, !llvm.loop !39

iostat_draw_filters.exit.i:                       ; preds = %g_string_append_len_inline.exit66.i.i, %magnitude.exit.i247
  %i.mw = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.52) ; 0 uses
  %i.mx = add i32 %.2219, -3                      ; 2 uses
  %.not6.i = icmp eq i32 %i.mx, 0
  br i1 %.not6.i, label %iostat_draw_header.exit, label %.lr.ph4.i

.lr.ph4.i:                                        ; preds = %iostat_draw_filters.exit.i, %.lr.ph4.i
  %.13.i = phi i32 [ %i.mz, %.lr.ph4.i ], [ 0, %iostat_draw_filters.exit.i ]
  %i.my = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.53) ; 0 uses
  %i.mz = add nuw i32 %.13.i, 1                   ; 2 uses
  %exitcond8.not.i = icmp eq i32 %i.mz, %i.mx
  br i1 %exitcond8.not.i, label %iostat_draw_header.exit, label %.lr.ph4.i, !llvm.loop !40

iostat_draw_header.exit:                          ; preds = %.lr.ph4.i, %iostat_draw_filters.exit.i
  %i.na = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.54) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.nb = add i32 %.0220, -1
  %i.nc = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.61, i32 noundef %i.nb, ptr noundef nonnull @.str.37) ; 0 uses
  %i.nd = load i32, ptr %i.h, align 4
  %.not87.i = icmp eq i32 %i.nd, 0
  br i1 %.not87.i, label %._crit_edge.i252, label %.lr.ph.i249

.lr.ph.i249:                                      ; preds = %iostat_draw_header.exit
  %i.ne = getelementptr i8, ptr %i.g, i64 80
  br label %bb.dy

bb.dy:                                            ; preds = %bb.ec, %.lr.ph.i249
  %indvars.iv.i250 = phi i64 [ 0, %.lr.ph.i249 ], [ %indvars.iv.next.i251, %bb.ec ] ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = getelementptr [4 x i8], ptr %i.nf, i64 %indvars.iv.i250
  %i.nh = load i32, ptr %i.ng, align 4
  %i.ni = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv.i250 ; 4 uses
  switch i32 %i.nh, label %bb.eb [
    i32 2, label %bb.dz
    i32 0, label %bb.ea
  ]

bb.dz:                                            ; preds = %bb.dy
  %i.nj = load i32, ptr %i.ni, align 4
  %i.nk = getelementptr i8, ptr %i.ni, i64 4
  %i.nl = load i32, ptr %i.nk, align 4
  %i.nm = add i32 %i.nj, 3
  %i.nn = add i32 %i.nm, %i.nl
  br label %bb.ec

bb.ea:                                            ; preds = %bb.dy
  %i.no = load i32, ptr %i.ni, align 4
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dy
  %i.np = getelementptr i8, ptr %i.ni, i64 4
  %i.nq = load i32, ptr %i.np, align 4
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea, %bb.dz
  %.055.i = phi i32 [ %i.nn, %bb.dz ], [ %i.no, %bb.ea ], [ %i.nq, %bb.eb ]
  %indvars.iv.next.i251 = add nuw nsw i64 %indvars.iv.i250, 1 ; 3 uses
  %i.nr = trunc nuw i64 %indvars.iv.next.i251 to i32
  %i.ns = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.62, i32 noundef %i.nr, i32 noundef %.055.i, ptr noundef nonnull @.str.13) ; 0 uses
  %i.nt = load i32, ptr %i.h, align 4
  %i.nu = zext i32 %i.nt to i64
  %i.nv = icmp samesign ult i64 %indvars.iv.next.i251, %i.nu
  br i1 %i.nv, label %bb.dy, label %._crit_edge.i252, !llvm.loop !41

._crit_edge.i252:                                 ; preds = %bb.ec, %iostat_draw_header.exit
  %i.nw = icmp ult i32 %i.hk, %.2219              ; 2 uses
  br i1 %i.nw, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge.i252
  %i.nx = sub nuw i32 %.2219, %i.hk
  %i.ny = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.36, i32 noundef %i.nx, ptr noundef nonnull @.str.37) ; 2 uses
  %i.nz = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.63, ptr noundef %i.ny) ; 0 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge.i252
  %.056.i = phi ptr [ %i.ny, %bb.ed ], [ null, %._crit_edge.i252 ] ; 4 uses
  %i.oa = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.38) ; 0 uses
  %i.ob = call i32 @timestamp_get_type()          ; 2 uses
  %i.oc = icmp ult i32 %i.ob, 12
  br i1 %i.oc, label %switch.lookup, label %bb.ef

switch.lookup:                                    ; preds = %bb.ee
  %i.od = zext nneg i32 %i.ob to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.iostat_draw, i64 %i.od
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %switch.lookup
  %.sink.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.ee ]
  %i.oe = call ptr @g_string_new(ptr noundef %.sink.i) ; 3 uses
  %i.of = load ptr, ptr %i.oe, align 8
  %i.og = getelementptr i8, ptr %i.oe, i64 8
  %i.oh = load i64, ptr %i.og, align 8
  %i.oi = trunc i64 %i.oh to i32
  %i.oj = sub i32 %.0220, %i.oi
  %i.ok = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef %i.of, i32 noundef %i.oj, ptr noundef nonnull @.str.37) ; 0 uses
  %i.ol = call ptr @g_string_free(ptr noundef %i.oe, i32 noundef 1) ; 0 uses
  %i.om = load i32, ptr %i.h, align 4
  %.not88.i = icmp eq i32 %i.om, 0
  br i1 %.not88.i, label %._crit_edge82.i, label %.lr.ph81.i

.lr.ph81.i:                                       ; preds = %bb.ef
  %i.on = getelementptr i8, ptr %i.g, i64 80
  br label %bb.eg

bb.eg:                                            ; preds = %bb.fe, %.lr.ph81.i
  %indvars.iv91.i = phi i64 [ 0, %.lr.ph81.i ], [ %indvars.iv.next92.i, %bb.fe ] ; 5 uses
  %i.oo = load ptr, ptr %i.on, align 8
  %i.op = getelementptr [4 x i8], ptr %i.oo, i64 %indvars.iv91.i
  %i.oq = load i32, ptr %i.op, align 4            ; 2 uses
  switch i32 %i.oq, label %bb.ey [
    i32 0, label %bb.eh
    i32 2, label %bb.en
  ]

bb.eh:                                            ; preds = %bb.eg
  %i.or = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv91.i
  %i.os = load i32, ptr %i.or, align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @__const.printcenter.spaces, i64 7, i1 false)
  %i.ot = add i32 %i.os, -5
  %or.cond.i.i = icmp ult i32 %i.ot, 11
  br i1 %or.cond.i.i, label %bb.ei, label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.ou = trunc nuw nsw i32 %i.os to i8
  %.neg.lhs.trunc.i.i = add nsw i8 %i.ou, -6
  %.neg20.i.i = sdiv i8 %.neg.lhs.trunc.i.i, -2
  %i.ov = sext i8 %.neg20.i.i to i64
  %i.ow = getelementptr i8, ptr %i.d, i64 %i.ov   ; 2 uses
  %i.ox = getelementptr i8, ptr %i.ow, i64 5      ; 3 uses
  %i.oy = and i32 %i.os, 1
  %i.oz = icmp eq i32 %i.oy, 0
  br i1 %i.oz, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.pa = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.ox, ptr noundef nonnull @.str.18, ptr noundef %i.ox) ; 0 uses
  br label %printcenter.exit.i

bb.ek:                                            ; preds = %bb.ei
  %i.pb = getelementptr i8, ptr %i.ow, i64 4
  %i.pc = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.pb, ptr noundef nonnull @.str.18, ptr noundef %i.ox) ; 0 uses
  br label %printcenter.exit.i

bb.el:                                            ; preds = %bb.eh
  %i.pd = add i32 %i.os, 15
  %or.cond3.i.i = icmp ult i32 %i.pd, 31
  br i1 %or.cond3.i.i, label %bb.em, label %printcenter.exit.i

bb.em:                                            ; preds = %bb.el
  %i.pe = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.18) ; 0 uses
  br label %printcenter.exit.i

printcenter.exit.i:                               ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.fe

bb.en:                                            ; preds = %bb.eg
  %i.pf = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv91.i ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @__const.printcenter.spaces, i64 7, i1 false)
  %i.ph = add i32 %i.pg, -5
  %or.cond.i63.i = icmp ult i32 %i.ph, 11
  br i1 %or.cond.i63.i, label %bb.eo, label %bb.er

bb.eo:                                            ; preds = %bb.en
  %i.pi = trunc nuw nsw i32 %i.pg to i8
  %.neg.lhs.trunc.i65.i = add nsw i8 %i.pi, -6
  %.neg20.i66.i = sdiv i8 %.neg.lhs.trunc.i65.i, -2
  %i.pj = sext i8 %.neg20.i66.i to i64
  %i.pk = getelementptr i8, ptr %i.c, i64 %i.pj   ; 2 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 5      ; 3 uses
  %i.pm = and i32 %i.pg, 1
  %i.pn = icmp eq i32 %i.pm, 0
  br i1 %i.pn, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.po = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.pl, ptr noundef nonnull @.str.68, ptr noundef %i.pl) ; 0 uses
  br label %printcenter.exit67.i

bb.eq:                                            ; preds = %bb.eo
  %i.pp = getelementptr i8, ptr %i.pk, i64 4
  %i.pq = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.pp, ptr noundef nonnull @.str.68, ptr noundef %i.pl) ; 0 uses
  br label %printcenter.exit67.i

bb.er:                                            ; preds = %bb.en
  %i.pr = add i32 %i.pg, 15
  %or.cond3.i64.i = icmp ult i32 %i.pr, 31
  br i1 %or.cond3.i64.i, label %bb.es, label %printcenter.exit67.i

bb.es:                                            ; preds = %bb.er
  %i.ps = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.68) ; 0 uses
  br label %printcenter.exit67.i

printcenter.exit67.i:                             ; preds = %bb.es, %bb.er, %bb.eq, %bb.ep
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.pt = getelementptr i8, ptr %i.pf, i64 4
  %i.pu = load i32, ptr %i.pt, align 4            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, ptr noundef nonnull align 1 dereferenceable(7) @__const.printcenter.spaces, i64 7, i1 false)
  %i.pv = add i32 %i.pu, -4
  %or.cond.i68.i = icmp ult i32 %i.pv, 11
  br i1 %or.cond.i68.i, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %printcenter.exit67.i
  %i.pw = add nsw i32 %i.pu, -5                   ; 2 uses
  %.neg.lhs.trunc.i70.i = trunc nsw i32 %i.pw to i8
  %.neg20.i71.i = sdiv i8 %.neg.lhs.trunc.i70.i, -2
  %i.px = sext i8 %.neg20.i71.i to i64
  %i.py = getelementptr i8, ptr %i.b, i64 %i.px   ; 2 uses
  %i.pz = getelementptr i8, ptr %i.py, i64 5      ; 3 uses
  %i.qa = and i32 %i.pw, 1
  %i.qb = icmp eq i32 %i.qa, 0
  br i1 %i.qb, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.qc = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.pz, ptr noundef nonnull @.str.69, ptr noundef %i.pz) ; 0 uses
  br label %printcenter.exit72.i

bb.ev:                                            ; preds = %bb.et
  %i.qd = getelementptr i8, ptr %i.py, i64 4
  %i.qe = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.qd, ptr noundef nonnull @.str.69, ptr noundef %i.pz) ; 0 uses
  br label %printcenter.exit72.i

bb.ew:                                            ; preds = %printcenter.exit67.i
  %i.qf = add i32 %i.pu, 16
  %or.cond3.i69.i = icmp ult i32 %i.qf, 31
  br i1 %or.cond3.i69.i, label %bb.ex, label %printcenter.exit72.i

bb.ex:                                            ; preds = %bb.ew
  %i.qg = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.69) ; 0 uses
  br label %printcenter.exit72.i

printcenter.exit72.i:                             ; preds = %bb.ex, %bb.ew, %bb.ev, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.fe

bb.ey:                                            ; preds = %bb.eg
  %i.qh = zext i32 %i.oq to i64
  %i.qi = getelementptr [16 x i8], ptr @calc_type_table, i64 %i.qh
  %i.qj = load ptr, ptr %i.qi, align 16           ; 4 uses
  %i.qk = getelementptr [8 x i8], ptr %i.k, i64 %indvars.iv91.i
  %i.ql = getelementptr i8, ptr %i.qk, i64 4
  %i.qm = load i32, ptr %i.ql, align 4
  %i.qn = call i64 @strlen(ptr noundef %i.qj) #14
  %i.qo = trunc i64 %i.qn to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @__const.printcenter.spaces, i64 7, i1 false)
  %i.qp = sub i32 %i.qm, %i.qo                    ; 4 uses
  %i.qq = add i32 %i.qp, 1
  %or.cond.i73.i = icmp ult i32 %i.qq, 11
  br i1 %or.cond.i73.i, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %.neg.lhs.trunc.i75.i = trunc nsw i32 %i.qp to i8
  %.neg20.i76.i = sdiv i8 %.neg.lhs.trunc.i75.i, -2
  %i.qr = sext i8 %.neg20.i76.i to i64
  %i.qs = getelementptr i8, ptr %i.a, i64 %i.qr   ; 2 uses
  %i.qt = getelementptr i8, ptr %i.qs, i64 5      ; 3 uses
  %i.qu = and i32 %i.qp, 1
  %i.qv = icmp eq i32 %i.qu, 0
  br i1 %i.qv, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.qw = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.qt, ptr noundef %i.qj, ptr noundef %i.qt) ; 0 uses
  br label %printcenter.exit77.i

bb.fb:                                            ; preds = %bb.ez
  %i.qx = getelementptr i8, ptr %i.qs, i64 4
  %i.qy = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.71, ptr noundef %i.qx, ptr noundef %i.qj, ptr noundef %i.qt) ; 0 uses
  br label %printcenter.exit77.i

bb.fc:                                            ; preds = %bb.ey
  %i.qz = add i32 %i.qp, 21
  %or.cond3.i74.i = icmp ult i32 %i.qz, 31
  br i1 %or.cond3.i74.i, label %bb.fd, label %printcenter.exit77.i

bb.fd:                                            ; preds = %bb.fc
  %i.ra = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.72, ptr noundef %i.qj) ; 0 uses
  br label %printcenter.exit77.i

printcenter.exit77.i:                             ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.fe

bb.fe:                                            ; preds = %printcenter.exit77.i, %printcenter.exit72.i, %printcenter.exit.i
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 1 ; 2 uses
  %i.rb = load i32, ptr %i.h, align 4
  %i.rc = zext i32 %i.rb to i64
  %i.rd = icmp samesign ult i64 %indvars.iv.next92.i, %i.rc
  br i1 %i.rd, label %bb.eg, label %._crit_edge82.i, !llvm.loop !42

._crit_edge82.i:                                  ; preds = %bb.fe, %bb.ef
  %.not.i253 = icmp eq ptr %.056.i, null          ; 2 uses
  br i1 %.not.i253, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %._crit_edge82.i
  %i.re = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.63, ptr noundef nonnull %.056.i) ; 0 uses
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %._crit_edge82.i
  %i.rf = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.70) ; 0 uses
  %i.rg = add i32 %i.hk, -3                       ; 2 uses
  %.not89.i = icmp eq i32 %i.rg, 0
  br i1 %.not89.i, label %._crit_edge86.i, label %.lr.ph85.i

.lr.ph85.i:                                       ; preds = %bb.fg, %.lr.ph85.i
  %.283.i = phi i32 [ %i.ri, %.lr.ph85.i ], [ 0, %bb.fg ]
  %i.rh = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.53) ; 0 uses
  %i.ri = add nuw i32 %.283.i, 1                  ; 2 uses
  %exitcond.not.i254 = icmp eq i32 %i.ri, %i.rg
  br i1 %exitcond.not.i254, label %._crit_edge86.i, label %.lr.ph85.i, !llvm.loop !43

._crit_edge86.i:                                  ; preds = %.lr.ph85.i, %bb.fg
  %i.rj = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.37) ; 0 uses
  br i1 %.not.i253, label %iostat_draw_header_row.exit, label %bb.fh

bb.fh:                                            ; preds = %._crit_edge86.i
  %i.rk = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.63, ptr noundef nonnull %.056.i) ; 0 uses
  call void @g_free(ptr noundef nonnull %.056.i)
  br label %iostat_draw_header_row.exit

iostat_draw_header_row.exit:                      ; preds = %._crit_edge86.i, %bb.fh
  %i.rl = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.38) ; 0 uses
  %i.rm = icmp eq i64 %spec.select, 0
  %i.rn = icmp eq i64 %.0199, 0
  %or.cond3 = select i1 %i.rm, i1 true, i1 %i.rn
  br i1 %or.cond3, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %iostat_draw_header_row.exit
  %i.ro = udiv i64 %.0199, %spec.select
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = urem i64 %.0199, %spec.select
  %i.rr = and i64 %i.rq, 4294967295
  %.not = icmp ne i64 %i.rr, 0
  %i.rs = zext i1 %.not to i32
  %i.rt = add i32 %i.rs, %i.rp
  br label %bb.fj

bb.fj:                                            ; preds = %iostat_draw_header_row.exit, %bb.fi
  %.0211 = phi i32 [ %i.rt, %bb.fi ], [ 0, %iostat_draw_header_row.exit ] ; 3 uses
  %i.ru = call noalias ptr @g_malloc(i64 noundef %.pre319) #15 ; 3 uses
  br i1 %.not287, label %.preheader256, label %.lr.ph271.preheader

.lr.ph271.preheader:                              ; preds = %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ru, ptr align 8 %i.t, i64 %.pre319, i1 false)
  br label %.preheader256

.preheader256:                                    ; preds = %.lr.ph271.preheader, %bb.fj
  %.not291 = icmp eq i32 %.0211, 0
  br i1 %.not291, label %.preheader, label %.lr.ph279

.lr.ph279:                                        ; preds = %.preheader256
  %i.rv = add i32 %.0211, -1
  %i.rw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ry = getelementptr i8, ptr %i.g, i64 24
  %i.rz = add i32 %.0220, -4
  %i.sa = getelementptr i8, ptr %i.g, i64 80
  %i.sb = getelementptr i8, ptr %i.g, i64 72      ; 3 uses
  %i.sc = sub nuw i32 %.2219, %i.hk
  br label %bb.fk

.preheader:                                       ; preds = %bb.gt, %.preheader256
  br i1 %.not.i243, label %._crit_edge282, label %.lr.ph281

bb.fk:                                            ; preds = %.lr.ph279, %bb.gt
  %.0201278 = phi i64 [ 0, %.lr.ph279 ], [ %i.we, %bb.gt ] ; 4 uses
  %.1206277 = phi i32 [ 0, %.lr.ph279 ], [ %i.wf, %bb.gt ] ; 2 uses
  %.0212276 = phi i1 [ false, %.lr.ph279 ], [ %spec.select232, %bb.gt ]
  %i.sd = icmp eq i32 %.1206277, %i.rv
  %spec.select232 = select i1 %i.sd, i1 true, i1 %.0212276 ; 3 uses
  %i.se = sub i64 %.0199, %.0201278
  %.0202 = select i1 %spec.select232, i64 %i.se, i64 %spec.select ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.sf = udiv i64 %.0201278, 1000000
  %i.sg = urem i64 %.0201278, 1000000
  store i64 %i.sf, ptr %4, align 8
  %i.sh = trunc nuw nsw i64 %i.sg to i32
  %i.si = mul nuw nsw i32 %i.sh, 1000
  store i32 %i.si, ptr %i.rw, align 8
  store i32 0, ptr %i.rx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @nstime_sum(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef %i.ry)
  %i.sj = call i32 @timestamp_get_type()
  switch i32 %i.sj, label %fill_start_time.exit [
    i32 2, label %bb.fl
    i32 3, label %bb.fm
    i32 4, label %bb.fn
    i32 8, label %bb.fo
    i32 9, label %bb.fp
    i32 10, label %bb.fq
    i32 0, label %bb.fr
    i32 1, label %bb.fr
    i32 11, label %bb.fr
    i32 5, label %bb.fs
    i32 6, label %bb.fs
    i32 7, label %bb.fs
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.sk = load ptr, ptr @io_decimal_point, align 8
  call fastcc void @fill_abs_time(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %i.sk, i32 noundef %.1216360, i1 noundef zeroext true)
  br label %fill_start_time.exit

bb.fm:                                            ; preds = %bb.fk
  %i.sl = load ptr, ptr @io_decimal_point, align 8
  call void @format_nstime_as_iso8601(ptr noundef nonnull %i.f, i64 noundef 31, ptr noundef nonnull %1, ptr noundef %i.sl, i1 noundef zeroext true, i32 noundef %.1216360)
  br label %fill_start_time.exit

bb.fn:                                            ; preds = %bb.fk
  %i.sm = load ptr, ptr @io_decimal_point, align 8
  call fastcc void @fill_abs_ydoy_time(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %i.sm, i32 noundef %.1216360, i1 noundef zeroext true)
  br label %fill_start_time.exit

bb.fo:                                            ; preds = %bb.fk
  %i.sn = load ptr, ptr @io_decimal_point, align 8
  call fastcc void @fill_abs_time(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %i.sn, i32 noundef %.1216360, i1 noundef zeroext false)
  br label %fill_start_time.exit

bb.fp:                                            ; preds = %bb.fk
  %i.so = load ptr, ptr @io_decimal_point, align 8
  call void @format_nstime_as_iso8601(ptr noundef nonnull %i.f, i64 noundef 31, ptr noundef nonnull %1, ptr noundef %i.so, i1 noundef zeroext false, i32 noundef %.1216360)
  br label %fill_start_time.exit

bb.fq:                                            ; preds = %bb.fk
  %i.sp = load ptr, ptr @io_decimal_point, align 8
  call fastcc void @fill_abs_ydoy_time(ptr noundef nonnull %1, ptr noundef nonnull %i.f, ptr noundef %i.sp, i32 noundef %.1216360, i1 noundef zeroext false)
  br label %fill_start_time.exit

bb.fr:                                            ; preds = %bb.fk, %bb.fk, %bb.fk
  call void @display_signed_time(ptr noundef nonnull %i.f, i64 noundef 31, ptr noundef nonnull %4, i32 noundef %.1216360)
  br label %fill_start_time.exit

bb.fs:                                            ; preds = %bb.fk, %bb.fk, %bb.fk
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef nonnull @.str.13, i32 noundef 7, ptr noundef nonnull @.str.28, i64 noundef 770, ptr noundef nonnull @__func__.fill_start_time, ptr noundef nonnull @.str.29) #17
  unreachable

fill_start_time.exit:                             ; preds = %bb.fk, %bb.fl, %bb.fm, %bb.fn, %bb.fo, %bb.fp, %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.sq = call i32 @timestamp_get_type()
  switch i32 %i.sq, label %bb.fx [
    i32 0, label %bb.ft
    i32 1, label %bb.ft
    i32 11, label %bb.ft
  ]

bb.ft:                                            ; preds = %fill_start_time.exit, %fill_start_time.exit, %fill_start_time.exit
  %i.sr = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %i.bp, ptr noundef nonnull %i.f) ; 0 uses
  %or.cond5 = and i1 %.not288362, %spec.select232
  br i1 %or.cond5, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.ss = call i64 @g_strlcpy(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.32, i64 noundef 31) ; 0 uses
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  call void @nstime_sum(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef nonnull %3)
  call void @display_signed_time(ptr noundef nonnull %i.f, i64 noundef 31, ptr noundef nonnull %4, i32 noundef %.1216360)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.st = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %i.bp, ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.fy

bb.fx:                                            ; preds = %fill_start_time.exit
  %i.su = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %i.rz, ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  br i1 %.not287, label %._crit_edge275, label %.lr.ph274

.lr.ph274:                                        ; preds = %bb.fy, %bb.gr
  %indvars.iv307 = phi i64 [ %indvars.iv.next308, %bb.gr ], [ 0, %bb.fy ] ; 7 uses
  %i.sv = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv307
  %i.sw = load ptr, ptr %i.sv, align 8            ; 13 uses
  %i.sx = getelementptr [8 x i8], ptr %i.ru, i64 %indvars.iv307 ; 2 uses
  %i.sy = load ptr, ptr %i.sx, align 8            ; 10 uses
  %.not.i255 = icmp eq ptr %i.sy, null            ; 2 uses
  br i1 %.not.i255, label %bb.gp, label %bb.fz

bb.fz:                                            ; preds = %.lr.ph274
  %i.sz = load ptr, ptr %i.sa, align 8
  %i.ta = getelementptr [4 x i8], ptr %i.sz, i64 %indvars.iv307
  %i.tb = load i32, ptr %i.ta, align 4
  switch i32 %i.tb, label %bb.gp [
    i32 0, label %bb.ga
    i32 1, label %bb.gb
    i32 3, label %bb.gb
    i32 2, label %bb.gc
    i32 4, label %bb.gd
    i32 5, label %bb.gd
    i32 6, label %bb.gd
    i32 7, label %bb.gi
    i32 8, label %bb.gn
  ]

bb.ga:                                            ; preds = %bb.fz
  %i.tc = getelementptr i8, ptr %i.sy, i64 36
  %i.td = load i32, ptr %i.tc, align 4
  %i.te = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i32 noundef %i.td)
  br label %iostat_get_item_value.exit

bb.gb:                                            ; preds = %bb.fz, %bb.fz
  %i.tf = getelementptr i8, ptr %i.sy, i64 48
  %i.tg = load i64, ptr %i.tf, align 8
  %i.th = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i64 noundef %i.tg)
  br label %iostat_get_item_value.exit

bb.gc:                                            ; preds = %bb.fz
  %i.ti = getelementptr i8, ptr %i.sy, i64 36
  %i.tj = load i32, ptr %i.ti, align 4
  %i.tk = getelementptr i8, ptr %i.sy, i64 48
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i32 noundef %i.tj, i64 noundef %i.tl)
  br label %iostat_get_item_value.exit

bb.gd:                                            ; preds = %bb.fz, %bb.fz, %bb.fz
  %i.tn = load ptr, ptr %i.sb, align 8
  %i.to = getelementptr [4 x i8], ptr %i.tn, i64 %indvars.iv307
  %i.tp = load i32, ptr %i.to, align 4
  %i.tq = call i32 @proto_registrar_get_ftype(i32 noundef %i.tp)
  %i.tr = getelementptr i8, ptr %i.sy, i64 48     ; 5 uses
  switch i32 %i.tq, label %bb.gh [
    i32 22, label %bb.ge
    i32 23, label %bb.gf
    i32 25, label %bb.gg
  ]

bb.ge:                                            ; preds = %bb.gd
  %i.ts = load float, ptr %i.tr, align 8
  %i.tt = fpext float %i.ts to double
  %i.tu = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, double noundef %i.tt)
  br label %iostat_get_item_value.exit

bb.gf:                                            ; preds = %bb.gd
  %i.tv = load double, ptr %i.tr, align 8
  %i.tw = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, double noundef %i.tv)
  br label %iostat_get_item_value.exit

bb.gg:                                            ; preds = %bb.gd
  %i.tx = load i64, ptr %i.tr, align 8
  %i.ty = add i64 %i.tx, 500                      ; 2 uses
  %i.tz = udiv i64 %i.ty, 1000                    ; 2 uses
  store i64 %i.tz, ptr %i.tr, align 8
  %i.ua = udiv i64 %i.ty, 1000000000
  %i.ub = trunc i64 %i.ua to i32
  %i.uc = urem i64 %i.tz, 1000000
  %i.ud = trunc nuw nsw i64 %i.uc to i32
  %i.ue = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i32 noundef %i.ub, i32 noundef %i.ud)
  br label %iostat_get_item_value.exit

bb.gh:                                            ; preds = %bb.gd
  %i.uf = load i64, ptr %i.tr, align 8
  %i.ug = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i64 noundef %i.uf)
  br label %iostat_get_item_value.exit

bb.gi:                                            ; preds = %bb.fz
  %i.uh = getelementptr i8, ptr %i.sy, i64 40
  %i.ui = load i32, ptr %i.uh, align 8
  %spec.store.select.i = call i32 @llvm.umax.i32(i32 %i.ui, i32 1) ; 4 uses
  %i.uj = load ptr, ptr %i.sb, align 8
  %i.uk = getelementptr [4 x i8], ptr %i.uj, i64 %indvars.iv307
  %i.ul = load i32, ptr %i.uk, align 4
  %i.um = call i32 @proto_registrar_get_ftype(i32 noundef %i.ul)
  %i.un = getelementptr i8, ptr %i.sy, i64 48     ; 5 uses
  switch i32 %i.um, label %bb.gm [
    i32 22, label %bb.gj
    i32 23, label %bb.gk
    i32 25, label %bb.gl
  ]

bb.gj:                                            ; preds = %bb.gi
  %i.uo = load float, ptr %i.un, align 8
  %i.up = uitofp i32 %spec.store.select.i to float
  %i.uq = fdiv float %i.uo, %i.up
  %i.ur = fpext float %i.uq to double
  %i.us = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, double noundef %i.ur)
  br label %iostat_get_item_value.exit

bb.gk:                                            ; preds = %bb.gi
  %i.ut = load double, ptr %i.un, align 8
  %i.uu = uitofp i32 %spec.store.select.i to double
  %i.uv = fdiv double %i.ut, %i.uu
  %i.uw = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, double noundef %i.uv)
  br label %iostat_get_item_value.exit

bb.gl:                                            ; preds = %bb.gi
  %i.ux = load i64, ptr %i.un, align 8
  %i.uy = zext i32 %spec.store.select.i to i64
  %i.uz = udiv i64 %i.ux, %i.uy
  %i.va = add i64 %i.uz, 500                      ; 2 uses
  %i.vb = udiv i64 %i.va, 1000                    ; 2 uses
  store i64 %i.vb, ptr %i.un, align 8
  %i.vc = udiv i64 %i.va, 1000000000
  %i.vd = trunc i64 %i.vc to i32
  %i.ve = urem i64 %i.vb, 1000000
  %i.vf = trunc nuw nsw i64 %i.ve to i32
  %i.vg = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i32 noundef %i.vd, i32 noundef %i.vf)
  br label %iostat_get_item_value.exit

bb.gm:                                            ; preds = %bb.gi
  %i.vh = load i64, ptr %i.un, align 8
  %i.vi = zext i32 %spec.store.select.i to i64
  %i.vj = udiv i64 %i.vh, %i.vi
  %i.vk = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i64 noundef %i.vj)
  br label %iostat_get_item_value.exit

bb.gn:                                            ; preds = %bb.fz
  %i.vl = load ptr, ptr %i.sb, align 8
  %i.vm = getelementptr [4 x i8], ptr %i.vl, i64 %indvars.iv307
  %i.vn = load i32, ptr %i.vm, align 4
  %i.vo = call i32 @proto_registrar_get_ftype(i32 noundef %i.vn)
  %cond.i = icmp eq i32 %i.vo, 25
  br i1 %cond.i, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.vp = getelementptr i8, ptr %i.sy, i64 48
  %i.vq = load i64, ptr %i.vp, align 8            ; 2 uses
  %i.vr = udiv i64 %i.vq, %.0202
  %i.vs = trunc i64 %i.vr to i32
  %i.vt = urem i64 %i.vq, %.0202
  %i.vu = mul i64 %i.vt, 1000000
  %i.vv = udiv i64 %i.vu, %.0202
  %i.vw = trunc i64 %i.vv to i32
  %i.vx = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i32 noundef %i.vs, i32 noundef %i.vw)
  br label %iostat_get_item_value.exit

bb.gp:                                            ; preds = %bb.gn, %bb.fz, %.lr.ph274
  %i.vy = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef %i.sw, i64 noundef 0, i64 noundef 0)
  br label %iostat_get_item_value.exit

iostat_get_item_value.exit:                       ; preds = %bb.ga, %bb.gb, %bb.gc, %bb.ge, %bb.gf, %bb.gg, %bb.gh, %bb.gj, %bb.gk, %bb.gl, %bb.gm, %bb.go, %bb.gp
  %.0.i = phi ptr [ %i.vy, %bb.gp ], [ %i.te, %bb.ga ], [ %i.th, %bb.gb ], [ %i.tm, %bb.gc ], [ %i.ug, %bb.gh ], [ %i.tu, %bb.ge ], [ %i.tw, %bb.gf ], [ %i.ue, %bb.gg ], [ %i.vk, %bb.gm ], [ %i.us, %bb.gj ], [ %i.uw, %bb.gk ], [ %i.vg, %bb.gl ], [ %i.vx, %bb.go ] ; 2 uses
  %i.vz = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef %.0.i) ; 0 uses
  call void @g_free(ptr noundef %.0.i)
  br i1 %.not.i255, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %iostat_get_item_value.exit
  %i.wa = getelementptr i8, ptr %i.sy, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8
  store ptr %i.wb, ptr %i.sx, align 8
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %iostat_get_item_value.exit
  %indvars.iv.next308 = add nuw nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %i.j
  br i1 %exitcond311.not, label %._crit_edge275, label %.lr.ph274, !llvm.loop !44

._crit_edge275:                                   ; preds = %bb.gr, %bb.fy
  br i1 %i.nw, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %._crit_edge275
  %i.wc = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.sc, ptr noundef nonnull @.str.37) ; 0 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %._crit_edge275
  %i.wd = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.38) ; 0 uses
  %i.we = add i64 %.0201278, %spec.select
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.wf = add nuw i32 %.1206277, 1                ; 2 uses
  %exitcond312.not = icmp eq i32 %i.wf, %.0211
  br i1 %exitcond312.not, label %.preheader, label %bb.fk, !llvm.loop !45

.lr.ph281:                                        ; preds = %.preheader, %.lr.ph281
  %.2280 = phi i32 [ %i.wh, %.lr.ph281 ], [ 0, %.preheader ]
  %i.wg = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.39) ; 0 uses
  %i.wh = add nuw i32 %.2280, 1                   ; 2 uses
  %exitcond313.not = icmp eq i32 %i.wh, %.2219
  br i1 %exitcond313.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !46

._crit_edge282:                                   ; preds = %.lr.ph281, %.preheader
  %i.wi = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 2, ptr noundef nonnull @.str.38) ; 0 uses
  call void @g_free(ptr noundef %i.k)
  br i1 %.not287, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %._crit_edge282, %.lr.ph285
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %.lr.ph285 ], [ 0, %._crit_edge282 ] ; 2 uses
  %i.wj = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv314
  %i.wk = load ptr, ptr %i.wj, align 8
  call void @g_free(ptr noundef %i.wk)
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1 ; 2 uses
  %exitcond318.not = icmp eq i64 %indvars.iv.next315, %i.j
  br i1 %exitcond318.not, label %._crit_edge286, label %.lr.ph285, !llvm.loop !47

._crit_edge286:                                   ; preds = %.lr.ph285, %._crit_edge282
  call void @g_free(ptr noundef %i.l)
  call void @g_free(ptr noundef %i.t)
  call void @g_free(ptr noundef %i.ru)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @iostat_finish(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call fastcc void @iostat_io_free(ptr noundef %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @nstime_is_unset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_delta(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_get_finfo_ptr_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @proto_registrar_get_ftype(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_get_uinteger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @fvalue_get_uinteger64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_get_sinteger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @fvalue_get_sinteger64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare double @fvalue_get_floating(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @fvalue_get_time(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_sum(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @display_signed_time(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @nstime_rounded(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_strrstr_len(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @fill_abs_time(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call ptr @ws_localtime_r(ptr noundef %0, ptr noundef nonnull %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = call ptr @ws_gmtime_r(ptr noundef %0, ptr noundef nonnull %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.041 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 4 uses
  %i.c = icmp eq ptr %.041, null
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 31, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.73) ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %.041, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %.041, i64 4
  %i.h = load i32, ptr %i.g, align 4
  %i.i = load i32, ptr %.041, align 8
  %i.j = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 31, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.74, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.i) ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 31, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.73) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.m = zext nneg i32 %i.j to i64                ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.m       ; 3 uses
  %i.o = sub nsw i64 31, %i.m                     ; 3 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = call i32 @format_fractional_part_nsecs(ptr noundef %i.n, i64 noundef %i.o, i32 noundef %i.q, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s
  %i.u = sub nsw i64 %i.o, %i.s
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.039 = phi ptr [ %i.t, %bb.i ], [ %i.n, %bb.h ]
  %.038 = phi i64 [ %i.u, %bb.i ], [ %i.o, %bb.h ] ; 2 uses
  %.0 = phi i32 [ %i.r, %bb.i ], [ %i.j, %bb.h ]
  br i1 %4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = icmp eq i64 %.038, 1
  %i.w = icmp sgt i32 %.0, 0
  %or.cond = select i1 %i.v, i1 %i.w, i1 false    ; 2 uses
  %spec.select.idx = sext i1 %or.cond to i64
  %spec.select = getelementptr i8, ptr %.039, i64 %spec.select.idx
  %spec.select44 = select i1 %or.cond, i64 2, i64 %.038
  %i.x = call i64 @g_strlcpy(ptr noundef %spec.select, ptr noundef nonnull @.str.75, i64 noundef %spec.select44) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @format_nstime_as_iso8601(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @fill_abs_ydoy_time(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.tm, align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  br i1 %4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = call ptr @ws_localtime_r(ptr noundef %0, ptr noundef nonnull %5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = call ptr @ws_gmtime_r(ptr noundef %0, ptr noundef nonnull %5)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.043 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ] ; 6 uses
  %i.c = icmp eq ptr %.043, null
  br i1 %i.c, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 31, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.76) ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr i8, ptr %.043, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = add i32 %i.f, 1900
  %i.h = getelementptr i8, ptr %.043, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, 1
  %i.k = getelementptr i8, ptr %.043, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %.043, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = load i32, ptr %.043, align 8
  %i.p = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 31, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.77, i32 noundef %i.g, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.o) ; 3 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %1, i64 noundef 31, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.76) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %i.p to i64                ; 2 uses
  %i.t = getelementptr i8, ptr %1, i64 %i.s       ; 3 uses
  %i.u = sub nsw i64 31, %i.s                     ; 3 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %0, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = call i32 @format_fractional_part_nsecs(ptr noundef %i.t, i64 noundef %i.u, i32 noundef %i.w, ptr noundef %2, i32 noundef %3) ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr i8, ptr %i.t, i64 %i.y
  %i.aa = sub nsw i64 %i.u, %i.y
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.041 = phi ptr [ %i.z, %bb.i ], [ %i.t, %bb.h ]
  %.040 = phi i64 [ %i.aa, %bb.i ], [ %i.u, %bb.h ] ; 2 uses
  %.0 = phi i32 [ %i.x, %bb.i ], [ %i.p, %bb.h ]
  br i1 %4, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = icmp eq i64 %.040, 1
  %i.ac = icmp sgt i32 %.0, 0
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false  ; 2 uses
  %spec.select.idx = sext i1 %or.cond to i64
  %spec.select = getelementptr i8, ptr %.041, i64 %spec.select.idx
  %spec.select46 = select i1 %or.cond, i64 2, i64 %.040
  %i.ad = call i64 @g_strlcpy(ptr noundef %spec.select, ptr noundef nonnull @.str.75, i64 noundef %spec.select46) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @ws_localtime_r(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @ws_gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare i32 @format_fractional_part_nsecs(ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_insert_c(ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_append_len(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_string_insert_len(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { null_pointer_is_valid allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { allocsize(0) }
attributes #16 = { allocsize(0,1) }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = distinct !{!13, !8}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"memcpy.inline: argument 0"}
!16 = distinct !{!16, !"memcpy.inline"}
!17 = distinct !{!17, !16, !"memcpy.inline: argument 1"}
!18 = !{!"branch_weights", !"expected", i32 1333691, i32 2146149957}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8, !25}
!25 = !{!"llvm.loop.peeled.count", i32 1}
!26 = distinct !{!26, !8}
!27 = distinct !{!27, !8}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !8, !32, !31}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8}
!44 = distinct !{!44, !8}
!45 = distinct !{!45, !8}
!46 = distinct !{!46, !8}
!47 = distinct !{!47, !8}
end_hunk_1
