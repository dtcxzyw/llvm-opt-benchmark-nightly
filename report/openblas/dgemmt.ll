Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgemmt?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"DGEMMT \00", align 1
@dgemmt_.gemv_thread = internal unnamed_addr constant [2 x ptr] [ptr @dgemv_thread_n, ptr @dgemv_thread_t], align 16
@blas_cpu_number = external local_unnamed_addr global i32, align 4

; Function Attrs: nounwind uwtable
define void @dgemmt_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7, ptr noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.f = load i32, ptr %3, align 4, !tbaa !10     ; 12 uses
  %i.g = load i32, ptr %4, align 4, !tbaa !10     ; 7 uses
  %i.h = load double, ptr %5, align 8, !tbaa !12
  %.fr265 = freeze double %i.h                    ; 10 uses
  %i.i = load double, ptr %10, align 8, !tbaa !12 ; 6 uses
  %i.j = load i32, ptr %7, align 4, !tbaa !10     ; 3 uses
  %i.k = load i32, ptr %9, align 4, !tbaa !10     ; 4 uses
  %i.l = load i32, ptr %12, align 4, !tbaa !10    ; 5 uses
  %i.m = load i8, ptr %1, align 1, !tbaa !13      ; 3 uses
  %i.n = load i8, ptr %2, align 1, !tbaa !13      ; 3 uses
  %i.o = load i8, ptr %0, align 1, !tbaa !13      ; 3 uses
  %i.p = icmp sgt i8 %i.m, 96
  %i.q = add nsw i8 %i.m, -32
  %spec.select = select i1 %i.p, i8 %i.q, i8 %i.m ; 4 uses
  %i.r = icmp sgt i8 %i.n, 96
  %i.s = add nsw i8 %i.n, -32
  %.0226 = select i1 %i.r, i8 %i.s, i8 %i.n       ; 4 uses
  %i.t = icmp sgt i8 %i.o, 96
  %i.u = add nsw i8 %i.o, -32
  %.0225 = select i1 %i.t, i8 %i.u, i8 %i.o       ; 2 uses
  %i.v = icmp ne i8 %spec.select, 78
  %.0232 = sext i1 %i.v to i32
  %i.w = icmp eq i8 %spec.select, 84
  %.1233 = select i1 %i.w, i32 1, i32 %.0232
  %i.x = icmp eq i8 %spec.select, 82
  %.2234 = select i1 %i.x, i32 0, i32 %.1233
  %i.y = icmp eq i8 %spec.select, 67
  %.3235 = select i1 %i.y, i32 1, i32 %.2234      ; 6 uses
  %i.z = icmp ne i8 %.0226, 78
  %.0230 = sext i1 %i.z to i32
  %i.aa = icmp eq i8 %.0226, 84
  %.1231 = select i1 %i.aa, i32 1, i32 %.0230
  %i.ab = icmp eq i8 %.0226, 82
  %.2 = select i1 %i.ab, i32 0, i32 %.1231
  %i.ac = icmp eq i8 %.0226, 67
  %.3 = select i1 %i.ac, i32 1, i32 %.2           ; 2 uses
  %i.ad = icmp ne i8 %.0225, 85
  %i.ae = icmp ne i8 %.0225, 76                   ; 2 uses
  %narrow = and i1 %i.ae, %i.ad
  %i.af = and i32 %.3235, 1
  %.not = icmp eq i32 %i.af, 0                    ; 6 uses
  %.0224 = select i1 %.not, i32 %i.f, i32 %i.g
  %i.ag = and i32 %.3, 1
  %.not244 = icmp eq i32 %i.ag, 0                 ; 4 uses
  %.0223 = select i1 %.not244, i32 %i.g, i32 %i.f
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %i.ai = icmp slt i32 %i.l, %i.ah
  %spec.store.select = select i1 %i.ai, i32 13, i32 0
  %i.aj = tail call i32 @llvm.smax.i32(i32 %.0223, i32 1)
  %i.ak = icmp slt i32 %i.k, %i.aj
  %spec.store.select1 = select i1 %i.ak, i32 10, i32 %spec.store.select
  %i.al = tail call i32 @llvm.smax.i32(i32 %.0224, i32 1)
  %i.am = icmp slt i32 %i.j, %i.al
  %spec.store.select2 = select i1 %i.am, i32 8, i32 %spec.store.select1
  %i.an = icmp slt i32 %i.g, 0
  %spec.store.select3 = select i1 %i.an, i32 5, i32 %spec.store.select2
  %i.ao = icmp slt i32 %i.f, 0
  %spec.store.select4 = select i1 %i.ao, i32 4, i32 %spec.store.select3
  %i.ap = icmp slt i32 %.3, 0
  %spec.store.select5 = select i1 %i.ap, i32 3, i32 %spec.store.select4
  %i.aq = icmp slt i32 %.3235, 0
  %spec.store.select6 = select i1 %i.aq, i32 2, i32 %spec.store.select5
  %spec.store.select7 = select i1 %narrow, i32 1, i32 %spec.store.select6 ; 2 uses
  store i32 %spec.store.select7, ptr %i.a, align 4, !tbaa !10
  %.not245 = icmp eq i32 %spec.store.select7, 0
  br i1 %.not245, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.a, i32 noundef 8) #6 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.as = icmp eq i32 %i.f, 0
  br i1 %i.as, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.at = select i1 %.not244, i32 1, i32 %i.k     ; 2 uses
  %i.au = icmp sgt i32 %i.f, 0                    ; 2 uses
  br i1 %i.ae, label %.preheader, label %.preheader259

.preheader259:                                    ; preds = %bb.d
  br i1 %i.au, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader259
  %i.av = fcmp une double %i.i, 1.000000e+00      ; 2 uses
  %i.aw = fcmp oeq double %.fr265, 0.000000e+00
  %i.ax = sext i32 %i.g to i64                    ; 5 uses
  %i.ay = sext i32 %.3235 to i64
  %i.az = getelementptr inbounds [8 x i8], ptr @dgemmt_.gemv_thread, i64 %i.ay
  %i.ba = sext i32 %i.j to i64                    ; 5 uses
  %i.bb = sext i32 %i.at to i64                   ; 4 uses
  %13 = icmp ult i32 %.3235, 2
  br i1 %i.aw, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.bc = zext nneg i32 %i.f to i64
  %i.bd = sext i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.f to i64
  %i.be = select i1 %.not, i64 1, i64 %i.ba
  %narrow290 = select i1 %.not244, i32 %i.k, i32 1
  %i.bf = sext i32 %narrow290 to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.av, label %.lr.ph.split.us.split.preheader, label %.loopexit

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.bg = zext nneg i32 %i.f to i64
  %i.bh = sext i32 %i.l to i64
  %wide.trip.count273 = zext nneg i32 %i.f to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %.lr.ph.split.us.split
  %indvars.iv270 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next271, %.lr.ph.split.us.split ] ; 4 uses
  %i.bi = sub nuw nsw i64 %i.bg, %indvars.iv270
  %i.bj = mul nsw i64 %indvars.iv270, %i.bh
  %i.bk = getelementptr inbounds [8 x i8], ptr %11, i64 %i.bj
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv270
  %i.bm = tail call i32 @dscal_k(i64 noundef %i.bi, i64 noundef 0, i64 noundef 0, double noundef %i.i, ptr noundef %i.bl, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %wide.trip.count273
  br i1 %exitcond274.not, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !8

.preheader:                                       ; preds = %bb.d
  br i1 %i.au, label %.lr.ph263, label %.loopexit

.lr.ph263:                                        ; preds = %.preheader
  %i.bn = fcmp une double %i.i, 1.000000e+00      ; 2 uses
  %i.bo = fcmp oeq double %.fr265, 0.000000e+00
  %i.bp = sext i32 %i.g to i64                    ; 5 uses
  %i.bq = sext i32 %.3235 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr @dgemmt_.gemv_thread, i64 %i.bq
  %i.bs = sext i32 %i.j to i64                    ; 4 uses
  %i.bt = sext i32 %i.at to i64                   ; 4 uses
  %14 = icmp ult i32 %.3235, 2
  br i1 %i.bo, label %.lr.ph263.split.us, label %.lr.ph263.split.preheader

.lr.ph263.split.preheader:                        ; preds = %.lr.ph263
  %i.bu = sext i32 %i.l to i64
  %wide.trip.count278 = zext nneg i32 %i.f to i64
  %narrow291 = select i1 %.not244, i32 %i.k, i32 1
  %i.bv = sext i32 %narrow291 to i64
  br label %.lr.ph263.split

.lr.ph263.split.us:                               ; preds = %.lr.ph263
  br i1 %i.bn, label %.lr.ph263.split.us.split.preheader, label %.loopexit

.lr.ph263.split.us.split.preheader:               ; preds = %.lr.ph263.split.us
  %i.bw = sext i32 %i.l to i64
  %wide.trip.count283 = zext nneg i32 %i.f to i64
  br label %.lr.ph263.split.us.split

.lr.ph263.split.us.split:                         ; preds = %.lr.ph263.split.us.split.preheader, %.lr.ph263.split.us.split
  %indvars.iv280 = phi i64 [ 0, %.lr.ph263.split.us.split.preheader ], [ %indvars.iv.next281, %.lr.ph263.split.us.split ] ; 2 uses
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.bx = mul nsw i64 %indvars.iv280, %i.bw
  %i.by = getelementptr inbounds [8 x i8], ptr %11, i64 %i.bx
  %i.bz = tail call i32 @dscal_k(i64 noundef %indvars.iv.next281, i64 noundef 0, i64 noundef 0, double noundef %i.i, ptr noundef %i.by, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  %exitcond284.not = icmp eq i64 %indvars.iv.next281, %wide.trip.count283
  br i1 %exitcond284.not, label %.loopexit, label %.lr.ph263.split.us.split, !llvm.loop !9

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.u ] ; 6 uses
  %i.ca = sub nuw nsw i64 %i.bc, %indvars.iv      ; 7 uses
  %.pn249 = mul nsw i64 %indvars.iv, %i.be
  %.0222 = getelementptr inbounds [8 x i8], ptr %6, i64 %.pn249 ; 4 uses
  %.pn250 = mul nsw i64 %indvars.iv, %i.bf
  %.0220 = getelementptr inbounds [8 x i8], ptr %8, i64 %.pn250 ; 4 uses
  %i.cb = mul nsw i64 %indvars.iv, %i.bd
  %i.cc = getelementptr inbounds [8 x i8], ptr %11, i64 %i.cb
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv ; 5 uses
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split
  %i.ce = call i32 @dscal_k(i64 noundef %i.ca, i64 noundef 0, i64 noundef 0, double noundef %i.i, ptr noundef %i.cd, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split
  %i.cf = trunc nuw i64 %i.ca to i32
  %.tr = add i32 %i.g, %i.cf
  %i.cg = shl nsw i32 %.tr, 1
  %i.ch = add i32 %i.cg, 18
  %i.ci = and i32 %i.ch, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 %i.ci, ptr %i.b, align 4, !tbaa !10
  %.0..0..0..0.14 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %i.cj = icmp ugt i32 %.0..0..0..0.14, 256
  br i1 %i.cj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store volatile i32 0, ptr %i.b, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 2143294004, ptr %i.c, align 4, !tbaa !10
  %.0..0..0..0.15 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %.not251 = icmp eq i32 %.0..0..0..0.15, 0
  br i1 %.not251, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.0..0..0..0.16 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %i.ck = zext i32 %.0..0..0..0.16 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cl = phi i64 [ %i.ck, %bb.i ], [ 1, %bb.h ]
  %i.cm = call ptr @llvm.stacksave.p0()
  %i.cn = alloca double, i64 %i.cl, align 32
  %.0..0..0..0.17 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %.not252 = icmp eq i32 %.0..0..0..0.17, 0
  br i1 %.not252, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.co = call ptr @blas_memory_alloc(i32 noundef 1) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cp = phi ptr [ %i.co, %bb.k ], [ %i.cn, %bb.j ] ; 5 uses
  %i.cq = mul nsw i64 %i.ca, %i.ax
  %i.cr = icmp slt i64 %i.cq, 9216
  br i1 %i.cr, label %num_cpu_avail.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !13
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %num_cpu_avail.exit.thread, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.m
  %i.cu = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !13 ; 3 uses
  %i.cv = icmp eq i32 %i.cu, 1
  br i1 %i.cv, label %num_cpu_avail.exit.thread, label %bb.p

num_cpu_avail.exit.thread:                        ; preds = %bb.m, %bb.l, %num_cpu_avail.exit
  call void @llvm.assume(i1 %13)
  br i1 %.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %num_cpu_avail.exit.thread
  %i.cw = call i32 @dgemv_n(i64 noundef %i.ca, i64 noundef %i.ax, i64 noundef 0, double noundef %.fr265, ptr noundef %.0222, i64 noundef %i.ba, ptr noundef %.0220, i64 noundef %i.bb, ptr noundef %i.cd, i64 noundef 1, ptr noundef %i.cp) #6, !callees !15 ; 0 uses
  br label %bb.s

bb.o:                                             ; preds = %num_cpu_avail.exit.thread
  %i.cx = call i32 @dgemv_t(i64 noundef %i.ax, i64 noundef %i.ca, i64 noundef 0, double noundef %.fr265, ptr noundef %.0222, i64 noundef %i.ba, ptr noundef %.0220, i64 noundef %i.bb, ptr noundef %i.cd, i64 noundef 1, ptr noundef %i.cp) #6, !callees !15 ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %num_cpu_avail.exit
  %i.cy = load ptr, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cz = call i32 %i.cy(i64 noundef %i.ca, i64 noundef %i.ax, double noundef %.fr265, ptr noundef %.0222, i64 noundef %i.ba, ptr noundef %.0220, i64 noundef %i.bb, ptr noundef %i.cd, i64 noundef 1, ptr noundef %i.cp, i32 noundef %i.cu) #6 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.da = call i32 %i.cy(i64 noundef %i.ax, i64 noundef %i.ca, double noundef %.fr265, ptr noundef %.0222, i64 noundef %i.ba, ptr noundef %.0220, i64 noundef %i.bb, ptr noundef %i.cd, i64 noundef 1, ptr noundef %i.cp, i32 noundef %i.cu) #6 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.n, %bb.o
  %.0..0..0..0.18 = load volatile i32, ptr %i.b, align 4, !tbaa !10
  %.not253 = icmp eq i32 %.0..0..0..0.18, 0
  br i1 %.not253, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @blas_memory_free(ptr noundef %i.cp) #6
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.stackrestore.p0(ptr %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !8

.lr.ph263.split:                                  ; preds = %.lr.ph263.split.preheader, %bb.al
  %indvars.iv275 = phi i64 [ 0, %.lr.ph263.split.preheader ], [ %indvars.iv.next276, %bb.al ] ; 3 uses
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 9 uses
  %spec.select254 = mul nsw i64 %indvars.iv275, %i.bv
  %.1221 = getelementptr inbounds [8 x i8], ptr %8, i64 %spec.select254 ; 4 uses
  %i.db = mul nsw i64 %indvars.iv275, %i.bu
  %i.dc = getelementptr inbounds [8 x i8], ptr %11, i64 %i.db ; 5 uses
  br i1 %i.bn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph263.split
  %i.dd = call i32 @dscal_k(i64 noundef %indvars.iv.next276, i64 noundef 0, i64 noundef 0, double noundef %i.i, ptr noundef %i.dc, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph263.split
  %i.de = trunc i64 %indvars.iv.next276 to i32
  %.tr292 = add i32 %i.g, %i.de
  %i.df = shl nsw i32 %.tr292, 1
  %i.dg = add i32 %i.df, 18
  %i.dh = and i32 %i.dg, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i32 %i.dh, ptr %i.d, align 4, !tbaa !10
  %.0..0..0..0.8 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %i.di = icmp ugt i32 %.0..0..0..0.8, 256
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store volatile i32 0, ptr %i.d, align 4, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i32 2143294004, ptr %i.e, align 4, !tbaa !10
  %.0..0..0..0.9 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %.not246 = icmp eq i32 %.0..0..0..0.9, 0
  br i1 %.not246, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.0..0..0..0.10 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %i.dj = zext i32 %.0..0..0..0.10 to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dk = phi i64 [ %i.dj, %bb.z ], [ 1, %bb.y ]
  %i.dl = call ptr @llvm.stacksave.p0()
  %i.dm = alloca double, i64 %i.dk, align 32
  %.0..0..0..0.11 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %.not247 = icmp eq i32 %.0..0..0..0.11, 0
  br i1 %.not247, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dn = call ptr @blas_memory_alloc(i32 noundef 1) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.do = phi ptr [ %i.dn, %bb.ab ], [ %i.dm, %bb.aa ] ; 5 uses
  %i.dp = mul nsw i64 %indvars.iv.next276, %i.bp
  %i.dq = icmp slt i64 %i.dp, 9216
  br i1 %i.dq, label %num_cpu_avail.exit256.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !13
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %num_cpu_avail.exit256.thread, label %num_cpu_avail.exit256

num_cpu_avail.exit256:                            ; preds = %bb.ad
  %i.dt = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !13 ; 3 uses
  %i.du = icmp eq i32 %i.dt, 1
  br i1 %i.du, label %num_cpu_avail.exit256.thread, label %bb.ag

num_cpu_avail.exit256.thread:                     ; preds = %bb.ad, %bb.ac, %num_cpu_avail.exit256
  call void @llvm.assume(i1 %14)
  br i1 %.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %num_cpu_avail.exit256.thread
  %i.dv = call i32 @dgemv_n(i64 noundef %indvars.iv.next276, i64 noundef %i.bp, i64 noundef 0, double noundef %.fr265, ptr noundef %6, i64 noundef %i.bs, ptr noundef %.1221, i64 noundef %i.bt, ptr noundef %i.dc, i64 noundef 1, ptr noundef %i.do) #6, !callees !15 ; 0 uses
  br label %bb.aj

bb.af:                                            ; preds = %num_cpu_avail.exit256.thread
  %i.dw = call i32 @dgemv_t(i64 noundef %i.bp, i64 noundef %indvars.iv.next276, i64 noundef 0, double noundef %.fr265, ptr noundef %6, i64 noundef %i.bs, ptr noundef %.1221, i64 noundef %i.bt, ptr noundef %i.dc, i64 noundef 1, ptr noundef %i.do) #6, !callees !15 ; 0 uses
  br label %bb.aj

bb.ag:                                            ; preds = %num_cpu_avail.exit256
  %i.dx = load ptr, ptr %i.br, align 8, !tbaa !17 ; 2 uses
  br i1 %.not, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dy = call i32 %i.dx(i64 noundef %indvars.iv.next276, i64 noundef %i.bp, double noundef %.fr265, ptr noundef %6, i64 noundef %i.bs, ptr noundef %.1221, i64 noundef %i.bt, ptr noundef %i.dc, i64 noundef 1, ptr noundef %i.do, i32 noundef %i.dt) #6 ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dz = call i32 %i.dx(i64 noundef %i.bp, i64 noundef %indvars.iv.next276, double noundef %.fr265, ptr noundef %6, i64 noundef %i.bs, ptr noundef %.1221, i64 noundef %i.bt, ptr noundef %i.dc, i64 noundef 1, ptr noundef %i.do, i32 noundef %i.dt) #6 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ae, %bb.af
  %.0..0..0..0.12 = load volatile i32, ptr %i.d, align 4, !tbaa !10
  %.not248 = icmp eq i32 %.0..0..0..0.12, 0
  br i1 %.not248, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @blas_memory_free(ptr noundef %i.do) #6
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.stackrestore.p0(ptr %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %.loopexit, label %.lr.ph263.split, !llvm.loop !9

.loopexit:                                        ; preds = %bb.u, %.lr.ph.split.us.split, %bb.al, %.lr.ph263.split.us.split, %.preheader259, %.lr.ph.split.us, %.preheader, %.lr.ph263.split.us, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dgemv_thread_n(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dgemv_thread_t(i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @dgemv_n(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dgemv_t(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dscal_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare ptr @blas_memory_alloc(i32 noundef) local_unnamed_addr #2

declare void @blas_memory_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !14}
!9 = distinct !{!9, !14}
!10 = !{!5, !5, i64 0}
!11 = !{!"double", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{ptr @dgemv_n, ptr @dgemv_t}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!16, !16, i64 0}
end_hunk_0
