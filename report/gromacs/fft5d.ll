Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/fft5d?download=true
inline.NumInlined: 69
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z13fft5d_plan_3diiiPP10tmpi_comm_iPP9t_complexS4_S4_S4_iN3gmx13PinningPolicyE:bb.a
  %i.l = alloca [3 x i32], align 4                ; 8 uses
  %i.m = alloca [3 x ptr], align 16               ; 9 uses
  %i.n = alloca [3 x ptr], align 16               ; 9 uses
  %i.o = alloca [3 x ptr], align 16               ; 9 uses
  %i.p = alloca [3 x ptr], align 16               ; 9 uses
  %i.q = alloca [3 x i32], align 4                ; 11 uses
  %i.r = alloca [3 x i32], align 4                ; 11 uses
  %i.s = alloca [2 x i32], align 4                ; 8 uses
  %i.t = alloca ptr, align 8                      ; 7 uses
  %i.u = alloca i32, align 4                      ; 24 uses
  %11 = alloca [3 x %struct.fftw_iodim_do_not_use_me], align 16 ; 24 uses
  %i.v = tail call i32 @__kmpc_global_thread_num(ptr nonnull @1)
  store i32 %4, ptr %i.a, align 4, !tbaa !9
  store i32 %9, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #13
  %i.w = load ptr, ptr %3, align 8, !tbaa !12     ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = call noundef i32 @_Z14tMPI_Comm_sizeP10tmpi_comm_Pi(ptr noundef nonnull %i.w, ptr noundef nonnull %i.c) ; 0 uses
  %i.y = load ptr, ptr %3, align 8, !tbaa !12
  %i.z = call noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef %i.y, ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 4, !tbaa !9
  store i32 0, ptr %i.d, align 4, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !12 ; 2 uses
  %.not287 = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  br i1 %.not287, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = call noundef i32 @_Z14tMPI_Comm_sizeP10tmpi_comm_Pi(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac) ; 0 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ag = call noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef %i.ae, ptr noundef nonnull %i.af) ; 0 uses
  %.pre = load i32, ptr %i.af, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %i.ac, align 4, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.ah, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = phi i32 [ 0, %bb.f ], [ %.pre, %bb.e ]  ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !9   ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.am = icmp eq i32 %i.ai, 0
  %i.an = select i1 %i.ak, i1 %i.am, i1 false     ; 2 uses
  %i.ao = load ptr, ptr @debug, align 8, !tbaa !14 ; 2 uses
  %.not288 = icmp eq ptr %i.ao, null
  br i1 %.not288, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !9
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.ao, ptr noundef nonnull @.str, i32 noundef %i.ap, i32 noundef %i.ar, i32 noundef %i.aj, i32 noundef %i.ai) #13 ; 0 uses
  %.pre515 = load ptr, ptr @debug, align 8        ; 2 uses
  %i.at = icmp ne ptr %.pre515, null
  %or.cond13 = select i1 %i.an, i1 %i.at, i1 false
  br i1 %or.cond13, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.au = load i32, ptr %i.c, align 4, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !9
  %i.ax = lshr i32 %4, 2
  %.lobit = and i32 %i.ax, 1
  %i.ay = lshr i32 %4, 1
  %.lobit289 = and i32 %i.ay, 1
  %i.az = and i32 %4, 1
  %i.ba = lshr i32 %4, 3
  %.lobit290 = and i32 %i.ba, 1
  %i.bb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.pre515, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.au, i32 noundef %i.aw, i32 noundef %.lobit, i32 noundef %.lobit289, i32 noundef %i.az, i32 noundef %.lobit290) #13 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.i, %bb.h
  %i.bc = icmp eq i32 %0, 0
  %i.bd = icmp eq i32 %1, 0
  %or.cond = or i1 %i.bc, %i.bd
  %i.be = icmp eq i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.be
  br i1 %or.cond3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  br i1 %i.an, label %bb.k, label %bb.ba

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.ba

bb.l:                                             ; preds = %.thread
  %i.bf = and i32 %4, 4
  %.not291 = icmp eq i32 %i.bf, 0                 ; 4 uses
  br i1 %.not291, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = and i32 %4, 2
  %.not292 = icmp eq i32 %i.bg, 0
  br i1 %.not292, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = sdiv i32 %0, 2
  %i.bi = add nsw i32 %i.bh, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bj = and i32 %4, 1
  %.not293 = icmp eq i32 %i.bj, 0
  br i1 %.not293, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = sdiv i32 %1, 2
  %i.bl = add nsw i32 %i.bk, 1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bm = sdiv i32 %2, 2
  %i.bn = add nsw i32 %i.bm, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p, %bb.l
  %.0270 = phi i32 [ %i.bn, %bb.q ], [ %2, %bb.p ], [ %2, %bb.n ], [ %2, %bb.l ] ; 17 uses
  %.0269 = phi i32 [ %1, %bb.q ], [ %i.bl, %bb.p ], [ %1, %bb.n ], [ %1, %bb.l ] ; 19 uses
  %.0268 = phi i32 [ %0, %bb.q ], [ %0, %bb.p ], [ %i.bi, %bb.n ], [ %0, %bb.l ] ; 18 uses
  %i.bo = load i32, ptr %i.c, align 4, !tbaa !9
  %.fr492 = freeze i32 %i.bo                      ; 31 uses
  %i.bp = sext i32 %.fr492 to i64
  %i.bq = shl nsw i64 %i.bp, 2                    ; 6 uses
  %i.br = call noalias ptr @malloc(i64 noundef %i.bq) #19 ; 12 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !9
  %.fr = freeze i32 %i.bt                         ; 31 uses
  %i.bu = sext i32 %.fr to i64
  %i.bv = shl nsw i64 %i.bu, 2                    ; 6 uses
  %i.bw = call noalias ptr @malloc(i64 noundef %i.bv) #19 ; 12 uses
  %i.bx = call noalias ptr @malloc(i64 noundef %i.bq) #19 ; 12 uses
  %i.by = call noalias ptr @malloc(i64 noundef %i.bv) #19 ; 12 uses
  %i.bz = call noalias ptr @malloc(i64 noundef %i.bq) #19 ; 12 uses
  %i.ca = call noalias ptr @malloc(i64 noundef %i.bv) #19 ; 12 uses
  %i.cb = call noalias ptr @malloc(i64 noundef %i.bq) #19 ; 9 uses
  %i.cc = call noalias ptr @malloc(i64 noundef %i.bv) #19 ; 9 uses
  %i.cd = call noalias ptr @malloc(i64 noundef %i.bq) #19 ; 9 uses
  %i.ce = call noalias ptr @malloc(i64 noundef %i.bv) #19 ; 9 uses
  %i.cf = call noalias ptr @malloc(i64 noundef %i.bq) #19 ; 9 uses
  %i.cg = call noalias ptr @malloc(i64 noundef %i.bv) #19 ; 9 uses
  %i.ch = icmp sgt i32 %.fr492, 0                 ; 2 uses
  br i1 %i.ch, label %.lr.ph.preheader, label %.preheader469

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %.fr492 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.fr492, 8
  br i1 %min.iters.check, label %.lr.ph.preheader1209, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.0268, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <8 x i32> poison, i32 %.fr492, i64 0
  %broadcast.splat582 = shufflevector <8 x i32> %broadcast.splatinsert581, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert583 = insertelement <8 x i32> poison, i32 %.0269, i64 0
  %broadcast.splat584 = shufflevector <8 x i32> %broadcast.splatinsert583, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert585 = insertelement <8 x i32> poison, i32 %.0270, i64 0
  %broadcast.splat586 = shufflevector <8 x i32> %broadcast.splatinsert585, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %vec.ind587 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next589, %vector.body ] ; 2 uses
  %vec.ind588 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next590, %vector.body ] ; 2 uses
  %i.ci = mul <8 x i32> %broadcast.splat, %vec.ind
  %i.cj = sdiv <8 x i32> %i.ci, %broadcast.splat582
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index
  store <8 x i32> %i.cj, ptr %i.ck, align 4, !tbaa !9
  %i.cl = mul <8 x i32> %broadcast.splat584, %vec.ind587
  %i.cm = sdiv <8 x i32> %i.cl, %broadcast.splat582
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index
  store <8 x i32> %i.cm, ptr %i.cn, align 4, !tbaa !9
  %i.co = mul <8 x i32> %broadcast.splat586, %vec.ind588
  %i.cp = sdiv <8 x i32> %i.co, %broadcast.splat582
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %index
  store <8 x i32> %i.cp, ptr %i.cq, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next589 = add <8 x i32> %vec.ind587, splat (i32 8)
  %vec.ind.next590 = add <8 x i32> %vec.ind588, splat (i32 8)
  %i.cr = icmp eq i64 %index.next, %n.vec
  br i1 %i.cr, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader469, label %.lr.ph.preheader1209

.lr.ph.preheader1209:                             ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %i.cs = insertelement <2 x i32> poison, i32 %.fr492, i64 0
  %i.ct = shufflevector <2 x i32> %i.cs, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.preheader469:                                    ; preds = %.lr.ph, %middle.block, %bb.r
  %i.cu = icmp sgt i32 %.fr, 0                    ; 2 uses
  br i1 %i.cu, label %.lr.ph475.preheader, label %.preheader468

.lr.ph475.preheader:                              ; preds = %.preheader469
  %wide.trip.count497 = zext nneg i32 %.fr to i64 ; 3 uses
  %min.iters.check592 = icmp ult i32 %.fr, 8
  br i1 %min.iters.check592, label %.lr.ph475.preheader1208, label %vector.ph593

vector.ph593:                                     ; preds = %.lr.ph475.preheader
  %n.vec594 = and i64 %wide.trip.count497, 2147483640 ; 3 uses
  %broadcast.splatinsert595.a = insertelement <8 x i32> poison, i32 %.0268, i64 0
  %broadcast.splat596.a = shufflevector <8 x i32> %broadcast.splatinsert595.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert597.a = insertelement <8 x i32> poison, i32 %.fr, i64 0
  %broadcast.splat598.a = shufflevector <8 x i32> %broadcast.splatinsert597.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert599 = insertelement <8 x i32> poison, i32 %.0269, i64 0
  %broadcast.splat600 = shufflevector <8 x i32> %broadcast.splatinsert599, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert601 = insertelement <8 x i32> poison, i32 %.0270, i64 0
  %broadcast.splat602 = shufflevector <8 x i32> %broadcast.splatinsert601, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph593
  %index604 = phi i64 [ 0, %vector.ph593 ], [ %index.next608, %vector.body603 ] ; 4 uses
  %vec.ind605 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph593 ], [ %vec.ind.next609, %vector.body603 ] ; 2 uses
  %vec.ind606 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph593 ], [ %vec.ind.next610, %vector.body603 ] ; 2 uses
  %vec.ind607 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph593 ], [ %vec.ind.next611, %vector.body603 ] ; 2 uses
  %i.cv = mul <8 x i32> %broadcast.splat596.a, %vec.ind605
  %i.cw = sdiv <8 x i32> %i.cv, %broadcast.splat598.a
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index604
  store <8 x i32> %i.cw, ptr %i.cx, align 4, !tbaa !9
  %i.cy = mul <8 x i32> %broadcast.splat600, %vec.ind606
  %i.cz = sdiv <8 x i32> %i.cy, %broadcast.splat598.a
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index604
  store <8 x i32> %i.cz, ptr %i.da, align 4, !tbaa !9
  %i.db = mul <8 x i32> %broadcast.splat602, %vec.ind607
  %i.dc = sdiv <8 x i32> %i.db, %broadcast.splat598.a
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index604
  store <8 x i32> %i.dc, ptr %i.dd, align 4, !tbaa !9
  %index.next608 = add nuw i64 %index604, 8       ; 2 uses
  %vec.ind.next609 = add <8 x i32> %vec.ind605, splat (i32 8)
  %vec.ind.next610 = add <8 x i32> %vec.ind606, splat (i32 8)
  %vec.ind.next611 = add <8 x i32> %vec.ind607, splat (i32 8)
  %i.de = icmp eq i64 %index.next608, %n.vec594
  br i1 %i.de, label %middle.block612, label %vector.body603, !llvm.loop !43

middle.block612:                                  ; preds = %vector.body603
  %cmp.n613 = icmp eq i64 %n.vec594, %wide.trip.count497
  br i1 %cmp.n613, label %.preheader468, label %.lr.ph475.preheader1208

.lr.ph475.preheader1208:                          ; preds = %.lr.ph475.preheader, %middle.block612
  %indvars.iv494.ph = phi i64 [ 0, %.lr.ph475.preheader ], [ %n.vec594, %middle.block612 ]
  %i.df = insertelement <2 x i32> poison, i32 %.fr, i64 0
  %i.dg = shufflevector <2 x i32> %i.df, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph475

.lr.ph:                                           ; preds = %.lr.ph.preheader1209, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader1209 ] ; 7 uses
  %i.dh = trunc i64 %indvars.iv to i32
  %i.di = mul i32 %.0268, %i.dh
  %i.dj = sdiv i32 %i.di, %.fr492
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !9
  %i.dl = trunc i64 %indvars.iv to i32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv
  %i.dn = trunc i64 %indvars.iv to i32
  %i.do = mul i32 %.0269, %i.dl
  %i.dp = mul i32 %.0270, %i.dn
  %i.dq = insertelement <2 x i32> poison, i32 %i.do, i64 0
  %i.dr = insertelement <2 x i32> %i.dq, i32 %i.dp, i64 1
  %i.ds = sdiv <2 x i32> %i.dr, %i.ct             ; 2 uses
  %i.dt = extractelement <2 x i32> %i.ds, i64 0
  store i32 %i.dt, ptr %i.dm, align 4, !tbaa !9
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.dv = extractelement <2 x i32> %i.ds, i64 1
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader469, label %.lr.ph, !llvm.loop !44

.preheader468:                                    ; preds = %.lr.ph475, %middle.block612, %.preheader469
  %i.dw = add i32 %.fr492, -1                     ; 2 uses
  %i.dx = icmp sgt i32 %.fr492, 1
  br i1 %i.dx, label %.lr.ph477.split.preheader, label %._crit_edge

.lr.ph477.split.preheader:                        ; preds = %.preheader468
  %wide.trip.count502 = zext nneg i32 %i.dw to i64 ; 3 uses
  %.pre516 = load i32, ptr %i.cb, align 4, !tbaa !9 ; 2 uses
  %.pre517 = load i32, ptr %i.cd, align 4, !tbaa !9 ; 2 uses
  %.pre518 = load i32, ptr %i.cf, align 4, !tbaa !9 ; 2 uses
  %min.iters.check616 = icmp ult i32 %.fr492, 9
  br i1 %min.iters.check616, label %.lr.ph477.split.preheader1204, label %vector.ph617

vector.ph617:                                     ; preds = %.lr.ph477.split.preheader
  %n.vec618 = and i64 %wide.trip.count502, 2147483640 ; 3 uses
  %vector.recur.init = insertelement <8 x i32> poison, i32 %.pre518, i64 7
  %vector.recur.init621 = insertelement <8 x i32> poison, i32 %.pre517, i64 7
  %vector.recur.init623 = insertelement <8 x i32> poison, i32 %.pre516, i64 7
  br label %vector.body619

vector.body619:                                   ; preds = %vector.body619, %vector.ph617
  %index620 = phi i64 [ 0, %vector.ph617 ], [ %index.next627, %vector.body619 ] ; 5 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph617 ], [ %wide.load626, %vector.body619 ]
  %vector.recur622 = phi <8 x i32> [ %vector.recur.init621, %vector.ph617 ], [ %wide.load625, %vector.body619 ]
  %vector.recur624 = phi <8 x i32> [ %vector.recur.init623, %vector.ph617 ], [ %wide.load, %vector.body619 ]
  %i.dy = or disjoint i64 %index620, 1            ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dy
  %wide.load = load <8 x i32>, ptr %i.dz, align 4, !tbaa !9 ; 4 uses
  %i.ea = shufflevector <8 x i32> %vector.recur624, <8 x i32> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.eb = sub nsw <8 x i32> %wide.load, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index620
  store <8 x i32> %i.eb, ptr %i.ec, align 4, !tbaa !9
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dy
  %wide.load625 = load <8 x i32>, ptr %i.ed, align 4, !tbaa !9 ; 4 uses
  %i.ee = shufflevector <8 x i32> %vector.recur622, <8 x i32> %wide.load625, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ef = sub nsw <8 x i32> %wide.load625, %i.ee
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index620
  store <8 x i32> %i.ef, ptr %i.eg, align 4, !tbaa !9
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.dy
  %wide.load626 = load <8 x i32>, ptr %i.eh, align 4, !tbaa !9 ; 4 uses
  %i.ei = shufflevector <8 x i32> %vector.recur, <8 x i32> %wide.load626, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ej = sub nsw <8 x i32> %wide.load626, %i.ei
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %index620
  store <8 x i32> %i.ej, ptr %i.ek, align 4, !tbaa !9
  %index.next627 = add nuw i64 %index620, 8       ; 2 uses
  %i.el = icmp eq i64 %index.next627, %n.vec618
  br i1 %i.el, label %middle.block628, label %vector.body619, !llvm.loop !45

middle.block628:                                  ; preds = %vector.body619
  %vector.recur.extract = extractelement <8 x i32> %wide.load626, i64 7
  %vector.recur.extract629 = extractelement <8 x i32> %wide.load625, i64 7
  %vector.recur.extract630 = extractelement <8 x i32> %wide.load, i64 7
  %cmp.n631 = icmp eq i64 %n.vec618, %wide.trip.count502
  br i1 %cmp.n631, label %._crit_edge, label %.lr.ph477.split.preheader1204

.lr.ph477.split.preheader1204:                    ; preds = %.lr.ph477.split.preheader, %middle.block628
  %.ph1205 = phi i32 [ %.pre518, %.lr.ph477.split.preheader ], [ %vector.recur.extract, %middle.block628 ]
  %.ph1206 = phi i32 [ %.pre517, %.lr.ph477.split.preheader ], [ %vector.recur.extract629, %middle.block628 ]
  %.ph1207 = phi i32 [ %.pre516, %.lr.ph477.split.preheader ], [ %vector.recur.extract630, %middle.block628 ]
  %indvars.iv499.ph = phi i64 [ 0, %.lr.ph477.split.preheader ], [ %n.vec618, %middle.block628 ]
  br label %.lr.ph477.split

.lr.ph475:                                        ; preds = %.lr.ph475.preheader1208, %.lr.ph475
  %indvars.iv494 = phi i64 [ %indvars.iv.next495, %.lr.ph475 ], [ %indvars.iv494.ph, %.lr.ph475.preheader1208 ] ; 7 uses
  %i.em = trunc i64 %indvars.iv494 to i32
  %i.en = mul i32 %.0268, %i.em
  %i.eo = sdiv i32 %i.en, %.fr
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv494
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !9
  %i.eq = trunc i64 %indvars.iv494 to i32
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv494
  %i.es = trunc i64 %indvars.iv494 to i32
  %i.et = mul i32 %.0269, %i.eq
  %i.eu = mul i32 %.0270, %i.es
  %i.ev = insertelement <2 x i32> poison, i32 %i.et, i64 0
  %i.ew = insertelement <2 x i32> %i.ev, i32 %i.eu, i64 1
  %i.ex = sdiv <2 x i32> %i.ew, %i.dg             ; 2 uses
  %i.ey = extractelement <2 x i32> %i.ex, i64 0
  store i32 %i.ey, ptr %i.er, align 4, !tbaa !9
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv494
  %i.fa = extractelement <2 x i32> %i.ex, i64 1
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !9
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %exitcond498.not = icmp eq i64 %indvars.iv.next495, %wide.trip.count497
  br i1 %exitcond498.not, label %.preheader468, label %.lr.ph475, !llvm.loop !46

.lr.ph477.split:                                  ; preds = %.lr.ph477.split.preheader1204, %.lr.ph477.split
  %i.fb = phi i32 [ %i.fn, %.lr.ph477.split ], [ %.ph1205, %.lr.ph477.split.preheader1204 ]
  %i.fc = phi i32 [ %i.fj, %.lr.ph477.split ], [ %.ph1206, %.lr.ph477.split.preheader1204 ]
  %i.fd = phi i32 [ %i.ff, %.lr.ph477.split ], [ %.ph1207, %.lr.ph477.split.preheader1204 ]
  %indvars.iv499 = phi i64 [ %indvars.iv.next500, %.lr.ph477.split ], [ %indvars.iv499.ph, %.lr.ph477.split.preheader1204 ] ; 4 uses
  %indvars.iv.next500 = add nuw nsw i64 %indvars.iv499, 1 ; 5 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next500
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !9  ; 2 uses
  %i.fg = sub nsw i32 %i.ff, %i.fd
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv499
  store i32 %i.fg, ptr %i.fh, align 4, !tbaa !9
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next500
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !9  ; 2 uses
  %i.fk = sub nsw i32 %i.fj, %i.fc
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv499
  store i32 %i.fk, ptr %i.fl, align 4, !tbaa !9
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.next500
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !9  ; 2 uses
  %i.fo = sub nsw i32 %i.fn, %i.fb
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv499
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !9
  %exitcond503.not = icmp eq i64 %indvars.iv.next500, %wide.trip.count502
  br i1 %exitcond503.not, label %._crit_edge, label %.lr.ph477.split, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph477.split, %middle.block628, %.preheader468
  %.lcssa472 = phi i1 [ %i.ch, %.preheader468 ], [ true, %middle.block628 ], [ true, %.lr.ph477.split ] ; 5 uses
  %i.fq = sext i32 %i.dw to i64                   ; 6 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !9
  %i.ft = sub nsw i32 %.0268, %i.fs
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.fq
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !9
  %i.fv = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.fq
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !9
  %i.fx = sub nsw i32 %.0269, %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.fq
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !9
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.fq
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !9
  %i.gb = sub nsw i32 %.0270, %i.ga
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.fq
  store i32 %i.gb, ptr %i.gc, align 4, !tbaa !9
  %i.gd = add i32 %.fr, -1                        ; 2 uses
  %i.ge = icmp sgt i32 %.fr, 1
  br i1 %i.ge, label %.lr.ph482.split.preheader, label %._crit_edge483

.lr.ph482.split.preheader:                        ; preds = %._crit_edge
  %wide.trip.count507 = zext nneg i32 %i.gd to i64 ; 3 uses
  %.pre519 = load i32, ptr %i.cc, align 4, !tbaa !9 ; 2 uses
  %.pre520 = load i32, ptr %i.ce, align 4, !tbaa !9 ; 2 uses
  %.pre521 = load i32, ptr %i.cg, align 4, !tbaa !9 ; 2 uses
  %min.iters.check636 = icmp ult i32 %.fr, 9
  br i1 %min.iters.check636, label %.lr.ph482.split.preheader1201, label %vector.ph637

vector.ph637:                                     ; preds = %.lr.ph482.split.preheader
  %n.vec638 = and i64 %wide.trip.count507, 2147483640 ; 3 uses
  %vector.recur.init641 = insertelement <8 x i32> poison, i32 %.pre521, i64 7
  %vector.recur.init643 = insertelement <8 x i32> poison, i32 %.pre520, i64 7
  %vector.recur.init645 = insertelement <8 x i32> poison, i32 %.pre519, i64 7
  br label %vector.body639

vector.body639:                                   ; preds = %vector.body639, %vector.ph637
  %index640 = phi i64 [ 0, %vector.ph637 ], [ %index.next650, %vector.body639 ] ; 5 uses
  %vector.recur642 = phi <8 x i32> [ %vector.recur.init641, %vector.ph637 ], [ %wide.load649, %vector.body639 ]
  %vector.recur644 = phi <8 x i32> [ %vector.recur.init643, %vector.ph637 ], [ %wide.load648, %vector.body639 ]
  %vector.recur646 = phi <8 x i32> [ %vector.recur.init645, %vector.ph637 ], [ %wide.load647, %vector.body639 ]
  %i.gf = or disjoint i64 %index640, 1            ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.gf
  %wide.load647 = load <8 x i32>, ptr %i.gg, align 4, !tbaa !9 ; 4 uses
  %i.gh = shufflevector <8 x i32> %vector.recur646, <8 x i32> %wide.load647, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.gi = sub nsw <8 x i32> %wide.load647, %i.gh
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %index640
  store <8 x i32> %i.gi, ptr %i.gj, align 4, !tbaa !9
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.gf
  %wide.load648 = load <8 x i32>, ptr %i.gk, align 4, !tbaa !9 ; 4 uses
  %i.gl = shufflevector <8 x i32> %vector.recur644, <8 x i32> %wide.load648, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
end_hunk_0
