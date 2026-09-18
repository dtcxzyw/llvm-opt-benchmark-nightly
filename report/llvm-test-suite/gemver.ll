Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gemver?download=true
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
  store ptr null, ptr %i.i, align 8, !tbaa !11
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.i, i64 noundef 4096, i64 noundef 32000000) #11
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !11   ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store ptr null, ptr %i.h, align 8, !tbaa !11
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.h, i64 noundef 4096, i64 noundef 16000) #11
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !11   ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  %i.r = icmp ne i32 %i.o, 0
  %or.cond.i.i30 = select i1 %i.q, i1 true, i1 %i.r
  br i1 %or.cond.i.i30, label %bb.c, label %polybench_alloc_data.exit32

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i31 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.s) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit32:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store ptr null, ptr %i.g, align 8, !tbaa !11
  %i.t = call i32 @posix_memalign(ptr noundef nonnull %i.g, i64 noundef 4096, i64 noundef 16000) #11
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !11   ; 7 uses
  %i.v = icmp eq ptr %i.u, null
  %i.w = icmp ne i32 %i.t, 0
  %or.cond.i.i33 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i33, label %bb.d, label %polybench_alloc_data.exit35

bb.d:                                             ; preds = %polybench_alloc_data.exit32
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i34 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.x) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit35:                      ; preds = %polybench_alloc_data.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store ptr null, ptr %i.f, align 8, !tbaa !11
  %i.y = call i32 @posix_memalign(ptr noundef nonnull %i.f, i64 noundef 4096, i64 noundef 16000) #11
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !11   ; 5 uses
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = icmp ne i32 %i.y, 0
  %or.cond.i.i36 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i36, label %bb.e, label %polybench_alloc_data.exit38

bb.e:                                             ; preds = %polybench_alloc_data.exit35
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i37 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ac) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit38:                      ; preds = %polybench_alloc_data.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8, !tbaa !11
  %i.ad = call i32 @posix_memalign(ptr noundef nonnull %i.e, i64 noundef 4096, i64 noundef 16000) #11
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !11  ; 7 uses
  %i.af = icmp eq ptr %i.ae, null
  %i.ag = icmp ne i32 %i.ad, 0
  %or.cond.i.i39 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.i.i39, label %bb.f, label %polybench_alloc_data.exit41

bb.f:                                             ; preds = %polybench_alloc_data.exit38
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i40 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ah) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit41:                      ; preds = %polybench_alloc_data.exit38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !11
  %i.ai = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 16000) #11
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !11  ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  %i.al = icmp ne i32 %i.ai, 0
  %or.cond.i.i42 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond.i.i42, label %bb.g, label %polybench_alloc_data.exit44

bb.g:                                             ; preds = %polybench_alloc_data.exit41
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i43 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.am) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit44:                      ; preds = %polybench_alloc_data.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.an = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 16000) #11
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !11  ; 14 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = icmp ne i32 %i.an, 0
  %or.cond.i.i45 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %or.cond.i.i45, label %bb.h, label %polybench_alloc_data.exit47

bb.h:                                             ; preds = %polybench_alloc_data.exit44
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i46 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ar) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit47:                      ; preds = %polybench_alloc_data.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.as = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 16000) #11
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !11  ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  %i.av = icmp ne i32 %i.as, 0
  %or.cond.i.i48 = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond.i.i48, label %bb.i, label %polybench_alloc_data.exit50

bb.i:                                             ; preds = %polybench_alloc_data.exit47
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i49 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aw) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit50:                      ; preds = %polybench_alloc_data.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.ax = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 16000) #11
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !11  ; 11 uses
  %i.az = icmp eq ptr %i.ay, null
  %i.ba = icmp ne i32 %i.ax, 0
  %or.cond.i.i51 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i.i51, label %bb.j, label %polybench_alloc_data.exit53

bb.j:                                             ; preds = %polybench_alloc_data.exit50
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i52 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bb) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit53:                      ; preds = %polybench_alloc_data.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %vector.ph

.preheader69.i.preheader:                         ; preds = %middle.block
  %scevgep = getelementptr i8, ptr %i.k, i64 32000000
  %i.bc = insertelement <4 x ptr> poison, ptr %i.p, i64 0
  %i.bd = insertelement <4 x ptr> %i.bc, ptr %i.u, i64 1
  %i.be = insertelement <4 x ptr> %i.bd, ptr %i.z, i64 2
  %i.bf = insertelement <4 x ptr> %i.be, ptr %i.ae, i64 3 ; 2 uses
  %i.bg = getelementptr i8, <4 x ptr> %i.bf, i64 16000
  %i.bh = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.bi = shufflevector <4 x ptr> %i.bh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = icmp ult <4 x ptr> %i.bi, %i.bg
  %i.bm = icmp ult <4 x ptr> %i.bf, %i.bk
  %i.bn = and <4 x i1> %i.bl, %i.bm
  %i.bo = bitcast <4 x i1> %i.bn to i4
  %.not = icmp eq i4 %i.bo, 0
  br label %.preheader69.i

vector.ph:                                        ; preds = %middle.block, %polybench_alloc_data.exit53
  %indvars.iv47.i = phi i64 [ 0, %polybench_alloc_data.exit53 ], [ %indvars.iv.next48.i, %middle.block ] ; 12 uses
  %i.bp = trunc nuw nsw i64 %indvars.iv47.i to i32
  %i.bq = uitofp nneg i32 %i.bp to double
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv47.i
  store double %i.bq, ptr %i.br, align 8, !tbaa !9
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 3 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv.next48.i to i32
  %i.bt = uitofp nneg i32 %i.bs to double
  %i.bu = fdiv double %i.bt, 2.000000e+03         ; 5 uses
  %i.bv = fmul nnan double %i.bu, 5.000000e-01
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv47.i
  store double %i.bv, ptr %i.bw, align 8, !tbaa !9
  %i.bx = fmul nnan double %i.bu, 2.500000e-01
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv47.i
  store double %i.bx, ptr %i.by, align 8, !tbaa !9
  %2 = fdiv double %i.bu, 6.000000e+00
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv47.i
  store double %2, ptr %i.bz, align 8, !tbaa !9
  %3 = fmul nnan double %i.bu, 1.250000e-01
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv47.i
  store double %3, ptr %4, align 8, !tbaa !9
  %5 = fdiv double %i.bu, 9.000000e+00
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv47.i
  store double %5, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv47.i
  store double 0.000000e+00, ptr %i.cb, align 8, !tbaa !9
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv47.i
  store double 0.000000e+00, ptr %i.cc, align 8, !tbaa !9
  %i.cd = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv47.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv47.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ce = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.cf = trunc nuw nsw <2 x i64> %i.ce to <2 x i32>
  %i.cg = urem <2 x i32> %i.cf, splat (i32 2000)
  %i.ch = uitofp nneg <2 x i32> %i.cg to <2 x double>
  %i.ci = fdiv <2 x double> %i.ch, splat (double 2.000000e+03)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index
  store <2 x double> %i.ci, ptr %i.cj, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = icmp eq i64 %index.next, 2000
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next48.i, 2000
  br i1 %exitcond50.not.i, label %.preheader69.i.preheader, label %vector.ph, !llvm.loop !16

.preheader69.i:                                   ; preds = %.preheader69.i.preheader, %middle.block94
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %middle.block94 ], [ 0, %.preheader69.i.preheader ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [16000 x i8], ptr %i.k, i64 %indvars.iv79.i ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv79.i ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv79.i ; 3 uses
  br i1 %.not, label %vector.ph81, label %scalar.ph

vector.ph81:                                      ; preds = %.preheader69.i
  %i.co = load double, ptr %i.cm, align 8, !tbaa !9, !alias.scope !37
  %broadcast.splatinsert87 = insertelement <2 x double> poison, double %i.co, i64 0
  %broadcast.splat88 = shufflevector <2 x double> %broadcast.splatinsert87, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !9, !alias.scope !38
  %broadcast.splatinsert91 = insertelement <2 x double> poison, double %i.cp, i64 0
  %broadcast.splat92 = shufflevector <2 x double> %broadcast.splatinsert91, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph81
  %index83 = phi i64 [ 0, %vector.ph81 ], [ %index.next93, %vector.body82 ] ; 4 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %index83 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cq, align 8, !tbaa !9, !alias.scope !39, !noalias !40
  %wide.load84 = load <2 x double>, ptr %i.cr, align 8, !tbaa !9, !alias.scope !39, !noalias !40
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index83 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load85 = load <2 x double>, ptr %i.cs, align 8, !tbaa !9, !alias.scope !41
  %wide.load86 = load <2 x double>, ptr %i.ct, align 8, !tbaa !9, !alias.scope !41
  %i.cu = fmul <2 x double> %broadcast.splat88, %wide.load85
  %i.cv = fmul <2 x double> %broadcast.splat88, %wide.load86
  %i.cw = fadd <2 x double> %wide.load, %i.cu
  %i.cx = fadd <2 x double> %wide.load84, %i.cv
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index83 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load89 = load <2 x double>, ptr %i.cy, align 8, !tbaa !9, !alias.scope !42
  %wide.load90 = load <2 x double>, ptr %i.cz, align 8, !tbaa !9, !alias.scope !42
  %i.da = fmul <2 x double> %broadcast.splat92, %wide.load89
  %i.db = fmul <2 x double> %broadcast.splat92, %wide.load90
  %i.dc = fadd <2 x double> %i.cw, %i.da
  %i.dd = fadd <2 x double> %i.cx, %i.db
  store <2 x double> %i.dc, ptr %i.cq, align 8, !tbaa !9, !alias.scope !39, !noalias !40
  store <2 x double> %i.dd, ptr %i.cr, align 8, !tbaa !9, !alias.scope !39, !noalias !40
  %index.next93 = add nuw i64 %index83, 4         ; 2 uses
  %i.de = icmp eq i64 %index.next93, 2000
  br i1 %i.de, label %middle.block94, label %vector.body82, !llvm.loop !23

scalar.ph:                                        ; preds = %.preheader69.i, %scalar.ph
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55.1, %scalar.ph ], [ 0, %.preheader69.i ] ; 5 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i54 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !9
  %i.dh = load double, ptr %i.cm, align 8, !tbaa !9
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i54
  %i.dj = load double, ptr %i.di, align 8, !tbaa !9
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = fadd double %i.dg, %i.dk
  %i.dm = load double, ptr %i.cn, align 8, !tbaa !9
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i54
  %i.do = load double, ptr %i.dn, align 8, !tbaa !9
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = fadd double %i.dl, %i.dp
  store double %i.dq, ptr %i.df, align 8, !tbaa !9
  %indvars.iv.next.i55 = or disjoint i64 %indvars.iv.i54, 1 ; 3 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.next.i55 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !9
  %i.dt = load double, ptr %i.cm, align 8, !tbaa !9
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i55
  %i.dv = load double, ptr %i.du, align 8, !tbaa !9
  %i.dw = fmul double %i.dt, %i.dv
  %i.dx = fadd double %i.ds, %i.dw
  %i.dy = load double, ptr %i.cn, align 8, !tbaa !9
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next.i55
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !9
  %i.eb = fmul double %i.dy, %i.ea
  %i.ec = fadd double %i.dx, %i.eb
  store double %i.ec, ptr %i.dr, align 8, !tbaa !9
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %exitcond.not.i56.1 = icmp eq i64 %indvars.iv.next.i55.1, 2000
  br i1 %exitcond.not.i56.1, label %middle.block94, label %scalar.ph, !llvm.loop !24

middle.block94:                                   ; preds = %vector.body82, %scalar.ph
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, 2000
  br i1 %exitcond82.not.i, label %.preheader67.i, label %.preheader69.i, !llvm.loop !25

.preheader67.i:                                   ; preds = %middle.block94, %bb.l
  %indvars.iv87.i = phi i64 [ %indvars.iv.next88.i, %bb.l ], [ 0, %middle.block94 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv87.i ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv87.i ; 2 uses
  %.promoted.i = load double, ptr %i.ed, align 8, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader67.i
  %indvars.iv83.i = phi i64 [ 0, %.preheader67.i ], [ %indvars.iv.next84.i.1, %bb.k ] ; 4 uses
  %i.ee = phi double [ %.promoted.i, %.preheader67.i ], [ %i.eq, %bb.k ]
  %gep.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep.i, i64 %indvars.iv83.i
  %i.ef = load double, ptr %gep.i, align 8, !tbaa !9
  %i.eg = fmul double %i.ef, 1.200000e+00
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv83.i
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !9
  %i.ej = fmul double %i.eg, %i.ei
  %i.ek = fadd double %i.ee, %i.ej                ; 2 uses
  store double %i.ek, ptr %i.ed, align 8, !tbaa !9
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next84.i
  %i.el = load double, ptr %gep.i.1, align 8, !tbaa !9
  %i.em = fmul double %i.el, 1.200000e+00
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next84.i
  %i.eo = load double, ptr %i.en, align 8, !tbaa !9
  %i.ep = fmul double %i.em, %i.eo
  %i.eq = fadd double %i.ek, %i.ep                ; 2 uses
  store double %i.eq, ptr %i.ed, align 8, !tbaa !9
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %exitcond86.not.i.1 = icmp eq i64 %indvars.iv.next84.i.1, 2000
  br i1 %exitcond86.not.i.1, label %bb.l, label %bb.k, !llvm.loop !26

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1 ; 2 uses
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next88.i, 2000
  br i1 %exitcond90.not.i, label %vector.memcheck95, label %.preheader67.i, !llvm.loop !27

vector.memcheck95:                                ; preds = %bb.l
  %scevgep96 = getelementptr i8, ptr %i.ao, i64 16000
  %scevgep97 = getelementptr i8, ptr %i.ay, i64 16000
  %bound098 = icmp ult ptr %i.ao, %scevgep97
  %bound199 = icmp ult ptr %i.ay, %scevgep96
  %found.conflict100 = and i1 %bound098, %bound199
  br i1 %found.conflict100, label %.preheader66.i, label %vector.body103

vector.body103:                                   ; preds = %vector.memcheck95, %vector.body103
  %index104 = phi i64 [ %index.next109.1, %vector.body103 ], [ 0, %vector.memcheck95 ] ; 4 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index104 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %wide.load105 = load <2 x double>, ptr %i.er, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  %wide.load106 = load <2 x double>, ptr %i.es, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load107 = load <2 x double>, ptr %i.et, align 8, !tbaa !9, !alias.scope !44
  %wide.load108 = load <2 x double>, ptr %i.eu, align 8, !tbaa !9, !alias.scope !44
  %i.ev = fadd <2 x double> %wide.load105, %wide.load107
  %i.ew = fadd <2 x double> %wide.load106, %wide.load108
  store <2 x double> %i.ev, ptr %i.er, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  store <2 x double> %i.ew, ptr %i.es, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  %index.next109 = or disjoint i64 %index104, 4   ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %index.next109 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16 ; 2 uses
  %wide.load105.1 = load <2 x double>, ptr %i.ex, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  %wide.load106.1 = load <2 x double>, ptr %i.ey, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index.next109 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %wide.load107.1 = load <2 x double>, ptr %i.ez, align 8, !tbaa !9, !alias.scope !44
  %wide.load108.1 = load <2 x double>, ptr %i.fa, align 8, !tbaa !9, !alias.scope !44
  %i.fb = fadd <2 x double> %wide.load105.1, %wide.load107.1
  %i.fc = fadd <2 x double> %wide.load106.1, %wide.load108.1
  store <2 x double> %i.fb, ptr %i.ex, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  store <2 x double> %i.fc, ptr %i.ey, align 8, !tbaa !9, !alias.scope !43, !noalias !44
  %index.next109.1 = add nuw nsw i64 %index104, 8 ; 2 uses
  %i.fd = icmp eq i64 %index.next109.1, 2000
  br i1 %i.fd, label %.preheader.i.preheader, label %vector.body103, !llvm.loop !31

.preheader66.i:                                   ; preds = %vector.memcheck95, %.preheader66.i
  %indvars.iv91.i = phi i64 [ %indvars.iv.next92.i.3, %.preheader66.i ], [ 0, %vector.memcheck95 ] ; 6 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv91.i ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !9
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv91.i
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !9
  %i.fi = fadd double %i.ff, %i.fh
  store double %i.fi, ptr %i.fe, align 8, !tbaa !9
  %indvars.iv.next92.i = or disjoint i64 %indvars.iv91.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next92.i ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !9
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.next92.i
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !9
  %i.fn = fadd double %i.fk, %i.fm
  store double %i.fn, ptr %i.fj, align 8, !tbaa !9
end_hunk_0
