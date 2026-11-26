Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dgemmt?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DGEMMT \00", align 1
@cblas_dgemmt.gemv_thread = internal unnamed_addr constant [2 x ptr] [ptr @dgemv_thread_n, ptr @dgemv_thread_t], align 16
@__const.cblas_dgemmt.gemv = private unnamed_addr constant [2 x ptr] [ptr @dgemv_n, ptr @dgemv_t], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @cblas_dgemmt(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, double noundef %11, ptr noundef %12, i32 noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !10
  switch i32 %0, label %bb.f [
    i32 102, label %bb.b
    i32 101, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ne i32 %1, 121
  %spec.select = sext i1 %i.f to i32
  %.not314 = icmp eq i32 %1, 122
  %.1255 = select i1 %.not314, i32 1, i32 %spec.select
  %i.g = icmp ne i32 %2, 111
  %.0236 = sext i1 %i.g to i32
  %i.h = icmp eq i32 %2, 112
  %.1237 = select i1 %i.h, i32 1, i32 %.0236
  %i.i = icmp eq i32 %2, 114
  %.2 = select i1 %i.i, i32 0, i32 %.1237
  %i.j = icmp eq i32 %2, 113
  %.3 = select i1 %i.j, i32 1, i32 %.2            ; 4 uses
  %i.k = icmp ne i32 %3, 111
  %.0260 = sext i1 %i.k to i32
  %i.l = icmp eq i32 %3, 112
  %.1261 = select i1 %i.l, i32 1, i32 %.0260
  %i.m = icmp eq i32 %3, 114
  %.2262 = select i1 %i.m, i32 0, i32 %.1261
  %i.n = icmp eq i32 %3, 113
  %.3263 = select i1 %i.n, i32 1, i32 %.2262      ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !10
  %i.o = and i32 %.3, 1
  %.not = icmp eq i32 %i.o, 0
  %.0245 = select i1 %.not, i32 %4, i32 %5
  %i.p = and i32 %.3263, 1
  %.not275 = icmp eq i32 %i.p, 0
  %.0244 = select i1 %.not275, i32 %5, i32 %4
  %i.q = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %i.r = icmp slt i32 %13, %i.q
  %i.s = tail call i32 @llvm.smax.i32(i32 %.0244, i32 1)
  %i.t = icmp slt i32 %10, %i.s                   ; 2 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %.0245, i32 1)
  %i.v = icmp slt i32 %8, %i.u                    ; 2 uses
  %i.w = or i32 %5, %4
  %i.x = or i32 %i.w, %.3
  %i.y = or i32 %i.x, %.3263
  %i.z = icmp slt i32 %i.y, 0
  %i.aa = or i1 %i.z, %i.r
  %i.ab = or i1 %i.t, %i.aa
  %i.ac = or i1 %i.v, %i.ab
  %i.ad = add i32 %1, -123
  %i.ae = icmp ult i32 %i.ad, -2                  ; 2 uses
  %i.af = or i1 %i.ae, %i.ac
  br i1 %i.af, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp slt i32 %.3, 0
  %i.ah = icmp slt i32 %.3263, 0
  %i.ai = icmp slt i32 %4, 0
  %i.aj = icmp slt i32 %5, 0
  %spec.select291 = select i1 %i.t, i32 10, i32 13
  %spec.select292 = select i1 %i.v, i32 8, i32 %spec.select291
  %spec.select293 = select i1 %i.aj, i32 5, i32 %spec.select292
  %spec.select294 = select i1 %i.ai, i32 4, i32 %spec.select293
  %spec.select295 = select i1 %i.ah, i32 3, i32 %spec.select294
  %spec.select296 = select i1 %i.ag, i32 2, i32 %spec.select295
  %spec.select297 = select i1 %i.ae, i32 1, i32 %spec.select296
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.ak = icmp eq i32 %1, 121
  %spec.select298 = select i1 %i.ak, i32 1, i32 -1
  %i.al = icmp eq i32 %1, 122
  %.4258 = select i1 %i.al, i32 0, i32 %spec.select298 ; 2 uses
  %i.am = icmp ne i32 %3, 111
  %.5 = sext i1 %i.am to i32
  %i.an = icmp eq i32 %3, 112
  %.6 = select i1 %i.an, i32 1, i32 %.5
  %i.ao = icmp eq i32 %3, 114
  %.7 = select i1 %i.ao, i32 0, i32 %.6
  %i.ap = icmp eq i32 %3, 113
  %.8 = select i1 %i.ap, i32 1, i32 %.7           ; 4 uses
  %i.aq = icmp ne i32 %2, 111
  %.5265 = sext i1 %i.aq to i32
  %i.ar = icmp eq i32 %2, 112
  %.6266 = select i1 %i.ar, i32 1, i32 %.5265
  %i.as = icmp eq i32 %2, 114
  %.7267 = select i1 %i.as, i32 0, i32 %.6266
  %i.at = icmp eq i32 %2, 113
  %.8268 = select i1 %i.at, i32 1, i32 %.7267     ; 4 uses
  store i32 -1, ptr %i.a, align 4, !tbaa !10
  %i.au = and i32 %.8, 1
  %.not276 = icmp eq i32 %i.au, 0
  %.0243 = select i1 %.not276, i32 %4, i32 %5
  %i.av = and i32 %.8268, 1
  %.not277 = icmp eq i32 %i.av, 0
  %.0242 = select i1 %.not277, i32 %5, i32 %4
  %i.aw = tail call i32 @llvm.smax.i32(i32 %4, i32 1)
  %i.ax = icmp slt i32 %13, %i.aw
  %i.ay = tail call i32 @llvm.smax.i32(i32 %.0242, i32 1)
  %i.az = icmp slt i32 %8, %i.ay                  ; 2 uses
  %i.ba = tail call i32 @llvm.smax.i32(i32 %.0243, i32 1)
  %i.bb = icmp slt i32 %10, %i.ba                 ; 2 uses
  %i.bc = or i32 %5, %4
  %i.bd = or i32 %i.bc, %.8268
  %i.be = or i32 %i.bd, %.8
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = or i1 %i.bf, %i.ax
  %i.bh = or i1 %i.az, %i.bg
  %i.bi = or i1 %i.bb, %i.bh
  %i.bj = icmp slt i32 %.4258, 0                  ; 2 uses
  %i.bk = or i1 %i.bj, %i.bi
  br i1 %i.bk, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bl = icmp slt i32 %.8, 0
  %i.bm = icmp slt i32 %.8268, 0
  %i.bn = icmp slt i32 %4, 0
  %i.bo = icmp slt i32 %5, 0
  %spec.select299 = select i1 %i.az, i32 8, i32 13
  %spec.select300 = select i1 %i.bb, i32 10, i32 %spec.select299
  %spec.select301 = select i1 %i.bo, i32 5, i32 %spec.select300
  %spec.select302 = select i1 %i.bn, i32 4, i32 %spec.select301
  %spec.select303 = select i1 %i.bm, i32 2, i32 %spec.select302
  %spec.select304 = select i1 %i.bl, i32 3, i32 %spec.select303
  %spec.select305 = select i1 %i.bj, i32 1, i32 %spec.select304
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.e
  %spec.select305.sink = phi i32 [ %spec.select305, %bb.e ], [ %spec.select297, %bb.c ]
  store i32 %spec.select305.sink, ptr %i.a, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %i.bp = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 8) #5 ; 0 uses
  br label %.loopexit

.thread:                                          ; preds = %bb.d, %bb.b
  %.9269 = phi i32 [ %.3263, %bb.b ], [ %.8268, %bb.d ]
  %.5259 = phi i32 [ %.1255, %bb.b ], [ %.4258, %bb.d ]
  %.1253 = phi i32 [ %8, %bb.b ], [ %10, %bb.d ]  ; 2 uses
  %.1251 = phi i32 [ %10, %bb.b ], [ %8, %bb.d ]  ; 3 uses
  %.1249 = phi ptr [ %7, %bb.b ], [ %9, %bb.d ]   ; 5 uses
  %.1247 = phi ptr [ %9, %bb.b ], [ %7, %bb.d ]   ; 2 uses
  %.9 = phi i32 [ %.3, %bb.b ], [ %.8, %bb.d ]    ; 4 uses
  %i.bq = icmp eq i32 %4, 0
  br i1 %i.bq, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.thread
  %i.br = and i32 %.9269, 1
  %i.bs = icmp eq i32 %i.br, 0                    ; 3 uses
  %i.bt = select i1 %i.bs, i32 1, i32 %.1251      ; 2 uses
  %i.bu = icmp eq i32 %.5259, 1
  %i.bv = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.bu, label %.preheader, label %.preheader315

.preheader315:                                    ; preds = %bb.g
  br i1 %i.bv, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader315
  %i.bw = fcmp une double %11, 1.000000e+00       ; 2 uses
  %i.bx = fcmp oeq double %6, 0.000000e+00
  %i.by = sext i32 %5 to i64                      ; 5 uses
  %i.bz = and i32 %.9, 1
  %.not281 = icmp eq i32 %i.bz, 0                 ; 2 uses
  %i.ca = sext i32 %.9 to i64                     ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr @cblas_dgemmt.gemv_thread, i64 %i.ca
  %i.cc = zext nneg i32 %.1253 to i64             ; 4 uses
  %i.cd = zext nneg i32 %i.bt to i64              ; 4 uses
  %14 = getelementptr inbounds [8 x i8], ptr @__const.cblas_dgemmt.gemv, i64 %i.ca
  br i1 %i.bx, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ce = zext nneg i32 %13 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %narrow = select i1 %i.bs, i32 %.1251, i32 1
  %i.cf = sext i32 %narrow to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.bw, label %.lr.ph.split.us.split.preheader, label %.loopexit

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.cg = zext nneg i32 %13 to i64
  %wide.trip.count327 = zext nneg i32 %4 to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %.lr.ph.split.us.split
  %indvars.iv324 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next325, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 3 uses
  %i.ch = mul nuw nsw i64 %indvars.iv324, %i.cg
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.ch
  %i.cj = tail call i32 @dscal_k(i64 noundef %indvars.iv.next325, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.ci, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !8

.preheader:                                       ; preds = %bb.g
  br i1 %i.bv, label %.lr.ph319, label %.loopexit

.lr.ph319:                                        ; preds = %.preheader
  %i.ck = and i32 %.9, 1
  %.not284 = icmp eq i32 %i.ck, 0                 ; 3 uses
  %i.cl = fcmp une double %11, 1.000000e+00       ; 2 uses
  %i.cm = fcmp oeq double %6, 0.000000e+00
  %i.cn = sext i32 %5 to i64                      ; 5 uses
  %i.co = sext i32 %.9 to i64                     ; 2 uses
  %i.cp = getelementptr inbounds [8 x i8], ptr @cblas_dgemmt.gemv_thread, i64 %i.co
  %i.cq = zext nneg i32 %.1253 to i64             ; 5 uses
  %i.cr = zext nneg i32 %i.bt to i64              ; 4 uses
  %15 = getelementptr inbounds [8 x i8], ptr @__const.cblas_dgemmt.gemv, i64 %i.co
  br i1 %i.cm, label %.lr.ph319.split.us, label %.lr.ph319.split.preheader

.lr.ph319.split.preheader:                        ; preds = %.lr.ph319
  %i.cs = zext nneg i32 %4 to i64
  %i.ct = zext nneg i32 %13 to i64
  %wide.trip.count332 = zext nneg i32 %4 to i64
  %i.cu = select i1 %.not284, i64 1, i64 %i.cq
  %narrow352 = select i1 %i.bs, i32 %.1251, i32 1
  %i.cv = sext i32 %narrow352 to i64
  br label %.lr.ph319.split

.lr.ph319.split.us:                               ; preds = %.lr.ph319
  br i1 %i.cl, label %.lr.ph319.split.us.split.preheader, label %.loopexit

.lr.ph319.split.us.split.preheader:               ; preds = %.lr.ph319.split.us
  %i.cw = zext nneg i32 %4 to i64
  %i.cx = zext nneg i32 %13 to i64
  %wide.trip.count337 = zext nneg i32 %4 to i64
  br label %.lr.ph319.split.us.split

.lr.ph319.split.us.split:                         ; preds = %.lr.ph319.split.us.split.preheader, %.lr.ph319.split.us.split
  %indvars.iv334 = phi i64 [ 0, %.lr.ph319.split.us.split.preheader ], [ %indvars.iv.next335, %.lr.ph319.split.us.split ] ; 4 uses
  %i.cy = sub nuw nsw i64 %i.cw, %indvars.iv334
  %i.cz = mul nuw nsw i64 %indvars.iv334, %i.cx
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.cz
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv334
  %i.dc = tail call i32 @dscal_k(i64 noundef %i.cy, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.db, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count337
  br i1 %exitcond338.not, label %.loopexit, label %.lr.ph319.split.us.split, !llvm.loop !9

.lr.ph319.split:                                  ; preds = %.lr.ph319.split.preheader, %bb.x
  %indvars.iv329 = phi i64 [ 0, %.lr.ph319.split.preheader ], [ %indvars.iv.next330, %bb.x ] ; 6 uses
  %i.dd = sub nuw nsw i64 %i.cs, %indvars.iv329   ; 7 uses
  %.pn285 = mul nuw nsw i64 %indvars.iv329, %i.cu
  %.0 = getelementptr inbounds nuw [8 x i8], ptr %.1249, i64 %.pn285 ; 4 uses
  %.pn287 = mul nsw i64 %indvars.iv329, %i.cv
  %.0235 = getelementptr inbounds [8 x i8], ptr %.1247, i64 %.pn287 ; 4 uses
  %i.de = mul nuw nsw i64 %indvars.iv329, %i.ct
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.de
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %indvars.iv329 ; 5 uses
  br i1 %i.cl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph319.split
  %i.dh = call i32 @dscal_k(i64 noundef %i.dd, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.dg, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph319.split
  %i.di = trunc nuw i64 %i.dd to i32
  %.tr353 = add i32 %5, %i.di
  %i.dj = shl nsw i32 %.tr353, 1
  %i.dk = add i32 %i.dj, 18
  %i.dl = and i32 %i.dk, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 %i.dl, ptr %i.b, align 4, !tbaa !10
  %.0..0..0..0.7 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %i.dm = icmp ugt i32 %.0..0..0..0.7, 256
  br i1 %i.dm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store volatile i32 0, ptr %i.b, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 2143294004, ptr %i.c, align 4, !tbaa !10
  %.0..0..0..0.8 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %.not288 = icmp eq i32 %.0..0..0..0.8, 0
  br i1 %.not288, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.9 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %i.dn = zext i32 %.0..0..0..0.9 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.do = phi i64 [ %i.dn, %bb.l ], [ 1, %bb.k ]
  %i.dp = call ptr @llvm.stacksave.p0()
  %i.dq = alloca double, i64 %i.do, align 32
  %.0..0..0..0.10 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %.not289 = icmp eq i32 %.0..0..0..0.10, 0
  br i1 %.not289, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dr = call ptr @blas_memory_alloc(i32 noundef 1) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ds = phi ptr [ %i.dr, %bb.n ], [ %i.dq, %bb.m ] ; 5 uses
  %i.dt = mul nsw i64 %i.dd, %i.cn
  %i.du = icmp slt i64 %i.dt, 9216
  br i1 %i.du, label %num_cpu_avail.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %num_cpu_avail.exit.thread, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.p
  %i.dx = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12 ; 3 uses
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %num_cpu_avail.exit.thread, label %bb.s

num_cpu_avail.exit.thread:                        ; preds = %bb.p, %bb.o, %num_cpu_avail.exit
  %16 = load ptr, ptr %15, align 8, !tbaa !14     ; 2 uses
  br i1 %.not284, label %bb.q, label %bb.r

bb.q:                                             ; preds = %num_cpu_avail.exit.thread
  %i.dz = call i32 %16(i64 noundef %i.dd, i64 noundef %i.cn, i64 noundef 0, double noundef %6, ptr noundef %.0, i64 noundef %i.cq, ptr noundef %.0235, i64 noundef %i.cr, ptr noundef %i.dg, i64 noundef 1, ptr noundef %i.ds) #5 ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %num_cpu_avail.exit.thread
  %i.ea = call i32 %16(i64 noundef %i.cn, i64 noundef %i.dd, i64 noundef 0, double noundef %6, ptr noundef %.0, i64 noundef %i.cq, ptr noundef %.0235, i64 noundef %i.cr, ptr noundef %i.dg, i64 noundef 1, ptr noundef %i.ds) #5 ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %num_cpu_avail.exit
  %i.eb = load ptr, ptr %i.cp, align 8, !tbaa !14 ; 2 uses
  br i1 %.not284, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ec = call i32 %i.eb(i64 noundef %i.dd, i64 noundef %i.cn, double noundef %6, ptr noundef %.0, i64 noundef %i.cq, ptr noundef %.0235, i64 noundef %i.cr, ptr noundef %i.dg, i64 noundef 1, ptr noundef %i.ds, i32 noundef %i.dx) #5 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ed = call i32 %i.eb(i64 noundef %i.cn, i64 noundef %i.dd, double noundef %6, ptr noundef %.0, i64 noundef %i.cq, ptr noundef %.0235, i64 noundef %i.cr, ptr noundef %i.dg, i64 noundef 1, ptr noundef %i.ds, i32 noundef %i.dx) #5 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q, %bb.r
  %.0..0..0..0.11 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %.not290 = icmp eq i32 %.0..0..0..0.11, 0
  br i1 %.not290, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @blas_memory_free(ptr noundef %i.ds) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.stackrestore.p0(ptr %i.dp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  br i1 %exitcond333.not, label %.loopexit, label %.lr.ph319.split, !llvm.loop !9

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 9 uses
  %spec.select306 = mul nsw i64 %indvars.iv, %i.cf
  %.1 = getelementptr inbounds [8 x i8], ptr %.1247, i64 %spec.select306 ; 4 uses
  %i.ee = mul nuw nsw i64 %indvars.iv, %i.ce
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.ee ; 5 uses
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split
  %i.eg = call i32 @dscal_k(i64 noundef %indvars.iv.next, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.ef, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split
  %i.eh = trunc i64 %indvars.iv.next to i32
  %.tr = add i32 %5, %i.eh
  %i.ei = shl nsw i32 %.tr, 1
  %i.ej = add i32 %i.ei, 18
  %i.ek = and i32 %i.ej, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i32 %i.ek, ptr %i.d, align 4, !tbaa !10
  %.0..0..0..0.1 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %i.el = icmp ugt i32 %.0..0..0..0.1, 256
  br i1 %i.el, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store volatile i32 0, ptr %i.d, align 4, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i32 2143294004, ptr %i.e, align 4, !tbaa !10
  %.0..0..0..0.2 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %.not279 = icmp eq i32 %.0..0..0..0.2, 0
  br i1 %.not279, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.0..0..0..0.3 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %i.em = zext i32 %.0..0..0..0.3 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.en = phi i64 [ %i.em, %bb.ac ], [ 1, %bb.ab ]
  %i.eo = call ptr @llvm.stacksave.p0()
  %i.ep = alloca double, i64 %i.en, align 32
  %.0..0..0..0.4 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %.not280 = icmp eq i32 %.0..0..0..0.4, 0
  br i1 %.not280, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.eq = call ptr @blas_memory_alloc(i32 noundef 1) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.er = phi ptr [ %i.eq, %bb.ae ], [ %i.ep, %bb.ad ] ; 5 uses
  %i.es = mul nsw i64 %indvars.iv.next, %i.by
  %i.et = icmp slt i64 %i.es, 9216
  br i1 %i.et, label %num_cpu_avail.exit308.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eu = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %num_cpu_avail.exit308.thread, label %num_cpu_avail.exit308

num_cpu_avail.exit308:                            ; preds = %bb.ag
  %i.ew = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12 ; 3 uses
  %i.ex = icmp eq i32 %i.ew, 1
  br i1 %i.ex, label %num_cpu_avail.exit308.thread, label %bb.aj

num_cpu_avail.exit308.thread:                     ; preds = %bb.ag, %bb.af, %num_cpu_avail.exit308
  %17 = load ptr, ptr %14, align 8, !tbaa !14     ; 2 uses
  br i1 %.not281, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %num_cpu_avail.exit308.thread
  %i.ey = call i32 %17(i64 noundef %indvars.iv.next, i64 noundef %i.by, i64 noundef 0, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ef, i64 noundef 1, ptr noundef %i.er) #5 ; 0 uses
  br label %bb.am

bb.ai:                                            ; preds = %num_cpu_avail.exit308.thread
  %i.ez = call i32 %17(i64 noundef %i.by, i64 noundef %indvars.iv.next, i64 noundef 0, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ef, i64 noundef 1, ptr noundef %i.er) #5 ; 0 uses
  br label %bb.am

bb.aj:                                            ; preds = %num_cpu_avail.exit308
  %i.fa = load ptr, ptr %i.cb, align 8, !tbaa !14 ; 2 uses
  br i1 %.not281, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fb = call i32 %i.fa(i64 noundef %indvars.iv.next, i64 noundef %i.by, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ef, i64 noundef 1, ptr noundef %i.er, i32 noundef %i.ew) #5 ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fc = call i32 %i.fa(i64 noundef %i.by, i64 noundef %indvars.iv.next, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ef, i64 noundef 1, ptr noundef %i.er, i32 noundef %i.ew) #5 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai
  %.0..0..0..0.5 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %.not283 = icmp eq i32 %.0..0..0..0.5, 0
  br i1 %.not283, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @blas_memory_free(ptr noundef %i.er) #5
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.stackrestore.p0(ptr %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !8

.loopexit:                                        ; preds = %bb.ao, %.lr.ph.split.us.split, %bb.x, %.lr.ph319.split.us.split, %.preheader315, %.lr.ph.split.us, %.preheader, %.lr.ph319.split.us, %.thread, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dgemv_thread_n(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dgemv_thread_t(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dgemv_n(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dgemv_t(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) #2

declare i32 @dscal_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !11}
!9 = distinct !{!9, !11}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!4, !4, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!13, !13, i64 0}
end_hunk_0
