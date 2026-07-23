inline.NumInlined: 732
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 52
begin_hunk_0_@long_true_divide:bb.a
  %.val197 = load i64, ptr %i.f, align 8, !tbaa !35
  %i.g = and i64 %.val197, 16777216
  %.not169 = icmp eq i64 %i.g, 0
  br i1 %.not169, label %bb.am, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 16
  %.val194 = load i64, ptr %i.h, align 8, !tbaa !25 ; 4 uses
  %i.i = lshr i64 %.val194, 3                     ; 12 uses
  %i.j = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.j, align 8, !tbaa !25  ; 2 uses
  %i.k = lshr i64 %.val, 3                        ; 7 uses
  %i.l = and i64 %.val194, 3
  %i.m = icmp eq i64 %i.l, 2
  %i.n = and i64 %.val, 3
  %i.o = icmp eq i64 %i.n, 2
  %i.p = xor i1 %i.m, %i.o                        ; 2 uses
  %i.q = icmp eq i64 %i.k, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @PyExc_ZeroDivisionError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.r, ptr noundef nonnull @.str.47) #16
  br label %bb.am

bb.e:                                             ; preds = %bb.c
  switch i64 %i.i, label %.fold.split [
    i64 0, label %bb.ak
    i64 1, label %bb.g
    i64 2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %0, i64 28
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = icmp ult i32 %i.t, 8388608
  br label %bb.g

.fold.split:                                      ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %.fold.split, %bb.f
  %i.v = phi i1 [ true, %bb.e ], [ %i.u, %bb.f ], [ false, %.fold.split ]
  switch i64 %i.k, label %.thread [
    i64 1, label %bb.i
    i64 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr i8, ptr %1, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !7
  %i.y = icmp ult i32 %i.x, 8388608
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.z = phi i1 [ true, %bb.g ], [ %i.y, %bb.h ]
  %or.cond = select i1 %i.v, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.ab = add nsw i64 %i.i, -1                    ; 4 uses
  %i.ac = getelementptr [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = uitofp i32 %i.ad to double              ; 3 uses
  %i.af = icmp ugt i64 %.val194, 15
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ag = icmp ne i64 %i.ab, 0
  %umin = zext i1 %i.ag to i64                    ; 2 uses
  %i.ah = sub nsw i64 %i.i, %umin
  %xtraiter = and i64 %i.ah, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0121227.prol = phi i64 [ %i.ai, %.lr.ph.prol ], [ %i.ab, %.lr.ph.preheader ]
  %.0129226.prol = phi double [ %i.am, %.lr.ph.prol ], [ %i.ae, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ai = add nsw i64 %.0121227.prol, -1          ; 3 uses
  %i.aj = getelementptr [4 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = uitofp i32 %i.ak to double
  %i.am = tail call double @llvm.fmuladd.f64(double %.0129226.prol, double f0x41D0000000000000, double %i.al) ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !306

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0121227.unr = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %i.ai, %.lr.ph.prol ]
  %.0129226.unr = phi double [ %i.ae, %.lr.ph.preheader ], [ %i.am, %.lr.ph.prol ]
  %.lcssa278.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.am, %.lr.ph.prol ]
  %i.an = sub nsw i64 %umin, %i.i
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0121227 = phi i64 [ %i.be, %.lr.ph ], [ %.0121227.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0129226 = phi double [ %i.bi, %.lr.ph ], [ %.0129226.unr, %.lr.ph.prol.loopexit ]
  %i.ap = getelementptr [4 x i8], ptr %i.aa, i64 %.0121227
  %i.aq = getelementptr i8, ptr %i.ap, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = uitofp i32 %i.ar to double
  %i.at = tail call double @llvm.fmuladd.f64(double %.0129226, double f0x41D0000000000000, double %i.as)
  %i.au = getelementptr [4 x i8], ptr %i.aa, i64 %.0121227
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = uitofp i32 %i.aw to double
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.at, double f0x41D0000000000000, double %i.ax)
  %i.az = getelementptr [4 x i8], ptr %i.aa, i64 %.0121227
  %i.ba = getelementptr i8, ptr %i.az, i64 -12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = uitofp i32 %i.bb to double
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.ay, double f0x41D0000000000000, double %i.bc)
  %i.be = add nsw i64 %.0121227, -4               ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.aa, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = uitofp i32 %i.bg to double
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bd, double f0x41D0000000000000, double %i.bh) ; 2 uses
  %i.bj = icmp sgt i64 %.0121227, 4
  br i1 %i.bj, label %.lr.ph, label %._crit_edge, !llvm.loop !307

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j
  %.0129.lcssa = phi double [ %i.ae, %bb.j ], [ %.lcssa278.unr, %.lr.ph.prol.loopexit ], [ %i.bi, %.lr.ph ]
  %i.bk = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.bl = getelementptr [4 x i8], ptr %i.bk, i64 %i.k
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = uitofp i32 %i.bn to double              ; 2 uses
  %.not249 = icmp eq i64 %i.k, 1
  br i1 %.not249, label %._crit_edge232, label %._crit_edge232.loopexit

._crit_edge232.loopexit:                          ; preds = %._crit_edge
  %i.bp = load i32, ptr %i.bk, align 8, !tbaa !7
  %i.bq = uitofp i32 %i.bp to double
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bo, double f0x41D0000000000000, double %i.bq)
  br label %._crit_edge232

._crit_edge232:                                   ; preds = %._crit_edge232.loopexit, %._crit_edge
  %.0128.lcssa = phi double [ %i.bo, %._crit_edge ], [ %i.br, %._crit_edge232.loopexit ]
  %i.bs = fdiv double %.0129.lcssa, %.0128.lcssa
  br label %bb.aj

.thread:                                          ; preds = %bb.g, %bb.i
  %i.bt = sub nsw i64 %i.i, %i.k                  ; 3 uses
  %i.bu = icmp sgt i64 %i.bt, 307445734561825859
  br i1 %i.bu, label %bb.al, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.bv = icmp slt i64 %i.bt, -307445734561825859
  br i1 %i.bv, label %bb.ak, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = mul nsw i64 %i.bt, 30
  %i.bx = getelementptr i8, ptr %0, i64 24        ; 6 uses
  %i.by = getelementptr [4 x i8], ptr %i.bx, i64 %i.i
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 false)
  %i.cc = sub nuw nsw i32 32, %i.cb
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = add nsw i64 %i.bw, %i.cd
  %i.cf = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %i.k
  %i.ch = getelementptr i8, ptr %i.cg, i64 -4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ci, i1 false)
  %i.ck = sub nuw nsw i32 32, %i.cj
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = sub nsw i64 %i.ce, %i.cl                ; 4 uses
  %i.cn = icmp sgt i64 %i.cm, 1024
  br i1 %i.cn, label %bb.al, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = icmp slt i64 %i.cm, -1075
  br i1 %i.co, label %bb.ak, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = tail call i64 @llvm.smax.i64(i64 %i.cm, i64 -1021) ; 3 uses
  %i.cq = add nsw i64 %i.cp, -55                  ; 5 uses
  %i.cr = icmp slt i64 %i.cm, 56
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cs = sub nsw i64 55, %i.cp                   ; 3 uses
  %i.ct = udiv i64 %i.cs, 30                      ; 3 uses
  %i.cu = urem i64 %i.cs, 30                      ; 3 uses
  %i.cv = add nuw nsw i64 %i.ct, %i.i             ; 2 uses
  %i.cw = add nuw nsw i64 %i.cv, 1
  %i.cx = tail call fastcc ptr @long_alloc(i64 noundef %i.cw) ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.am, label %.preheader

.preheader:                                       ; preds = %bb.o
  %.not250 = icmp ult i64 %i.cs, 30
  br i1 %.not250, label %.lr.ph.i.preheader, label %.lr.ph241

.lr.ph241:                                        ; preds = %.preheader
  %i.cz = getelementptr i8, ptr %i.cx, i64 24
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ct, i64 1)
  %i.da = shl nuw nsw i64 %umax, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cz, i8 0, i64 %i.da, i1 false), !tbaa !7
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.preheader, %.lr.ph241
  %i.db = getelementptr i8, ptr %i.cx, i64 24     ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.ct ; 3 uses
  %i.dd = icmp eq i64 %i.i, 1
  br i1 %i.dd, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter287 = and i64 %i.i, 2305843009213693950
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.013.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dx, %.lr.ph.i ] ; 4 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dw, %.lr.ph.i ]
  %niter288 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter288.next.1, %.lr.ph.i ]
  %i.de = getelementptr [4 x i8], ptr %i.bx, i64 %.013.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = zext i32 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.dg, %i.cu
  %i.di = or i64 %i.dh, %.01112.i                 ; 2 uses
  %i.dj = trunc i64 %i.di to i32
  %i.dk = and i32 %i.dj, 1073741823
  %i.dl = getelementptr [4 x i8], ptr %i.dc, i64 %.013.i
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !7
  %i.dm = lshr i64 %i.di, 30
  %i.dn = or disjoint i64 %.013.i, 1              ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %i.bx, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, %i.cu
  %i.ds = or i64 %i.dr, %i.dm                     ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = and i32 %i.dt, 1073741823
  %i.dv = getelementptr [4 x i8], ptr %i.dc, i64 %i.dn
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !7
  %i.dw = lshr i64 %i.ds, 30                      ; 3 uses
  %i.dx = add nuw nsw i64 %.013.i, 2              ; 2 uses
  %niter288.next.1 = add i64 %niter288, 2         ; 2 uses
  %niter288.ncmp.1 = icmp eq i64 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1, label %.thread209.unr-lcssa, label %.lr.ph.i, !llvm.loop !214

.thread209.unr-lcssa:                             ; preds = %.lr.ph.i
  %i.dy = and i64 %.val194, 8
  %lcmp.mod284.not = icmp eq i64 %i.dy, 0
  br i1 %lcmp.mod284.not, label %.thread209, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.thread209.unr-lcssa, %.lr.ph.i.preheader
  %.013.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dx, %.thread209.unr-lcssa ] ; 2 uses
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dw, %.thread209.unr-lcssa ]
  %lcmp.mod286 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod286)
  %i.dz = getelementptr [4 x i8], ptr %i.bx, i64 %.013.i.epil.init
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.eb = zext i32 %i.ea to i64
  %i.ec = shl nuw nsw i64 %i.eb, %i.cu
  %i.ed = or i64 %i.ec, %.01112.i.epil.init       ; 2 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 1073741823
  %i.eg = getelementptr [4 x i8], ptr %i.dc, i64 %.013.i.epil.init
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !7
  %i.eh = lshr i64 %i.ed, 30
  br label %.thread209

.thread209:                                       ; preds = %.thread209.unr-lcssa, %.lr.ph.i.epil.preheader
  %.lcssa277 = phi i64 [ %i.dw, %.thread209.unr-lcssa ], [ %i.eh, %.lr.ph.i.epil.preheader ]
  %i.ei = trunc nuw nsw i64 %.lcssa277 to i32
  %i.ej = getelementptr [4 x i8], ptr %i.db, i64 %i.cv
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !7
  br label %.thread215

bb.p:                                             ; preds = %bb.n
  %i.ek = udiv i64 %i.cq, 30                      ; 4 uses
  %i.el = urem i64 %i.cq, 30                      ; 4 uses
  %i.em = sub nsw i64 %i.i, %i.ek                 ; 7 uses
  %i.en = tail call fastcc ptr @long_alloc(i64 noundef %i.em) ; 5 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.am, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = getelementptr i8, ptr %i.en, i64 24     ; 3 uses
  %i.eq = getelementptr [4 x i8], ptr %i.bx, i64 %i.ek ; 3 uses
  %i.er = trunc nuw nsw i64 %i.el to i32
  %notmask.i = shl nsw i32 -1, %i.er
  %i.es = xor i32 %notmask.i, -1                  ; 3 uses
  %i.et = icmp sgt i64 %i.em, 0
  br i1 %i.et, label %.lr.ph.i203.preheader, label %bb.r

.lr.ph.i203.preheader:                            ; preds = %bb.q
  %.neg292 = add nuw nsw i64 %i.ek, 1
  %xtraiter279 = and i64 %i.em, 1
  %i.eu = icmp eq i64 %i.i, %.neg292
  br i1 %i.eu, label %.lr.ph.i203.epil.preheader, label %.lr.ph.i203.preheader.new

.lr.ph.i203.preheader.new:                        ; preds = %.lr.ph.i203.preheader
  %unroll_iter = and i64 %i.em, 9223372036854775806
  br label %.lr.ph.i203

.lr.ph.i203:                                      ; preds = %.lr.ph.i203, %.lr.ph.i203.preheader.new
  %.014.i = phi i64 [ %i.em, %.lr.ph.i203.preheader.new ], [ %i.fh, %.lr.ph.i203 ] ; 2 uses
  %.01213.i = phi i32 [ 0, %.lr.ph.i203.preheader.new ], [ %.fr.1, %.lr.ph.i203 ]
  %niter = phi i64 [ 0, %.lr.ph.i203.preheader.new ], [ %niter.next.1, %.lr.ph.i203 ]
  %i.ev = add nsw i64 %.014.i, -1                 ; 2 uses
  %i.ew = zext nneg i32 %.01213.i to i64
  %i.ex = shl nuw nsw i64 %i.ew, 30
  %i.ey = getelementptr [4 x i8], ptr %i.eq, i64 %i.ev
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7
  %i.fa = zext i32 %i.ez to i64
  %i.fb = or i64 %i.ex, %i.fa                     ; 2 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = and i32 %i.fc, %i.es
  %.fr = freeze i32 %i.fd
  %i.fe = lshr i64 %i.fb, %i.el
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = getelementptr [4 x i8], ptr %i.ep, i64 %i.ev
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !7
  %i.fh = add nsw i64 %.014.i, -2                 ; 4 uses
  %i.fi = zext nneg i32 %.fr to i64
  %i.fj = shl nuw nsw i64 %i.fi, 30
  %i.fk = getelementptr [4 x i8], ptr %i.eq, i64 %i.fh
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = zext i32 %i.fl to i64
  %i.fn = or i64 %i.fj, %i.fm                     ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = and i32 %i.fo, %i.es
  %.fr.1 = freeze i32 %i.fp                       ; 3 uses
  %i.fq = lshr i64 %i.fn, %i.el
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr [4 x i8], ptr %i.ep, i64 %i.fh
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !7
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %v_rshift.exit.unr-lcssa, label %.lr.ph.i203, !llvm.loop !215

v_rshift.exit.unr-lcssa:                          ; preds = %.lr.ph.i203
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %v_rshift.exit, label %.lr.ph.i203.epil.preheader

.lr.ph.i203.epil.preheader:                       ; preds = %v_rshift.exit.unr-lcssa, %.lr.ph.i203.preheader
  %.014.i.epil.init = phi i64 [ %i.em, %.lr.ph.i203.preheader ], [ %i.fh, %v_rshift.exit.unr-lcssa ]
  %.01213.i.epil.init = phi i32 [ 0, %.lr.ph.i203.preheader ], [ %.fr.1, %v_rshift.exit.unr-lcssa ]
  %lcmp.mod282 = trunc i64 %i.em to i1
  tail call void @llvm.assume(i1 %lcmp.mod282)
  %i.ft = add nsw i64 %.014.i.epil.init, -1       ; 2 uses
  %i.fu = zext nneg i32 %.01213.i.epil.init to i64
  %i.fv = shl nuw nsw i64 %i.fu, 30
  %i.fw = getelementptr [4 x i8], ptr %i.eq, i64 %i.ft
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !7
  %i.fy = zext i32 %i.fx to i64
  %i.fz = or i64 %i.fv, %i.fy                     ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = and i32 %i.ga, %i.es
  %.fr.epil = freeze i32 %i.gb
  %i.gc = lshr i64 %i.fz, %i.el
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = getelementptr [4 x i8], ptr %i.ep, i64 %i.ft
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !7
  br label %v_rshift.exit

v_rshift.exit:                                    ; preds = %v_rshift.exit.unr-lcssa, %.lr.ph.i203.epil.preheader
  %.fr.lcssa = phi i32 [ %.fr.1, %v_rshift.exit.unr-lcssa ], [ %.fr.epil, %.lr.ph.i203.epil.preheader ]
  %.not171 = icmp eq i32 %.fr.lcssa, 0
  br i1 %.not171, label %bb.r, label %.thread215

bb.r:                                             ; preds = %v_rshift.exit, %bb.q
  %i.gf = icmp ugt i64 %i.cq, 29
  br i1 %i.gf, label %.lr.ph238, label %.thread215

.lr.ph238:                                        ; preds = %bb.r, %.lr.ph238
  %.0124236 = phi i64 [ %i.gg, %.lr.ph238 ], [ %i.ek, %bb.r ] ; 2 uses
  %i.gg = add nsw i64 %.0124236, -1               ; 2 uses
  %i.gh = getelementptr [4 x i8], ptr %i.bx, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %.not173 = icmp ne i32 %i.gi, 0                 ; 2 uses
  %i.gj = icmp ult i64 %.0124236, 2
  %.not273 = or i1 %i.gj, %.not173
  br i1 %.not273, label %.thread215.loopexit, label %.lr.ph238, !llvm.loop !308

.thread215.loopexit:                              ; preds = %.lr.ph238
  %spec.select180 = zext i1 %.not173 to i32
  br label %.thread215

.thread215:                                       ; preds = %.thread215.loopexit, %v_rshift.exit, %bb.r, %.thread209
  %.1156 = phi ptr [ %i.cx, %.thread209 ], [ %i.en, %bb.r ], [ %i.en, %v_rshift.exit ], [ %i.en, %.thread215.loopexit ] ; 11 uses
  %.4 = phi i32 [ 0, %.thread209 ], [ 0, %bb.r ], [ 1, %v_rshift.exit ], [ %spec.select180, %.thread215.loopexit ] ; 2 uses
  %i.gk = tail call fastcc ptr @long_normalize(ptr noundef nonnull %.1156) ; 0 uses
  %i.gl = getelementptr i8, ptr %.1156, i64 16
  %.1156.val = load i64, ptr %i.gl, align 8, !tbaa !25 ; 2 uses
  %i.gm = and i64 %.1156.val, 3
  %i.gn = sub nsw i64 1, %i.gm
  %i.go = lshr i64 %.1156.val, 3
  %i.gp = mul nsw i64 %i.gn, %i.go                ; 2 uses
  %i.gq = icmp eq i64 %i.k, 1
  br i1 %i.gq, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.thread215
  %i.gr = getelementptr i8, ptr %.1156, i64 24
  %i.gs = icmp sgt i64 %i.gp, 0
  br i1 %i.gs, label %.lr.ph.i205, label %inplace_divrem1.exit.thread

end_hunk_0
