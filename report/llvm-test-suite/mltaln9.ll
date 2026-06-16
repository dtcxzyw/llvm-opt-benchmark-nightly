inline.NumInlined: 16
inline.NumDeleted: 4
begin_hunk_0_@loadtree:bb.a
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %.lcssa308, i64 %i.ci
  store ptr null, ptr %i.cj, align 8, !tbaa !106
  %i.ck = load ptr, ptr @loadtree.hist, align 8, !tbaa !89 ; 7 uses
  %i.cl = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count271 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.cm = ptrtoaddr ptr %i.cl to i64
  %i.cn = ptrtoaddr ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  %diff.check = icmp ult i64 %i.co, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph225
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.cp, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.cq, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cr, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.cs, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge226, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph225, %middle.block
  %indvars.iv268.ph = phi i64 [ 0, %.lr.ph225 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter311 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod312.not = icmp eq i64 %xtraiter311, 0
  br i1 %lcmp.mod312.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv268.prol = phi i64 [ %indvars.iv.next269.prol, %scalar.ph.prol ], [ %indvars.iv268.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv268.prol
  store i32 -1, ptr %i.cu, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv268.prol
  store i32 1, ptr %i.cv, align 4, !tbaa !4
  %indvars.iv.next269.prol = add nuw nsw i64 %indvars.iv268.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter311
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !114

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv268.unr = phi i64 [ %indvars.iv268.ph, %scalar.ph.preheader ], [ %indvars.iv.next269.prol, %scalar.ph.prol ]
  %i.cw = sub nsw i64 %indvars.iv268.ph, %wide.trip.count
  %i.cx = icmp ugt i64 %i.cw, -4
  br i1 %i.cx, label %._crit_edge226, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv268 = phi i64 [ %indvars.iv.next269.3, %scalar.ph ], [ %indvars.iv268.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv268
  store i32 -1, ptr %i.cy, align 4, !tbaa !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv268
  store i32 1, ptr %i.cz, align 4, !tbaa !4
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269
  store i32 -1, ptr %i.da, align 4, !tbaa !4
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269
  store i32 1, ptr %i.db, align 4, !tbaa !4
  %indvars.iv.next269.1 = add nuw nsw i64 %indvars.iv268, 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269.1
  store i32 -1, ptr %i.dc, align 4, !tbaa !4
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269.1
  store i32 1, ptr %i.dd, align 4, !tbaa !4
  %indvars.iv.next269.2 = add nuw nsw i64 %indvars.iv268, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next269.2
  store i32 -1, ptr %i.de, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next269.2
  store i32 1, ptr %i.df, align 4, !tbaa !4
  %indvars.iv.next269.3 = add nuw nsw i64 %indvars.iv268, 4 ; 2 uses
  %exitcond272.not.3 = icmp eq i64 %indvars.iv.next269.3, %wide.trip.count271
  br i1 %exitcond272.not.3, label %._crit_edge226, label %scalar.ph, !llvm.loop !115

._crit_edge226:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.dg) ; 0 uses
  %.not298 = icmp eq i32 %0, 1
  br i1 %.not298, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %._crit_edge226
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.ch to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph252, %bb.ab
  %indvars.iv273 = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next274, %bb.ab ] ; 4 uses
  %i.di = trunc nuw nsw i64 %indvars.iv273 to i32 ; 3 uses
  %i.dj = urem i32 %i.di, 10
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.13, i32 noundef %i.di, i32 noundef %0) #31 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv273 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store <2 x float> splat (float -1.000000e+00), ptr %i.do, align 4, !tbaa !21
  %i.dq = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.b) ; 0 uses
  %i.dr = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dp) #33 ; 0 uses
  %i.ds = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.dt = add nsw i32 %i.ds, -1                   ; 3 uses
  store i32 %i.dt, ptr %i.a, align 4, !tbaa !4
  %i.du = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.dv = add nsw i32 %i.du, -1                   ; 3 uses
  store i32 %i.dv, ptr %i.dh, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.ds, %i.du
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dx = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.dw) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.j
  %i.dy = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 3 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !21 ; 2 uses
  %i.ea = fcmp oeq float %i.dz, -1.000000e+00
  br i1 %i.ea, label %bb.m, label %bb.l

bb.l:                                             ; preds = %loadtreeoneline.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 4 ; 2 uses
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !21 ; 2 uses
  %i.ed = fcmp oeq float %i.ec, -1.000000e+00
  br i1 %i.ed, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %loadtreeoneline.exit
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ef = call i64 @fwrite(ptr nonnull @.str.14, i64 37, i64 1, ptr %i.ee) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.eg = fcmp olt float %i.dz, 0.000000e+00
  br i1 %i.eg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float 0.000000e+00, ptr %i.dy, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eh = fcmp olt float %i.ec, 0.000000e+00
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float 0.000000e+00, ptr %i.eb, align 4, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ei = load ptr, ptr @loadtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.ej = sext i32 %i.dt to i64                   ; 5 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.ej ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !4  ; 2 uses
  %i.em = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ej ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !4  ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv273 ; 3 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !87
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !89
  %i.es = add nsw i32 %i.eo, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = shl nsw i64 %i.et, 2
  %i.ev = call ptr @realloc(ptr noundef %i.er, i64 noundef %i.eu) #36 ; 5 uses
  %i.ew = load ptr, ptr %i.ep, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !89
  %i.ex = icmp eq i32 %i.el, -1
  br i1 %i.ex, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %i.dt, ptr %i.ev, align 4, !tbaa !4
  store i32 -1, ptr %i.ey, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ez = sext i32 %i.el to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !87 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !89 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !89 ; 3 uses
  %i.ff = load i32, ptr %i.fc, align 4, !tbaa !4  ; 3 uses
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !4  ; 3 uses
  %i.fh = icmp sgt i32 %i.ff, %i.fg               ; 2 uses
  %5 = call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.fg) ; 2 uses
  %i.fi = call i32 @llvm.smax.i32(i32 %i.ff, i32 %i.fg)
  %.212 = select i1 %i.fh, ptr %i.fc, ptr %i.fe   ; 2 uses
  %.not202227 = icmp eq i32 %5, -1
  br i1 %.not202227, label %.preheader215, label %.lr.ph231.preheader

.lr.ph231.preheader:                              ; preds = %bb.t
  %. = select i1 %i.fh, ptr %i.fe, ptr %i.fc
  br label %.lr.ph231

.preheader215.loopexit:                           ; preds = %.lr.ph231
  %.pre = load i32, ptr %.212, align 4, !tbaa !4
  br label %.preheader215

.preheader215:                                    ; preds = %.preheader215.loopexit, %bb.t
  %i.fj = phi i32 [ %i.fi, %bb.t ], [ %.pre, %.preheader215.loopexit ] ; 2 uses
  %.0183.lcssa = phi ptr [ %i.ev, %bb.t ], [ %i.fm, %.preheader215.loopexit ] ; 2 uses
  %.not203232 = icmp eq i32 %i.fj, -1
  br i1 %.not203232, label %._crit_edge236, label %.lr.ph235

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %.lr.ph231
  %i.fk = phi i32 [ %i.fn, %.lr.ph231 ], [ %5, %.lr.ph231.preheader ]
  %.0180229 = phi ptr [ %i.fl, %.lr.ph231 ], [ %., %.lr.ph231.preheader ]
  %.0183228 = phi ptr [ %i.fm, %.lr.ph231 ], [ %i.ev, %.lr.ph231.preheader ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0180229, i64 4 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0183228, i64 4 ; 2 uses
  store i32 %i.fk, ptr %.0183228, align 4, !tbaa !4
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !4  ; 2 uses
  %.not202 = icmp eq i32 %i.fn, -1
  br i1 %.not202, label %.preheader215.loopexit, label %.lr.ph231, !llvm.loop !116

.lr.ph235:                                        ; preds = %.preheader215, %.lr.ph235
  %i.fo = phi i32 [ %i.fr, %.lr.ph235 ], [ %i.fj, %.preheader215 ]
  %.1181234 = phi ptr [ %i.fp, %.lr.ph235 ], [ %.212, %.preheader215 ]
  %.1184233 = phi ptr [ %i.fq, %.lr.ph235 ], [ %.0183.lcssa, %.preheader215 ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.1181234, i64 4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.1184233, i64 4 ; 2 uses
  store i32 %i.fo, ptr %.1184233, align 4, !tbaa !4
  %i.fr = load i32, ptr %i.fp, align 4, !tbaa !4  ; 2 uses
  %.not203 = icmp eq i32 %i.fr, -1
  br i1 %.not203, label %._crit_edge236, label %.lr.ph235, !llvm.loop !117

._crit_edge236:                                   ; preds = %.lr.ph235, %.preheader215
  %.1184.lcssa = phi ptr [ %.0183.lcssa, %.preheader215 ], [ %i.fq, %.lr.ph235 ]
  store i32 -1, ptr %.1184.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge236, %bb.s
  %i.fs = sext i32 %i.dv to i64                   ; 4 uses
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 2 uses
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.fs
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !4  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !89
  %i.fz = add nsw i32 %i.fu, 1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = shl nsw i64 %i.ga, 2
  %i.gc = call ptr @realloc(ptr noundef %i.fy, i64 noundef %i.gb) #36 ; 6 uses
  %i.gd = load ptr, ptr %i.ep, align 8, !tbaa !87
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store ptr %i.gc, ptr %i.ge, align 8, !tbaa !89
  %.not204 = icmp eq ptr %i.gc, null
  br i1 %.not204, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.gf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.gg = call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.gf) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.gh = icmp eq i32 %i.fw, -1
  br i1 %i.gh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  store i32 %i.dv, ptr %i.gc, align 4, !tbaa !4
  store i32 -1, ptr %i.gi, align 4, !tbaa !4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gj = sext i32 %i.fw to i64
  %i.gk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !87 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !89 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !89 ; 3 uses
  %i.gp = load i32, ptr %i.gm, align 4, !tbaa !4  ; 3 uses
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !4  ; 3 uses
  %i.gr = icmp sgt i32 %i.gp, %i.gq               ; 2 uses
  %6 = call i32 @llvm.smin.i32(i32 %i.gp, i32 %i.gq) ; 2 uses
  %i.gs = call i32 @llvm.smax.i32(i32 %i.gp, i32 %i.gq)
  %.214 = select i1 %i.gr, ptr %i.gm, ptr %i.go   ; 2 uses
  %.not205238 = icmp eq i32 %6, -1
  br i1 %.not205238, label %.preheader, label %.lr.ph242.preheader

.lr.ph242.preheader:                              ; preds = %bb.y
  %.213 = select i1 %i.gr, ptr %i.go, ptr %i.gm
  br label %.lr.ph242

.preheader.loopexit:                              ; preds = %.lr.ph242
  %.pre279 = load i32, ptr %.214, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.y
  %i.gt = phi i32 [ %i.gs, %bb.y ], [ %.pre279, %.preheader.loopexit ] ; 2 uses
  %.2185.lcssa = phi ptr [ %i.gc, %bb.y ], [ %i.gw, %.preheader.loopexit ] ; 2 uses
  %.not206244 = icmp eq i32 %i.gt, -1
  br i1 %.not206244, label %._crit_edge248, label %.lr.ph247

.lr.ph242:                                        ; preds = %.lr.ph242.preheader, %.lr.ph242
  %i.gu = phi i32 [ %i.gx, %.lr.ph242 ], [ %6, %.lr.ph242.preheader ]
  %.2182240 = phi ptr [ %i.gv, %.lr.ph242 ], [ %.213, %.lr.ph242.preheader ]
  %.2185239 = phi ptr [ %i.gw, %.lr.ph242 ], [ %i.gc, %.lr.ph242.preheader ] ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.2182240, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.2185239, i64 4 ; 2 uses
  store i32 %i.gu, ptr %.2185239, align 4, !tbaa !4
  %i.gx = load i32, ptr %i.gv, align 4, !tbaa !4  ; 2 uses
  %.not205 = icmp eq i32 %i.gx, -1
  br i1 %.not205, label %.preheader.loopexit, label %.lr.ph242, !llvm.loop !118

.lr.ph247:                                        ; preds = %.preheader, %.lr.ph247
  %i.gy = phi i32 [ %i.hb, %.lr.ph247 ], [ %i.gt, %.preheader ]
  %.3246 = phi ptr [ %i.gz, %.lr.ph247 ], [ %.214, %.preheader ]
  %.3186245 = phi ptr [ %i.ha, %.lr.ph247 ], [ %.2185.lcssa, %.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.3246, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.3186245, i64 4 ; 2 uses
  store i32 %i.gy, ptr %.3186245, align 4, !tbaa !4
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !4  ; 2 uses
  %.not206 = icmp eq i32 %i.hb, -1
  br i1 %.not206, label %._crit_edge248, label %.lr.ph247, !llvm.loop !119

._crit_edge248:                                   ; preds = %.lr.ph247, %.preheader
  %.3186.lcssa = phi ptr [ %.2185.lcssa, %.preheader ], [ %i.ha, %.lr.ph247 ]
  store i32 -1, ptr %.3186.lcssa, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge248, %bb.x
  store i32 %i.di, ptr %i.ek, align 4, !tbaa !4
  %i.hc = add nsw i32 %i.fu, %i.eo
  store i32 %i.hc, ptr %i.en, align 4, !tbaa !4
  %i.hd = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ej
  store float 9.999000e+02, ptr %i.hd, align 4, !tbaa !21
  %i.he = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.hf = load ptr, ptr @loadtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.ej
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !12
  %i.hi = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !21
  %i.hk = fpext float %i.hj to double
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %i.fs
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !21
  %i.hp = fpext float %i.ho to double
  %i.hq = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.he, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.hh, double noundef %i.hk, ptr noundef %i.hm, double noundef %i.hp) #33 ; 0 uses
  %i.hr = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.ej
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !12
  %i.hu = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.hv = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ht, ptr noundef nonnull dereferenceable(1) %i.hu) #33 ; 0 uses
  %i.hw = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  %i.hx = getelementptr inbounds [24 x i8], ptr %i.hw, i64 %i.fs ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !108 ; 2 uses
  %i.ia = load ptr, ptr %i.hx, align 8, !tbaa !106 ; 3 uses
  store ptr %i.ia, ptr %i.hz, align 8, !tbaa !106
  %.not208 = icmp eq ptr %i.ia, null
  br i1 %.not208, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %i.hz, ptr %i.ib, align 8, !tbaa !108
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 2 uses
  %exitcond277.not = icmp eq i64 %indvars.iv.next274, %wide.trip.count276
  br i1 %exitcond277.not, label %._crit_edge253, label %bb.h, !llvm.loop !120

._crit_edge253:                                   ; preds = %bb.ab, %._crit_edge226.thread, %._crit_edge226
  %i.ic = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %i.id = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 3 uses
  %i.ie = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  %i.if = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.id, ptr noundef nonnull @.str.4, ptr noundef %i.ie) #33 ; 0 uses
  %i.ig = call i64 @fwrite(ptr nonnull @.str.19, i64 13, i64 1, ptr %i.id) ; 0 uses
  %i.ih = call i32 @fclose(ptr noundef %i.id)     ; 0 uses
  %i.ii = load ptr, ptr @loadtree.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.ii) #33
  %i.ij = load ptr, ptr @loadtree.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.ij) #33
  %i.ik = load ptr, ptr @loadtree.nametmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.ik) #33
  %i.il = load ptr, ptr @loadtree.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.il) #33
  store ptr null, ptr @loadtree.hist, align 8, !tbaa !89
  %i.im = load ptr, ptr @loadtree.ac, align 8, !tbaa !98
  call void @free(ptr noundef %i.im) #33
  store ptr null, ptr @loadtree.ac, align 8, !tbaa !98
  %i.in = load ptr, ptr @loadtree.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %i.in) #33
  store ptr null, ptr @loadtree.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %.0) #33
  call void @free(ptr noundef %.0170) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

declare ptr @AllocateIntVec(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

declare ptr @AllocateFloatVec(i32 noundef) local_unnamed_addr #13

declare ptr @AllocateCharVec(i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

declare void @FreeCharMtx(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local void @loadtop(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store float f0x3F666666, ptr @sueff1, align 4, !tbaa !21
  store float 5.000000e-02, ptr @sueff05, align 4, !tbaa !21
  %i.c = load i32, ptr @treemethod, align 4, !tbaa !4 ; 2 uses
  switch i32 %i.c, label %bb.d [
    i32 88, label %bb.e
    i32 69, label %bb.b
    i32 113, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.20, i32 noundef %i.c) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ @cluster_minimum_float, %bb.c ], [ @cluster_average_float, %bb.b ], [ @cluster_mix_float, %bb.a ]
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.h = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.g) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @loadtop.hist, align 8, !tbaa !89
  %.not211 = icmp eq ptr %i.i, null
  br i1 %.not211, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.j = load i32, ptr @njob, align 4, !tbaa !4
  %i.k = mul nsw i32 %i.j, 50
  %i.l = tail call ptr @AllocateCharVec(i32 noundef %i.k) #33
  store ptr %i.l, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.m = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.n = mul nsw i32 %i.m, 50
  %i.o = tail call ptr @AllocateCharMtx(i32 noundef %i.m, i32 noundef %i.n) #33
  store ptr %i.o, ptr @loadtop.tree, align 8, !tbaa !77
  %i.p = load i32, ptr @njob, align 4, !tbaa !4
  %i.q = tail call ptr @AllocateIntVec(i32 noundef %i.p) #33
  store ptr %i.q, ptr @loadtop.hist, align 8, !tbaa !89
  %i.r = load i32, ptr @njob, align 4, !tbaa !4
  %i.s = tail call ptr @AllocateFloatVec(i32 noundef %i.r) #33
  store ptr %i.s, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.t = load i32, ptr @njob, align 4, !tbaa !4
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.u, 24
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #34
  store ptr %i.w, ptr @loadtop.ac, align 8, !tbaa !98
  %i.x = load i32, ptr @njob, align 4, !tbaa !4
  %i.y = tail call ptr @AllocateIntVec(i32 noundef %i.x) #33
  store ptr %i.y, ptr @loadtop.nmemar, align 8, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = icmp sgt i32 %0, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge239.thread

.lr.ph.preheader:                                 ; preds = %bb.i
end_hunk_0
begin_hunk_1_@loadtop:bb.a
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %indvars.iv277.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = trunc nuw nsw i64 %indvars.iv277.epil.init to i32
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !109
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.unr-lcssa, %.lr.ph233.epil.preheader
  %.lcssa334 = phi ptr [ %i.ab, %.lr.ph238.unr-lcssa ], [ %i.be, %.lr.ph233.epil.preheader ]
  %i.bl = add nsw i32 %0, -1                      ; 2 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.lcssa334, i64 %i.bm
  store ptr null, ptr %i.bn, align 8, !tbaa !106
  %i.bo = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.bp = zext nneg i32 %0 to i64
  %i.bq = shl nuw nsw i64 %i.bp, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bo, i8 0, i64 %i.bq, i1 false), !tbaa !21
  %i.br = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 7 uses
  %i.bs = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count288 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.bt = ptrtoaddr ptr %i.bs to i64
  %i.bu = ptrtoaddr ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %diff.check = icmp ult i64 %i.bv, 32
  %or.cond330 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond330, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph238
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.bw, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.bx, align 4, !tbaa !4
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.bz, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge239, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph238, %middle.block
  %indvars.iv285.ph = phi i64 [ 0, %.lr.ph238 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter337 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  br i1 %lcmp.mod338.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv285.prol = phi i64 [ %indvars.iv.next286.prol, %scalar.ph.prol ], [ %indvars.iv285.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285.prol
  store i32 -1, ptr %i.cb, align 4, !tbaa !4
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285.prol
  store i32 1, ptr %i.cc, align 4, !tbaa !4
  %indvars.iv.next286.prol = add nuw nsw i64 %indvars.iv285.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter337
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !124

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %scalar.ph.preheader ], [ %indvars.iv.next286.prol, %scalar.ph.prol ]
  %i.cd = sub nsw i64 %indvars.iv285.ph, %wide.trip.count
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge239, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.3, %scalar.ph ], [ %indvars.iv285.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv285
  store i32 -1, ptr %i.cf, align 4, !tbaa !4
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv285
  store i32 1, ptr %i.cg, align 4, !tbaa !4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286
  store i32 -1, ptr %i.ch, align 4, !tbaa !4
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286
  store i32 1, ptr %i.ci, align 4, !tbaa !4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.1
  store i32 -1, ptr %i.cj, align 4, !tbaa !4
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.1
  store i32 1, ptr %i.ck, align 4, !tbaa !4
  %indvars.iv.next286.2 = add nuw nsw i64 %indvars.iv285, 3 ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next286.2
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next286.2
  store i32 1, ptr %i.cm, align 4, !tbaa !4
  %indvars.iv.next286.3 = add nuw nsw i64 %indvars.iv285, 4 ; 2 uses
  %exitcond289.not.3 = icmp eq i64 %indvars.iv.next286.3, %wide.trip.count288
  br i1 %exitcond289.not.3, label %._crit_edge239, label %scalar.ph, !llvm.loop !125

._crit_edge239:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.cn) ; 0 uses
  %.not323 = icmp eq i32 %0, 1
  br i1 %.not323, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %._crit_edge239
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count293 = zext nneg i32 %i.bl to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph271, %bb.ag
  %indvars.iv290 = phi i64 [ 0, %.lr.ph271 ], [ %indvars.iv.next291, %bb.ag ] ; 4 uses
  %i.cq = trunc nuw nsw i64 %indvars.iv290 to i32 ; 3 uses
  %i.cr = urem i32 %i.cq, 10
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.13, i32 noundef %i.cq, i32 noundef %0) #31 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.cv = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.f) ; 0 uses
  %i.cw = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.co) #33 ; 0 uses
  %i.cx = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.cy = add nsw i32 %i.cx, -1                   ; 7 uses
  store i32 %i.cy, ptr %i.a, align 4, !tbaa !4
  %i.cz = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
  %i.da = add nsw i32 %i.cz, -1                   ; 7 uses
  store i32 %i.da, ptr %i.cp, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.cx, %i.cz
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dc = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.db) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.l
  %i.dd = sext i32 %i.cy to i64                   ; 7 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !19
  %i.dg = sub nsw i32 %i.cz, %i.cx
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dh
  %i.dj = load float, ptr %i.di, align 4, !tbaa !21
  %i.dk = load float, ptr %i.b, align 8, !tbaa !21
  %i.dl = fcmp une float %i.dk, -1.000000e+00
  %i.dm = load float, ptr %i.co, align 4
  %i.dn = fcmp une float %i.dm, -1.000000e+00
  %or.cond = select i1 %i.dl, i1 true, i1 %i.dn
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %loadtreeoneline.exit
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dp = call i64 @fwrite(ptr nonnull @.str.22, i64 44, i64 1, ptr %i.do) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.o:                                             ; preds = %loadtreeoneline.exit
  %i.dq = load ptr, ptr @loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dd ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4  ; 2 uses
  %i.dt = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dd ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv290 ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !87
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !89
  %i.dz = add nsw i32 %i.dv, 1
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 2
  %i.ec = call ptr @realloc(ptr noundef %i.dy, i64 noundef %i.eb) #36 ; 5 uses
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !87 ; 2 uses
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !89
  %i.ee = icmp eq i32 %i.ds, -1
  br i1 %i.ee, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.cy, ptr %i.ec, align 4, !tbaa !4
  store i32 -1, ptr %i.ef, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.eg = sext i32 %i.ds to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eg
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !87 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !89 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !89 ; 3 uses
  %i.em = load i32, ptr %i.ej, align 4, !tbaa !4  ; 3 uses
  %i.en = load i32, ptr %i.el, align 4, !tbaa !4  ; 3 uses
  %i.eo = icmp sgt i32 %i.em, %i.en               ; 2 uses
  %4 = call i32 @llvm.smin.i32(i32 %i.em, i32 %i.en) ; 2 uses
  %i.ep = call i32 @llvm.smax.i32(i32 %i.em, i32 %i.en)
  %.222 = select i1 %i.eo, ptr %i.ej, ptr %i.el   ; 2 uses
  %.not212240 = icmp eq i32 %4, -1
  br i1 %.not212240, label %.preheader228, label %.lr.ph244.preheader

.lr.ph244.preheader:                              ; preds = %bb.q
  %. = select i1 %i.eo, ptr %i.el, ptr %i.ej
  br label %.lr.ph244

.preheader228.loopexit:                           ; preds = %.lr.ph244
  %.pre = load i32, ptr %.222, align 4, !tbaa !4
  br label %.preheader228

.preheader228:                                    ; preds = %.preheader228.loopexit, %bb.q
  %i.eq = phi i32 [ %i.ep, %bb.q ], [ %.pre, %.preheader228.loopexit ] ; 2 uses
  %.0193.lcssa = phi ptr [ %i.ec, %bb.q ], [ %i.et, %.preheader228.loopexit ] ; 2 uses
  %.not213245 = icmp eq i32 %i.eq, -1
  br i1 %.not213245, label %._crit_edge249, label %.lr.ph248

.lr.ph244:                                        ; preds = %.lr.ph244.preheader, %.lr.ph244
  %i.er = phi i32 [ %i.eu, %.lr.ph244 ], [ %4, %.lr.ph244.preheader ]
  %.0189242 = phi ptr [ %i.es, %.lr.ph244 ], [ %., %.lr.ph244.preheader ]
  %.0193241 = phi ptr [ %i.et, %.lr.ph244 ], [ %i.ec, %.lr.ph244.preheader ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.0189242, i64 4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0193241, i64 4 ; 2 uses
  store i32 %i.er, ptr %.0193241, align 4, !tbaa !4
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !4  ; 2 uses
  %.not212 = icmp eq i32 %i.eu, -1
  br i1 %.not212, label %.preheader228.loopexit, label %.lr.ph244, !llvm.loop !126

.lr.ph248:                                        ; preds = %.preheader228, %.lr.ph248
  %i.ev = phi i32 [ %i.ey, %.lr.ph248 ], [ %i.eq, %.preheader228 ]
  %.1190247 = phi ptr [ %i.ew, %.lr.ph248 ], [ %.222, %.preheader228 ]
  %.1194246 = phi ptr [ %i.ex, %.lr.ph248 ], [ %.0193.lcssa, %.preheader228 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1190247, i64 4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1194246, i64 4 ; 2 uses
  store i32 %i.ev, ptr %.1194246, align 4, !tbaa !4
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !4  ; 2 uses
  %.not213 = icmp eq i32 %i.ey, -1
  br i1 %.not213, label %._crit_edge249, label %.lr.ph248, !llvm.loop !127

._crit_edge249:                                   ; preds = %.lr.ph248, %.preheader228
  %.1194.lcssa = phi ptr [ %.0193.lcssa, %.preheader228 ], [ %i.ex, %.lr.ph248 ]
  store i32 -1, ptr %.1194.lcssa, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge249, %bb.p
  %i.ez = sext i32 %i.da to i64                   ; 6 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4  ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ez
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fg = add nsw i32 %i.fd, 1
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 2
  %i.fj = call ptr @realloc(ptr noundef %i.ff, i64 noundef %i.fi) #36 ; 6 uses
  %i.fk = load ptr, ptr %i.dw, align 8, !tbaa !87
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !89
  %.not214 = icmp eq ptr %i.fj, null
  br i1 %.not214, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fm = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fn = call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.fm) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.fo = icmp eq i32 %i.fb, -1
  br i1 %i.fo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 %i.da, ptr %i.fj, align 4, !tbaa !4
  store i32 -1, ptr %i.fp, align 4, !tbaa !4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fq = sext i32 %i.fb to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !87 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !89 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !89 ; 3 uses
  %i.fw = load i32, ptr %i.ft, align 4, !tbaa !4  ; 3 uses
  %i.fx = load i32, ptr %i.fv, align 4, !tbaa !4  ; 3 uses
  %i.fy = icmp sgt i32 %i.fw, %i.fx               ; 2 uses
  %5 = call i32 @llvm.smin.i32(i32 %i.fw, i32 %i.fx) ; 2 uses
  %i.fz = call i32 @llvm.smax.i32(i32 %i.fw, i32 %i.fx)
  %.224 = select i1 %i.fy, ptr %i.ft, ptr %i.fv   ; 2 uses
  %.not215251 = icmp eq i32 %5, -1
  br i1 %.not215251, label %.preheader, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.v
  %.223 = select i1 %i.fy, ptr %i.fv, ptr %i.ft
  br label %.lr.ph255

.preheader.loopexit:                              ; preds = %.lr.ph255
  %.pre296 = load i32, ptr %.224, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.v
  %i.ga = phi i32 [ %i.fz, %bb.v ], [ %.pre296, %.preheader.loopexit ] ; 2 uses
  %.2195.lcssa = phi ptr [ %i.fj, %bb.v ], [ %i.gd, %.preheader.loopexit ] ; 2 uses
  %.not216257 = icmp eq i32 %i.ga, -1
  br i1 %.not216257, label %._crit_edge261, label %.lr.ph260

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %i.gb = phi i32 [ %i.ge, %.lr.ph255 ], [ %5, %.lr.ph255.preheader ]
  %.2191253 = phi ptr [ %i.gc, %.lr.ph255 ], [ %.223, %.lr.ph255.preheader ]
  %.2195252 = phi ptr [ %i.gd, %.lr.ph255 ], [ %i.fj, %.lr.ph255.preheader ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.2191253, i64 4 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.2195252, i64 4 ; 2 uses
  store i32 %i.gb, ptr %.2195252, align 4, !tbaa !4
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !4  ; 2 uses
  %.not215 = icmp eq i32 %i.ge, -1
  br i1 %.not215, label %.preheader.loopexit, label %.lr.ph255, !llvm.loop !128

.lr.ph260:                                        ; preds = %.preheader, %.lr.ph260
  %i.gf = phi i32 [ %i.gi, %.lr.ph260 ], [ %i.ga, %.preheader ]
  %.3192259 = phi ptr [ %i.gg, %.lr.ph260 ], [ %.224, %.preheader ]
  %.3196258 = phi ptr [ %i.gh, %.lr.ph260 ], [ %.2195.lcssa, %.preheader ] ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.3192259, i64 4 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.3196258, i64 4 ; 2 uses
  store i32 %i.gf, ptr %.3196258, align 4, !tbaa !4
  %i.gi = load i32, ptr %i.gg, align 4, !tbaa !4  ; 2 uses
  %.not216 = icmp eq i32 %i.gi, -1
  br i1 %.not216, label %._crit_edge261, label %.lr.ph260, !llvm.loop !129

._crit_edge261:                                   ; preds = %.lr.ph260, %.preheader
  %.3196.lcssa = phi ptr [ %.2195.lcssa, %.preheader ], [ %i.gh, %.lr.ph260 ]
  store i32 -1, ptr %.3196.lcssa, align 4, !tbaa !4
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge261, %bb.u
  %i.gj = fmul float %i.dj, 5.000000e-01          ; 3 uses
  %i.gk = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19 ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.dd ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !21
  %i.gn = fsub float %i.gj, %i.gm                 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv290 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !19 ; 4 uses
  store float %i.gn, ptr %i.gp, align 4, !tbaa !21
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.ez
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !21
  %i.gs = fsub float %i.gj, %i.gr                 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 2 uses
  store float %i.gs, ptr %i.gt, align 4, !tbaa !21
  %i.gu = fcmp olt float %i.gn, 0.000000e+00
  br i1 %i.gu, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store float 0.000000e+00, ptr %i.gp, align 4, !tbaa !21
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.gv = fcmp olt float %i.gs, 0.000000e+00
  br i1 %i.gv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store float 0.000000e+00, ptr %i.gt, align 4, !tbaa !21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store float %i.gj, ptr %i.gl, align 4, !tbaa !21
  store i32 %i.cq, ptr %i.dr, align 4, !tbaa !4
  %i.gw = add nsw i32 %i.fd, %i.dv
  store i32 %i.gw, ptr %i.du, align 4, !tbaa !4
  %.0184263 = load ptr, ptr @loadtop.ac, align 8, !tbaa !98 ; 2 uses
  %.not217264 = icmp eq ptr %.0184263, null
  br i1 %.not217264, label %._crit_edge268, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.aa, %bb.ae
  %.0184265 = phi ptr [ %.0184, %bb.ae ], [ %.0184263, %bb.aa ] ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.0184265, i64 16
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !109 ; 9 uses
  %.not219 = icmp eq i32 %i.gy, %i.cy
  %.not220 = icmp eq i32 %i.gy, %i.da
  %or.cond225 = or i1 %.not219, %.not220
  br i1 %or.cond225, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph267
  %i.gz = icmp slt i32 %i.gy, %i.cy
  br i1 %i.gz, label %._crit_edge298, label %bb.ac

._crit_edge298:                                   ; preds = %bb.ab
  %.pre299 = sext i32 %i.gy to i64                ; 2 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.226 = call i32 @llvm.smax.i32(i32 %i.gy, i32 %i.da)
  %.227 = call i32 @llvm.smin.i32(i32 %i.gy, i32 %i.da) ; 2 uses
  %.pre300 = sext i32 %.227 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge298, %bb.ac
  %.pre-phi301 = phi i64 [ %.pre299, %._crit_edge298 ], [ %.pre300, %bb.ac ]
  %.pre-phi = phi i64 [ %.pre299, %._crit_edge298 ], [ %i.dd, %bb.ac ]
  %.0188 = phi i32 [ %i.da, %._crit_edge298 ], [ %.226, %bb.ac ]
  %.0187 = phi i32 [ %i.gy, %._crit_edge298 ], [ %.227, %bb.ac ]
  %.0186 = phi i32 [ %i.cy, %._crit_edge298 ], [ %i.gy, %bb.ac ]
  %.0185 = phi i32 [ %i.gy, %._crit_edge298 ], [ %i.cy, %bb.ac ]
  %i.ha = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !19
  %i.hc = sub nsw i32 %.0186, %.0185
  %i.hd = sext i32 %i.hc to i64                   ; 2 uses
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hd
  %i.hf = load float, ptr %i.he, align 4, !tbaa !21
  %i.hg = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi301
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !19
  %i.hi = sub nsw i32 %.0188, %.0187
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !21
  %i.hm = call float %.sroa.0.0(float noundef %i.hf, float noundef %i.hl) #33, !callees !130
  %i.hn = load ptr, ptr %i.ha, align 8, !tbaa !19
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.hn, i64 %i.hd
  store float %i.hm, ptr %i.ho, align 4, !tbaa !21
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph267, %bb.ad
  %.0184 = load ptr, ptr %.0184265, align 8, !tbaa !98 ; 2 uses
  %.not217 = icmp eq ptr %.0184, null
  br i1 %.not217, label %._crit_edge268.loopexit, label %.lr.ph267, !llvm.loop !131

._crit_edge268.loopexit:                          ; preds = %bb.ae
  %.pre297 = load ptr, ptr %i.go, align 8, !tbaa !19
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %._crit_edge268.loopexit, %bb.aa
  %i.hp = phi ptr [ %.pre297, %._crit_edge268.loopexit ], [ %i.gp, %bb.aa ] ; 2 uses
  %i.hq = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.hr = load ptr, ptr @loadtop.tree, align 8, !tbaa !77 ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.dd
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !12
  %i.hu = load float, ptr %i.hp, align 4, !tbaa !21
  %i.hv = fpext float %i.hu to double
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.ez
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !12
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !21
  %i.ia = fpext float %i.hz to double
  %i.ib = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hq, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.ht, double noundef %i.hv, ptr noundef %i.hx, double noundef %i.ia) #33 ; 0 uses
  %i.ic = load ptr, ptr @loadtop.tree, align 8, !tbaa !77
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %i.dd
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !12
  %i.if = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.ig = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ie, ptr noundef nonnull dereferenceable(1) %i.if) #33 ; 0 uses
  %i.ih = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  %i.ii = getelementptr inbounds [24 x i8], ptr %i.ih, i64 %i.ez ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !108 ; 2 uses
  %i.il = load ptr, ptr %i.ii, align 8, !tbaa !106 ; 3 uses
  store ptr %i.il, ptr %i.ik, align 8, !tbaa !106
  %.not218 = icmp eq ptr %i.il, null
  br i1 %.not218, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %._crit_edge268
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  store ptr %i.ik, ptr %i.im, align 8, !tbaa !108
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge268
  %i.in = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ez ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !19
  call void @free(ptr noundef %i.io) #33
  store ptr null, ptr %i.in, align 8, !tbaa !19
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge272, label %bb.j, !llvm.loop !132

._crit_edge272:                                   ; preds = %bb.ag, %._crit_edge239.thread, %._crit_edge239
  %i.ip = call i32 @fclose(ptr noundef nonnull %i.f) ; 0 uses
  %i.iq = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 3 uses
  %i.ir = load ptr, ptr @loadtop.treetmp, align 8, !tbaa !12
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.4, ptr noundef %i.ir) #33 ; 0 uses
  %i.it = call i64 @fwrite(ptr nonnull @.str.23, i64 11, i64 1, ptr %i.iq) ; 0 uses
  %i.iu = call i32 @fclose(ptr noundef %i.iq)     ; 0 uses
  %i.iv = load ptr, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  call void @free(ptr noundef %i.iv) #33
  store ptr null, ptr @loadtop.tmptmplen, align 8, !tbaa !19
  %i.iw = load ptr, ptr @loadtop.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.iw) #33
  store ptr null, ptr @loadtop.hist, align 8, !tbaa !89
  %i.ix = load ptr, ptr @loadtop.ac, align 8, !tbaa !98
  call void @free(ptr noundef %i.ix) #33
  store ptr null, ptr @loadtop.ac, align 8, !tbaa !98
  %i.iy = load ptr, ptr @loadtop.nmemar, align 8, !tbaa !89
  call void @free(ptr noundef %i.iy) #33
  store ptr null, ptr @loadtop.nmemar, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal float @cluster_mix_float(float noundef %0, float noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = fcmp olt float %0, %1
  %i.b = select i1 %i.a, float %0, float %1
  %i.c = load float, ptr @sueff1, align 4, !tbaa !21
  %i.d = fadd float %0, %1
  %i.e = load float, ptr @sueff05, align 4, !tbaa !21
  %i.f = fmul float %i.d, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.b, float %i.c, float %i.f)
  ret float %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
end_hunk_1
begin_hunk_2_@fixed_musclesupg_float_realloc_nobk_halfmtx_treeout:bb.a
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !21 ; 3 uses
  %i.do = fcmp olt float %i.dn, %i.dd
  br i1 %i.do, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store float %i.dn, ptr %i.cm, align 4, !tbaa !21
  store i32 %i.df, ptr %i.cn, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dp = phi float [ %i.dd, %bb.n ], [ %i.dn, %bb.o ]
  %i.dq = load ptr, ptr %.141.i, align 8, !tbaa !106 ; 2 uses
  %.not35.i = icmp eq ptr %i.dq, null
  br i1 %.not35.i, label %setnearest.exit, label %.lr.ph42.i, !llvm.loop !137

setnearest.exit:                                  ; preds = %.lr.ph42.i, %bb.p, %.preheader.i
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %exitcond410.not = icmp eq i64 %indvars.iv.next407, %wide.trip.count409
  br i1 %exitcond410.not, label %.lr.ph338, label %bb.j, !llvm.loop !138

.lr.ph338:                                        ; preds = %setnearest.exit
  %i.dr = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19
  %i.ds = zext nneg i32 %0 to i64
  %i.dt = shl nuw nsw i64 %i.ds, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.dr, i8 0, i64 %i.dt, i1 false), !tbaa !21
  %i.du = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89 ; 7 uses
  %i.dv = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count417 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.dw = ptrtoaddr ptr %i.dv to i64
  %i.dx = ptrtoaddr ptr %i.du to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %diff.check = icmp ult i64 %i.dy, 32
  %or.cond477 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond477, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph338
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.dz, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.ea, align 4, !tbaa !4
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <4 x i32> splat (i32 1), ptr %i.eb, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.ec, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ed = icmp eq i64 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge339, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph338, %middle.block
  %indvars.iv414.ph = phi i64 [ 0, %.lr.ph338 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter486 = and i64 %wide.trip.count404, 3   ; 2 uses
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  br i1 %lcmp.mod487.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv414.prol = phi i64 [ %indvars.iv.next415.prol, %scalar.ph.prol ], [ %indvars.iv414.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv414.prol
  store i32 -1, ptr %i.ee, align 4, !tbaa !4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv414.prol
  store i32 1, ptr %i.ef, align 4, !tbaa !4
  %indvars.iv.next415.prol = add nuw nsw i64 %indvars.iv414.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter486
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !140

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv414.unr = phi i64 [ %indvars.iv414.ph, %scalar.ph.preheader ], [ %indvars.iv.next415.prol, %scalar.ph.prol ]
  %i.eg = sub nsw i64 %indvars.iv414.ph, %wide.trip.count404
  %i.eh = icmp ugt i64 %i.eg, -4
  br i1 %i.eh, label %._crit_edge339, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv414 = phi i64 [ %indvars.iv.next415.3, %scalar.ph ], [ %indvars.iv414.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv414
  store i32 -1, ptr %i.ei, align 4, !tbaa !4
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv414
  store i32 1, ptr %i.ej, align 4, !tbaa !4
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415
  store i32 -1, ptr %i.ek, align 4, !tbaa !4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415
  store i32 1, ptr %i.el, align 4, !tbaa !4
  %indvars.iv.next415.1 = add nuw nsw i64 %indvars.iv414, 2 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415.1
  store i32 -1, ptr %i.em, align 4, !tbaa !4
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415.1
  store i32 1, ptr %i.en, align 4, !tbaa !4
  %indvars.iv.next415.2 = add nuw nsw i64 %indvars.iv414, 3 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next415.2
  store i32 -1, ptr %i.eo, align 4, !tbaa !4
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv.next415.2
  store i32 1, ptr %i.ep, align 4, !tbaa !4
  %indvars.iv.next415.3 = add nuw nsw i64 %indvars.iv414, 4 ; 2 uses
  %exitcond418.not.3 = icmp eq i64 %indvars.iv.next415.3, %wide.trip.count417
  br i1 %exitcond418.not.3, label %._crit_edge339, label %scalar.ph, !llvm.loop !141

._crit_edge339:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.eq) ; 0 uses
  %.not468 = icmp eq i32 %0, 1
  br i1 %.not468, label %._crit_edge389, label %.lr.ph388.preheader

.lr.ph388.preheader:                              ; preds = %._crit_edge339
  %wide.trip.count422 = zext nneg i32 %i.ci to i64
  br label %.lr.ph388

.lr.ph388:                                        ; preds = %.lr.ph388.preheader, %._crit_edge384
  %indvars.iv419 = phi i64 [ 0, %.lr.ph388.preheader ], [ %indvars.iv.next420, %._crit_edge384 ] ; 4 uses
  %.0260385 = phi i32 [ -1, %.lr.ph388.preheader ], [ %spec.select, %._crit_edge384 ] ; 2 uses
  %i.er = trunc nuw nsw i64 %indvars.iv419 to i32 ; 3 uses
  %i.es = urem i32 %i.er, 10
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph388
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.ev = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.13, i32 noundef %i.er, i32 noundef %0) #31 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph388
  %.0254340 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 2 uses
  %i.ew = load ptr, ptr %.0254340, align 8, !tbaa !106 ; 2 uses
  %.not290341 = icmp eq ptr %i.ew, null
  br i1 %.not290341, label %._crit_edge347, label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.r, %.lr.ph346
  %.0254 = phi ptr [ %i.fd, %.lr.ph346 ], [ %i.ew, %bb.r ] ; 2 uses
  %.0254344 = phi ptr [ %.0254, %.lr.ph346 ], [ %.0254340, %bb.r ]
  %.0245343 = phi float [ %.1246, %.lr.ph346 ], [ 9.999000e+02, %bb.r ] ; 2 uses
  %.1261342 = phi i32 [ %.2262, %.lr.ph346 ], [ %.0260385, %bb.r ]
  %i.ex = getelementptr inbounds nuw i8, ptr %.0254344, i64 16
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !109 ; 2 uses
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.0243, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !21 ; 2 uses
  %i.fc = fcmp olt float %i.fb, %.0245343         ; 2 uses
  %.2262 = select i1 %i.fc, i32 %i.ey, i32 %.1261342 ; 2 uses
  %.1246 = select i1 %i.fc, float %i.fb, float %.0245343 ; 2 uses
  %i.fd = load ptr, ptr %.0254, align 8, !tbaa !106 ; 2 uses
  %.not290 = icmp eq ptr %i.fd, null
  br i1 %.not290, label %._crit_edge347.loopexit, label %.lr.ph346, !llvm.loop !142

._crit_edge347.loopexit:                          ; preds = %.lr.ph346
  %i.fe = fmul float %.1246, 5.000000e-01
  br label %._crit_edge347

._crit_edge347:                                   ; preds = %._crit_edge347.loopexit, %bb.r
  %.1261.lcssa = phi i32 [ %.0260385, %bb.r ], [ %.2262, %._crit_edge347.loopexit ] ; 3 uses
  %.0245.lcssa = phi float [ 4.999500e+02, %bb.r ], [ %i.fe, %._crit_edge347.loopexit ] ; 3 uses
  %i.ff = sext i32 %.1261.lcssa to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.0244, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !4  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.fh, i32 %.1261.lcssa) ; 10 uses
  %spec.select302 = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 %.1261.lcssa) ; 7 uses
  %i.fi = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.hist, align 8, !tbaa !89 ; 2 uses
  %i.fj = sext i32 %spec.select to i64            ; 8 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 2 uses
  %i.fm = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fj ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4  ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv419 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !87
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !89
  %i.fs = add nsw i32 %i.fo, 1
  %i.ft = sext i32 %i.fs to i64
  %i.fu = shl nsw i64 %i.ft, 2
  %i.fv = tail call ptr @realloc(ptr noundef %i.fr, i64 noundef %i.fu) #36 ; 5 uses
  %i.fw = load ptr, ptr %i.fp, align 8, !tbaa !87 ; 2 uses
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !89
  %i.fx = icmp eq i32 %i.fl, -1
  br i1 %i.fx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge347
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  store i32 %spec.select, ptr %i.fv, align 4, !tbaa !4
  store i32 -1, ptr %i.fy, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge347
  %i.fz = sext i32 %i.fl to i64
  %i.ga = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fz
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !87 ; 2 uses
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !89 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !89 ; 3 uses
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !4  ; 3 uses
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !4  ; 3 uses
  %i.gh = icmp sgt i32 %i.gf, %i.gg               ; 2 uses
  %6 = tail call i32 @llvm.smin.i32(i32 %i.gf, i32 %i.gg) ; 2 uses
  %i.gi = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %i.gg)
  %.303 = select i1 %i.gh, ptr %i.gc, ptr %i.ge   ; 2 uses
  %.not291349 = icmp eq i32 %6, -1
  br i1 %.not291349, label %.preheader320, label %.lr.ph353.preheader

.lr.ph353.preheader:                              ; preds = %bb.t
  %. = select i1 %i.gh, ptr %i.ge, ptr %i.gc
  br label %.lr.ph353

.preheader320.loopexit:                           ; preds = %.lr.ph353
  %.pre = load i32, ptr %.303, align 4, !tbaa !4
  br label %.preheader320

.preheader320:                                    ; preds = %.preheader320.loopexit, %bb.t
  %i.gj = phi i32 [ %i.gi, %bb.t ], [ %.pre, %.preheader320.loopexit ] ; 2 uses
  %.0266.lcssa = phi ptr [ %i.fv, %bb.t ], [ %i.gm, %.preheader320.loopexit ] ; 2 uses
  %.not292355 = icmp eq i32 %i.gj, -1
  br i1 %.not292355, label %._crit_edge359, label %.lr.ph358

.lr.ph353:                                        ; preds = %.lr.ph353.preheader, %.lr.ph353
  %i.gk = phi i32 [ %i.gn, %.lr.ph353 ], [ %6, %.lr.ph353.preheader ]
  %.0266351 = phi ptr [ %i.gm, %.lr.ph353 ], [ %i.fv, %.lr.ph353.preheader ] ; 2 uses
  %.0270350 = phi ptr [ %i.gl, %.lr.ph353 ], [ %., %.lr.ph353.preheader ]
  %i.gl = getelementptr inbounds nuw i8, ptr %.0270350, i64 4 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0266351, i64 4 ; 2 uses
  store i32 %i.gk, ptr %.0266351, align 4, !tbaa !4
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !4  ; 2 uses
  %.not291 = icmp eq i32 %i.gn, -1
  br i1 %.not291, label %.preheader320.loopexit, label %.lr.ph353, !llvm.loop !143

.lr.ph358:                                        ; preds = %.preheader320, %.lr.ph358
  %i.go = phi i32 [ %i.gr, %.lr.ph358 ], [ %i.gj, %.preheader320 ]
  %.1267357 = phi ptr [ %i.gq, %.lr.ph358 ], [ %.0266.lcssa, %.preheader320 ] ; 2 uses
  %.1271356 = phi ptr [ %i.gp, %.lr.ph358 ], [ %.303, %.preheader320 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.1271356, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1267357, i64 4 ; 2 uses
  store i32 %i.go, ptr %.1267357, align 4, !tbaa !4
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !4  ; 2 uses
  %.not292 = icmp eq i32 %i.gr, -1
  br i1 %.not292, label %._crit_edge359, label %.lr.ph358, !llvm.loop !144

._crit_edge359:                                   ; preds = %.lr.ph358, %.preheader320
  %.1267.lcssa = phi ptr [ %.0266.lcssa, %.preheader320 ], [ %i.gq, %.lr.ph358 ]
  store i32 -1, ptr %.1267.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge359, %bb.s
  %i.gs = sext i32 %spec.select302 to i64         ; 6 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !4  ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.gs
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4  ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !89
  %i.gz = add nsw i32 %i.gw, 1
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = tail call ptr @realloc(ptr noundef %i.gy, i64 noundef %i.hb) #36 ; 6 uses
  %i.hd = load ptr, ptr %i.fp, align 8, !tbaa !87
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  store ptr %i.hc, ptr %i.he, align 8, !tbaa !89
  %.not293 = icmp eq ptr %i.hc, null
  br i1 %.not293, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.hg = tail call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.hf) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.hh = icmp eq i32 %i.gu, -1
  br i1 %i.hh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 %spec.select302, ptr %i.hc, align 4, !tbaa !4
  store i32 -1, ptr %i.hi, align 4, !tbaa !4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.hj = sext i32 %i.gu to i64
  %i.hk = getelementptr inbounds [8 x i8], ptr %2, i64 %i.hj
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !87 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !89 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !89 ; 3 uses
  %i.hp = load i32, ptr %i.hm, align 4, !tbaa !4  ; 3 uses
  %i.hq = load i32, ptr %i.ho, align 4, !tbaa !4  ; 3 uses
  %i.hr = icmp sgt i32 %i.hp, %i.hq               ; 2 uses
  %7 = tail call i32 @llvm.smin.i32(i32 %i.hp, i32 %i.hq) ; 2 uses
  %i.hs = tail call i32 @llvm.smax.i32(i32 %i.hp, i32 %i.hq)
  %.305 = select i1 %i.hr, ptr %i.hm, ptr %i.ho   ; 2 uses
  %.not294361 = icmp eq i32 %7, -1
  br i1 %.not294361, label %.preheader, label %.lr.ph365.preheader

.lr.ph365.preheader:                              ; preds = %bb.y
  %.304 = select i1 %i.hr, ptr %i.ho, ptr %i.hm
  br label %.lr.ph365

.preheader.loopexit:                              ; preds = %.lr.ph365
  %.pre426 = load i32, ptr %.305, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.y
  %i.ht = phi i32 [ %i.hs, %bb.y ], [ %.pre426, %.preheader.loopexit ] ; 2 uses
  %.2268.lcssa = phi ptr [ %i.hc, %bb.y ], [ %i.hw, %.preheader.loopexit ] ; 2 uses
  %.not295367 = icmp eq i32 %i.ht, -1
  br i1 %.not295367, label %._crit_edge371, label %.lr.ph370

.lr.ph365:                                        ; preds = %.lr.ph365.preheader, %.lr.ph365
  %i.hu = phi i32 [ %i.hx, %.lr.ph365 ], [ %7, %.lr.ph365.preheader ]
  %.2268363 = phi ptr [ %i.hw, %.lr.ph365 ], [ %i.hc, %.lr.ph365.preheader ] ; 2 uses
  %.2272362 = phi ptr [ %i.hv, %.lr.ph365 ], [ %.304, %.lr.ph365.preheader ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.2272362, i64 4 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.2268363, i64 4 ; 2 uses
  store i32 %i.hu, ptr %.2268363, align 4, !tbaa !4
  %i.hx = load i32, ptr %i.hv, align 4, !tbaa !4  ; 2 uses
  %.not294 = icmp eq i32 %i.hx, -1
  br i1 %.not294, label %.preheader.loopexit, label %.lr.ph365, !llvm.loop !145

.lr.ph370:                                        ; preds = %.preheader, %.lr.ph370
  %i.hy = phi i32 [ %i.ib, %.lr.ph370 ], [ %i.ht, %.preheader ]
  %.3269369 = phi ptr [ %i.ia, %.lr.ph370 ], [ %.2268.lcssa, %.preheader ] ; 2 uses
  %.3273368 = phi ptr [ %i.hz, %.lr.ph370 ], [ %.305, %.preheader ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.3273368, i64 4 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.3269369, i64 4 ; 2 uses
  store i32 %i.hy, ptr %.3269369, align 4, !tbaa !4
  %i.ib = load i32, ptr %i.hz, align 4, !tbaa !4  ; 2 uses
  %.not295 = icmp eq i32 %i.ib, -1
  br i1 %.not295, label %._crit_edge371, label %.lr.ph370, !llvm.loop !146

._crit_edge371:                                   ; preds = %.lr.ph370, %.preheader
  %.3269.lcssa = phi ptr [ %.2268.lcssa, %.preheader ], [ %i.ia, %.lr.ph370 ]
  store i32 -1, ptr %.3269.lcssa, align 4, !tbaa !4
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge371, %bb.x
  %i.ic = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tmptmplen, align 8, !tbaa !19 ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.fj ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !21
  %i.if = fsub float %.0245.lcssa, %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv419 ; 2 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !19 ; 3 uses
  store float %i.if, ptr %i.ih, align 4, !tbaa !21
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.gs
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !21
  %i.ik = fsub float %.0245.lcssa, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store float %i.ik, ptr %i.il, align 4, !tbaa !21
  store float %.0245.lcssa, ptr %i.id, align 4, !tbaa !21
  store i32 %i.er, ptr %i.fk, align 4, !tbaa !4
  %i.im = add nsw i32 %i.gw, %i.fo
  store i32 %i.im, ptr %i.fn, align 4, !tbaa !4
  %i.in = getelementptr inbounds [4 x i8], ptr %.0243, i64 %i.fj ; 3 uses
  store float 9.999000e+02, ptr %i.in, align 4, !tbaa !21
  %.1255373 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 2 uses
  %.not296374 = icmp eq ptr %.1255373, null
  br i1 %.not296374, label %._crit_edge378, label %.lr.ph377

.lr.ph377:                                        ; preds = %bb.z
  %i.io = getelementptr inbounds [4 x i8], ptr %.0244, i64 %i.fj
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph377, %bb.aj
  %.1255375 = phi ptr [ %.1255373, %.lr.ph377 ], [ %.1255, %bb.aj ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.1255375, i64 16
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !109 ; 11 uses
  %.not299 = icmp eq i32 %i.iq, %spec.select
  %.not300 = icmp eq i32 %i.iq, %spec.select302
  %or.cond = or i1 %.not299, %.not300
  br i1 %or.cond, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ir = icmp slt i32 %i.iq, %spec.select
  br i1 %i.ir, label %._crit_edge428, label %bb.ac

._crit_edge428:                                   ; preds = %bb.ab
  %.pre429 = sext i32 %i.iq to i64                ; 3 uses
  br label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %spec.select302. = tail call i32 @llvm.smax.i32(i32 %i.iq, i32 %spec.select302)
  %.spec.select302 = tail call i32 @llvm.smin.i32(i32 %i.iq, i32 %spec.select302) ; 2 uses
  %.pre430 = sext i32 %.spec.select302 to i64
  %.pre432 = sext i32 %i.iq to i64
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge428, %bb.ac
  %.pre-phi433 = phi i64 [ %.pre429, %._crit_edge428 ], [ %.pre432, %bb.ac ] ; 3 uses
  %.pre-phi431 = phi i64 [ %.pre429, %._crit_edge428 ], [ %.pre430, %bb.ac ]
  %.pre-phi = phi i64 [ %.pre429, %._crit_edge428 ], [ %i.fj, %bb.ac ]
  %.0265 = phi i32 [ %spec.select302, %._crit_edge428 ], [ %spec.select302., %bb.ac ]
  %.0264 = phi i32 [ %i.iq, %._crit_edge428 ], [ %.spec.select302, %bb.ac ]
  %.0258 = phi i32 [ %spec.select, %._crit_edge428 ], [ %i.iq, %bb.ac ]
  %.0257 = phi i32 [ %i.iq, %._crit_edge428 ], [ %spec.select, %bb.ac ]
  %i.is = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !19
  %i.iu = sub nsw i32 %.0258, %.0257
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !21
  %i.iy = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi431
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !19
  %i.ja = sub nsw i32 %.0265, %.0264
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %i.jb
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !21
  %i.je = tail call float %.sroa.0.0(float noundef %i.ix, float noundef %i.jd) #33, !callees !130 ; 5 uses
  %i.jf = load ptr, ptr %i.is, align 8, !tbaa !19
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.iv
  store float %i.je, ptr %i.jg, align 4, !tbaa !21
  %i.jh = getelementptr inbounds [4 x i8], ptr %.0243, i64 %.pre-phi433 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !21
  %i.jj = fcmp olt float %i.je, %i.ji
  br i1 %i.jj, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store float %i.je, ptr %i.jh, align 4, !tbaa !21
  %i.jk = getelementptr inbounds [4 x i8], ptr %.0244, i64 %.pre-phi433
  store i32 %spec.select, ptr %i.jk, align 4, !tbaa !4
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jl = load float, ptr %i.in, align 4, !tbaa !21
  %i.jm = fcmp olt float %i.je, %i.jl
  br i1 %i.jm, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store float %i.je, ptr %i.in, align 4, !tbaa !21
  store i32 %i.iq, ptr %i.io, align 4, !tbaa !4
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.jn = getelementptr inbounds [4 x i8], ptr %.0244, i64 %.pre-phi433 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !4
  %i.jp = icmp eq i32 %i.jo, %spec.select302
  br i1 %i.jp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 %spec.select, ptr %i.jn, align 4, !tbaa !4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aa, %bb.ai, %bb.ah
  %.1255 = load ptr, ptr %.1255375, align 8, !tbaa !98 ; 2 uses
  %.not296 = icmp eq ptr %.1255, null
  br i1 %.not296, label %._crit_edge378.loopexit, label %bb.aa, !llvm.loop !147

._crit_edge378.loopexit:                          ; preds = %bb.aj
  %.pre427 = load ptr, ptr %i.ig, align 8, !tbaa !19
  br label %._crit_edge378

._crit_edge378:                                   ; preds = %._crit_edge378.loopexit, %bb.z
  %i.jq = phi ptr [ %.pre427, %._crit_edge378.loopexit ], [ %i.ih, %bb.z ] ; 2 uses
  %i.jr = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.js = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77 ; 2 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.fj
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !12
  %i.jv = load float, ptr %i.jq, align 4, !tbaa !21
  %i.jw = fpext float %i.jv to double
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.js, i64 %i.gs
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !12
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !21
  %i.kb = fpext float %i.ka to double
  %i.kc = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.jr, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.ju, double noundef %i.jw, ptr noundef %i.jy, double noundef %i.kb) #33 ; 0 uses
  %i.kd = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.tree, align 8, !tbaa !77
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.fj
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !12
  %i.kg = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.treetmp, align 8, !tbaa !12
  %i.kh = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.kf, ptr noundef nonnull dereferenceable(1) %i.kg) #33 ; 0 uses
  %i.ki = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98
  %i.kj = getelementptr inbounds [24 x i8], ptr %i.ki, i64 %i.gs ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !108 ; 2 uses
  %i.km = load ptr, ptr %i.kj, align 8, !tbaa !106 ; 3 uses
  store ptr %i.km, ptr %i.kl, align 8, !tbaa !106
  %.not297 = icmp eq ptr %i.km, null
  br i1 %.not297, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge378
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store ptr %i.kl, ptr %i.kn, align 8, !tbaa !108
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge378
  %i.ko = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gs ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.kp) #33
  store ptr null, ptr %i.ko, align 8, !tbaa !19
  %.2256379 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx_treeout.ac, align 8, !tbaa !98 ; 4 uses
  %.not298380 = icmp eq ptr %.2256379, null
  br i1 %.not298380, label %._crit_edge384, label %.lr.ph383

.lr.ph383:                                        ; preds = %bb.al, %setnearest.exit319
  %.2256381 = phi ptr [ %.2256, %setnearest.exit319 ], [ %.2256379, %bb.al ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.2256381, i64 16
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !109 ; 4 uses
  %i.ks = sext i32 %i.kr to i64                   ; 4 uses
  %i.kt = getelementptr inbounds [4 x i8], ptr %.0244, i64 %i.ks ; 4 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !4
  %i.kv = icmp eq i32 %i.ku, %spec.select
  br i1 %i.kv, label %bb.am, label %setnearest.exit319

bb.am:                                            ; preds = %.lr.ph383
  %i.kw = getelementptr inbounds [4 x i8], ptr %.0243, i64 %i.ks ; 3 uses
  store float 9.999000e+02, ptr %i.kw, align 4, !tbaa !21
  store i32 -1, ptr %i.kt, align 4, !tbaa !4
  %i.kx = getelementptr inbounds [24 x i8], ptr %.2256379, i64 %i.ks
  %.037.i306 = load ptr, ptr %i.kx, align 8, !tbaa !106 ; 2 uses
  %.not38.i307 = icmp eq ptr %.037.i306, null
  br i1 %.not38.i307, label %.lr.ph42.i315.preheader, label %.lr.ph.i308
end_hunk_2
begin_hunk_3_@fixed_musclesupg_float_realloc_nobk_halfmtx:bb.a
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !21 ; 3 uses
  %i.cf = fcmp olt float %i.ce, %i.bu
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %i.ce, ptr %i.bd, align 4, !tbaa !21
  store i32 %i.bw, ptr %i.be, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cg = phi float [ %i.bu, %bb.l ], [ %i.ce, %bb.m ]
  %i.ch = load ptr, ptr %.141.i, align 8, !tbaa !106 ; 2 uses
  %.not35.i = icmp eq ptr %i.ch, null
  br i1 %.not35.i, label %setnearest.exit, label %.lr.ph42.i, !llvm.loop !137

setnearest.exit:                                  ; preds = %.lr.ph42.i, %bb.n, %.preheader.i
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count363
  br i1 %exitcond364.not, label %.lr.ph302, label %bb.h, !llvm.loop !151

.lr.ph302:                                        ; preds = %setnearest.exit
  %i.ci = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19
  %i.cj = zext nneg i32 %0 to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ci, i8 0, i64 %i.ck, i1 false), !tbaa !21
  %i.cl = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89 ; 7 uses
  %i.cm = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89 ; 7 uses
  %wide.trip.count371 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  %i.cn = ptrtoaddr ptr %i.cm to i64
  %i.co = ptrtoaddr ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  %diff.check = icmp ult i64 %i.cp, 32
  %or.cond430 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond430, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph302
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.cq, align 4, !tbaa !4
  store <4 x i32> splat (i32 -1), ptr %i.cr, align 4, !tbaa !4
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> splat (i32 1), ptr %i.cs, align 4, !tbaa !4
  store <4 x i32> splat (i32 1), ptr %i.ct, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge303, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph302, %middle.block
  %indvars.iv368.ph = phi i64 [ 0, %.lr.ph302 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter439 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod440.not = icmp eq i64 %xtraiter439, 0
  br i1 %lcmp.mod440.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv368.prol = phi i64 [ %indvars.iv.next369.prol, %scalar.ph.prol ], [ %indvars.iv368.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv368.prol
  store i32 -1, ptr %i.cv, align 4, !tbaa !4
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv368.prol
  store i32 1, ptr %i.cw, align 4, !tbaa !4
  %indvars.iv.next369.prol = add nuw nsw i64 %indvars.iv368.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter439
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !153

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv368.unr = phi i64 [ %indvars.iv368.ph, %scalar.ph.preheader ], [ %indvars.iv.next369.prol, %scalar.ph.prol ]
  %i.cx = sub nsw i64 %indvars.iv368.ph, %wide.trip.count
  %i.cy = icmp ugt i64 %i.cx, -4
  br i1 %i.cy, label %._crit_edge303, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv368 = phi i64 [ %indvars.iv.next369.3, %scalar.ph ], [ %indvars.iv368.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv368
  store i32 -1, ptr %i.cz, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv368
  store i32 1, ptr %i.da, align 4, !tbaa !4
  %indvars.iv.next369 = add nuw nsw i64 %indvars.iv368, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369
  store i32 -1, ptr %i.db, align 4, !tbaa !4
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369
  store i32 1, ptr %i.dc, align 4, !tbaa !4
  %indvars.iv.next369.1 = add nuw nsw i64 %indvars.iv368, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369.1
  store i32 -1, ptr %i.dd, align 4, !tbaa !4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369.1
  store i32 1, ptr %i.de, align 4, !tbaa !4
  %indvars.iv.next369.2 = add nuw nsw i64 %indvars.iv368, 3 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next369.2
  store i32 -1, ptr %i.df, align 4, !tbaa !4
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next369.2
  store i32 1, ptr %i.dg, align 4, !tbaa !4
  %indvars.iv.next369.3 = add nuw nsw i64 %indvars.iv368, 4 ; 2 uses
  %exitcond372.not.3 = icmp eq i64 %indvars.iv.next369.3, %wide.trip.count371
  br i1 %exitcond372.not.3, label %._crit_edge303, label %scalar.ph, !llvm.loop !154

._crit_edge303:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.dh) ; 0 uses
  %.not421 = icmp eq i32 %0, 1
  br i1 %.not421, label %._crit_edge353, label %.lr.ph352.preheader

.lr.ph352.preheader:                              ; preds = %._crit_edge303
  %wide.trip.count376 = zext nneg i32 %i.az to i64
  br label %.lr.ph352

.lr.ph352:                                        ; preds = %.lr.ph352.preheader, %._crit_edge348
  %indvars.iv373 = phi i64 [ 0, %.lr.ph352.preheader ], [ %indvars.iv.next374, %._crit_edge348 ] ; 4 uses
  %.0231349 = phi i32 [ -1, %.lr.ph352.preheader ], [ %spec.select, %._crit_edge348 ] ; 2 uses
  %i.di = trunc nuw nsw i64 %indvars.iv373 to i32 ; 3 uses
  %i.dj = urem i32 %i.di, 10
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph352
  %i.dl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.dm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dl, ptr noundef nonnull @.str.13, i32 noundef %i.di, i32 noundef %0) #31 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph352
  %.0225304 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 2 uses
  %i.dn = load ptr, ptr %.0225304, align 8, !tbaa !106 ; 2 uses
  %.not261305 = icmp eq ptr %i.dn, null
  br i1 %.not261305, label %._crit_edge311, label %.lr.ph310

.lr.ph310:                                        ; preds = %bb.p, %.lr.ph310
  %.0225 = phi ptr [ %i.du, %.lr.ph310 ], [ %i.dn, %bb.p ] ; 2 uses
  %.0225308 = phi ptr [ %.0225, %.lr.ph310 ], [ %.0225304, %bb.p ]
  %.0217307 = phi float [ %.1, %.lr.ph310 ], [ 9.999000e+02, %bb.p ] ; 2 uses
  %.1232306 = phi i32 [ %.2233, %.lr.ph310 ], [ %.0231349, %bb.p ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0225308, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !109 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.dq
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !21 ; 2 uses
  %i.dt = fcmp olt float %i.ds, %.0217307         ; 2 uses
  %.2233 = select i1 %i.dt, i32 %i.dp, i32 %.1232306 ; 2 uses
  %.1 = select i1 %i.dt, float %i.ds, float %.0217307 ; 2 uses
  %i.du = load ptr, ptr %.0225, align 8, !tbaa !106 ; 2 uses
  %.not261 = icmp eq ptr %i.du, null
  br i1 %.not261, label %._crit_edge311.loopexit, label %.lr.ph310, !llvm.loop !155

._crit_edge311.loopexit:                          ; preds = %.lr.ph310
  %i.dv = fmul float %.1, 5.000000e-01
  br label %._crit_edge311

._crit_edge311:                                   ; preds = %._crit_edge311.loopexit, %bb.p
  %.1232.lcssa = phi i32 [ %.0231349, %bb.p ], [ %.2233, %._crit_edge311.loopexit ] ; 3 uses
  %.0217.lcssa = phi float [ 4.999500e+02, %bb.p ], [ %i.dv, %._crit_edge311.loopexit ] ; 3 uses
  %i.dw = sext i32 %.1232.lcssa to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.dy, i32 %.1232.lcssa) ; 10 uses
  %spec.select272 = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 %.1232.lcssa) ; 7 uses
  %i.dz = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.hist, align 8, !tbaa !89 ; 2 uses
  %i.ea = sext i32 %spec.select to i64            ; 6 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4  ; 2 uses
  %i.ed = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.nmemar, align 8, !tbaa !89 ; 2 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.ea ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv373 ; 3 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !87
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !89
  %i.ej = add nsw i32 %i.ef, 1
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 2
  %i.em = tail call ptr @realloc(ptr noundef %i.ei, i64 noundef %i.el) #36 ; 5 uses
  %i.en = load ptr, ptr %i.eg, align 8, !tbaa !87 ; 2 uses
  store ptr %i.em, ptr %i.en, align 8, !tbaa !89
  %i.eo = icmp eq i32 %i.ec, -1
  br i1 %i.eo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge311
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i32 %spec.select, ptr %i.em, align 4, !tbaa !4
  store i32 -1, ptr %i.ep, align 4, !tbaa !4
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge311
  %i.eq = sext i32 %i.ec to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !87 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !89 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !89 ; 3 uses
  %i.ew = load i32, ptr %i.et, align 4, !tbaa !4  ; 3 uses
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !4  ; 3 uses
  %i.ey = icmp sgt i32 %i.ew, %i.ex               ; 2 uses
  %4 = tail call i32 @llvm.smin.i32(i32 %i.ew, i32 %i.ex) ; 2 uses
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 %i.ex)
  %.273 = select i1 %i.ey, ptr %i.et, ptr %i.ev   ; 2 uses
  %.not262313 = icmp eq i32 %4, -1
  br i1 %.not262313, label %.preheader290, label %.lr.ph317.preheader

.lr.ph317.preheader:                              ; preds = %bb.r
  %. = select i1 %i.ey, ptr %i.ev, ptr %i.et
  br label %.lr.ph317

.preheader290.loopexit:                           ; preds = %.lr.ph317
  %.pre = load i32, ptr %.273, align 4, !tbaa !4
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.loopexit, %bb.r
  %i.fa = phi i32 [ %i.ez, %bb.r ], [ %.pre, %.preheader290.loopexit ] ; 2 uses
  %.0237.lcssa = phi ptr [ %i.em, %bb.r ], [ %i.fd, %.preheader290.loopexit ] ; 2 uses
  %.not263319 = icmp eq i32 %i.fa, -1
  br i1 %.not263319, label %._crit_edge323, label %.lr.ph322

.lr.ph317:                                        ; preds = %.lr.ph317.preheader, %.lr.ph317
  %i.fb = phi i32 [ %i.fe, %.lr.ph317 ], [ %4, %.lr.ph317.preheader ]
  %.0237315 = phi ptr [ %i.fd, %.lr.ph317 ], [ %i.em, %.lr.ph317.preheader ] ; 2 uses
  %.0241314 = phi ptr [ %i.fc, %.lr.ph317 ], [ %., %.lr.ph317.preheader ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0241314, i64 4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0237315, i64 4 ; 2 uses
  store i32 %i.fb, ptr %.0237315, align 4, !tbaa !4
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !4  ; 2 uses
  %.not262 = icmp eq i32 %i.fe, -1
  br i1 %.not262, label %.preheader290.loopexit, label %.lr.ph317, !llvm.loop !156

.lr.ph322:                                        ; preds = %.preheader290, %.lr.ph322
  %i.ff = phi i32 [ %i.fi, %.lr.ph322 ], [ %i.fa, %.preheader290 ]
  %.1238321 = phi ptr [ %i.fh, %.lr.ph322 ], [ %.0237.lcssa, %.preheader290 ] ; 2 uses
  %.1242320 = phi ptr [ %i.fg, %.lr.ph322 ], [ %.273, %.preheader290 ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.1242320, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.1238321, i64 4 ; 2 uses
  store i32 %i.ff, ptr %.1238321, align 4, !tbaa !4
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !4  ; 2 uses
  %.not263 = icmp eq i32 %i.fi, -1
  br i1 %.not263, label %._crit_edge323, label %.lr.ph322, !llvm.loop !157

._crit_edge323:                                   ; preds = %.lr.ph322, %.preheader290
  %.1238.lcssa = phi ptr [ %.0237.lcssa, %.preheader290 ], [ %i.fh, %.lr.ph322 ]
  store i32 -1, ptr %.1238.lcssa, align 4, !tbaa !4
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge323, %bb.q
  %i.fj = sext i32 %spec.select272 to i64         ; 5 uses
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fj
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !89
  %i.fq = add nsw i32 %i.fn, 1
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = tail call ptr @realloc(ptr noundef %i.fp, i64 noundef %i.fs) #36 ; 6 uses
  %i.fu = load ptr, ptr %i.eg, align 8, !tbaa !87
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.ft, ptr %i.fv, align 8, !tbaa !89
  %.not264 = icmp eq ptr %i.ft, null
  br i1 %.not264, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.fx = tail call i64 @fwrite(ptr nonnull @.str.15, i64 24, i64 1, ptr %i.fw) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.fy = icmp eq i32 %i.fl, -1
  br i1 %i.fy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store i32 %spec.select272, ptr %i.ft, align 4, !tbaa !4
  store i32 -1, ptr %i.fz, align 4, !tbaa !4
  br label %.lr.ph341

bb.w:                                             ; preds = %bb.u
  %i.ga = sext i32 %i.fl to i64
  %i.gb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !87 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !89 ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !89 ; 3 uses
  %i.gg = load i32, ptr %i.gd, align 4, !tbaa !4  ; 3 uses
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !4  ; 3 uses
  %i.gi = icmp sgt i32 %i.gg, %i.gh               ; 2 uses
  %5 = tail call i32 @llvm.smin.i32(i32 %i.gg, i32 %i.gh) ; 2 uses
  %i.gj = tail call i32 @llvm.smax.i32(i32 %i.gg, i32 %i.gh)
  %.275 = select i1 %i.gi, ptr %i.gd, ptr %i.gf   ; 2 uses
  %.not265325 = icmp eq i32 %5, -1
  br i1 %.not265325, label %.preheader, label %.lr.ph329.preheader

.lr.ph329.preheader:                              ; preds = %bb.w
  %.274 = select i1 %i.gi, ptr %i.gf, ptr %i.gd
  br label %.lr.ph329

.preheader.loopexit:                              ; preds = %.lr.ph329
  %.pre380 = load i32, ptr %.275, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.w
  %i.gk = phi i32 [ %i.gj, %bb.w ], [ %.pre380, %.preheader.loopexit ] ; 2 uses
  %.2239.lcssa = phi ptr [ %i.ft, %bb.w ], [ %i.gn, %.preheader.loopexit ] ; 2 uses
  %.not266331 = icmp eq i32 %i.gk, -1
  br i1 %.not266331, label %._crit_edge335, label %.lr.ph334

.lr.ph329:                                        ; preds = %.lr.ph329.preheader, %.lr.ph329
  %i.gl = phi i32 [ %i.go, %.lr.ph329 ], [ %5, %.lr.ph329.preheader ]
  %.2239327 = phi ptr [ %i.gn, %.lr.ph329 ], [ %i.ft, %.lr.ph329.preheader ] ; 2 uses
  %.2243326 = phi ptr [ %i.gm, %.lr.ph329 ], [ %.274, %.lr.ph329.preheader ]
  %i.gm = getelementptr inbounds nuw i8, ptr %.2243326, i64 4 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.2239327, i64 4 ; 2 uses
  store i32 %i.gl, ptr %.2239327, align 4, !tbaa !4
  %i.go = load i32, ptr %i.gm, align 4, !tbaa !4  ; 2 uses
  %.not265 = icmp eq i32 %i.go, -1
  br i1 %.not265, label %.preheader.loopexit, label %.lr.ph329, !llvm.loop !158

.lr.ph334:                                        ; preds = %.preheader, %.lr.ph334
  %i.gp = phi i32 [ %i.gs, %.lr.ph334 ], [ %i.gk, %.preheader ]
  %.3240333 = phi ptr [ %i.gr, %.lr.ph334 ], [ %.2239.lcssa, %.preheader ] ; 2 uses
  %.3244332 = phi ptr [ %i.gq, %.lr.ph334 ], [ %.275, %.preheader ]
  %i.gq = getelementptr inbounds nuw i8, ptr %.3244332, i64 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.3240333, i64 4 ; 2 uses
  store i32 %i.gp, ptr %.3240333, align 4, !tbaa !4
  %i.gs = load i32, ptr %i.gq, align 4, !tbaa !4  ; 2 uses
  %.not266 = icmp eq i32 %i.gs, -1
  br i1 %.not266, label %._crit_edge335, label %.lr.ph334, !llvm.loop !159

._crit_edge335:                                   ; preds = %.lr.ph334, %.preheader
  %.3240.lcssa = phi ptr [ %.2239.lcssa, %.preheader ], [ %i.gr, %.lr.ph334 ]
  store i32 -1, ptr %.3240.lcssa, align 4, !tbaa !4
  br label %.lr.ph341

.lr.ph341:                                        ; preds = %._crit_edge335, %bb.v
  %i.gt = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.tmptmplen, align 8, !tbaa !19 ; 2 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.ea ; 2 uses
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !21
  %i.gw = fsub float %.0217.lcssa, %i.gv
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv373
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !19 ; 2 uses
  store float %i.gw, ptr %i.gy, align 4, !tbaa !21
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gt, i64 %i.fj
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !21
  %i.hb = fsub float %.0217.lcssa, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  store float %i.hb, ptr %i.hc, align 4, !tbaa !21
  store float %.0217.lcssa, ptr %i.gu, align 4, !tbaa !21
  store i32 %i.di, ptr %i.eb, align 4, !tbaa !4
  %i.hd = add nsw i32 %i.fn, %i.ef
  store i32 %i.hd, ptr %i.ee, align 4, !tbaa !4
  %i.he = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.ea ; 3 uses
  store float 9.999000e+02, ptr %i.he, align 4, !tbaa !21
  %.1226337 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98, !nonnull !160, !noundef !160
  %i.hf = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.ea
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph341, %bb.ag
  %.1226339 = phi ptr [ %.1226337, %.lr.ph341 ], [ %.1226, %bb.ag ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.1226339, i64 16
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !109 ; 11 uses
  %.not270 = icmp eq i32 %i.hh, %spec.select
  %.not271 = icmp eq i32 %i.hh, %spec.select272
  %or.cond = or i1 %.not270, %.not271
  br i1 %or.cond, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = icmp slt i32 %i.hh, %spec.select
  br i1 %i.hi, label %._crit_edge382, label %bb.z

._crit_edge382:                                   ; preds = %bb.y
  %.pre383 = sext i32 %i.hh to i64                ; 3 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %spec.select272. = tail call i32 @llvm.smax.i32(i32 %i.hh, i32 %spec.select272)
  %.spec.select272 = tail call i32 @llvm.smin.i32(i32 %i.hh, i32 %spec.select272) ; 2 uses
  %.pre384 = sext i32 %.spec.select272 to i64
  %.pre386 = sext i32 %i.hh to i64
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge382, %bb.z
  %.pre-phi387 = phi i64 [ %.pre383, %._crit_edge382 ], [ %.pre386, %bb.z ] ; 3 uses
  %.pre-phi385 = phi i64 [ %.pre383, %._crit_edge382 ], [ %.pre384, %bb.z ]
  %.pre-phi = phi i64 [ %.pre383, %._crit_edge382 ], [ %i.ea, %bb.z ]
  %.0236 = phi i32 [ %spec.select272, %._crit_edge382 ], [ %spec.select272., %bb.z ]
  %.0235 = phi i32 [ %i.hh, %._crit_edge382 ], [ %.spec.select272, %bb.z ]
  %.0229 = phi i32 [ %spec.select, %._crit_edge382 ], [ %i.hh, %bb.z ]
  %.0228 = phi i32 [ %i.hh, %._crit_edge382 ], [ %spec.select, %bb.z ]
  %i.hj = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !19
  %i.hl = sub nsw i32 %.0229, %.0228
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.hk, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !21
  %i.hp = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi385
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !19
  %i.hr = sub nsw i32 %.0236, %.0235
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !21
  %i.hv = tail call float %.sroa.0.0(float noundef %i.ho, float noundef %i.hu) #33, !callees !130 ; 5 uses
  %i.hw = load ptr, ptr %i.hj, align 8, !tbaa !19
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hm
  store float %i.hv, ptr %i.hx, align 4, !tbaa !21
  %i.hy = getelementptr inbounds [4 x i8], ptr %.0, i64 %.pre-phi387 ; 2 uses
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !21
  %i.ia = fcmp olt float %i.hv, %i.hz
  br i1 %i.ia, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store float %i.hv, ptr %i.hy, align 4, !tbaa !21
  %i.ib = getelementptr inbounds [4 x i8], ptr %.0216, i64 %.pre-phi387
  store i32 %spec.select, ptr %i.ib, align 4, !tbaa !4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ic = load float, ptr %i.he, align 4, !tbaa !21
  %i.id = fcmp olt float %i.hv, %i.ic
  br i1 %i.id, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store float %i.hv, ptr %i.he, align 4, !tbaa !21
  store i32 %i.hh, ptr %i.hf, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ie = getelementptr inbounds [4 x i8], ptr %.0216, i64 %.pre-phi387 ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !4
  %i.ig = icmp eq i32 %i.if, %spec.select272
  br i1 %i.ig, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 %spec.select, ptr %i.ie, align 4, !tbaa !4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.x, %bb.af, %bb.ae
  %.1226 = load ptr, ptr %.1226339, align 8, !tbaa !98 ; 2 uses
  %.not267 = icmp eq ptr %.1226, null
  br i1 %.not267, label %._crit_edge342.loopexit, label %bb.x, !llvm.loop !161

._crit_edge342.loopexit:                          ; preds = %bb.ag
  %.pre381 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98
  %i.ih = getelementptr inbounds [24 x i8], ptr %.pre381, i64 %i.fj ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !108 ; 2 uses
  %i.ik = load ptr, ptr %i.ih, align 8, !tbaa !106 ; 3 uses
  store ptr %i.ik, ptr %i.ij, align 8, !tbaa !106
  %.not268 = icmp eq ptr %i.ik, null
  br i1 %.not268, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge342.loopexit
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store ptr %i.ij, ptr %i.il, align 8, !tbaa !108
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge342.loopexit
  %i.im = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fj ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.in) #33
  store ptr null, ptr %i.im, align 8, !tbaa !19
  %.2227343 = load ptr, ptr @fixed_musclesupg_float_realloc_nobk_halfmtx.ac, align 8, !tbaa !98 ; 4 uses
  %.not269344 = icmp eq ptr %.2227343, null
  br i1 %.not269344, label %._crit_edge348, label %.lr.ph347

.lr.ph347:                                        ; preds = %bb.ai, %setnearest.exit289
  %.2227345 = phi ptr [ %.2227, %setnearest.exit289 ], [ %.2227343, %bb.ai ] ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.2227345, i64 16
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !109 ; 4 uses
  %i.iq = sext i32 %i.ip to i64                   ; 4 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %.0216, i64 %i.iq ; 4 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %i.it = icmp eq i32 %i.is, %spec.select
  br i1 %i.it, label %bb.aj, label %setnearest.exit289

bb.aj:                                            ; preds = %.lr.ph347
  %i.iu = getelementptr inbounds [4 x i8], ptr %.0, i64 %i.iq ; 3 uses
  store float 9.999000e+02, ptr %i.iu, align 4, !tbaa !21
  store i32 -1, ptr %i.ir, align 4, !tbaa !4
  %i.iv = getelementptr inbounds [24 x i8], ptr %.2227343, i64 %i.iq
  %.037.i276 = load ptr, ptr %i.iv, align 8, !tbaa !106 ; 2 uses
  %.not38.i277 = icmp eq ptr %.037.i276, null
  br i1 %.not38.i277, label %.lr.ph42.i285.preheader, label %.lr.ph.i278

.lr.ph.i278:                                      ; preds = %bb.aj
  %i.iw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.iq
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.am, %.lr.ph.i278
  %i.iy = phi float [ 9.999000e+02, %.lr.ph.i278 ], [ %i.jg, %bb.am ] ; 2 uses
  %.039.i279 = phi ptr [ %.037.i276, %.lr.ph.i278 ], [ %.0.i280, %bb.am ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.039.i279, i64 16
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !109 ; 2 uses
  %i.jb = sub nsw i32 %i.ja, %i.ip
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.jc
  %i.je = load float, ptr %i.jd, align 4, !tbaa !21 ; 3 uses
  %i.jf = fcmp olt float %i.je, %i.iy
  br i1 %i.jf, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store float %i.je, ptr %i.iu, align 4, !tbaa !21
  store i32 %i.ja, ptr %i.ir, align 4, !tbaa !4
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.jg = phi float [ %i.iy, %bb.ak ], [ %i.je, %bb.al ] ; 2 uses
  %.0.i280 = load ptr, ptr %.039.i279, align 8, !tbaa !106 ; 2 uses
end_hunk_3
begin_hunk_4_@veryfastsupg_double_loadtop:bb.a
  %i.k = mul nsw i32 %i.j, 50
  %i.l = tail call ptr @AllocateCharMtx(i32 noundef %i.j, i32 noundef %i.k) #33
  store ptr %i.l, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
  %i.n = tail call ptr @AllocateIntVec(i32 noundef %i.m) #33
  store ptr %i.n, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.o = load i32, ptr @njob, align 4, !tbaa !4
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.q) #34
  store ptr %i.r, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.s = load i32, ptr @njob, align 4, !tbaa !4
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #34
  store ptr %i.v, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge212.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph206:                                        ; preds = %.lr.ph
  %.pre283 = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count249 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph206
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind295 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next298, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ab = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %i.aa, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !4
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %vec.ind295, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec297 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec297, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next298 = add <2 x i32> %vec.ind295, splat (i32 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge212, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph206, %middle.block
  %indvars.iv246.ph = phi i64 [ 0, %.lr.ph206 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ai) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph206, label %.lr.ph, !llvm.loop !167

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %scalar.ph ], [ %indvars.iv246.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %indvars.iv246 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next247 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = trunc i64 %indvars.iv246 to i32
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !170
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge212, label %scalar.ph, !llvm.loop !171

._crit_edge212.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.ap = sext i32 %0 to i64
  %i.aq = getelementptr [8 x i8], ptr %.pre, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store i32 -1, ptr %i.ar, align 4, !tbaa !168
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc287 = tail call i32 @fputc(i32 10, ptr %i.as) ; 0 uses
  br label %._crit_edge241

._crit_edge212:                                   ; preds = %scalar.ph, %middle.block
  %i.at = add nsw i32 %0, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre283, i64 %i.au
  store i32 -1, ptr %i.av, align 4, !tbaa !168
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !24
  %i.az = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bb, i1 false), !tbaa !4
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  %.not291 = icmp eq i32 %0, 1
  br i1 %.not291, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge212
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count260 = zext nneg i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph240, %bb.ac
  %indvars.iv257 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next258, %bb.ac ] ; 4 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv257 to i32 ; 3 uses
  %i.bg = urem i32 %i.bf, 10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.24, i32 noundef %i.bf, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bk = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bd) #33 ; 0 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1                   ; 5 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !4  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 6 uses
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bm, %i.bo
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bq) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bs = sext i32 %i.bn to i64                   ; 7 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %i.bv = sext i32 %i.bp to i64                   ; 6 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = load float, ptr %i.b, align 8, !tbaa !21
  %i.bz = fcmp une float %i.by, -1.000000e+00
  %i.ca = load float, ptr %i.bd, align 4
  %i.cb = fcmp une float %i.ca, -1.000000e+00
  %or.cond = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cd = call i64 @fwrite(ptr nonnull @.str.25, i64 34, i64 1, ptr %i.cc) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv257
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !87 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !89 ; 4 uses
  %i.ch = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89 ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bs ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4  ; 2 uses
  %i.ck = icmp eq i32 %i.cj, -1
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.bn, ptr %i.cg, align 4, !tbaa !4
  store i32 -1, ptr %i.cl, align 4, !tbaa !4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cm = sext i32 %i.cj to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !87 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !89 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 3 uses
  %i.cs = load i32, ptr %i.cp, align 4, !tbaa !4  ; 3 uses
  %i.ct = load i32, ptr %i.cr, align 4, !tbaa !4  ; 3 uses
  %i.cu = icmp sgt i32 %i.cs, %i.ct               ; 2 uses
  %4 = call i32 @llvm.smin.i32(i32 %i.cs, i32 %i.ct) ; 2 uses
  %i.cv = call i32 @llvm.smax.i32(i32 %i.cs, i32 %i.ct)
  %.197 = select i1 %i.cu, ptr %i.cp, ptr %i.cr   ; 2 uses
  %.not188213 = icmp eq i32 %4, -1
  br i1 %.not188213, label %.preheader201, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.m
  %. = select i1 %i.cu, ptr %i.cr, ptr %i.cp
  br label %.lr.ph217

.preheader201.loopexit:                           ; preds = %.lr.ph217
  %.pre262 = load i32, ptr %.197, align 4, !tbaa !4
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.loopexit, %bb.m
  %i.cw = phi i32 [ %i.cv, %bb.m ], [ %.pre262, %.preheader201.loopexit ] ; 2 uses
  %.0169.lcssa = phi ptr [ %i.cg, %bb.m ], [ %i.cz, %.preheader201.loopexit ] ; 2 uses
  %.not189218 = icmp eq i32 %i.cw, -1
  br i1 %.not189218, label %._crit_edge222, label %.lr.ph221

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph217
  %i.cx = phi i32 [ %i.da, %.lr.ph217 ], [ %4, %.lr.ph217.preheader ]
  %.0165215 = phi ptr [ %i.cy, %.lr.ph217 ], [ %., %.lr.ph217.preheader ]
  %.0169214 = phi ptr [ %i.cz, %.lr.ph217 ], [ %i.cg, %.lr.ph217.preheader ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0165215, i64 4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0169214, i64 4 ; 2 uses
  store i32 %i.cx, ptr %.0169214, align 4, !tbaa !4
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %.not188 = icmp eq i32 %i.da, -1
  br i1 %.not188, label %.preheader201.loopexit, label %.lr.ph217, !llvm.loop !172

.lr.ph221:                                        ; preds = %.preheader201, %.lr.ph221
  %i.db = phi i32 [ %i.de, %.lr.ph221 ], [ %i.cw, %.preheader201 ]
  %.1166220 = phi ptr [ %i.dc, %.lr.ph221 ], [ %.197, %.preheader201 ]
  %.1170219 = phi ptr [ %i.dd, %.lr.ph221 ], [ %.0169.lcssa, %.preheader201 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.1166220, i64 4 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1170219, i64 4 ; 2 uses
  store i32 %i.db, ptr %.1170219, align 4, !tbaa !4
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !4  ; 2 uses
  %.not189 = icmp eq i32 %i.de, -1
  br i1 %.not189, label %._crit_edge222, label %.lr.ph221, !llvm.loop !173

._crit_edge222:                                   ; preds = %.lr.ph221, %.preheader201
  %.1170.lcssa = phi ptr [ %.0169.lcssa, %.preheader201 ], [ %i.dd, %.lr.ph221 ]
  store i32 -1, ptr %.1170.lcssa, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge222, %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !89 ; 4 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.bv
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !4  ; 2 uses
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.bp, ptr %i.dg, align 4, !tbaa !4
  store i32 -1, ptr %i.dk, align 4, !tbaa !4
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dl = sext i32 %i.di to i64
  %i.dm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dl
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !87 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !89 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !89 ; 3 uses
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !4  ; 3 uses
  %i.ds = load i32, ptr %i.dq, align 4, !tbaa !4  ; 3 uses
  %i.dt = icmp sgt i32 %i.dr, %i.ds               ; 2 uses
  %5 = call i32 @llvm.smin.i32(i32 %i.dr, i32 %i.ds) ; 2 uses
  %i.du = call i32 @llvm.smax.i32(i32 %i.dr, i32 %i.ds)
  %.199 = select i1 %i.dt, ptr %i.do, ptr %i.dq   ; 2 uses
  %.not190224 = icmp eq i32 %5, -1
  br i1 %.not190224, label %.preheader, label %.lr.ph228.preheader

.lr.ph228.preheader:                              ; preds = %bb.p
  %.198 = select i1 %i.dt, ptr %i.dq, ptr %i.do
  br label %.lr.ph228

.preheader.loopexit:                              ; preds = %.lr.ph228
  %.pre263 = load i32, ptr %.199, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.p
  %i.dv = phi i32 [ %i.du, %bb.p ], [ %.pre263, %.preheader.loopexit ] ; 2 uses
  %.2171.lcssa = phi ptr [ %i.dg, %bb.p ], [ %i.dy, %.preheader.loopexit ] ; 2 uses
  %.not191230 = icmp eq i32 %i.dv, -1
  br i1 %.not191230, label %._crit_edge234, label %.lr.ph233

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %.lr.ph228
  %i.dw = phi i32 [ %i.dz, %.lr.ph228 ], [ %5, %.lr.ph228.preheader ]
  %.2167226 = phi ptr [ %i.dx, %.lr.ph228 ], [ %.198, %.lr.ph228.preheader ]
  %.2171225 = phi ptr [ %i.dy, %.lr.ph228 ], [ %i.dg, %.lr.ph228.preheader ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.2167226, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.2171225, i64 4 ; 2 uses
  store i32 %i.dw, ptr %.2171225, align 4, !tbaa !4
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %.not190 = icmp eq i32 %i.dz, -1
  br i1 %.not190, label %.preheader.loopexit, label %.lr.ph228, !llvm.loop !174

.lr.ph233:                                        ; preds = %.preheader, %.lr.ph233
  %i.ea = phi i32 [ %i.ed, %.lr.ph233 ], [ %i.dv, %.preheader ]
  %.3168232 = phi ptr [ %i.eb, %.lr.ph233 ], [ %.199, %.preheader ]
  %.3172231 = phi ptr [ %i.ec, %.lr.ph233 ], [ %.2171.lcssa, %.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.3168232, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3172231, i64 4 ; 2 uses
  store i32 %i.ea, ptr %.3172231, align 4, !tbaa !4
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !4  ; 2 uses
  %.not191 = icmp eq i32 %i.ed, -1
  br i1 %.not191, label %._crit_edge234, label %.lr.ph233, !llvm.loop !175

._crit_edge234:                                   ; preds = %.lr.ph233, %.preheader
  %.3172.lcssa = phi ptr [ %.2171.lcssa, %.preheader ], [ %i.ec, %.lr.ph233 ]
  store i32 -1, ptr %.3172.lcssa, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge234, %bb.o
  %i.ee = fmul double %i.bx, 5.000000e-01         ; 3 uses
  %i.ef = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.bs ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !24
  %i.ei = fsub double %i.ee, %i.eh                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv257
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !52 ; 4 uses
  store double %i.ei, ptr %i.ek, align 8, !tbaa !24
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.bv
  %i.em = load double, ptr %i.el, align 8, !tbaa !24
  %i.en = fsub double %i.ee, %i.em                ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8 ; 3 uses
  store double %i.en, ptr %i.eo, align 8, !tbaa !24
  %i.ep = fcmp olt double %i.ei, 0.000000e+00
  br i1 %i.ep, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 0.000000e+00, ptr %i.ek, align 8, !tbaa !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eq = fcmp olt double %i.en, 0.000000e+00
  br i1 %i.eq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 0.000000e+00, ptr %i.eo, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store double %i.ee, ptr %i.eg, align 8, !tbaa !24
  store i32 %i.bf, ptr %i.ci, align 4, !tbaa !4
  %i.er = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %.4236 = phi i32 [ 0, %bb.u ], [ %i.fj, %bb.z ] ; 8 uses
  %.not194 = icmp eq i32 %.4236, %i.bn
  %.not195 = icmp eq i32 %.4236, %i.bp
  %or.cond200 = or i1 %.not194, %.not195
  br i1 %or.cond200, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = icmp slt i32 %.4236, %i.bn
  br i1 %i.es, label %._crit_edge267, label %bb.x

._crit_edge267:                                   ; preds = %bb.w
  %.pre268 = sext i32 %.4236 to i64               ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.4. = call i32 @llvm.smin.i32(i32 %.4236, i32 %i.bp)
  %..4 = call i32 @llvm.smax.i32(i32 %.4236, i32 %i.bp)
  %.pre264 = sext i32 %.4236 to i64
  %.pre265 = sext i32 %..4 to i64
  %.pre270 = sext i32 %.4. to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge267, %bb.x
  %.pre-phi271 = phi i64 [ %.pre268, %._crit_edge267 ], [ %.pre270, %bb.x ]
  %.pre-phi269 = phi i64 [ %.pre268, %._crit_edge267 ], [ %i.bs, %bb.x ]
  %.pre-phi266 = phi i64 [ %i.bv, %._crit_edge267 ], [ %.pre265, %bb.x ]
  %.pre-phi = phi i64 [ %i.bs, %._crit_edge267 ], [ %.pre264, %bb.x ]
  %i.et = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi269
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !52
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %.pre-phi ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !24 ; 3 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi271
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !52
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %.pre-phi266
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !24 ; 3 uses
  %i.fb = fcmp olt double %i.ew, %i.fa
  %i.fc = select i1 %i.fb, double %i.ew, double %i.fa
  %i.fd = fadd double %i.ew, %i.fa
  %i.fe = fmul double %i.fd, 5.000000e-01
  %i.ff = fmul double %i.fe, 1.000000e-01
  %i.fg = call double @llvm.fmuladd.f64(double %i.fc, double 9.000000e-01, double %i.ff)
  store double %i.fg, ptr %i.ev, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %i.fh = sext i32 %.4236 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !168 ; 2 uses
  %.not192 = icmp eq i32 %i.fj, -1
  br i1 %.not192, label %bb.aa, label %bb.v, !llvm.loop !176

bb.aa:                                            ; preds = %bb.z
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.bv ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !170 ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !168 ; 3 uses
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fo
  store i32 %i.fn, ptr %i.fp, align 4, !tbaa !168
  %.not193 = icmp eq i32 %i.fn, -1
  br i1 %.not193, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = sext i32 %i.fn to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.fm, ptr %i.fs, align 4, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ft = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.fu = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77 ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.bs
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !12
  %i.fx = load double, ptr %i.ek, align 8, !tbaa !24
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.bv
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !12
  %i.ga = load double, ptr %i.eo, align 8, !tbaa !24
  %i.gb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ft, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fw, double noundef %i.fx, ptr noundef %i.fz, double noundef %i.ga) #33 ; 0 uses
  %i.gc = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.bs
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !12
  %i.gf = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gg = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ge, ptr noundef nonnull dereferenceable(1) %i.gf) #33 ; 0 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge241, label %bb.f, !llvm.loop !177

._crit_edge241:                                   ; preds = %bb.ac, %._crit_edge212.thread, %._crit_edge212
  %i.gh = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gi = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gj = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.4, ptr noundef %i.gj) #33 ; 0 uses
  %i.gl = call i32 @fclose(ptr noundef %i.gi)     ; 0 uses
  %i.gm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc187 = call i32 @fputc(i32 10, ptr %i.gm)  ; 0 uses
  %i.gn = load ptr, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  call void @free(ptr noundef %i.gn) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.tmptmplen, align 8, !tbaa !52
  %i.go = load ptr, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.go) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.hist, align 8, !tbaa !89
  %i.gp = load ptr, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  call void @free(ptr noundef %i.gp) #33
  store ptr null, ptr @veryfastsupg_double_loadtop.ac, align 8, !tbaa !164
  %i.gq = load ptr, ptr @veryfastsupg_double_loadtop.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.gq) #33
  %i.gr = load ptr, ptr @veryfastsupg_double_loadtop.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.gr) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_loadtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  %i.b = alloca [2 x float], align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.d) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %.not175 = icmp eq ptr %i.f, null
  br i1 %.not175, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr @njob, align 4, !tbaa !4
  %i.h = mul nsw i32 %i.g, 50
end_hunk_4
begin_hunk_5_@veryfastsupg_double_loadtree:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge201.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  br label %.lr.ph

.lr.ph195:                                        ; preds = %.lr.ph
  %.pre274 = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count238 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph195
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind286 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next289, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %index
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ab = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.ac = shufflevector <2 x i32> %i.aa, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.ac, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.x, align 4, !tbaa !4
  %i.ad = shufflevector <2 x i32> %i.ab, <2 x i32> %vec.ind286, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec288 = add <4 x i32> %i.ad, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec288, ptr %i.z, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next289 = add <2 x i32> %vec.ind286, splat (i32 4)
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !178

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge201, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph195, %middle.block
  %indvars.iv235.ph = phi i64 [ 0, %.lr.ph195 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.ai) #33 ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph195, label %.lr.ph, !llvm.loop !179

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv235 = phi i64 [ %indvars.iv.next236, %scalar.ph ], [ %indvars.iv235.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %indvars.iv235 ; 2 uses
  %i.al = trunc nuw nsw i64 %indvars.iv.next236 to i32
  store i32 %i.al, ptr %i.ak, align 4, !tbaa !168
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = trunc i64 %indvars.iv235 to i32
  %i.ao = add i32 %i.an, -1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !170
  %exitcond239.not = icmp eq i64 %indvars.iv.next236, %wide.trip.count238
  br i1 %exitcond239.not, label %._crit_edge201, label %scalar.ph, !llvm.loop !180

._crit_edge201.thread:                            ; preds = %bb.e
  %.pre = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  %i.ap = sext i32 %0 to i64
  %i.aq = getelementptr [8 x i8], ptr %.pre, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -8
  store i32 -1, ptr %i.ar, align 4, !tbaa !168
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc278 = tail call i32 @fputc(i32 10, ptr %i.as) ; 0 uses
  br label %._crit_edge230

._crit_edge201:                                   ; preds = %scalar.ph, %middle.block
  %i.at = add nsw i32 %0, -1                      ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.pre274, i64 %i.au
  store i32 -1, ptr %i.av, align 4, !tbaa !168
  %i.aw = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.ax = zext nneg i32 %0 to i64
  %i.ay = shl nuw nsw i64 %i.ax, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aw, i8 0, i64 %i.ay, i1 false), !tbaa !24
  %i.az = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.ba = zext nneg i32 %0 to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.az, i8 -1, i64 %i.bb, i1 false), !tbaa !4
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bc) ; 0 uses
  %.not282 = icmp eq i32 %0, 1
  br i1 %.not282, label %._crit_edge230, label %.lr.ph229

.lr.ph229:                                        ; preds = %._crit_edge201
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %wide.trip.count249 = zext nneg i32 %i.at to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph229, %bb.ac
  %indvars.iv246 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next247, %bb.ac ] ; 4 uses
  %i.bf = trunc nuw nsw i64 %indvars.iv246 to i32 ; 3 uses
  %i.bg = urem i32 %i.bf, 10
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.24, i32 noundef %i.bf, i32 noundef %0) #31 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store <2 x float> splat (float -1.000000e+00), ptr %i.b, align 8, !tbaa !21
  %i.bk = call ptr @fgets(ptr noundef nonnull @loadtreeoneline.gett, i32 noundef 999, ptr noundef nonnull %i.c) ; 0 uses
  %i.bl = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull @loadtreeoneline.gett, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.a, ptr noundef nonnull %i.be, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bd) #33 ; 0 uses
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1                   ; 5 uses
  store i32 %i.bn, ptr %i.a, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !4  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1                   ; 6 uses
  store i32 %i.bp, ptr %i.be, align 4, !tbaa !4
  %.not.i = icmp slt i32 %i.bm, %i.bo
  br i1 %.not.i, label %loadtreeoneline.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.br = call i64 @fwrite(ptr nonnull @.str.39, i64 21, i64 1, ptr %i.bq) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

loadtreeoneline.exit:                             ; preds = %bb.h
  %i.bs = sext i32 %i.bn to i64                   ; 7 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52
  %i.bv = sext i32 %i.bp to i64                   ; 5 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !24
  %i.by = load float, ptr %i.b, align 8, !tbaa !21 ; 3 uses
  %i.bz = fcmp oeq float %i.by, -1.000000e+00
  %i.ca = load float, ptr %i.bd, align 4          ; 2 uses
  %i.cb = fcmp oeq float %i.ca, -1.000000e+00
  %or.cond = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %loadtreeoneline.exit
  %i.cc = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.cd = call i64 @fwrite(ptr nonnull @.str.26, i64 39, i64 1, ptr %i.cc) #30 ; 0 uses
  call void @exit(i32 noundef 1) #32
  unreachable

bb.k:                                             ; preds = %loadtreeoneline.exit
  %i.ce = fcmp olt float %i.by, 0.000000e+00
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cf = phi float [ 0.000000e+00, %bb.l ], [ %i.by, %bb.k ]
  %i.cg = fcmp olt float %i.ca, 0.000000e+00
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !21
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv246
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !87 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !89 ; 4 uses
  %i.ck = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bs ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 %i.bn, ptr %i.cj, align 4, !tbaa !4
  store i32 -1, ptr %i.co, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !87 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !89 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !4  ; 3 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !4  ; 3 uses
  %i.cx = icmp sgt i32 %i.cv, %i.cw               ; 2 uses
  %4 = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %i.cy = call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  %.186 = select i1 %i.cx, ptr %i.cs, ptr %i.cu   ; 2 uses
  %.not177202 = icmp eq i32 %4, -1
  br i1 %.not177202, label %.preheader190, label %.lr.ph206.preheader

.lr.ph206.preheader:                              ; preds = %bb.q
  %. = select i1 %i.cx, ptr %i.cu, ptr %i.cs
  br label %.lr.ph206

.preheader190.loopexit:                           ; preds = %.lr.ph206
  %.pre251 = load i32, ptr %.186, align 4, !tbaa !4
  br label %.preheader190

.preheader190:                                    ; preds = %.preheader190.loopexit, %bb.q
  %i.cz = phi i32 [ %i.cy, %bb.q ], [ %.pre251, %.preheader190.loopexit ] ; 2 uses
  %.0157.lcssa = phi ptr [ %i.cj, %bb.q ], [ %i.dc, %.preheader190.loopexit ] ; 2 uses
  %.not178207 = icmp eq i32 %i.cz, -1
  br i1 %.not178207, label %._crit_edge211, label %.lr.ph210

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %i.da = phi i32 [ %i.dd, %.lr.ph206 ], [ %4, %.lr.ph206.preheader ]
  %.0153204 = phi ptr [ %i.db, %.lr.ph206 ], [ %., %.lr.ph206.preheader ]
  %.0157203 = phi ptr [ %i.dc, %.lr.ph206 ], [ %i.cj, %.lr.ph206.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0153204, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0157203, i64 4 ; 2 uses
  store i32 %i.da, ptr %.0157203, align 4, !tbaa !4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !4  ; 2 uses
  %.not177 = icmp eq i32 %i.dd, -1
  br i1 %.not177, label %.preheader190.loopexit, label %.lr.ph206, !llvm.loop !181

.lr.ph210:                                        ; preds = %.preheader190, %.lr.ph210
  %i.de = phi i32 [ %i.dh, %.lr.ph210 ], [ %i.cz, %.preheader190 ]
  %.1154209 = phi ptr [ %i.df, %.lr.ph210 ], [ %.186, %.preheader190 ]
  %.1158208 = phi ptr [ %i.dg, %.lr.ph210 ], [ %.0157.lcssa, %.preheader190 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1154209, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1158208, i64 4 ; 2 uses
  store i32 %i.de, ptr %.1158208, align 4, !tbaa !4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !4  ; 2 uses
  %.not178 = icmp eq i32 %i.dh, -1
  br i1 %.not178, label %._crit_edge211, label %.lr.ph210, !llvm.loop !182

._crit_edge211:                                   ; preds = %.lr.ph210, %.preheader190
  %.1158.lcssa = phi ptr [ %.0157.lcssa, %.preheader190 ], [ %i.dg, %.lr.ph210 ]
  store i32 -1, ptr %.1158.lcssa, align 4, !tbaa !4
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge211, %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !89 ; 4 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.bv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !4  ; 2 uses
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %i.bp, ptr %i.dj, align 4, !tbaa !4
  store i32 -1, ptr %i.dn, align 4, !tbaa !4
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.do = sext i32 %i.dl to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !87 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !89 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !89 ; 3 uses
  %i.du = load i32, ptr %i.dr, align 4, !tbaa !4  ; 3 uses
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !4  ; 3 uses
  %i.dw = icmp sgt i32 %i.du, %i.dv               ; 2 uses
  %5 = call i32 @llvm.smin.i32(i32 %i.du, i32 %i.dv) ; 2 uses
  %i.dx = call i32 @llvm.smax.i32(i32 %i.du, i32 %i.dv)
  %.188 = select i1 %i.dw, ptr %i.dr, ptr %i.dt   ; 2 uses
  %.not179213 = icmp eq i32 %5, -1
  br i1 %.not179213, label %.preheader, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %bb.t
  %.187 = select i1 %i.dw, ptr %i.dt, ptr %i.dr
  br label %.lr.ph217

.preheader.loopexit:                              ; preds = %.lr.ph217
  %.pre252 = load i32, ptr %.188, align 4, !tbaa !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.t
  %i.dy = phi i32 [ %i.dx, %bb.t ], [ %.pre252, %.preheader.loopexit ] ; 2 uses
  %.2159.lcssa = phi ptr [ %i.dj, %bb.t ], [ %i.eb, %.preheader.loopexit ] ; 2 uses
  %.not180219 = icmp eq i32 %i.dy, -1
  br i1 %.not180219, label %._crit_edge223, label %.lr.ph222

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %.lr.ph217
  %i.dz = phi i32 [ %i.ec, %.lr.ph217 ], [ %5, %.lr.ph217.preheader ]
  %.2155215 = phi ptr [ %i.ea, %.lr.ph217 ], [ %.187, %.lr.ph217.preheader ]
  %.2159214 = phi ptr [ %i.eb, %.lr.ph217 ], [ %i.dj, %.lr.ph217.preheader ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.2155215, i64 4 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2159214, i64 4 ; 2 uses
  store i32 %i.dz, ptr %.2159214, align 4, !tbaa !4
  %i.ec = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %.not179 = icmp eq i32 %i.ec, -1
  br i1 %.not179, label %.preheader.loopexit, label %.lr.ph217, !llvm.loop !183

.lr.ph222:                                        ; preds = %.preheader, %.lr.ph222
  %i.ed = phi i32 [ %i.eg, %.lr.ph222 ], [ %i.dy, %.preheader ]
  %.3156221 = phi ptr [ %i.ee, %.lr.ph222 ], [ %.188, %.preheader ]
  %.3160220 = phi ptr [ %i.ef, %.lr.ph222 ], [ %.2159.lcssa, %.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.3156221, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.3160220, i64 4 ; 2 uses
  store i32 %i.ed, ptr %.3160220, align 4, !tbaa !4
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !4  ; 2 uses
  %.not180 = icmp eq i32 %i.eg, -1
  br i1 %.not180, label %._crit_edge223, label %.lr.ph222, !llvm.loop !184

._crit_edge223:                                   ; preds = %.lr.ph222, %.preheader
  %.3160.lcssa = phi ptr [ %.2159.lcssa, %.preheader ], [ %i.ef, %.lr.ph222 ]
  store i32 -1, ptr %.3160.lcssa, align 4, !tbaa !4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge223, %bb.s
  %i.eh = fmul double %i.bx, 5.000000e-01
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv246
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !52 ; 3 uses
  %i.ek = load float, ptr %i.bd, align 4, !tbaa !21
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.em = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.ek, i64 1
  %i.eo = fpext <2 x float> %i.en to <2 x double>
  store <2 x double> %i.eo, ptr %i.ej, align 8, !tbaa !24
  %i.ep = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.bs
  store double %i.eh, ptr %i.eq, align 8, !tbaa !24
  store i32 %i.bf, ptr %i.cl, align 4, !tbaa !4
  %i.er = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164 ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.z
  %.4225 = phi i32 [ 0, %bb.u ], [ %i.fj, %bb.z ] ; 8 uses
  %.not183 = icmp eq i32 %.4225, %i.bn
  %.not184 = icmp eq i32 %.4225, %i.bp
  %or.cond189 = or i1 %.not183, %.not184
  br i1 %or.cond189, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = icmp slt i32 %.4225, %i.bn
  br i1 %i.es, label %._crit_edge256, label %bb.x

._crit_edge256:                                   ; preds = %bb.w
  %.pre257 = sext i32 %.4225 to i64               ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %.4. = call i32 @llvm.smin.i32(i32 %.4225, i32 %i.bp)
  %..4 = call i32 @llvm.smax.i32(i32 %.4225, i32 %i.bp)
  %.pre253 = sext i32 %.4225 to i64
  %.pre254 = sext i32 %..4 to i64
  %.pre259 = sext i32 %.4. to i64
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge256, %bb.x
  %.pre-phi260 = phi i64 [ %.pre257, %._crit_edge256 ], [ %.pre259, %bb.x ]
  %.pre-phi258 = phi i64 [ %.pre257, %._crit_edge256 ], [ %i.bs, %bb.x ]
  %.pre-phi255 = phi i64 [ %i.bv, %._crit_edge256 ], [ %.pre254, %bb.x ]
  %.pre-phi = phi i64 [ %i.bs, %._crit_edge256 ], [ %.pre253, %bb.x ]
  %i.et = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi258
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !52
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %.pre-phi ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !24 ; 3 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi260
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !52
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %.pre-phi255
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !24 ; 3 uses
  %i.fb = fcmp olt double %i.ew, %i.fa
  %i.fc = select i1 %i.fb, double %i.ew, double %i.fa
  %i.fd = fadd double %i.ew, %i.fa
  %i.fe = fmul double %i.fd, 5.000000e-01
  %i.ff = fmul double %i.fe, 1.000000e-01
  %i.fg = call double @llvm.fmuladd.f64(double %i.fc, double 9.000000e-01, double %i.ff)
  store double %i.fg, ptr %i.ev, align 8, !tbaa !24
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.y
  %i.fh = sext i32 %.4225 to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !168 ; 2 uses
  %.not181 = icmp eq i32 %i.fj, -1
  br i1 %.not181, label %bb.aa, label %bb.v, !llvm.loop !185

bb.aa:                                            ; preds = %bb.z
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.bv ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !170 ; 2 uses
  %i.fn = load i32, ptr %i.fk, align 4, !tbaa !168 ; 3 uses
  %i.fo = sext i32 %i.fm to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fo
  store i32 %i.fn, ptr %i.fp, align 4, !tbaa !168
  %.not182 = icmp eq i32 %i.fn, -1
  br i1 %.not182, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = sext i32 %i.fn to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 %i.fm, ptr %i.fs, align 4, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ft = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.fu = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.bs
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !12
  %i.fx = load double, ptr %i.ej, align 8, !tbaa !24
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.bv
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !12
  %i.ga = load double, ptr %i.el, align 8, !tbaa !24
  %i.gb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ft, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.fw, double noundef %i.fx, ptr noundef %i.fz, double noundef %i.ga) #33 ; 0 uses
  %i.gc = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.bs
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !12
  %i.gf = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.gg = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ge, ptr noundef nonnull dereferenceable(1) %i.gf) #33 ; 0 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %._crit_edge230, label %bb.f, !llvm.loop !186

._crit_edge230:                                   ; preds = %bb.ac, %._crit_edge201.thread, %._crit_edge201
  %i.gh = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.gi = call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.gj = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  %i.gk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.4, ptr noundef %i.gj) #33 ; 0 uses
  %i.gl = call i32 @fclose(ptr noundef %i.gi)     ; 0 uses
  %i.gm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc176 = call i32 @fputc(i32 10, ptr %i.gm)  ; 0 uses
  %i.gn = load ptr, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  call void @free(ptr noundef %i.gn) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.tmptmplen, align 8, !tbaa !52
  %i.go = load ptr, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  call void @free(ptr noundef %i.go) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.hist, align 8, !tbaa !89
  %i.gp = load ptr, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  call void @free(ptr noundef %i.gp) #33
  store ptr null, ptr @veryfastsupg_double_loadtree.ac, align 8, !tbaa !164
  %i.gq = load ptr, ptr @veryfastsupg_double_loadtree.tree, align 8, !tbaa !77
  call void @FreeCharMtx(ptr noundef %i.gq) #33
  %i.gr = load ptr, ptr @veryfastsupg_double_loadtree.treetmp, align 8, !tbaa !12
  call void @free(ptr noundef %i.gr) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_double_outtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #12 {
bb.a:
  store double 9.000000e-01, ptr @sueff1_double, align 8, !tbaa !24
  store double 5.000000e-02, ptr @sueff05_double, align 8, !tbaa !24
  %i.a = load i32, ptr @treemethod, align 4, !tbaa !4 ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 88, label %bb.e
    i32 69, label %bb.b
    i32 113, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.20, i32 noundef %i.a) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi ptr [ @cluster_minimum_double, %bb.c ], [ @cluster_average_double, %bb.b ], [ @cluster_mix_double, %bb.a ]
  %i.d = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = load i32, ptr @njob, align 4, !tbaa !4
  %i.f = mul nsw i32 %i.e, 50
  %i.g = tail call ptr @AllocateCharVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.h = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.i = mul nsw i32 %i.h, 50
  %i.j = tail call ptr @AllocateCharMtx(i32 noundef %i.h, i32 noundef %i.i) #33
  store ptr %i.j, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.k = load i32, ptr @njob, align 4, !tbaa !4
  %i.l = tail call ptr @AllocateIntVec(i32 noundef %i.k) #33
  store ptr %i.l, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.m = load i32, ptr @njob, align 4, !tbaa !4
end_hunk_5
begin_hunk_6_@veryfastsupg_double_outtree:bb.a
  %.not219.28 = icmp eq i16 %i.it, 0
  %spec.select.28 = select i1 %.not219.28, i8 95, i8 %i.ip
  %i.iu = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  store i8 %spec.select.28, ptr %i.iu, align 1, !tbaa !8
  %i.iv = load ptr, ptr %i.w, align 8, !tbaa !100
  %i.iw = getelementptr inbounds nuw i8, ptr %i.y, i64 29
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8   ; 2 uses
  %i.iy = sext i8 %i.ix to i64
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !102
  %i.jb = and i16 %i.ja, 8
  %.not219.29 = icmp eq i16 %i.jb, 0
  %spec.select.29 = select i1 %.not219.29, i8 95, i8 %i.ix
  %i.jc = getelementptr inbounds nuw i8, ptr %i.x, i64 29
  store i8 %spec.select.29, ptr %i.jc, align 1, !tbaa !8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.x, i64 30
  store i8 0, ptr %i.jd, align 1, !tbaa !8
  %i.je = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv288
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !12
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 3 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ji = trunc nuw nsw i64 %indvars.iv.next289 to i32
  %i.jj = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.jg, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.ji, ptr noundef nonnull %i.jh) #33 ; 0 uses
  %exitcond291.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond291.not, label %.preheader226, label %.preheader228, !llvm.loop !187

.preheader226:                                    ; preds = %.preheader228
  %.pre = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count295 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader226
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind342 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next345, %vector.body ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.jo = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.jp = shufflevector <2 x i32> %i.jn, <2 x i32> %vec.ind342, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.jp, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.jk, align 4, !tbaa !4
  %i.jq = shufflevector <2 x i32> %i.jo, <2 x i32> %vec.ind342, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec344 = add <4 x i32> %i.jq, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec344, ptr %i.jm, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next345 = add <2 x i32> %vec.ind342, splat (i32 4)
  %i.jr = icmp eq i64 %index.next, %n.vec
  br i1 %i.jr, label %middle.block, label %vector.body, !llvm.loop !188

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge238, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader226, %middle.block
  %indvars.iv292.ph = phi i64 [ 0, %.preheader226 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv292 = phi i64 [ %indvars.iv.next293, %scalar.ph ], [ %indvars.iv292.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv292 ; 2 uses
  %i.jt = trunc nuw nsw i64 %indvars.iv.next293 to i32
  store i32 %i.jt, ptr %i.js, align 4, !tbaa !168
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %i.jv = trunc i64 %indvars.iv292 to i32
  %i.jw = add i32 %i.jv, -1
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !170
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %._crit_edge238, label %scalar.ph, !llvm.loop !189

._crit_edge238.thread:                            ; preds = %bb.g
  %.pre329 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.jx = sext i32 %0 to i64
  %i.jy = getelementptr [8 x i8], ptr %.pre329, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 -8
  store i32 -1, ptr %i.jz, align 4, !tbaa !168
  %i.ka = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc332 = tail call i32 @fputc(i32 10, ptr %i.ka) ; 0 uses
  br label %._crit_edge282

._crit_edge238:                                   ; preds = %scalar.ph, %middle.block
  %i.kb = add nsw i32 %0, -1                      ; 2 uses
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.kc
  store i32 -1, ptr %i.kd, align 4, !tbaa !168
  %i.ke = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  %i.kf = zext nneg i32 %0 to i64
  %i.kg = shl nuw nsw i64 %i.kf, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ke, i8 0, i64 %i.kg, i1 false), !tbaa !24
  %i.kh = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.ki = zext nneg i32 %0 to i64
  %i.kj = shl nuw nsw i64 %i.ki, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kh, i8 -1, i64 %i.kj, i1 false), !tbaa !4
  %i.kk = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.kk) ; 0 uses
  %.not337 = icmp eq i32 %0, 1
  br i1 %.not337, label %._crit_edge282, label %.lr.ph281.preheader

.lr.ph281.preheader:                              ; preds = %._crit_edge238
  %wide.trip.count306 = zext nneg i32 %i.kb to i64
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader, %bb.x
  %indvars.iv303 = phi i64 [ 0, %.lr.ph281.preheader ], [ %indvars.iv.next304, %bb.x ] ; 4 uses
  %.0173279 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1174.lcssa, %bb.x ] ; 2 uses
  %.0177278 = phi i32 [ -1, %.lr.ph281.preheader ], [ %.1178.lcssa, %bb.x ] ; 2 uses
  %i.kl = trunc nuw nsw i64 %indvars.iv303 to i32 ; 3 uses
  %i.km = urem i32 %i.kl, 10
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph281
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ko, ptr noundef nonnull @.str.24, i32 noundef %i.kl, i32 noundef %0) #31 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph281
  %i.kq = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164 ; 4 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !168 ; 2 uses
  %.not209243 = icmp eq i32 %i.kr, -1
  br i1 %.not209243, label %._crit_edge248, label %.preheader

.loopexit:                                        ; preds = %bb.j
  %i.ks = sext i32 %i.kv to i64                   ; 2 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !168 ; 2 uses
  %.not209 = icmp eq i32 %i.ku, -1
  br i1 %.not209, label %._crit_edge248.loopexit, label %.preheader, !llvm.loop !190

.preheader:                                       ; preds = %bb.i, %.loopexit
  %i.kv = phi i32 [ %i.ku, %.loopexit ], [ %i.kr, %bb.i ] ; 3 uses
  %i.kw = phi i64 [ %i.ks, %.loopexit ], [ 0, %bb.i ]
  %.4247 = phi i32 [ %i.kv, %.loopexit ], [ 0, %bb.i ]
  %.1174246 = phi i32 [ %.3176, %.loopexit ], [ %.0173279, %bb.i ]
  %.1178245 = phi i32 [ %.3180, %.loopexit ], [ %.0177278, %bb.i ]
  %.0182244 = phi double [ %.2184, %.loopexit ], [ f0x40F869FE66666666, %bb.i ]
  %i.kx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kw
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !52
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %.2172242 = phi i32 [ %i.kv, %.preheader ], [ %i.le, %bb.j ] ; 2 uses
  %.2175241 = phi i32 [ %.1174246, %.preheader ], [ %.3176, %bb.j ]
  %.2179240 = phi i32 [ %.1178245, %.preheader ], [ %.3180, %bb.j ]
  %.1183239 = phi double [ %.0182244, %.preheader ], [ %.2184, %bb.j ] ; 2 uses
  %i.kz = sext i32 %.2172242 to i64               ; 2 uses
  %i.la = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.kz
  %i.lb = load double, ptr %i.la, align 8, !tbaa !24 ; 2 uses
  %i.lc = fcmp olt double %i.lb, %.1183239        ; 3 uses
  %.2184 = select i1 %i.lc, double %i.lb, double %.1183239 ; 3 uses
  %.3180 = select i1 %i.lc, i32 %.4247, i32 %.2179240 ; 3 uses
  %.3176 = select i1 %i.lc, i32 %.2172242, i32 %.2175241 ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kz
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !168 ; 2 uses
  %.not218 = icmp eq i32 %i.le, -1
  br i1 %.not218, label %.loopexit, label %bb.j, !llvm.loop !191

._crit_edge248.loopexit:                          ; preds = %.loopexit
  %i.lf = fmul double %.2184, 5.000000e-01
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %._crit_edge248.loopexit, %bb.i
  %.0182.lcssa = phi double [ f0x40E869FE66666666, %bb.i ], [ %i.lf, %._crit_edge248.loopexit ] ; 3 uses
  %.1178.lcssa = phi i32 [ %.0177278, %bb.i ], [ %.3180, %._crit_edge248.loopexit ] ; 5 uses
  %.1174.lcssa = phi i32 [ %.0173279, %bb.i ], [ %.3176, %._crit_edge248.loopexit ] ; 6 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv303
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !87 ; 2 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !89 ; 4 uses
  %i.lj = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89 ; 2 uses
  %i.lk = sext i32 %.1178.lcssa to i64            ; 6 uses
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !4  ; 2 uses
  %i.ln = icmp eq i32 %i.lm, -1
  br i1 %i.ln, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge248
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %.1178.lcssa, ptr %i.li, align 4, !tbaa !4
  store i32 -1, ptr %i.lo, align 4, !tbaa !4
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge248
  %i.lp = sext i32 %i.lm to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.lp
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !87 ; 2 uses
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !89 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !89 ; 3 uses
  %i.lv = load i32, ptr %i.ls, align 4, !tbaa !4  ; 3 uses
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !4  ; 3 uses
  %i.lx = icmp sgt i32 %i.lv, %i.lw               ; 2 uses
  %5 = tail call i32 @llvm.smin.i32(i32 %i.lv, i32 %i.lw) ; 2 uses
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %i.lw)
  %.220 = select i1 %i.lx, ptr %i.ls, ptr %i.lu   ; 2 uses
  %.not210251 = icmp eq i32 %5, -1
  br i1 %.not210251, label %.preheader224, label %.lr.ph255.preheader

.lr.ph255.preheader:                              ; preds = %bb.l
  %. = select i1 %i.lx, ptr %i.lu, ptr %i.ls
  br label %.lr.ph255

.preheader224.loopexit:                           ; preds = %.lr.ph255
  %.pre308 = load i32, ptr %.220, align 4, !tbaa !4
  br label %.preheader224

.preheader224:                                    ; preds = %.preheader224.loopexit, %bb.l
  %i.lz = phi i32 [ %i.ly, %bb.l ], [ %.pre308, %.preheader224.loopexit ] ; 2 uses
  %.0192.lcssa = phi ptr [ %i.li, %bb.l ], [ %i.mc, %.preheader224.loopexit ] ; 2 uses
  %.not211257 = icmp eq i32 %i.lz, -1
  br i1 %.not211257, label %._crit_edge261, label %.lr.ph260

.lr.ph255:                                        ; preds = %.lr.ph255.preheader, %.lr.ph255
  %i.ma = phi i32 [ %i.md, %.lr.ph255 ], [ %5, %.lr.ph255.preheader ]
  %.0188253 = phi ptr [ %i.mb, %.lr.ph255 ], [ %., %.lr.ph255.preheader ]
  %.0192252 = phi ptr [ %i.mc, %.lr.ph255 ], [ %i.li, %.lr.ph255.preheader ] ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.0188253, i64 4 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.0192252, i64 4 ; 2 uses
  store i32 %i.ma, ptr %.0192252, align 4, !tbaa !4
  %i.md = load i32, ptr %i.mb, align 4, !tbaa !4  ; 2 uses
  %.not210 = icmp eq i32 %i.md, -1
  br i1 %.not210, label %.preheader224.loopexit, label %.lr.ph255, !llvm.loop !192

.lr.ph260:                                        ; preds = %.preheader224, %.lr.ph260
  %i.me = phi i32 [ %i.mh, %.lr.ph260 ], [ %i.lz, %.preheader224 ]
  %.1189259 = phi ptr [ %i.mf, %.lr.ph260 ], [ %.220, %.preheader224 ]
  %.1193258 = phi ptr [ %i.mg, %.lr.ph260 ], [ %.0192.lcssa, %.preheader224 ] ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.1189259, i64 4 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.1193258, i64 4 ; 2 uses
  store i32 %i.me, ptr %.1193258, align 4, !tbaa !4
  %i.mh = load i32, ptr %i.mf, align 4, !tbaa !4  ; 2 uses
  %.not211 = icmp eq i32 %i.mh, -1
  br i1 %.not211, label %._crit_edge261, label %.lr.ph260, !llvm.loop !193

._crit_edge261:                                   ; preds = %.lr.ph260, %.preheader224
  %.1193.lcssa = phi ptr [ %.0192.lcssa, %.preheader224 ], [ %i.mg, %.lr.ph260 ]
  store i32 -1, ptr %.1193.lcssa, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge261, %bb.k
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !89 ; 4 uses
  %i.mk = sext i32 %.1174.lcssa to i64            ; 5 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !4  ; 2 uses
  %i.mn = icmp eq i32 %i.mm, -1
  br i1 %i.mn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store i32 %.1174.lcssa, ptr %i.mj, align 4, !tbaa !4
  store i32 -1, ptr %i.mo, align 4, !tbaa !4
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.mp = sext i32 %i.mm to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.mp
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !87 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !89 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !89 ; 3 uses
  %i.mv = load i32, ptr %i.ms, align 4, !tbaa !4  ; 3 uses
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !4  ; 3 uses
  %i.mx = icmp sgt i32 %i.mv, %i.mw               ; 2 uses
  %6 = tail call i32 @llvm.smin.i32(i32 %i.mv, i32 %i.mw) ; 2 uses
  %i.my = tail call i32 @llvm.smax.i32(i32 %i.mv, i32 %i.mw)
  %.222 = select i1 %i.mx, ptr %i.ms, ptr %i.mu   ; 2 uses
  %.not212263 = icmp eq i32 %6, -1
  br i1 %.not212263, label %.preheader223, label %.lr.ph267.preheader

.lr.ph267.preheader:                              ; preds = %bb.o
  %.221 = select i1 %i.mx, ptr %i.mu, ptr %i.ms
  br label %.lr.ph267

.preheader223.loopexit:                           ; preds = %.lr.ph267
  %.pre309 = load i32, ptr %.222, align 4, !tbaa !4
  br label %.preheader223

.preheader223:                                    ; preds = %.preheader223.loopexit, %bb.o
  %i.mz = phi i32 [ %i.my, %bb.o ], [ %.pre309, %.preheader223.loopexit ] ; 2 uses
  %.2194.lcssa = phi ptr [ %i.mj, %bb.o ], [ %i.nc, %.preheader223.loopexit ] ; 2 uses
  %.not213269 = icmp eq i32 %i.mz, -1
  br i1 %.not213269, label %._crit_edge273, label %.lr.ph272

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %.lr.ph267
  %i.na = phi i32 [ %i.nd, %.lr.ph267 ], [ %6, %.lr.ph267.preheader ]
  %.2190265 = phi ptr [ %i.nb, %.lr.ph267 ], [ %.221, %.lr.ph267.preheader ]
  %.2194264 = phi ptr [ %i.nc, %.lr.ph267 ], [ %i.mj, %.lr.ph267.preheader ] ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.2190265, i64 4 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.2194264, i64 4 ; 2 uses
  store i32 %i.na, ptr %.2194264, align 4, !tbaa !4
  %i.nd = load i32, ptr %i.nb, align 4, !tbaa !4  ; 2 uses
  %.not212 = icmp eq i32 %i.nd, -1
  br i1 %.not212, label %.preheader223.loopexit, label %.lr.ph267, !llvm.loop !194

.lr.ph272:                                        ; preds = %.preheader223, %.lr.ph272
  %i.ne = phi i32 [ %i.nh, %.lr.ph272 ], [ %i.mz, %.preheader223 ]
  %.3191271 = phi ptr [ %i.nf, %.lr.ph272 ], [ %.222, %.preheader223 ]
  %.3195270 = phi ptr [ %i.ng, %.lr.ph272 ], [ %.2194.lcssa, %.preheader223 ] ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.3191271, i64 4 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.3195270, i64 4 ; 2 uses
  store i32 %i.ne, ptr %.3195270, align 4, !tbaa !4
  %i.nh = load i32, ptr %i.nf, align 4, !tbaa !4  ; 2 uses
  %.not213 = icmp eq i32 %i.nh, -1
  br i1 %.not213, label %._crit_edge273, label %.lr.ph272, !llvm.loop !195

._crit_edge273:                                   ; preds = %.lr.ph272, %.preheader223
  %.3195.lcssa = phi ptr [ %.2194.lcssa, %.preheader223 ], [ %i.ng, %.lr.ph272 ]
  store i32 -1, ptr %.3195.lcssa, align 4, !tbaa !4
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge273, %bb.n
  %i.ni = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.lk ; 2 uses
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !24
  %i.nl = fsub double %.0182.lcssa, %i.nk
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv303 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !52 ; 2 uses
  store double %i.nl, ptr %i.nn, align 8, !tbaa !24
  %i.no = getelementptr inbounds [8 x i8], ptr %i.ni, i64 %i.mk
  %i.np = load double, ptr %i.no, align 8, !tbaa !24
  %i.nq = fsub double %.0182.lcssa, %i.np
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  store double %i.nq, ptr %i.nr, align 8, !tbaa !24
  store double %.0182.lcssa, ptr %i.nj, align 8, !tbaa !24
  store i32 %i.kl, ptr %i.ll, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.u
  %i.ns = phi ptr [ %i.kq, %bb.p ], [ %i.of, %bb.u ]
  %.5275 = phi i32 [ 0, %bb.p ], [ %i.oi, %bb.u ] ; 8 uses
  %.not216 = icmp eq i32 %.5275, %.1178.lcssa
  %.not217 = icmp eq i32 %.5275, %.1174.lcssa
  %or.cond = select i1 %.not216, i1 true, i1 %.not217
  br i1 %or.cond, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.nt = icmp slt i32 %.5275, %.1178.lcssa
  br i1 %i.nt, label %._crit_edge314, label %bb.s

._crit_edge314:                                   ; preds = %bb.r
  %.pre315 = sext i32 %.5275 to i64               ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %.1174..5 = tail call i32 @llvm.smax.i32(i32 %.5275, i32 %.1174.lcssa)
  %.5..1174 = tail call i32 @llvm.smin.i32(i32 %.5275, i32 %.1174.lcssa)
  %.pre310 = sext i32 %.5275 to i64
  %.pre311 = sext i32 %.1174..5 to i64
  %.pre317 = sext i32 %.5..1174 to i64
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge314, %bb.s
  %.pre-phi318 = phi i64 [ %.pre315, %._crit_edge314 ], [ %.pre317, %bb.s ]
  %.pre-phi316 = phi i64 [ %.pre315, %._crit_edge314 ], [ %i.lk, %bb.s ]
  %.pre-phi312 = phi i64 [ %i.mk, %._crit_edge314 ], [ %.pre311, %bb.s ]
  %.pre-phi = phi i64 [ %i.lk, %._crit_edge314 ], [ %.pre310, %bb.s ] ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi316 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !52
  %i.nw = getelementptr inbounds [8 x i8], ptr %i.nv, i64 %.pre-phi
  %i.nx = load double, ptr %i.nw, align 8, !tbaa !24
  %i.ny = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi318
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !52
  %i.oa = getelementptr inbounds [8 x i8], ptr %i.nz, i64 %.pre-phi312
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !24
  %i.oc = tail call double %.sroa.0.0(double noundef %i.nx, double noundef %i.ob) #33, !callees !196
  %i.od = load ptr, ptr %i.nu, align 8, !tbaa !52
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.od, i64 %.pre-phi
  store double %i.oc, ptr %i.oe, align 8, !tbaa !24
  %.pre313 = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.t
  %i.of = phi ptr [ %i.ns, %bb.q ], [ %.pre313, %bb.t ] ; 5 uses
  %i.og = sext i32 %.5275 to i64
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.og
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !168 ; 2 uses
  %.not214 = icmp eq i32 %i.oi, -1
  br i1 %.not214, label %bb.v, label %bb.q, !llvm.loop !197

bb.v:                                             ; preds = %bb.u
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.mk ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !170 ; 2 uses
  %i.om = load i32, ptr %i.oj, align 4, !tbaa !168 ; 3 uses
  %i.on = sext i32 %i.ol to i64
  %i.oo = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.on
  store i32 %i.om, ptr %i.oo, align 4, !tbaa !168
  %.not215 = icmp eq i32 %i.om, -1
  br i1 %.not215, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.op = sext i32 %i.om to i64
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  store i32 %i.ol, ptr %i.or, align 4, !tbaa !170
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.os = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.ot = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77 ; 2 uses
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.lk
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !12
  %i.ow = load ptr, ptr %i.nm, align 8, !tbaa !52 ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !24
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ot, i64 %i.mk
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !12
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ow, i64 8
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !24
  %i.pc = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.os, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %i.ov, double noundef %i.ox, ptr noundef %i.oz, double noundef %i.pb) #33 ; 0 uses
  %i.pd = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  %i.pe = getelementptr inbounds [8 x i8], ptr %i.pd, i64 %i.lk
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !12
  %i.pg = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.ph = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.pf, ptr noundef nonnull dereferenceable(1) %i.pg) #33 ; 0 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 2 uses
  %exitcond307.not = icmp eq i64 %indvars.iv.next304, %wide.trip.count306
  br i1 %exitcond307.not, label %._crit_edge282, label %.lr.ph281, !llvm.loop !198

._crit_edge282:                                   ; preds = %bb.x, %._crit_edge238.thread, %._crit_edge238
  %i.pi = tail call noalias ptr @fopen(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) ; 2 uses
  %i.pj = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  %i.pk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pi, ptr noundef nonnull @.str.4, ptr noundef %i.pj) #33 ; 0 uses
  %i.pl = tail call i32 @fclose(ptr noundef %i.pi) ; 0 uses
  %i.pm = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc208 = tail call i32 @fputc(i32 10, ptr %i.pm) ; 0 uses
  %i.pn = load ptr, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.pn) #33
  store ptr null, ptr @veryfastsupg_double_outtree.tmptmplen, align 8, !tbaa !52
  %i.po = load ptr, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.po) #33
  store ptr null, ptr @veryfastsupg_double_outtree.hist, align 8, !tbaa !89
  %i.pp = load ptr, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.pp) #33
  store ptr null, ptr @veryfastsupg_double_outtree.ac, align 8, !tbaa !164
  %i.pq = load ptr, ptr @veryfastsupg_double_outtree.tree, align 8, !tbaa !77
  tail call void @FreeCharMtx(ptr noundef %i.pq) #33
  %i.pr = load ptr, ptr @veryfastsupg_double_outtree.treetmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.pr) #33
  %i.ps = load ptr, ptr @veryfastsupg_double_outtree.nametmp, align 8, !tbaa !12
  tail call void @free(ptr noundef %i.ps) #33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal double @cluster_mix_double(double noundef %0, double noundef %1) unnamed_addr #18 {
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  %i.c = load double, ptr @sueff1_double, align 8, !tbaa !24
  %i.d = fadd double %0, %1
  %i.e = load double, ptr @sueff05_double, align 8, !tbaa !24
  %i.f = fmul double %i.d, %i.e
  %i.g = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %i.f)
  ret double %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_average_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fadd double %0, %1
  %i.b = fmul double %i.a, 5.000000e-01
  ret double %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @cluster_minimum_double(double noundef %0, double noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = fcmp olt double %0, %1
  %i.b = select i1 %i.a, double %0, double %1
  ret double %i.b
}

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %i.d = load i32, ptr @njob, align 4, !tbaa !4
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
end_hunk_6
begin_hunk_7_@veryfastsupg:bb.a
scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !24
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double 1.000000e+06, double 5.000000e-01)
  %i.af = fptosi double %i.ae to i32
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count270
  br i1 %exitcond.not, label %._crit_edge.us, label %scalar.ph, !llvm.loop !200

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %.preheader207, label %.preheader208.us, !llvm.loop !201

.preheader207:                                    ; preds = %._crit_edge.us
  %.pre = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count275 = zext nneg i32 %0 to i64
  %min.iters.check324 = icmp ult i32 %0, 4
  br i1 %min.iters.check324, label %scalar.ph323.preheader, label %vector.ph325

vector.ph325:                                     ; preds = %.preheader207
  %n.vec327 = and i64 %wide.trip.count270, 2147483644 ; 3 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body328 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph325 ], [ %vec.ind.next, %vector.body328 ] ; 3 uses
  %vec.ind330 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph325 ], [ %vec.ind.next334, %vector.body328 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.al = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.am = shufflevector <2 x i32> %i.ak, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.am, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.ah, align 4, !tbaa !4
  %i.an = shufflevector <2 x i32> %i.al, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec332 = add <4 x i32> %i.an, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec332, ptr %i.aj, align 4, !tbaa !4
  %index.next333 = add nuw i64 %index329, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next334 = add <2 x i32> %vec.ind330, splat (i32 4)
  %i.ao = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.ao, label %middle.block335, label %vector.body328, !llvm.loop !202

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %n.vec327, %wide.trip.count270
  br i1 %cmp.n336, label %._crit_edge217, label %scalar.ph323.preheader

scalar.ph323.preheader:                           ; preds = %.preheader207, %middle.block335
  %indvars.iv272.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec327, %middle.block335 ]
  br label %scalar.ph323

scalar.ph323:                                     ; preds = %scalar.ph323.preheader, %scalar.ph323
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph323 ], [ %indvars.iv272.ph, %scalar.ph323.preheader ] ; 3 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv272 ; 2 uses
  %i.aq = trunc nuw nsw i64 %indvars.iv.next273 to i32
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !168
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.as = trunc i64 %indvars.iv272 to i32
  %i.at = add i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !170
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge217, label %scalar.ph323, !llvm.loop !203

._crit_edge217.thread:                            ; preds = %bb.c
  %.pre309 = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164
  %i.au = sext i32 %0 to i64
  %i.av = getelementptr [8 x i8], ptr %.pre309, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  store i32 -1, ptr %i.aw, align 4, !tbaa !168
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc312 = tail call i32 @fputc(i32 10, ptr %i.ax) ; 0 uses
  br label %._crit_edge217.._crit_edge262_crit_edge

._crit_edge217:                                   ; preds = %scalar.ph323, %middle.block335
  %i.ay = add nsw i32 %0, -1                      ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.az
  store i32 -1, ptr %i.ba, align 4, !tbaa !168
  %i.bb = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.bc = zext nneg i32 %0 to i64
  %i.bd = shl nuw nsw i64 %i.bc, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bb, i8 0, i64 %i.bd, i1 false), !tbaa !24
  %i.be = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.bf = zext nneg i32 %0 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 -1, i64 %i.bg, i1 false), !tbaa !4
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bh) ; 0 uses
  %.not317 = icmp eq i32 %0, 1
  br i1 %.not317, label %._crit_edge217.._crit_edge262_crit_edge, label %.lr.ph261.preheader

._crit_edge217.._crit_edge262_crit_edge:          ; preds = %._crit_edge217.thread, %._crit_edge217
  %.pre293 = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %._crit_edge217
  %wide.trip.count286 = zext nneg i32 %i.ay to i64
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.t
  %indvars.iv283 = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next284, %bb.t ] ; 4 uses
  %.0156259 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1157.lcssa, %bb.t ] ; 2 uses
  %.0160258 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1161.lcssa, %bb.t ] ; 2 uses
  %i.bi = trunc nuw nsw i64 %indvars.iv283 to i32 ; 3 uses
  %i.bj = urem i32 %i.bi, 10
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph261
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.24, i32 noundef %i.bi, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph261
  %i.bn = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164 ; 7 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !168 ; 2 uses
  %.not191222 = icmp eq i32 %i.bo, -1
  br i1 %.not191222, label %._crit_edge227, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bp = load ptr, ptr @veryfastsupg.eff, align 8, !tbaa !87
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bq = sext i32 %i.bt to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !168 ; 2 uses
  %.not191 = icmp eq i32 %i.bs, -1
  br i1 %.not191, label %._crit_edge227.loopexit, label %.preheader, !llvm.loop !204

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.bt = phi i32 [ %i.bo, %.preheader.lr.ph ], [ %i.bs, %.loopexit ] ; 3 uses
  %i.bu = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bq, %.loopexit ]
  %.4226 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bt, %.loopexit ]
  %.1157225 = phi i32 [ %.0156259, %.preheader.lr.ph ], [ %.3159, %.loopexit ]
  %.1161224 = phi i32 [ %.0160258, %.preheader.lr.ph ], [ %.3163, %.loopexit ]
  %.0165223 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2167, %.loopexit ]
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.1155221 = phi i32 [ %i.bt, %.preheader ], [ %i.cc, %bb.f ] ; 2 uses
  %.2158220 = phi i32 [ %.1157225, %.preheader ], [ %.3159, %bb.f ]
  %.2162219 = phi i32 [ %.1161224, %.preheader ], [ %.3163, %bb.f ]
  %.1166218 = phi i32 [ %.0165223, %.preheader ], [ %.2167, %bb.f ] ; 2 uses
  %i.bx = sext i32 %.1155221 to i64               ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4  ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %.1166218           ; 2 uses
  %.2167 = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %.1166218) ; 3 uses
  %.3163 = select i1 %i.ca, i32 %.4226, i32 %.2162219 ; 3 uses
  %.3159 = select i1 %i.ca, i32 %.1155221, i32 %.2158220 ; 3 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bx
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !168 ; 2 uses
  %.not200 = icmp eq i32 %i.cc, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !205

._crit_edge227.loopexit:                          ; preds = %.loopexit
  %i.cd = sitofp i32 %.2167 to double
  %i.ce = fmul nnan double %i.cd, 5.000000e-01
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit, %bb.e
  %.0165.lcssa = phi double [ 2.000000e+06, %bb.e ], [ %i.ce, %._crit_edge227.loopexit ]
  %.1161.lcssa = phi i32 [ %.0160258, %bb.e ], [ %.3163, %._crit_edge227.loopexit ] ; 5 uses
  %.1157.lcssa = phi i32 [ %.0156259, %bb.e ], [ %.3159, %._crit_edge227.loopexit ] ; 6 uses
  %i.cf = fdiv double %.0165.lcssa, 1.000000e+06  ; 3 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv283
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !87 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !89 ; 4 uses
  %i.cj = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89 ; 2 uses
  %i.ck = sext i32 %.1161.lcssa to i64            ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 2 uses
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge227
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store i32 %.1161.lcssa, ptr %i.ci, align 4, !tbaa !4
  store i32 -1, ptr %i.co, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge227
  %i.cp = sext i32 %i.cm to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !87 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !89 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !89 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 4, !tbaa !4  ; 3 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !4  ; 3 uses
  %i.cx = icmp sgt i32 %i.cv, %i.cw               ; 2 uses
  %4 = tail call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cw) ; 2 uses
  %i.cy = tail call i32 @llvm.smax.i32(i32 %i.cv, i32 %i.cw)
  %.201 = select i1 %i.cx, ptr %i.cs, ptr %i.cu   ; 2 uses
  %.not192231 = icmp eq i32 %4, -1
  br i1 %.not192231, label %.preheader205, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %bb.h
  %. = select i1 %i.cx, ptr %i.cu, ptr %i.cs
  br label %.lr.ph235

.preheader205.loopexit:                           ; preds = %.lr.ph235
  %.pre288 = load i32, ptr %.201, align 4, !tbaa !4
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.h
  %i.cz = phi i32 [ %i.cy, %bb.h ], [ %.pre288, %.preheader205.loopexit ] ; 2 uses
  %.0175.lcssa = phi ptr [ %i.ci, %bb.h ], [ %i.dc, %.preheader205.loopexit ] ; 2 uses
  %.not193237 = icmp eq i32 %i.cz, -1
  br i1 %.not193237, label %._crit_edge241, label %.lr.ph240

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %i.da = phi i32 [ %i.dd, %.lr.ph235 ], [ %4, %.lr.ph235.preheader ]
  %.0171233 = phi ptr [ %i.db, %.lr.ph235 ], [ %., %.lr.ph235.preheader ]
  %.0175232 = phi ptr [ %i.dc, %.lr.ph235 ], [ %i.ci, %.lr.ph235.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0171233, i64 4 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0175232, i64 4 ; 2 uses
  store i32 %i.da, ptr %.0175232, align 4, !tbaa !4
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !4  ; 2 uses
  %.not192 = icmp eq i32 %i.dd, -1
  br i1 %.not192, label %.preheader205.loopexit, label %.lr.ph235, !llvm.loop !206

.lr.ph240:                                        ; preds = %.preheader205, %.lr.ph240
  %i.de = phi i32 [ %i.dh, %.lr.ph240 ], [ %i.cz, %.preheader205 ]
  %.1172239 = phi ptr [ %i.df, %.lr.ph240 ], [ %.201, %.preheader205 ]
  %.1176238 = phi ptr [ %i.dg, %.lr.ph240 ], [ %.0175.lcssa, %.preheader205 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1172239, i64 4 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.1176238, i64 4 ; 2 uses
  store i32 %i.de, ptr %.1176238, align 4, !tbaa !4
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !4  ; 2 uses
  %.not193 = icmp eq i32 %i.dh, -1
  br i1 %.not193, label %._crit_edge241, label %.lr.ph240, !llvm.loop !207

._crit_edge241:                                   ; preds = %.lr.ph240, %.preheader205
  %.1176.lcssa = phi ptr [ %.0175.lcssa, %.preheader205 ], [ %i.dg, %.lr.ph240 ]
  store i32 -1, ptr %.1176.lcssa, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge241, %bb.g
  %i.di = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !89 ; 4 uses
  %i.dk = sext i32 %.1157.lcssa to i64            ; 4 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %i.dn = icmp eq i32 %i.dm, -1
  br i1 %i.dn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %.1157.lcssa, ptr %i.dj, align 4, !tbaa !4
  store i32 -1, ptr %i.do, align 4, !tbaa !4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dp = sext i32 %i.dm to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !87 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !89 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !89 ; 3 uses
  %i.dv = load i32, ptr %i.ds, align 4, !tbaa !4  ; 3 uses
  %i.dw = load i32, ptr %i.du, align 4, !tbaa !4  ; 3 uses
  %i.dx = icmp sgt i32 %i.dv, %i.dw               ; 2 uses
  %5 = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.dw) ; 2 uses
  %i.dy = tail call i32 @llvm.smax.i32(i32 %i.dv, i32 %i.dw)
  %.203 = select i1 %i.dx, ptr %i.ds, ptr %i.du   ; 2 uses
  %.not194243 = icmp eq i32 %5, -1
  br i1 %.not194243, label %.preheader204, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.k
  %.202 = select i1 %i.dx, ptr %i.du, ptr %i.ds
  br label %.lr.ph247

.preheader204.loopexit:                           ; preds = %.lr.ph247
  %.pre289 = load i32, ptr %.203, align 4, !tbaa !4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.k
  %i.dz = phi i32 [ %i.dy, %bb.k ], [ %.pre289, %.preheader204.loopexit ] ; 2 uses
  %.2177.lcssa = phi ptr [ %i.dj, %bb.k ], [ %i.ec, %.preheader204.loopexit ] ; 2 uses
  %.not195249 = icmp eq i32 %i.dz, -1
  br i1 %.not195249, label %._crit_edge253, label %.lr.ph252

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %i.ea = phi i32 [ %i.ed, %.lr.ph247 ], [ %5, %.lr.ph247.preheader ]
  %.2173245 = phi ptr [ %i.eb, %.lr.ph247 ], [ %.202, %.lr.ph247.preheader ]
  %.2177244 = phi ptr [ %i.ec, %.lr.ph247 ], [ %i.dj, %.lr.ph247.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2173245, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.2177244, i64 4 ; 2 uses
  store i32 %i.ea, ptr %.2177244, align 4, !tbaa !4
  %i.ed = load i32, ptr %i.eb, align 4, !tbaa !4  ; 2 uses
  %.not194 = icmp eq i32 %i.ed, -1
  br i1 %.not194, label %.preheader204.loopexit, label %.lr.ph247, !llvm.loop !208

.lr.ph252:                                        ; preds = %.preheader204, %.lr.ph252
  %i.ee = phi i32 [ %i.eh, %.lr.ph252 ], [ %i.dz, %.preheader204 ]
  %.3174251 = phi ptr [ %i.ef, %.lr.ph252 ], [ %.203, %.preheader204 ]
  %.3178250 = phi ptr [ %i.eg, %.lr.ph252 ], [ %.2177.lcssa, %.preheader204 ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.3174251, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.3178250, i64 4 ; 2 uses
  store i32 %i.ee, ptr %.3178250, align 4, !tbaa !4
  %i.eh = load i32, ptr %i.ef, align 4, !tbaa !4  ; 2 uses
  %.not195 = icmp eq i32 %i.eh, -1
  br i1 %.not195, label %._crit_edge253, label %.lr.ph252, !llvm.loop !209

._crit_edge253:                                   ; preds = %.lr.ph252, %.preheader204
  %.3178.lcssa = phi ptr [ %.2177.lcssa, %.preheader204 ], [ %i.eg, %.lr.ph252 ]
  store i32 -1, ptr %.3178.lcssa, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge253, %bb.j
  %i.ei = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52 ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ck ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !24
  %i.el = fsub double %i.cf, %i.ek
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv283
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !52 ; 2 uses
  store double %i.el, ptr %i.en, align 8, !tbaa !24
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.dk
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !24
  %i.eq = fsub double %i.cf, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store double %i.eq, ptr %i.er, align 8, !tbaa !24
  store double %i.cf, ptr %i.ej, align 8, !tbaa !24
  store i32 %i.bi, ptr %i.cl, align 4, !tbaa !4
  %i.es = load ptr, ptr @veryfastsupg.eff, align 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.q
  %.5255 = phi i32 [ 0, %bb.l ], [ %i.fm, %bb.q ] ; 8 uses
  %.not198 = icmp eq i32 %.5255, %.1161.lcssa
  %.not199 = icmp eq i32 %.5255, %.1157.lcssa
  %or.cond = select i1 %.not198, i1 true, i1 %.not199
  br i1 %or.cond, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.et = icmp slt i32 %.5255, %.1161.lcssa
  br i1 %i.et, label %._crit_edge294, label %bb.o

._crit_edge294:                                   ; preds = %bb.n
  %.pre295 = sext i32 %.5255 to i64               ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.1157..5 = tail call i32 @llvm.smax.i32(i32 %.5255, i32 %.1157.lcssa)
  %.5..1157 = tail call i32 @llvm.smin.i32(i32 %.5255, i32 %.1157.lcssa)
  %.pre290 = sext i32 %.5255 to i64
  %.pre291 = sext i32 %.1157..5 to i64
  %.pre297 = sext i32 %.5..1157 to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge294, %bb.o
  %.pre-phi298 = phi i64 [ %.pre295, %._crit_edge294 ], [ %.pre297, %bb.o ]
  %.pre-phi296 = phi i64 [ %.pre295, %._crit_edge294 ], [ %i.ck, %bb.o ]
  %.pre-phi292 = phi i64 [ %i.dk, %._crit_edge294 ], [ %.pre291, %bb.o ]
  %.pre-phi = phi i64 [ %i.ck, %._crit_edge294 ], [ %.pre290, %bb.o ]
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.pre-phi296
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !89
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.ev, i64 %.pre-phi ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !4  ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.es, i64 %.pre-phi298
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !89
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %.pre-phi292
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !4  ; 2 uses
  %i.fc = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 %i.fb)
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = add nsw i32 %i.fb, %i.ex
  %i.ff = sitofp i32 %i.fe to double
  %i.fg = fmul nnan double %i.ff, 5.000000e-01
  %i.fh = fmul nnan double %i.fg, 1.000000e-01
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.fd, double 9.000000e-01, double %i.fh)
  %i.fj = fptosi double %i.fi to i32
  store i32 %i.fj, ptr %i.ew, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.fk = sext i32 %.5255 to i64
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !168 ; 2 uses
  %.not196 = icmp eq i32 %i.fm, -1
  br i1 %.not196, label %bb.r, label %bb.m, !llvm.loop !210

bb.r:                                             ; preds = %bb.q
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.dk ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !170 ; 2 uses
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !168 ; 3 uses
  %i.fr = sext i32 %i.fp to i64
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.fr
  store i32 %i.fq, ptr %i.fs, align 4, !tbaa !168
  %.not197 = icmp eq i32 %i.fq, -1
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ft = sext i32 %i.fq to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 %i.fp, ptr %i.fv, align 4, !tbaa !170
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge262, label %.lr.ph261, !llvm.loop !211

._crit_edge262:                                   ; preds = %bb.t, %._crit_edge217.._crit_edge262_crit_edge
  %i.fw = phi ptr [ %.pre293, %._crit_edge217.._crit_edge262_crit_edge ], [ %i.es, %bb.t ]
  tail call void @FreeIntMtx(ptr noundef %i.fw) #33
  store ptr null, ptr @veryfastsupg.eff, align 8, !tbaa !87
  %i.fx = load ptr, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.fx) #33
  store ptr null, ptr @veryfastsupg.tmptmplen, align 8, !tbaa !52
  %i.fy = load ptr, ptr @veryfastsupg.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.fy) #33
  store ptr null, ptr @veryfastsupg.hist, align 8, !tbaa !89
  %i.fz = load ptr, ptr @veryfastsupg.ac, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.fz) #33
  store ptr null, ptr @veryfastsupg.ac, align 8, !tbaa !164
  ret void
}

declare ptr @AllocateIntMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

declare void @FreeIntMtx(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @veryfastsupg_int(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateIntMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  %i.d = load i32, ptr @njob, align 4, !tbaa !4
  %i.e = tail call ptr @AllocateIntVec(i32 noundef %i.d) #33
  store ptr %i.e, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = tail call ptr @AllocateIntVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.h = load i32, ptr @njob, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34
  store ptr %i.k, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = icmp sgt i32 %0, 0
  br i1 %i.l, label %.preheader208.lr.ph, label %._crit_edge217.thread

.preheader208.lr.ph:                              ; preds = %bb.c
  %i.m = load ptr, ptr @veryfastsupg_int.eff, align 8
  %wide.trip.count270 = zext nneg i32 %0 to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %0, 8
  %n.vec = and i64 %wide.trip.count270, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count270
  %xtraiter = and i64 %wide.trip.count270, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader208.us

.preheader208.us:                                 ; preds = %._crit_edge.us, %.preheader208.lr.ph
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %._crit_edge.us ], [ 0, %.preheader208.lr.ph ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv267
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !89   ; 7 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv267
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !89   ; 7 uses
  %i.r = ptrtoaddr ptr %i.q to i64
  %i.s = ptrtoaddr ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  %diff.check = icmp ult i64 %i.t, 32
  %or.cond340 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond340, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader208.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader208.us ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !4
  %wide.load322 = load <4 x i32>, ptr %i.v, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %wide.load, ptr %i.w, align 4, !tbaa !4
end_hunk_7
begin_hunk_8_@veryfastsupg_int:bb.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.1
  store i32 %i.al, ptr %i.am, align 4, !tbaa !4
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.2
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next.2
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count270
  br i1 %exitcond.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !214

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %.preheader207, label %.preheader208.us, !llvm.loop !215

.preheader207:                                    ; preds = %._crit_edge.us
  %.pre = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164 ; 4 uses
  %wide.trip.count275 = zext nneg i32 %0 to i64
  %min.iters.check324 = icmp ult i32 %0, 4
  br i1 %min.iters.check324, label %scalar.ph323.preheader, label %vector.ph325

vector.ph325:                                     ; preds = %.preheader207
  %n.vec327 = and i64 %wide.trip.count270, 2147483644 ; 3 uses
  br label %vector.body328

vector.body328:                                   ; preds = %vector.body328, %vector.ph325
  %index329 = phi i64 [ 0, %vector.ph325 ], [ %index.next333, %vector.body328 ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph325 ], [ %vec.ind.next, %vector.body328 ] ; 3 uses
  %vec.ind330 = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph325 ], [ %vec.ind.next334, %vector.body328 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %index329
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.au = trunc <2 x i64> %vec.ind to <2 x i32>
  %i.av = shufflevector <2 x i32> %i.at, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec = add <4 x i32> %i.av, <i32 1, i32 -1, i32 1, i32 -1>
  store <4 x i32> %interleaved.vec, ptr %i.aq, align 4, !tbaa !4
  %i.aw = shufflevector <2 x i32> %i.au, <2 x i32> %vec.ind330, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %interleaved.vec332 = add <4 x i32> %i.aw, <i32 3, i32 1, i32 3, i32 1>
  store <4 x i32> %interleaved.vec332, ptr %i.as, align 4, !tbaa !4
  %index.next333 = add nuw i64 %index329, 4       ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %vec.ind.next334 = add <2 x i32> %vec.ind330, splat (i32 4)
  %i.ax = icmp eq i64 %index.next333, %n.vec327
  br i1 %i.ax, label %middle.block335, label %vector.body328, !llvm.loop !216

middle.block335:                                  ; preds = %vector.body328
  %cmp.n336 = icmp eq i64 %n.vec327, %wide.trip.count270
  br i1 %cmp.n336, label %._crit_edge217, label %scalar.ph323.preheader

scalar.ph323.preheader:                           ; preds = %.preheader207, %middle.block335
  %indvars.iv272.ph = phi i64 [ 0, %.preheader207 ], [ %n.vec327, %middle.block335 ]
  br label %scalar.ph323

scalar.ph323:                                     ; preds = %scalar.ph323.preheader, %scalar.ph323
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %scalar.ph323 ], [ %indvars.iv272.ph, %scalar.ph323.preheader ] ; 3 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv272 ; 2 uses
  %i.az = trunc nuw nsw i64 %indvars.iv.next273 to i32
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !168
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = trunc i64 %indvars.iv272 to i32
  %i.bc = add i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !170
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge217, label %scalar.ph323, !llvm.loop !217

._crit_edge217.thread:                            ; preds = %bb.c
  %.pre309 = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  %i.bd = sext i32 %0 to i64
  %i.be = getelementptr [8 x i8], ptr %.pre309, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  store i32 -1, ptr %i.bf, align 4, !tbaa !168
  %i.bg = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc312 = tail call i32 @fputc(i32 10, ptr %i.bg) ; 0 uses
  br label %._crit_edge217.._crit_edge262_crit_edge

._crit_edge217:                                   ; preds = %scalar.ph323, %middle.block335
  %i.bh = add nsw i32 %0, -1                      ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.bi
  store i32 -1, ptr %i.bj, align 4, !tbaa !168
  %i.bk = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.bl = zext nneg i32 %0 to i64
  %i.bm = shl nuw nsw i64 %i.bl, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bk, i8 0, i64 %i.bm, i1 false), !tbaa !4
  %i.bn = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.bo = zext nneg i32 %0 to i64
  %i.bp = shl nuw nsw i64 %i.bo, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bn, i8 -1, i64 %i.bp, i1 false), !tbaa !4
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !15
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bq) ; 0 uses
  %.not317 = icmp eq i32 %0, 1
  br i1 %.not317, label %._crit_edge217.._crit_edge262_crit_edge, label %.lr.ph261.preheader

._crit_edge217.._crit_edge262_crit_edge:          ; preds = %._crit_edge217.thread, %._crit_edge217
  %.pre293 = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  br label %._crit_edge262

.lr.ph261.preheader:                              ; preds = %._crit_edge217
  %wide.trip.count286 = zext nneg i32 %i.bh to i64
  br label %.lr.ph261

.lr.ph261:                                        ; preds = %.lr.ph261.preheader, %bb.t
  %indvars.iv283 = phi i64 [ 0, %.lr.ph261.preheader ], [ %indvars.iv.next284, %bb.t ] ; 4 uses
  %.0156259 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1157.lcssa, %bb.t ] ; 2 uses
  %.0160258 = phi i32 [ -1, %.lr.ph261.preheader ], [ %.1161.lcssa, %bb.t ] ; 2 uses
  %i.br = trunc nuw nsw i64 %indvars.iv283 to i32 ; 3 uses
  %i.bs = urem i32 %i.br, 10
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph261
  %i.bu = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.bv = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bu, ptr noundef nonnull @.str.24, i32 noundef %i.br, i32 noundef %0) #31 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph261
  %i.bw = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164 ; 7 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !168 ; 2 uses
  %.not191222 = icmp eq i32 %i.bx, -1
  br i1 %.not191222, label %._crit_edge227, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.by = load ptr, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  br label %.preheader

.loopexit:                                        ; preds = %bb.f
  %i.bz = sext i32 %i.cc to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !168 ; 2 uses
  %.not191 = icmp eq i32 %i.cb, -1
  br i1 %.not191, label %._crit_edge227.loopexit, label %.preheader, !llvm.loop !218

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %i.cc = phi i32 [ %i.bx, %.preheader.lr.ph ], [ %i.cb, %.loopexit ] ; 3 uses
  %i.cd = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bz, %.loopexit ]
  %.4226 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.cc, %.loopexit ]
  %.1157225 = phi i32 [ %.0156259, %.preheader.lr.ph ], [ %.3159, %.loopexit ]
  %.1161224 = phi i32 [ %.0160258, %.preheader.lr.ph ], [ %.3163, %.loopexit ]
  %.0164223 = phi i32 [ 4000000, %.preheader.lr.ph ], [ %.2166, %.loopexit ]
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !89
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  %.1155221 = phi i32 [ %i.cc, %.preheader ], [ %i.cl, %bb.f ] ; 2 uses
  %.2158220 = phi i32 [ %.1157225, %.preheader ], [ %.3159, %bb.f ]
  %.2162219 = phi i32 [ %.1161224, %.preheader ], [ %.3163, %bb.f ]
  %.1165218 = phi i32 [ %.0164223, %.preheader ], [ %.2166, %bb.f ] ; 2 uses
  %i.cg = sext i32 %.1155221 to i64               ; 2 uses
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !4  ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %.1165218           ; 2 uses
  %.2166 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %.1165218) ; 3 uses
  %.3163 = select i1 %i.cj, i32 %.4226, i32 %.2162219 ; 3 uses
  %.3159 = select i1 %i.cj, i32 %.1155221, i32 %.2158220 ; 3 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.cg
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !168 ; 2 uses
  %.not200 = icmp eq i32 %i.cl, -1
  br i1 %.not200, label %.loopexit, label %bb.f, !llvm.loop !219

._crit_edge227.loopexit:                          ; preds = %.loopexit
  %i.cm = sitofp i32 %.2166 to double
  %i.cn = fmul nnan double %i.cm, 5.000000e-01
  %i.co = fptosi double %i.cn to i32
  br label %._crit_edge227

._crit_edge227:                                   ; preds = %._crit_edge227.loopexit, %bb.e
  %.0164.lcssa = phi i32 [ 2000000, %bb.e ], [ %i.co, %._crit_edge227.loopexit ] ; 3 uses
  %.1161.lcssa = phi i32 [ %.0160258, %bb.e ], [ %.3163, %._crit_edge227.loopexit ] ; 5 uses
  %.1157.lcssa = phi i32 [ %.0156259, %bb.e ], [ %.3159, %._crit_edge227.loopexit ] ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv283
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !87 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !89 ; 4 uses
  %i.cs = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89 ; 2 uses
  %i.ct = sext i32 %.1161.lcssa to i64            ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4  ; 2 uses
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge227
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  store i32 %.1161.lcssa, ptr %i.cr, align 4, !tbaa !4
  store i32 -1, ptr %i.cx, align 4, !tbaa !4
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge227
  %i.cy = sext i32 %i.cv to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !87 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !89 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !89 ; 3 uses
  %i.de = load i32, ptr %i.db, align 4, !tbaa !4  ; 3 uses
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !4  ; 3 uses
  %i.dg = icmp sgt i32 %i.de, %i.df               ; 2 uses
  %4 = tail call i32 @llvm.smin.i32(i32 %i.de, i32 %i.df) ; 2 uses
  %i.dh = tail call i32 @llvm.smax.i32(i32 %i.de, i32 %i.df)
  %.201 = select i1 %i.dg, ptr %i.db, ptr %i.dd   ; 2 uses
  %.not192231 = icmp eq i32 %4, -1
  br i1 %.not192231, label %.preheader205, label %.lr.ph235.preheader

.lr.ph235.preheader:                              ; preds = %bb.h
  %. = select i1 %i.dg, ptr %i.dd, ptr %i.db
  br label %.lr.ph235

.preheader205.loopexit:                           ; preds = %.lr.ph235
  %.pre288 = load i32, ptr %.201, align 4, !tbaa !4
  br label %.preheader205

.preheader205:                                    ; preds = %.preheader205.loopexit, %bb.h
  %i.di = phi i32 [ %i.dh, %bb.h ], [ %.pre288, %.preheader205.loopexit ] ; 2 uses
  %.0174.lcssa = phi ptr [ %i.cr, %bb.h ], [ %i.dl, %.preheader205.loopexit ] ; 2 uses
  %.not193237 = icmp eq i32 %i.di, -1
  br i1 %.not193237, label %._crit_edge241, label %.lr.ph240

.lr.ph235:                                        ; preds = %.lr.ph235.preheader, %.lr.ph235
  %i.dj = phi i32 [ %i.dm, %.lr.ph235 ], [ %4, %.lr.ph235.preheader ]
  %.0170233 = phi ptr [ %i.dk, %.lr.ph235 ], [ %., %.lr.ph235.preheader ]
  %.0174232 = phi ptr [ %i.dl, %.lr.ph235 ], [ %i.cr, %.lr.ph235.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0170233, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0174232, i64 4 ; 2 uses
  store i32 %i.dj, ptr %.0174232, align 4, !tbaa !4
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !4  ; 2 uses
  %.not192 = icmp eq i32 %i.dm, -1
  br i1 %.not192, label %.preheader205.loopexit, label %.lr.ph235, !llvm.loop !220

.lr.ph240:                                        ; preds = %.preheader205, %.lr.ph240
  %i.dn = phi i32 [ %i.dq, %.lr.ph240 ], [ %i.di, %.preheader205 ]
  %.1171239 = phi ptr [ %i.do, %.lr.ph240 ], [ %.201, %.preheader205 ]
  %.1175238 = phi ptr [ %i.dp, %.lr.ph240 ], [ %.0174.lcssa, %.preheader205 ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1171239, i64 4 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.1175238, i64 4 ; 2 uses
  store i32 %i.dn, ptr %.1175238, align 4, !tbaa !4
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !4  ; 2 uses
  %.not193 = icmp eq i32 %i.dq, -1
  br i1 %.not193, label %._crit_edge241, label %.lr.ph240, !llvm.loop !221

._crit_edge241:                                   ; preds = %.lr.ph240, %.preheader205
  %.1175.lcssa = phi ptr [ %.0174.lcssa, %.preheader205 ], [ %i.dp, %.lr.ph240 ]
  store i32 -1, ptr %.1175.lcssa, align 4, !tbaa !4
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge241, %bb.g
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !89 ; 4 uses
  %i.dt = sext i32 %.1157.lcssa to i64            ; 4 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 2 uses
  %i.dw = icmp eq i32 %i.dv, -1
  br i1 %i.dw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %.1157.lcssa, ptr %i.ds, align 4, !tbaa !4
  store i32 -1, ptr %i.dx, align 4, !tbaa !4
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.dy = sext i32 %i.dv to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !87 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !89 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !89 ; 3 uses
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !4  ; 3 uses
  %i.ef = load i32, ptr %i.ed, align 4, !tbaa !4  ; 3 uses
  %i.eg = icmp sgt i32 %i.ee, %i.ef               ; 2 uses
  %5 = tail call i32 @llvm.smin.i32(i32 %i.ee, i32 %i.ef) ; 2 uses
  %i.eh = tail call i32 @llvm.smax.i32(i32 %i.ee, i32 %i.ef)
  %.203 = select i1 %i.eg, ptr %i.eb, ptr %i.ed   ; 2 uses
  %.not194243 = icmp eq i32 %5, -1
  br i1 %.not194243, label %.preheader204, label %.lr.ph247.preheader

.lr.ph247.preheader:                              ; preds = %bb.k
  %.202 = select i1 %i.eg, ptr %i.ed, ptr %i.eb
  br label %.lr.ph247

.preheader204.loopexit:                           ; preds = %.lr.ph247
  %.pre289 = load i32, ptr %.203, align 4, !tbaa !4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.k
  %i.ei = phi i32 [ %i.eh, %bb.k ], [ %.pre289, %.preheader204.loopexit ] ; 2 uses
  %.2176.lcssa = phi ptr [ %i.ds, %bb.k ], [ %i.el, %.preheader204.loopexit ] ; 2 uses
  %.not195249 = icmp eq i32 %i.ei, -1
  br i1 %.not195249, label %._crit_edge253, label %.lr.ph252

.lr.ph247:                                        ; preds = %.lr.ph247.preheader, %.lr.ph247
  %i.ej = phi i32 [ %i.em, %.lr.ph247 ], [ %5, %.lr.ph247.preheader ]
  %.2172245 = phi ptr [ %i.ek, %.lr.ph247 ], [ %.202, %.lr.ph247.preheader ]
  %.2176244 = phi ptr [ %i.el, %.lr.ph247 ], [ %i.ds, %.lr.ph247.preheader ] ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.2172245, i64 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.2176244, i64 4 ; 2 uses
  store i32 %i.ej, ptr %.2176244, align 4, !tbaa !4
  %i.em = load i32, ptr %i.ek, align 4, !tbaa !4  ; 2 uses
  %.not194 = icmp eq i32 %i.em, -1
  br i1 %.not194, label %.preheader204.loopexit, label %.lr.ph247, !llvm.loop !222

.lr.ph252:                                        ; preds = %.preheader204, %.lr.ph252
  %i.en = phi i32 [ %i.eq, %.lr.ph252 ], [ %i.ei, %.preheader204 ]
  %.3173251 = phi ptr [ %i.eo, %.lr.ph252 ], [ %.203, %.preheader204 ]
  %.3177250 = phi ptr [ %i.ep, %.lr.ph252 ], [ %.2176.lcssa, %.preheader204 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.3173251, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.3177250, i64 4 ; 2 uses
  store i32 %i.en, ptr %.3177250, align 4, !tbaa !4
  %i.eq = load i32, ptr %i.eo, align 4, !tbaa !4  ; 2 uses
  %.not195 = icmp eq i32 %i.eq, -1
  br i1 %.not195, label %._crit_edge253, label %.lr.ph252, !llvm.loop !223

._crit_edge253:                                   ; preds = %.lr.ph252, %.preheader204
  %.3177.lcssa = phi ptr [ %.2176.lcssa, %.preheader204 ], [ %i.ep, %.lr.ph252 ]
  store i32 -1, ptr %.3177.lcssa, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge253, %bb.j
  %i.er = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.ct ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = sub nsw i32 %.0164.lcssa, %i.et
  %i.ev = sitofp i32 %i.eu to double
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv283
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !52 ; 2 uses
  store double %i.ev, ptr %i.ex, align 8, !tbaa !24
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.dt
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !4
  %i.fa = sub nsw i32 %.0164.lcssa, %i.ez
  %i.fb = sitofp i32 %i.fa to double
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store double %i.fb, ptr %i.fc, align 8, !tbaa !24
  store i32 %.0164.lcssa, ptr %i.es, align 4, !tbaa !4
  store i32 %i.br, ptr %i.cu, align 4, !tbaa !4
  %i.fd = load ptr, ptr @veryfastsupg_int.eff, align 8 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.q
  %.5255 = phi i32 [ 0, %bb.l ], [ %i.fz, %bb.q ] ; 8 uses
  %.not198 = icmp eq i32 %.5255, %.1161.lcssa
  %.not199 = icmp eq i32 %.5255, %.1157.lcssa
  %or.cond = select i1 %.not198, i1 true, i1 %.not199
  br i1 %or.cond, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fe = icmp slt i32 %.5255, %.1161.lcssa
  br i1 %i.fe, label %._crit_edge294, label %bb.o

._crit_edge294:                                   ; preds = %bb.n
  %.pre295 = sext i32 %.5255 to i64               ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %.5..1157 = tail call i32 @llvm.smin.i32(i32 %.5255, i32 %.1157.lcssa)
  %.1157..5 = tail call i32 @llvm.smax.i32(i32 %.5255, i32 %.1157.lcssa)
  %.pre290 = sext i32 %.5255 to i64
  %.pre291 = sext i32 %.1157..5 to i64
  %.pre297 = sext i32 %.5..1157 to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge294, %bb.o
  %.pre-phi298 = phi i64 [ %.pre295, %._crit_edge294 ], [ %.pre297, %bb.o ]
  %.pre-phi296 = phi i64 [ %.pre295, %._crit_edge294 ], [ %i.ct, %bb.o ]
  %.pre-phi292 = phi i64 [ %i.dt, %._crit_edge294 ], [ %.pre291, %bb.o ]
  %.pre-phi = phi i64 [ %i.ct, %._crit_edge294 ], [ %.pre290, %bb.o ]
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %.pre-phi296
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !89
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %.pre-phi ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4  ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %.pre-phi298
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !89
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.fk, i64 %.pre-phi292
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !4  ; 2 uses
  %i.fn = tail call i32 @llvm.smin.i32(i32 %i.fi, i32 %i.fm)
  %i.fo = sitofp i32 %i.fn to float
  %i.fp = fpext float %i.fo to double
  %i.fq = add nsw i32 %i.fm, %i.fi
  %i.fr = sitofp i32 %i.fq to float
  %i.fs = fpext nnan ninf float %i.fr to double
  %i.ft = fmul nnan double %i.fs, 5.000000e-01
  %i.fu = fmul nnan double %i.ft, 1.000000e-01
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fp, double 9.000000e-01, double %i.fu)
  %i.fw = fptosi double %i.fv to i32
  store i32 %i.fw, ptr %i.fh, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  %i.fx = sext i32 %.5255 to i64
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !168 ; 2 uses
  %.not196 = icmp eq i32 %i.fz, -1
  br i1 %.not196, label %bb.r, label %bb.m, !llvm.loop !224

bb.r:                                             ; preds = %bb.q
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.dt ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !170 ; 2 uses
  %i.gd = load i32, ptr %i.ga, align 4, !tbaa !168 ; 3 uses
  %i.ge = sext i32 %i.gc to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.ge
  store i32 %i.gd, ptr %i.gf, align 4, !tbaa !168
  %.not197 = icmp eq i32 %i.gd, -1
  br i1 %.not197, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gg = sext i32 %i.gd to i64
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.gg
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %i.gc, ptr %i.gi, align 4, !tbaa !170
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count286
  br i1 %exitcond287.not, label %._crit_edge262, label %.lr.ph261, !llvm.loop !225

._crit_edge262:                                   ; preds = %bb.t, %._crit_edge217.._crit_edge262_crit_edge
  %i.gj = phi ptr [ %.pre293, %._crit_edge217.._crit_edge262_crit_edge ], [ %i.fd, %bb.t ]
  tail call void @FreeIntMtx(ptr noundef %i.gj) #33
  store ptr null, ptr @veryfastsupg_int.eff, align 8, !tbaa !87
  %i.gk = load ptr, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.gk) #33
  store ptr null, ptr @veryfastsupg_int.tmptmplen, align 8, !tbaa !89
  %i.gl = load ptr, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  tail call void @free(ptr noundef %i.gl) #33
  store ptr null, ptr @veryfastsupg_int.hist, align 8, !tbaa !89
  %i.gm = load ptr, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  tail call void @free(ptr noundef %i.gm) #33
  store ptr null, ptr @veryfastsupg_int.ac, align 8, !tbaa !164
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @fastsupg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @fastsupg.eff, align 8, !tbaa !226
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.c = tail call ptr @AllocateFloatMtx(i32 noundef %i.b, i32 noundef %i.b) #33
  store ptr %i.c, ptr @fastsupg.eff, align 8, !tbaa !226
  %i.d = load i32, ptr @njob, align 4, !tbaa !4   ; 2 uses
  %i.e = tail call ptr @AllocateCharMtx(i32 noundef %i.d, i32 noundef %i.d) #33
  store ptr %i.e, ptr @fastsupg.pair, align 8, !tbaa !77
  %i.f = load i32, ptr @njob, align 4, !tbaa !4
  %i.g = tail call ptr @AllocateFloatVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @fastsupg.tmplen, align 8, !tbaa !19
  %i.h = load i32, ptr @njob, align 4, !tbaa !4
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 8) #37
  store ptr %i.j, ptr @fastsupg.ac, align 8, !tbaa !164
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = icmp sgt i32 %0, 0
  br i1 %i.k, label %.preheader173.lr.ph, label %.preheader169.thread

.preheader173.lr.ph:                              ; preds = %bb.c
  %i.l = load ptr, ptr @fastsupg.eff, align 8
  %wide.trip.count229 = zext nneg i32 %0 to i64   ; 18 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count229, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count229
  br label %.preheader173.us

.preheader173.us:                                 ; preds = %._crit_edge.us, %.preheader173.lr.ph
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %._crit_edge.us ], [ 0, %.preheader173.lr.ph ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv226
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv226
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader173.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader173.us ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x double>, ptr %i.q, align 8, !tbaa !24
  %wide.load298 = load <2 x double>, ptr %i.r, align 8, !tbaa !24
  %i.s = fptrunc <2 x double> %wide.load to <2 x float>
  %i.t = fptrunc <2 x double> %wide.load298 to <2 x float>
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <2 x float> %i.s, ptr %i.u, align 4, !tbaa !21
  store <2 x float> %i.t, ptr %i.v, align 4, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
end_hunk_8
