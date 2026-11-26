Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/ad_write_coll?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ADIOI_W_Exchange_data:bb.a

.critedge:                                        ; preds = %bb.p, %.preheader279
  %i.eu = phi i32 [ %.pre373, %.preheader279 ], [ %i.et, %bb.p ]
  %.not259 = icmp eq i32 %9, %i.eu
  br i1 %.not259, label %bb.q, label %.sink.split

.sink.split:                                      ; preds = %bb.m, %.critedge, %bb.l
  store i32 1, ptr %26, align 4, !tbaa !8
  br label %bb.q

bb.q:                                             ; preds = %.sink.split, %.critedge
  tail call void @ADIOI_Free_fn(ptr noundef nonnull %.0233, i32 noundef 630, ptr noundef nonnull @.str) #7
  tail call void @ADIOI_Free_fn(ptr noundef %.0235, i32 noundef 631, ptr noundef nonnull @.str) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge295
  %.not260 = icmp eq i32 %.0240.lcssa, 0          ; 2 uses
  br i1 %.not260, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ev = load i32, ptr %26, align 4, !tbaa !8
  %.not261 = icmp eq i32 %i.ev, 0
  br i1 %.not261, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !31
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !111
  call void %i.ez(ptr noundef %0, ptr noundef %2, i32 noundef %9, ptr noundef nonnull @ompi_mpi_byte, i32 noundef 100, i64 noundef %8, ptr noundef nonnull %31, ptr noundef nonnull %i.a) #7
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !8   ; 2 uses
  %.not262 = icmp eq i32 %i.fa, 0
  br i1 %.not262, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fb = call i32 (i32, i32, ptr, i32, i32, ptr, ptr, ...) @MPIO_Err_create_code(i32 noundef %i.fa, i32 noundef 0, ptr noundef nonnull @ADIOI_W_Exchange_data.myname, i32 noundef 642, i32 noundef 35, ptr noundef nonnull @.str.3, ptr noundef null) #7
  store i32 %i.fb, ptr %30, align 4, !tbaa !8
  br label %bb.an

bb.v:                                             ; preds = %bb.s, %bb.t, %bb.r
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !112
  %.not263 = icmp eq i32 %i.fd, 0
  br i1 %.not263, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fe = add nuw nsw i32 %.0239.lcssa, 1
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 3
  %i.fh = call ptr @ADIOI_Malloc_fn(i64 noundef %i.fg, i32 noundef 652, ptr noundef nonnull @.str) #7 ; 2 uses
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  %i.fi = add nuw nsw i32 %i.am, %.0239.lcssa
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = call ptr @ADIOI_Malloc_fn(i64 noundef %i.fk, i32 noundef 656, ptr noundef nonnull @.str) #7 ; 3 uses
  br i1 %i.e, label %.lr.ph301, label %._crit_edge302

.lr.ph301:                                        ; preds = %bb.x
  %i.fm = mul nsw i32 %27, 100
  %i.fn = add i32 %i.fm, %15
  %wide.trip.count344 = zext nneg i32 %14 to i64
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph301, %bb.aa
  %indvars.iv341 = phi i64 [ 0, %.lr.ph301 ], [ %indvars.iv.next342, %bb.aa ] ; 3 uses
  %.2299 = phi i32 [ 0, %.lr.ph301 ], [ %.3, %bb.aa ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv341
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8
  %.not264 = icmp eq i32 %i.fp, 0
  br i1 %.not264, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fq = sext i32 %.2299 to i64                  ; 2 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.fq
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !113
  %i.ft = trunc nuw nsw i64 %indvars.iv341 to i32 ; 2 uses
  %i.fu = add i32 %i.fn, %i.ft
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fq
  %i.fx = call i32 @PMPI_Irecv(ptr noundef null, i32 noundef 1, ptr noundef %i.fs, i32 noundef %i.ft, i32 noundef %i.fu, ptr noundef %i.fv, ptr noundef %i.fw) #7 ; 0 uses
  %i.fy = add nsw i32 %.2299, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.3 = phi i32 [ %i.fy, %bb.z ], [ %.2299, %bb.y ]
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge302, label %bb.y, !llvm.loop !103

._crit_edge302:                                   ; preds = %bb.aa, %bb.x
  %i.fz = zext nneg i32 %.0240.lcssa to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fz
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge302, %bb.w
  %.0237 = phi ptr [ %i.fh, %bb.w ], [ %i.fl, %._crit_edge302 ] ; 2 uses
  %.0236 = phi ptr [ %i.fh, %bb.w ], [ %i.ga, %._crit_edge302 ] ; 3 uses
  %.not265 = icmp eq i32 %16, 0                   ; 2 uses
  br i1 %.not265, label %bb.af, label %.preheader277

.preheader277:                                    ; preds = %bb.ab
  br i1 %i.e, label %.lr.ph305, label %.loopexit

.lr.ph305:                                        ; preds = %.preheader277
  %i.gb = mul nsw i32 %27, 100
  %i.gc = add i32 %i.gb, %15
  %wide.trip.count349 = zext nneg i32 %14 to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph305, %bb.ae
  %indvars.iv346 = phi i64 [ 0, %.lr.ph305 ], [ %indvars.iv.next347, %bb.ae ] ; 4 uses
  %.4304 = phi i32 [ 0, %.lr.ph305 ], [ %.5, %bb.ae ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv346 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8  ; 2 uses
  %.not270 = icmp eq i32 %i.ge, 0
  br i1 %.not270, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %29, i64 %indvars.iv346 ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !37
  %i.gh = getelementptr inbounds i8, ptr %1, i64 %i.gg
  %i.gi = trunc nuw nsw i64 %indvars.iv346 to i32 ; 2 uses
  %i.gj = add i32 %i.gc, %i.gi
  %i.gk = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.gl = sext i32 %.4304 to i64
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0236, i64 %i.gl
  %i.gn = call i32 @PMPI_Isend(ptr noundef %i.gh, i32 noundef %i.ge, ptr noundef nonnull @ompi_mpi_byte, i32 noundef %i.gi, i32 noundef %i.gj, ptr noundef %i.gk, ptr noundef %i.gm) #7 ; 0 uses
  %i.go = add nsw i32 %.4304, 1
  %i.gp = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gq = sext i32 %i.gp to i64
  %i.gr = load i64, ptr %i.gf, align 8, !tbaa !37
  %i.gs = add nsw i64 %i.gr, %i.gq
  store i64 %i.gs, ptr %i.gf, align 8, !tbaa !37
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.5 = phi i32 [ %i.go, %bb.ad ], [ %.4304, %bb.ac ]
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond350.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count349
  br i1 %exitcond350.not, label %.loopexit278, label %bb.ac, !llvm.loop !104

bb.af:                                            ; preds = %bb.ab
  %.not266 = icmp eq i32 %.0239.lcssa, 0
  br i1 %.not266, label %.loopexit278, label %.preheader276

.preheader276:                                    ; preds = %bb.af
  br i1 %i.e, label %.lr.ph308.preheader, label %._crit_edge309

.lr.ph308.preheader:                              ; preds = %.preheader276
  %wide.trip.count354 = zext nneg i32 %14 to i64  ; 3 uses
  %min.iters.check407 = icmp ult i32 %14, 4
  br i1 %min.iters.check407, label %.lr.ph308.preheader422, label %vector.ph408

vector.ph408:                                     ; preds = %.lr.ph308.preheader
  %n.vec409 = and i64 %wide.trip.count354, 2147483644 ; 3 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph408
  %index411 = phi i64 [ 0, %vector.ph408 ], [ %index.next416, %vector.body410 ] ; 2 uses
  %vec.phi412 = phi <2 x i64> [ zeroinitializer, %vector.ph408 ], [ %i.gx, %vector.body410 ]
  %vec.phi413 = phi <2 x i64> [ zeroinitializer, %vector.ph408 ], [ %i.gy, %vector.body410 ]
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index411 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %wide.load414 = load <2 x i32>, ptr %i.gt, align 4, !tbaa !8
  %wide.load415 = load <2 x i32>, ptr %i.gu, align 4, !tbaa !8
  %i.gv = sext <2 x i32> %wide.load414 to <2 x i64>
  %i.gw = sext <2 x i32> %wide.load415 to <2 x i64>
  %i.gx = add <2 x i64> %vec.phi412, %i.gv        ; 2 uses
  %i.gy = add <2 x i64> %vec.phi413, %i.gw        ; 2 uses
  %index.next416 = add nuw i64 %index411, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next416, %n.vec409
  br i1 %i.gz, label %middle.block417, label %vector.body410, !llvm.loop !105

middle.block417:                                  ; preds = %vector.body410
  %bin.rdx418 = add <2 x i64> %i.gy, %i.gx
  %i.ha = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx418) ; 2 uses
  %cmp.n419 = icmp eq i64 %n.vec409, %wide.trip.count354
  br i1 %cmp.n419, label %._crit_edge309, label %.lr.ph308.preheader422

.lr.ph308.preheader422:                           ; preds = %.lr.ph308.preheader, %middle.block417
  %indvars.iv351.ph = phi i64 [ 0, %.lr.ph308.preheader ], [ %n.vec409, %middle.block417 ]
  %.0307.ph = phi i64 [ 0, %.lr.ph308.preheader ], [ %i.ha, %middle.block417 ]
  br label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader422, %.lr.ph308
  %indvars.iv351 = phi i64 [ %indvars.iv.next352, %.lr.ph308 ], [ %indvars.iv351.ph, %.lr.ph308.preheader422 ] ; 2 uses
  %.0307 = phi i64 [ %i.he, %.lr.ph308 ], [ %.0307.ph, %.lr.ph308.preheader422 ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv351
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !8
  %i.hd = sext i32 %i.hc to i64
  %i.he = add i64 %.0307, %i.hd                   ; 2 uses
  %indvars.iv.next352 = add nuw nsw i64 %indvars.iv351, 1 ; 2 uses
  %exitcond355.not = icmp eq i64 %indvars.iv.next352, %wide.trip.count354
  br i1 %exitcond355.not, label %._crit_edge309, label %.lr.ph308, !llvm.loop !106

._crit_edge309:                                   ; preds = %.lr.ph308, %middle.block417, %.preheader276
  %.0.lcssa = phi i64 [ 0, %.preheader276 ], [ %i.ha, %middle.block417 ], [ %i.he, %.lr.ph308 ]
  %i.hf = shl nsw i64 %i.aq, 3
  %i.hg = call ptr @ADIOI_Malloc_fn(i64 noundef %i.hf, i32 noundef 691, ptr noundef nonnull @.str) #7 ; 9 uses
  %i.hh = call ptr @ADIOI_Malloc_fn(i64 noundef %.0.lcssa, i32 noundef 692, ptr noundef nonnull @.str) #7
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !40
  %i.hi = icmp sgt i32 %14, 1
  br i1 %i.hi, label %.lr.ph313.preheader, label %._crit_edge314

.lr.ph313.preheader:                              ; preds = %._crit_edge309
  %wide.trip.count359 = zext nneg i32 %14 to i64
  %load_initial = load ptr, ptr %i.hg, align 8    ; 2 uses
  %i.hj = add nsw i64 %wide.trip.count359, -1     ; 2 uses
  %xtraiter435 = and i64 %i.hj, 3                 ; 3 uses
  %i.hk = add nsw i32 %14, -2
  %i.hl = icmp ult i32 %i.hk, 3
  br i1 %i.hl, label %.lr.ph313.epil.preheader, label %.lr.ph313.preheader.new

.lr.ph313.preheader.new:                          ; preds = %.lr.ph313.preheader
  %unroll_iter438 = and i64 %i.hj, -4
  br label %.lr.ph313

.lr.ph313:                                        ; preds = %.lr.ph313, %.lr.ph313.preheader.new
  %i.hm = phi ptr [ %load_initial, %.lr.ph313.preheader.new ], [ %i.ij, %.lr.ph313 ]
  %indvars.iv356 = phi i64 [ 1, %.lr.ph313.preheader.new ], [ %indvars.iv.next357.3, %.lr.ph313 ] ; 6 uses
  %niter439 = phi i64 [ 0, %.lr.ph313.preheader.new ], [ %niter439.next.3, %.lr.ph313 ]
  %i.hn = getelementptr [4 x i8], ptr %6, i64 %indvars.iv356
  %i.ho = getelementptr i8, ptr %i.hn, i64 -4
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !8
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds i8, ptr %i.hm, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv356
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !40
  %indvars.iv.next357 = add nuw nsw i64 %indvars.iv356, 1 ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %6, i64 %indvars.iv.next357
  %i.hu = getelementptr i8, ptr %i.ht, i64 -4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !8
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds i8, ptr %i.hr, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next357
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !40
  %indvars.iv.next357.1 = add nuw nsw i64 %indvars.iv356, 2 ; 2 uses
  %i.hz = getelementptr [4 x i8], ptr %6, i64 %indvars.iv.next357.1
  %i.ia = getelementptr i8, ptr %i.hz, i64 -4
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !8
  %i.ic = sext i32 %i.ib to i64
  %i.id = getelementptr inbounds i8, ptr %i.hx, i64 %i.ic ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next357.1
  store ptr %i.id, ptr %i.ie, align 8, !tbaa !40
  %indvars.iv.next357.2 = add nuw nsw i64 %indvars.iv356, 3 ; 2 uses
  %i.if = getelementptr [4 x i8], ptr %6, i64 %indvars.iv.next357.2
  %i.ig = getelementptr i8, ptr %i.if, i64 -4
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !8
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds i8, ptr %i.id, i64 %i.ii ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next357.2
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !40
  %indvars.iv.next357.3 = add nuw nsw i64 %indvars.iv356, 4 ; 2 uses
  %niter439.next.3 = add i64 %niter439, 4         ; 2 uses
  %niter439.ncmp.3 = icmp eq i64 %niter439.next.3, %unroll_iter438
  br i1 %niter439.ncmp.3, label %._crit_edge314.loopexit.unr-lcssa, label %.lr.ph313, !llvm.loop !107

._crit_edge314.loopexit.unr-lcssa:                ; preds = %.lr.ph313
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  br i1 %lcmp.mod436.not, label %._crit_edge314, label %.lr.ph313.epil.preheader

.lr.ph313.epil.preheader:                         ; preds = %._crit_edge314.loopexit.unr-lcssa, %.lr.ph313.preheader
  %.epil.init = phi ptr [ %load_initial, %.lr.ph313.preheader ], [ %i.ij, %._crit_edge314.loopexit.unr-lcssa ]
  %indvars.iv356.epil.init = phi i64 [ 1, %.lr.ph313.preheader ], [ %indvars.iv.next357.3, %._crit_edge314.loopexit.unr-lcssa ]
  %lcmp.mod437 = icmp ne i64 %xtraiter435, 0
  call void @llvm.assume(i1 %lcmp.mod437)
  br label %.lr.ph313.epil

.lr.ph313.epil:                                   ; preds = %.lr.ph313.epil, %.lr.ph313.epil.preheader
  %i.il = phi ptr [ %.epil.init, %.lr.ph313.epil.preheader ], [ %i.iq, %.lr.ph313.epil ]
  %indvars.iv356.epil = phi i64 [ %indvars.iv356.epil.init, %.lr.ph313.epil.preheader ], [ %indvars.iv.next357.epil, %.lr.ph313.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph313.epil.preheader ], [ %epil.iter.next, %.lr.ph313.epil ]
  %i.im = getelementptr [4 x i8], ptr %6, i64 %indvars.iv356.epil
  %i.in = getelementptr i8, ptr %i.im, i64 -4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !8
  %i.ip = sext i32 %i.io to i64
  %i.iq = getelementptr inbounds i8, ptr %i.il, i64 %i.ip ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv356.epil
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !40
  %indvars.iv.next357.epil = add nuw nsw i64 %indvars.iv356.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter435
  br i1 %epil.iter.cmp.not, label %._crit_edge314, label %.lr.ph313.epil, !llvm.loop !108

._crit_edge314:                                   ; preds = %._crit_edge314.loopexit.unr-lcssa, %.lr.ph313.epil, %._crit_edge309
  call void @ADIOI_Fill_send_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %i.hg, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %.0236, ptr noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %17, i64 noundef %18, i64 noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %23, ptr noundef %24, ptr noundef %25, i32 noundef %27, i64 noundef %28)
  br label %.loopexit278

.loopexit278:                                     ; preds = %bb.ae, %bb.af, %._crit_edge314
  %.0238 = phi ptr [ null, %bb.af ], [ %i.hg, %._crit_edge314 ], [ null, %bb.ae ] ; 2 uses
  %i.is = load i32, ptr %i.fc, align 8, !tbaa !112
  %.not267 = icmp ne i32 %i.is, 0
  %or.cond322 = and i1 %.not267, %i.e
  br i1 %or.cond322, label %.lr.ph317, label %.loopexit

.lr.ph317:                                        ; preds = %.loopexit278
  %i.it = mul nsw i32 %27, 100
  %i.iu = add i32 %i.it, %15
  %wide.trip.count364 = zext nneg i32 %14 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph317, %bb.ai
  %indvars.iv361 = phi i64 [ 0, %.lr.ph317 ], [ %indvars.iv.next362, %bb.ai ] ; 3 uses
  %.6316 = phi i32 [ 0, %.lr.ph317 ], [ %.7, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #7
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv361
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !8
  %.not269 = icmp eq i32 %i.iw, 0
  br i1 %.not269, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ix = sext i32 %.6316 to i64
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ix
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !113
  %i.ja = trunc nuw nsw i64 %indvars.iv361 to i32 ; 2 uses
  %i.jb = add i32 %i.iu, %i.ja
  %i.jc = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.jd = call i32 @PMPI_Recv(ptr noundef null, i32 noundef 1, ptr noundef %i.iz, i32 noundef %i.ja, i32 noundef %i.jb, ptr noundef %i.jc, ptr noundef nonnull %32) #7 ; 0 uses
  %i.je = add nsw i32 %.6316, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.7 = phi i32 [ %i.je, %bb.ah ], [ %.6316, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #7
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %exitcond365.not = icmp eq i64 %indvars.iv.next362, %wide.trip.count364
  br i1 %exitcond365.not, label %.loopexit, label %bb.ag, !llvm.loop !109

.loopexit:                                        ; preds = %bb.ai, %.preheader277, %.loopexit278
  %.0238387 = phi ptr [ null, %.preheader277 ], [ %.0238, %.loopexit278 ], [ %.0238, %bb.ai ] ; 2 uses
  br i1 %.not260, label %._crit_edge321, label %.lr.ph320.preheader

.lr.ph320.preheader:                              ; preds = %.loopexit
  %wide.trip.count369 = zext i32 %.0240.lcssa to i64
  br label %.lr.ph320

.lr.ph320:                                        ; preds = %.lr.ph320.preheader, %.lr.ph320
  %indvars.iv366 = phi i64 [ 0, %.lr.ph320.preheader ], [ %indvars.iv.next367, %.lr.ph320 ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv366
  %i.jg = call i32 @PMPI_Type_free(ptr noundef %i.jf) #7 ; 0 uses
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %._crit_edge321, label %.lr.ph320, !llvm.loop !110

._crit_edge321:                                   ; preds = %.lr.ph320, %.loopexit
  call void @ADIOI_Free_fn(ptr noundef %i.ap, i32 noundef 721, ptr noundef nonnull @.str) #7
  %i.jh = load i32, ptr %i.fc, align 8, !tbaa !112
  %.not268 = icmp eq i32 %i.jh, 0
  br i1 %.not268, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge321
  %i.ji = call i32 @PMPI_Waitall(i32 noundef %.0239.lcssa, ptr noundef %.0236, ptr noundef null) #7 ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %._crit_edge321
  %i.jj = add nuw nsw i32 %.0239.lcssa, %.0240.lcssa
  %i.jk = call i32 @PMPI_Waitall(i32 noundef %i.jj, ptr noundef %.0237, ptr noundef null) #7 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @ADIOI_Free_fn(ptr noundef %.0237, i32 noundef 761, ptr noundef nonnull @.str) #7
  %i.jl = icmp ne i32 %.0239.lcssa, 0
  %or.cond = select i1 %.not265, i1 %i.jl, i1 false
  br i1 %or.cond, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jm = load ptr, ptr %.0238387, align 8, !tbaa !40
  call void @ADIOI_Free_fn(ptr noundef %i.jm, i32 noundef 763, ptr noundef nonnull @.str) #7
  call void @ADIOI_Free_fn(ptr noundef nonnull %.0238387, i32 noundef 764, ptr noundef nonnull @.str) #7
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @PMPI_Alltoall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ADIOI_Type_create_hindexed_x(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_commit(ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Irecv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Recv(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Type_free(ptr noundef) local_unnamed_addr #2

declare i32 @PMPI_Waitall(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 long long", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 long", !9, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"long long", !4, i64 0}
!15 = !{!"p1 _ZTS16ADIOI_Fns_struct", !9, i64 0}
!16 = !{!"p1 _ZTS19ompi_communicator_t", !9, i64 0}
!17 = !{!"p1 omnipotent char", !9, i64 0}
!18 = !{!"p1 _ZTS15ompi_datatype_t", !9, i64 0}
!19 = !{!"p1 _ZTS18ADIOI_Hints_struct", !9, i64 0}
!20 = !{!"p1 _ZTS11ompi_info_t", !9, i64 0}
!21 = !{!"ompi_status_public_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !13, i64 16}
!22 = !{!"p1 _ZTS11ADIOI_FileD", !9, i64 0}
!23 = !{!"p1 _ZTS17ompi_errhandler_t", !9, i64 0}
!24 = !{!"any p2 pointer", !9, i64 0}
!25 = !{!"p2 _ZTS15ompi_datatype_t", !24, i64 0}
!26 = !{!"p1 _ZTS10ompi_win_t", !9, i64 0}
!27 = !{!"ADIOI_FileD", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !13, i64 32, !14, i64 40, !14, i64 48, !15, i64 56, !16, i64 64, !5, i64 72, !5, i64 76, !17, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !14, i64 104, !18, i64 112, !18, i64 120, !14, i64 128, !19, i64 136, !20, i64 144, !5, i64 152, !21, i64 160, !18, i64 184, !17, i64 192, !22, i64 200, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !23, i64 224, !9, i64 232, !10, i64 240, !25, i64 248, !5, i64 256, !17, i64 264, !26, i64 272, !5, i64 280, !26, i64 288, !5, i64 296}
!28 = !{!27, !16, i64 64}
!29 = !{!14, !14, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!27, !15, i64 56}
!32 = !{!"ADIOI_Fns_struct", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !17, i64 192, !9, i64 200, !9, i64 208, !9, i64 216}
!33 = !{!"", !10, i64 0, !10, i64 8, !12, i64 16, !5, i64 24}
!34 = !{!33, !10, i64 0}
!35 = !{!33, !10, i64 8}
!36 = !{!33, !12, i64 16}
!37 = !{!13, !13, i64 0}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!17, !17, i64 0}
end_hunk_0
