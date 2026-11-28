Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bdcSpfd?download=true
inline.NumInlined: 142
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Bdc_SpfdDecomposeTest8:bb.a
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.01219 = phi i32 [ 1000000000, %.lr.ph ], [ %spec.select22, %bb.d ] ; 2 uses
  %i.ae = phi i64 [ undef, %.lr.ph ], [ %spec.select, %bb.d ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val14, i64 %indvars.iv
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ah = xor i64 %i.ad, %i.ag
  %i.ai = call i32 @Bdc_SpfdAdjCost(i64 noundef %i.ah) ; 2 uses
  %i.aj = icmp sgt i32 %.01219, %i.ai
  %spec.select = select i1 %i.aj, i64 %i.ag, i64 %i.ae ; 2 uses
  %spec.select22 = call i32 @llvm.smin.i32(i32 %.01219, i32 %i.ai) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.d, !llvm.loop !84

.critedge:                                        ; preds = %bb.d, %Abc_Clock.exit16
  %.lcssa = phi i64 [ undef, %Abc_Clock.exit16 ], [ %spec.select, %bb.d ]
  %.012.lcssa = phi i32 [ 1000000000, %Abc_Clock.exit16 ], [ %spec.select22, %bb.d ]
  store i64 %.lcssa, ptr %i.c, align 8
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %.012.lcssa) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.al, ptr noundef nonnull %i.c, i32 noundef 6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.am = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #21
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %Abc_Clock.exit18, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.ao = load i64, ptr %0, align 8, !tbaa !29
  %i.ap = mul nsw i64 %i.ao, 1000000
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !30
  %i.as = sdiv i64 %i.ar, 1000
  %i.at = add nsw i64 %i.as, %i.ap
  br label %Abc_Clock.exit18

Abc_Clock.exit18:                                 ; preds = %.critedge, %bb.e
  %.0.i17 = phi i64 [ %i.at, %bb.e ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  %i.au = sub nsw i64 %.0.i17, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36)
  %i.av = sitofp i64 %i.au to double
  %i.aw = fdiv double %i.av, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, double noundef %i.aw)
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !16
  call void @Abc_Show6VarFunc(i64 noundef 0, i64 noundef %i.ax) #21
  %i.ay = load i64, ptr %i.c, align 8, !tbaa !16
  call void @Abc_Show6VarFunc(i64 noundef 0, i64 noundef %i.ay) #21
  %i.az = load i64, ptr %i.c, align 8, !tbaa !16
  %i.ba = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bb = xor i64 %i.ba, %i.az
  call void @Abc_Show6VarFunc(i64 noundef 0, i64 noundef %i.bb) #21
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !16
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !16
  %i.be = xor i64 %i.bd, %i.bc
  store i64 %i.be, ptr %i.c, align 8, !tbaa !16
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !18
  call void @Extra_PrintHex(ptr noundef %i.bf, ptr noundef nonnull %i.c, i32 noundef 6) #21
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

declare void @Abc_Show6VarFunc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Bdc_SpfdDecomposeTest() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = tail call i64 @Aig_ManRandom64(i32 noundef 1) #21 ; 0 uses
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !39
  store i32 67108864, ptr %i.b, align 8, !tbaa !37
  %i.d = tail call noalias dereferenceable_or_null(536870912) ptr @malloc(i64 noundef 536870912) #22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !38
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %Vec_WrdPush.exit
  %i.f = phi ptr [ %i.d, %bb.a ], [ %i.t, %Vec_WrdPush.exit ] ; 6 uses
  %i.g = phi i32 [ 67108864, %bb.a ], [ %i.u, %Vec_WrdPush.exit ] ; 7 uses
  %i.h = phi i32 [ 0, %bb.a ], [ %i.v, %Vec_WrdPush.exit ] ; 3 uses
  %.04980 = phi i32 [ 0, %bb.a ], [ %i.y, %Vec_WrdPush.exit ]
  %i.i = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.j = icmp eq i32 %i.h, %i.g
  br i1 %i.j, label %bb.c, label %Vec_WrdPush.exit

bb.c:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %i.g, 16
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %i.f, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.f, i64 noundef 128) #24
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.m = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i32 %i.g, 1073741823
  %i.o = shl nuw nsw i32 %i.g, 1
  %spec.select.i = select i1 %i.n, i32 %i.o, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.g, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_WrdPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %i.f, null
  %i.p = zext nneg i32 %spec.select.i to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef %i.q) #24
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.q) #22
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %storemerge79 = phi ptr [ %i.m, %bb.f ], [ %i.l, %bb.e ], [ %i.r, %bb.i ], [ %i.s, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ] ; 2 uses
  store ptr %storemerge79, ptr %i.e, align 8, !tbaa !38
  store i32 %spec.select.sink.i, ptr %i.b, align 8, !tbaa !37
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_WrdGrow.exit11.sink.split.i
  %i.t = phi ptr [ %i.f, %bb.b ], [ %i.f, %bb.g ], [ %storemerge79, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.u = phi i32 [ %i.g, %bb.b ], [ %i.g, %bb.g ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.v = add nuw nsw i32 %i.h, 1                  ; 2 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !39
  %i.w = zext nneg i32 %i.h to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.w
  store i64 %i.i, ptr %i.x, align 8, !tbaa !16
  %i.y = add nuw nsw i32 %.04980, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, 67108864
  br i1 %exitcond.not, label %Vec_WrdPush.exit67, label %bb.b, !llvm.loop !85

Vec_WrdPush.exit67:                               ; preds = %Vec_WrdPush.exit
  %i.z = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22 ; 13 uses
  %i.aa = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !16
  %i.ab = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !16
  %i.ad = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !16
  %i.ah = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !16
  %i.aj = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !16
  %i.al = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i64 %i.al, ptr %i.am, align 8, !tbaa !16
  %i.an = tail call i64 @Aig_ManRandom64(i32 noundef 0) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ap = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #21
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %Abc_Clock.exit, label %bb.k

bb.k:                                             ; preds = %Vec_WrdPush.exit67
  %i.ar = load i64, ptr %3, align 8, !tbaa !29
  %.neg74 = mul i64 %i.ar, -1000000
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !30
  %.neg = sdiv i64 %i.at, -1000
  %.neg75 = add i64 %.neg, %.neg74
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %Vec_WrdPush.exit67, %bb.k
  %.0.i.neg = phi i64 [ %.neg75, %bb.k ], [ 1, %Vec_WrdPush.exit67 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.val55 = load i32, ptr %i.c, align 4, !tbaa !39 ; 4 uses
  %i.au = icmp sgt i32 %.val55, 0                 ; 2 uses
  br i1 %i.au, label %.lr.ph86.split.us, label %.critedge

.lr.ph86.split.us:                                ; preds = %Abc_Clock.exit
  %.val59 = load ptr, ptr %i.e, align 8, !tbaa !38
  %wide.trip.count108 = zext nneg i32 %.val55 to i64
  %wide.load = load <2 x i64>, ptr %i.z, align 8, !tbaa !16
  %i.av = trunc <2 x i64> %wide.load to <2 x i32> ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load.1 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !16
  %i.ax = trunc <2 x i64> %wide.load.1 to <2 x i32> ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %wide.load.2 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !16
  %i.az = trunc <2 x i64> %wide.load.2 to <2 x i32> ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %wide.load.3 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !16
  %i.bb = trunc <2 x i64> %wide.load.3 to <2 x i32> ; 2 uses
  br label %vector.ph

vector.ph:                                        ; preds = %.lr.ph86.split.us, %vector.ph
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %vector.ph ], [ 0, %.lr.ph86.split.us ] ; 2 uses
  %.085.us = phi i32 [ %i.bq, %vector.ph ], [ 0, %.lr.ph86.split.us ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.val59, i64 %indvars.iv105
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !16
  %4 = trunc i64 %i.bd to i32
  %5 = insertelement <2 x i32> poison, i32 %4, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> zeroinitializer ; 4 uses
  %7 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.085.us, i64 0
  %8 = and <2 x i32> %6, %i.av
  %i.be = icmp eq <2 x i32> %8, %i.av
  %i.bf = zext <2 x i1> %i.be to <2 x i32>
  %i.bg = add <2 x i32> %7, %i.bf
  %9 = and <2 x i32> %6, %i.ax
  %i.bh = icmp eq <2 x i32> %9, %i.ax
  %i.bi = zext <2 x i1> %i.bh to <2 x i32>
  %i.bj = add <2 x i32> %i.bg, %i.bi
  %10 = and <2 x i32> %6, %i.az
  %i.bk = icmp eq <2 x i32> %10, %i.az
  %i.bl = zext <2 x i1> %i.bk to <2 x i32>
  %i.bm = add <2 x i32> %i.bj, %i.bl
  %11 = and <2 x i32> %6, %i.bb
  %i.bn = icmp eq <2 x i32> %11, %i.bb
  %i.bo = zext <2 x i1> %i.bn to <2 x i32>
  %i.bp = add <2 x i32> %i.bm, %i.bo
  %i.bq = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bp) ; 2 uses
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %.critedge, label %vector.ph, !llvm.loop !86

.critedge:                                        ; preds = %vector.ph, %Abc_Clock.exit
  %.0.lcssa = phi i32 [ 0, %Abc_Clock.exit ], [ %i.bq, %vector.ph ]
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %.0.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.bs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #21
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %Abc_Clock.exit69, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.bu = load i64, ptr %2, align 8, !tbaa !29
  %i.bv = mul nsw i64 %i.bu, 1000000
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !30
  %i.by = sdiv i64 %i.bx, 1000
  %i.bz = add nsw i64 %i.by, %i.bv
  br label %Abc_Clock.exit69

Abc_Clock.exit69:                                 ; preds = %.critedge, %bb.l
  %.0.i68 = phi i64 [ %i.bz, %bb.l ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ca = add i64 %.0.i68, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14)
  %i.cb = sitofp i64 %i.ca to double
  %i.cc = fdiv double %i.cb, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, double noundef %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.cd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #21
  %i.ce = icmp slt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph94, label %bb.m

bb.m:                                             ; preds = %Abc_Clock.exit69
  %i.cf = load i64, ptr %1, align 8, !tbaa !29
  %.neg77 = mul i64 %i.cf, -1000000
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !30
  %.neg76 = sdiv i64 %i.ch, -1000
  %.neg78 = add i64 %.neg76, %.neg77
  br label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.m, %Abc_Clock.exit69
  %.0.i70.neg = phi i64 [ %.neg78, %bb.m ], [ 1, %Abc_Clock.exit69 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br i1 %i.au, label %.lr.ph94.split.us, label %.critedge4

.lr.ph94.split.us:                                ; preds = %.lr.ph94
  %.val56.us = load ptr, ptr %i.e, align 8, !tbaa !38 ; 2 uses
  %wide.trip.count113 = zext nneg i32 %.val55 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val55, 4
  %n.vec = and i64 %wide.trip.count113, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count113
  br label %.lr.ph.us96

.lr.ph.us96:                                      ; preds = %..critedge6_crit_edge.us, %.lr.ph94.split.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %..critedge6_crit_edge.us ], [ 0, %.lr.ph94.split.us ] ; 2 uses
  %.293.us = phi i32 [ %.lcssa, %..critedge6_crit_edge.us ], [ 0, %.lr.ph94.split.us ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv115
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !16 ; 3 uses
  %i.ck = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.us96
  %i.cl = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.293.us, i64 0
  %12 = trunc i64 %i.cj to i32
  %13 = insertelement <2 x i32> poison, i32 %12, i64 0
  %14 = shufflevector <2 x i32> %13, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert135 = insertelement <2 x i32> poison, i32 %i.ck, i64 0
  %broadcast.splat136 = shufflevector <2 x i32> %broadcast.splatinsert135, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph132
  %index138 = phi i64 [ 0, %vector.ph132 ], [ %index.next143, %vector.body137 ] ; 2 uses
  %vec.phi139 = phi <2 x i32> [ %i.cl, %vector.ph132 ], [ %i.cs, %vector.body137 ]
  %vec.phi140 = phi <2 x i32> [ zeroinitializer, %vector.ph132 ], [ %i.ct, %vector.body137 ]
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val56.us, i64 %index138 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load141 = load <2 x i64>, ptr %i.cm, align 8, !tbaa !16
  %wide.load142 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !16
  %15 = trunc <2 x i64> %wide.load141 to <2 x i32>
  %16 = trunc <2 x i64> %wide.load142 to <2 x i32>
  %17 = and <2 x i32> %14, %15
  %18 = and <2 x i32> %14, %16
  %i.co = icmp eq <2 x i32> %17, %broadcast.splat136
  %i.cp = icmp eq <2 x i32> %18, %broadcast.splat136
  %i.cq = zext <2 x i1> %i.co to <2 x i32>
  %i.cr = zext <2 x i1> %i.cp to <2 x i32>
  %i.cs = add <2 x i32> %vec.phi139, %i.cq        ; 2 uses
  %i.ct = add <2 x i32> %vec.phi140, %i.cr        ; 2 uses
  %index.next143 = add nuw i64 %index138, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next143, %n.vec
  br i1 %i.cu, label %middle.block144, label %vector.body137, !llvm.loop !87

middle.block144:                                  ; preds = %vector.body137
  %bin.rdx = add <2 x i32> %i.ct, %i.cs
  %i.cv = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %..critedge6_crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us96, %middle.block144
  %indvars.iv110.ph = phi i64 [ 0, %.lr.ph.us96 ], [ %n.vec, %middle.block144 ]
  %.391.us.ph = phi i32 [ %.293.us, %.lr.ph.us96 ], [ %i.cv, %middle.block144 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %scalar.ph ], [ %indvars.iv110.ph, %scalar.ph.preheader ] ; 2 uses
  %.391.us = phi i32 [ %i.dc, %scalar.ph ], [ %.391.us.ph, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val56.us, i64 %indvars.iv110
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !16
  %i.cy = and i64 %i.cx, %i.cj
  %i.cz = trunc i64 %i.cy to i32
  %i.da = icmp eq i32 %i.cz, %i.ck
  %i.db = zext i1 %i.da to i32
  %i.dc = add nsw i32 %.391.us, %i.db             ; 2 uses
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count113
  br i1 %exitcond114.not, label %..critedge6_crit_edge.us, label %scalar.ph, !llvm.loop !88

..critedge6_crit_edge.us:                         ; preds = %scalar.ph, %middle.block144
  %.lcssa = phi i32 [ %i.cv, %middle.block144 ], [ %i.dc, %scalar.ph ] ; 2 uses
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, 8
  br i1 %exitcond119.not, label %.critedge4, label %.lr.ph.us96, !llvm.loop !89

.critedge4:                                       ; preds = %..critedge6_crit_edge.us, %.lr.ph94
  %.2.lcssa = phi i32 [ 0, %.lr.ph94 ], [ %.lcssa, %..critedge6_crit_edge.us ]
  %i.dd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %.2.lcssa) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #21
  %i.de = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %0) #21
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %Abc_Clock.exit73, label %bb.n

bb.n:                                             ; preds = %.critedge4
  %i.dg = load i64, ptr %0, align 8, !tbaa !29
  %i.dh = mul nsw i64 %i.dg, 1000000
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !30
  %i.dk = sdiv i64 %i.dj, 1000
  %i.dl = add nsw i64 %i.dk, %i.dh
  br label %Abc_Clock.exit73

Abc_Clock.exit73:                                 ; preds = %.critedge4, %bb.n
  %.0.i72 = phi i64 [ %i.dl, %bb.n ], [ -1, %.critedge4 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #21
  %i.dm = add i64 %.0.i72, %.0.i70.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.14)
  %i.dn = sitofp i64 %i.dm to double
  %i.do = fdiv double %i.dn, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.39, double noundef %i.do)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #15 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !27
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #21 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #21
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #21 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #21 ; 0 uses
  call void @free(ptr noundef %i.d) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !18, !noalias !93
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #21, !inline_history !92 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #5

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v8i32(<8 x i32>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind willreturn memory(read) }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"any p2 pointer", !8, i64 0}
!10 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !9, i64 8}
!11 = !{!10, !9, i64 8}
!12 = !{!8, !8, i64 0}
end_hunk_0
