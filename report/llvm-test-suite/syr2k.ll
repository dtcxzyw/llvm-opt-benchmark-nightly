Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/syr2k?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 11520000) #12
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !10   ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.l = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #12
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !10   ; 8 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = icmp eq ptr %i.m, null
  %i.p = icmp ne i32 %i.l, 0
  %or.cond.i.i25 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i.i25, label %bb.c, label %polybench_alloc_data.exit26

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.r = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.q) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit26:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.s = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 9600000) #12
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !10   ; 12 uses
  %i.u = ptrtoaddr ptr %i.t to i64
  %i.v = icmp eq ptr %i.t, null
  %i.w = icmp ne i32 %i.s, 0
  %or.cond.i.i27 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i27, label %bb.d, label %polybench_alloc_data.exit28

bb.d:                                             ; preds = %polybench_alloc_data.exit26
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.y = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.x) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit28:                      ; preds = %polybench_alloc_data.exit26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.z = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #12
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !10  ; 12 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = icmp ne i32 %i.z, 0
  %or.cond.i.i29 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i29, label %bb.e, label %polybench_alloc_data.exit30

bb.e:                                             ; preds = %polybench_alloc_data.exit28
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ae = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ad) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit30:                      ; preds = %polybench_alloc_data.exit28
  %i.af = ptrtoaddr ptr %i.aa to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ag = sub i64 %i.u, %i.af
  %diff.check = icmp ugt i64 %i.ag, -16
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit30
  %indvars.iv49.i = phi i64 [ 0, %polybench_alloc_data.exit30 ], [ %indvars.iv.next50.i, %middle.block ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv49.i ; 2 uses
  %i.ai = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv49.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader43.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aj = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ak = trunc <2 x i64> %i.aj to <2 x i32>      ; 2 uses
  %i.al = add <2 x i32> %i.ak, splat (i32 1)
  %i.am = urem <2 x i32> %i.al, splat (i32 1200)
  %i.an = uitofp nneg <2 x i32> %i.am to <2 x double>
  %i.ao = fdiv <2 x double> %i.an, splat (double 1.200000e+03)
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index
  store <2 x double> %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = add <2 x i32> %i.ak, splat (i32 2)
  %i.ar = urem <2 x i32> %i.aq, splat (i32 1000)
  %i.as = uitofp nneg <2 x i32> %i.ar to <2 x double>
  %i.at = fdiv <2 x double> %i.as, splat (double 1.000000e+03)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index
  store <2 x double> %i.at, ptr %i.au, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.av = icmp eq i64 %index.next, 1000
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader43.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader43.i ] ; 4 uses
  %i.aw = mul nuw nsw i64 %indvars.iv.i, %indvars.iv49.i
  %i.ax = trunc i64 %i.aw to i32                  ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.az = add i32 %i.ax, 2
  %i.ba = add i32 %i.ax, 1
  %i.bb = urem i32 %i.az, 1000
  %i.bc = urem i32 %i.ba, 1200
  %i.bd = uitofp nneg i32 %i.bb to double
  %i.be = uitofp nneg i32 %i.bc to double
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.bd, i64 1
  %i.bh = fdiv <2 x double> %i.bg, <double 1.200000e+03, double 1.000000e+03> ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  store double %i.bi, ptr %i.ay, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.bk = extractelement <2 x double> %i.bh, i64 1
  store double %i.bk, ptr %i.bj, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1000
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !18

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader.i.preheader, label %.preheader43.i, !llvm.loop !19

.preheader.i.preheader:                           ; preds = %middle.block
  %i.bl = sub i64 %i.g, %i.n
  %diff.check96 = icmp ugt i64 %i.bl, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block106
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %middle.block106 ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.bm = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i ; 2 uses
  %i.bn = getelementptr inbounds nuw [9600 x i8], ptr %i.m, i64 %indvars.iv57.i ; 2 uses
  br i1 %diff.check96, label %scalar.ph97, label %vector.ph98

vector.ph98:                                      ; preds = %.preheader.i
  %broadcast.splatinsert99 = insertelement <2 x i64> poison, i64 %indvars.iv57.i, i64 0
  %broadcast.splat100 = shufflevector <2 x i64> %broadcast.splatinsert99, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph98
  %index102 = phi i64 [ 0, %vector.ph98 ], [ %index.next104, %vector.body101 ] ; 3 uses
  %vec.ind103 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph98 ], [ %vec.ind.next105, %vector.body101 ] ; 2 uses
  %i.bo = mul nuw nsw <2 x i64> %vec.ind103, %broadcast.splat100
  %i.bp = trunc <2 x i64> %i.bo to <2 x i32>
  %i.bq = add <2 x i32> %i.bp, splat (i32 3)
  %i.br = urem <2 x i32> %i.bq, splat (i32 1200)
  %i.bs = uitofp nneg <2 x i32> %i.br to <2 x double>
  %i.bt = fdiv <2 x double> %i.bs, splat (double 1.000000e+03) ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index102
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index102
  store <2 x double> %i.bt, ptr %i.bv, align 8, !tbaa !8
  %index.next104 = add nuw i64 %index102, 2       ; 2 uses
  %vec.ind.next105 = add nuw nsw <2 x i64> %vec.ind103, splat (i64 2)
  %i.bw = icmp eq i64 %index.next104, 1200
  br i1 %i.bw, label %middle.block106, label %vector.body101, !llvm.loop !20

scalar.ph97:                                      ; preds = %.preheader.i, %scalar.ph97
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %scalar.ph97 ], [ 0, %.preheader.i ] ; 4 uses
  %i.bx = mul nuw nsw i64 %indvars.iv53.i, %indvars.iv57.i
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %i.by, 3
  %i.ca = urem i32 %i.bz, 1200
  %i.cb = uitofp nneg i32 %i.ca to double
  %i.cc = fdiv double %i.cb, 1.000000e+03         ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv53.i
  store double %i.cc, ptr %i.cd, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv53.i
  store double %i.cc, ptr %i.ce, align 8, !tbaa !8
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 1200
  br i1 %exitcond56.not.i, label %middle.block106, label %scalar.ph97, !llvm.loop !21

middle.block106:                                  ; preds = %vector.body101, %scalar.ph97
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 1200
  br i1 %exitcond60.not.i, label %.preheader36.i.preheader, label %.preheader.i, !llvm.loop !22

.preheader36.i.preheader:                         ; preds = %middle.block106
  %i.cf = insertelement <4 x ptr> poison, ptr %i.t, i64 1
  %i.cg = insertelement <4 x ptr> %i.cf, ptr %i.aa, i64 2
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.i.preheader, %bb.f
  %indvars.iv57.i31 = phi i64 [ %indvars.iv.next58.i36, %bb.f ], [ 0, %.preheader36.i.preheader ] ; 6 uses
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %bb.f ], [ 1, %.preheader36.i.preheader ] ; 9 uses
  %i.ch = mul nuw nsw i64 %indvars.iv57.i31, 9608
  %i.ci = getelementptr i8, ptr %i.f, i64 %i.ch
  %scevgep = getelementptr i8, ptr %i.ci, i64 8
  %i.cj = mul nuw nsw i64 %indvars.iv57.i31, 8000
  %2 = add nuw i64 %i.cj, 8000                    ; 2 uses
  %scevgep108 = getelementptr i8, ptr %i.t, i64 %2
  %scevgep109 = getelementptr i8, ptr %i.aa, i64 %2
  %i.ck = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i31 ; 5 uses
  %min.iters.check132 = icmp samesign ult i64 %indvars.iv55.i, 4
  br i1 %min.iters.check132, label %scalar.ph131.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %.preheader36.i
  %n.vec134 = and i64 %indvars.iv55.i, 9223372036854775804 ; 3 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index136 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16 ; 2 uses
  %wide.load137 = load <2 x double>, ptr %i.cl, align 8, !tbaa !8
  %wide.load138 = load <2 x double>, ptr %i.cm, align 8, !tbaa !8
  %i.cn = fmul <2 x double> %wide.load137, splat (double 1.200000e+00)
  %i.co = fmul <2 x double> %wide.load138, splat (double 1.200000e+00)
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !8
  store <2 x double> %i.co, ptr %i.cm, align 8, !tbaa !8
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.cp, label %middle.block140, label %vector.body135, !llvm.loop !23

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %indvars.iv55.i, %n.vec134
  br i1 %cmp.n141, label %.preheader35.i, label %scalar.ph131.preheader

scalar.ph131.preheader:                           ; preds = %.preheader36.i, %middle.block140
  %indvars.iv.i32.ph = phi i64 [ 0, %.preheader36.i ], [ %n.vec134, %middle.block140 ]
  br label %scalar.ph131

.preheader35.i:                                   ; preds = %scalar.ph131, %middle.block140
  %i.cq = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv57.i31 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv57.i31 ; 2 uses
  %i.cs = insertelement <4 x ptr> poison, ptr %i.ck, i64 0
  %i.ct = shufflevector <4 x ptr> %i.cs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cu = insertelement <4 x ptr> poison, ptr %scevgep108, i64 0
  %i.cv = insertelement <4 x ptr> %i.cu, ptr %scevgep109, i64 2
  %i.cw = shufflevector <4 x ptr> %i.cv, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cx = insertelement <4 x ptr> %i.cg, ptr %i.cr, i64 0
  %i.cy = insertelement <4 x ptr> %i.cx, ptr %i.cq, i64 3
  %i.cz = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.da = shufflevector <4 x ptr> %i.cz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %indvars.iv55.i, 2
  %i.db = icmp ult <4 x ptr> %i.ct, %i.cw
  %i.dc = icmp ult <4 x ptr> %i.cy, %i.da
  %i.dd = and <4 x i1> %i.db, %i.dc
  %i.de = bitcast <4 x i1> %i.dd to i4
  %.not = icmp eq i4 %i.de, 0
  %n.vec = and i64 %indvars.iv55.i, 9223372036854775806 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv55.i, %n.vec
  br label %.preheader.i35

scalar.ph131:                                     ; preds = %scalar.ph131.preheader, %scalar.ph131
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %scalar.ph131 ], [ %indvars.iv.i32.ph, %scalar.ph131.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i32 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !8
  %i.dh = fmul double %i.dg, 1.200000e+00
  store double %i.dh, ptr %i.df, align 8, !tbaa !8
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %indvars.iv55.i
  br i1 %exitcond.not.i34, label %.preheader35.i, label %scalar.ph131, !llvm.loop !24

.preheader.i35:                                   ; preds = %.loopexit189, %.preheader35.i
  %indvars.iv51.i = phi i64 [ 0, %.preheader35.i ], [ %indvars.iv.next52.i, %.loopexit189 ] ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv51.i ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv51.i ; 2 uses
  %invariant.gep38.i = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51.i ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv51.i ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %scalar.ph121.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %.preheader.i35
  %i.dk = load double, ptr %i.di, align 8, !tbaa !8, !alias.scope !25
  %broadcast.splatinsert127 = insertelement <2 x double> poison, double %i.dk, i64 0
  %broadcast.splat128 = shufflevector <2 x double> %broadcast.splatinsert127, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !8, !alias.scope !28
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.dl, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph122
  %index124 = phi i64 [ 0, %vector.ph122 ], [ %index.next129, %vector.body123 ] ; 5 uses
  %i.dm = or disjoint i64 %index124, 1            ; 2 uses
  %i.dn = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index124
  %i.do = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %i.dm
  %i.dp = load double, ptr %i.dn, align 8, !tbaa !8, !alias.scope !30
  %i.dq = load double, ptr %i.do, align 8, !tbaa !8, !alias.scope !30
  %i.dr = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.dq, i64 1
  %i.dt = fmul <2 x double> %i.ds, splat (double 1.500000e+00)
  %i.du = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %index124
  %i.dv = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %i.dm
  %i.dw = load double, ptr %i.du, align 8, !tbaa !8, !alias.scope !32
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !8, !alias.scope !32
  %i.dy = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dx, i64 1
  %i.ea = fmul <2 x double> %i.dz, splat (double 1.500000e+00)
  %i.eb = fmul <2 x double> %i.ea, %broadcast.splat126
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %broadcast.splat128, <2 x double> %i.eb)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %index124 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ed, align 8, !tbaa !8, !alias.scope !34, !noalias !36
  %i.ee = fadd <2 x double> %wide.load, %i.ec
  store <2 x double> %i.ee, ptr %i.ed, align 8, !tbaa !8, !alias.scope !34, !noalias !36
  %index.next129 = add nuw i64 %index124, 2       ; 2 uses
  %i.ef = icmp eq i64 %index.next129, %n.vec
  br i1 %i.ef, label %middle.block130, label %vector.body123, !llvm.loop !37

middle.block130:                                  ; preds = %vector.body123
  br i1 %cmp.n, label %.loopexit189, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.preheader.i35, %middle.block130
  %indvars.iv46.i.ph = phi i64 [ %n.vec, %middle.block130 ], [ 0, %.preheader.i35 ]
  br label %scalar.ph121

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %scalar.ph121 ], [ %indvars.iv46.i.ph, %scalar.ph121.preheader ] ; 4 uses
  %gep.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv46.i
  %i.eg = load double, ptr %gep.i, align 8, !tbaa !8
  %i.eh = fmul double %i.eg, 1.500000e+00
  %i.ei = load double, ptr %i.di, align 8, !tbaa !8
  %gep39.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %indvars.iv46.i
  %i.ej = load double, ptr %gep39.i, align 8, !tbaa !8
  %i.ek = fmul double %i.ej, 1.500000e+00
  %i.el = load double, ptr %i.dj, align 8, !tbaa !8
  %i.em = fmul double %i.ek, %i.el
  %i.en = call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double %i.em)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv46.i ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !8
  %i.eq = fadd double %i.ep, %i.en
  store double %i.eq, ptr %i.eo, align 8, !tbaa !8
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %indvars.iv55.i
  br i1 %exitcond50.not.i, label %.loopexit189, label %scalar.ph121, !llvm.loop !38

.loopexit189:                                     ; preds = %scalar.ph121, %middle.block130
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next52.i, 1000
  br i1 %exitcond54.not.i, label %bb.f, label %.preheader.i35, !llvm.loop !39

bb.f:                                             ; preds = %.loopexit189
  %indvars.iv.next58.i36 = add nuw nsw i64 %indvars.iv57.i31, 1 ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next58.i36, 1200
  br i1 %exitcond62.not.i, label %.preheader36.i37.preheader, label %.preheader36.i, !llvm.loop !40

.preheader36.i37.preheader:                       ; preds = %bb.f
  %i.er = insertelement <4 x ptr> poison, ptr %i.t, i64 1
  %i.es = insertelement <4 x ptr> %i.er, ptr %i.aa, i64 2
  br label %.preheader36.i37

.preheader36.i37:                                 ; preds = %.preheader36.i37.preheader, %bb.g
  %indvars.iv57.i38 = phi i64 [ %indvars.iv.next58.i55, %bb.g ], [ 0, %.preheader36.i37.preheader ] ; 6 uses
  %indvars.iv55.i39 = phi i64 [ %indvars.iv.next56.i56, %bb.g ], [ 1, %.preheader36.i37.preheader ] ; 9 uses
  %i.et = mul nuw nsw i64 %indvars.iv57.i38, 9608
  %i.eu = getelementptr i8, ptr %i.m, i64 %i.et
  %scevgep144 = getelementptr i8, ptr %i.eu, i64 8
  %i.ev = mul nuw nsw i64 %indvars.iv57.i38, 8000
  %3 = add nuw i64 %i.ev, 8000                    ; 2 uses
  %scevgep145 = getelementptr i8, ptr %i.t, i64 %3
  %scevgep146 = getelementptr i8, ptr %i.aa, i64 %3
  %i.ew = getelementptr inbounds nuw [9600 x i8], ptr %i.m, i64 %indvars.iv57.i38 ; 5 uses
  %min.iters.check178 = icmp samesign ult i64 %indvars.iv55.i39, 4
  br i1 %min.iters.check178, label %scalar.ph177.preheader, label %vector.ph179

vector.ph179:                                     ; preds = %.preheader36.i37
  %n.vec180 = and i64 %indvars.iv55.i39, 9223372036854775804 ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next185, %vector.body181 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index182 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load183 = load <2 x double>, ptr %i.ex, align 8, !tbaa !8
  %wide.load184 = load <2 x double>, ptr %i.ey, align 8, !tbaa !8
  %i.ez = fmul <2 x double> %wide.load183, splat (double 1.200000e+00)
  %i.fa = fmul <2 x double> %wide.load184, splat (double 1.200000e+00)
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !8
  store <2 x double> %i.fa, ptr %i.ey, align 8, !tbaa !8
  %index.next185 = add nuw i64 %index182, 4       ; 2 uses
  %i.fb = icmp eq i64 %index.next185, %n.vec180
  br i1 %i.fb, label %middle.block186, label %vector.body181, !llvm.loop !41

middle.block186:                                  ; preds = %vector.body181
  %cmp.n187 = icmp eq i64 %indvars.iv55.i39, %n.vec180
  br i1 %cmp.n187, label %.preheader35.i43, label %scalar.ph177.preheader

scalar.ph177.preheader:                           ; preds = %.preheader36.i37, %middle.block186
  %indvars.iv.i40.ph = phi i64 [ 0, %.preheader36.i37 ], [ %n.vec180, %middle.block186 ]
  br label %scalar.ph177

.preheader35.i43:                                 ; preds = %scalar.ph177, %middle.block186
  %i.fc = getelementptr inbounds nuw [8000 x i8], ptr %i.aa, i64 %indvars.iv57.i38 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8000 x i8], ptr %i.t, i64 %indvars.iv57.i38 ; 2 uses
  %i.fe = insertelement <4 x ptr> poison, ptr %i.ew, i64 0
  %i.ff = shufflevector <4 x ptr> %i.fe, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fg = insertelement <4 x ptr> poison, ptr %scevgep145, i64 0
  %i.fh = insertelement <4 x ptr> %i.fg, ptr %scevgep146, i64 2
  %i.fi = shufflevector <4 x ptr> %i.fh, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.fj = insertelement <4 x ptr> %i.es, ptr %i.fd, i64 0
  %i.fk = insertelement <4 x ptr> %i.fj, ptr %i.fc, i64 3
  %i.fl = insertelement <4 x ptr> poison, ptr %scevgep144, i64 0
  %i.fm = shufflevector <4 x ptr> %i.fl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check163 = icmp samesign ult i64 %indvars.iv55.i39, 2
  %i.fn = icmp ult <4 x ptr> %i.ff, %i.fi
  %i.fo = icmp ult <4 x ptr> %i.fk, %i.fm
  %i.fp = and <4 x i1> %i.fn, %i.fo
  %i.fq = bitcast <4 x i1> %i.fp to i4
  %.not192 = icmp eq i4 %i.fq, 0
  %n.vec165 = and i64 %indvars.iv55.i39, 9223372036854775806 ; 3 uses
  %cmp.n175 = icmp eq i64 %indvars.iv55.i39, %n.vec165
  br label %.preheader.i44

scalar.ph177:                                     ; preds = %scalar.ph177.preheader, %scalar.ph177
  %indvars.iv.i40 = phi i64 [ %indvars.iv.next.i41, %scalar.ph177 ], [ %indvars.iv.i40.ph, %scalar.ph177.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv.i40 ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !8
  %i.ft = fmul double %i.fs, 1.200000e+00
  store double %i.ft, ptr %i.fr, align 8, !tbaa !8
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i40, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %indvars.iv55.i39
  br i1 %exitcond.not.i42, label %.preheader35.i43, label %scalar.ph177, !llvm.loop !42

.preheader.i44:                                   ; preds = %.loopexit, %.preheader35.i43
  %indvars.iv51.i45 = phi i64 [ 0, %.preheader35.i43 ], [ %indvars.iv.next52.i53, %.loopexit ] ; 5 uses
  %invariant.gep.i46 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv51.i45 ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %indvars.iv51.i45 ; 2 uses
  %invariant.gep38.i47 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv51.i45 ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv51.i45 ; 2 uses
  %.not192.not = xor i1 %.not192, true
  %brmerge201 = select i1 %min.iters.check163, i1 true, i1 %.not192.not
  br i1 %brmerge201, label %scalar.ph162.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %.preheader.i44
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !8, !alias.scope !43
  %broadcast.splatinsert168 = insertelement <2 x double> poison, double %i.fw, i64 0
  %broadcast.splat169 = shufflevector <2 x double> %broadcast.splatinsert168, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !8, !alias.scope !46
  %broadcast.splatinsert170 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat171 = shufflevector <2 x double> %broadcast.splatinsert170, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body166

vector.body166:                                   ; preds = %vector.body166, %vector.ph164
  %index167 = phi i64 [ 0, %vector.ph164 ], [ %index.next173, %vector.body166 ] ; 5 uses
  %i.fy = or disjoint i64 %index167, 1            ; 2 uses
  %i.fz = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i46, i64 %index167
  %i.ga = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i46, i64 %i.fy
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !8, !alias.scope !48
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !8, !alias.scope !48
  %i.gd = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.gc, i64 1
  %i.gf = fmul <2 x double> %i.ge, splat (double 1.500000e+00)
  %i.gg = fmul <2 x double> %i.gf, %broadcast.splat169
  %i.gh = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i47, i64 %index167
  %i.gi = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i47, i64 %i.fy
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !8, !alias.scope !50
  %i.gk = load double, ptr %i.gi, align 8, !tbaa !8, !alias.scope !50
  %i.gl = insertelement <2 x double> poison, double %i.gj, i64 0
  %i.gm = insertelement <2 x double> %i.gl, double %i.gk, i64 1
  %i.gn = fmul <2 x double> %i.gm, splat (double 1.500000e+00)
  %i.go = fmul <2 x double> %i.gn, %broadcast.splat171
  %i.gp = fadd <2 x double> %i.gg, %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %index167 ; 2 uses
  %wide.load172 = load <2 x double>, ptr %i.gq, align 8, !tbaa !8, !alias.scope !52, !noalias !54
  %i.gr = fadd <2 x double> %wide.load172, %i.gp
  store <2 x double> %i.gr, ptr %i.gq, align 8, !tbaa !8, !alias.scope !52, !noalias !54
  %index.next173 = add nuw i64 %index167, 2       ; 2 uses
  %i.gs = icmp eq i64 %index.next173, %n.vec165
  br i1 %i.gs, label %middle.block174, label %vector.body166, !llvm.loop !55

middle.block174:                                  ; preds = %vector.body166
  br i1 %cmp.n175, label %.loopexit, label %scalar.ph162.preheader

scalar.ph162.preheader:                           ; preds = %.preheader.i44, %middle.block174
  %indvars.iv46.i48.ph = phi i64 [ %n.vec165, %middle.block174 ], [ 0, %.preheader.i44 ]
  br label %scalar.ph162

scalar.ph162:                                     ; preds = %scalar.ph162.preheader, %scalar.ph162
  %indvars.iv46.i48 = phi i64 [ %indvars.iv.next47.i51, %scalar.ph162 ], [ %indvars.iv46.i48.ph, %scalar.ph162.preheader ] ; 4 uses
  %gep.i49 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i46, i64 %indvars.iv46.i48
  %i.gt = load double, ptr %gep.i49, align 8, !tbaa !8
  %i.gu = fmul double %i.gt, 1.500000e+00
  %i.gv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.gw = fmul double %i.gu, %i.gv
  %gep39.i50 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i47, i64 %indvars.iv46.i48
  %i.gx = load double, ptr %gep39.i50, align 8, !tbaa !8
  %i.gy = fmul double %i.gx, 1.500000e+00
  %i.gz = load double, ptr %i.fv, align 8, !tbaa !8
  %i.ha = fmul double %i.gy, %i.gz
  %i.hb = fadd double %i.gw, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %indvars.iv46.i48 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !8
  %i.he = fadd double %i.hd, %i.hb
  store double %i.he, ptr %i.hc, align 8, !tbaa !8
  %indvars.iv.next47.i51 = add nuw nsw i64 %indvars.iv46.i48, 1 ; 2 uses
  %exitcond50.not.i52 = icmp eq i64 %indvars.iv.next47.i51, %indvars.iv55.i39
  br i1 %exitcond50.not.i52, label %.loopexit, label %scalar.ph162, !llvm.loop !56

.loopexit:                                        ; preds = %scalar.ph162, %middle.block174
  %indvars.iv.next52.i53 = add nuw nsw i64 %indvars.iv51.i45, 1 ; 2 uses
  %exitcond54.not.i54 = icmp eq i64 %indvars.iv.next52.i53, 1000
  br i1 %exitcond54.not.i54, label %bb.g, label %.preheader.i44, !llvm.loop !57

bb.g:                                             ; preds = %.loopexit
  %indvars.iv.next58.i55 = add nuw nsw i64 %indvars.iv57.i38, 1 ; 2 uses
  %indvars.iv.next56.i56 = add nuw nsw i64 %indvars.iv55.i39, 1
  %exitcond62.not.i57 = icmp eq i64 %indvars.iv.next58.i55, 1200
  br i1 %exitcond62.not.i57, label %.preheader.i58, label %.preheader36.i37, !llvm.loop !58

.preheader.i58:                                   ; preds = %bb.g, %bb.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.i ], [ 0, %bb.g ] ; 4 uses
  %i.hf = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv36.i ; 3 uses
  %i.hg = getelementptr inbounds nuw [9600 x i8], ptr %i.m, i64 %indvars.iv36.i ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.2, %.preheader.i58
  %indvars.iv.i59 = phi i64 [ 0, %.preheader.i58 ], [ %indvars.iv.next.i60.2, %.critedge.i.2 ] ; 6 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.i59
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i59
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !8 ; 2 uses
  %i.hl = fsub double %i.hi, %i.hk
  %i.hm = call double @llvm.fabs.f64(double %i.hl)
  %i.hn = fcmp ule double %i.hm, 1.000000e-05
  br i1 %i.hn, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.1, %.critedge.i, %bb.h
  %indvars.iv.i59.lcssa = phi i64 [ %indvars.iv.i59, %bb.h ], [ %indvars.iv.next.i60, %.critedge.i ], [ %indvars.iv.next.i60.1, %.critedge.i.1 ]
  %.lcssa194 = phi double [ %i.hi, %bb.h ], [ %i.ht, %.critedge.i ], [ %i.ia, %.critedge.i.1 ]
  %.lcssa = phi double [ %i.hk, %bb.h ], [ %i.hv, %.critedge.i ], [ %i.ic, %.critedge.i.1 ]
  %i.ho = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.hp = trunc nuw nsw i64 %indvars.iv.i59.lcssa to i32 ; 2 uses
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.hr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hq, ptr noundef nonnull @.str.2, i32 noundef %i.ho, i32 noundef %i.hp, double noundef %.lcssa194, i32 noundef %i.ho, i32 noundef %i.hp, double noundef %.lcssa, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.l

.critedge.i:                                      ; preds = %bb.h
  %indvars.iv.next.i60 = add nuw nsw i64 %indvars.iv.i59, 1 ; 3 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next.i60
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !8 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i60
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !8 ; 2 uses
  %i.hw = fsub double %i.ht, %i.hv
  %i.hx = call double @llvm.fabs.f64(double %i.hw)
  %i.hy = fcmp ule double %i.hx, 1.000000e-05
  br i1 %i.hy, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i60.1 = add nuw nsw i64 %indvars.iv.i59, 2 ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv.next.i60.1
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !8 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.next.i60.1
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !8 ; 2 uses
  %i.id = fsub double %i.ia, %i.ic
  %i.ie = call double @llvm.fabs.f64(double %i.id)
  %i.if = fcmp ule double %i.ie, 1.000000e-05
  br i1 %i.if, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i60.2 = add nuw nsw i64 %indvars.iv.i59, 3 ; 2 uses
  %exitcond.not.i61.2 = icmp eq i64 %indvars.iv.next.i60.2, 1200
end_hunk_0
