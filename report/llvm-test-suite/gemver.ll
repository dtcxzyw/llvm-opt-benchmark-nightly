inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@polybench_alloc_data:bb.a

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store ptr null, ptr %i.i, align 8, !tbaa !10
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.i, i64 noundef 4096, i64 noundef 32000000) #11
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !10   ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store ptr null, ptr %i.h, align 8, !tbaa !10
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.h, i64 noundef 4096, i64 noundef 16000) #11
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !10   ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i30 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i.i30, label %bb.c, label %polybench_alloc_data.exit31

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.u = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.t) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit31:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %i.v = call i32 @posix_memalign(ptr noundef nonnull %i.g, i64 noundef 4096, i64 noundef 16000) #11
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !10   ; 7 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = icmp ne i32 %i.v, 0
  %or.cond.i.i32 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i.i32, label %bb.d, label %polybench_alloc_data.exit33

bb.d:                                             ; preds = %polybench_alloc_data.exit31
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.aa = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.z) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit33:                      ; preds = %polybench_alloc_data.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store ptr null, ptr %i.f, align 8, !tbaa !10
  %i.ab = call i32 @posix_memalign(ptr noundef nonnull %i.f, i64 noundef 4096, i64 noundef 16000) #11
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !10  ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  %i.ae = icmp ne i32 %i.ab, 0
  %or.cond.i.i34 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i.i34, label %bb.e, label %polybench_alloc_data.exit35

bb.e:                                             ; preds = %polybench_alloc_data.exit33
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ag = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.af) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit35:                      ; preds = %polybench_alloc_data.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8, !tbaa !10
  %i.ah = call i32 @posix_memalign(ptr noundef nonnull %i.e, i64 noundef 4096, i64 noundef 16000) #11
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !10  ; 7 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = icmp ne i32 %i.ah, 0
  %or.cond.i.i36 = select i1 %i.aj, i1 true, i1 %i.ak
  br i1 %or.cond.i.i36, label %bb.f, label %polybench_alloc_data.exit37

bb.f:                                             ; preds = %polybench_alloc_data.exit35
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.am = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.al) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit37:                      ; preds = %polybench_alloc_data.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.an = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 16000) #11
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !10  ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = icmp ne i32 %i.an, 0
  %or.cond.i.i38 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i.i38, label %bb.g, label %polybench_alloc_data.exit39

bb.g:                                             ; preds = %polybench_alloc_data.exit37
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.as = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ar) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit39:                      ; preds = %polybench_alloc_data.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.at = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 16000) #11
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !10  ; 14 uses
  %i.av = icmp eq ptr %i.au, null
  %i.aw = icmp ne i32 %i.at, 0
  %or.cond.i.i40 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i.i40, label %bb.h, label %polybench_alloc_data.exit41

bb.h:                                             ; preds = %polybench_alloc_data.exit39
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ay = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ax) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit41:                      ; preds = %polybench_alloc_data.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.az = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 16000) #11
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !10  ; 5 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = icmp ne i32 %i.az, 0
  %or.cond.i.i42 = select i1 %i.bb, i1 true, i1 %i.bc
  br i1 %or.cond.i.i42, label %bb.i, label %polybench_alloc_data.exit43

bb.i:                                             ; preds = %polybench_alloc_data.exit41
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.be = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bd) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit43:                      ; preds = %polybench_alloc_data.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.bf = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 16000) #11
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !10  ; 11 uses
  %i.bh = icmp eq ptr %i.bg, null
  %i.bi = icmp ne i32 %i.bf, 0
  %or.cond.i.i44 = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.i.i44, label %bb.j, label %polybench_alloc_data.exit45

bb.j:                                             ; preds = %polybench_alloc_data.exit43
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bk = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bj) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit45:                      ; preds = %polybench_alloc_data.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %vector.ph

.preheader69.i.preheader:                         ; preds = %middle.block
  %scevgep = getelementptr i8, ptr %i.k, i64 32000000
  %i.bl = insertelement <4 x ptr> poison, ptr %i.q, i64 0
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %i.w, i64 1
  %i.bn = insertelement <4 x ptr> %i.bm, ptr %i.ac, i64 2
  %i.bo = insertelement <4 x ptr> %i.bn, ptr %i.ai, i64 3 ; 2 uses
  %i.bp = getelementptr i8, <4 x ptr> %i.bo, i64 16000
  %i.bq = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.br = shufflevector <4 x ptr> %i.bq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bs = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bt = shufflevector <4 x ptr> %i.bs, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bu = icmp ult <4 x ptr> %i.br, %i.bp
  %i.bv = icmp ult <4 x ptr> %i.bo, %i.bt
  %i.bw = and <4 x i1> %i.bu, %i.bv
  %i.bx = bitcast <4 x i1> %i.bw to i4
  %.not = icmp eq i4 %i.bx, 0
  br label %.preheader69.i

vector.ph:                                        ; preds = %middle.block, %polybench_alloc_data.exit45
  %indvars.iv47.i = phi i64 [ 0, %polybench_alloc_data.exit45 ], [ %indvars.iv.next48.i, %middle.block ] ; 12 uses
  %i.by = trunc nuw nsw i64 %indvars.iv47.i to i32
  %i.bz = uitofp nneg i32 %i.by to double
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv47.i
  store double %i.bz, ptr %i.ca, align 8, !tbaa !8
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 3 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv.next48.i to i32
  %i.cc = uitofp nneg i32 %i.cb to double
  %i.cd = fdiv double %i.cc, 2.000000e+03         ; 5 uses
  %i.ce = fmul nnan double %i.cd, 5.000000e-01
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv47.i
  store double %i.ce, ptr %i.cf, align 8, !tbaa !8
  %i.cg = fmul nnan double %i.cd, 2.500000e-01
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv47.i
  store double %i.cg, ptr %i.ch, align 8, !tbaa !8
  %2 = fdiv double %i.cd, 6.000000e+00
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv47.i
  store double %2, ptr %i.ci, align 8, !tbaa !8
  %3 = fmul nnan double %i.cd, 1.250000e-01
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv47.i
  store double %3, ptr %4, align 8, !tbaa !8
  %5 = fdiv double %i.cd, 9.000000e+00
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv47.i
  store double %5, ptr %i.cj, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv47.i
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv47.i
  store double 0.000000e+00, ptr %i.cl, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv47.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv47.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.cn = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.co = trunc nuw nsw <2 x i64> %i.cn to <2 x i32>
  %i.cp = urem <2 x i32> %i.co, splat (i32 2000)
  %i.cq = uitofp nneg <2 x i32> %i.cp to <2 x double>
  %i.cr = fdiv <2 x double> %i.cq, splat (double 2.000000e+03)
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %index
  store <2 x double> %i.cr, ptr %i.cs, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ct = icmp eq i64 %index.next, 2000
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next48.i, 2000
  br i1 %exitcond50.not.i, label %.preheader69.i.preheader, label %vector.ph, !llvm.loop !18

.preheader69.i:                                   ; preds = %.preheader69.i.preheader, %middle.block86
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %middle.block86 ], [ 0, %.preheader69.i.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv79.i ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv79.i ; 3 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv79.i ; 3 uses
  br i1 %.not, label %vector.ph73, label %scalar.ph

vector.ph73:                                      ; preds = %.preheader69.i
  %i.cx = load double, ptr %i.cv, align 8, !tbaa !8, !alias.scope !19
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %i.cx, i64 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = load double, ptr %i.cw, align 8, !tbaa !8, !alias.scope !22
  %broadcast.splatinsert83 = insertelement <2 x double> poison, double %i.cy, i64 0
  %broadcast.splat84 = shufflevector <2 x double> %broadcast.splatinsert83, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph73
  %index75 = phi i64 [ 0, %vector.ph73 ], [ %index.next85, %vector.body74 ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index75 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cz, align 8, !tbaa !8, !alias.scope !24, !noalias !26
  %wide.load76 = load <2 x double>, ptr %i.da, align 8, !tbaa !8, !alias.scope !24, !noalias !26
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index75 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load77 = load <2 x double>, ptr %i.db, align 8, !tbaa !8, !alias.scope !29
  %wide.load78 = load <2 x double>, ptr %i.dc, align 8, !tbaa !8, !alias.scope !29
  %i.dd = fmul <2 x double> %broadcast.splat80, %wide.load77
  %i.de = fmul <2 x double> %broadcast.splat80, %wide.load78
  %i.df = fadd <2 x double> %wide.load, %i.dd
  %i.dg = fadd <2 x double> %wide.load76, %i.de
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index75 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load81 = load <2 x double>, ptr %i.dh, align 8, !tbaa !8, !alias.scope !30
  %wide.load82 = load <2 x double>, ptr %i.di, align 8, !tbaa !8, !alias.scope !30
  %i.dj = fmul <2 x double> %broadcast.splat84, %wide.load81
  %i.dk = fmul <2 x double> %broadcast.splat84, %wide.load82
  %i.dl = fadd <2 x double> %i.df, %i.dj
  %i.dm = fadd <2 x double> %i.dg, %i.dk
  store <2 x double> %i.dl, ptr %i.cz, align 8, !tbaa !8, !alias.scope !24, !noalias !26
  store <2 x double> %i.dm, ptr %i.da, align 8, !tbaa !8, !alias.scope !24, !noalias !26
  %index.next85 = add nuw i64 %index75, 4         ; 2 uses
  %i.dn = icmp eq i64 %index.next85, 2000
  br i1 %i.dn, label %middle.block86, label %vector.body74, !llvm.loop !31

scalar.ph:                                        ; preds = %.preheader69.i, %scalar.ph
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47.1, %scalar.ph ], [ 0, %.preheader69.i ] ; 5 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i46 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !8
  %i.dq = load double, ptr %i.cv, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i46
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !8
  %i.dt = fmul double %i.dq, %i.ds
  %i.du = fadd double %i.dp, %i.dt
  %i.dv = load double, ptr %i.cw, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i46
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !8
  %i.dy = fmul double %i.dv, %i.dx
  %i.dz = fadd double %i.du, %i.dy
  store double %i.dz, ptr %i.do, align 8, !tbaa !8
  %indvars.iv.next.i47 = or disjoint i64 %indvars.iv.i46, 1 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next.i47 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !8
  %i.ec = load double, ptr %i.cv, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i47
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !8
  %i.ef = fmul double %i.ec, %i.ee
  %i.eg = fadd double %i.eb, %i.ef
  %i.eh = load double, ptr %i.cw, align 8, !tbaa !8
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next.i47
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !8
  %i.ek = fmul double %i.eh, %i.ej
  %i.el = fadd double %i.eg, %i.ek
  store double %i.el, ptr %i.ea, align 8, !tbaa !8
  %indvars.iv.next.i47.1 = add nuw nsw i64 %indvars.iv.i46, 2 ; 2 uses
  %exitcond.not.i48.1 = icmp eq i64 %indvars.iv.next.i47.1, 2000
  br i1 %exitcond.not.i48.1, label %middle.block86, label %scalar.ph, !llvm.loop !32

middle.block86:                                   ; preds = %vector.body74, %scalar.ph
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 2000
  br i1 %exitcond82.not.i, label %.preheader67.i, label %.preheader69.i, !llvm.loop !33

.preheader67.i:                                   ; preds = %middle.block86, %bb.l
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %bb.l ], [ 0, %middle.block86 ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv87.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv87.i ; 2 uses
  %.promoted.i = load double, ptr %i.em, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader67.i
  %indvars.iv83.i = phi i64 [ 0, %.preheader67.i ], [ %indvars.iv.next84.i.1, %bb.k ] ; 4 uses
  %i.en = phi double [ %.promoted.i, %.preheader67.i ], [ %i.ez, %bb.k ]
  %gep.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep.i, i64 %indvars.iv83.i
  %i.eo = load double, ptr %gep.i, align 8, !tbaa !8
  %i.ep = fmul double %i.eo, 1.200000e+00
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv83.i
  %i.er = load double, ptr %i.eq, align 8, !tbaa !8
  %i.es = fmul double %i.ep, %i.er
  %i.et = fadd double %i.en, %i.es                ; 2 uses
  store double %i.et, ptr %i.em, align 8, !tbaa !8
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next84.i
  %i.eu = load double, ptr %gep.i.1, align 8, !tbaa !8
  %i.ev = fmul double %i.eu, 1.200000e+00
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv.next84.i
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !8
  %i.ey = fmul double %i.ev, %i.ex
  %i.ez = fadd double %i.et, %i.ey                ; 2 uses
  store double %i.ez, ptr %i.em, align 8, !tbaa !8
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %exitcond86.not.i.1 = icmp eq i64 %indvars.iv.next84.i.1, 2000
  br i1 %exitcond86.not.i.1, label %bb.l, label %bb.k, !llvm.loop !34

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next88.i, 2000
  br i1 %exitcond90.not.i, label %vector.memcheck87, label %.preheader67.i, !llvm.loop !35

vector.memcheck87:                                ; preds = %bb.l
  %scevgep88 = getelementptr i8, ptr %i.au, i64 16000
  %scevgep89 = getelementptr i8, ptr %i.bg, i64 16000
  %bound090 = icmp ult ptr %i.au, %scevgep89
  %bound191 = icmp ult ptr %i.bg, %scevgep88
  %found.conflict92 = and i1 %bound090, %bound191
  br i1 %found.conflict92, label %.preheader66.i, label %vector.body95

vector.body95:                                    ; preds = %vector.memcheck87, %vector.body95
  %index96 = phi i64 [ %index.next101.1, %vector.body95 ], [ 0, %vector.memcheck87 ] ; 4 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index96 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %wide.load97 = load <2 x double>, ptr %i.fa, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  %wide.load98 = load <2 x double>, ptr %i.fb, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index96 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load99 = load <2 x double>, ptr %i.fc, align 8, !tbaa !8, !alias.scope !39
  %wide.load100 = load <2 x double>, ptr %i.fd, align 8, !tbaa !8, !alias.scope !39
  %i.fe = fadd <2 x double> %wide.load97, %wide.load99
  %i.ff = fadd <2 x double> %wide.load98, %wide.load100
  store <2 x double> %i.fe, ptr %i.fa, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  store <2 x double> %i.ff, ptr %i.fb, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  %index.next101 = or disjoint i64 %index96, 4    ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index.next101 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %wide.load97.1 = load <2 x double>, ptr %i.fg, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  %wide.load98.1 = load <2 x double>, ptr %i.fh, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %index.next101 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load99.1 = load <2 x double>, ptr %i.fi, align 8, !tbaa !8, !alias.scope !39
  %wide.load100.1 = load <2 x double>, ptr %i.fj, align 8, !tbaa !8, !alias.scope !39
  %i.fk = fadd <2 x double> %wide.load97.1, %wide.load99.1
  %i.fl = fadd <2 x double> %wide.load98.1, %wide.load100.1
  store <2 x double> %i.fk, ptr %i.fg, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  store <2 x double> %i.fl, ptr %i.fh, align 8, !tbaa !8, !alias.scope !36, !noalias !39
  %index.next101.1 = add nuw nsw i64 %index96, 8  ; 2 uses
  %i.fm = icmp eq i64 %index.next101.1, 2000
  br i1 %i.fm, label %.preheader.i.preheader, label %vector.body95, !llvm.loop !41

.preheader66.i:                                   ; preds = %vector.memcheck87, %.preheader66.i
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i.3, %.preheader66.i ], [ 0, %vector.memcheck87 ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv91.i ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !8
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv91.i
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8
  %i.fr = fadd double %i.fo, %i.fq
  store double %i.fr, ptr %i.fn, align 8, !tbaa !8
  %indvars.iv.next92.i = or disjoint i64 %indvars.iv91.i, 1 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next92.i ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next92.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = fadd double %i.ft, %i.fv
  store double %i.fw, ptr %i.fs, align 8, !tbaa !8
end_hunk_0
