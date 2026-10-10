Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarrj?download=true
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define void @dlarrj_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9, ptr nofree noundef captures(none) %10, ptr nofree noundef readonly captures(none) %11, ptr nofree noundef readonly captures(none) %12, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %13) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %10, i64 -4 ; 14 uses
  %i.b = getelementptr inbounds i8, ptr %9, i64 -8 ; 9 uses
  %i.c = getelementptr inbounds i8, ptr %8, i64 -8 ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %7, i64 -8 ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 -8 ; 12 uses
  %i.f = getelementptr inbounds i8, ptr %1, i64 -8 ; 12 uses
  store i32 0, ptr %13, align 4, !tbaa !18
  %i.g = load i32, ptr %0, align 4, !tbaa !18
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load double, ptr %12, align 8, !tbaa !20
  %i.j = load double, ptr %11, align 8, !tbaa !20 ; 2 uses
  %i.k = fadd double %i.i, %i.j
  %i.l = tail call double @log(double noundef %i.k) #4
  %i.m = tail call double @log(double noundef %i.j) #4
  %i.n = fsub double %i.l, %i.m
  %i.o = fdiv double %i.n, f0x3FE62E42FEFA39EF
  %i.p = fptosi double %i.o to i32
  %i.q = add nsw i32 %i.p, 2                      ; 2 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !18     ; 4 uses
  %i.s = load i32, ptr %4, align 4, !tbaa !18     ; 3 uses
  %.not309 = icmp sgt i32 %i.r, %i.s
  br i1 %.not309, label %.preheader, label %.lr.ph317.preheader

.lr.ph317.preheader:                              ; preds = %bb.b
  %i.t = sext i32 %i.r to i64
  %i.u = sext i32 %i.s to i64
  %i.v = add i32 %i.s, 1
  br label %.lr.ph317

.preheader:                                       ; preds = %bb.i, %bb.b
  %.0248.lcssa = phi i32 [ 0, %bb.b ], [ %.1249, %bb.i ]
  %.0224.lcssa = phi i32 [ %i.r, %bb.b ], [ %.2226, %bb.i ] ; 6 uses
  br label %bb.j

.lr.ph317:                                        ; preds = %.lr.ph317.preheader, %bb.i
  %indvars.iv356 = phi i64 [ %i.t, %.lr.ph317.preheader ], [ %indvars.iv.next357.pre-phi, %bb.i ] ; 11 uses
  %.0224315 = phi i32 [ %i.r, %.lr.ph317.preheader ], [ %.2226, %bb.i ] ; 3 uses
  %.0244311 = phi i32 [ 0, %.lr.ph317.preheader ], [ %.1245, %bb.i ] ; 4 uses
  %.0248310 = phi i32 [ 0, %.lr.ph317.preheader ], [ %.1249, %bb.i ] ; 3 uses
  %i.w = trunc nsw i64 %indvars.iv356 to i32      ; 3 uses
  %i.x = shl i32 %i.w, 1                          ; 2 uses
  %i.y = load i32, ptr %6, align 4, !tbaa !18
  %i.z = sext i32 %i.y to i64
  %i.aa = sub nsw i64 %indvars.iv356, %i.z        ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !20 ; 3 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aa
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !20 ; 5 uses
  %14 = fsub double %i.ac, %i.ae                  ; 9 uses
  %15 = fadd double %i.ac, %i.ae                  ; 10 uses
  %16 = fsub double %15, %i.ac
  %17 = fcmp oge double %14, 0.000000e+00
  %18 = fneg double %14
  %19 = select i1 %17, double %14, double %18     ; 2 uses
  %20 = fcmp oge double %15, 0.000000e+00
  %21 = fneg double %15
  %22 = select i1 %20, double %15, double %21     ; 2 uses
  %i.af = fcmp oge double %19, %22
  %i.ag = select i1 %i.af, double %19, double %22
  %i.ah = load double, ptr %5, align 8, !tbaa !20
  %i.ai = fmul double %i.ah, %i.ag
  %i.aj = fcmp olt double %16, %i.ai
  br i1 %i.aj, label %bb.c, label %.preheader276

.preheader276:                                    ; preds = %.lr.ph317
  %i.ak = load double, ptr %1, align 8, !tbaa !20 ; 6 uses
  %i.al = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  %.not264278 = icmp slt i32 %i.al, 2
  %i.am = fneg double %i.ae                       ; 2 uses
  br i1 %.not264278, label %.preheader276.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader276
  %i.an = add nuw i32 %i.al, 1
  %wide.trip.count = zext i32 %i.an to i64        ; 2 uses
  %i.ao = add nsw i64 %wide.trip.count, -2        ; 4 uses
  %i.ap = add nsw i64 %wide.trip.count, -3        ; 2 uses
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 3
  %unroll_iter = and i64 %i.ao, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod408 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph

.preheader276.split.us:                           ; preds = %.preheader276
  %i.ar = fcmp olt double %i.ak, %14
  %i.as = zext i1 %i.ar to i64
  %.not265.us285 = icmp sgt i64 %indvars.iv356, %i.as
  br i1 %.not265.us285, label %.preheader275.split300.us, label %.lr.ph288

.lr.ph288:                                        ; preds = %.preheader276.split.us, %.lr.ph288
  %.0222.us287 = phi double [ %i.au, %.lr.ph288 ], [ 1.000000e+00, %.preheader276.split.us ] ; 2 uses
  %.0254.us286 = phi double [ %i.at, %.lr.ph288 ], [ %14, %.preheader276.split.us ]
  %i.at = tail call double @llvm.fmuladd.f64(double %i.am, double %.0222.us287, double %.0254.us286) ; 3 uses
  %i.au = fmul double %.0222.us287, 2.000000e+00
  %i.av = fcmp olt double %i.ak, %i.at
  %i.aw = zext i1 %i.av to i64
  %.not265.us = icmp sgt i64 %indvars.iv356, %i.aw
  br i1 %.not265.us, label %.preheader275.split300.us, label %.lr.ph288

bb.c:                                             ; preds = %.lr.ph317
  %i.ax = sext i32 %i.x to i64                    ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.a, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 -4
  store i32 -1, ptr %i.az, align 4, !tbaa !18
  %i.ba = icmp eq i32 %.0224315, %i.w
  %i.bb = icmp slt i64 %indvars.iv356, %i.u
  %or.cond = and i1 %i.bb, %i.ba
  %i.bc = add nsw i64 %indvars.iv356, 1           ; 3 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 4 uses
  %.1225 = select i1 %or.cond, i32 %i.bd, i32 %.0224315 ; 3 uses
  %.not267 = icmp slt i32 %.0244311, %.1225
  br i1 %.not267, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = shl i32 %.0244311, 1
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr [4 x i8], ptr %i.a, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  store i32 %i.bd, ptr %i.bh, align 4, !tbaa !18
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.0254 = phi double [ %i.ds, %bb.f ], [ %14, %.lr.ph.preheader ] ; 8 uses
  %.0222 = phi double [ %i.dt, %bb.f ], [ 1.000000e+00, %.lr.ph.preheader ] ; 2 uses
  %i.bi = fsub double %i.ak, %.0254               ; 3 uses
  %i.bj = fcmp olt double %i.bi, 0.000000e+00
  %spec.select = zext i1 %i.bj to i32             ; 2 uses
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.new ], [ 2, %.lr.ph ] ; 7 uses
  %.1281 = phi i32 [ %spec.select268.3, %.lr.ph.new ], [ %spec.select, %.lr.ph ]
  %.0231280 = phi double [ %i.cv, %.lr.ph.new ], [ %i.bi, %.lr.ph ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !20
  %i.bm = fsub double %i.bl, %.0254
  %i.bn = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bo = getelementptr i8, ptr %i.bn, i64 -8
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !20
  %i.bq = fdiv double %i.bp, %.0231280
  %i.br = fsub double %i.bm, %i.bq                ; 2 uses
  %i.bs = fcmp olt double %i.br, 0.000000e+00
  %i.bt = zext i1 %i.bs to i32
  %spec.select268 = add nuw nsw i32 %.1281, %i.bt
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !20
  %i.bw = fsub double %i.bv, %.0254
  %i.bx = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !20
  %i.ca = fdiv double %i.bz, %i.br
  %i.cb = fsub double %i.bw, %i.ca                ; 2 uses
  %i.cc = fcmp olt double %i.cb, 0.000000e+00
  %i.cd = zext i1 %i.cc to i32
  %spec.select268.1 = add nuw nsw i32 %spec.select268, %i.cd
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.1
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !20
  %i.cg = fsub double %i.cf, %.0254
  %i.ch = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ci = getelementptr i8, ptr %i.ch, i64 -8
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !20
  %i.ck = fdiv double %i.cj, %i.cb
  %i.cl = fsub double %i.cg, %i.ck                ; 2 uses
  %i.cm = fcmp olt double %i.cl, 0.000000e+00
  %i.cn = zext i1 %i.cm to i32
  %spec.select268.2 = add nuw nsw i32 %spec.select268.1, %i.cn
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.2
  %i.cp = load double, ptr %i.co, align 8, !tbaa !20
  %i.cq = fsub double %i.cp, %.0254
  %i.cr = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next.2
  %i.cs = getelementptr i8, ptr %i.cr, i64 -8
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !20
  %i.cu = fdiv double %i.ct, %i.cl
  %i.cv = fsub double %i.cq, %i.cu                ; 3 uses
  %i.cw = fcmp olt double %i.cv, 0.000000e+00
  %i.cx = zext i1 %i.cw to i32
  %spec.select268.3 = add nuw nsw i32 %spec.select268.2, %i.cx ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !8

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.1281.epil.init = phi i32 [ %spec.select, %.lr.ph ], [ %spec.select268.3, %._crit_edge.unr-lcssa ]
  %.0231280.epil.init = phi double [ %i.bi, %.lr.ph ], [ %i.cv, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod408)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.e ] ; 3 uses
  %.1281.epil = phi i32 [ %.1281.epil.init, %.epil.preheader ], [ %spec.select268.epil, %bb.e ]
  %.0231280.epil = phi double [ %.0231280.epil.init, %.epil.preheader ], [ %i.df, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !20
  %i.da = fsub double %i.cz, %.0254
  %i.db = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.dc = getelementptr i8, ptr %i.db, i64 -8
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !20
  %i.de = fdiv double %i.dd, %.0231280.epil
  %i.df = fsub double %i.da, %i.de                ; 2 uses
  %i.dg = fcmp olt double %i.df, 0.000000e+00
  %i.dh = zext i1 %i.dg to i32
  %spec.select268.epil = add nuw nsw i32 %.1281.epil, %i.dh ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.e, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.unr-lcssa
  %spec.select268.lcssa = phi i32 [ %spec.select268.3, %._crit_edge.unr-lcssa ], [ %spec.select268.epil, %bb.e ]
  %i.di = zext nneg i32 %spec.select268.lcssa to i64
  %.not265 = icmp sgt i64 %indvars.iv356, %i.di
  br i1 %.not265, label %.lr.ph297.preheader, label %bb.f

.lr.ph297.preheader:                              ; preds = %._crit_edge
  %xtraiter410 = and i64 %i.ao, 3                 ; 3 uses
  %i.dj = icmp ult i64 %i.ap, 3
  %unroll_iter415 = and i64 %i.ao, -4
  %lcmp.mod412.not = icmp eq i64 %xtraiter410, 0
  %lcmp.mod414 = icmp ne i64 %xtraiter410, 0
  br label %.lr.ph297

.preheader275.split300.us:                        ; preds = %.lr.ph288, %.preheader276.split.us
  %.us-phi381 = phi double [ %14, %.preheader276.split.us ], [ %i.at, %.lr.ph288 ] ; 2 uses
  %i.dk = fcmp olt double %i.ak, %15              ; 2 uses
  %spec.select269.us303 = zext i1 %i.dk to i32
  %i.dl = zext i1 %i.dk to i64
  %i.dm = icmp samesign ugt i64 %indvars.iv356, %i.dl
  br i1 %i.dm, label %.lr.ph306, label %.split.us

.lr.ph306:                                        ; preds = %.preheader275.split300.us, %.lr.ph306
  %.1223.us305 = phi double [ %i.do, %.lr.ph306 ], [ 1.000000e+00, %.preheader275.split300.us ] ; 2 uses
  %.0234.us304 = phi double [ %i.dn, %.lr.ph306 ], [ %15, %.preheader275.split300.us ]
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.ae, double %.1223.us305, double %.0234.us304) ; 3 uses
  %i.do = fmul double %.1223.us305, 2.000000e+00
  %i.dp = fcmp olt double %i.ak, %i.dn            ; 2 uses
  %i.dq = zext i1 %i.dp to i64
  %i.dr = icmp samesign ugt i64 %indvars.iv356, %i.dq
  br i1 %i.dr, label %.lr.ph306, label %.split.us.loopexit

bb.f:                                             ; preds = %._crit_edge
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.am, double %.0222, double %.0254)
  %i.dt = fmul double %.0222, 2.000000e+00
  br label %.lr.ph

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %bb.h
  %.0234 = phi double [ %i.fw, %bb.h ], [ %15, %.lr.ph297.preheader ] ; 8 uses
  %.1223 = phi double [ %i.fx, %bb.h ], [ 1.000000e+00, %.lr.ph297.preheader ] ; 2 uses
  %i.du = fsub double %i.ak, %.0234               ; 3 uses
  %i.dv = fcmp olt double %i.du, 0.000000e+00
  %spec.select269 = zext i1 %i.dv to i32          ; 2 uses
  br i1 %i.dj, label %.epil.preheader409, label %.lr.ph297.new

.lr.ph297.new:                                    ; preds = %.lr.ph297, %.lr.ph297.new
  %indvars.iv351 = phi i64 [ %indvars.iv.next352.3, %.lr.ph297.new ], [ 2, %.lr.ph297 ] ; 7 uses
  %.4295 = phi i32 [ %spec.select270.3, %.lr.ph297.new ], [ %spec.select269, %.lr.ph297 ]
  %.1232294 = phi double [ %i.fh, %.lr.ph297.new ], [ %i.du, %.lr.ph297 ]
  %niter416 = phi i64 [ %niter416.next.3, %.lr.ph297.new ], [ 0, %.lr.ph297 ]
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv351
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !20
  %i.dy = fsub double %i.dx, %.0234
  %i.dz = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv351
  %i.ea = getelementptr i8, ptr %i.dz, i64 -8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !20
  %i.ec = fdiv double %i.eb, %.1232294
  %i.ed = fsub double %i.dy, %i.ec                ; 2 uses
  %i.ee = fcmp olt double %i.ed, 0.000000e+00
  %i.ef = zext i1 %i.ee to i32
  %spec.select270 = add nuw nsw i32 %.4295, %i.ef
  %i.eg = getelementptr [8 x i8], ptr %1, i64 %indvars.iv351
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !20
  %i.ei = fsub double %i.eh, %.0234
  %i.ej = getelementptr [8 x i8], ptr %2, i64 %indvars.iv351
  %i.ek = getelementptr i8, ptr %i.ej, i64 -8
  %i.el = load double, ptr %i.ek, align 8, !tbaa !20
  %i.em = fdiv double %i.el, %i.ed
  %i.en = fsub double %i.ei, %i.em                ; 2 uses
  %i.eo = fcmp olt double %i.en, 0.000000e+00
  %i.ep = zext i1 %i.eo to i32
  %spec.select270.1 = add nuw nsw i32 %spec.select270, %i.ep
  %indvars.iv.next352.1 = add nuw nsw i64 %indvars.iv351, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next352.1
  %i.er = load double, ptr %i.eq, align 8, !tbaa !20
  %i.es = fsub double %i.er, %.0234
  %i.et = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next352.1
  %i.eu = getelementptr i8, ptr %i.et, i64 -8
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !20
  %i.ew = fdiv double %i.ev, %i.en
  %i.ex = fsub double %i.es, %i.ew                ; 2 uses
  %i.ey = fcmp olt double %i.ex, 0.000000e+00
  %i.ez = zext i1 %i.ey to i32
  %spec.select270.2 = add nuw nsw i32 %spec.select270.1, %i.ez
  %indvars.iv.next352.2 = add nuw nsw i64 %indvars.iv351, 3 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next352.2
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !20
  %i.fc = fsub double %i.fb, %.0234
  %i.fd = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.next352.2
  %i.fe = getelementptr i8, ptr %i.fd, i64 -8
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !20
  %i.fg = fdiv double %i.ff, %i.ex
  %i.fh = fsub double %i.fc, %i.fg                ; 3 uses
  %i.fi = fcmp olt double %i.fh, 0.000000e+00
  %i.fj = zext i1 %i.fi to i32
  %spec.select270.3 = add nuw nsw i32 %spec.select270.2, %i.fj ; 3 uses
  %indvars.iv.next352.3 = add nuw nsw i64 %indvars.iv351, 4 ; 2 uses
  %niter416.next.3 = add nuw i64 %niter416, 4     ; 2 uses
  %niter416.ncmp.3 = icmp eq i64 %niter416.next.3, %unroll_iter415
  br i1 %niter416.ncmp.3, label %._crit_edge298.unr-lcssa, label %.lr.ph297.new, !llvm.loop !10

._crit_edge298.unr-lcssa:                         ; preds = %.lr.ph297.new
  br i1 %lcmp.mod412.not, label %._crit_edge298, label %.epil.preheader409

.epil.preheader409:                               ; preds = %._crit_edge298.unr-lcssa, %.lr.ph297
  %indvars.iv351.epil.init = phi i64 [ 2, %.lr.ph297 ], [ %indvars.iv.next352.3, %._crit_edge298.unr-lcssa ]
  %.4295.epil.init = phi i32 [ %spec.select269, %.lr.ph297 ], [ %spec.select270.3, %._crit_edge298.unr-lcssa ]
  %.1232294.epil.init = phi double [ %i.du, %.lr.ph297 ], [ %i.fh, %._crit_edge298.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod414)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader409
  %indvars.iv351.epil = phi i64 [ %indvars.iv351.epil.init, %.epil.preheader409 ], [ %indvars.iv.next352.epil, %bb.g ] ; 3 uses
  %.4295.epil = phi i32 [ %.4295.epil.init, %.epil.preheader409 ], [ %spec.select270.epil, %bb.g ]
  %.1232294.epil = phi double [ %.1232294.epil.init, %.epil.preheader409 ], [ %i.fr, %bb.g ]
  %epil.iter411 = phi i64 [ 0, %.epil.preheader409 ], [ %epil.iter411.next, %bb.g ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv351.epil
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !20
  %i.fm = fsub double %i.fl, %.0234
  %i.fn = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv351.epil
  %i.fo = getelementptr i8, ptr %i.fn, i64 -8
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !20
  %i.fq = fdiv double %i.fp, %.1232294.epil
  %i.fr = fsub double %i.fm, %i.fq                ; 2 uses
  %i.fs = fcmp olt double %i.fr, 0.000000e+00
  %i.ft = zext i1 %i.fs to i32
  %spec.select270.epil = add nuw nsw i32 %.4295.epil, %i.ft ; 2 uses
  %indvars.iv.next352.epil = add nuw nsw i64 %indvars.iv351.epil, 1
  %epil.iter411.next = add i64 %epil.iter411, 1   ; 2 uses
  %epil.iter411.cmp.not = icmp eq i64 %epil.iter411.next, %xtraiter410
  br i1 %epil.iter411.cmp.not, label %._crit_edge298, label %bb.g, !llvm.loop !11

._crit_edge298:                                   ; preds = %bb.g, %._crit_edge298.unr-lcssa
  %spec.select270.lcssa = phi i32 [ %spec.select270.3, %._crit_edge298.unr-lcssa ], [ %spec.select270.epil, %bb.g ] ; 2 uses
  %i.fu = zext nneg i32 %spec.select270.lcssa to i64
  %i.fv = icmp samesign ugt i64 %indvars.iv356, %i.fu
  br i1 %i.fv, label %bb.h, label %.split.us

bb.h:                                             ; preds = %._crit_edge298
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.ae, double %.1223, double %.0234)
  %i.fx = fmul double %.1223, 2.000000e+00
  br label %.lr.ph297

.split.us.loopexit:                               ; preds = %.lr.ph306
  %spec.select269.us = zext i1 %i.dp to i32
  br label %.split.us

.split.us:                                        ; preds = %._crit_edge298, %.split.us.loopexit, %.preheader275.split300.us
  %.us-phi380 = phi double [ %.us-phi381, %.split.us.loopexit ], [ %.us-phi381, %.preheader275.split300.us ], [ %.0254, %._crit_edge298 ]
  %.us-phi301 = phi double [ %i.dn, %.split.us.loopexit ], [ %15, %.preheader275.split300.us ], [ %.0234, %._crit_edge298 ]
  %.us-phi302 = phi i32 [ %spec.select269.us, %.split.us.loopexit ], [ %spec.select269.us303, %.preheader275.split300.us ], [ %spec.select270.lcssa, %._crit_edge298 ]
  %i.fy = add nsw i32 %.0248310, 1
  %i.fz = add nuw nsw i64 %indvars.iv356, 1       ; 2 uses
  %i.ga = sext i32 %i.x to i64                    ; 2 uses
  %i.gb = getelementptr [4 x i8], ptr %i.a, i64 %i.ga ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 -4
  %i.gd = trunc i64 %i.fz to i32                  ; 2 uses
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !18
  store i32 %.us-phi302, ptr %i.gb, align 4, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %.split.us
  %lftr.wideiv.pre-phi = phi i32 [ %i.bd, %bb.c ], [ %i.bd, %bb.d ], [ %i.gd, %.split.us ]
  %indvars.iv.next357.pre-phi = phi i64 [ %i.bc, %bb.c ], [ %i.bc, %bb.d ], [ %i.fz, %.split.us ]
  %.pre-phi = phi i64 [ %i.ax, %bb.c ], [ %i.ax, %bb.d ], [ %i.ga, %.split.us ]
  %.1255 = phi double [ %14, %bb.c ], [ %14, %bb.d ], [ %.us-phi380, %.split.us ]
  %.1249 = phi i32 [ %.0248310, %bb.c ], [ %.0248310, %bb.d ], [ %i.fy, %.split.us ] ; 2 uses
  %.1245 = phi i32 [ %.0244311, %bb.c ], [ %.0244311, %bb.d ], [ %i.w, %.split.us ]
  %.1235 = phi double [ %15, %bb.c ], [ %15, %bb.d ], [ %.us-phi301, %.split.us ]
  %.2226 = phi i32 [ %.1225, %bb.c ], [ %.1225, %bb.d ], [ %.0224315, %.split.us ] ; 2 uses
  %i.ge = getelementptr [8 x i8], ptr %i.b, i64 %.pre-phi ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 -8
  store double %.1255, ptr %i.gf, align 8, !tbaa !20
  store double %.1235, ptr %i.ge, align 8, !tbaa !20
  %exitcond359.not = icmp eq i32 %lftr.wideiv.pre-phi, %i.v
  br i1 %exitcond359.not, label %.preheader, label %.lr.ph317, !llvm.loop !12

bb.j:                                             ; preds = %.preheader, %._crit_edge336
  %.0253 = phi i32 [ %i.kx, %._crit_edge336 ], [ 0, %.preheader ] ; 3 uses
  %.2250 = phi i32 [ %.4252, %._crit_edge336 ], [ %.0248.lcssa, %.preheader ] ; 6 uses
  %.3227 = phi i32 [ %.6230, %._crit_edge336 ], [ %.0224.lcssa, %.preheader ] ; 12 uses
  %.not258328 = icmp slt i32 %.2250, 1
  br i1 %.not258328, label %._crit_edge336.thread, label %.lr.ph335

.lr.ph335:                                        ; preds = %bb.j
  %i.gg = add nsw i32 %.3227, -1                  ; 2 uses
  %i.gh = icmp eq i32 %.0253, %i.q
  %.fr = freeze i1 %i.gh
  br i1 %.fr, label %.lr.ph335.split.us, label %.lr.ph335.split

.lr.ph335.split.us:                               ; preds = %.lr.ph335
  %i.gi = shl i32 %i.gg, 1
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr [4 x i8], ptr %i.a, i64 %i.gj
  %i.gl = getelementptr i8, ptr %i.gk, i64 -4     ; 5 uses
  %xtraiter426 = and i32 %.2250, 3                ; 3 uses
  %i.gm = icmp ult i32 %.2250, 4
  br i1 %i.gm, label %.epil.preheader424, label %.lr.ph335.split.us.new

.lr.ph335.split.us.new:                           ; preds = %.lr.ph335.split.us
  %unroll_iter430 = and i32 %.2250, 2147483644
  br label %bb.k

bb.k:                                             ; preds = %bb.w, %.lr.ph335.split.us.new
  %.4228333.us = phi i32 [ %.3227, %.lr.ph335.split.us.new ], [ %.6230.us.3, %bb.w ] ; 4 uses
  %.1241331.us = phi i32 [ %.3227, %.lr.ph335.split.us.new ], [ %i.hj, %bb.w ] ; 2 uses
  %niter431 = phi i32 [ 0, %.lr.ph335.split.us.new ], [ %niter431.next.3, %bb.w ]
  %i.gn = shl i32 %.1241331.us, 1
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [4 x i8], ptr %i.a, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 -4     ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !18 ; 4 uses
  store i32 0, ptr %i.gq, align 4, !tbaa !18
  %i.gs = icmp eq i32 %.4228333.us, %.1241331.us
  br i1 %i.gs, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not263.us.not = icmp sgt i32 %.3227, %.4228333.us
  br i1 %.not263.us.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.gr, ptr %i.gl, align 4, !tbaa !18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.6230.us = phi i32 [ %.4228333.us, %bb.m ], [ %i.gr, %bb.k ], [ %.4228333.us, %bb.l ] ; 4 uses
  %i.gt = shl i32 %i.gr, 1
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr [4 x i8], ptr %i.a, i64 %i.gu
  %i.gw = getelementptr i8, ptr %i.gv, i64 -4     ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !18 ; 4 uses
  store i32 0, ptr %i.gw, align 4, !tbaa !18
  %i.gy = icmp eq i32 %.6230.us, %i.gr
  br i1 %i.gy, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not263.us.not.1 = icmp sgt i32 %.3227, %.6230.us
  br i1 %.not263.us.not.1, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 %i.gx, ptr %i.gl, align 4, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.6230.us.1 = phi i32 [ %.6230.us, %bb.p ], [ %i.gx, %bb.n ], [ %.6230.us, %bb.o ] ; 4 uses
  %i.gz = shl i32 %i.gx, 1
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr [4 x i8], ptr %i.a, i64 %i.ha
  %i.hc = getelementptr i8, ptr %i.hb, i64 -4     ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !18 ; 4 uses
  store i32 0, ptr %i.hc, align 4, !tbaa !18
  %i.he = icmp eq i32 %.6230.us.1, %i.gx
  br i1 %i.he, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not263.us.not.2 = icmp sgt i32 %.3227, %.6230.us.1
  br i1 %.not263.us.not.2, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.hd, ptr %i.gl, align 4, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.6230.us.2 = phi i32 [ %.6230.us.1, %bb.s ], [ %i.hd, %bb.q ], [ %.6230.us.1, %bb.r ] ; 4 uses
  %i.hf = shl i32 %i.hd, 1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr [4 x i8], ptr %i.a, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -4     ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !18 ; 4 uses
  store i32 0, ptr %i.hi, align 4, !tbaa !18
  %i.hk = icmp eq i32 %.6230.us.2, %i.hd
  br i1 %i.hk, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not263.us.not.3 = icmp sgt i32 %.3227, %.6230.us.2
  br i1 %.not263.us.not.3, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.hj, ptr %i.gl, align 4, !tbaa !18
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %.6230.us.3 = phi i32 [ %.6230.us.2, %bb.v ], [ %i.hj, %bb.t ], [ %.6230.us.2, %bb.u ] ; 2 uses
  %niter431.next.3 = add nuw nsw i32 %niter431, 4 ; 2 uses
  %niter431.ncmp.3 = icmp eq i32 %niter431.next.3, %unroll_iter430
  br i1 %niter431.ncmp.3, label %._crit_edge336.thread.loopexit.unr-lcssa, label %bb.k, !llvm.loop !13

.lr.ph335.split:                                  ; preds = %.lr.ph335, %bb.ad
  %.4228333 = phi i32 [ %.6230, %bb.ad ], [ %.3227, %.lr.ph335 ] ; 6 uses
  %.0236332 = phi i32 [ %i.kv, %bb.ad ], [ 1, %.lr.ph335 ] ; 2 uses
  %.1241331 = phi i32 [ %i.hp, %bb.ad ], [ %.3227, %.lr.ph335 ] ; 5 uses
  %.2246330 = phi i32 [ %.3247, %bb.ad ], [ %i.gg, %.lr.ph335 ] ; 5 uses
  %.3251329 = phi i32 [ %.4252, %bb.ad ], [ %.2250, %.lr.ph335 ] ; 3 uses
  %i.hl = shl i32 %.1241331, 1                    ; 2 uses
  %i.hm = add nsw i32 %i.hl, -1
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.hn ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !18 ; 3 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hn ; 2 uses
  %i.hr = sext i32 %i.hl to i64
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.hr
  %i.ht = load <2 x double>, ptr %i.hq, align 8, !tbaa !20 ; 5 uses
  %i.hu = extractelement <2 x double> %i.ht, i64 0
  %i.hv = extractelement <2 x double> %i.ht, i64 1 ; 2 uses
  %i.hw = fadd double %i.hu, %i.hv
  %i.hx = fmul double %i.hw, 5.000000e-01         ; 9 uses
  %i.hy = fsub double %i.hv, %i.hx
  %i.hz = fcmp oge <2 x double> %i.ht, zeroinitializer
  %i.ia = fneg <2 x double> %i.ht
  %i.ib = select <2 x i1> %i.hz, <2 x double> %i.ht, <2 x double> %i.ia ; 2 uses
  %i.ic = extractelement <2 x double> %i.ib, i64 0 ; 2 uses
  %i.id = extractelement <2 x double> %i.ib, i64 1 ; 2 uses
  %i.ie = fcmp oge double %i.ic, %i.id
  %i.if = select i1 %i.ie, double %i.ic, double %i.id
  %i.ig = load double, ptr %5, align 8, !tbaa !20
  %i.ih = fmul double %i.ig, %i.if
  %i.ii = fcmp olt double %i.hy, %i.ih
  br i1 %i.ii, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.lr.ph335.split
  %i.ij = add nsw i32 %.3251329, -1               ; 3 uses
  store i32 0, ptr %i.ho, align 4, !tbaa !18
  %i.ik = icmp eq i32 %.4228333, %.1241331
  br i1 %i.ik, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not263 = icmp slt i32 %.2246330, %.4228333
  br i1 %.not263, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.il = shl i32 %.2246330, 1
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr [4 x i8], ptr %i.a, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 -4
  store i32 %i.hp, ptr %i.io, align 4, !tbaa !18
  br label %bb.ad

bb.aa:                                            ; preds = %.lr.ph335.split
  %i.ip = load double, ptr %1, align 8, !tbaa !20
  %i.iq = fsub double %i.ip, %i.hx                ; 3 uses
  %i.ir = fcmp olt double %i.iq, 0.000000e+00
  %spec.select272 = zext i1 %i.ir to i32          ; 3 uses
  %i.is = load i32, ptr %0, align 4, !tbaa !18    ; 3 uses
  %.not261320 = icmp slt i32 %i.is, 2
  br i1 %.not261320, label %._crit_edge326, label %.lr.ph325.preheader

.lr.ph325.preheader:                              ; preds = %bb.aa
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = add nsw i64 %i.it, -1                   ; 2 uses
  %xtraiter417 = and i64 %i.iu, 3                 ; 3 uses
  %i.iv = add nsw i32 %i.is, -2
  %i.iw = icmp ult i32 %i.iv, 3
  br i1 %i.iw, label %.lr.ph325.epil.preheader, label %.lr.ph325.preheader.new

.lr.ph325.preheader.new:                          ; preds = %.lr.ph325.preheader
  %unroll_iter422 = and i64 %i.iu, -4
  br label %.lr.ph325

.lr.ph325:                                        ; preds = %.lr.ph325, %.lr.ph325.preheader.new
  %indvars.iv360 = phi i64 [ 2, %.lr.ph325.preheader.new ], [ %indvars.iv.next361.3, %.lr.ph325 ] ; 7 uses
  %.7323 = phi i32 [ %spec.select272, %.lr.ph325.preheader.new ], [ %spec.select273.3, %.lr.ph325 ]
  %.2233322 = phi double [ %i.iq, %.lr.ph325.preheader.new ], [ %i.ki, %.lr.ph325 ]
  %niter423 = phi i64 [ 0, %.lr.ph325.preheader.new ], [ %niter423.next.3, %.lr.ph325 ]
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv360
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !20
  %i.iz = fsub double %i.iy, %i.hx
  %i.ja = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv360
  %i.jb = getelementptr i8, ptr %i.ja, i64 -8
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !20
end_hunk_0
