Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idaa?download=true
inline.NumInlined: 10
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@IDAApolynomialGetY:bb.a
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bo, ptr noundef %2) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bq, ptr noundef %3) #7
  %i.br = icmp sgt i32 %.fr297, 0
  br i1 %i.br, label %.lr.ph296, label %.loopexit

.lr.ph296:                                        ; preds = %.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %wide.trip.count370 = zext nneg i32 %.fr297 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph296, %bb.j
  %indvars.iv367 = phi i64 [ 0, %.lr.ph296 ], [ %indvars.iv.next368, %bb.j ] ; 5 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !73
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv367
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !65
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv367
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bw, ptr noundef %i.by) #7
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !74
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv367
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv367
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.cb, ptr noundef %i.cd) #7
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 2 uses
  %exitcond371.not = icmp eq i64 %indvars.iv.next368, %wide.trip.count370
  br i1 %exitcond371.not, label %.loopexit, label %bb.j, !llvm.loop !144

bb.k:                                             ; preds = %.loopexit253._crit_edge, %.thread234
  %i.ce = phi double [ %.pre375, %.thread234 ], [ %i.bh, %.loopexit253._crit_edge ]
  %i.cf = phi double [ %i.ag, %.thread234 ], [ %.pre373, %.loopexit253._crit_edge ]
  %.2222.ph239 = phi i1 [ false, %.thread234 ], [ %i.bk, %.loopexit253._crit_edge ] ; 2 uses
  %.0223.ph238 = phi i64 [ %storemerge5461.i, %.thread234 ], [ %.0223.ph, %.loopexit253._crit_edge ] ; 4 uses
  %i.cg = fsub double %i.ce, %i.cf
  %i.ch = tail call double @SUNRabs(double noundef %i.cg) #7 ; 5 uses
  %i.ci = load double, ptr %i.j, align 8, !tbaa !58
  %i.cj = load double, ptr %i.b, align 8, !tbaa !59
  %i.ck = fcmp ogt double %i.ci, %i.cj
  br i1 %i.ck, label %.thread377, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = add nsw i64 %.0223.ph238, -1            ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !28
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !31
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !75 ; 5 uses
  %.not212256 = icmp slt i32 %i.cr, 0
  %or.cond = select i1 %.2222.ph239, i1 true, i1 %.not212256
  br i1 %or.cond, label %.loopexit247, label %.lr.ph258

.thread377:                                       ; preds = %bb.k
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.0223.ph238
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !75 ; 5 uses
  %i.cy = sext i32 %i.cx to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.0223.ph238, i64 %i.cy)
  %.not213263 = icmp slt i32 %i.cx, 0
  %or.cond407 = select i1 %.2222.ph239, i1 true, i1 %.not213263
  br i1 %or.cond407, label %.loopexit247, label %.lr.ph265

.lr.ph258:                                        ; preds = %bb.l
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !61 ; 2 uses
  %i.db = sub nsw i64 %i.da, %.0223.ph238
  %i.dc = zext nneg i32 %i.cr to i64              ; 2 uses
  %i.dd = icmp sgt i64 %i.db, %i.dc
  %.neg = xor i64 %i.dc, -1
  %i.de = add i64 %i.da, %.neg
  %.0193 = select i1 %i.dd, i64 %i.de, i64 %i.cl
  %i.df = getelementptr [8 x i8], ptr %i.d, i64 %.0193
  %i.dg = getelementptr i8, ptr %i.df, i64 -8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.dj = icmp sgt i32 %.fr297, 0
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dl = add nuw i32 %i.cr, 1
  %wide.trip.count306 = zext i32 %i.dl to i64
  %wide.trip.count = zext nneg i32 %.fr297 to i64
  br label %bb.o

.lr.ph265:                                        ; preds = %.thread377
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.do = icmp sgt i32 %.fr297, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.dq = add nuw i32 %i.cx, 1
  %wide.trip.count316 = zext i32 %i.dq to i64
  %wide.trip.count311 = zext nneg i32 %.fr297 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph265, %._crit_edge262
  %indvars.iv313 = phi i64 [ 0, %.lr.ph265 ], [ %indvars.iv.next314, %._crit_edge262 ] ; 5 uses
  %i.dr = sub nsw i64 %spec.select, %indvars.iv313
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !28 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !63
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv313
  store double %i.du, ptr %i.dv, align 8, !tbaa !69
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !71
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv313
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dy, ptr noundef %i.ea) #7
  br i1 %i.do, label %.lr.ph261, label %._crit_edge262

.lr.ph261:                                        ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv313
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph261, %bb.n
  %indvars.iv308 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next309, %bb.n ] ; 3 uses
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !73
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv308
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !65
  %i.eg = load ptr, ptr %i.ec, align 8, !tbaa !66
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv308
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ef, ptr noundef %i.ei) #7
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %._crit_edge262, label %bb.n, !llvm.loop !145

._crit_edge262:                                   ; preds = %bb.n, %bb.m
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %.loopexit249, label %bb.m, !llvm.loop !146

bb.o:                                             ; preds = %.lr.ph258, %._crit_edge
  %indvars.iv303 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next304, %._crit_edge ] ; 5 uses
  %i.ej = getelementptr [8 x i8], ptr %i.dg, i64 %indvars.iv303
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !28 ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !63
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv303
  store double %i.el, ptr %i.em, align 8, !tbaa !69
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !31 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !71
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv303
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ep, ptr noundef %i.er) #7
  br i1 %i.dj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv303
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !73
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %indvars.iv
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !65
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !66
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ew, ptr noundef %i.ez) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !147

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %.loopexit249, label %bb.o, !llvm.loop !148

.loopexit249:                                     ; preds = %._crit_edge, %._crit_edge262
  %.0201380387 = phi i32 [ %i.cx, %._crit_edge262 ], [ %i.cr, %._crit_edge ] ; 6 uses
  %.not214270 = icmp slt i32 %.0201380387, 1
  br i1 %.not214270, label %.loopexit247, label %.preheader246.lr.ph

.preheader246.lr.ph:                              ; preds = %.loopexit249
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 4 uses
  %i.fc = icmp sgt i32 %.fr297, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.fe = zext nneg i32 %.0201380387 to i64       ; 2 uses
  %i.ff = add nuw i32 %.0201380387, 1
  %wide.trip.count337 = zext i32 %i.ff to i64     ; 2 uses
  br i1 %i.fc, label %.preheader246.us.preheader, label %.preheader246

.preheader246.us.preheader:                       ; preds = %.preheader246.lr.ph
  %wide.trip.count329 = zext nneg i32 %.fr297 to i64
  br label %.preheader246.us

.preheader246.us:                                 ; preds = %.preheader246.us.preheader, %.split.us.us
  %indvars.iv334 = phi i64 [ 1, %.preheader246.us.preheader ], [ %indvars.iv.next335, %.split.us.us ] ; 3 uses
  br label %.lr.ph268.us.us

.lr.ph268.us.us:                                  ; preds = %..loopexit245_crit_edge.us.us, %.preheader246.us
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %..loopexit245_crit_edge.us.us ], [ %i.fe, %.preheader246.us ] ; 6 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %indvars.iv331
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !69
  %i.fi = sub nuw nsw i64 %indvars.iv331, %indvars.iv334
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fi
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !69
  %i.fl = fsub double %i.fh, %i.fk
  %i.fm = fdiv double %i.ch, %i.fl                ; 3 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %indvars.iv331
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !65 ; 2 uses
  %i.fp = fneg double %i.fm                       ; 2 uses
  %indvars.iv.next332 = add nsw i64 %indvars.iv331, -1 ; 3 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %indvars.iv.next332
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.fm, ptr noundef %i.fo, double noundef %i.fp, ptr noundef %i.fr, ptr noundef %i.fo) #7
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv331
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv.next332
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph268.us.us
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %bb.q ], [ 0, %.lr.ph268.us.us ] ; 3 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !66
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv326
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !65 ; 2 uses
  %i.fx = load ptr, ptr %i.ft, align 8, !tbaa !66
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv326
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.fm, ptr noundef %i.fw, double noundef %i.fp, ptr noundef %i.fz, ptr noundef %i.fw) #7
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %..loopexit245_crit_edge.us.us, label %bb.q, !llvm.loop !149

..loopexit245_crit_edge.us.us:                    ; preds = %bb.q
  %.not216.us.us.not = icmp sgt i64 %indvars.iv331, %indvars.iv334
  br i1 %.not216.us.us.not, label %.lr.ph268.us.us, label %.split.us.us, !llvm.loop !150

.split.us.us:                                     ; preds = %..loopexit245_crit_edge.us.us
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count337
  br i1 %exitcond338.not, label %.loopexit247, label %.preheader246.us, !llvm.loop !151

.preheader246:                                    ; preds = %.preheader246.lr.ph, %.split
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %.split ], [ 1, %.preheader246.lr.ph ] ; 3 uses
  br label %.loopexit245

.loopexit245:                                     ; preds = %.preheader246, %.loopexit245
  %indvars.iv318 = phi i64 [ %i.fe, %.preheader246 ], [ %indvars.iv.next319, %.loopexit245 ] ; 5 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %indvars.iv318
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !69
  %i.gc = sub nuw nsw i64 %indvars.iv318, %indvars.iv321
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !69
  %i.gf = fsub double %i.gb, %i.ge
  %i.gg = fdiv double %i.ch, %i.gf                ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %indvars.iv318
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !65 ; 2 uses
  %i.gj = fneg double %i.gg
  %indvars.iv.next319 = add nsw i64 %indvars.iv318, -1 ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %indvars.iv.next319
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.gg, ptr noundef %i.gi, double noundef %i.gj, ptr noundef %i.gl, ptr noundef %i.gi) #7
  %.not216.not = icmp sgt i64 %indvars.iv318, %indvars.iv321
  br i1 %.not216.not, label %.loopexit245, label %.split, !llvm.loop !150

.split:                                           ; preds = %.loopexit245
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count337
  br i1 %exitcond325.not, label %.loopexit247, label %.preheader246, !llvm.loop !151

.loopexit247:                                     ; preds = %.split, %.split.us.us, %.thread377, %.loopexit249, %bb.l
  %.0201381 = phi i32 [ %i.cx, %.thread377 ], [ %.0201380387, %.split.us.us ], [ %i.cr, %bb.l ], [ %.0201380387, %.loopexit249 ], [ %.0201380387, %.split ] ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.gn = sext i32 %.0201381 to i64               ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.gp, ptr noundef %2) #7
  %i.gq = icmp sgt i32 %.fr297, 0                 ; 4 uses
  br i1 %i.gq, label %.lr.ph274, label %.preheader244

.lr.ph274:                                        ; preds = %.loopexit247
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gn
  %wide.trip.count342 = zext nneg i32 %.fr297 to i64
  br label %bb.r

.preheader244:                                    ; preds = %bb.r, %.loopexit247
  %i.gt = icmp sgt i32 %.0201381, 0
  br i1 %i.gt, label %.lr.ph280, label %._crit_edge281

.lr.ph280:                                        ; preds = %.preheader244
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.gw = zext nneg i32 %.0201381 to i64
  %wide.trip.count347 = zext nneg i32 %.fr297 to i64
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph274, %bb.r
  %indvars.iv339 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next340, %bb.r ] ; 3 uses
  %i.gx = load ptr, ptr %i.gs, align 8, !tbaa !66
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv339
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !65
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv339
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.gz, ptr noundef %i.hb) #7
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond343.not = icmp eq i64 %indvars.iv.next340, %wide.trip.count342
  br i1 %exitcond343.not, label %.preheader244, label %bb.r, !llvm.loop !152

.loopexit243:                                     ; preds = %bb.t, %bb.s
  %i.hc = icmp samesign ugt i64 %indvars.iv349, 1
  br i1 %i.hc, label %bb.s, label %._crit_edge281, !llvm.loop !153

bb.s:                                             ; preds = %.lr.ph280, %.loopexit243
  %indvars.iv349 = phi i64 [ %i.gw, %.lr.ph280 ], [ %indvars.iv.next350, %.loopexit243 ] ; 2 uses
  %indvars.iv.next350 = add nsw i64 %indvars.iv349, -1 ; 4 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next350
  %i.he = load double, ptr %i.hd, align 8, !tbaa !69
  %i.hf = fsub double %1, %i.he
  %i.hg = fdiv double %i.hf, %i.ch                ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next350
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.hg, ptr noundef %2, double noundef 1.000000e+00, ptr noundef %i.hi, ptr noundef %2) #7
  br i1 %i.gq, label %.lr.ph277, label %.loopexit243

.lr.ph277:                                        ; preds = %bb.s
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next350
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph277, %bb.t
  %indvars.iv344 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next345, %bb.t ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv344
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !65 ; 2 uses
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !66
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv344
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef %i.hg, ptr noundef %i.hl, double noundef 1.000000e+00, ptr noundef %i.ho, ptr noundef %i.hl) #7
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond348.not = icmp eq i64 %indvars.iv.next345, %wide.trip.count347
  br i1 %exitcond348.not, label %.loopexit243, label %bb.t, !llvm.loop !154

._crit_edge281:                                   ; preds = %.loopexit243, %.preheader244
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %3) #7
  br i1 %i.gq, label %.lr.ph284.preheader, label %.preheader

.lr.ph284.preheader:                              ; preds = %._crit_edge281
  %wide.trip.count355 = zext nneg i32 %.fr297 to i64
  br label %.lr.ph284

.preheader:                                       ; preds = %.lr.ph284, %._crit_edge281
  %.not215289 = icmp slt i32 %.0201381, 1
  br i1 %.not215289, label %.loopexit, label %.lr.ph293

.lr.ph293:                                        ; preds = %.preheader
  %i.hp = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.hq = add nuw i32 %.0201381, 1
  %wide.trip.count365 = zext i32 %i.hq to i64
  %wide.trip.count360 = zext nneg i32 %.fr297 to i64
  br label %bb.u

.lr.ph284:                                        ; preds = %.lr.ph284.preheader, %.lr.ph284
  %indvars.iv352 = phi i64 [ 0, %.lr.ph284.preheader ], [ %indvars.iv.next353, %.lr.ph284 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv352
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !65
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.hs) #7
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %exitcond356.not = icmp eq i64 %indvars.iv.next353, %wide.trip.count355
  br i1 %exitcond356.not, label %.preheader, label %.lr.ph284, !llvm.loop !155

bb.u:                                             ; preds = %.lr.ph293, %._crit_edge288
  %indvars.iv362 = phi i64 [ 1, %.lr.ph293 ], [ %indvars.iv.next363, %._crit_edge288 ] ; 4 uses
  %.0292 = phi double [ 0.000000e+00, %.lr.ph293 ], [ %i.hz, %._crit_edge288 ]
  %.0192291 = phi double [ 1.000000e+00, %.lr.ph293 ], [ %i.ia, %._crit_edge288 ] ; 2 uses
  %i.ht = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv362
  %i.hu = getelementptr i8, ptr %i.ht, i64 264
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !69
  %i.hw = fsub double %1, %i.hv
  %i.hx = fdiv double %i.hw, %i.ch                ; 2 uses
  %i.hy = fdiv double %.0192291, %i.ch
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hx, double %.0292, double %i.hy) ; 3 uses
  %i.ia = fmul double %.0192291, %i.hx
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv362
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %3, double noundef %i.hz, ptr noundef %i.ic, ptr noundef %3) #7
  br i1 %i.gq, label %.lr.ph287, label %._crit_edge288

.lr.ph287:                                        ; preds = %bb.u
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv362
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph287, %bb.v
  %indvars.iv357 = phi i64 [ 0, %.lr.ph287 ], [ %indvars.iv.next358, %bb.v ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv357
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !65 ; 2 uses
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !66
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv357
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !65
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.if, double noundef %i.hz, ptr noundef %i.ii, ptr noundef %i.if) #7
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count360
  br i1 %exitcond361.not, label %._crit_edge288, label %bb.v, !llvm.loop !156

._crit_edge288:                                   ; preds = %bb.v, %bb.u
  %indvars.iv.next363 = add nuw nsw i64 %indvars.iv362, 1 ; 2 uses
  %exitcond366.not = icmp eq i64 %indvars.iv.next363, %wide.trip.count365
  br i1 %exitcond366.not, label %.loopexit, label %bb.u, !llvm.loop !157

.loopexit:                                        ; preds = %._crit_edge288, %bb.j, %._crit_edge.i, %.preheader, %.thread
  %.0202 = phi i32 [ 0, %.thread ], [ 0, %bb.j ], [ 0, %.preheader ], [ -107, %._crit_edge.i ], [ 0, %._crit_edge288 ]
  ret i32 %.0202
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @IDAApolynomialStorePnt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !65
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !71
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.g) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !72   ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %IDAAGettnSolutionYp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !65
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.n, ptr noundef nonnull %i.i) #7
  br label %IDAAGettnSolutionYp.exit

bb.d:                                             ; preds = %bb.b
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.i) #7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1660
  %i.p = load i32, ptr %i.o, align 4, !tbaa !68
  %spec.store.select.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 1) ; 2 uses
  %.not29.i = icmp slt i32 %spec.store.select.i, 1
  br i1 %.not29.i, label %IDAAGettnSolutionYp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.q = add nuw i32 %spec.store.select.i, 1
  %wide.trip.count.i = zext i32 %i.q to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %.033.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ac, %bb.e ] ; 2 uses
end_hunk_0
