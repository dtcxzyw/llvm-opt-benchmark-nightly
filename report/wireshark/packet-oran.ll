inline.NumInlined: 214
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ext11_work_out_bundles:bb.a
  %i.q = zext i8 %i.p to i32
  %i.r = mul nuw nsw i32 %i.q, %i.e               ; 2 uses
  %i.s = udiv i32 %i.r, %2
  %i.t = getelementptr i8, ptr %3, i64 3
  %i.u = getelementptr i8, ptr %3, i64 820
  %i.v = add i32 %1, -1
  %i.w = add i32 %i.v, %0                         ; 3 uses
  %umin = tail call i32 @llvm.umin.i32(i32 %i.s, i32 28)
  %wide.trip.count346 = zext nneg i32 %umin to i64
  %exitcond347380 = icmp ugt i32 %2, %i.r
  br i1 %exitcond347380, label %.critedge264.sink.split, label %.lr.ph384

bb.e:                                             ; preds = %bb.k
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343381, 1 ; 2 uses
  %exitcond347 = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347, label %.critedge264.sink.split, label %.lr.ph384, !llvm.loop !86

.lr.ph384:                                        ; preds = %bb.d, %bb.e
  %.0243303382 = phi i32 [ %.1244, %bb.e ], [ 0, %bb.d ]
  %indvars.iv343381 = phi i64 [ %indvars.iv.next344, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.x = getelementptr i8, ptr %i.t, i64 %indvars.iv343381
  %i.y = load i8, ptr %i.x, align 1
  %i.z = zext i8 %i.y to i32
  %i.aa = mul nuw nsw i32 %i.z, %i.e
  %i.ab = add i32 %i.aa, %0                       ; 2 uses
  %i.ac = add i32 %i.ab, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph384
  %.1244 = phi i32 [ %.0243303382, %.lr.ph384 ], [ %i.ap, %bb.j ] ; 6 uses
  %.1240 = phi i1 [ false, %.lr.ph384 ], [ %i.an, %bb.j ] ; 2 uses
  %.0235 = phi i32 [ 0, %.lr.ph384 ], [ %i.aj, %bb.j ] ; 3 uses
  %i.ad = icmp samesign uge i32 %.0235, %.0247
  %.not263 = select i1 %.1240, i1 true, i1 %i.ad
  br i1 %.not263, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = mul i32 %.0235, %2
  %i.af = add i32 %i.ae, %i.ab                    ; 2 uses
  %i.ag = zext i32 %.1244 to i64
  %i.ah = getelementptr [12 x i8], ptr %i.u, i64 %i.ag ; 3 uses
  store i32 %i.af, ptr %i.ah, align 4
  %i.ai = icmp ugt i32 %i.af, %i.w
  br i1 %i.ai, label %.critedge264.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = add nuw nsw i32 %.0235, 1               ; 2 uses
  %i.ak = mul i32 %i.aj, %2
  %i.al = add i32 %i.ac, %i.ak                    ; 2 uses
  %i.am = getelementptr i8, ptr %i.ah, i64 4      ; 2 uses
  store i32 %i.al, ptr %i.am, align 4
  %i.an = icmp ugt i32 %i.al, %i.w                ; 2 uses
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %i.w, ptr %i.am, align 4
  %i.ao = getelementptr i8, ptr %i.ah, i64 8
  store i8 1, ptr %i.ao, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = add i32 %.1244, 1                       ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 512
  br i1 %i.aq, label %.critedge264, label %bb.f, !llvm.loop !87

bb.k:                                             ; preds = %bb.f
  br i1 %.1240, label %..critedge264.sink.split.loopexit370_crit_edge, label %bb.e, !llvm.loop !86

bb.l:                                             ; preds = %bb.a
  %i.ar = getelementptr i8, ptr %3, i64 31
  %i.as = load i8, ptr %i.ar, align 1, !range !6, !noundef !7
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.au = add i32 %2, -1                          ; 6 uses
  %i.av = add i32 %i.au, %1                       ; 2 uses
  %i.aw = udiv i32 %i.av, %2                      ; 3 uses
  %i.ax = getelementptr i8, ptr %3, i64 816       ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.aw, i32 512) ; 2 uses
  store i32 %spec.select, ptr %i.ax, align 4
  %.not307 = icmp ugt i32 %2, %i.av
  br i1 %.not307, label %._crit_edge, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.m
  %i.ay = getelementptr i8, ptr %3, i64 820       ; 3 uses
  %i.az = add i32 %1, %0                          ; 6 uses
  %umax333 = tail call i32 @llvm.umax.i32(i32 %spec.select, i32 1) ; 2 uses
  %wide.trip.count334 = zext nneg i32 %umax333 to i64 ; 2 uses
  %xtraiter400 = and i64 %wide.trip.count334, 1
  %i.ba = icmp ult i32 %i.aw, 2
  br i1 %i.ba, label %.epil.preheader399, label %.lr.ph293.new

.lr.ph293.new:                                    ; preds = %.lr.ph293
  %unroll_iter403 = and i64 %wide.trip.count334, 1022
  br label %bb.o

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.s
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  br i1 %lcmp.mod401.not, label %._crit_edge, label %.epil.preheader399

.epil.preheader399:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph293
  %indvars.iv330.epil.init = phi i64 [ 0, %.lr.ph293 ], [ %indvars.iv.next331.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod402 = trunc i32 %umax333 to i1
  tail call void @llvm.assume(i1 %lcmp.mod402)
  %i.bb = trunc nuw nsw i64 %indvars.iv330.epil.init to i32
  %i.bc = mul i32 %2, %i.bb
  %i.bd = add i32 %i.bc, %0                       ; 2 uses
  %i.be = getelementptr [12 x i8], ptr %i.ay, i64 %indvars.iv330.epil.init ; 3 uses
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = add i32 %i.au, %i.bd                    ; 2 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 4      ; 2 uses
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = icmp ugt i32 %i.bf, %i.az
  br i1 %i.bh, label %bb.n, label %._crit_edge

bb.n:                                             ; preds = %.epil.preheader399
  store i32 %i.az, ptr %i.bg, align 4
  %i.bi = getelementptr i8, ptr %i.be, i64 8
  store i8 1, ptr %i.bi, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.n, %.epil.preheader399, %bb.m
  %i.bj = icmp ugt i32 %i.aw, 511
  br i1 %i.bj, label %.critedge264, label %bb.t

bb.o:                                             ; preds = %bb.s, %.lr.ph293.new
  %indvars.iv330 = phi i64 [ 0, %.lr.ph293.new ], [ %indvars.iv.next331.1, %bb.s ] ; 4 uses
  %niter404 = phi i64 [ 0, %.lr.ph293.new ], [ %niter404.next.1, %bb.s ]
  %i.bk = trunc nuw nsw i64 %indvars.iv330 to i32
  %i.bl = mul i32 %2, %i.bk
  %i.bm = add i32 %i.bl, %0                       ; 2 uses
  %i.bn = getelementptr [12 x i8], ptr %i.ay, i64 %indvars.iv330 ; 3 uses
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = add i32 %i.au, %i.bm                    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bn, i64 4      ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 4
  %i.bq = icmp ugt i32 %i.bo, %i.az
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.az, ptr %i.bp, align 4
  %i.br = getelementptr i8, ptr %i.bn, i64 8
  store i8 1, ptr %i.br, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next331 = or disjoint i64 %indvars.iv330, 1 ; 2 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.next331 to i32
  %i.bt = mul i32 %2, %i.bs
  %i.bu = add i32 %i.bt, %0                       ; 2 uses
  %i.bv = getelementptr [12 x i8], ptr %i.ay, i64 %indvars.iv.next331 ; 3 uses
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = add i32 %i.au, %i.bu                    ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bv, i64 4      ; 2 uses
  store i32 %i.bw, ptr %i.bx, align 4
  %i.by = icmp ugt i32 %i.bw, %i.az
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.az, ptr %i.bx, align 4
  %i.bz = getelementptr i8, ptr %i.bv, i64 8
  store i8 1, ptr %i.bz, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2 ; 2 uses
  %niter404.next.1 = add i64 %niter404, 2         ; 2 uses
  %niter404.ncmp.1 = icmp eq i64 %niter404.next.1, %unroll_iter403
  br i1 %niter404.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.o, !llvm.loop !88

bb.t:                                             ; preds = %._crit_edge
  %i.ca = getelementptr i8, ptr %3, i64 32
  %i.cb = load i32, ptr %i.ca, align 4            ; 2 uses
  %.not308 = icmp eq i32 %i.cb, 0
  br i1 %.not308, label %.critedge264, label %.lr.ph302

.lr.ph302:                                        ; preds = %bb.t
  %i.cc = add i32 %1, %0
  %i.cd = getelementptr i8, ptr %3, i64 36
  %i.ce = getelementptr i8, ptr %3, i64 820
  %wide.trip.count341 = zext i32 %i.cb to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph302, %._crit_edge298
  %indvars.iv338 = phi i64 [ 0, %.lr.ph302 ], [ %indvars.iv.next339, %._crit_edge298 ] ; 2 uses
  %.0233299 = phi i32 [ %i.cc, %.lr.ph302 ], [ %i.dc, %._crit_edge298 ]
  %i.cf = getelementptr [2 x i8], ptr %i.cd, i64 %indvars.iv338 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 2
  %i.ch = zext i8 %i.cg to i32
  %i.ci = add i32 %.0233299, %i.ch                ; 3 uses
  %i.cj = getelementptr i8, ptr %i.cf, i64 1      ; 3 uses
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i32                    ; 2 uses
  %i.cm = add i32 %i.au, %i.cl                    ; 2 uses
  %.not261.not294.not = icmp ugt i32 %2, %i.cm
  br i1 %.not261.not294.not, label %._crit_edge298, label %.lr.ph297.preheader

.lr.ph297.preheader:                              ; preds = %bb.u
  %i.cn = udiv i32 %i.cm, %2
  %.pre = load i32, ptr %i.ax, align 4
  %umax336 = tail call i32 @llvm.umax.i32(i32 %i.cn, i32 1)
  br label %.lr.ph297

bb.v:                                             ; preds = %bb.x
  %i.co = add nuw i32 %.0231295, 1                ; 2 uses
  %exitcond337.not = icmp eq i32 %i.co, %umax336
  br i1 %exitcond337.not, label %._crit_edge298.loopexit, label %.lr.ph297, !llvm.loop !89

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %bb.v
  %i.cp = phi i32 [ %i.db, %bb.v ], [ %.pre, %.lr.ph297.preheader ] ; 2 uses
  %.0231295 = phi i32 [ %i.co, %bb.v ], [ 0, %.lr.ph297.preheader ] ; 2 uses
  %i.cq = mul i32 %.0231295, %2
  %i.cr = add i32 %i.cq, %i.ci                    ; 2 uses
  %i.cs = zext i32 %i.cp to i64
  %i.ct = getelementptr [12 x i8], ptr %i.ce, i64 %i.cs ; 3 uses
  store i32 %i.cr, ptr %i.ct, align 4
  %i.cu = add i32 %i.au, %i.cr                    ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ct, i64 4      ; 2 uses
  store i32 %i.cu, ptr %i.cv, align 4
  %i.cw = load i8, ptr %i.cj, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = add i32 %i.ci, %i.cx                    ; 2 uses
  %i.cz = icmp ugt i32 %i.cu, %i.cy
  br i1 %i.cz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph297
  store i32 %i.cy, ptr %i.cv, align 4
  %i.da = getelementptr i8, ptr %i.ct, i64 8
  store i8 1, ptr %i.da, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph297
  %i.db = add i32 %i.cp, 1                        ; 3 uses
  store i32 %i.db, ptr %i.ax, align 4
  %.not260 = icmp eq i32 %i.db, 512
  br i1 %.not260, label %.critedge264, label %bb.v

._crit_edge298.loopexit:                          ; preds = %bb.v
  %.pre348 = load i8, ptr %i.cj, align 1
  %.pre349 = zext i8 %.pre348 to i32
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %bb.u
  %.pre-phi = phi i32 [ %.pre349, %._crit_edge298.loopexit ], [ %i.cl, %bb.u ]
  %i.dc = add i32 %i.ci, %.pre-phi
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %exitcond342.not = icmp eq i64 %indvars.iv.next339, %wide.trip.count341
  br i1 %exitcond342.not, label %.critedge264, label %bb.u, !llvm.loop !90

bb.y:                                             ; preds = %bb.l
  %i.dd = getelementptr i8, ptr %3, i64 292
  %i.de = load i8, ptr %i.dd, align 4, !range !6, !noundef !7
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = add i32 %2, -1                          ; 5 uses
  %i.dh = add i32 %i.dg, %1                       ; 3 uses
  %i.di = udiv i32 %i.dh, %2                      ; 5 uses
  br i1 %i.df, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr i8, ptr %3, i64 296
  %i.dk = load i32, ptr %i.dj, align 4            ; 3 uses
  %i.dl = mul i32 %i.dk, %i.di
  %i.dm = getelementptr i8, ptr %3, i64 816
  %spec.select269 = tail call i32 @llvm.umin.i32(i32 %i.dl, i32 512)
  store i32 %spec.select269, ptr %i.dm, align 4
  %.not306 = icmp eq i32 %i.dk, 0
  br i1 %.not306, label %.critedge264, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.z
  %.not287.not = icmp ugt i32 %2, %i.dh
  %i.dn = getelementptr i8, ptr %3, i64 300
  %i.do = getelementptr i8, ptr %3, i64 820
  br i1 %.not287.not, label %.critedge264, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %.lr.ph291
  %wide.trip.count328 = zext i32 %i.dk to i64
  %umax322 = tail call i32 @llvm.umax.i32(i32 %i.di, i32 1)
  %wide.trip.count323 = zext i32 %umax322 to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %..critedge271_crit_edge
  %indvars.iv325 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvars.iv.next326, %..critedge271_crit_edge ] ; 3 uses
  %i.dp = trunc nuw i64 %indvars.iv325 to i32
  %i.dq = mul i32 %i.di, %i.dp
  %i.dr = getelementptr [4 x i8], ptr %i.dn, i64 %indvars.iv325 ; 2 uses
  %i.ds = zext i32 %i.dq to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph289, %bb.ad
  %indvars.iv319 = phi i64 [ 0, %.lr.ph289 ], [ %indvars.iv.next320, %bb.ad ] ; 3 uses
  %i.dt = add nuw nsw i64 %indvars.iv319, %i.ds   ; 2 uses
  %i.du = icmp samesign ugt i64 %i.dt, 511
  br i1 %i.du, label %.critedge264, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i32, ptr %i.dr, align 4
  %i.dw = trunc nuw nsw i64 %indvars.iv319 to i32
  %i.dx = mul i32 %2, %i.dw
  %i.dy = add i32 %i.dx, %0
  %i.dz = add i32 %i.dy, %i.dv                    ; 2 uses
  %i.ea = getelementptr [12 x i8], ptr %i.do, i64 %i.dt ; 3 uses
  store i32 %i.dz, ptr %i.ea, align 4
  %i.eb = add i32 %i.dg, %i.dz                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.ea, i64 4      ; 2 uses
  store i32 %i.eb, ptr %i.ec, align 4
  %i.ed = load i32, ptr %i.dr, align 4
  %i.ee = add i32 %i.ed, %1                       ; 2 uses
  %i.ef = icmp ugt i32 %i.eb, %i.ee
  br i1 %i.ef, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.ee, ptr %i.ec, align 4
  %i.eg = getelementptr i8, ptr %i.ea, i64 8
  store i8 1, ptr %i.eg, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond324.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count323
  br i1 %exitcond324.not, label %..critedge271_crit_edge, label %bb.aa, !llvm.loop !91

..critedge271_crit_edge:                          ; preds = %bb.ad
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %.critedge264, label %.lr.ph289, !llvm.loop !92

bb.ae:                                            ; preds = %bb.y
  %i.eh = getelementptr i8, ptr %3, i64 816
  %spec.select272 = tail call i32 @llvm.umin.i32(i32 %i.di, i32 512) ; 2 uses
  store i32 %spec.select272, ptr %i.eh, align 4
  %.not305 = icmp ugt i32 %2, %i.dh
  br i1 %.not305, label %.critedge264, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae
  %i.ei = getelementptr i8, ptr %3, i64 820       ; 3 uses
  %i.ej = add i32 %1, %0                          ; 6 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %spec.select272, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %umax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ek = icmp ult i32 %i.di, 2
  br i1 %i.ek, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 1022
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.aj ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.aj ]
  %i.el = trunc nuw nsw i64 %indvars.iv to i32
  %i.em = mul i32 %2, %i.el
  %i.en = add i32 %i.em, %0                       ; 2 uses
  %i.eo = getelementptr [12 x i8], ptr %i.ei, i64 %indvars.iv ; 3 uses
  store i32 %i.en, ptr %i.eo, align 4
  %i.ep = add i32 %i.dg, %i.en                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 4      ; 2 uses
  store i32 %i.ep, ptr %i.eq, align 4
  %i.er = icmp ugt i32 %i.ep, %i.ej
  br i1 %i.er, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 %i.ej, ptr %i.eq, align 4
  %i.es = getelementptr i8, ptr %i.eo, i64 8
  store i8 1, ptr %i.es, align 4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.et = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.eu = mul i32 %2, %i.et
  %i.ev = add i32 %i.eu, %0                       ; 2 uses
  %i.ew = getelementptr [12 x i8], ptr %i.ei, i64 %indvars.iv.next ; 3 uses
  store i32 %i.ev, ptr %i.ew, align 4
  %i.ex = add i32 %i.dg, %i.ev                    ; 2 uses
  %i.ey = getelementptr i8, ptr %i.ew, i64 4      ; 2 uses
  store i32 %i.ex, ptr %i.ey, align 4
  %i.ez = icmp ugt i32 %i.ex, %i.ej
  br i1 %i.ez, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %i.ej, ptr %i.ey, align 4
  %i.fa = getelementptr i8, ptr %i.ew, i64 8
  store i8 1, ptr %i.fa, align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge264.loopexit397.unr-lcssa, label %bb.af, !llvm.loop !93

..critedge264.sink.split.loopexit370_crit_edge:   ; preds = %bb.k
  br label %.critedge264.sink.split, !llvm.loop !86

.critedge264.sink.split:                          ; preds = %bb.e, %bb.g, %bb.d, %..critedge264.sink.split.loopexit370_crit_edge
  %.1244.lcssa368.sink = phi i32 [ %.1244, %bb.g ], [ %.1244, %..critedge264.sink.split.loopexit370_crit_edge ], [ 0, %bb.d ], [ %.1244, %bb.e ]
  %i.fb = getelementptr i8, ptr %3, i64 816
  store i32 %.1244.lcssa368.sink, ptr %i.fb, align 4
  br label %.critedge264

.critedge264.loopexit397.unr-lcssa:               ; preds = %bb.aj
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge264, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge264.loopexit397.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge264.loopexit397.unr-lcssa ] ; 2 uses
  %lcmp.mod398 = trunc i32 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod398)
  %i.fc = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.fd = mul i32 %2, %i.fc
  %i.fe = add i32 %i.fd, %0                       ; 2 uses
  %i.ff = getelementptr [12 x i8], ptr %i.ei, i64 %indvars.iv.epil.init ; 3 uses
  store i32 %i.fe, ptr %i.ff, align 4
  %i.fg = add i32 %i.dg, %i.fe                    ; 2 uses
  %i.fh = getelementptr i8, ptr %i.ff, i64 4      ; 2 uses
  store i32 %i.fg, ptr %i.fh, align 4
  %i.fi = icmp ugt i32 %i.fg, %i.ej
  br i1 %i.fi, label %bb.ak, label %.critedge264

bb.ak:                                            ; preds = %.epil.preheader
  store i32 %i.ej, ptr %i.fh, align 4
  %i.fj = getelementptr i8, ptr %i.ff, i64 8
  store i8 1, ptr %i.fj, align 4
  br label %.critedge264

.critedge264:                                     ; preds = %.critedge264.loopexit397.unr-lcssa, %bb.ak, %.epil.preheader, %..critedge271_crit_edge, %bb.aa, %._crit_edge298, %bb.x, %bb.j, %.critedge264.sink.split, %bb.ae, %bb.z, %.lr.ph291, %bb.t, %._crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_tree_insert32_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_tree_lookup32_array(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item_ret_uint16(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_bitmask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_hash(ptr noundef) #9

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare i32 @g_direct_equal(ptr noundef, ptr noundef) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef ptr @oran_key(ptr nofree readnone captures(none) %0, i32 %1, ptr nofree noundef readnone returned captures(ret: address, provenance) %2) #10 {
bb.a:
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal void @oran_free_key(ptr nofree readnone captures(none) %0) #10 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

end_hunk_0
