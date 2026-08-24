Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cvodea?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@CVApolynomialGetY:bb.a

.preheader206:                                    ; preds = %bb.i, %.preheader206
  %storemerge.i = phi i64 [ %i.bg, %.preheader206 ], [ %.0.i, %bb.i ] ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.d, i64 %storemerge.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !70 ; 2 uses
  %i.bd = fsub double %1, %i.bc
  %i.be = fmul double %i.u, %i.bd
  %i.bf = fcmp ogt double %i.be, 0.000000e+00
  %i.bg = add nsw i64 %storemerge.i, 1
  br i1 %i.bf, label %.preheader206, label %.loopexit207

.loopexit207:                                     ; preds = %.preheader206, %bb.i
  %i.bh = phi double [ %i.aw, %bb.i ], [ %i.bc, %.preheader206 ]
  %.0178.ph = phi i64 [ %.0.i, %bb.i ], [ %storemerge.i, %.preheader206 ] ; 4 uses
  %.2177.ph = phi i32 [ %.0175, %bb.i ], [ 1, %.preheader206 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store i64 %.0178.ph, ptr %i.bi, align 8, !tbaa !69
  %i.bj = icmp eq i64 %.0178.ph, 0
  br i1 %i.bj, label %.thread, label %.loopexit207._crit_edge

.loopexit207._crit_edge:                          ; preds = %.loopexit207
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.0178.ph
  %.phi.trans.insert298 = getelementptr i8, ptr %.phi.trans.insert, i64 -8
  %.pre = load ptr, ptr %.phi.trans.insert298, align 8, !tbaa !31
  %.pre299 = load double, ptr %.pre, align 8, !tbaa !70
  %i.bk = icmp eq i32 %.2177.ph, 0
  br label %bb.k

.thread:                                          ; preds = %._crit_edge.i, %.loopexit207
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !85
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bo, ptr noundef %2) #7
  %i.bp = icmp sgt i32 %.fr238, 0
  br i1 %i.bp, label %.lr.ph237, label %.loopexit

.lr.ph237:                                        ; preds = %.thread
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %wide.trip.count296 = zext nneg i32 %.fr238 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph237, %bb.j
  %indvars.iv293 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next294, %bb.j ] ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !87
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv293
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv293
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bt, ptr noundef %i.bv) #7
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond297.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count296
  br i1 %exitcond297.not, label %.loopexit, label %bb.j, !llvm.loop !91

bb.k:                                             ; preds = %.loopexit207._crit_edge, %.thread189
  %i.bw = phi double [ %.pre301, %.thread189 ], [ %i.bh, %.loopexit207._crit_edge ]
  %i.bx = phi double [ %i.ag, %.thread189 ], [ %.pre299, %.loopexit207._crit_edge ]
  %.2177.ph194 = phi i1 [ false, %.thread189 ], [ %i.bk, %.loopexit207._crit_edge ] ; 2 uses
  %.0178.ph193 = phi i64 [ %storemerge5360.i, %.thread189 ], [ %.0178.ph, %.loopexit207._crit_edge ] ; 4 uses
  %i.by = fsub double %i.bw, %i.bx
  %i.bz = tail call double @SUNRabs(double noundef %i.by) #7 ; 3 uses
  %i.ca = load double, ptr %i.j, align 8, !tbaa !65
  %i.cb = load double, ptr %i.b, align 8, !tbaa !66
  %i.cc = fcmp ogt double %i.ca, %i.cb
  br i1 %i.cc, label %.thread304, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = add nsw i64 %.0178.ph193, -1            ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !92 ; 5 uses
  %.not168210 = icmp slt i32 %i.cj, 0
  %or.cond = select i1 %.2177.ph194, i1 true, i1 %.not168210
  br i1 %or.cond, label %.loopexit201, label %.lr.ph212

.thread304:                                       ; preds = %bb.k
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.0178.ph193
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !92 ; 5 uses
  %i.cq = sext i32 %i.cp to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.0178.ph193, i64 %i.cq)
  %.not169217 = icmp slt i32 %i.cp, 0
  %or.cond334 = select i1 %.2177.ph194, i1 true, i1 %.not169217
  br i1 %or.cond334, label %.loopexit201, label %.lr.ph219

.lr.ph212:                                        ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !68 ; 2 uses
  %i.ct = sub nsw i64 %i.cs, %.0178.ph193
  %i.cu = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, %i.cu
  %.neg = xor i64 %i.cu, -1
  %i.cw = add i64 %i.cs, %.neg
  %.0 = select i1 %i.cv, i64 %i.cw, i64 %i.cd
  %i.cx = getelementptr [8 x i8], ptr %i.d, i64 %.0
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.db = icmp sgt i32 %.fr238, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.dd = add nuw i32 %i.cj, 1
  %wide.trip.count247 = zext i32 %i.dd to i64
  %wide.trip.count = zext nneg i32 %.fr238 to i64
  br label %bb.o

.lr.ph219:                                        ; preds = %.thread304
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dg = icmp sgt i32 %.fr238, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.di = add nuw i32 %i.cp, 1
  %wide.trip.count257 = zext i32 %i.di to i64
  %wide.trip.count252 = zext nneg i32 %.fr238 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph219, %._crit_edge216
  %indvars.iv254 = phi i64 [ 0, %.lr.ph219 ], [ %indvars.iv.next255, %._crit_edge216 ] ; 5 uses
  %i.dj = sub nsw i64 %spec.select, %indvars.iv254
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dj
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !31 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !70
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv254
  store double %i.dm, ptr %i.dn, align 8, !tbaa !93
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !60 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !85
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv254
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dq, ptr noundef %i.ds) #7
  br i1 %i.dg, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %bb.m
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv254
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph215, %bb.n
  %indvars.iv249 = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next250, %bb.n ] ; 3 uses
  %i.dv = load ptr, ptr %i.dt, align 8, !tbaa !87
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv249
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !72
  %i.dy = load ptr, ptr %i.du, align 8, !tbaa !74
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv249
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dx, ptr noundef %i.ea) #7
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge216, label %bb.n, !llvm.loop !94

._crit_edge216:                                   ; preds = %bb.n, %bb.m
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %wide.trip.count257
  br i1 %exitcond258.not, label %.loopexit203, label %bb.m, !llvm.loop !95

bb.o:                                             ; preds = %.lr.ph212, %._crit_edge
  %indvars.iv244 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next245, %._crit_edge ] ; 5 uses
  %i.eb = getelementptr [8 x i8], ptr %i.cy, i64 %indvars.iv244
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !31 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !70
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv244
  store double %i.ed, ptr %i.ee, align 8, !tbaa !93
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !60 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !85
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv244
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.eh, ptr noundef %i.ej) #7
  br i1 %i.db, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv244
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !87
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !72
  %i.ep = load ptr, ptr %i.el, align 8, !tbaa !74
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.eo, ptr noundef %i.er) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !96

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %.loopexit203, label %bb.o, !llvm.loop !97

.loopexit203:                                     ; preds = %._crit_edge, %._crit_edge216
  %.0157307314 = phi i32 [ %i.cp, %._crit_edge216 ], [ %i.cj, %._crit_edge ] ; 6 uses
  %.not170224 = icmp slt i32 %.0157307314, 1
  br i1 %.not170224, label %.loopexit201, label %.preheader200.lr.ph

.preheader200.lr.ph:                              ; preds = %.loopexit203
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 4 uses
  %i.eu = icmp sgt i32 %.fr238, 0
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 2 uses
  %i.ew = zext nneg i32 %.0157307314 to i64       ; 2 uses
  %4 = add nuw i32 %.0157307314, 1
  %wide.trip.count278 = zext i32 %4 to i64        ; 2 uses
  br i1 %i.eu, label %.preheader200.us.preheader, label %.preheader200

.preheader200.us.preheader:                       ; preds = %.preheader200.lr.ph
  %wide.trip.count270 = zext nneg i32 %.fr238 to i64
  br label %.preheader200.us

.preheader200.us:                                 ; preds = %.preheader200.us.preheader, %.split.us.us
  %indvars.iv275 = phi i64 [ 1, %.preheader200.us.preheader ], [ %indvars.iv.next276, %.split.us.us ] ; 3 uses
  br label %.lr.ph222.us.us

.lr.ph222.us.us:                                  ; preds = %..loopexit199_crit_edge.us.us, %.preheader200.us
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %..loopexit199_crit_edge.us.us ], [ %i.ew, %.preheader200.us ] ; 6 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.es, i64 %indvars.iv272
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !93
  %5 = sub nsw i64 %indvars.iv272, %indvars.iv275
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %5
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !93
  %i.fb = fsub double %i.ey, %i.fa
  %i.fc = fdiv double %i.bz, %i.fb                ; 3 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv272
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !72 ; 2 uses
  %i.ff = fneg double %i.fc                       ; 2 uses
  %indvars.iv.next273 = add nsw i64 %indvars.iv272, -1 ; 3 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv.next273
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !72
  tail call void @N_VLinearSum(double noundef %i.fc, ptr noundef %i.fe, double noundef %i.ff, ptr noundef %i.fh, ptr noundef %i.fe) #7
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %indvars.iv272
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %indvars.iv.next273
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph222.us.us
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %bb.q ], [ 0, %.lr.ph222.us.us ] ; 3 uses
  %i.fk = load ptr, ptr %i.fi, align 8, !tbaa !74
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv267
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !72 ; 2 uses
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !74
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv267
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !72
  tail call void @N_VLinearSum(double noundef %i.fc, ptr noundef %i.fm, double noundef %i.ff, ptr noundef %i.fp, ptr noundef %i.fm) #7
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %..loopexit199_crit_edge.us.us, label %bb.q, !llvm.loop !98

..loopexit199_crit_edge.us.us:                    ; preds = %bb.q
  %.not171.us.us.not = icmp sgt i64 %indvars.iv272, %indvars.iv275
  br i1 %.not171.us.us.not, label %.lr.ph222.us.us, label %.split.us.us, !llvm.loop !99

.split.us.us:                                     ; preds = %..loopexit199_crit_edge.us.us
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not.a = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not.a, label %.loopexit201, label %.preheader200.us, !llvm.loop !100

.preheader200:                                    ; preds = %.preheader200.lr.ph, %.split
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.split ], [ 1, %.preheader200.lr.ph ] ; 3 uses
  br label %.loopexit199

.loopexit199:                                     ; preds = %.preheader200, %.loopexit199
  %indvars.iv259 = phi i64 [ %i.ew, %.preheader200 ], [ %indvars.iv.next260, %.loopexit199 ] ; 5 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.es, i64 %indvars.iv259
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !93
  %6 = sub nsw i64 %indvars.iv259, %indvars.iv262
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %6
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !93
  %i.fu = fsub double %i.fr, %i.ft
  %i.fv = fdiv double %i.bz, %i.fu                ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv259
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !72 ; 2 uses
  %i.fy = fneg double %i.fv
  %indvars.iv.next260 = add nsw i64 %indvars.iv259, -1 ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv.next260
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !72
  tail call void @N_VLinearSum(double noundef %i.fv, ptr noundef %i.fx, double noundef %i.fy, ptr noundef %i.ga, ptr noundef %i.fx) #7
  %.not171.not = icmp sgt i64 %indvars.iv259, %indvars.iv262
  br i1 %.not171.not, label %.loopexit199, label %.split, !llvm.loop !99

.split:                                           ; preds = %.loopexit199
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count278
  br i1 %exitcond266.not, label %.loopexit201, label %.preheader200, !llvm.loop !100

.loopexit201:                                     ; preds = %.split, %.split.us.us, %.thread304, %.loopexit203, %bb.l
  %.0157308 = phi i32 [ %i.cp, %.thread304 ], [ %.0157307314, %.split.us.us ], [ %i.cj, %bb.l ], [ %.0157307314, %.loopexit203 ], [ %.0157307314, %.split ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.gc = sext i32 %.0157308 to i64               ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gb, i64 %i.gc
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.ge, ptr noundef %2) #7
  %i.gf = icmp sgt i32 %.fr238, 0                 ; 2 uses
  br i1 %i.gf, label %.lr.ph228, label %.preheader

.lr.ph228:                                        ; preds = %.loopexit201
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.gg, i64 %i.gc
  %wide.trip.count283 = zext nneg i32 %.fr238 to i64
  br label %bb.r

.preheader:                                       ; preds = %bb.r, %.loopexit201
  %i.gi = icmp sgt i32 %.0157308, 0
  br i1 %i.gi, label %.lr.ph234, label %.loopexit

.lr.ph234:                                        ; preds = %.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.gl = zext nneg i32 %.0157308 to i64
  %wide.trip.count288 = zext nneg i32 %.fr238 to i64
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph228, %bb.r
  %indvars.iv280.a = phi i64 [ 0, %.lr.ph228 ], [ %indvars.iv.next281.a, %bb.r ] ; 3 uses
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !74
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv280.a
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !72
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv280.a
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.go, ptr noundef %i.gq) #7
  %indvars.iv.next281.a = add nuw nsw i64 %indvars.iv280.a, 1 ; 2 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281.a, %wide.trip.count283
  br i1 %exitcond284.not, label %.preheader, label %bb.r, !llvm.loop !101

.loopexit197:                                     ; preds = %bb.t, %bb.s
  %i.gr = icmp samesign ugt i64 %indvars.iv290, 1
  br i1 %i.gr, label %bb.s, label %.loopexit, !llvm.loop !102

bb.s:                                             ; preds = %.lr.ph234, %.loopexit197
  %indvars.iv290 = phi i64 [ %i.gl, %.lr.ph234 ], [ %indvars.iv.next291, %.loopexit197 ] ; 2 uses
  %indvars.iv.next291 = add nsw i64 %indvars.iv290, -1 ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %indvars.iv.next291
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !93
  %i.gu = fsub double %1, %i.gt
  %i.gv = fdiv double %i.gu, %i.bz                ; 2 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next291
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !72
  tail call void @N_VLinearSum(double noundef %i.gv, ptr noundef %2, double noundef 1.000000e+00, ptr noundef %i.gx, ptr noundef %2) #7
  br i1 %i.gf, label %.lr.ph231, label %.loopexit197

.lr.ph231:                                        ; preds = %bb.s
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next291
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph231, %bb.t
  %indvars.iv285 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next286, %bb.t ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv285
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !72 ; 2 uses
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !74
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv285
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !72
  tail call void @N_VLinearSum(double noundef %i.gv, ptr noundef %i.ha, double noundef 1.000000e+00, ptr noundef %i.hd, ptr noundef %i.ha) #7
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %.loopexit197, label %bb.t, !llvm.loop !103

.loopexit:                                        ; preds = %.loopexit197, %bb.j, %._crit_edge.i, %.preheader, %.thread
  %.0158 = phi i32 [ 0, %.thread ], [ 0, %bb.j ], [ 0, %.preheader ], [ -107, %._crit_edge.i ], [ 0, %.loopexit197 ]
  ret i32 %.0158
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @CVApolynomialStorePnt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !85
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.f, ptr noundef %i.g) #7
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.i = load i32, ptr %i.h, align 8, !tbaa !41
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !53
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !87
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %i.t) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !53
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.b, label %.loopexit, !llvm.loop !104

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1708
  %i.y = load i32, ptr %i.x, align 4, !tbaa !105
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %i.y, ptr %i.z, align 8, !tbaa !92
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -101, 1) i32 @CVodeAdjReInit(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2200
  %i.c = load i32, ptr %i.b, align 8, !tbaa !50
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %.not14 = icmp eq ptr %i.h, null
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  tail call fastcc void @CVAckpntDelete(ptr noundef nonnull %i.g)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !21
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !106

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  store ptr null, ptr %i.g, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i32 0, ptr %i.j, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store ptr null, ptr %i.k, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1, ptr %i.l, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 0, ptr %i.m, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i32 1, ptr %i.n, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %.0 = phi i32 [ -21, %bb.b ], [ -101, %bb.d ], [ 0, %._crit_edge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @CVAckpntDelete(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 23 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 816 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  store ptr %i.d, ptr %0, align 8, !tbaa !107
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !110
  %.not71 = icmp slt i32 %i.f, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

end_hunk_0
