Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/cblas_dgemmt?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@cblas_dgemmt:bb.a
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
  store i32 -1, ptr %i.a, align 4, !tbaa !8
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
  store i32 %spec.select305.sink, ptr %i.a, align 4, !tbaa !8
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
  %i.ce = getelementptr inbounds [8 x i8], ptr @__const.cblas_dgemmt.gemv, i64 %i.ca
  br i1 %i.bx, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.cf = zext nneg i32 %13 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  %narrow = select i1 %i.bs, i32 %.1251, i32 1
  %i.cg = sext i32 %narrow to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.bw, label %.lr.ph.split.us.split.preheader, label %.loopexit

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %i.ch = zext nneg i32 %13 to i64
  %wide.trip.count327 = zext nneg i32 %4 to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %.lr.ph.split.us.split
  %indvars.iv324 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next325, %.lr.ph.split.us.split ] ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 3 uses
  %i.ci = mul nuw nsw i64 %indvars.iv324, %i.ch
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.ci
  %i.ck = tail call i32 @dscal_k(i64 noundef %indvars.iv.next325, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.cj, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %.loopexit, label %.lr.ph.split.us.split, !llvm.loop !9

.preheader:                                       ; preds = %bb.g
  br i1 %i.bv, label %.lr.ph319, label %.loopexit

.lr.ph319:                                        ; preds = %.preheader
  %i.cl = and i32 %.9, 1
  %.not284 = icmp eq i32 %i.cl, 0                 ; 3 uses
  %i.cm = fcmp une double %11, 1.000000e+00       ; 2 uses
  %i.cn = fcmp oeq double %6, 0.000000e+00
  %i.co = sext i32 %5 to i64                      ; 5 uses
  %i.cp = sext i32 %.9 to i64                     ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr @cblas_dgemmt.gemv_thread, i64 %i.cp
  %i.cr = zext nneg i32 %.1253 to i64             ; 5 uses
  %i.cs = zext nneg i32 %i.bt to i64              ; 4 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr @__const.cblas_dgemmt.gemv, i64 %i.cp
  br i1 %i.cn, label %.lr.ph319.split.us, label %.lr.ph319.split.preheader

.lr.ph319.split.preheader:                        ; preds = %.lr.ph319
  %i.cu = zext nneg i32 %4 to i64
  %i.cv = zext nneg i32 %13 to i64
  %wide.trip.count332 = zext nneg i32 %4 to i64
  %i.cw = select i1 %.not284, i64 1, i64 %i.cr
  %narrow352 = select i1 %i.bs, i32 %.1251, i32 1
  %i.cx = sext i32 %narrow352 to i64
  br label %.lr.ph319.split

.lr.ph319.split.us:                               ; preds = %.lr.ph319
  br i1 %i.cm, label %.lr.ph319.split.us.split.preheader, label %.loopexit

.lr.ph319.split.us.split.preheader:               ; preds = %.lr.ph319.split.us
  %i.cy = zext nneg i32 %4 to i64
  %i.cz = zext nneg i32 %13 to i64
  %wide.trip.count337 = zext nneg i32 %4 to i64
  br label %.lr.ph319.split.us.split

.lr.ph319.split.us.split:                         ; preds = %.lr.ph319.split.us.split.preheader, %.lr.ph319.split.us.split
  %indvars.iv334 = phi i64 [ 0, %.lr.ph319.split.us.split.preheader ], [ %indvars.iv.next335, %.lr.ph319.split.us.split ] ; 4 uses
  %i.da = sub nuw nsw i64 %i.cy, %indvars.iv334
  %i.db = mul nuw nsw i64 %indvars.iv334, %i.cz
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv334
  %i.de = tail call i32 @dscal_k(i64 noundef %i.da, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.dd, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  %indvars.iv.next335 = add nuw nsw i64 %indvars.iv334, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next335, %wide.trip.count337
  br i1 %exitcond338.not, label %.loopexit, label %.lr.ph319.split.us.split, !llvm.loop !11

.lr.ph319.split:                                  ; preds = %.lr.ph319.split.preheader, %bb.x
  %indvars.iv329 = phi i64 [ 0, %.lr.ph319.split.preheader ], [ %indvars.iv.next330, %bb.x ] ; 6 uses
  %i.df = sub nuw nsw i64 %i.cu, %indvars.iv329   ; 7 uses
  %.pn285 = mul nuw nsw i64 %indvars.iv329, %i.cw
  %.0 = getelementptr inbounds nuw [8 x i8], ptr %.1249, i64 %.pn285 ; 4 uses
  %.pn287 = mul nsw i64 %indvars.iv329, %i.cx
  %.0235 = getelementptr inbounds [8 x i8], ptr %.1247, i64 %.pn287 ; 4 uses
  %i.dg = mul nuw nsw i64 %indvars.iv329, %i.cv
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.dg
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %indvars.iv329 ; 5 uses
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph319.split
  %i.dj = call i32 @dscal_k(i64 noundef %i.df, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.di, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph319.split
  %i.dk = trunc nuw i64 %i.df to i32
  %.tr353 = add i32 %5, %i.dk
  %i.dl = shl i32 %.tr353, 1
  %i.dm = add i32 %i.dl, 18
  %i.dn = and i32 %i.dm, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 %i.dn, ptr %i.b, align 4, !tbaa !8
  %.0..0..0..0.7 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %i.do = icmp ugt i32 %.0..0..0..0.7, 256
  br i1 %i.do, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store volatile i32 0, ptr %i.b, align 4, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 2143294004, ptr %i.c, align 4, !tbaa !8
  %.0..0..0..0.8 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %.not288 = icmp eq i32 %.0..0..0..0.8, 0
  br i1 %.not288, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.0..0..0..0.9 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %i.dp = zext i32 %.0..0..0..0.9 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.dq = phi i64 [ %i.dp, %bb.l ], [ 1, %bb.k ]
  %i.dr = call ptr @llvm.stacksave.p0()
  %i.ds = alloca double, i64 %i.dq, align 32
  %.0..0..0..0.10 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %.not289 = icmp eq i32 %.0..0..0..0.10, 0
  br i1 %.not289, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dt = call ptr @blas_memory_alloc(i32 noundef 1) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.du = phi ptr [ %i.dt, %bb.n ], [ %i.ds, %bb.m ] ; 5 uses
  %i.dv = mul nsw i64 %i.df, %i.co
  %i.dw = icmp slt i64 %i.dv, 9216
  br i1 %i.dw, label %num_cpu_avail.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dx = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12
  %i.dy = icmp eq i32 %i.dx, 1
  br i1 %i.dy, label %num_cpu_avail.exit.thread, label %num_cpu_avail.exit

num_cpu_avail.exit:                               ; preds = %bb.p
  %i.dz = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12 ; 3 uses
  %i.ea = icmp eq i32 %i.dz, 1
  br i1 %i.ea, label %num_cpu_avail.exit.thread, label %bb.s

num_cpu_avail.exit.thread:                        ; preds = %bb.p, %bb.o, %num_cpu_avail.exit
  %i.eb = load ptr, ptr %i.ct, align 8, !tbaa !13 ; 2 uses
  br i1 %.not284, label %bb.q, label %bb.r

bb.q:                                             ; preds = %num_cpu_avail.exit.thread
  %i.ec = call i32 %i.eb(i64 noundef %i.df, i64 noundef %i.co, i64 noundef 0, double noundef %6, ptr noundef %.0, i64 noundef %i.cr, ptr noundef %.0235, i64 noundef %i.cs, ptr noundef %i.di, i64 noundef 1, ptr noundef %i.du) #5 ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %num_cpu_avail.exit.thread
  %i.ed = call i32 %i.eb(i64 noundef %i.co, i64 noundef %i.df, i64 noundef 0, double noundef %6, ptr noundef %.0, i64 noundef %i.cr, ptr noundef %.0235, i64 noundef %i.cs, ptr noundef %i.di, i64 noundef 1, ptr noundef %i.du) #5 ; 0 uses
  br label %bb.v

bb.s:                                             ; preds = %num_cpu_avail.exit
  %i.ee = load ptr, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  br i1 %.not284, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ef = call i32 %i.ee(i64 noundef %i.df, i64 noundef %i.co, double noundef %6, ptr noundef %.0, i64 noundef %i.cr, ptr noundef %.0235, i64 noundef %i.cs, ptr noundef %i.di, i64 noundef 1, ptr noundef %i.du, i32 noundef %i.dz) #5 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.eg = call i32 %i.ee(i64 noundef %i.co, i64 noundef %i.df, double noundef %6, ptr noundef %.0, i64 noundef %i.cr, ptr noundef %.0235, i64 noundef %i.cs, ptr noundef %i.di, i64 noundef 1, ptr noundef %i.du, i32 noundef %i.dz) #5 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.q, %bb.r
  %.0..0..0..0.11 = load volatile i32, ptr %i.b, align 4, !tbaa !8
  %.not290 = icmp eq i32 %.0..0..0..0.11, 0
  br i1 %.not290, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @blas_memory_free(ptr noundef %i.du) #5
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.stackrestore.p0(ptr %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1 ; 2 uses
  %exitcond333.not = icmp eq i64 %indvars.iv.next330, %wide.trip.count332
  br i1 %exitcond333.not, label %.loopexit, label %.lr.ph319.split, !llvm.loop !11

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 9 uses
  %spec.select306 = mul nsw i64 %indvars.iv, %i.cg
  %.1 = getelementptr inbounds [8 x i8], ptr %.1247, i64 %spec.select306 ; 4 uses
  %i.eh = mul nuw nsw i64 %indvars.iv, %i.cf
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %i.eh ; 5 uses
  br i1 %i.bw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.split
  %i.ej = call i32 @dscal_k(i64 noundef %indvars.iv.next, i64 noundef 0, i64 noundef 0, double noundef %11, ptr noundef %i.ei, i64 noundef 1, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #5 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.split
  %i.ek = trunc i64 %indvars.iv.next to i32
  %.tr = add i32 %5, %i.ek
  %i.el = shl i32 %.tr, 1
  %i.em = add i32 %i.el, 18
  %i.en = and i32 %i.em, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile i32 %i.en, ptr %i.d, align 4, !tbaa !8
  %.0..0..0..0.1 = load volatile i32, ptr %i.d, align 4, !tbaa !8
  %i.eo = icmp ugt i32 %.0..0..0..0.1, 256
  br i1 %i.eo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store volatile i32 0, ptr %i.d, align 4, !tbaa !8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store volatile i32 2143294004, ptr %i.e, align 4, !tbaa !8
  %.0..0..0..0.2 = load volatile i32, ptr %i.d, align 4, !tbaa !8
  %.not279 = icmp eq i32 %.0..0..0..0.2, 0
  br i1 %.not279, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.0..0..0..0.3 = load volatile i32, ptr %i.d, align 4, !tbaa !8
  %i.ep = zext i32 %.0..0..0..0.3 to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.eq = phi i64 [ %i.ep, %bb.ac ], [ 1, %bb.ab ]
  %i.er = call ptr @llvm.stacksave.p0()
  %i.es = alloca double, i64 %i.eq, align 32
  %.0..0..0..0.4 = load volatile i32, ptr %i.d, align 4, !tbaa !8
  %.not280 = icmp eq i32 %.0..0..0..0.4, 0
  br i1 %.not280, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.et = call ptr @blas_memory_alloc(i32 noundef 1) #5
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.eu = phi ptr [ %i.et, %bb.ae ], [ %i.es, %bb.ad ] ; 5 uses
  %i.ev = mul nsw i64 %indvars.iv.next, %i.by
  %i.ew = icmp slt i64 %i.ev, 9216
  br i1 %i.ew, label %num_cpu_avail.exit308.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ex = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12
  %i.ey = icmp eq i32 %i.ex, 1
  br i1 %i.ey, label %num_cpu_avail.exit308.thread, label %num_cpu_avail.exit308

num_cpu_avail.exit308:                            ; preds = %bb.ag
  %i.ez = load atomic i32, ptr @blas_cpu_number seq_cst, align 4, !tbaa !12 ; 3 uses
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %num_cpu_avail.exit308.thread, label %bb.aj

num_cpu_avail.exit308.thread:                     ; preds = %bb.ag, %bb.af, %num_cpu_avail.exit308
  %i.fb = load ptr, ptr %i.ce, align 8, !tbaa !13 ; 2 uses
  br i1 %.not281, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %num_cpu_avail.exit308.thread
  %i.fc = call i32 %i.fb(i64 noundef %indvars.iv.next, i64 noundef %i.by, i64 noundef 0, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ei, i64 noundef 1, ptr noundef %i.eu) #5 ; 0 uses
  br label %bb.am

bb.ai:                                            ; preds = %num_cpu_avail.exit308.thread
  %i.fd = call i32 %i.fb(i64 noundef %i.by, i64 noundef %indvars.iv.next, i64 noundef 0, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ei, i64 noundef 1, ptr noundef %i.eu) #5 ; 0 uses
  br label %bb.am

bb.aj:                                            ; preds = %num_cpu_avail.exit308
  %i.fe = load ptr, ptr %i.cb, align 8, !tbaa !13 ; 2 uses
  br i1 %.not281, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ff = call i32 %i.fe(i64 noundef %indvars.iv.next, i64 noundef %i.by, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ei, i64 noundef 1, ptr noundef %i.eu, i32 noundef %i.ez) #5 ; 0 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fg = call i32 %i.fe(i64 noundef %i.by, i64 noundef %indvars.iv.next, double noundef %6, ptr noundef %.1249, i64 noundef %i.cc, ptr noundef %.1, i64 noundef %i.cd, ptr noundef %i.ei, i64 noundef 1, ptr noundef %i.eu, i32 noundef %i.ez) #5 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.ah, %bb.ai
  %.0..0..0..0.5 = load volatile i32, ptr %i.d, align 4, !tbaa !8
  %.not283 = icmp eq i32 %.0..0..0..0.5, 0
  br i1 %.not283, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @blas_memory_free(ptr noundef %i.eu) #5
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @llvm.stackrestore.p0(ptr %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !9

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
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
end_hunk_0
