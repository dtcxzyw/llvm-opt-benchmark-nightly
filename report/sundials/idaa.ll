Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idaa?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0_@IDAApolynomialFree:bb.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 -107, 1) i32 @IDAApolynomialGetY(ptr nofree noundef readonly captures(none) %0, double noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %i.g = icmp ne i32 %i.f, 0
  %i.h = icmp ne ptr %4, null
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load i32, ptr %i.i, align 8, !tbaa !51
  %i.k = freeze i32 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.fr280 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !59
  %i.n = load double, ptr %i.b, align 8, !tbaa !60
  %i.o = fcmp ogt double %i.m, %i.n               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 180 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !61
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %._crit_edge61.i, label %bb.d

._crit_edge61.i:                                  ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !62
  %i.t = add nsw i64 %i.s, -1                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %i.t, ptr %i.u, align 8, !tbaa !26
  store i32 0, ptr %i.p, align 4, !tbaa !61
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge61.i
  %.0223 = phi i32 [ 0, %._crit_edge61.i ], [ 1, %bb.d ]
  %i.v = phi i64 [ %.pre.i, %._crit_edge61.i ], [ %i.t, %bb.d ] ; 5 uses
  %i.w = select i1 %i.o, double 1.000000e+00, double -1.000000e+00 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %i.d, i64 %i.v ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !63
  %i.ac = fsub double %1, %i.ab
  %i.ad = fmul double %i.w, %i.ac
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.v, 0
  br i1 %i.af, label %.loopexit255, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %storemerge5256.i = phi i64 [ %i.an, %bb.g ], [ %i.v, %bb.f ] ; 4 uses
  %i.ag = getelementptr [8 x i8], ptr %i.d, i64 %storemerge5256.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !29
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !63
  %i.ak = fsub double %1, %i.aj
  %i.al = fmul double %i.w, %i.ak
  %i.am = fcmp ugt double %i.al, 0.000000e+00
  br i1 %i.am, label %.thread239, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.an = add nsw i64 %storemerge5256.i, -1       ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.loopexit255, label %.lr.ph.i

.thread239:                                       ; preds = %.lr.ph.i
  store i64 %storemerge5256.i, ptr %i.x, align 8, !tbaa !26
  br label %bb.l

.loopexit255:                                     ; preds = %bb.g, %bb.f
  store i64 1, ptr %i.x, align 8, !tbaa !26
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !29  ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !63
  %i.ar = fsub double %1, %i.aq
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !64
  %i.av = fmul double %i.au, 1.000000e+06
  %i.aw = fcmp ogt double %i.as, %i.av
  br i1 %i.aw, label %IDAAfindIndex.exit, label %.thread

bb.h:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !29
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !63
  %i.az = fsub double %1, %i.ay
  %i.ba = fmul double %i.w, %i.az
  %i.bb = fcmp ogt double %i.ba, 0.000000e+00
  br i1 %i.bb, label %.preheader256, label %bb.j

.preheader256:                                    ; preds = %bb.h, %.preheader256
  %storemerge.i = phi i64 [ %i.bi, %.preheader256 ], [ %i.v, %bb.h ] ; 4 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.d, i64 %storemerge.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29
  %i.be = load double, ptr %i.bd, align 8, !tbaa !63
  %i.bf = fsub double %1, %i.be
  %i.bg = fmul double %i.w, %i.bf
  %i.bh = fcmp ogt double %i.bg, 0.000000e+00
  %i.bi = add nsw i64 %storemerge.i, 1
  br i1 %i.bh, label %.preheader256, label %bb.i

bb.i:                                             ; preds = %.preheader256
  store i64 %storemerge.i, ptr %i.x, align 8, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1227.ph = phi i64 [ %storemerge.i, %bb.i ], [ %i.v, %bb.h ] ; 2 uses
  %.2225.ph = phi i32 [ 1, %bb.i ], [ %.0223, %bb.h ]
  %i.bj = icmp eq i64 %.1227.ph, 0
  br i1 %i.bj, label %..thread_crit_edge, label %bb.l

..thread_crit_edge:                               ; preds = %bb.j
  %.pre337 = load ptr, ptr %i.d, align 8, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %.loopexit255
  %i.bk = phi ptr [ %.pre337, %..thread_crit_edge ], [ %i.ap, %.loopexit255 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !31 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !74
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bn, ptr noundef %2) #8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !75
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.bp, ptr noundef %3) #8
  %i.bq = icmp sgt i32 %.fr280, 0
  br i1 %i.bq, label %.preheader, label %bb.z

.preheader:                                       ; preds = %.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 2064 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !65 ; 3 uses
  %wide.trip.count335 = zext nneg i32 %.fr280 to i64 ; 3 uses
  %min.iters.check376 = icmp ult i32 %.fr280, 4
  br i1 %min.iters.check376, label %scalar.ph375.preheader, label %vector.ph377

vector.ph377:                                     ; preds = %.preheader
  %n.vec378 = and i64 %wide.trip.count335, 2147483644 ; 3 uses
  br label %vector.body379

vector.body379:                                   ; preds = %vector.body379, %vector.ph377
  %index380 = phi i64 [ 0, %vector.ph377 ], [ %index.next381, %vector.body379 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index380 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bt, align 8, !tbaa !66
  store <2 x double> splat (double 1.000000e+00), ptr %i.bu, align 8, !tbaa !66
  %index.next381 = add nuw i64 %index380, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next381, %n.vec378
  br i1 %i.bv, label %middle.block382, label %vector.body379, !llvm.loop !130

middle.block382:                                  ; preds = %vector.body379
  %cmp.n383 = icmp eq i64 %n.vec378, %wide.trip.count335
  br i1 %cmp.n383, label %.loopexit385, label %scalar.ph375.preheader

scalar.ph375.preheader:                           ; preds = %.preheader, %middle.block382
  %indvars.iv332.ph = phi i64 [ 0, %.preheader ], [ %n.vec378, %middle.block382 ]
  br label %scalar.ph375

scalar.ph375:                                     ; preds = %scalar.ph375.preheader, %scalar.ph375
  %indvars.iv332 = phi i64 [ %indvars.iv.next333, %scalar.ph375 ], [ %indvars.iv332.ph, %scalar.ph375.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv332
  store double 1.000000e+00, ptr %i.bw, align 8, !tbaa !66
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %.loopexit385, label %scalar.ph375, !llvm.loop !131

.loopexit385:                                     ; preds = %scalar.ph375, %middle.block382
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !76
  %i.bz = tail call i32 @N_VScaleVectorArray(i32 noundef %.fr280, ptr noundef nonnull %i.bs, ptr noundef %i.by, ptr noundef %4) #8
  %.not219 = icmp eq i32 %i.bz, 0
  br i1 %.not219, label %bb.k, label %IDAAfindIndex.exit

bb.k:                                             ; preds = %.loopexit385
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !77
  %i.cd = tail call i32 @N_VScaleVectorArray(i32 noundef %.fr280, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %5) #8
  %.not220 = icmp eq i32 %i.cd, 0
  br i1 %.not220, label %bb.z, label %IDAAfindIndex.exit

bb.l:                                             ; preds = %.thread239, %bb.j
  %.2225.ph243 = phi i32 [ 1, %.thread239 ], [ %.2225.ph, %bb.j ] ; 2 uses
  %.1227.ph242 = phi i64 [ %storemerge5256.i, %.thread239 ], [ %.1227.ph, %bb.j ] ; 4 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.d, i64 %.1227.ph242
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !63
  %i.ch = add nsw i64 %.1227.ph242, -1            ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !29 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !63
  %i.cl = fsub double %i.cg, %i.ck
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl) ; 11 uses
  br i1 %i.o, label %.thread340, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !31
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !78 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !62 ; 2 uses
  %i.ct = sub nsw i64 %i.cs, %.1227.ph242
  %i.cu = sext i32 %i.cq to i64                   ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, %i.cu
  %.neg = xor i64 %i.cu, -1
  %i.cw = add i64 %i.cs, %.neg
  %.0191 = select i1 %i.cv, i64 %i.cw, i64 %i.ch
  %.not207 = icmp eq i32 %.2225.ph243, 0
  br i1 %.not207, label %.loopexit247, label %.preheader252

.thread340:                                       ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !78 ; 6 uses
  %i.db = sext i32 %i.da to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %.1227.ph242, i64 %i.db)
  %.not207343 = icmp eq i32 %.2225.ph243, 0
  br i1 %.not207343, label %.loopexit247, label %.preheader249

.preheader252:                                    ; preds = %bb.m
  %.not208259 = icmp slt i32 %i.cq, 0
  br i1 %.not208259, label %.loopexit247.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader252
  %i.dc = getelementptr [8 x i8], ptr %i.d, i64 %.0191
  %i.dd = getelementptr i8, ptr %i.dc, i64 -8
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.dg = icmp sgt i32 %.fr280, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dj = add nuw i32 %i.cq, 1
  %wide.trip.count289 = zext i32 %i.dj to i64
  %wide.trip.count = zext i32 %.fr280 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %.fr280, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %bb.p

.preheader249:                                    ; preds = %.thread340
  %.not210262 = icmp slt i32 %i.da, 0
  br i1 %.not210262, label %.loopexit247.thread, label %.lr.ph264

.lr.ph264:                                        ; preds = %.preheader249
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.dm = icmp sgt i32 %.fr280, 0
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 2064
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.dp = add nuw i32 %i.da, 1
  %wide.trip.count299 = zext i32 %i.dp to i64
  %wide.trip.count294 = zext i32 %.fr280 to i64   ; 3 uses
  %min.iters.check366 = icmp ult i32 %.fr280, 4
  %n.vec368 = and i64 %wide.trip.count294, 2147483644 ; 3 uses
  %cmp.n373 = icmp eq i64 %n.vec368, %wide.trip.count294
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph264, %bb.o
  %indvars.iv296 = phi i64 [ 0, %.lr.ph264 ], [ %indvars.iv.next297, %bb.o ] ; 5 uses
  %i.dq = sub nsw i64 %spec.select, %indvars.iv296
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dq
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !29 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !63
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv296
  store double %i.dt, ptr %i.du, align 8, !tbaa !66
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !31 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !74
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv296
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !69
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.dx, ptr noundef %i.dz) #8
  br i1 %i.dm, label %.preheader248, label %bb.o

.preheader248:                                    ; preds = %bb.n
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !65 ; 3 uses
  br i1 %min.iters.check366, label %scalar.ph365.preheader, label %vector.body369

vector.body369:                                   ; preds = %.preheader248, %vector.body369
  %index370 = phi i64 [ %index.next371, %vector.body369 ], [ 0, %.preheader248 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index370 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.eb, align 8, !tbaa !66
  store <2 x double> splat (double 1.000000e+00), ptr %i.ec, align 8, !tbaa !66
  %index.next371 = add nuw i64 %index370, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next371, %n.vec368
  br i1 %i.ed, label %middle.block372, label %vector.body369, !llvm.loop !132

middle.block372:                                  ; preds = %vector.body369
  br i1 %cmp.n373, label %.loopexit386, label %scalar.ph365.preheader

scalar.ph365.preheader:                           ; preds = %.preheader248, %middle.block372
  %indvars.iv291.ph = phi i64 [ 0, %.preheader248 ], [ %n.vec368, %middle.block372 ]
  br label %scalar.ph365

scalar.ph365:                                     ; preds = %scalar.ph365.preheader, %scalar.ph365
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %scalar.ph365 ], [ %indvars.iv291.ph, %scalar.ph365.preheader ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv291
  store double 1.000000e+00, ptr %i.ee, align 8, !tbaa !66
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %.loopexit386, label %scalar.ph365, !llvm.loop !133

.loopexit386:                                     ; preds = %scalar.ph365, %middle.block372
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv296
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !70
  %i.ej = tail call i32 @N_VScaleVectorArray(i32 noundef %.fr280, ptr noundef nonnull %i.ea, ptr noundef %i.eg, ptr noundef %i.ei) #8
  %.not218 = icmp eq i32 %i.ej, 0
  br i1 %.not218, label %bb.o, label %IDAAfindIndex.exit

bb.o:                                             ; preds = %bb.n, %.loopexit386
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %.loopexit250, label %bb.n

bb.p:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv286 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next287, %bb.q ] ; 5 uses
  %i.ek = getelementptr [8 x i8], ptr %i.dd, i64 %indvars.iv286
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !29 ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !63
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv286
  store double %i.em, ptr %i.en, align 8, !tbaa !66
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !31 ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !74
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv286
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !69
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.eq, ptr noundef %i.es) #8
  br i1 %i.dg, label %.preheader251, label %bb.q

.preheader251:                                    ; preds = %bb.p
  %i.et = load ptr, ptr %i.dh, align 8, !tbaa !65 ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader251, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader251 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %index ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.eu, align 8, !tbaa !66
  store <2 x double> splat (double 1.000000e+00), ptr %i.ev, align 8, !tbaa !66
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit387, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader251, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader251 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.ex, align 8, !tbaa !66
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit387, label %scalar.ph, !llvm.loop !135

.loopexit387:                                     ; preds = %scalar.ph, %middle.block
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !76
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv286
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !70
  %i.fc = tail call i32 @N_VScaleVectorArray(i32 noundef %.fr280, ptr noundef nonnull %i.et, ptr noundef %i.ez, ptr noundef %i.fb) #8
  %.not209 = icmp eq i32 %i.fc, 0
  br i1 %.not209, label %bb.q, label %IDAAfindIndex.exit

bb.q:                                             ; preds = %bb.p, %.loopexit387
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next287, %wide.trip.count289
  br i1 %exitcond290.not, label %.loopexit250, label %bb.p

.loopexit250:                                     ; preds = %bb.q, %bb.o
  %.0199344351 = phi i32 [ %i.da, %bb.o ], [ %i.cq, %bb.q ] ; 6 uses
  %.not211268 = icmp slt i32 %.0199344351, 1
  br i1 %.not211268, label %.loopexit247.thread, label %.preheader246.lr.ph

.preheader246.lr.ph:                              ; preds = %.loopexit250
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 4 uses
  %i.ff = icmp sgt i32 %.fr280, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.fh = zext nneg i32 %.0199344351 to i64       ; 2 uses
  %i.fi = add nuw i32 %.0199344351, 1
  %wide.trip.count320 = zext i32 %i.fi to i64     ; 2 uses
  br i1 %i.ff, label %.preheader246.us.preheader, label %.preheader246

.preheader246.us.preheader:                       ; preds = %.preheader246.lr.ph
  %wide.trip.count312 = zext nneg i32 %.fr280 to i64
  br label %.preheader246.us

.preheader246.us:                                 ; preds = %.preheader246.us.preheader, %.split.us.us
  %indvars.iv317 = phi i64 [ 1, %.preheader246.us.preheader ], [ %indvars.iv.next318, %.split.us.us ] ; 3 uses
  br label %.lr.ph266.us.us

.lr.ph266.us.us:                                  ; preds = %..loopexit_crit_edge.us.us, %.preheader246.us
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %..loopexit_crit_edge.us.us ], [ %i.fh, %.preheader246.us ] ; 6 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %indvars.iv314
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !66
  %i.fl = sub nuw nsw i64 %indvars.iv314, %indvars.iv317
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !66
  %i.fo = fsub double %i.fk, %i.fn
end_hunk_0
