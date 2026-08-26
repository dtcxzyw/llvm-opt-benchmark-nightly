Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rebuildpe?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [329 x i8] c"MZ\90\00\02\00\00\00\04\00\0F\00\FF\FF\00\00\B0\00\00\00\00\00\00\00@\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\00\00\00\0E\1F\B4\09\BA\0D\00\CD!\B4L\CD!This file was created by ClamAV for internal use and should not be run.\0D\0AClamAV - A GPL virus scanner - http://www.clamav.net\0D\0A$\00\00\00PE\00\00L\01\FF\FFCLAM\00\00\00\00\00\00\00\00\E0\00\83\8F\0B\01\00\00\00\10\00\00\00\10\00\00\00\00\00\00\FF\FF\FF\FF\00\10\00\00\00\10\00\00\FF\FF\FF\FF\00\10\00\00\00\02\00\00\01\00\00\00\00\00\00\00\03\00\0A\00\00\00\00\00\00\10\00\00\00\04\00\00\00\00\00\00\02\00\00\00\00\00\10\00\00\10\00\00\00\00\10\00\00\10\00\00\00\00\00\00\10\00\00\00\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c".clam%.2d\00", align 1
@.str.3 = private unnamed_addr constant [98 x i8] c"More sections than expect (%d). The section number in the rebuilt pe section name was truncated.\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cli_rebuildpe(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cli_rebuildpe_align(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @cli_rebuildpe_align(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %2, 40                       ; 2 uses
  %i.b = add nsw i32 %i.a, 456                    ; 2 uses
  %i.c = sdiv i32 %i.b, 512
  %i.d = and i32 %i.b, 504
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = add nsw i32 %i.c, %i.f                   ; 2 uses
  %i.h = shl nsw i32 %i.g, 9                      ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !8
  %i.j = and i32 %i.g, 7
  %.not = icmp eq i32 %i.j, 0
  %i.k = select i1 %.not, i32 0, i32 4096
  %i.l = add i32 %i.k, %i.h
  %i.m = and i32 %i.l, -4096
  %i.n = icmp ugt i32 %i.i, %i.m                  ; 3 uses
  %i.o = zext i1 %i.n to i32
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = add i32 %i.a, 496                        ; 2 uses
  %i.q = sdiv i32 %i.p, 512
  %i.r = and i32 %i.p, 504
  %i.s = icmp ne i32 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = add nsw i32 %i.q, %i.t
  %i.v = shl nsw i32 %i.u, 9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0190 = phi i32 [ %i.v, %bb.b ], [ %i.h, %bb.a ] ; 7 uses
  %i.w = add nsw i32 %2, %i.o                     ; 2 uses
  %i.x = icmp sgt i32 %i.w, 96
  br i1 %i.x, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not204 = icmp eq i32 %8, 0                    ; 2 uses
  %i.y = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %.not204, label %.preheader, label %.preheader221

.preheader221:                                    ; preds = %bb.d
  br i1 %i.y, label %.lr.ph, label %.loopexit.thread

.lr.ph:                                           ; preds = %.preheader221
  %i.z = zext i32 %8 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.d
  br i1 %i.y, label %.lr.ph227.preheader, label %.loopexit.thread

.lr.ph227.preheader:                              ; preds = %.preheader
  %wide.trip.count244 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count244, 3      ; 3 uses
  %i.aa = icmp ult i32 %2, 4
  br i1 %i.aa, label %.lr.ph227.epil.preheader, label %.lr.ph227.preheader.new

.lr.ph227.preheader.new:                          ; preds = %.lr.ph227.preheader
  %unroll_iter = and i64 %wide.trip.count244, 2147483644
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227, %.lr.ph227.preheader.new
  %indvars.iv241 = phi i64 [ 0, %.lr.ph227.preheader.new ], [ %indvars.iv.next242.3, %.lr.ph227 ] ; 5 uses
  %.0195225 = phi i64 [ 0, %.lr.ph227.preheader.new ], [ %i.bc, %.lr.ph227 ]
  %niter = phi i64 [ 0, %.lr.ph227.preheader.new ], [ %niter.next.3, %.lr.ph227 ]
  %i.ab = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv241
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 511
  %i.ag = and i64 %i.af, 8589934080
  %i.ah = add i64 %i.ag, %.0195225
  %i.ai = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv241
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = zext i32 %i.ak to i64
  %i.am = add nuw nsw i64 %i.al, 511
  %i.an = and i64 %i.am, 8589934080
  %i.ao = add i64 %i.an, %i.ah
  %i.ap = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv241
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 84
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  %i.as = zext i32 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, 511
  %i.au = and i64 %i.at, 8589934080
  %i.av = add i64 %i.au, %i.ao
  %i.aw = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv241
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !10
  %i.az = zext i32 %i.ay to i64
  %i.ba = add nuw nsw i64 %i.az, 511
  %i.bb = and i64 %i.ba, 8589934080
  %i.bc = add i64 %i.bb, %i.av                    ; 3 uses
  %indvars.iv.next242.3 = add nuw nsw i64 %indvars.iv241, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph227

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.1196223 = phi i64 [ 0, %.lr.ph ], [ %i.bo, %bb.e ]
  %i.bd = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !10 ; 2 uses
  %i.bg = udiv i32 %i.bf, %8
  %.zext216 = zext i32 %i.bg to i64
  %i.bh = urem i32 %i.bf, %8
  %i.bi = icmp ne i32 %i.bh, 0
  %i.bj = zext i1 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, %.zext216
  %i.bl = mul nuw i64 %i.bk, %i.z
  %i.bm = add nuw i64 %i.bl, 511
  %i.bn = and i64 %i.bm, -512
  %i.bo = add i64 %i.bn, %.1196223                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph227
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph227.epil.preheader

.lr.ph227.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph227.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph227.preheader ], [ %indvars.iv.next242.3, %.loopexit.loopexit.unr-lcssa ]
  %.0195225.epil.init = phi i64 [ 0, %.lr.ph227.preheader ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod275 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod275)
  br label %.lr.ph227.epil

.lr.ph227.epil:                                   ; preds = %.lr.ph227.epil, %.lr.ph227.epil.preheader
  %indvars.iv241.epil = phi i64 [ %indvars.iv241.epil.init, %.lr.ph227.epil.preheader ], [ %indvars.iv.next242.epil, %.lr.ph227.epil ] ; 2 uses
  %.0195225.epil = phi i64 [ %.0195225.epil.init, %.lr.ph227.epil.preheader ], [ %i.bv, %.lr.ph227.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph227.epil.preheader ], [ %epil.iter.next, %.lr.ph227.epil ]
  %i.bp = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv241.epil
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !10
  %i.bs = zext i32 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 511
  %i.bu = and i64 %i.bt, 8589934080
  %i.bv = add i64 %i.bu, %.0195225.epil           ; 2 uses
  %indvars.iv.next242.epil = add nuw nsw i64 %indvars.iv241.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph227.epil, !llvm.loop !11

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit.unr-lcssa, %.lr.ph227.epil
  %.2197 = phi i64 [ %i.bv, %.lr.ph227.epil ], [ %i.bc, %.loopexit.loopexit.unr-lcssa ], [ %i.bo, %bb.e ] ; 2 uses
  %i.bw = icmp ugt i64 %.2197, 1073741824
  br i1 %i.bw, label %bb.n, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader221, %.preheader, %.loopexit
  %.2197264 = phi i64 [ %.2197, %.loopexit ], [ 0, %.preheader ], [ 0, %.preheader221 ]
  %i.bx = zext i32 %.0190 to i64
  %i.by = add nuw nsw i64 %.2197264, %i.bx        ; 2 uses
  %i.bz = icmp samesign ugt i64 %i.by, 1073741824
  br i1 %i.bz, label %bb.n, label %bb.f

bb.f:                                             ; preds = %.loopexit.thread
  %i.ca = tail call ptr @cli_max_calloc(i64 noundef %i.by, i64 noundef 1) #7 ; 19 uses
  %.not205 = icmp eq ptr %i.ca, null
  br i1 %.not205, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(328) %i.ca, ptr noundef nonnull align 1 dereferenceable(328) @.str, i64 328, i1 false)
  %i.cb = and i32 %.0190, 3584
  %.not206 = icmp eq i32 %i.cb, 0
  %i.cc = select i1 %.not206, i32 0, i32 4096
  %i.cd = add i32 %i.cc, %.0190
  %i.ce = and i32 %i.cd, -4096                    ; 5 uses
  %i.cf = trunc i32 %i.w to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 214
  store i16 %i.cf, ptr %i.cg, align 2, !tbaa !13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 248
  store i32 %4, ptr %i.ch, align 4, !tbaa !16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 260
  store i32 %3, ptr %i.ci, align 4, !tbaa !17
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 292
  store i32 %.0190, ptr %i.cj, align 4, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.ck, i8 0, i64 128, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 344
  store i32 %5, ptr %i.cl, align 4, !tbaa !19
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 348
  store i32 %6, ptr %i.cm, align 4, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 456 ; 2 uses
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.cn, ptr noundef nonnull align 1 dereferenceable(6) @.str.1, i64 6, i1 false)
  %i.co = load i32, ptr %1, align 4, !tbaa !8
  %i.cp = sub i32 %i.co, %i.ce
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 464
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 468
  store i32 %i.ce, ptr %i.cr, align 4, !tbaa !19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 492
  store i32 -1, ptr %i.cs, align 4, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 496
  %i.cu = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.cv = sub i32 %i.cu, %i.ce
  %i.cw = and i32 %i.cu, 4095
  %.not207 = icmp eq i32 %i.cw, 0
  %i.cx = select i1 %.not207, i32 0, i32 4096
  %i.cy = add i32 %i.cv, %i.cx
  %i.cz = and i32 %i.cy, -4096
  %i.da = add i32 %i.cz, %i.ce
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0193 = phi ptr [ %i.ct, %bb.h ], [ %i.cn, %bb.g ] ; 2 uses
  %.0186 = phi i32 [ %i.da, %bb.h ], [ %i.ce, %bb.g ] ; 3 uses
  %i.db = icmp sgt i32 %2, 0
  br i1 %i.db, label %.lr.ph233, label %._crit_edge

.lr.ph233:                                        ; preds = %bb.i
  %wide.trip.count254 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %.not204, label %.lr.ph233.split.us, label %.lr.ph233.split

.lr.ph233.split.us:                               ; preds = %.lr.ph233, %bb.k
  %indvars.iv251 = phi i64 [ %indvars.iv.next252, %bb.k ], [ 0, %.lr.ph233 ] ; 3 uses
  %.1232.us = phi i32 [ %.2.us, %bb.k ], [ %.0186, %.lr.ph233 ]
  %.1191230.us = phi i32 [ %.2192.us, %bb.k ], [ %.0190, %.lr.ph233 ] ; 3 uses
  %.1194229.us = phi ptr [ %i.ed, %bb.k ], [ %.0193, %.lr.ph233 ] ; 7 uses
  %indvars.iv.next252 = add nuw nsw i64 %indvars.iv251, 1 ; 3 uses
  %i.dc = trunc nuw nsw i64 %indvars.iv.next252 to i32
  %i.dd = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.1194229.us, i64 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %i.dc) #7
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph233.split.us
  %i.df = trunc nuw nsw i64 %indvars.iv251 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.df) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph233.split.us
  %i.dg = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv251 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !20
  %i.dj = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 8
  store i32 %i.di, ptr %i.dj, align 1, !tbaa !19
  %i.dk = load i32, ptr %i.dg, align 4, !tbaa !8
  %i.dl = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 12
  store i32 %i.dk, ptr %i.dl, align 1, !tbaa !19
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 12 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !10
  %i.do = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 16
  store i32 %i.dn, ptr %i.do, align 1, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 20
  store i32 %.1191230.us, ptr %i.dp, align 1, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 36
  store i32 -1, ptr %i.dq, align 1, !tbaa !19
  %i.dr = zext i32 %.1191230.us to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !21
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv
  %i.dx = load i32, ptr %i.dm, align 4, !tbaa !10
  %i.dy = zext i32 %i.dx to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr align 1 %i.dw, i64 %i.dy, i1 false)
  %i.dz = load i32, ptr %i.dm, align 4, !tbaa !10
  %i.ea = add i32 %i.dz, 511
  %i.eb = load i32, ptr %i.dh, align 4, !tbaa !20
  %i.ec = add i32 %i.eb, 4095
  %i.ed = getelementptr inbounds nuw i8, ptr %.1194229.us, i64 40
  %.pn212.us = and i32 %i.ec, -4096
  %.2.us = add i32 %.pn212.us, %.1232.us          ; 2 uses
  %.pn.us = and i32 %i.ea, -512
  %.2192.us = add i32 %.pn.us, %.1191230.us       ; 2 uses
  %exitcond255.not = icmp eq i64 %indvars.iv.next252, %wide.trip.count254
  br i1 %exitcond255.not, label %._crit_edge, label %.lr.ph233.split.us

.lr.ph233.split:                                  ; preds = %.lr.ph233, %bb.m
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %bb.m ], [ 0, %.lr.ph233 ] ; 3 uses
  %.1232 = phi i32 [ %.2, %bb.m ], [ %.0186, %.lr.ph233 ]
  %.1191230 = phi i32 [ %.2192, %bb.m ], [ %.0190, %.lr.ph233 ] ; 3 uses
  %.1194229 = phi ptr [ %9, %bb.m ], [ %.0193, %.lr.ph233 ] ; 7 uses
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 3 uses
  %i.ee = trunc nuw nsw i64 %indvars.iv.next247 to i32
  %i.ef = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.1194229, i64 noundef 8, ptr noundef nonnull @.str.2, i32 noundef %i.ee) #7
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph233.split
  %i.eh = trunc nuw nsw i64 %indvars.iv246 to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3, i32 noundef %i.eh) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph233.split
  %i.ei = getelementptr inbounds nuw [36 x i8], ptr %1, i64 %indvars.iv246 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !20 ; 2 uses
  %i.el = udiv i32 %i.ek, %8
  %i.em = urem i32 %i.ek, %8
  %i.en = icmp ne i32 %i.em, 0
  %i.eo = zext i1 %i.en to i32
  %i.ep = add i32 %i.el, %i.eo
  %i.eq = mul i32 %i.ep, %8
  %i.er = getelementptr inbounds nuw i8, ptr %.1194229, i64 8
  store i32 %i.eq, ptr %i.er, align 1, !tbaa !19
  %i.es = load i32, ptr %i.ei, align 4, !tbaa !8  ; 2 uses
  %i.et = udiv i32 %i.es, %8
  %i.eu = urem i32 %i.es, %8
  %i.ev = icmp ne i32 %i.eu, 0
  %i.ew = zext i1 %i.ev to i32
  %i.ex = add i32 %i.et, %i.ew
  %i.ey = mul i32 %i.ex, %8
  %i.ez = getelementptr inbounds nuw i8, ptr %.1194229, i64 12
  store i32 %i.ey, ptr %i.ez, align 1, !tbaa !19
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ei, i64 12 ; 3 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !10 ; 2 uses
  %i.fc = udiv i32 %i.fb, %8
  %i.fd = urem i32 %i.fb, %8
  %i.fe = icmp ne i32 %i.fd, 0
  %i.ff = zext i1 %i.fe to i32
  %i.fg = add i32 %i.fc, %i.ff
  %i.fh = mul i32 %i.fg, %8
  %i.fi = getelementptr inbounds nuw i8, ptr %.1194229, i64 16
  store i32 %i.fh, ptr %i.fi, align 1, !tbaa !19
  %i.fj = getelementptr inbounds nuw i8, ptr %.1194229, i64 20
  store i32 %.1191230, ptr %i.fj, align 1, !tbaa !19
  %i.fk = getelementptr inbounds nuw i8, ptr %.1194229, i64 36
  store i32 -1, ptr %i.fk, align 1, !tbaa !19
  %i.fl = zext i32 %.1191230 to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !21
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 %i.fp
  %i.fr = load i32, ptr %i.fa, align 4, !tbaa !10
  %i.fs = zext i32 %i.fr to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fm, ptr align 1 %i.fq, i64 %i.fs, i1 false)
  %i.ft = load i32, ptr %i.fa, align 4, !tbaa !10 ; 2 uses
  %i.fu = udiv i32 %i.ft, %8
  %i.fv = urem i32 %i.ft, %8
  %i.fw = icmp ne i32 %i.fv, 0
  %i.fx = zext i1 %i.fw to i32
  %i.fy = add i32 %i.fu, %i.fx
  %i.fz = mul i32 %i.fy, %8
  %i.ga = load i32, ptr %i.ej, align 4, !tbaa !20 ; 2 uses
  %i.gb = udiv i32 %i.ga, %8
  %i.gc = urem i32 %i.ga, %8
  %i.gd = icmp ne i32 %i.gc, 0
  %i.ge = zext i1 %i.gd to i32
  %i.gf = add i32 %i.gb, %i.ge
  %i.gg = mul i32 %i.gf, %8
  %9 = getelementptr inbounds nuw i8, ptr %.1194229, i64 40
  %i.gh = add i32 %i.gg, 4095
  %.pn212 = and i32 %i.gh, -4096
  %.2 = add i32 %.pn212, %.1232                   ; 2 uses
  %.2.a = add i32 %i.fz, 511
  %.pn = and i32 %.2.a, -512
  %.2192 = add i32 %.pn, %.1191230                ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count254
  br i1 %exitcond250.not, label %._crit_edge, label %.lr.ph233.split

._crit_edge:                                      ; preds = %bb.m, %bb.k, %bb.i
  %.1191.lcssa = phi i32 [ %.0190, %bb.i ], [ %.2192.us, %bb.k ], [ %.2192, %bb.m ]
  %.1.lcssa = phi i32 [ %.0186, %bb.i ], [ %.2.us, %bb.k ], [ %.2, %bb.m ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ca, i64 288
  store i32 %.1.lcssa, ptr %i.gi, align 4, !tbaa !22
  %i.gj = zext i32 %.1191.lcssa to i64
  %i.gk = tail call i64 @cli_writen(i32 noundef %7, ptr noundef nonnull %i.ca, i64 noundef %i.gj) #7
  %i.gl = icmp ne i64 %i.gk, -1
  %i.gm = zext i1 %i.gl to i32
  tail call void @free(ptr noundef %i.ca) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %.loopexit.thread, %.loopexit, %bb.c, %._crit_edge
  %.0 = phi i32 [ 0, %.loopexit.thread ], [ 0, %bb.c ], [ 0, %.loopexit ], [ %i.gm, %._crit_edge ], [ 0, %bb.f ]
  ret i32 %.0
}

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #1

declare i64 @cli_writen(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!10 = !{!9, !5, i64 12}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!14, !15, i64 6}
!14 = !{!"IMAGE_PE_HEADER", !5, i64 0, !15, i64 4, !15, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !15, i64 20, !15, i64 22, !15, i64 24, !6, i64 26, !6, i64 27, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !15, i64 64, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !15, i64 92, !15, i64 94, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116}
!15 = !{!"short", !6, i64 0}
!16 = !{!14, !5, i64 40}
!17 = !{!14, !5, i64 52}
!18 = !{!14, !5, i64 84}
!19 = !{!6, !6, i64 0}
!20 = !{!9, !5, i64 4}
!21 = !{!9, !5, i64 8}
!22 = !{!14, !5, i64 80}
end_hunk_0
