Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 151
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl7inverseEPPdS3_i:bb.a
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit203

.lr.ph.i179:                                      ; preds = %bb.c
  %i.u = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i179
  %indvars.iv.i180 = phi i64 [ 0, %.lr.ph.i179 ], [ %indvars.iv.next.i181, %bb.d ] ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i180
  store ptr %i.v, ptr %i.w, align 8, !tbaa !279
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.e, i1 false)
  %indvars.iv.next.i181 = add nuw nsw i64 %indvars.iv.i180, 1 ; 2 uses
  %exitcond.not.i182 = icmp eq i64 %indvars.iv.next.i181, %i.c
  br i1 %exitcond.not.i182, label %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183, label %bb.d, !llvm.loop !16

_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183: ; preds = %bb.d
  %.not239 = icmp eq i32 %2, 0
  br i1 %.not239, label %.lr.ph.i207.preheader, label %.preheader236.preheader

.preheader236.preheader:                          ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl14AllocateMatrixEii.exit183
  %i.x = add nsw i64 %i.c, -1                     ; 2 uses
  %i.y = add nsw i64 %i.c, -1                     ; 2 uses
  %min.iters.check = icmp ult i32 %i.a, 5
  %n.vec = and i64 %i.y, -4                       ; 3 uses
  %i.z = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236.preheader, %._crit_edge
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %._crit_edge ], [ 1, %.preheader236.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv283
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !279 ; 7 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv283
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !279 ; 7 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = ptrtoaddr ptr %i.ab to i64
  %i.ag = sub i64 %i.af, %i.ae
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond466 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond466, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader236, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader236 ] ; 2 uses
  %i.ah = or disjoint i64 %index, 1               ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !46
  %wide.load376 = load <2 x double>, ptr %i.aj, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <2 x double> %wide.load, ptr %i.ak, align 8, !tbaa !46
  store <2 x double> %wide.load376, ptr %i.al, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !705

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader236, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.preheader236 ], [ %i.z, %middle.block ] ; 4 uses
  %i.an = sub nsw i64 %i.c, %indvars.iv.ph
  %i.ao = sub nsw i64 %i.x, %indvars.iv.ph
  %xtraiter = and i64 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.prol
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.prol
  store double %i.aq, ptr %i.ar, align 8, !tbaa !46
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !706

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp ult i64 %i.ao, 3
  br i1 %i.as, label %._crit_edge, label %scalar.ph

.preheader234.lr.ph:                              ; preds = %._crit_edge
  %.not172243.not = icmp slt i32 %2, %i.m
  %i.at = add nsw i32 %2, -1
  %i.au = zext i32 %i.b to i64                    ; 6 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = or disjoint i32 %i.m, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.aw)
  %i.ax = add i32 %smax, -2
  %i.ay = sub i32 %i.ax, %2
  %i.az = zext i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  %i.bc = add nsw i64 %i.au, -1                   ; 2 uses
  %min.iters.check380 = icmp ult i32 %i.b, 5
  %n.vec382 = and i64 %i.bc, -4                   ; 3 uses
  %i.bd = or disjoint i64 %n.vec382, 1
  %cmp.n389 = icmp eq i64 %i.bc, %n.vec382
  br label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.bf = load double, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store double %i.bf, ptr %i.bg, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !46
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  store double %i.bi, ptr %i.bj, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.1
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !46
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.1
  store double %i.bl, ptr %i.bm, align 8, !tbaa !46
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.2
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !46
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.2
  store double %i.bo, ptr %i.bp, align 8, !tbaa !46
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.c
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !707

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %i.c
  br i1 %exitcond287.not, label %.preheader234.lr.ph, label %.preheader236, !llvm.loop !708

.lr.ph:                                           ; preds = %._crit_edge246, %.preheader234.lr.ph
  %indvars.iv297 = phi i64 [ 1, %.preheader234.lr.ph ], [ %indvars.iv.next298, %._crit_edge246 ] ; 5 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv297
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !279 ; 7 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv297
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !279 ; 7 uses
  %i.bu = ptrtoaddr ptr %i.bt to i64
  %i.bv = ptrtoaddr ptr %i.br to i64
  %i.bw = sub i64 %i.bv, %i.bu
  %diff.check378 = icmp ugt i64 %i.bw, -32
  %or.cond469 = select i1 %min.iters.check380, i1 true, i1 %diff.check378
  br i1 %or.cond469, label %scalar.ph379.preheader, label %vector.body383

vector.body383:                                   ; preds = %.lr.ph, %vector.body383
  %index384 = phi i64 [ %index.next387, %vector.body383 ], [ 0, %.lr.ph ] ; 2 uses
  %i.bx = or disjoint i64 %index384, 1            ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %wide.load385 = load <2 x double>, ptr %i.by, align 8, !tbaa !46
  %wide.load386 = load <2 x double>, ptr %i.bz, align 8, !tbaa !46
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bx ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x double> %wide.load385, ptr %i.ca, align 8, !tbaa !46
  store <2 x double> %wide.load386, ptr %i.cb, align 8, !tbaa !46
  %index.next387 = add nuw i64 %index384, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next387, %n.vec382
  br i1 %i.cc, label %middle.block388, label %vector.body383, !llvm.loop !709

middle.block388:                                  ; preds = %vector.body383
  br i1 %cmp.n389, label %.preheader233, label %scalar.ph379.preheader

scalar.ph379.preheader:                           ; preds = %.lr.ph, %middle.block388
  %indvars.iv289.ph = phi i64 [ 1, %.lr.ph ], [ %i.bd, %middle.block388 ] ; 4 uses
  %i.cd = sub nsw i64 %i.au, %indvars.iv289.ph
  %xtraiter472 = and i64 %i.cd, 3                 ; 2 uses
  %lcmp.mod473.not = icmp eq i64 %xtraiter472, 0
  br i1 %lcmp.mod473.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol

scalar.ph379.prol:                                ; preds = %scalar.ph379.preheader, %scalar.ph379.prol
  %indvars.iv289.prol = phi i64 [ %indvars.iv.next290.prol, %scalar.ph379.prol ], [ %indvars.iv289.ph, %scalar.ph379.preheader ] ; 3 uses
  %prol.iter474 = phi i64 [ %prol.iter474.next, %scalar.ph379.prol ], [ 0, %scalar.ph379.preheader ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv289.prol
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !46
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv289.prol
  store double %i.cf, ptr %i.cg, align 8, !tbaa !46
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.prol, 1 ; 2 uses
  %prol.iter474.next = add i64 %prol.iter474, 1   ; 2 uses
  %prol.iter474.cmp.not = icmp eq i64 %prol.iter474.next, %xtraiter472
  br i1 %prol.iter474.cmp.not, label %scalar.ph379.prol.loopexit, label %scalar.ph379.prol, !llvm.loop !710

scalar.ph379.prol.loopexit:                       ; preds = %scalar.ph379.prol, %scalar.ph379.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %scalar.ph379.preheader ], [ %indvars.iv.next290.prol, %scalar.ph379.prol ]
  %i.ch = sub nsw i64 %indvars.iv289.ph, %i.au
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %.preheader233, label %scalar.ph379

.lr.ph270:                                        ; preds = %._crit_edge246
  %i.cj = or disjoint i32 %i.m, 1
  %i.ck = add i32 %i.m, 2
  %i.cl = or disjoint i32 %i.m, 1
  %i.cm = sext i32 %i.cl to i64                   ; 7 uses
  %i.cn = sext i32 %i.cj to i64
  %wide.trip.count314 = zext i32 %i.ck to i64     ; 4 uses
  %i.co = sext i32 %i.m to i64
  %i.cp = shl nsw i64 %i.co, 3
  %i.cq = add nsw i64 %i.cp, 16                   ; 2 uses
  %3 = shl nuw nsw i64 %wide.trip.count314, 3     ; 2 uses
  %4 = add nsw i64 %i.c, -2
  %5 = add nsw i64 %wide.trip.count314, -1
  %i.cr = or disjoint i32 %i.m, 1
  %i.cs = sext i32 %i.cr to i64
  %6 = or disjoint i32 %i.m, 1
  %7 = sext i32 %6 to i64
  br label %bb.e

.preheader233:                                    ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379, %middle.block388
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv297
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !279 ; 2 uses
  br i1 %.not172243.not, label %.lr.ph245, label %._crit_edge246

.lr.ph245:                                        ; preds = %.preheader233
  %scevgep = getelementptr nuw i8, ptr %i.cu, i64 %i.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.bb, i1 false), !tbaa !46
  br label %._crit_edge246

scalar.ph379:                                     ; preds = %scalar.ph379.prol.loopexit, %scalar.ph379
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.3, %scalar.ph379 ], [ %indvars.iv289.unr, %scalar.ph379.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv289
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !46
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv289
  store double %i.cw, ptr %i.cx, align 8, !tbaa !46
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next290
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !46
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next290
  store double %i.cz, ptr %i.da, align 8, !tbaa !46
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next290.1
  %i.dc = load double, ptr %i.db, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next290.1
  store double %i.dc, ptr %i.dd, align 8, !tbaa !46
  %indvars.iv.next290.2 = add nuw nsw i64 %indvars.iv289, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next290.2
  %i.df = load double, ptr %i.de, align 8, !tbaa !46
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next290.2
  store double %i.df, ptr %i.dg, align 8, !tbaa !46
  %indvars.iv.next290.3 = add nuw nsw i64 %indvars.iv289, 4 ; 2 uses
  %exitcond293.3 = icmp eq i64 %indvars.iv.next290.3, %i.au
  br i1 %exitcond293.3, label %.preheader233, label %scalar.ph379, !llvm.loop !711

._crit_edge246:                                   ; preds = %.preheader233, %.lr.ph245
  %i.dh = trunc nuw nsw i64 %indvars.iv297 to i32
  %i.di = add i32 %i.at, %i.dh
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [8 x i8], ptr %i.cu, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store double 1.000000e+00, ptr %i.dl, align 8, !tbaa !46
  %indvars.iv.next298 = add nuw nsw i64 %indvars.iv297, 1 ; 2 uses
  %exitcond301.not = icmp eq i64 %indvars.iv.next298, %i.c
  br i1 %exitcond301.not, label %.lr.ph270, label %.lr.ph, !llvm.loop !712

.preheader228:                                    ; preds = %._crit_edge266
  %.not163271.not = icmp slt i32 %2, %i.m
  br i1 %.not163271.not, label %.preheader.preheader, label %.lr.ph.i207.preheader

.preheader.preheader:                             ; preds = %.preheader228
  %i.dm = zext i32 %i.b to i64                    ; 4 uses
  %i.dn = shl nuw nsw i64 %i.au, 3
  %i.do = or disjoint i32 %i.m, 1
  %i.dp = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.do)
  %i.dq = add i32 %i.dp, -2
  %i.dr = sub i32 %i.dq, %2                       ; 2 uses
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.ds, 1                ; 2 uses
  %min.iters.check452 = icmp ult i32 %i.dr, 3
  %n.vec454 = and i64 %i.dt, 8589934588           ; 4 uses
  %i.du = add nuw nsw i64 %n.vec454, %i.dm
  %i.dv = or disjoint i64 %n.vec454, 1
  %cmp.n461 = icmp eq i64 %i.dt, %n.vec454
  br label %.preheader

bb.e:                                             ; preds = %.lr.ph270, %._crit_edge266
  %indvar = phi i64 [ 0, %.lr.ph270 ], [ %indvar.next, %._crit_edge266 ] ; 8 uses
  %indvars.iv302 = phi i64 [ 1, %.lr.ph270 ], [ %indvars.iv.next303, %._crit_edge266 ] ; 21 uses
  %i.dw = sub i64 %i.x, %indvar
  %i.dx = shl nuw nsw i64 %indvar, 3
  %i.dy = add nuw i64 %i.dx, 8                    ; 2 uses
  %i.dz = shl nuw nsw i64 %indvar, 3
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv302
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !279 ; 13 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv302 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !46 ; 2 uses
  %i.ee = tail call double @llvm.fabs.f64(double %i.ed) ; 3 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv302 to i32 ; 2 uses
  %xtraiter475 = and i64 %i.dw, 1
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.e
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv302
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !279
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv302
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !46
  %i.ek = tail call double @llvm.fabs.f64(double %i.ej) ; 2 uses
  %i.el = fcmp olt double %i.ee, %i.ek            ; 2 uses
  %.1145.prol = select i1 %i.el, double %i.ek, double %i.ee ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv302 to i32
  %.1.prol = select i1 %i.el, i32 %i.em, i32 %i.ef ; 2 uses
  %indvars.iv.next305.prol = add nuw nsw i64 %indvars.iv302, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.e
  %.1145.lcssa.unr = phi double [ poison, %bb.e ], [ %.1145.prol, %.prol.loopexit.unr-lcssa ]
  %.1.lcssa.unr = phi i32 [ poison, %bb.e ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv304.unr = phi i64 [ %indvars.iv302, %bb.e ], [ %indvars.iv.next305.prol, %.prol.loopexit.unr-lcssa ]
  %.0251.unr = phi i32 [ %i.ef, %bb.e ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %.0144250.unr = phi double [ %i.ee, %bb.e ], [ %.1145.prol, %.prol.loopexit.unr-lcssa ]
  %i.en = icmp eq i64 %4, %indvar
  br i1 %i.en, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.1, %.new ], [ %indvars.iv304.unr, %.prol.loopexit ] ; 4 uses
  %.0251 = phi i32 [ %.1.1, %.new ], [ %.0251.unr, %.prol.loopexit ]
  %.0144250 = phi double [ %.1145.1, %.new ], [ %.0144250.unr, %.prol.loopexit ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv304
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !279
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv302
  %i.er = load double, ptr %i.eq, align 8, !tbaa !46
  %i.es = tail call double @llvm.fabs.f64(double %i.er) ; 2 uses
  %i.et = fcmp olt double %.0144250, %i.es        ; 2 uses
  %.1145 = select i1 %i.et, double %i.es, double %.0144250 ; 2 uses
  %i.eu = trunc nuw nsw i64 %indvars.iv304 to i32
  %.1 = select i1 %i.et, i32 %i.eu, i32 %.0251
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next305
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !279
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv302
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !46
  %i.ez = tail call double @llvm.fabs.f64(double %i.ey) ; 2 uses
  %i.fa = fcmp olt double %.1145, %i.ez           ; 2 uses
  %.1145.1 = select i1 %i.fa, double %i.ez, double %.1145 ; 2 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv.next305 to i32
  %.1.1 = select i1 %i.fa, i32 %i.fb, i32 %.1     ; 2 uses
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %exitcond308.not.1 = icmp eq i64 %indvars.iv.next305.1, %i.c
  br i1 %exitcond308.not.1, label %.unr-lcssa, label %.new, !llvm.loop !713

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.1145.lcssa = phi double [ %.1145.lcssa.unr, %.prol.loopexit ], [ %.1145.1, %.new ]
  %.1.lcssa = phi i32 [ %.1.lcssa.unr, %.prol.loopexit ], [ %.1.1, %.new ] ; 2 uses
  %i.fc = fcmp ult double %.1145.lcssa, f0x3BFD83C94FB6D2AC
  br i1 %i.fc, label %.lr.ph.i184, label %bb.f

bb.f:                                             ; preds = %.unr-lcssa
  %i.fd = zext i32 %.1.lcssa to i64
  %.not165 = icmp eq i64 %indvars.iv302, %i.fd
  %.not166252 = icmp sgt i64 %indvars.iv302, %i.cn ; 2 uses
  %or.cond = select i1 %.not165, i1 true, i1 %.not166252
  br i1 %or.cond, label %.loopexit231, label %.lr.ph254

.lr.ph254:                                        ; preds = %bb.f
  %i.fe = sext i32 %.1.lcssa to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.fe
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !279 ; 6 uses
  %8 = xor i64 %indvar, -1
  %9 = add i64 %8, %wide.trip.count314            ; 3 uses
  %min.iters.check436 = icmp ult i64 %9, 4
  br i1 %min.iters.check436, label %scalar.ph435.preheader, label %vector.memcheck427

vector.memcheck427:                               ; preds = %.lr.ph254
  %scevgep428 = getelementptr nuw i8, ptr %i.fg, i64 %i.dy
  %scevgep429 = getelementptr i8, ptr %i.fg, i64 %3
  %scevgep430 = getelementptr i8, ptr %i.eb, i64 %i.dy
  %scevgep431 = getelementptr i8, ptr %i.eb, i64 %3
  %bound0432 = icmp ult ptr %scevgep428, %scevgep431
  %bound1433 = icmp ult ptr %scevgep430, %scevgep429
  %found.conflict434 = and i1 %bound0432, %bound1433
  br i1 %found.conflict434, label %scalar.ph435.preheader, label %vector.ph437

vector.ph437:                                     ; preds = %vector.memcheck427
  %n.vec438 = and i64 %9, -4                      ; 3 uses
  %i.fh = add i64 %indvars.iv302, %n.vec438
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %i.fi = add nuw i64 %indvars.iv302, %index440   ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fi ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load441 = load <2 x double>, ptr %i.fj, align 8, !tbaa !46, !alias.scope !731, !noalias !732
  %wide.load442 = load <2 x double>, ptr %i.fk, align 8, !tbaa !46, !alias.scope !731, !noalias !732
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fi ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16 ; 2 uses
  %wide.load443 = load <2 x double>, ptr %i.fl, align 8, !tbaa !46, !alias.scope !732
  %wide.load444 = load <2 x double>, ptr %i.fm, align 8, !tbaa !46, !alias.scope !732
  store <2 x double> %wide.load443, ptr %i.fj, align 8, !tbaa !46, !alias.scope !731, !noalias !732
  store <2 x double> %wide.load444, ptr %i.fk, align 8, !tbaa !46, !alias.scope !731, !noalias !732
  store <2 x double> %wide.load441, ptr %i.fl, align 8, !tbaa !46, !alias.scope !732
  store <2 x double> %wide.load442, ptr %i.fm, align 8, !tbaa !46, !alias.scope !732
  %index.next445 = add nuw i64 %index440, 4       ; 2 uses
  %i.fn = icmp eq i64 %index.next445, %n.vec438
  br i1 %i.fn, label %middle.block446, label %vector.body439, !llvm.loop !717

middle.block446:                                  ; preds = %vector.body439
  %cmp.n447 = icmp eq i64 %9, %n.vec438
  br i1 %cmp.n447, label %.loopexit231.loopexit, label %scalar.ph435.preheader

scalar.ph435.preheader:                           ; preds = %vector.memcheck427, %.lr.ph254, %middle.block446
  %indvars.iv311.ph = phi i64 [ %indvars.iv302, %vector.memcheck427 ], [ %indvars.iv302, %.lr.ph254 ], [ %i.fh, %middle.block446 ] ; 6 uses
  %xtraiter478 = and i64 %indvars.iv311.ph, 1
  %lcmp.mod479.not = icmp eq i64 %xtraiter478, 0
  br i1 %lcmp.mod479.not, label %scalar.ph435.prol.loopexit, label %scalar.ph435.prol

scalar.ph435.prol:                                ; preds = %scalar.ph435.preheader
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv311.ph ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !46
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv311.ph ; 2 uses
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !46
  store double %i.fr, ptr %i.fo, align 8, !tbaa !46
  store double %i.fp, ptr %i.fq, align 8, !tbaa !46
  %indvars.iv.next312.prol = add nuw nsw i64 %indvars.iv311.ph, 1
  br label %scalar.ph435.prol.loopexit

scalar.ph435.prol.loopexit:                       ; preds = %scalar.ph435.prol, %scalar.ph435.preheader
  %indvars.iv311.unr = phi i64 [ %indvars.iv311.ph, %scalar.ph435.preheader ], [ %indvars.iv.next312.prol, %scalar.ph435.prol ]
  %i.fs = icmp eq i64 %indvars.iv311.ph, %5
  br i1 %i.fs, label %.loopexit231.loopexit, label %scalar.ph435

scalar.ph435:                                     ; preds = %scalar.ph435.prol.loopexit, %scalar.ph435
  %indvars.iv311 = phi i64 [ %indvars.iv.next312.1, %scalar.ph435 ], [ %indvars.iv311.unr, %scalar.ph435.prol.loopexit ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv311 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !46
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv311 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !46
  store double %i.fw, ptr %i.ft, align 8, !tbaa !46
  store double %i.fu, ptr %i.fv, align 8, !tbaa !46
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.next312 ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !46
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next312 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !46
  store double %i.ga, ptr %i.fx, align 8, !tbaa !46
  store double %i.fy, ptr %i.fz, align 8, !tbaa !46
  %indvars.iv.next312.1 = add nuw nsw i64 %indvars.iv311, 2 ; 2 uses
  %exitcond315.1 = icmp eq i64 %indvars.iv.next312.1, %wide.trip.count314
  br i1 %exitcond315.1, label %.loopexit231.loopexit, label %scalar.ph435, !llvm.loop !718

.loopexit231.loopexit:                            ; preds = %scalar.ph435.prol.loopexit, %scalar.ph435, %middle.block446
  %.pre346 = load double, ptr %i.ec, align 8, !tbaa !46
  br label %.loopexit231

.loopexit231:                                     ; preds = %.loopexit231.loopexit, %bb.f
  %i.gb = phi double [ %.pre346, %.loopexit231.loopexit ], [ %i.ed, %bb.f ] ; 2 uses
  br i1 %.not166252, label %._crit_edge266, label %.lr.ph258.preheader

.lr.ph258.preheader:                              ; preds = %.loopexit231
  %10 = sub i64 %i.cs, %indvar                    ; 3 uses
  %min.iters.check415 = icmp ult i64 %10, 2
  br i1 %min.iters.check415, label %.lr.ph258.preheader471, label %vector.ph416

vector.ph416:                                     ; preds = %.lr.ph258.preheader
  %n.vec417 = and i64 %10, -2                     ; 3 uses
  %i.gc = sub i64 %i.cm, %n.vec417
  %broadcast.splatinsert418 = insertelement <2 x double> poison, double %i.gb, i64 0
  %broadcast.splat419 = shufflevector <2 x double> %broadcast.splatinsert418, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body420

vector.body420:                                   ; preds = %vector.body420, %vector.ph416
  %index421 = phi i64 [ 0, %vector.ph416 ], [ %index.next423, %vector.body420 ] ; 2 uses
  %i.gd = sub i64 %i.cm, %index421
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.gd
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -8 ; 2 uses
  %wide.load422 = load <2 x double>, ptr %i.gf, align 8, !tbaa !46
  %i.gg = fdiv <2 x double> %wide.load422, %broadcast.splat419
  store <2 x double> %i.gg, ptr %i.gf, align 8, !tbaa !46
  %index.next423 = add nuw i64 %index421, 2       ; 2 uses
  %i.gh = icmp eq i64 %index.next423, %n.vec417
  br i1 %i.gh, label %middle.block424, label %vector.body420, !llvm.loop !719

middle.block424:                                  ; preds = %vector.body420
  %cmp.n425 = icmp eq i64 %10, %n.vec417
  br i1 %cmp.n425, label %.lr.ph265.split.preheader, label %.lr.ph258.preheader471

.lr.ph258.preheader471:                           ; preds = %.lr.ph258.preheader, %middle.block424
  %indvars.iv316.ph = phi i64 [ %i.cm, %.lr.ph258.preheader ], [ %i.gc, %middle.block424 ]
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader471, %.lr.ph258
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %.lr.ph258 ], [ %indvars.iv316.ph, %.lr.ph258.preheader471 ] ; 3 uses
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv316 ; 2 uses
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !46
  %i.gk = fdiv double %i.gj, %i.gb
  store double %i.gk, ptr %i.gi, align 8, !tbaa !46
  %indvars.iv.next317 = add nsw i64 %indvars.iv316, -1
  %.not167.not = icmp sgt i64 %indvars.iv316, %indvars.iv302
  br i1 %.not167.not, label %.lr.ph258, label %.lr.ph265.split.preheader, !llvm.loop !720

.lr.ph265.split.preheader:                        ; preds = %.lr.ph258, %middle.block424
  %i.gl = getelementptr i8, ptr %i.eb, i64 %i.dz
  %scevgep393 = getelementptr i8, ptr %i.gl, i64 8
  %scevgep394 = getelementptr i8, ptr %i.eb, i64 %i.cq
  %11 = sub i64 %7, %indvar                       ; 3 uses
  %min.iters.check396 = icmp ult i64 %11, 4
  %n.vec398 = and i64 %11, -4                     ; 3 uses
  %i.gm = sub i64 %i.cm, %n.vec398
  %cmp.n412 = icmp eq i64 %11, %n.vec398
  br label %.lr.ph265.split

.lr.ph265.split:                                  ; preds = %.lr.ph265.split.preheader, %..loopexit_crit_edge
  %indvars.iv322 = phi i64 [ %indvars.iv.next323, %..loopexit_crit_edge ], [ 1, %.lr.ph265.split.preheader ] ; 3 uses
  %.not169 = icmp eq i64 %indvars.iv322, %indvars.iv302
  br i1 %.not169, label %..loopexit_crit_edge, label %.lr.ph262

.lr.ph262:                                        ; preds = %.lr.ph265.split
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv322
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !279 ; 4 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.go, i64 %indvars.iv302 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !46
  %i.gr = fneg double %i.gq                       ; 2 uses
  br i1 %min.iters.check396, label %scalar.ph395.preheader, label %vector.memcheck391

vector.memcheck391:                               ; preds = %.lr.ph262
  %scevgep392 = getelementptr i8, ptr %i.go, i64 %i.cq
  %bound0 = icmp ult ptr %i.gp, %scevgep394
  %bound1 = icmp ult ptr %scevgep393, %scevgep392
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph395.preheader, label %vector.ph397

vector.ph397:                                     ; preds = %vector.memcheck391
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gr, i64 0 ; 2 uses
  %i.gs = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body399

vector.body399:                                   ; preds = %vector.body399, %vector.ph397
  %index400 = phi i64 [ 0, %vector.ph397 ], [ %index.next410, %vector.body399 ] ; 2 uses
  %i.gu = sub i64 %i.cm, %index400                ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gu ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8 ; 2 uses
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 -24 ; 2 uses
  %wide.load401 = load <2 x double>, ptr %i.gw, align 8, !tbaa !46, !alias.scope !733, !noalias !734
  %wide.load402 = load <2 x double>, ptr %i.gx, align 8, !tbaa !46, !alias.scope !733, !noalias !734
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.gu ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 -8
  %i.ha = getelementptr inbounds i8, ptr %i.gy, i64 -24
  %wide.load404 = load <2 x double>, ptr %i.gz, align 8, !tbaa !46, !alias.scope !734
  %wide.load405 = load <2 x double>, ptr %i.ha, align 8, !tbaa !46, !alias.scope !734
  %reverse408 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %wide.load404, <2 x double> %wide.load401)
  %reverse409 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %wide.load405, <2 x double> %wide.load402)
  store <2 x double> %reverse408, ptr %i.gw, align 8, !tbaa !46, !alias.scope !733, !noalias !734
  store <2 x double> %reverse409, ptr %i.gx, align 8, !tbaa !46, !alias.scope !733, !noalias !734
  %index.next410 = add nuw i64 %index400, 4       ; 2 uses
  %i.hb = icmp eq i64 %index.next410, %n.vec398
  br i1 %i.hb, label %middle.block411, label %vector.body399, !llvm.loop !724

middle.block411:                                  ; preds = %vector.body399
  br i1 %cmp.n412, label %..loopexit_crit_edge, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %vector.memcheck391, %.lr.ph262, %middle.block411
  %indvars.iv319.ph = phi i64 [ %i.cm, %vector.memcheck391 ], [ %i.cm, %.lr.ph262 ], [ %i.gm, %middle.block411 ]
  br label %scalar.ph395

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %indvars.iv319 = phi i64 [ %indvars.iv.next320, %scalar.ph395 ], [ %indvars.iv319.ph, %scalar.ph395.preheader ] ; 4 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.go, i64 %indvars.iv319 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !46
  %i.he = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %indvars.iv319
  %i.hf = load double, ptr %i.he, align 8, !tbaa !46
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.hf, double %i.hd)
  store double %i.hg, ptr %i.hc, align 8, !tbaa !46
  %indvars.iv.next320 = add nsw i64 %indvars.iv319, -1
  %.not170.not = icmp sgt i64 %indvars.iv319, %indvars.iv302
  br i1 %.not170.not, label %scalar.ph395, label %..loopexit_crit_edge, !llvm.loop !725

..loopexit_crit_edge:                             ; preds = %scalar.ph395, %middle.block411, %.lr.ph265.split
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %i.c
  br i1 %exitcond326.not, label %._crit_edge266, label %.lr.ph265.split, !llvm.loop !726

.lr.ph.i184:                                      ; preds = %.unr-lcssa, %bb.h
  %indvars.iv.i185 = phi i64 [ %indvars.iv.next.i186, %bb.h ], [ 0, %.unr-lcssa ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i185
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !279 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i184
  tail call void @_ZdaPv(ptr noundef nonnull %i.hi) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i184
  %indvars.iv.next.i186 = add nuw nsw i64 %indvars.iv.i185, 1 ; 2 uses
  %exitcond.not.i187 = icmp eq i64 %indvars.iv.next.i186, %i.c
  br i1 %exitcond.not.i187, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit, label %.lr.ph.i184, !llvm.loop !21

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit: ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  br label %.lr.ph.i191

.lr.ph.i191:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit, %bb.j
  %indvars.iv.i192 = phi i64 [ %indvars.iv.next.i193, %bb.j ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i192
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !279 ; 2 uses
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i191
  tail call void @_ZdaPv(ptr noundef nonnull %i.hl) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i191
  %indvars.iv.next.i193 = add nuw nsw i64 %indvars.iv.i192, 1 ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i193, %i.c
  br i1 %exitcond.not.i194, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195, label %.lr.ph.i191, !llvm.loop !21

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195: ; preds = %bb.j
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #43
  br label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195, %bb.l
  %indvars.iv.i200 = phi i64 [ %indvars.iv.next.i201, %bb.l ], [ 0, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit195 ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i200
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !279 ; 2 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i199
  tail call void @_ZdaPv(ptr noundef nonnull %i.ho) #43
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i199
  %indvars.iv.next.i201 = add nuw nsw i64 %indvars.iv.i200, 1 ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %indvars.iv.next.i201, %i.c
  br i1 %exitcond.not.i202, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit203, label %.lr.ph.i199, !llvm.loop !21

._crit_edge266:                                   ; preds = %..loopexit_crit_edge, %.loopexit231
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next303, %i.c
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond329.not, label %.preheader228, label %bb.e, !llvm.loop !727

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge275
  %indvars.iv339 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next340, %._crit_edge275 ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv339
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !279 ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv339
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !279 ; 3 uses
  br i1 %min.iters.check452, label %scalar.ph451.preheader, label %vector.memcheck449

vector.memcheck449:                               ; preds = %.preheader
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = ptrtoaddr ptr %i.hr to i64
  %i.hw = add i64 %i.dn, %i.hv
  %i.hx = sub i64 %i.hu, %i.hw
  %i.hy = add i64 %i.hx, 7
  %diff.check450 = icmp ult i64 %i.hy, 31
  br i1 %diff.check450, label %scalar.ph451.preheader, label %vector.ph453

vector.ph453:                                     ; preds = %vector.memcheck449
  %invariant.gep = getelementptr [8 x i8], ptr %i.hr, i64 %i.dm
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph453
  %index456 = phi i64 [ 0, %vector.ph453 ], [ %index.next459, %vector.body455 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index456 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load457 = load <2 x double>, ptr %gep, align 8, !tbaa !46
  %wide.load458 = load <2 x double>, ptr %i.hz, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index456 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store <2 x double> %wide.load457, ptr %i.ib, align 8, !tbaa !46
  store <2 x double> %wide.load458, ptr %i.ic, align 8, !tbaa !46
  %index.next459 = add nuw i64 %index456, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next459, %n.vec454
  br i1 %i.id, label %middle.block460, label %vector.body455, !llvm.loop !728

middle.block460:                                  ; preds = %vector.body455
  br i1 %cmp.n461, label %._crit_edge275, label %scalar.ph451.preheader

scalar.ph451.preheader:                           ; preds = %vector.memcheck449, %.preheader, %middle.block460
  %indvars.iv334.ph = phi i64 [ %i.dm, %vector.memcheck449 ], [ %i.dm, %.preheader ], [ %i.du, %middle.block460 ]
  %indvars.iv332.ph = phi i64 [ 1, %vector.memcheck449 ], [ 1, %.preheader ], [ %i.dv, %middle.block460 ]
  br label %scalar.ph451

scalar.ph451:                                     ; preds = %scalar.ph451.preheader, %scalar.ph451
  %indvars.iv334 = phi i64 [ %indvars.iv.next335, %scalar.ph451 ], [ %indvars.iv334.ph, %scalar.ph451.preheader ] ; 3 uses
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %scalar.ph451 ], [ %indvars.iv332.ph, %scalar.ph451.preheader ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %indvars.iv334
  %i.if = load double, ptr %i.ie, align 8, !tbaa !46
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv332
  store double %i.if, ptr %i.ig, align 8, !tbaa !46
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1
  %i.ih = trunc nuw i64 %indvars.iv334 to i32
  %.not163 = icmp slt i32 %i.m, %i.ih
  br i1 %.not163, label %._crit_edge275, label %scalar.ph451, !llvm.loop !729

._crit_edge275:                                   ; preds = %scalar.ph451, %middle.block460
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next340, %i.c
  br i1 %exitcond345.not, label %.lr.ph.i207.preheader, label %.preheader, !llvm.loop !730
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15EdgeDrawingImpl7AperB_TEPPdS3_S3_iiii:bb.a
  %i.an = phi double [ %i.ax, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !46
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !46
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %i.an) ; 2 uses
  store double %i.as, ptr %i.ak, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next
  %i.au = load double, ptr %i.at, align 8, !tbaa !46
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.next
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.au, double %i.aw, double %i.as) ; 3 uses
  store double %i.ax, ptr %i.ak, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !746

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ax, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod63)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.epil.init
  %i.az = load double, ptr %i.ay, align 8, !tbaa !46
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.epil.init
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bb, double %.epil.init)
  store double %i.bc, ptr %i.ak, align 8, !tbaa !46
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %._crit_edge32.split, label %.lr.ph, !llvm.loop !747

._crit_edge32.split:                              ; preds = %._crit_edge
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count56
  br i1 %exitcond49.not, label %._crit_edge35.split, label %.preheader, !llvm.loop !19

._crit_edge35.split.loopexit.unr-lcssa:           ; preds = %.preheader.us
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %._crit_edge35.split, label %.preheader.us.epil.preheader

.preheader.us.epil.preheader:                     ; preds = %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.preheader
  %indvars.iv53.epil.init = phi i64 [ 1, %.preheader.us.preheader ], [ %indvars.iv.next54.7, %._crit_edge35.split.loopexit.unr-lcssa ]
  %lcmp.mod66 = icmp ne i64 %xtraiter64, 0
  tail call void @llvm.assume(i1 %lcmp.mod66)
  br label %.preheader.us.epil

.preheader.us.epil:                               ; preds = %.preheader.us.epil, %.preheader.us.epil.preheader
  %indvars.iv53.epil = phi i64 [ %indvars.iv53.epil.init, %.preheader.us.epil.preheader ], [ %indvars.iv.next54.epil, %.preheader.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader.us.epil.preheader ], [ %epil.iter.next, %.preheader.us.epil ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53.epil
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !279
  %scevgep.epil = getelementptr nuw i8, ptr %i.be, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.f, i1 false), !tbaa !46
  %indvars.iv.next54.epil = add nuw nsw i64 %indvars.iv53.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter64
  br i1 %epil.iter.cmp.not, label %._crit_edge35.split, label %.preheader.us.epil, !llvm.loop !748

._crit_edge35.split:                              ; preds = %._crit_edge32.split, %._crit_edge35.split.loopexit.unr-lcssa, %.preheader.us.epil, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6jacobiEPPdiS2_S3_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = add i32 %1, 1                            ; 5 uses
  %i.b = sext i32 %i.a to i64
  %i.c = icmp slt i32 %1, -1
  %i.d = shl nsw i64 %i.b, 3                      ; 3 uses
  %i.e = select i1 %i.c, i64 -1, i64 %i.d         ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 7 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #41 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.d, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.d, i1 false)
  %.not207 = icmp slt i32 %1, 1                   ; 2 uses
  br i1 %.not207, label %.preheader202, label %.preheader204.preheader

.preheader204.preheader:                          ; preds = %bb.a
  %i.h = zext nneg i32 %1 to i64
  %i.i = shl nuw nsw i64 %i.h, 3                  ; 5 uses
  %wide.trip.count = zext i32 %i.a to i64         ; 2 uses
  %i.j = add nsw i64 %wide.trip.count, -1         ; 5 uses
  %i.k = add nsw i64 %wide.trip.count, -2         ; 2 uses
  %xtraiter = and i64 %i.j, 3                     ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.preheader204.epil.preheader, label %.preheader204.preheader.new

.preheader204.preheader.new:                      ; preds = %.preheader204.preheader
  %unroll_iter = and i64 %i.j, -4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204, %.preheader204.preheader.new
  %indvars.iv = phi i64 [ 1, %.preheader204.preheader.new ], [ %indvars.iv.next.3, %.preheader204 ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader204.preheader.new ], [ %niter.next.3, %.preheader204 ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !279  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !279  ; 2 uses
  %scevgep.1 = getelementptr nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.1, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !46
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !279  ; 2 uses
  %scevgep.2 = getelementptr nuw i8, ptr %i.t, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.2, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.1
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !46
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !279  ; 2 uses
  %scevgep.3 = getelementptr nuw i8, ptr %i.w, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.3, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.2
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !46
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.preheader.unr-lcssa, label %.preheader204, !llvm.loop !749

.lr.ph.preheader.unr-lcssa:                       ; preds = %.preheader204
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.preheader, label %.preheader204.epil.preheader

.preheader204.epil.preheader:                     ; preds = %.lr.ph.preheader.unr-lcssa, %.preheader204.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.preheader204.preheader ], [ %indvars.iv.next.3, %.lr.ph.preheader.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod332)
  br label %.preheader204.epil

.preheader204.epil:                               ; preds = %.preheader204.epil, %.preheader204.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.preheader204.epil.preheader ], [ %indvars.iv.next.epil, %.preheader204.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.preheader204.epil.preheader ], [ %epil.iter.next, %.preheader204.epil ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279  ; 2 uses
  %scevgep.epil = getelementptr nuw i8, ptr %i.z, i64 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %scevgep.epil, i8 0, i64 %i.i, i1 false), !tbaa !46
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !46
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.preheader, label %.preheader204.epil, !llvm.loop !750

.lr.ph.preheader:                                 ; preds = %.preheader204.epil, %.lr.ph.preheader.unr-lcssa
  %xtraiter333 = and i64 %i.j, 1
  %i.ab = icmp eq i64 %i.k, 0
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter337 = and i64 %i.j, -2
  br label %.lr.ph

.preheader202.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod335.not = icmp eq i64 %xtraiter333, 0
  br i1 %lcmp.mod335.not, label %.preheader202, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader202.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv252.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next253.1, %.preheader202.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod336 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv252.epil.init
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !279
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv252.epil.init
  %i.af = load double, ptr %i.ae, align 8, !tbaa !46 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv252.epil.init
  store double %i.af, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv252.epil.init
  store double %i.af, ptr %i.ah, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv252.epil.init
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !46
  br label %.preheader202

.preheader202:                                    ; preds = %.lr.ph.epil.preheader, %.preheader202.loopexit.unr-lcssa, %bb.a
  %.not185.not216 = icmp sgt i32 %1, 1
  %i.aj = mul nsw i32 %1, %1
  %i.ak = uitofp nneg i32 %i.aj to double
  %i.al = sext i32 %1 to i64
  %wide.trip.count267 = zext i32 %1 to i64        ; 3 uses
  %wide.trip.count262 = zext i32 %i.a to i64      ; 4 uses
  %wide.trip.count299 = zext nneg i32 %1 to i64   ; 2 uses
  %wide.trip.count294 = zext i32 %i.a to i64      ; 2 uses
  %wide.trip.count305 = zext i32 %i.a to i64
  %i.am = shl nuw nsw i64 %wide.trip.count267, 3
  %i.an = add nuw nsw i64 %i.am, 8                ; 2 uses
  %4 = xor i64 %wide.trip.count262, 2
  %5 = add nsw i64 %wide.trip.count262, -3
  %i.ao = add nsw i64 %wide.trip.count267, -2
  %i.ap = add nsw i64 %wide.trip.count262, -1     ; 3 uses
  %n.vec = and i64 %i.ap, -2                      ; 2 uses
  %i.aq = or i64 %i.ap, 1
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br label %.preheader201

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv252 = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next253.1, %.lr.ph ] ; 7 uses
  %niter338 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter338.next.1, %.lr.ph ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv252
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !279
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv252
  %i.au = load double, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv252
  store double %i.au, ptr %i.av, align 8, !tbaa !46
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv252
  store double %i.au, ptr %i.aw, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv252
  store double 0.000000e+00, ptr %i.ax, align 8, !tbaa !46
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 5 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next253
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !279
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.next253
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !46 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next253
  store double %i.bb, ptr %i.bc, align 8, !tbaa !46
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next253
  store double %i.bb, ptr %i.bd, align 8, !tbaa !46
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next253
  store double 0.000000e+00, ptr %i.be, align 8, !tbaa !46
  %indvars.iv.next253.1 = add nuw nsw i64 %indvars.iv252, 2 ; 2 uses
  %niter338.next.1 = add nuw i64 %niter338, 2     ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %.preheader202.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !751

.preheader201:                                    ; preds = %.preheader202, %._crit_edge247
  %.0171248 = phi i32 [ 1, %.preheader202 ], [ %i.ie, %._crit_edge247 ] ; 3 uses
  br i1 %.not185.not216, label %.lr.ph215, label %._crit_edge220.thread

.loopexit199:                                     ; preds = %.lr.ph215.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.cg, %.lr.ph215.new ] ; 3 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1
  %exitcond268.not = icmp eq i64 %indvars.iv.next265, %wide.trip.count267
  %indvar.next340 = add i64 %indvar339, 1
  br i1 %exitcond268.not, label %._crit_edge220, label %.lr.ph215, !llvm.loop !752

.lr.ph215:                                        ; preds = %.preheader201, %.loopexit199
  %indvar339 = phi i64 [ %indvar.next340, %.loopexit199 ], [ 0, %.preheader201 ] ; 3 uses
  %indvars.iv264 = phi i64 [ %indvars.iv.next265, %.loopexit199 ], [ 1, %.preheader201 ] ; 2 uses
  %indvars.iv257 = phi i64 [ %indvars.iv.next258, %.loopexit199 ], [ 2, %.preheader201 ] ; 3 uses
  %.0218 = phi double [ %.lcssa, %.loopexit199 ], [ 0.000000e+00, %.preheader201 ] ; 2 uses
  %i.bf = sub i64 %4, %indvar339
  %i.bg = sub i64 %5, %indvar339
  %indvars.iv.next265 = add nuw nsw i64 %indvars.iv264, 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv264
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !279 ; 5 uses
  %xtraiter341 = and i64 %i.bf, 3                 ; 2 uses
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph215, %.prol.preheader
  %indvars.iv259.prol = phi i64 [ %indvars.iv.next260.prol, %.prol.preheader ], [ %indvars.iv257, %.lr.ph215 ] ; 2 uses
  %.1213.prol = phi double [ %i.bm, %.prol.preheader ], [ %.0218, %.lr.ph215 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph215 ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv259.prol
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !46
  %i.bl = tail call double @llvm.fabs.f64(double %i.bk)
  %i.bm = fadd double %.1213.prol, %i.bl          ; 3 uses
  %indvars.iv.next260.prol = add nuw nsw i64 %indvars.iv259.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter341
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !753

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph215
  %.lcssa.unr = phi double [ poison, %.lr.ph215 ], [ %i.bm, %.prol.preheader ]
  %indvars.iv259.unr = phi i64 [ %indvars.iv257, %.lr.ph215 ], [ %indvars.iv.next260.prol, %.prol.preheader ]
  %.1213.unr = phi double [ %.0218, %.lr.ph215 ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp ult i64 %i.bg, 3
  br i1 %i.bn, label %.loopexit199, label %.lr.ph215.new

.lr.ph215.new:                                    ; preds = %.prol.loopexit, %.lr.ph215.new
  %indvars.iv259 = phi i64 [ %indvars.iv.next260.3, %.lr.ph215.new ], [ %indvars.iv259.unr, %.prol.loopexit ] ; 5 uses
  %.1213 = phi double [ %i.cg, %.lr.ph215.new ], [ %.1213.unr, %.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv259
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !46
  %i.bq = tail call double @llvm.fabs.f64(double %i.bp)
  %i.br = fadd double %.1213, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv259
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !46
  %i.bv = tail call double @llvm.fabs.f64(double %i.bu)
  %i.bw = fadd double %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv259
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load double, ptr %i.by, align 8, !tbaa !46
  %i.ca = tail call double @llvm.fabs.f64(double %i.bz)
  %i.cb = fadd double %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv259
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !46
  %i.cf = tail call double @llvm.fabs.f64(double %i.ce)
  %i.cg = fadd double %i.cb, %i.cf                ; 2 uses
  %indvars.iv.next260.3 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %exitcond263.not.3 = icmp eq i64 %indvars.iv.next260.3, %wide.trip.count262
  br i1 %exitcond263.not.3, label %.loopexit199, label %.lr.ph215.new, !llvm.loop !754

._crit_edge220:                                   ; preds = %.loopexit199
  %i.ch = fcmp oeq double %.lcssa, 0.000000e+00
  br i1 %i.ch, label %._crit_edge220.thread, label %.lr.ph243

.lr.ph243:                                        ; preds = %._crit_edge220
  %i.ci = icmp samesign ult i32 %.0171248, 4
  %i.cj = fmul double %.lcssa, 2.000000e-01
  %i.ck = fdiv double %i.cj, %i.ak
  %.0170 = select i1 %i.ci, double %i.ck, double 0.000000e+00
  %i.cl = icmp samesign ugt i32 %.0171248, 4
  br label %.lr.ph239

.loopexit198:                                     ; preds = %.loopexit
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond300.not, label %.preheader200, label %.lr.ph239, !llvm.loop !755

.preheader200:                                    ; preds = %.loopexit198
  br i1 %.not207, label %._crit_edge247, label %vector.body

vector.body:                                      ; preds = %.preheader200, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader200 ] ; 2 uses
  %i.cm = or disjoint i64 %index, 1               ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.cm ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cn, align 8, !tbaa !46
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.cm ; 2 uses
  %wide.load310 = load <2 x double>, ptr %i.co, align 8, !tbaa !46
  %i.cp = fadd <2 x double> %wide.load, %wide.load310 ; 2 uses
  store <2 x double> %i.cp, ptr %i.co, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cm
  store <2 x double> %i.cp, ptr %i.cq, align 8, !tbaa !46
  store <2 x double> zeroinitializer, ptr %i.cn, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !756

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge247, label %.lr.ph246

.lr.ph239:                                        ; preds = %.loopexit198, %.lr.ph243
  %indvar = phi i64 [ %indvar.next, %.loopexit198 ], [ 0, %.lr.ph243 ] ; 3 uses
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %.loopexit198 ], [ 1, %.lr.ph243 ] ; 8 uses
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %.loopexit198 ], [ 2, %.lr.ph243 ] ; 3 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv296
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !279 ; 6 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv296 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv296 ; 2 uses
  %.not189.not222 = icmp samesign ugt i64 %indvars.iv296, 1
  %scevgep314 = getelementptr i8, ptr %i.ct, i64 %i.an
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph239, %.loopexit
  %indvar311 = phi i64 [ 0, %.lr.ph239 ], [ %indvar.next312, %.loopexit ] ; 3 uses
  %indvars.iv281 = phi i64 [ %indvars.iv274, %.lr.ph239 ], [ %indvars.iv.next282, %.loopexit ] ; 15 uses
  %i.cw = add i64 %indvar, %indvar311
  %i.cx = shl i64 %i.cw, 3
  %i.cy = add i64 %i.cx, 24                       ; 2 uses
  %scevgep313 = getelementptr i8, ptr %i.ct, i64 %i.cy
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv281 ; 3 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !46 ; 4 uses
  %i.db = tail call double @llvm.fabs.f64(double %i.da) ; 2 uses
  %i.dc = fmul double %i.db, 1.000000e+02
  %i.dd = fcmp oeq double %i.dc, 0.000000e+00     ; 2 uses
  %or.cond = select i1 %i.cl, i1 %i.dd, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.cz, align 8, !tbaa !46
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.de = fcmp ogt double %i.db, %.0170
  br i1 %i.de, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv281 ; 3 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !46
  %i.dh = load double, ptr %i.cu, align 8, !tbaa !46 ; 2 uses
  %i.di = fsub double %i.dg, %i.dh                ; 2 uses
  br i1 %i.dd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dj = fdiv double %i.da, %i.di
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.dk = fmul double %i.di, 5.000000e-01
  %i.dl = fdiv double %i.dk, %i.da                ; 4 uses
  %i.dm = tail call double @llvm.fabs.f64(double %i.dl)
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dn)
  %i.do = fadd double %i.dm, %sqrt
  %i.dp = fdiv double 1.000000e+00, %i.do         ; 2 uses
  %i.dq = fcmp olt double %i.dl, 0.000000e+00
  br i1 %i.dq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.dr = fneg double %i.dp
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.0169 = phi double [ %i.dj, %bb.f ], [ %i.dr, %bb.h ], [ %i.dp, %bb.g ] ; 4 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %.0169, double %.0169, double 1.000000e+00)
  %sqrt195 = tail call double @llvm.sqrt.f64(double %i.ds)
  %i.dt = fdiv double 1.000000e+00, %sqrt195      ; 2 uses
  %i.du = fmul double %.0169, %i.dt               ; 10 uses
  %i.dv = fadd double %i.dt, 1.000000e+00
  %i.dw = fdiv double %i.du, %i.dv                ; 5 uses
  %i.dx = fmul double %i.da, %.0169               ; 4 uses
  %i.dy = load double, ptr %i.cv, align 8, !tbaa !46
  %i.dz = fsub double %i.dy, %i.dx
  store double %i.dz, ptr %i.cv, align 8, !tbaa !46
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv281 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !46
  %i.ec = fadd double %i.dx, %i.eb
  store double %i.ec, ptr %i.ea, align 8, !tbaa !46
  %i.ed = fsub double %i.dh, %i.dx
  store double %i.ed, ptr %i.cu, align 8, !tbaa !46
  %i.ee = load double, ptr %i.df, align 8, !tbaa !46
  %i.ef = fadd double %i.dx, %i.ee
  store double %i.ef, ptr %i.df, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.cz, align 8, !tbaa !46
  br i1 %.not189.not222, label %.lr.ph225, label %.preheader197

.lr.ph225:                                        ; preds = %bb.i
  %i.eg = fneg double %i.du
  %i.eh = insertelement <2 x double> poison, double %i.du, i64 0
  %i.ei = insertelement <2 x double> %i.eh, double %i.eg, i64 1
  %i.ej = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.j

.preheader197:                                    ; preds = %bb.j, %bb.i
  %.not190.not226 = icmp samesign ult i64 %indvars.iv.next297, %indvars.iv281
  br i1 %.not190.not226, label %.lr.ph228, label %.preheader196

.lr.ph228:                                        ; preds = %.preheader197
  %i.el = fneg double %i.du
  %i.em = insertelement <2 x double> poison, double %i.du, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.el, i64 1
  %i.eo = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph225, %bb.j
  %indvars.iv269 = phi i64 [ 1, %.lr.ph225 ], [ %indvars.iv.next270, %bb.j ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv269
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !279 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv296 ; 2 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !46 ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv281 ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !46 ; 3 uses
  %i.ew = fneg double %i.ev
  %i.ex = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.et, i64 1
  %i.ez = insertelement <2 x double> poison, double %i.et, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.ev, i64 1
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ek, <2 x double> %i.fa)
  %i.fc = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.et, i64 1
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.fb, <2 x double> %i.fd) ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 1
  store double %i.ff, ptr %i.es, align 8, !tbaa !46
  %i.fg = extractelement <2 x double> %i.fe, i64 0
  store double %i.fg, ptr %i.eu, align 8, !tbaa !46
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 2 uses
  %exitcond273.not = icmp eq i64 %indvars.iv.next270, %indvars.iv296
  br i1 %exitcond273.not, label %.preheader197, label %bb.j, !llvm.loop !757

.preheader196:                                    ; preds = %bb.k, %.preheader197
  %.not191.not229 = icmp slt i64 %indvars.iv281, %i.al
  br i1 %.not191.not229, label %.lr.ph231, label %.preheader196..lr.ph234_crit_edge

.preheader196..lr.ph234_crit_edge:                ; preds = %.preheader196
  %.pre = fneg double %i.du
  br label %.lr.ph234

.lr.ph231:                                        ; preds = %.preheader196
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv281
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !279 ; 4 uses
  %i.fj = fneg double %i.du                       ; 4 uses
  %6 = add i64 %indvar, %indvar311
  %7 = sub i64 %i.ao, %6                          ; 3 uses
  %min.iters.check = icmp ult i64 %7, 2
  br i1 %min.iters.check, label %scalar.ph317.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph231
  %scevgep315 = getelementptr nuw i8, ptr %i.fi, i64 %i.cy
  %scevgep316 = getelementptr i8, ptr %i.fi, i64 %i.an
  %bound0 = icmp ult ptr %scevgep313, %scevgep316
  %bound1 = icmp ult ptr %scevgep315, %scevgep314
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph317.preheader, label %vector.ph318

vector.ph318:                                     ; preds = %vector.memcheck
  %n.vec319 = and i64 %7, -2                      ; 3 uses
  %i.fk = add i64 %indvars.iv281, %n.vec319
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fj, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <2 x double> poison, double %i.dw, i64 0
  %broadcast.splat321 = shufflevector <2 x double> %broadcast.splatinsert320, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert322 = insertelement <2 x double> poison, double %i.du, i64 0
  %broadcast.splat323 = shufflevector <2 x double> %broadcast.splatinsert322, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add nuw i64 %indvars.iv281, 1
  br label %vector.body324

vector.body324:                                   ; preds = %vector.body324, %vector.ph318
  %index325 = phi i64 [ 0, %vector.ph318 ], [ %index.next328, %vector.body324 ] ; 2 uses
  %.reass = add nuw i64 %index325, %invariant.op  ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.reass ; 2 uses
  %wide.load326 = load <2 x double>, ptr %i.fl, align 8, !tbaa !46, !alias.scope !768, !noalias !769 ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %.reass ; 2 uses
  %wide.load327 = load <2 x double>, ptr %i.fm, align 8, !tbaa !46, !alias.scope !769 ; 3 uses
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load326, <2 x double> %broadcast.splat321, <2 x double> %wide.load327)
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.fn, <2 x double> %wide.load326)
  store <2 x double> %i.fo, ptr %i.fl, align 8, !tbaa !46, !alias.scope !768, !noalias !769
  %i.fp = fneg <2 x double> %wide.load327
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %broadcast.splat321, <2 x double> %wide.load326)
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat323, <2 x double> %i.fq, <2 x double> %wide.load327)
  store <2 x double> %i.fr, ptr %i.fm, align 8, !tbaa !46, !alias.scope !769
  %index.next328 = add nuw i64 %index325, 2       ; 2 uses
  %i.fs = icmp eq i64 %index.next328, %n.vec319
  br i1 %i.fs, label %middle.block329, label %vector.body324, !llvm.loop !761

middle.block329:                                  ; preds = %vector.body324
  %cmp.n330 = icmp eq i64 %7, %n.vec319
  br i1 %cmp.n330, label %.lr.ph234, label %scalar.ph317.preheader

scalar.ph317.preheader:                           ; preds = %vector.memcheck, %.lr.ph231, %middle.block329
  %indvars.iv283.ph = phi i64 [ %indvars.iv281, %vector.memcheck ], [ %indvars.iv281, %.lr.ph231 ], [ %i.fk, %middle.block329 ]
  %i.ft = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.fu = shufflevector <2 x double> %i.ft, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fv = insertelement <2 x double> poison, double %i.du, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fj, i64 1
  br label %scalar.ph317

bb.k:                                             ; preds = %.lr.ph228, %bb.k
  %indvars.iv276 = phi i64 [ %indvars.iv274, %.lr.ph228 ], [ %indvars.iv.next277, %bb.k ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv276 ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !46 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv276
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !279
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %indvars.iv281 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !46 ; 3 uses
  %i.gd = fneg double %i.gc
  %i.ge = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fy, i64 1
  %i.gg = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gh = insertelement <2 x double> %i.gg, double %i.gc, i64 1
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gf, <2 x double> %i.ep, <2 x double> %i.gh)
  %i.gj = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.fy, i64 1
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.gi, <2 x double> %i.gk) ; 2 uses
  %i.gm = extractelement <2 x double> %i.gl, i64 1
  store double %i.gm, ptr %i.fx, align 8, !tbaa !46
  %i.gn = extractelement <2 x double> %i.gl, i64 0
  store double %i.gn, ptr %i.gb, align 8, !tbaa !46
  %indvars.iv.next277 = add nuw nsw i64 %indvars.iv276, 1 ; 2 uses
  %exitcond280.not = icmp eq i64 %indvars.iv.next277, %indvars.iv281
  br i1 %exitcond280.not, label %.preheader196, label %bb.k, !llvm.loop !762

.lr.ph234:                                        ; preds = %scalar.ph317, %middle.block329, %.preheader196..lr.ph234_crit_edge
  %.pre-phi = phi double [ %.pre, %.preheader196..lr.ph234_crit_edge ], [ %i.fj, %middle.block329 ], [ %i.fj, %scalar.ph317 ]
  %i.go = insertelement <2 x double> poison, double %i.du, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %.pre-phi, i64 1
  %i.gq = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.l

scalar.ph317:                                     ; preds = %scalar.ph317.preheader, %scalar.ph317
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph317 ], [ %indvars.iv283.ph, %scalar.ph317.preheader ]
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 4 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next284 ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !46 ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next284 ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !46 ; 3 uses
  %i.gw = fneg double %i.gv
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gt, i64 1
  %i.gz = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %i.gv, i64 1
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gy, <2 x double> %i.fu, <2 x double> %i.ha)
  %i.hc = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.gt, i64 1
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.hb, <2 x double> %i.hd) ; 2 uses
  %i.hf = extractelement <2 x double> %i.he, i64 1
  store double %i.hf, ptr %i.gs, align 8, !tbaa !46
  %i.hg = extractelement <2 x double> %i.he, i64 0
  store double %i.hg, ptr %i.gu, align 8, !tbaa !46
  %exitcond287.not = icmp eq i64 %indvars.iv.next284, %wide.trip.count299
  br i1 %exitcond287.not, label %.lr.ph234, label %scalar.ph317, !llvm.loop !763

bb.l:                                             ; preds = %.lr.ph234, %bb.l
  %indvars.iv288 = phi i64 [ 1, %.lr.ph234 ], [ %indvars.iv.next289, %bb.l ] ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv288
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !279 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv296 ; 2 uses
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !46 ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv281 ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !46 ; 3 uses
  %i.hn = fneg double %i.hm
  %i.ho = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hk, i64 1
  %i.hq = insertelement <2 x double> poison, double %i.hk, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.hm, i64 1
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> %i.gr, <2 x double> %i.hr)
  %i.ht = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hk, i64 1
  %i.hv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.hs, <2 x double> %i.hu) ; 2 uses
  %i.hw = extractelement <2 x double> %i.hv, i64 1
  store double %i.hw, ptr %i.hj, align 8, !tbaa !46
  %i.hx = extractelement <2 x double> %i.hv, i64 0
  store double %i.hx, ptr %i.hl, align 8, !tbaa !46
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count294
  br i1 %exitcond292.not, label %.loopexit, label %bb.l, !llvm.loop !764

.loopexit:                                        ; preds = %bb.l, %bb.c, %bb.d
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next282, %wide.trip.count294
  %indvar.next312 = add i64 %indvar311, 1
  br i1 %exitcond295.not, label %.loopexit198, label %bb.b, !llvm.loop !765

.lr.ph246:                                        ; preds = %middle.block, %.lr.ph246
  %indvars.iv302 = phi i64 [ %indvars.iv.next303, %.lr.ph246 ], [ %i.aq, %middle.block ] ; 4 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv302 ; 2 uses
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv302 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !46
  %i.ic = fadd double %i.hz, %i.ib                ; 2 uses
  store double %i.ic, ptr %i.ia, align 8, !tbaa !46
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv302
  store double %i.ic, ptr %i.id, align 8, !tbaa !46
  store double 0.000000e+00, ptr %i.hy, align 8, !tbaa !46
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge247, label %.lr.ph246, !llvm.loop !766

._crit_edge247:                                   ; preds = %.lr.ph246, %middle.block, %.preheader200
  %i.ie = add nuw nsw i32 %.0171248, 1            ; 2 uses
  %exitcond307.not = icmp eq i32 %i.ie, 51
  br i1 %exitcond307.not, label %._crit_edge220.thread, label %.preheader201, !llvm.loop !767

._crit_edge220.thread:                            ; preds = %._crit_edge247, %._crit_edge220, %.preheader201
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #43
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #43
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl6ROTATEEPPdiiiidd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, double noundef %5, double noundef %6) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr %0, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !279
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !46 ; 3 uses
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !279
  %i.j = sext i32 %4 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !46 ; 3 uses
  %i.m = fneg double %6
  %i.n = fneg double %i.l
  %i.o = insertelement <2 x double> poison, double %i.n, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.f, i64 1
  %i.q = insertelement <2 x double> poison, double %5, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = insertelement <2 x double> poison, double %i.f, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.l, i64 1
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.p, <2 x double> %i.r, <2 x double> %i.t)
  %i.v = insertelement <2 x double> poison, double %6, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.m, i64 1
  %i.x = insertelement <2 x double> poison, double %i.l, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.f, i64 1
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.u, <2 x double> %i.y) ; 2 uses
  %i.aa = extractelement <2 x double> %i.z, i64 1
  store double %i.aa, ptr %i.e, align 8, !tbaa !46
  %i.ab = extractelement <2 x double> %i.z, i64 0
  store double %i.ab, ptr %i.k, align 8, !tbaa !46
  ret void
end_hunk_1
