Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/compact_vars?download=true
inline.NumInlined: 8
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@zend_observer_fcall_op_array_extension = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define hidden void @zend_optimizer_compact_vars(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 9 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = add i32 %i.d, %i.b                       ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %i.f, 63
  %i.h = lshr i64 %i.g, 3
  %i.i = and i64 %i.h, 1073741816                 ; 3 uses
  %i.j = icmp ugt i32 %i.e, 262144                ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c, !prof !37

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noalias ptr @_emalloc(i64 noundef %i.i) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = alloca i8, i64 %i.i, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.l, %bb.c ], [ %i.k, %bb.b ] ; 13 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !35
  %i.o = load i32, ptr %i.c, align 8, !tbaa !36
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2                  ; 2 uses
  %i.s = icmp ugt i32 %i.p, 8192                  ; 3 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noalias ptr @_emalloc(i64 noundef %i.r) #5
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = alloca i8, i64 %i.r, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.t, %bb.e ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.i, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %.not265 = icmp eq i32 %i.x, 0
  br i1 %.not265, label %.preheader241, label %.lr.ph245

.lr.ph245:                                        ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  %wide.trip.count = zext i32 %i.x to i64
  br label %bb.h

.preheader241:                                    ; preds = %.loopexit, %bb.g
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !35  ; 8 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph248.preheader, label %.preheader240

.lr.ph248.preheader:                              ; preds = %.preheader241
  %wide.trip.count271 = zext nneg i32 %i.aa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count271, 1
  %i.ac = icmp eq i32 %i.aa, 1
  br i1 %i.ac, label %.lr.ph248.epil.preheader, label %.lr.ph248.preheader.new

.lr.ph248.preheader.new:                          ; preds = %.lr.ph248.preheader
  %unroll_iter = and i64 %wide.trip.count271, 2147483646
  br label %.lr.ph248

bb.h:                                             ; preds = %.lr.ph245, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %indvars.iv ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 29
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !41
  %i.ag = and i8 %i.af, 14
  %.not235 = icmp eq i8 %i.ag, 0
  br i1 %.not235, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !42
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = add nsw i32 %i.aj, -5                   ; 2 uses
  %i.al = and i32 %i.ak, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 1, %i.am
  %i.ao = lshr i32 %i.ak, 6
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ap ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !44
  %i.as = or i64 %i.an, %i.ar
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 30
  %i.au = load i8, ptr %i.at, align 2, !tbaa !45
  %i.av = and i8 %i.au, 14
  %.not236 = icmp eq i8 %i.av, 0
  br i1 %.not236, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ay = lshr i32 %i.ax, 4
  %i.az = add nsw i32 %i.ay, -5                   ; 2 uses
  %i.ba = and i32 %i.az, 63
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = shl nuw i64 1, %i.bb
  %i.bd = lshr i32 %i.az, 6
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.be ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !44
  %i.bh = or i64 %i.bc, %i.bg
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !44
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 31
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !46
  %i.bk = and i8 %i.bj, 14
  %.not237 = icmp eq i8 %i.bk, 0
  br i1 %.not237, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = add nsw i32 %i.bn, -5                   ; 2 uses
  %i.bp = and i32 %i.bo, 63
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw i64 1, %i.bq
  %i.bs = lshr i32 %i.bo, 6
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !44
  %i.bw = or i64 %i.br, %i.bv
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !44
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %i.by = load i8, ptr %i.bx, align 4, !tbaa !47
  %i.bz = icmp eq i8 %i.by, 54
  br i1 %i.bz, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !48 ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, 2
  br i1 %i.cc, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.n
  %i.cd = zext i32 %i.cb to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = add nuw nsw i64 %i.ce, 8
  %i.cg = lshr i64 %i.cf, 4                       ; 2 uses
  %i.ch = trunc nuw i64 %i.cg to i32              ; 4 uses
  %1 = and i32 %i.ch, 1
  %lcmp.mod.not.not = icmp eq i32 %1, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %2 = add i32 %i.ch, -1
  %3 = load i32, ptr %i.bl, align 8, !tbaa !42
  %4 = lshr i32 %3, 4
  %5 = add i32 %i.ch, -6
  %6 = add i32 %5, %4                             ; 2 uses
  %7 = and i32 %6, 63
  %8 = zext nneg i32 %7 to i64
  %9 = shl nuw i64 1, %8
  %10 = lshr i32 %6, 6
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %11 ; 2 uses
  %13 = load i64, ptr %12, align 8, !tbaa !44
  %14 = or i64 %9, %13
  store i64 %14, ptr %12, align 8, !tbaa !44
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.0243.unr = phi i32 [ %i.ch, %.lr.ph.preheader ], [ %2, %.lr.ph.prol ]
  %15 = icmp eq i64 %i.cg, 2
  br i1 %15, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0243 = phi i32 [ %i.ci, %.lr.ph ], [ %.0243.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %16 = load i32, ptr %i.bl, align 8, !tbaa !42
  %17 = lshr i32 %16, 4
  %18 = add i32 %.0243, -6
  %19 = add i32 %18, %17                          ; 2 uses
  %20 = and i32 %19, 63
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = lshr i32 %19, 6
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %24 ; 2 uses
  %26 = load i64, ptr %25, align 8, !tbaa !44
  %27 = or i64 %22, %26
  store i64 %27, ptr %25, align 8, !tbaa !44
  %i.ci = add i32 %.0243, -2                      ; 2 uses
  %i.cj = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.ck = lshr i32 %i.cj, 4
  %i.cl = add i32 %.0243, -7
  %i.cm = add i32 %i.cl, %i.ck                    ; 2 uses
  %i.cn = and i32 %i.cm, 63
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = shl nuw i64 1, %i.co
  %i.cq = lshr i32 %i.cm, 6
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cr ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !44
  %i.cu = or i64 %i.cp, %i.ct
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !44
  %i.cv = icmp ugt i32 %i.ci, 1
  br i1 %i.cv, label %.lr.ph, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.n, %bb.m, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader241, label %bb.h, !llvm.loop !13

.preheader240.loopexit.unr-lcssa:                 ; preds = %.lr.ph248
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader240, label %.lr.ph248.epil.preheader

.lr.ph248.epil.preheader:                         ; preds = %.preheader240.loopexit.unr-lcssa, %.lr.ph248.preheader
  %indvars.iv268.epil.init = phi i64 [ 0, %.lr.ph248.preheader ], [ %indvars.iv.next269.1, %.preheader240.loopexit.unr-lcssa ] ; 3 uses
  %.0220247.epil.init = phi i32 [ 0, %.lr.ph248.preheader ], [ %spec.select300.1, %.preheader240.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod307 = trunc i32 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod307)
  %i.cw = lshr i64 %indvars.iv268.epil.init, 6
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !44
  %i.cz = and i64 %indvars.iv268.epil.init, 63
  %i.da = lshr i64 %i.cy, %i.cz                   ; 2 uses
  %i.db = trunc i64 %i.da to i1
  %spec.select.epil = select i1 %i.db, i32 %.0220247.epil.init, i32 -1
  %i.dc = trunc i64 %i.da to i32
  %i.dd = and i32 %i.dc, 1
  %spec.select300.epil = add i32 %.0220247.epil.init, %i.dd
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv268.epil.init
  store i32 %spec.select.epil, ptr %i.de, align 4, !tbaa !50
  br label %.preheader240

.preheader240:                                    ; preds = %.lr.ph248.epil.preheader, %.preheader240.loopexit.unr-lcssa, %.preheader241
  %.0220.lcssa = phi i32 [ 0, %.preheader241 ], [ %spec.select300.1, %.preheader240.loopexit.unr-lcssa ], [ %spec.select300.epil, %.lr.ph248.epil.preheader ] ; 9 uses
  %i.df = load i32, ptr %i.c, align 8, !tbaa !36  ; 6 uses
  %i.dg = add i32 %i.df, %i.aa
  %i.dh = icmp ult i32 %i.aa, %i.dg
  br i1 %i.dh, label %.lr.ph252.preheader, label %._crit_edge

.lr.ph252.preheader:                              ; preds = %.preheader240
  %i.di = sext i32 %i.aa to i64                   ; 2 uses
  %xtraiter308 = and i32 %i.df, 1
  %i.dj = icmp eq i32 %i.df, 1
  br i1 %i.dj, label %.lr.ph252.epil.preheader, label %.lr.ph252.preheader.new

.lr.ph252.preheader.new:                          ; preds = %.lr.ph252.preheader
  %unroll_iter312 = and i32 %i.df, -2
  br label %.lr.ph252

.lr.ph248:                                        ; preds = %.lr.ph248, %.lr.ph248.preheader.new
  %indvars.iv268 = phi i64 [ 0, %.lr.ph248.preheader.new ], [ %indvars.iv.next269.1, %.lr.ph248 ] ; 5 uses
  %.0220247 = phi i32 [ 0, %.lr.ph248.preheader.new ], [ %spec.select300.1, %.lr.ph248 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph248.preheader.new ], [ %niter.next.1, %.lr.ph248 ]
  %i.dk = lshr i64 %indvars.iv268, 6
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !44 ; 2 uses
  %i.dn = and i64 %indvars.iv268, 62
  %i.do = lshr i64 %i.dm, %i.dn                   ; 2 uses
  %i.dp = trunc i64 %i.do to i1
  %spec.select = select i1 %i.dp, i32 %.0220247, i32 -1
  %i.dq = trunc i64 %i.do to i32
  %i.dr = and i32 %i.dq, 1
  %spec.select300 = add i32 %.0220247, %i.dr      ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv268
  store i32 %spec.select, ptr %i.ds, align 4, !tbaa !50
  %indvars.iv.next269 = or disjoint i64 %indvars.iv268, 1 ; 2 uses
  %i.dt = and i64 %indvars.iv.next269, 63
  %i.du = lshr i64 %i.dm, %i.dt                   ; 2 uses
  %i.dv = trunc i64 %i.du to i1
  %spec.select.1 = select i1 %i.dv, i32 %spec.select300, i32 -1
  %i.dw = trunc i64 %i.du to i32
  %i.dx = and i32 %i.dw, 1
  %spec.select300.1 = add i32 %spec.select300, %i.dx ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next269
  store i32 %spec.select.1, ptr %i.dy, align 4, !tbaa !50
  %indvars.iv.next269.1 = add nuw nsw i64 %indvars.iv268, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader240.loopexit.unr-lcssa, label %.lr.ph248, !llvm.loop !14

.lr.ph252:                                        ; preds = %.lr.ph252, %.lr.ph252.preheader.new
  %indvars.iv273 = phi i64 [ %i.di, %.lr.ph252.preheader.new ], [ %indvars.iv.next274.1, %.lr.ph252 ] ; 5 uses
  %.0219251 = phi i32 [ 0, %.lr.ph252.preheader.new ], [ %.1.1, %.lr.ph252 ] ; 2 uses
  %niter313 = phi i32 [ 0, %.lr.ph252.preheader.new ], [ %niter313.next.1, %.lr.ph252 ]
  %i.dz = lshr i64 %indvars.iv273, 6
  %i.ea = and i64 %i.dz, 67108863
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !44
  %i.ed = and i64 %indvars.iv273, 63
  %i.ee = lshr i64 %i.ec, %i.ed                   ; 2 uses
  %i.ef = trunc i64 %i.ee to i1
  %i.eg = add i32 %.0219251, %.0220.lcssa
  %.sink285 = select i1 %i.ef, i32 %i.eg, i32 -1
  %i.eh = trunc i64 %i.ee to i32
  %i.ei = and i32 %i.eh, 1
  %.1 = add i32 %.0219251, %i.ei                  ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv273
  store i32 %.sink285, ptr %i.ej, align 4, !tbaa !50
  %indvars.iv.next274 = add nuw nsw i64 %indvars.iv273, 1 ; 3 uses
  %i.ek = lshr i64 %indvars.iv.next274, 6
  %i.el = and i64 %i.ek, 67108863
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !44
  %i.eo = and i64 %indvars.iv.next274, 63
  %i.ep = lshr i64 %i.en, %i.eo                   ; 2 uses
  %i.eq = trunc i64 %i.ep to i1
  %i.er = add i32 %.1, %.0220.lcssa
  %.sink285.1 = select i1 %i.eq, i32 %i.er, i32 -1
  %i.es = trunc i64 %i.ep to i32
  %i.et = and i32 %i.es, 1
  %.1.1 = add i32 %.1, %i.et                      ; 3 uses
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv.next274
  store i32 %.sink285.1, ptr %i.eu, align 4, !tbaa !50
  %indvars.iv.next274.1 = add nuw nsw i64 %indvars.iv273, 2 ; 2 uses
  %niter313.next.1 = add i32 %niter313, 2         ; 2 uses
  %niter313.ncmp.1.not = icmp eq i32 %niter313.next.1, %unroll_iter312
  br i1 %niter313.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph252, !llvm.loop !15

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph252
  %lcmp.mod309.not = icmp eq i32 %xtraiter308, 0
  br i1 %lcmp.mod309.not, label %._crit_edge, label %.lr.ph252.epil.preheader

.lr.ph252.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph252.preheader
  %indvars.iv273.epil.init = phi i64 [ %i.di, %.lr.ph252.preheader ], [ %indvars.iv.next274.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %.0219251.epil.init = phi i32 [ 0, %.lr.ph252.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod311 = trunc i32 %i.df to i1
  tail call void @llvm.assume(i1 %lcmp.mod311)
  %i.ev = lshr i64 %indvars.iv273.epil.init, 6
  %i.ew = and i64 %i.ev, 67108863
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ew
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !44
  %i.ez = and i64 %indvars.iv273.epil.init, 63
  %i.fa = lshr i64 %i.ey, %i.ez                   ; 2 uses
  %i.fb = trunc i64 %i.fa to i1
  %i.fc = add i32 %.0219251.epil.init, %.0220.lcssa
  %.sink285.epil = select i1 %i.fb, i32 %i.fc, i32 -1
  %i.fd = trunc i64 %i.fa to i32
  %i.fe = and i32 %i.fd, 1
  %.1.epil = add i32 %.0219251.epil.init, %i.fe
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv273.epil.init
  store i32 %.sink285.epil, ptr %i.ff, align 4, !tbaa !50
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph252.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader240
  %.0219.lcssa = phi i32 [ 0, %.preheader240 ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph252.epil.preheader ] ; 3 uses
  br i1 %i.j, label %bb.o, label %bb.p, !prof !37

bb.o:                                             ; preds = %._crit_edge
  call void @_efree(ptr noundef %i.m) #6
  %.pre = load i32, ptr %i.a, align 4, !tbaa !35
  %.pre286.pre = load i32, ptr %i.c, align 8, !tbaa !36
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %.pre286 = phi i32 [ %.pre286.pre, %bb.o ], [ %i.df, %._crit_edge ] ; 2 uses
  %i.fg = phi i32 [ %.pre, %bb.o ], [ %i.aa, %._crit_edge ] ; 3 uses
  %i.fh = icmp eq i32 %.0220.lcssa, %i.fg
  %i.fi = icmp eq i32 %.0219.lcssa, %.pre286
  %or.cond = select i1 %i.fh, i1 %i.fi, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  br i1 %i.s, label %.sink.split, label %bb.ak, !prof !37

bb.r:                                             ; preds = %bb.p
  %i.fj = icmp ule i32 %.0220.lcssa, %i.fg
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp ule i32 %.0219.lcssa, %.pre286
  call void @llvm.assume(i1 %i.fk)
  %i.fl = load i32, ptr %i.w, align 8, !tbaa !38
  %.not266 = icmp eq i32 %i.fl, 0
  br i1 %.not266, label %._crit_edge257, label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.r
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph256, %bb.y
  %indvars.iv276 = phi i64 [ 0, %.lr.ph256 ], [ %indvars.iv.next277, %bb.y ] ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !39
  %i.fo = getelementptr inbounds nuw [32 x i8], ptr %i.fn, i64 %indvars.iv276 ; 6 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 29
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !41
  %i.fr = and i8 %i.fq, 14
  %.not232 = icmp eq i8 %i.fr, 0
  br i1 %.not232, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !42
  %i.fu = lshr i32 %i.ft, 4
  %i.fv = add nsw i32 %i.fu, -5
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !50
  %i.fz = shl i32 %i.fy, 4
  %i.ga = add i32 %i.fz, 80
  store i32 %i.ga, ptr %i.fs, align 8, !tbaa !42
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 30
  %i.gc = load i8, ptr %i.gb, align 2, !tbaa !45
  %i.gd = and i8 %i.gc, 14
  %.not233 = icmp eq i8 %i.gd, 0
end_hunk_0
