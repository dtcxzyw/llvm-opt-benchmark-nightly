Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/syr2k?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 11520000) #12
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !11   ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #12
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !11   ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp ne i32 %i.k, 0
  %or.cond.i.i25 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i25, label %bb.c, label %polybench_alloc_data.exit27

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i26 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit27:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 9600000) #12
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !11   ; 12 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp eq ptr %i.r, null
  %i.u = icmp ne i32 %i.q, 0
  %or.cond.i.i28 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i28, label %bb.d, label %polybench_alloc_data.exit30

bb.d:                                             ; preds = %polybench_alloc_data.exit27
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i29 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.v) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit30:                      ; preds = %polybench_alloc_data.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.w = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #12
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !11   ; 12 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ne i32 %i.w, 0
  %or.cond.i.i31 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i.i31, label %bb.e, label %polybench_alloc_data.exit33

bb.e:                                             ; preds = %polybench_alloc_data.exit30
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i32 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aa) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit33:                      ; preds = %polybench_alloc_data.exit30
  %i.ab = ptrtoaddr ptr %i.x to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ac = sub i64 %i.s, %i.ab
  %diff.check = icmp ugt i64 %i.ac, -16
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit33
  %indvars.iv49.i = phi i64 [ 0, %polybench_alloc_data.exit33 ], [ %indvars.iv.next50.i, %middle.block ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv49.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv49.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader43.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.af = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ag = trunc <2 x i64> %i.af to <2 x i32>      ; 2 uses
  %i.ah = add <2 x i32> %i.ag, splat (i32 1)
  %i.ai = urem <2 x i32> %i.ah, splat (i32 1200)
  %i.aj = uitofp nneg <2 x i32> %i.ai to <2 x double>
  %i.ak = fdiv <2 x double> %i.aj, splat (double 1.200000e+03)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !9
  %i.am = add <2 x i32> %i.ag, splat (i32 2)
  %i.an = urem <2 x i32> %i.am, splat (i32 1000)
  %i.ao = uitofp nneg <2 x i32> %i.an to <2 x double>
  %i.ap = fdiv <2 x double> %i.ao, splat (double 1.000000e+03)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ar = icmp eq i64 %index.next, 1000
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader43.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader43.i ] ; 4 uses
  %i.as = mul nuw nsw i64 %indvars.iv.i, %indvars.iv49.i
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.av = add i32 %i.at, 2
  %i.aw = add i32 %i.at, 1
  %i.ax = urem i32 %i.av, 1000
  %i.ay = urem i32 %i.aw, 1200
  %i.az = uitofp nneg i32 %i.ax to double
  %i.ba = uitofp nneg i32 %i.ay to double
  %i.bb = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.az, i64 1
  %i.bd = fdiv <2 x double> %i.bc, <double 1.200000e+03, double 1.000000e+03> ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  store double %i.be, ptr %i.au, align 8, !tbaa !9
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  store double %i.bg, ptr %i.bf, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1000
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !15

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader.i.preheader, label %.preheader43.i, !llvm.loop !16

.preheader.i.preheader:                           ; preds = %middle.block
  %i.bh = sub i64 %i.g, %i.m
  %diff.check99 = icmp ugt i64 %i.bh, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block109
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %middle.block109 ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv57.i ; 2 uses
  br i1 %diff.check99, label %scalar.ph100, label %vector.ph101

vector.ph101:                                     ; preds = %.preheader.i
  %broadcast.splatinsert102 = insertelement <2 x i64> poison, i64 %indvars.iv57.i, i64 0
  %broadcast.splat103 = shufflevector <2 x i64> %broadcast.splatinsert102, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph101
  %index105 = phi i64 [ 0, %vector.ph101 ], [ %index.next107, %vector.body104 ] ; 3 uses
  %vec.ind106 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph101 ], [ %vec.ind.next108, %vector.body104 ] ; 2 uses
  %i.bk = mul nuw nsw <2 x i64> %vec.ind106, %broadcast.splat103
  %i.bl = trunc <2 x i64> %i.bk to <2 x i32>
  %i.bm = add <2 x i32> %i.bl, splat (i32 3)
  %i.bn = urem <2 x i32> %i.bm, splat (i32 1200)
  %i.bo = uitofp nneg <2 x i32> %i.bn to <2 x double>
  %i.bp = fdiv <2 x double> %i.bo, splat (double 1.000000e+03) ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index105
  store <2 x double> %i.bp, ptr %i.bq, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index105
  store <2 x double> %i.bp, ptr %i.br, align 8, !tbaa !9
  %index.next107 = add nuw i64 %index105, 2       ; 2 uses
  %vec.ind.next108 = add nuw nsw <2 x i64> %vec.ind106, splat (i64 2)
  %i.bs = icmp eq i64 %index.next107, 1200
  br i1 %i.bs, label %middle.block109, label %vector.body104, !llvm.loop !17

scalar.ph100:                                     ; preds = %.preheader.i, %scalar.ph100
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %scalar.ph100 ], [ 0, %.preheader.i ] ; 4 uses
  %i.bt = mul nuw nsw i64 %indvars.iv53.i, %indvars.iv57.i
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.bu, 3
  %i.bw = urem i32 %i.bv, 1200
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fdiv double %i.bx, 1.000000e+03         ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv53.i
  store double %i.by, ptr %i.bz, align 8, !tbaa !9
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv53.i
  store double %i.by, ptr %i.ca, align 8, !tbaa !9
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 1200
  br i1 %exitcond56.not.i, label %middle.block109, label %scalar.ph100, !llvm.loop !18

middle.block109:                                  ; preds = %vector.body104, %scalar.ph100
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 1200
  br i1 %exitcond60.not.i, label %.preheader36.i.preheader, label %.preheader.i, !llvm.loop !19

.preheader36.i.preheader:                         ; preds = %middle.block109
  %i.cb = insertelement <4 x ptr> poison, ptr %i.r, i64 1
  %i.cc = insertelement <4 x ptr> %i.cb, ptr %i.x, i64 2
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.i.preheader, %bb.f
  %indvars.iv57.i34 = phi i64 [ %indvars.iv.next58.i39, %bb.f ], [ 0, %.preheader36.i.preheader ] ; 5 uses
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %bb.f ], [ 1, %.preheader36.i.preheader ] ; 10 uses
  %i.cd = mul nuw nsw i64 %indvars.iv57.i34, 9608
  %i.ce = getelementptr i8, ptr %i.f, i64 %i.cd
  %scevgep = getelementptr i8, ptr %i.ce, i64 8
  %i.cf = mul nuw nsw i64 %indvars.iv55.i, 8000   ; 2 uses
  %scevgep111 = getelementptr i8, ptr %i.r, i64 %i.cf
  %scevgep112 = getelementptr i8, ptr %i.x, i64 %i.cf
  %i.cg = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i34 ; 5 uses
  %min.iters.check135 = icmp samesign ult i64 %indvars.iv55.i, 4
  br i1 %min.iters.check135, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.preheader36.i
  %n.vec137 = and i64 %indvars.iv55.i, 9223372036854775804 ; 3 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body138 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index139 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %wide.load140 = load <2 x double>, ptr %i.ch, align 8, !tbaa !9
  %wide.load141 = load <2 x double>, ptr %i.ci, align 8, !tbaa !9
  %i.cj = fmul <2 x double> %wide.load140, splat (double 1.200000e+00)
  %i.ck = fmul <2 x double> %wide.load141, splat (double 1.200000e+00)
  store <2 x double> %i.cj, ptr %i.ch, align 8, !tbaa !9
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !9
  %index.next142 = add nuw i64 %index139, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next142, %n.vec137
  br i1 %i.cl, label %middle.block143, label %vector.body138, !llvm.loop !20

middle.block143:                                  ; preds = %vector.body138
  %cmp.n144 = icmp eq i64 %indvars.iv55.i, %n.vec137
  br i1 %cmp.n144, label %.preheader35.i, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.preheader36.i, %middle.block143
  %indvars.iv.i35.ph = phi i64 [ 0, %.preheader36.i ], [ %n.vec137, %middle.block143 ]
  br label %scalar.ph134

.preheader35.i:                                   ; preds = %scalar.ph134, %middle.block143
  %i.cm = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv57.i34 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv57.i34 ; 2 uses
  %i.co = insertelement <4 x ptr> poison, ptr %i.cg, i64 0
  %i.cp = shufflevector <4 x ptr> %i.co, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cq = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.cr = insertelement <4 x ptr> %i.cq, ptr %scevgep112, i64 2
  %i.cs = shufflevector <4 x ptr> %i.cr, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ct = insertelement <4 x ptr> %i.cc, ptr %i.cn, i64 0
  %i.cu = insertelement <4 x ptr> %i.ct, ptr %i.cm, i64 3
  %i.cv = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.cw = shufflevector <4 x ptr> %i.cv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check = icmp samesign ult i64 %indvars.iv55.i, 2
  %i.cx = icmp ult <4 x ptr> %i.cp, %i.cs
  %i.cy = icmp ult <4 x ptr> %i.cu, %i.cw
  %i.cz = and <4 x i1> %i.cx, %i.cy
  %i.da = bitcast <4 x i1> %i.cz to i4
  %.not = icmp eq i4 %i.da, 0
  %n.vec = and i64 %indvars.iv55.i, 9223372036854775806 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv55.i, %n.vec
  br label %.preheader.i38

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %scalar.ph134 ], [ %indvars.iv.i35.ph, %scalar.ph134.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i35 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !9
  %i.dd = fmul double %i.dc, 1.200000e+00
  store double %i.dd, ptr %i.db, align 8, !tbaa !9
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %indvars.iv55.i
  br i1 %exitcond.not.i37, label %.preheader35.i, label %scalar.ph134, !llvm.loop !21

.preheader.i38:                                   ; preds = %.loopexit192, %.preheader35.i
  %indvars.iv51.i = phi i64 [ 0, %.preheader35.i ], [ %indvars.iv.next52.i, %.loopexit192 ] ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51.i ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv51.i ; 2 uses
  %invariant.gep38.i = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv51.i ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv51.i ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %scalar.ph124.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %.preheader.i38
  %i.dg = load double, ptr %i.de, align 8, !tbaa !9, !alias.scope !51
  %broadcast.splatinsert130 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat131 = shufflevector <2 x double> %broadcast.splatinsert130, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = load double, ptr %i.df, align 8, !tbaa !9, !alias.scope !52
  %broadcast.splatinsert128 = insertelement <2 x double> poison, double %i.dh, i64 0
  %broadcast.splat129 = shufflevector <2 x double> %broadcast.splatinsert128, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph125
  %index127 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body126 ] ; 5 uses
  %i.di = or disjoint i64 %index127, 1            ; 2 uses
  %i.dj = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index127
  %i.dk = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %i.di
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !9, !alias.scope !53
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !9, !alias.scope !53
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dm, i64 1
  %i.dp = fmul <2 x double> %i.do, splat (double 1.500000e+00)
  %i.dq = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %index127
  %i.dr = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %i.di
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !9, !alias.scope !54
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !9, !alias.scope !54
  %i.du = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dt, i64 1
  %i.dw = fmul <2 x double> %i.dv, splat (double 1.500000e+00)
  %i.dx = fmul <2 x double> %i.dw, %broadcast.splat129
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %broadcast.splat131, <2 x double> %i.dx)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index127 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dz, align 8, !tbaa !9, !alias.scope !55, !noalias !56
  %i.ea = fadd <2 x double> %wide.load, %i.dy
  store <2 x double> %i.ea, ptr %i.dz, align 8, !tbaa !9, !alias.scope !55, !noalias !56
  %index.next132 = add nuw i64 %index127, 2       ; 2 uses
  %i.eb = icmp eq i64 %index.next132, %n.vec
  br i1 %i.eb, label %middle.block133, label %vector.body126, !llvm.loop !28

middle.block133:                                  ; preds = %vector.body126
  br i1 %cmp.n, label %.loopexit192, label %scalar.ph124.preheader

scalar.ph124.preheader:                           ; preds = %.preheader.i38, %middle.block133
  %indvars.iv46.i.ph = phi i64 [ %n.vec, %middle.block133 ], [ 0, %.preheader.i38 ]
  br label %scalar.ph124

scalar.ph124:                                     ; preds = %scalar.ph124.preheader, %scalar.ph124
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %scalar.ph124 ], [ %indvars.iv46.i.ph, %scalar.ph124.preheader ] ; 4 uses
  %gep.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv46.i
  %i.ec = load double, ptr %gep.i, align 8, !tbaa !9
  %i.ed = fmul double %i.ec, 1.500000e+00
  %i.ee = load double, ptr %i.de, align 8, !tbaa !9
  %gep39.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %indvars.iv46.i
  %i.ef = load double, ptr %gep39.i, align 8, !tbaa !9
  %i.eg = fmul double %i.ef, 1.500000e+00
  %i.eh = load double, ptr %i.df, align 8, !tbaa !9
  %i.ei = fmul double %i.eg, %i.eh
  %i.ej = call double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %i.ei)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv46.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !9
  %i.em = fadd double %i.el, %i.ej
  store double %i.em, ptr %i.ek, align 8, !tbaa !9
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %indvars.iv55.i
  br i1 %exitcond50.not.i, label %.loopexit192, label %scalar.ph124, !llvm.loop !29

.loopexit192:                                     ; preds = %scalar.ph124, %middle.block133
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next52.i, 1000
  br i1 %exitcond54.not.i, label %bb.f, label %.preheader.i38, !llvm.loop !30

bb.f:                                             ; preds = %.loopexit192
  %indvars.iv.next58.i39 = add nuw nsw i64 %indvars.iv57.i34, 1 ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next58.i39, 1200
  br i1 %exitcond62.not.i, label %.preheader36.i40.preheader, label %.preheader36.i, !llvm.loop !31

.preheader36.i40.preheader:                       ; preds = %bb.f
  %i.en = insertelement <4 x ptr> poison, ptr %i.r, i64 1
  %i.eo = insertelement <4 x ptr> %i.en, ptr %i.x, i64 2
  br label %.preheader36.i40

.preheader36.i40:                                 ; preds = %.preheader36.i40.preheader, %bb.g
  %indvars.iv57.i41 = phi i64 [ %indvars.iv.next58.i58, %bb.g ], [ 0, %.preheader36.i40.preheader ] ; 5 uses
  %indvars.iv55.i42 = phi i64 [ %indvars.iv.next56.i59, %bb.g ], [ 1, %.preheader36.i40.preheader ] ; 10 uses
  %i.ep = mul nuw nsw i64 %indvars.iv57.i41, 9608
  %i.eq = getelementptr i8, ptr %i.l, i64 %i.ep
  %scevgep147 = getelementptr i8, ptr %i.eq, i64 8
  %i.er = mul nuw nsw i64 %indvars.iv55.i42, 8000 ; 2 uses
  %scevgep148 = getelementptr i8, ptr %i.r, i64 %i.er
  %scevgep149 = getelementptr i8, ptr %i.x, i64 %i.er
  %i.es = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv57.i41 ; 5 uses
  %min.iters.check181 = icmp samesign ult i64 %indvars.iv55.i42, 4
  br i1 %min.iters.check181, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %.preheader36.i40
  %n.vec183 = and i64 %indvars.iv55.i42, 9223372036854775804 ; 3 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next188, %vector.body184 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index185 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load186 = load <2 x double>, ptr %i.et, align 8, !tbaa !9
  %wide.load187 = load <2 x double>, ptr %i.eu, align 8, !tbaa !9
  %i.ev = fmul <2 x double> %wide.load186, splat (double 1.200000e+00)
  %i.ew = fmul <2 x double> %wide.load187, splat (double 1.200000e+00)
  store <2 x double> %i.ev, ptr %i.et, align 8, !tbaa !9
  store <2 x double> %i.ew, ptr %i.eu, align 8, !tbaa !9
  %index.next188 = add nuw i64 %index185, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next188, %n.vec183
  br i1 %i.ex, label %middle.block189, label %vector.body184, !llvm.loop !32

middle.block189:                                  ; preds = %vector.body184
  %cmp.n190 = icmp eq i64 %indvars.iv55.i42, %n.vec183
  br i1 %cmp.n190, label %.preheader35.i46, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %.preheader36.i40, %middle.block189
  %indvars.iv.i43.ph = phi i64 [ 0, %.preheader36.i40 ], [ %n.vec183, %middle.block189 ]
  br label %scalar.ph180

.preheader35.i46:                                 ; preds = %scalar.ph180, %middle.block189
  %i.ey = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv57.i41 ; 2 uses
  %i.ez = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv57.i41 ; 2 uses
  %i.fa = insertelement <4 x ptr> poison, ptr %i.es, i64 0
  %i.fb = shufflevector <4 x ptr> %i.fa, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fc = insertelement <4 x ptr> poison, ptr %scevgep148, i64 0
  %i.fd = insertelement <4 x ptr> %i.fc, ptr %scevgep149, i64 2
  %i.fe = shufflevector <4 x ptr> %i.fd, <4 x ptr> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ff = insertelement <4 x ptr> %i.eo, ptr %i.ez, i64 0
  %i.fg = insertelement <4 x ptr> %i.ff, ptr %i.ey, i64 3
  %i.fh = insertelement <4 x ptr> poison, ptr %scevgep147, i64 0
  %i.fi = shufflevector <4 x ptr> %i.fh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %min.iters.check166 = icmp samesign ult i64 %indvars.iv55.i42, 2
  %i.fj = icmp ult <4 x ptr> %i.fb, %i.fe
  %i.fk = icmp ult <4 x ptr> %i.fg, %i.fi
  %i.fl = and <4 x i1> %i.fj, %i.fk
  %i.fm = bitcast <4 x i1> %i.fl to i4
  %.not195 = icmp eq i4 %i.fm, 0
  %n.vec168 = and i64 %indvars.iv55.i42, 9223372036854775806 ; 3 uses
  %cmp.n178 = icmp eq i64 %indvars.iv55.i42, %n.vec168
  br label %.preheader.i47

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %scalar.ph180 ], [ %indvars.iv.i43.ph, %scalar.ph180.preheader ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv.i43 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !9
  %i.fp = fmul double %i.fo, 1.200000e+00
  store double %i.fp, ptr %i.fn, align 8, !tbaa !9
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %indvars.iv55.i42
  br i1 %exitcond.not.i45, label %.preheader35.i46, label %scalar.ph180, !llvm.loop !33

.preheader.i47:                                   ; preds = %.loopexit, %.preheader35.i46
  %indvars.iv51.i48 = phi i64 [ 0, %.preheader35.i46 ], [ %indvars.iv.next52.i56, %.loopexit ] ; 5 uses
  %invariant.gep.i49 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51.i48 ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv51.i48 ; 2 uses
  %invariant.gep38.i50 = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv51.i48 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %indvars.iv51.i48 ; 2 uses
  %.not195.not = xor i1 %.not195, true
  %brmerge204 = select i1 %min.iters.check166, i1 true, i1 %.not195.not
  br i1 %brmerge204, label %scalar.ph165.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %.preheader.i47
  %i.fs = load double, ptr %i.fq, align 8, !tbaa !9, !alias.scope !57
  %broadcast.splatinsert171 = insertelement <2 x double> poison, double %i.fs, i64 0
  %broadcast.splat172 = shufflevector <2 x double> %broadcast.splatinsert171, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = load double, ptr %i.fr, align 8, !tbaa !9, !alias.scope !58
  %broadcast.splatinsert173 = insertelement <2 x double> poison, double %i.ft, i64 0
  %broadcast.splat174 = shufflevector <2 x double> %broadcast.splatinsert173, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next176, %vector.body169 ] ; 5 uses
  %i.fu = or disjoint i64 %index170, 1            ; 2 uses
  %i.fv = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i49, i64 %index170
  %i.fw = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i49, i64 %i.fu
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !9, !alias.scope !59
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !9, !alias.scope !59
  %i.fz = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fy, i64 1
  %i.gb = fmul <2 x double> %i.ga, splat (double 1.500000e+00)
  %i.gc = fmul <2 x double> %i.gb, %broadcast.splat172
  %i.gd = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i50, i64 %index170
  %i.ge = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i50, i64 %i.fu
  %i.gf = load double, ptr %i.gd, align 8, !tbaa !9, !alias.scope !60
  %i.gg = load double, ptr %i.ge, align 8, !tbaa !9, !alias.scope !60
  %i.gh = insertelement <2 x double> poison, double %i.gf, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gg, i64 1
  %i.gj = fmul <2 x double> %i.gi, splat (double 1.500000e+00)
  %i.gk = fmul <2 x double> %i.gj, %broadcast.splat174
  %i.gl = fadd <2 x double> %i.gc, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %index170 ; 2 uses
  %wide.load175 = load <2 x double>, ptr %i.gm, align 8, !tbaa !9, !alias.scope !61, !noalias !62
  %i.gn = fadd <2 x double> %wide.load175, %i.gl
  store <2 x double> %i.gn, ptr %i.gm, align 8, !tbaa !9, !alias.scope !61, !noalias !62
  %index.next176 = add nuw i64 %index170, 2       ; 2 uses
  %i.go = icmp eq i64 %index.next176, %n.vec168
  br i1 %i.go, label %middle.block177, label %vector.body169, !llvm.loop !40

middle.block177:                                  ; preds = %vector.body169
  br i1 %cmp.n178, label %.loopexit, label %scalar.ph165.preheader

scalar.ph165.preheader:                           ; preds = %.preheader.i47, %middle.block177
  %indvars.iv46.i51.ph = phi i64 [ %n.vec168, %middle.block177 ], [ 0, %.preheader.i47 ]
  br label %scalar.ph165

scalar.ph165:                                     ; preds = %scalar.ph165.preheader, %scalar.ph165
  %indvars.iv46.i51 = phi i64 [ %indvars.iv.next47.i54, %scalar.ph165 ], [ %indvars.iv46.i51.ph, %scalar.ph165.preheader ] ; 4 uses
  %gep.i52 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i49, i64 %indvars.iv46.i51
  %i.gp = load double, ptr %gep.i52, align 8, !tbaa !9
  %i.gq = fmul double %i.gp, 1.500000e+00
  %i.gr = load double, ptr %i.fq, align 8, !tbaa !9
  %i.gs = fmul double %i.gq, %i.gr
  %gep39.i53 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i50, i64 %indvars.iv46.i51
  %i.gt = load double, ptr %gep39.i53, align 8, !tbaa !9
  %i.gu = fmul double %i.gt, 1.500000e+00
  %i.gv = load double, ptr %i.fr, align 8, !tbaa !9
  %i.gw = fmul double %i.gu, %i.gv
  %i.gx = fadd double %i.gs, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv46.i51 ; 2 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !9
  %i.ha = fadd double %i.gz, %i.gx
  store double %i.ha, ptr %i.gy, align 8, !tbaa !9
  %indvars.iv.next47.i54 = add nuw nsw i64 %indvars.iv46.i51, 1 ; 2 uses
  %exitcond50.not.i55 = icmp eq i64 %indvars.iv.next47.i54, %indvars.iv55.i42
  br i1 %exitcond50.not.i55, label %.loopexit, label %scalar.ph165, !llvm.loop !41

.loopexit:                                        ; preds = %scalar.ph165, %middle.block177
  %indvars.iv.next52.i56 = add nuw nsw i64 %indvars.iv51.i48, 1 ; 2 uses
  %exitcond54.not.i57 = icmp eq i64 %indvars.iv.next52.i56, 1000
  br i1 %exitcond54.not.i57, label %bb.g, label %.preheader.i47, !llvm.loop !42

bb.g:                                             ; preds = %.loopexit
  %indvars.iv.next58.i58 = add nuw nsw i64 %indvars.iv57.i41, 1 ; 2 uses
  %indvars.iv.next56.i59 = add nuw nsw i64 %indvars.iv55.i42, 1
  %exitcond62.not.i60 = icmp eq i64 %indvars.iv.next58.i58, 1200
  br i1 %exitcond62.not.i60, label %.preheader.i61, label %.preheader36.i40, !llvm.loop !43

.preheader.i61:                                   ; preds = %bb.g, %bb.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.i ], [ 0, %bb.g ] ; 4 uses
  %i.hb = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv36.i ; 3 uses
  %i.hc = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv36.i ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.2, %.preheader.i61
  %indvars.iv.i62 = phi i64 [ 0, %.preheader.i61 ], [ %indvars.iv.next.i63.2, %.critedge.i.2 ] ; 6 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.i62
  %i.he = load double, ptr %i.hd, align 8, !tbaa !9 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i62
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !9 ; 2 uses
  %i.hh = fsub double %i.he, %i.hg
  %i.hi = call double @llvm.fabs.f64(double %i.hh)
  %i.hj = fcmp ule double %i.hi, 1.000000e-05
  br i1 %i.hj, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.1, %.critedge.i, %bb.h
  %indvars.iv.i62.lcssa = phi i64 [ %indvars.iv.i62, %bb.h ], [ %indvars.iv.next.i63, %.critedge.i ], [ %indvars.iv.next.i63.1, %.critedge.i.1 ]
  %.lcssa197 = phi double [ %i.he, %bb.h ], [ %i.hp, %.critedge.i ], [ %i.hw, %.critedge.i.1 ]
  %.lcssa = phi double [ %i.hg, %bb.h ], [ %i.hr, %.critedge.i ], [ %i.hy, %.critedge.i.1 ]
  %i.hk = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.hl = trunc nuw nsw i64 %indvars.iv.i62.lcssa to i32 ; 2 uses
  %i.hm = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.hn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hm, ptr noundef nonnull @.str.2, i32 noundef %i.hk, i32 noundef %i.hl, double noundef %.lcssa197, i32 noundef %i.hk, i32 noundef %i.hl, double noundef %.lcssa, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.l

.critedge.i:                                      ; preds = %bb.h
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 3 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.next.i63
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !9 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next.i63
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !9 ; 2 uses
  %i.hs = fsub double %i.hp, %i.hr
  %i.ht = call double @llvm.fabs.f64(double %i.hs)
  %i.hu = fcmp ule double %i.ht, 1.000000e-05
  br i1 %i.hu, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i63.1 = add nuw nsw i64 %indvars.iv.i62, 2 ; 3 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.next.i63.1
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !9 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next.i63.1
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !9 ; 2 uses
  %i.hz = fsub double %i.hw, %i.hy
  %i.ia = call double @llvm.fabs.f64(double %i.hz)
  %i.ib = fcmp ule double %i.ia, 1.000000e-05
  br i1 %i.ib, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i63.2 = add nuw nsw i64 %indvars.iv.i62, 3 ; 2 uses
  %exitcond.not.i64.2 = icmp eq i64 %indvars.iv.next.i63.2, 1200
end_hunk_0
