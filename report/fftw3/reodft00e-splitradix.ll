Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft00e-splitradix?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mkplan:bb.a
bb.q:                                             ; preds = %bb.p
  tail call void @fftw_ifree(ptr noundef %i.aj) #5
  br label %applicable.exit.thread

bb.r:                                             ; preds = %bb.p
  %i.cn = tail call ptr @fftw_mktensor_1d(i64 noundef %i.ah, i64 noundef 1, i64 noundef 1) #5
  %i.co = tail call ptr @fftw_mktensor_0d() #5
  %i.cp = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.cn, ptr noundef %i.co, ptr noundef %i.aj, ptr noundef %i.aj, i32 noundef 0) #5
  %i.cq = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.cp) #5 ; 3 uses
  tail call void @fftw_ifree(ptr noundef %i.aj) #5
  %.not73 = icmp eq ptr %i.cq, null
  br i1 %.not73, label %applicable.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i32, ptr %i.k, align 8, !tbaa !42
  %i.cs = icmp eq i32 %i.cr, 9
  %i.ct = select i1 %i.cs, ptr @apply_e, ptr @apply_o
  %i.cu = tail call ptr @fftw_mkplan_rdft(i64 noundef 136, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull %i.ct) #5 ; 10 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 104
  store i64 %i.ag, ptr %i.cv, align 8, !tbaa !19
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %i.cz = load <2 x i64>, ptr %i.cx, align 8, !tbaa !49
  store <2 x i64> %i.cz, ptr %i.cy, align 8, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 64
  store ptr %i.cm, ptr %i.da, align 8, !tbaa !20
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  store ptr %i.cq, ptr %i.db, align 8, !tbaa !21
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  store ptr null, ptr %i.dc, align 8, !tbaa !22
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.cu, i64 112 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 120
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cu, i64 128
  %i.dh = tail call i32 @fftw_tensor_tornk1(ptr noundef %i.dd, ptr noundef nonnull %i.de, ptr noundef nonnull %i.df, ptr noundef nonnull %i.dg) #5 ; 0 uses
  call void @fftw_ops_zero(ptr noundef nonnull %3) #5
  %i.di = uitofp nneg i64 %i.ah to double
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dk = load i32, ptr %i.k, align 8, !tbaa !42
  %i.dl = icmp eq i32 %i.dk, 9
  %i.dm = select i1 %i.dl, i64 2, i64 0
  %i.dn = add nsw i64 %i.ah, -1
  %i.do = sdiv i64 %i.dn, 2
  %i.dp = mul nuw nsw i64 %i.do, 6                ; 2 uses
  %i.dq = and i64 %i.ag, 2
  %i.dr = xor i64 %i.dq, 2                        ; 2 uses
  %i.ds = add nuw i64 %i.dr, %i.dp
  %i.dt = add nuw i64 %i.ds, %i.dm
  %i.du = sitofp i64 %i.dt to double
  store double %i.du, ptr %3, align 8, !tbaa !50
  %i.dv = or disjoint i64 %i.dp, 1
  %i.dw = add nuw nsw i64 %i.dv, %i.dr
  %i.dx = uitofp nneg i64 %i.dw to double
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.dx, ptr %i.dy, align 8, !tbaa !51
  %i.dz = fadd double %i.di, 2.560000e+02
  store double %i.dz, ptr %i.dj, align 8, !tbaa !52
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 4 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.ea) #5
  %i.eb = load i64, ptr %i.de, align 8, !tbaa !23
  call void @fftw_ops_madd2(i64 noundef %i.eb, ptr noundef nonnull %3, ptr noundef nonnull %i.ea) #5
  %i.ec = load i64, ptr %i.de, align 8, !tbaa !23
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.ec, ptr noundef nonnull %i.ed, ptr noundef nonnull %i.ea) #5
  %i.ee = load i64, ptr %i.de, align 8, !tbaa !23
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.ee, ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ea) #5
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.h, %bb.a, %bb.r, %applicable.exit, %bb.s, %bb.q
  %.0 = phi ptr [ %i.cu, %bb.s ], [ null, %applicable.exit ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.a ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  tail call void @fftw_plan_awake(ptr noundef %i.d, i32 noundef %1) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = load i64, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %i.h = shl nsw i64 %i.g, 1
  %i.i = sdiv i64 %i.g, 4
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.e, ptr noundef nonnull @awake.reodft00e_tw, i64 noundef %i.h, i64 noundef 1, i64 noundef %i.i) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = icmp eq ptr %i.b, @apply_e               ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %. = select i1 %i.c, i64 1, i64 -1
  %.str..str.1 = select i1 %i.c, ptr @.str, ptr @.str.1
  %i.m = add nsw i64 %i.f, %.
  tail call void (ptr, ptr, ...) %i.d(ptr noundef nonnull %1, ptr noundef nonnull %.str..str.1, i64 noundef %i.m, i64 noundef %i.h, ptr noundef %i.j, ptr noundef %i.l) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.d) #5
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_0d() local_unnamed_addr #1

declare ptr @fftw_taint(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_e(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 7 uses
  %i.g = sdiv i64 %i.f, 2                         ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 3 uses
  %i.r = shl i64 %i.g, 3
  %i.s = tail call ptr @fftw_malloc_plain(i64 noundef %i.r) #5 ; 23 uses
  %i.t = icmp sgt i64 %i.i, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge154

.preheader.lr.ph:                                 ; preds = %bb.a
  %factor.op.mul = mul i64 %i.d, %i.g
  %.not136 = icmp slt i64 %i.f, 1
  %i.u = shl i64 %i.f, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.reass = shl i64 %factor.op.mul, 4
  %i.x = add nsw i64 %i.g, -1                     ; 4 uses
  %i.y = icmp sgt i64 %i.f, 5
  %i.z = shl nuw nsw i64 %i.g, 1                  ; 3 uses
  %i.aa = add i64 %i.f, -1
  %i.ab = lshr i64 %i.aa, 2                       ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.ae = icmp sgt i64 %i.f, 9
  %umin = zext i1 %i.ae to i64                    ; 2 uses
  %i.af = add nsw i64 %i.ad, -4
  %i.ag = sub i64 %i.af, %umin
  %i.ah = lshr i64 %i.ag, 1
  %i.ai = add nuw i64 %i.ah, %umin                ; 2 uses
  %i.aj = shl i64 %i.ai, 4
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.ak, i64 16  ; 4 uses
  %i.al = shl i64 %i.g, 3                         ; 4 uses
  %i.am = getelementptr i8, ptr %i.s, i64 %i.al   ; 3 uses
  %3 = add i64 %i.al, -8
  %4 = shl i64 %i.ai, 3                           ; 5 uses
  %5 = sub i64 %3, %4                             ; 2 uses
  %scevgep251 = getelementptr i8, ptr %i.s, i64 %5 ; 3 uses
  %scevgep252 = getelementptr i8, ptr %i.s, i64 %4
  %i.an = add nuw i64 %i.i, 2305843009213693951
  %6 = mul i64 %i.m, %i.an
  %7 = shl i64 %6, 3                              ; 3 uses
  %8 = add i64 %7, %i.al                          ; 2 uses
  %scevgep253 = getelementptr i8, ptr %2, i64 %8
  %9 = getelementptr i8, ptr %scevgep253, i64 %4  ; 2 uses
  %10 = insertelement <2 x ptr> poison, ptr %9, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %scevgep252, i64 1
  %12 = getelementptr i8, <2 x ptr> %11, i64 16   ; 2 uses
  %i.ao = getelementptr i8, ptr %9, i64 16        ; 4 uses
  %i.ap = getelementptr i8, ptr %2, i64 %i.al     ; 2 uses
  %13 = insertelement <2 x ptr> poison, ptr %i.ap, i64 0
  %14 = insertelement <2 x ptr> %13, ptr %i.s, i64 1
  %15 = getelementptr i8, <2 x ptr> %14, i64 8    ; 2 uses
  %scevgep255 = getelementptr i8, ptr %i.ap, i64 8 ; 4 uses
  %scevgep256 = getelementptr i8, ptr %2, i64 %8  ; 3 uses
  %scevgep257 = getelementptr i8, ptr %2, i64 %5  ; 3 uses
  %i.aq = shl i64 %i.g, 4                         ; 2 uses
  %i.ar = getelementptr i8, ptr %2, i64 %7
  %scevgep258 = getelementptr i8, ptr %i.ar, i64 %i.aq ; 5 uses
  %i.as = add i64 %i.aq, -8
  %i.at = sub i64 %i.as, %4
  %scevgep259 = getelementptr i8, ptr %2, i64 %i.at ; 5 uses
  %i.au = getelementptr i8, ptr %2, i64 %7
  %i.av = getelementptr i8, ptr %i.au, i64 %4
  %scevgep260 = getelementptr i8, ptr %i.av, i64 16 ; 2 uses
  %scevgep261 = getelementptr i8, ptr %2, i64 8   ; 2 uses
  %16 = insertelement <4 x ptr> poison, ptr %scevgep257, i64 0
  %17 = shufflevector <4 x ptr> %16, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.aw = insertelement <4 x ptr> poison, ptr %scevgep256, i64 0
  %i.ax = shufflevector <4 x ptr> %i.aw, <4 x ptr> poison, <4 x i32> zeroinitializer
  %18 = insertelement <4 x ptr> poison, ptr %scevgep251, i64 0
  %i.ay = insertelement <4 x ptr> %18, ptr %scevgep261, i64 1
  %i.az = insertelement <4 x ptr> %i.ay, ptr %scevgep257, i64 2
  %i.ba = insertelement <4 x ptr> %i.az, ptr %scevgep259, i64 3
  %i.bb = insertelement <4 x ptr> poison, ptr %scevgep260, i64 0 ; 2 uses
  %i.bc = insertelement <4 x ptr> %i.bb, ptr %scevgep, i64 1
  %19 = insertelement <4 x ptr> %i.bc, ptr %scevgep258, i64 2
  %i.bd = insertelement <4 x ptr> %19, ptr %i.ao, i64 3
  %i.be = insertelement <4 x ptr> poison, ptr %scevgep261, i64 0 ; 2 uses
  %i.bf = insertelement <4 x ptr> %i.be, ptr %i.p, i64 1
  %i.bg = insertelement <4 x ptr> %i.bf, ptr %scevgep259, i64 2
  %i.bh = insertelement <4 x ptr> %i.bg, ptr %scevgep255, i64 3
  %i.bi = insertelement <4 x ptr> poison, ptr %i.am, i64 0
  %i.bj = insertelement <4 x ptr> %i.bi, ptr %scevgep260, i64 1
  %i.bk = insertelement <4 x ptr> %i.bj, ptr %scevgep256, i64 2
  %i.bl = insertelement <4 x ptr> %i.bk, ptr %scevgep258, i64 3
  %i.bm = shufflevector <4 x ptr> %i.be, <4 x ptr> poison, <4 x i32> zeroinitializer
  %20 = insertelement <4 x ptr> poison, ptr %scevgep258, i64 0
  %21 = insertelement <4 x ptr> %20, ptr %scevgep256, i64 1
  %22 = insertelement <4 x ptr> poison, ptr %scevgep259, i64 0
  %23 = insertelement <4 x ptr> %22, ptr %scevgep257, i64 1
  %24 = shufflevector <4 x ptr> %i.bb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = insertelement <2 x ptr> poison, ptr %scevgep258, i64 0
  %i.bo = shufflevector <2 x ptr> %i.bn, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bp = insertelement <2 x ptr> poison, ptr %scevgep259, i64 0
  %25 = shufflevector <2 x ptr> %i.bp, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.br = shufflevector <2 x ptr> %i.bq, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bs = insertelement <2 x ptr> poison, ptr %scevgep255, i64 0
  %i.bt = shufflevector <2 x ptr> %i.bs, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bu = shufflevector <2 x ptr> %15, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.bv = shufflevector <4 x ptr> %23, <4 x ptr> %i.bu, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %26 = shufflevector <2 x ptr> %15, <2 x ptr> poison, <2 x i32> <i32 1, i32 poison>
  %i.bw = insertelement <4 x ptr> %i.bu, ptr %scevgep255, i64 0
  %i.bx = shufflevector <2 x ptr> %12, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %27 = shufflevector <4 x ptr> %21, <4 x ptr> %i.bx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %28 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <2 x i32> <i32 1, i32 poison>
  %29 = insertelement <4 x ptr> %i.bx, ptr %i.ao, i64 0
  %i.by = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %xtraiter = and i64 %i.by, 7                    ; 3 uses
  %i.bz = icmp ult i64 %i.f, 29
  %unroll_iter = and i64 %i.by, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod361 = icmp ne i64 %xtraiter, 0
  %i.ca = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.cb = add nsw i64 %i.ca, -4                   ; 2 uses
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i64                    ; 2 uses
  %i.ce = sub i64 %i.cb, %i.cd
  %i.cf = lshr i64 %i.ce, 1
  %i.cg = add nuw i64 %i.cf, %i.cd
  %i.ch = add i64 %i.cg, 1                        ; 4 uses
  %min.iters.check = icmp ugt i64 %i.ch, 9
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.ci = icmp ult <4 x ptr> %i.bm, %27
  %i.cj = icmp ult <4 x ptr> %i.bv, %24
  %.mask = and i64 %i.m, 1152921504606846976
  %30 = icmp ult <4 x ptr> %i.bh, %i.bl
  %31 = icmp ult <4 x ptr> %i.ba, %i.bd
  %32 = and <4 x i1> %31, %30
  %33 = insertelement <2 x ptr> %28, ptr %i.am, i64 1 ; 2 uses
  %34 = icmp ult <2 x ptr> %25, %33
  %35 = insertelement <2 x ptr> %26, ptr %scevgep251, i64 1 ; 2 uses
  %36 = icmp ult <2 x ptr> %35, %i.bo
  %bound0297 = icmp ult ptr %scevgep259, %scevgep
  %bound1298 = icmp ult ptr %i.p, %scevgep258
  %i.ck = insertelement <4 x ptr> %29, ptr %i.am, i64 2
  %i.cl = insertelement <4 x ptr> %i.ck, ptr %scevgep, i64 3
  %i.cm = icmp ult <4 x ptr> %17, %i.cl
  %37 = insertelement <4 x ptr> %i.bw, ptr %scevgep251, i64 2
  %i.cn = insertelement <4 x ptr> %37, ptr %i.p, i64 3
  %i.co = icmp ult <4 x ptr> %i.cn, %i.ax
  %i.cp = icmp ult <2 x ptr> %i.bt, %33
  %i.cq = icmp ult <2 x ptr> %35, %i.br
  %bound0325 = icmp ult ptr %scevgep255, %scevgep
  %bound1326 = icmp ult ptr %i.p, %i.ao
  %stride.check = icmp ne i64 %.mask, 0
  %i.cr = shufflevector <2 x i1> %i.cp, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = insertelement <8 x i1> %i.cr, i1 %bound0325, i64 6
  %i.ct = insertelement <8 x i1> %i.cs, i1 %stride.check, i64 7
  %i.cu = shufflevector <4 x i1> %i.cm, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cv = shufflevector <8 x i1> %i.cu, <8 x i1> %i.ct, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cw = shufflevector <2 x i1> %i.cq, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cx = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.cw, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.cy = insertelement <8 x i1> %i.cx, i1 %bound1326, i64 6
  %i.cz = shufflevector <4 x i1> %i.co, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.da = shufflevector <8 x i1> %i.cz, <8 x i1> %i.cy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.db = and <8 x i1> %i.cv, %i.da
  %i.dc = bitcast <8 x i1> %i.db to i8
  %i.dd = icmp ne i8 %i.dc, 0
  %i.de = shufflevector <2 x i1> %34, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.df = insertelement <8 x i1> %i.de, i1 %bound0297, i64 6
  %i.dg = insertelement <8 x i1> %i.df, i1 %i.dd, i64 7
  %i.dh = shufflevector <4 x i1> %i.ci, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <8 x i1> %i.dh, <8 x i1> %i.dg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dj = shufflevector <2 x i1> %36, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.dj, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.dl = insertelement <8 x i1> %i.dk, i1 %bound1298, i64 6
  %i.dm = shufflevector <4 x i1> %i.cj, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dn = shufflevector <8 x i1> %i.dm, <8 x i1> %i.dl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.do = and <8 x i1> %i.di, %i.dn
  %i.dp = bitcast <4 x i1> %32 to i4
  %i.dq = icmp ne i4 %i.dp, 0
  %i.dr = bitcast <8 x i1> %i.do to i8
  %i.ds = icmp ne i8 %i.dr, 0
  %op.rdx = or i1 %i.ds, %i.dq
  %n.vec = and i64 %i.ch, -2                      ; 3 uses
  %i.dt = sub i64 %i.x, %n.vec                    ; 2 uses
  %i.du = or i64 %i.ch, 1                         ; 2 uses
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.c
  %.0153 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.ju, %bb.c ] ; 12 uses
  %.0126152 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.jv, %bb.c ] ; 15 uses
  %.0130151 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.jt, %bb.c ]
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0127138 = phi i64 [ %i.fq, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 9 uses
  %.0128137 = phi i64 [ %i.fn, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.dv = mul nsw i64 %.0127138, %i.b
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.dv
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !30
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  store double %i.dx, ptr %i.dy, align 8, !tbaa !30
  %i.dz = add nuw nsw i64 %.0127138, 4
  %i.ea = mul nsw i64 %i.dz, %i.b
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !30
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store double %i.ec, ptr %i.ee, align 8, !tbaa !30
  %i.ef = add nuw nsw i64 %.0127138, 8
  %i.eg = mul nsw i64 %i.ef, %i.b
  %i.eh = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !30
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store double %i.ei, ptr %i.ek, align 8, !tbaa !30
  %i.el = add nuw nsw i64 %.0127138, 12
  %i.em = mul nsw i64 %i.el, %i.b
  %i.en = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store double %i.eo, ptr %i.eq, align 8, !tbaa !30
  %i.er = add nuw nsw i64 %.0127138, 16
  %i.es = mul nsw i64 %i.er, %i.b
  %i.et = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  store double %i.eu, ptr %i.ew, align 8, !tbaa !30
  %i.ex = add nuw nsw i64 %.0127138, 20
  %i.ey = mul nsw i64 %i.ex, %i.b
  %i.ez = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !30
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  store double %i.fa, ptr %i.fc, align 8, !tbaa !30
  %i.fd = add nuw nsw i64 %.0127138, 24
  %i.fe = mul nsw i64 %i.fd, %i.b
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 48
  store double %i.fg, ptr %i.fi, align 8, !tbaa !30
  %i.fj = add nuw nsw i64 %.0127138, 28
  %i.fk = mul nsw i64 %i.fj, %i.b
  %i.fl = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fk
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !30
  %i.fn = add nuw nsw i64 %.0128137, 8            ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 56
  store double %i.fm, ptr %i.fp, align 8, !tbaa !30
  %i.fq = add nuw nsw i64 %.0127138, 32           ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0127138.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ]
  %.0128137.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fn, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod361)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0127138.epil = phi i64 [ %i.fw, %.lr.ph.epil ], [ %.0127138.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0128137.epil = phi i64 [ %i.fu, %.lr.ph.epil ], [ %.0128137.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fr = mul nsw i64 %.0127138.epil, %i.b
  %i.fs = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !30
  %i.fu = add nuw nsw i64 %.0128137.epil, 1
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137.epil
  store double %i.ft, ptr %i.fv, align 8, !tbaa !30
  %i.fw = add nuw nsw i64 %.0127138.epil, 4       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.0128.lcssa = phi i64 [ 0, %.preheader ], [ %i.ac, %.lr.ph.epil ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.0127.lcssa = phi i64 [ 1, %.preheader ], [ %i.fq, %._crit_edge.loopexit.unr-lcssa ], [ %i.fw, %.lr.ph.epil ]
  %i.fx = sub nsw i64 %i.u, %.0127.lcssa          ; 2 uses
  %i.fy = icmp sgt i64 %i.fx, 0
  br i1 %i.fy, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %._crit_edge, %.lr.ph143
  %.1141 = phi i64 [ %i.ge, %.lr.ph143 ], [ %i.fx, %._crit_edge ] ; 3 uses
  %.1129140 = phi i64 [ %i.gc, %.lr.ph143 ], [ %.0128.lcssa, %._crit_edge ] ; 2 uses
  %i.fz = mul nsw i64 %.1141, %i.b
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !30
  %i.gc = add nuw nsw i64 %.1129140, 1
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1129140
  store double %i.gb, ptr %i.gd, align 8, !tbaa !30
  %i.ge = add nsw i64 %.1141, -4
  %i.gf = icmp samesign ugt i64 %.1141, 4
  br i1 %i.gf, label %.lr.ph143, label %._crit_edge144, !llvm.loop !58

._crit_edge144:                                   ; preds = %.lr.ph143, %._crit_edge
  %i.gg = load ptr, ptr %i.v, align 8, !tbaa !21  ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 56
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !33
  tail call void %i.gi(ptr noundef %i.gg, ptr noundef %i.s, ptr noundef %i.s) #5
  %i.gj = load ptr, ptr %i.w, align 8, !tbaa !20  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !33
  tail call void %i.gl(ptr noundef %i.gj, ptr noundef %.0153, ptr noundef %.0126152) #5
  %i.gm = load double, ptr %.0126152, align 8, !tbaa !30 ; 2 uses
  %i.gn = load double, ptr %i.s, align 8, !tbaa !30
  %i.go = fmul double %i.gn, 2.000000e+00         ; 2 uses
  %i.gp = fadd double %i.gm, %i.go
  store double %i.gp, ptr %.0126152, align 8, !tbaa !30
  %i.gq = fsub double %i.gm, %i.go
  %i.gr = getelementptr inbounds i8, ptr %.0126152, i64 %.reass
  store double %i.gq, ptr %i.gr, align 8, !tbaa !30
  br i1 %i.y, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %._crit_edge144
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx
  br i1 %brmerge, label %.lr.ph147.preheader356, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147.preheader
  %invariant.gep = getelementptr [8 x i8], ptr %.0126152, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gs = sub i64 %i.x, %index                    ; 2 uses
  %i.gt = or disjoint i64 %index, 1               ; 5 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.gt
  %wide.load = load <2 x double>, ptr %i.gu, align 8, !tbaa !30, !alias.scope !70 ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gs
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 -8
  %wide.load329 = load <2 x double>, ptr %i.gw, align 8, !tbaa !30, !alias.scope !71
  %reverse = shufflevector <2 x double> %wide.load329, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gx = shl nuw nsw i64 %i.gt, 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gx
  %wide.vec = load <4 x double>, ptr %i.gy, align 8, !tbaa !30, !alias.scope !72 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec330 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gz = fmul <2 x double> %reverse, %strided.vec330
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %wide.load, <2 x double> %i.gz)
  %i.hb = fmul <2 x double> %i.ha, splat (double 2.000000e+00) ; 2 uses
  %i.hc = fneg <2 x double> %wide.load
  %i.hd = fmul <2 x double> %strided.vec330, %i.hc
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %reverse, <2 x double> %i.hd)
  %i.hf = fmul <2 x double> %i.he, splat (double 2.000000e+00) ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.gt ; 2 uses
  %wide.load331 = load <2 x double>, ptr %i.hg, align 8, !tbaa !30, !alias.scope !73, !noalias !74 ; 2 uses
  %i.hh = fadd <2 x double> %wide.load331, %i.hb
  store <2 x double> %i.hh, ptr %i.hg, align 8, !tbaa !30, !alias.scope !73, !noalias !74
  %i.hi = fsub <2 x double> %wide.load331, %i.hb
  %i.hj = sub nsw i64 %i.z, %i.gt
  %i.hk = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.hj
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 -8
  %reverse332 = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse332, ptr %i.hl, align 8, !tbaa !30, !alias.scope !75, !noalias !76
  %i.hm = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.gs
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 -8 ; 2 uses
  %wide.load333 = load <2 x double>, ptr %i.hn, align 8, !tbaa !30, !alias.scope !77, !noalias !78 ; 2 uses
  %reverse334 = shufflevector <2 x double> %wide.load333, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ho = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse335 = fsub <2 x double> %wide.load333, %i.ho
  store <2 x double> %reverse335, ptr %i.hn, align 8, !tbaa !30, !alias.scope !77, !noalias !78
  %i.hp = fadd <2 x double> %i.hf, %reverse334
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.gt
  store <2 x double> %i.hp, ptr %gep, align 8, !tbaa !30, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hq = icmp eq i64 %index.next, %n.vec
  br i1 %i.hq, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge148, label %.lr.ph147.preheader356

.lr.ph147.preheader356:                           ; preds = %.lr.ph147.preheader, %middle.block
  %.ph = phi i64 [ %i.dt, %middle.block ], [ %i.x, %.lr.ph147.preheader ]
  %.2145.ph = phi i64 [ %i.du, %middle.block ], [ 1, %.lr.ph147.preheader ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader356, %.lr.ph147
  %i.hr = phi i64 [ %i.jc, %.lr.ph147 ], [ %.ph, %.lr.ph147.preheader356 ] ; 2 uses
  %.2145 = phi i64 [ %i.jb, %.lr.ph147 ], [ %.2145.ph, %.lr.ph147.preheader356 ] ; 6 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2145
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !30 ; 2 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.hr
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !30 ; 2 uses
  %.idx135 = shl nuw nsw i64 %.2145, 4
  %i.hw = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx135
  %i.hx = fneg double %i.ht
  %i.hy = load <2 x double>, ptr %i.hw, align 8, !tbaa !30 ; 2 uses
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ia = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.ib = insertelement <2 x double> %i.ia, double %i.hx, i64 1
  %i.ic = fmul <2 x double> %i.hz, %i.ib
  %i.id = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.if = insertelement <2 x double> %i.ie, double %i.hv, i64 1
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.if, <2 x double> %i.ic) ; 2 uses
  %i.ih = extractelement <2 x double> %i.ig, i64 0
  %i.ii = fmul double %i.ih, 2.000000e+00         ; 2 uses
  %i.ij = extractelement <2 x double> %i.ig, i64 1
  %i.ik = fmul double %i.ij, 2.000000e+00         ; 2 uses
  %i.il = mul nsw i64 %.2145, %i.d
  %i.im = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.il ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !30 ; 2 uses
  %i.io = fadd double %i.in, %i.ii
  store double %i.io, ptr %i.im, align 8, !tbaa !30
  %i.ip = fsub double %i.in, %i.ii
  %i.iq = sub nsw i64 %i.z, %.2145
  %i.ir = mul nsw i64 %i.iq, %i.d
  %i.is = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ir
  store double %i.ip, ptr %i.is, align 8, !tbaa !30
  %i.it = mul nsw i64 %i.hr, %i.d
  %i.iu = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.it ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !30 ; 2 uses
  %i.iw = fsub double %i.iv, %i.ik
  store double %i.iw, ptr %i.iu, align 8, !tbaa !30
  %i.ix = fadd double %i.ik, %i.iv
  %i.iy = add nuw nsw i64 %.2145, %i.g
  %i.iz = mul nsw i64 %i.iy, %i.d
  %i.ja = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.iz
  store double %i.ix, ptr %i.ja, align 8, !tbaa !30
  %i.jb = add nuw nsw i64 %.2145, 1               ; 4 uses
  %i.jc = sub nsw i64 %i.g, %i.jb                 ; 3 uses
  %i.jd = icmp slt i64 %i.jb, %i.jc
  br i1 %i.jd, label %.lr.ph147, label %._crit_edge148, !llvm.loop !68

._crit_edge148:                                   ; preds = %.lr.ph147, %middle.block, %._crit_edge144
  %.2.lcssa = phi i64 [ 1, %._crit_edge144 ], [ %i.du, %middle.block ], [ %i.jb, %.lr.ph147 ] ; 5 uses
  %.lcssa = phi i64 [ %i.x, %._crit_edge144 ], [ %i.dt, %middle.block ], [ %i.jc, %.lr.ph147 ]
  %i.je = icmp eq i64 %.2.lcssa, %.lcssa
  br i1 %i.je, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge148
  %.idx134 = shl nuw nsw i64 %.2.lcssa, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx134
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !30
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2.lcssa
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !30
  %i.jj = fmul double %i.jg, %i.ji
  %i.jk = fmul double %i.jj, 2.000000e+00         ; 2 uses
  %i.jl = mul nsw i64 %.2.lcssa, %i.d
  %i.jm = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.jl ; 2 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !30 ; 2 uses
  %i.jo = fadd double %i.jn, %i.jk
  store double %i.jo, ptr %i.jm, align 8, !tbaa !30
  %i.jp = fsub double %i.jn, %i.jk
  %i.jq = sub nsw i64 %i.z, %.2.lcssa
  %i.jr = mul nsw i64 %i.jq, %i.d
  %i.js = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.jr
  store double %i.jp, ptr %i.js, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge148, %bb.b
  %i.jt = add nuw nsw i64 %.0130151, 1            ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.k
  %i.jv = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.m
  %exitcond159.not = icmp eq i64 %i.jt, %i.i
  br i1 %exitcond159.not, label %._crit_edge154, label %.preheader, !llvm.loop !69

._crit_edge154:                                   ; preds = %bb.c, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.s) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_o(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 18 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 8 uses
  %i.g = sdiv i64 %i.f, 2                         ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !29   ; 6 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16 ; 3 uses
  %i.r = shl i64 %i.g, 3
  %i.s = tail call ptr @fftw_malloc_plain(i64 noundef %i.r) #5 ; 24 uses
  %i.t = icmp sgt i64 %i.i, 0
  br i1 %i.t, label %.preheader.lr.ph, label %._crit_edge169

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.u = icmp sgt i64 %i.f, 1
  %i.v = shl i64 %i.f, 1
  %i.w = add i64 %i.v, -2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = add nsw i64 %i.g, -1                     ; 11 uses
  %i.aa = icmp sgt i64 %i.f, 3
  %i.ab = mul nsw i64 %i.z, %i.d                  ; 2 uses
  %i.ac = icmp sgt i64 %i.f, 5
  %i.ad = shl nuw nsw i64 %i.g, 1                 ; 3 uses
  %i.ae = add i64 %i.f, -2                        ; 2 uses
  %i.af = lshr i64 %i.ae, 2                       ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 7 uses
  %i.ah = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.ai = icmp sgt i64 %i.f, 9
  %umin = zext i1 %i.ai to i64                    ; 2 uses
  %i.aj = add nsw i64 %i.ah, -4
  %i.ak = sub i64 %i.aj, %umin
  %i.al = lshr i64 %i.ak, 1
  %i.am = add nuw i64 %i.al, %umin                ; 2 uses
  %i.an = shl i64 %i.am, 4
  %i.ao = getelementptr i8, ptr %i.p, i64 %i.an
  %scevgep = getelementptr i8, ptr %i.ao, i64 16  ; 4 uses
  %i.ap = shl i64 %i.g, 3                         ; 5 uses
  %i.aq = getelementptr i8, ptr %i.s, i64 %i.ap   ; 4 uses
  %3 = add i64 %i.ap, -8
  %4 = shl i64 %i.am, 3                           ; 6 uses
  %5 = sub i64 %3, %4
  %scevgep267 = getelementptr i8, ptr %i.s, i64 %5 ; 4 uses
  %scevgep268 = getelementptr i8, ptr %i.s, i64 %4 ; 2 uses
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 16
  %scevgep269.a = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.ar = add nuw i64 %i.i, 2305843009213693951
  %6 = mul i64 %i.m, %i.ar
  %7 = shl i64 %6, 3                              ; 3 uses
  %i.as = add i64 %7, %i.ap                       ; 2 uses
  %8 = getelementptr i8, ptr %2, i64 %i.as
  %9 = getelementptr i8, ptr %8, i64 %4           ; 2 uses
  %10 = insertelement <2 x ptr> poison, ptr %9, i64 0
  %11 = insertelement <2 x ptr> %10, ptr %scevgep268, i64 1
  %12 = getelementptr i8, <2 x ptr> %11, <2 x i64> <i64 8, i64 16> ; 3 uses
  %scevgep271 = getelementptr i8, ptr %9, i64 8   ; 4 uses
  %scevgep272 = getelementptr i8, ptr %2, i64 %i.ap ; 5 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.as     ; 2 uses
  %scevgep273 = getelementptr i8, ptr %i.at, i64 -8
  %i.au = add i64 %i.ap, -16
  %i.av = sub i64 %i.au, %4
  %scevgep274 = getelementptr i8, ptr %2, i64 %i.av ; 3 uses
  %i.aw = shl i64 %i.g, 4                         ; 2 uses
  %i.ax = getelementptr i8, ptr %2, i64 %7
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.aw  ; 2 uses
  %i.az = insertelement <2 x ptr> poison, ptr %i.ay, i64 0
  %i.ba = insertelement <2 x ptr> %i.az, ptr %i.at, i64 1
  %i.bb = getelementptr i8, <2 x ptr> %i.ba, i64 -8 ; 2 uses
  %scevgep275 = getelementptr i8, ptr %i.ay, i64 -8 ; 5 uses
  %i.bc = add i64 %i.aw, -16
  %i.bd = sub i64 %i.bc, %4
  %scevgep276 = getelementptr i8, ptr %2, i64 %i.bd ; 6 uses
  %i.be = getelementptr i8, ptr %2, i64 %7
  %i.bf = getelementptr i8, ptr %i.be, i64 %4
  %scevgep277 = getelementptr i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bg = add nsw i64 %i.i, -1                    ; 2 uses
  %i.bh = mul i64 %i.k, %i.bg
  %i.bi = add i64 %i.bh, %smax
  %i.bj = shl i64 %i.bi, 3
  %i.bk = getelementptr i8, ptr %1, i64 %i.bj
  %scevgep365 = getelementptr i8, ptr %i.bk, i64 8
  %scevgep366 = getelementptr i8, ptr %1, i64 8
  %i.bl = mul i64 %i.m, %i.bg
  %i.bm = add i64 %i.bl, %smax
  %i.bn = shl i64 %i.bm, 3
  %scevgep367 = getelementptr i8, ptr %2, i64 %i.bn
  %i.bo = insertelement <4 x ptr> poison, ptr %scevgep274, i64 0
  %i.bp = shufflevector <4 x ptr> %i.bo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bq = insertelement <4 x ptr> poison, ptr %scevgep272, i64 0
  %i.br = insertelement <4 x ptr> %i.bq, ptr %scevgep269.a, i64 1
  %i.bs = insertelement <4 x ptr> %i.br, ptr %scevgep267, i64 2
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %i.p, i64 3
  %i.bu = insertelement <4 x ptr> poison, ptr %2, i64 0
  %i.bv = shufflevector <4 x ptr> %i.bu, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bw = insertelement <4 x ptr> poison, ptr %scevgep276, i64 0
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep274, i64 1
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep272, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep269.a, i64 3
  %i.ca = insertelement <4 x ptr> poison, ptr %scevgep277, i64 0
  %i.cb = shufflevector <4 x ptr> %i.ca, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cc = insertelement <2 x ptr> poison, ptr %scevgep269.a, i64 0
  %i.cd = insertelement <2 x ptr> %i.cc, ptr %scevgep267, i64 1
  %i.ce = insertelement <2 x ptr> poison, ptr %scevgep271, i64 0
  %i.cf = shufflevector <2 x ptr> %i.ce, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cg = insertelement <2 x ptr> poison, ptr %scevgep272, i64 0
  %i.ch = shufflevector <2 x ptr> %i.cg, <2 x ptr> poison, <2 x i32> zeroinitializer
  %13 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <2 x ptr> %i.bb, <2 x ptr> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %15 = shufflevector <2 x ptr> %12, <2 x ptr> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <4 x ptr> %13, ptr %scevgep271, i64 0
  %i.ci = add nuw nsw i64 %i.af, 1                ; 2 uses
  %xtraiter = and i64 %i.ci, 7                    ; 3 uses
  %i.cj = icmp ult i64 %i.ae, 28
  %unroll_iter = and i64 %i.ci, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod411 = icmp ne i64 %xtraiter, 0
  %min.iters.check369 = icmp slt i64 %i.f, 34
  %ident.check354 = icmp ne i64 %i.d, 1
  %ident.check355 = icmp ne i64 %i.b, 1
  %i.ck = or i1 %ident.check354, %ident.check355
  %bound0371 = icmp ult ptr %2, %scevgep365
  %bound1372 = icmp ult ptr %scevgep366, %scevgep367
  %found.conflict373 = and i1 %bound0371, %bound1372
  %i.cl = or i64 %i.k, %i.m
  %i.cm = and i64 %i.cl, 1152921504606846976
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = or i1 %found.conflict373, %i.cn
  %n.vec377 = and i64 %smax, 9223372036854775804  ; 3 uses
  %cmp.n384 = icmp eq i64 %smax, %n.vec377
  %i.cp = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.cq = add nsw i64 %i.cp, -4                   ; 2 uses
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i64                    ; 2 uses
  %i.ct = sub i64 %i.cq, %i.cs
  %i.cu = lshr i64 %i.ct, 1
  %i.cv = add nuw i64 %i.cu, %i.cs
  %i.cw = add i64 %i.cv, 1                        ; 4 uses
  %min.iters.check = icmp ugt i64 %i.cw, 9
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.cx = icmp ult <4 x ptr> %i.bv, %14
  %i.cy = icmp ult <4 x ptr> %i.bz, %i.cb
  %.mask = and i64 %i.m, 1152921504606846976
  %i.cz = and <4 x i1> %i.cx, %i.cy
  %bound0289 = icmp ult ptr %2, %i.aq
  %bound1290 = icmp ult ptr %scevgep267, %scevgep277
  %found.conflict291 = and i1 %bound0289, %bound1290
  %bound0293 = icmp ult ptr %2, %scevgep
  %bound1294 = icmp ult ptr %i.p, %scevgep277
  %found.conflict295 = and i1 %bound0293, %bound1294
  %bound0297 = icmp ult ptr %scevgep276, %scevgep273
  %bound1298 = icmp ult ptr %scevgep274, %scevgep275
  %found.conflict299 = and i1 %bound0297, %bound1298
  %bound0301 = icmp ult ptr %scevgep276, %scevgep271
  %bound1302 = icmp ult ptr %scevgep272, %scevgep275
  %found.conflict303 = and i1 %bound0301, %bound1302
  %bound0305 = icmp ult ptr %scevgep276, %scevgep269
  %bound1306 = icmp ult ptr %scevgep269.a, %scevgep275
  %found.conflict307 = and i1 %bound0305, %bound1306
  %bound0309 = icmp ult ptr %scevgep276, %i.aq
  %bound1310 = icmp ult ptr %scevgep267, %scevgep275
  %found.conflict311 = and i1 %bound0309, %bound1310
  %bound0313 = icmp ult ptr %scevgep276, %scevgep
  %bound1314 = icmp ult ptr %i.p, %scevgep275
  %found.conflict315 = and i1 %bound0313, %bound1314
  %17 = insertelement <4 x ptr> %16, ptr %i.aq, i64 2
  %18 = insertelement <4 x ptr> %17, ptr %scevgep, i64 3
  %i.da = icmp ult <4 x ptr> %i.bp, %18
  %i.db = shufflevector <2 x ptr> %i.bb, <2 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dc = icmp ult <4 x ptr> %i.bt, %i.db
  %19 = insertelement <2 x ptr> %15, ptr %i.aq, i64 1
  %i.dd = icmp ult <2 x ptr> %i.ch, %19
  %i.de = icmp ult <2 x ptr> %i.cd, %i.cf
  %bound0341 = icmp ult ptr %scevgep272, %scevgep
  %bound1342 = icmp ult ptr %i.p, %scevgep271
  %stride.check = icmp ne i64 %.mask, 0
  %i.df = shufflevector <2 x i1> %i.dd, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.dg = insertelement <8 x i1> %i.df, i1 %bound0341, i64 6
  %i.dh = insertelement <8 x i1> %i.dg, i1 %stride.check, i64 7
  %i.di = shufflevector <4 x i1> %i.da, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <8 x i1> %i.di, <8 x i1> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dk = shufflevector <2 x i1> %i.de, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.dk, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.dm = insertelement <8 x i1> %i.dl, i1 %bound1342, i64 6
  %i.dn = shufflevector <4 x i1> %i.dc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.do = shufflevector <8 x i1> %i.dn, <8 x i1> %i.dm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dp = and <8 x i1> %i.dj, %i.do
  %i.dq = bitcast <8 x i1> %i.dp to i8
  %i.dr = icmp ne i8 %i.dq, 0
  %i.ds = bitcast <4 x i1> %i.cz to i4
  %i.dt = icmp ne i4 %i.ds, 0
  %op.rdx397 = or i1 %i.dt, %found.conflict291
  %op.rdx398 = or i1 %found.conflict295, %found.conflict299
  %op.rdx399 = or i1 %found.conflict303, %found.conflict307
  %op.rdx400 = or i1 %found.conflict311, %found.conflict315
  %op.rdx401 = or i1 %op.rdx397, %op.rdx398
  %op.rdx402 = or i1 %op.rdx399, %op.rdx400
  %op.rdx403 = or i1 %op.rdx401, %op.rdx402
  %op.rdx404 = or i1 %op.rdx403, %i.dr
  %n.vec = and i64 %i.cw, -2                      ; 3 uses
  %i.du = sub i64 %i.z, %n.vec                    ; 2 uses
  %i.dv = or i64 %i.cw, 1                         ; 2 uses
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %.0167 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.mq, %bb.e ] ; 23 uses
  %.0138165 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.mr, %bb.e ] ; 25 uses
  %.0142164 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.mp, %bb.e ]
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %i.cj, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0139148 = phi i64 [ %i.fr, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %.0140147 = phi i64 [ %i.fo, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.dw = mul nsw i64 %.0139148, %i.b
  %i.dx = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  store double %i.dy, ptr %i.dz, align 8, !tbaa !30
  %i.ea = or disjoint i64 %.0139148, 4
  %i.eb = mul nsw i64 %i.ea, %i.b
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !30
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  store double %i.ed, ptr %i.ef, align 8, !tbaa !30
  %i.eg = or disjoint i64 %.0139148, 8
  %i.eh = mul nsw i64 %i.eg, %i.b
  %i.ei = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.eh
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !30
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store double %i.ej, ptr %i.el, align 8, !tbaa !30
  %i.em = or disjoint i64 %.0139148, 12
  %i.en = mul nsw i64 %i.em, %i.b
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !30
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store double %i.ep, ptr %i.er, align 8, !tbaa !30
  %i.es = or disjoint i64 %.0139148, 16
  %i.et = mul nsw i64 %i.es, %i.b
  %i.eu = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store double %i.ev, ptr %i.ex, align 8, !tbaa !30
  %i.ey = or disjoint i64 %.0139148, 20
  %i.ez = mul nsw i64 %i.ey, %i.b
  %i.fa = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !30
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store double %i.fb, ptr %i.fd, align 8, !tbaa !30
  %i.fe = or disjoint i64 %.0139148, 24
  %i.ff = mul nsw i64 %i.fe, %i.b
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !30
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  store double %i.fh, ptr %i.fj, align 8, !tbaa !30
  %i.fk = or disjoint i64 %.0139148, 28
  %i.fl = mul nsw i64 %i.fk, %i.b
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !30
  %i.fo = add nuw nsw i64 %.0140147, 8            ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 56
  store double %i.fn, ptr %i.fq, align 8, !tbaa !30
  %i.fr = add nuw nsw i64 %.0139148, 32           ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !81

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0139148.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fr, %._crit_edge.loopexit.unr-lcssa ]
  %.0140147.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fo, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod411)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0139148.epil = phi i64 [ %i.fx, %.lr.ph.epil ], [ %.0139148.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0140147.epil = phi i64 [ %i.fv, %.lr.ph.epil ], [ %.0140147.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fs = mul nsw i64 %.0139148.epil, %i.b
  %i.ft = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !30
  %i.fv = add nuw nsw i64 %.0140147.epil, 1
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0140147.epil
  store double %i.fu, ptr %i.fw, align 8, !tbaa !30
  %i.fx = add nuw nsw i64 %.0139148.epil, 4       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !82

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.0140.lcssa = phi i64 [ 0, %.preheader ], [ %i.ag, %.lr.ph.epil ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.0139.lcssa = phi i64 [ 0, %.preheader ], [ %i.fr, %._crit_edge.loopexit.unr-lcssa ], [ %i.fx, %.lr.ph.epil ]
  %i.fy = sub nsw i64 %i.w, %.0139.lcssa          ; 2 uses
  %i.fz = icmp sgt i64 %i.fy, 0
  br i1 %i.fz, label %.lr.ph153, label %._crit_edge154

.lr.ph153:                                        ; preds = %._crit_edge, %.lr.ph153
  %.1151 = phi i64 [ %i.gg, %.lr.ph153 ], [ %i.fy, %._crit_edge ] ; 3 uses
  %.1141150 = phi i64 [ %i.ge, %.lr.ph153 ], [ %.0140.lcssa, %._crit_edge ] ; 2 uses
  %i.ga = mul nsw i64 %.1151, %i.b
  %i.gb = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !30
  %i.gd = fneg double %i.gc
  %i.ge = add nuw nsw i64 %.1141150, 1
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1141150
  store double %i.gd, ptr %i.gf, align 8, !tbaa !30
  %i.gg = add nsw i64 %.1151, -4
  %i.gh = icmp samesign ugt i64 %.1151, 4
  br i1 %i.gh, label %.lr.ph153, label %._crit_edge154, !llvm.loop !83

._crit_edge154:                                   ; preds = %.lr.ph153, %._crit_edge
  %i.gi = load ptr, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !33
  tail call void %i.gk(ptr noundef %i.gi, ptr noundef %i.s, ptr noundef %i.s) #5
  %i.gl = load ptr, ptr %i.y, align 8, !tbaa !20  ; 3 uses
  %i.gm = icmp eq ptr %.0167, %.0138165
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !33 ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.b ; 3 uses
  br i1 %i.gm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge154
  tail call void %i.go(ptr noundef %i.gl, ptr noundef %i.gp, ptr noundef %i.gp) #5
  br i1 %i.aa, label %.lr.ph157.preheader, label %.loopexit.thread

.lr.ph157.preheader:                              ; preds = %bb.b
  %brmerge = select i1 %min.iters.check369, i1 true, i1 %i.ck
  %brmerge420 = select i1 %brmerge, i1 true, i1 %i.co
  br i1 %brmerge420, label %.lr.ph157.preheader406, label %vector.body378

vector.body378:                                   ; preds = %.lr.ph157.preheader, %vector.body378
  %index379 = phi i64 [ %index.next382, %vector.body378 ], [ 0, %.lr.ph157.preheader ] ; 3 uses
  %i.gq = getelementptr [8 x i8], ptr %.0167, i64 %index379 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 8
  %i.gs = getelementptr i8, ptr %i.gq, i64 24
  %wide.load380 = load <2 x double>, ptr %i.gr, align 8, !tbaa !30, !alias.scope !101
  %wide.load381 = load <2 x double>, ptr %i.gs, align 8, !tbaa !30, !alias.scope !101
  %i.gt = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %index379 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <2 x double> %wide.load380, ptr %i.gt, align 8, !tbaa !30, !alias.scope !102, !noalias !101
  store <2 x double> %wide.load381, ptr %i.gu, align 8, !tbaa !30, !alias.scope !102, !noalias !101
  %index.next382 = add nuw i64 %index379, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next382, %n.vec377
  br i1 %i.gv, label %middle.block383, label %vector.body378, !llvm.loop !87

middle.block383:                                  ; preds = %vector.body378
  br i1 %cmp.n384, label %.loopexit, label %.lr.ph157.preheader406

.lr.ph157.preheader406:                           ; preds = %.lr.ph157.preheader, %middle.block383
  %.2155.ph = phi i64 [ 0, %.lr.ph157.preheader ], [ %n.vec377, %middle.block383 ] ; 4 uses
  %i.gw = sub nsw i64 %smax, %.2155.ph
  %xtraiter412 = and i64 %i.gw, 7                 ; 2 uses
  %lcmp.mod413.not = icmp eq i64 %xtraiter412, 0
  br i1 %lcmp.mod413.not, label %.lr.ph157.prol.loopexit, label %.lr.ph157.prol

.lr.ph157.prol:                                   ; preds = %.lr.ph157.preheader406, %.lr.ph157.prol
  %.2155.prol = phi i64 [ %i.gx, %.lr.ph157.prol ], [ %.2155.ph, %.lr.ph157.preheader406 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph157.prol ], [ 0, %.lr.ph157.preheader406 ]
end_hunk_0
begin_hunk_1_@apply_o:bb.a
  %.3158.ph = phi i64 [ %i.dv, %middle.block ], [ 1, %.lr.ph160.preheader ]
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph160.preheader405, %.lr.ph160
  %i.ki = phi i64 [ %i.lv, %.lr.ph160 ], [ %.ph, %.lr.ph160.preheader405 ]
  %.3158 = phi i64 [ %i.lu, %.lr.ph160 ], [ %.3158.ph, %.lr.ph160.preheader405 ] ; 7 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.3158
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !30
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ki
  %i.km = load double, ptr %i.kl, align 8, !tbaa !30 ; 2 uses
  %.idx146 = shl nuw nsw i64 %.3158, 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx146
  %i.ko = fneg double %i.km
  %i.kp = load <2 x double>, ptr %i.kn, align 8, !tbaa !30 ; 2 uses
  %i.kq = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.km, i64 1
  %i.ks = fmul <2 x double> %i.kp, %i.kr
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ku = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kp, <2 x double> %i.kv, <2 x double> %i.kt) ; 2 uses
  %i.kx = extractelement <2 x double> %i.kw, i64 0
  %i.ky = fmul double %i.kx, 2.000000e+00         ; 2 uses
  %i.kz = extractelement <2 x double> %i.kw, i64 1
  %i.la = fmul double %i.kz, 2.000000e+00         ; 2 uses
  %i.lb = add nsw i64 %.3158, -1
  %i.lc = mul nsw i64 %i.lb, %i.d
  %i.ld = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.lc ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !30 ; 2 uses
  %i.lf = fadd double %i.le, %i.la
  store double %i.lf, ptr %i.ld, align 8, !tbaa !30
  %i.lg = fsub double %i.la, %i.le
  %i.lh = xor i64 %.3158, -1
  %i.li = add nsw i64 %i.ad, %i.lh
  %i.lj = mul nsw i64 %i.li, %i.d
  %i.lk = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.lj
  store double %i.lg, ptr %i.lk, align 8, !tbaa !30
  %i.ll = sub nsw i64 %i.z, %.3158
  %i.lm = mul nsw i64 %i.ll, %i.d
  %i.ln = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.lm ; 2 uses
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !30 ; 2 uses
  %i.lp = fadd double %i.ky, %i.lo
  store double %i.lp, ptr %i.ln, align 8, !tbaa !30
  %i.lq = fsub double %i.ky, %i.lo
  %i.lr = add nuw nsw i64 %.3158, %i.z
  %i.ls = mul nsw i64 %i.lr, %i.d
  %i.lt = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.ls
  store double %i.lq, ptr %i.lt, align 8, !tbaa !30
  %i.lu = add nuw nsw i64 %.3158, 1               ; 4 uses
  %i.lv = sub nsw i64 %i.g, %i.lu                 ; 3 uses
  %i.lw = icmp slt i64 %i.lu, %i.lv
  br i1 %i.lw, label %.lr.ph160, label %._crit_edge161, !llvm.loop !99

._crit_edge161:                                   ; preds = %.lr.ph160, %middle.block, %.loopexit.thread, %.loopexit
  %.3.lcssa = phi i64 [ 1, %.loopexit ], [ 1, %.loopexit.thread ], [ %i.dv, %middle.block ], [ %i.lu, %.lr.ph160 ] ; 5 uses
  %.lcssa = phi i64 [ %i.z, %.loopexit ], [ %i.z, %.loopexit.thread ], [ %i.du, %middle.block ], [ %i.lv, %.lr.ph160 ]
  %i.lx = icmp eq i64 %.3.lcssa, %.lcssa
  br i1 %i.lx, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge161
  %.idx = shl nuw nsw i64 %.3.lcssa, 4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !30
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.3.lcssa
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !30
  %i.md = fmul double %i.ma, %i.mc
  %i.me = fmul double %i.md, 2.000000e+00         ; 2 uses
  %i.mf = add nsw i64 %.3.lcssa, -1
  %i.mg = mul nsw i64 %i.mf, %i.d
  %i.mh = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.mg ; 2 uses
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !30 ; 2 uses
  %i.mj = fadd double %i.mi, %i.me
  store double %i.mj, ptr %i.mh, align 8, !tbaa !30
  %i.mk = fsub double %i.me, %i.mi
  %i.ml = xor i64 %.3.lcssa, -1
  %i.mm = add i64 %i.ad, %i.ml
  %i.mn = mul nsw i64 %i.mm, %i.d
  %i.mo = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.mn
  store double %i.mk, ptr %i.mo, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge161, %bb.d
  %i.mp = add nuw nsw i64 %.0142164, 1            ; 2 uses
  %i.mq = getelementptr inbounds [8 x i8], ptr %.0167, i64 %i.k
  %i.mr = getelementptr inbounds [8 x i8], ptr %.0138165, i64 %i.m
  %exitcond175.not = icmp eq i64 %i.mp, %i.i
  br i1 %exitcond175.not, label %._crit_edge169, label %.preheader, !llvm.loop !100

._crit_edge169:                                   ; preds = %bb.e, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.s) #5
  ret void
}

declare i32 @fftw_tensor_tornk1(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_zero(ptr noundef) local_unnamed_addr #1

declare void @fftw_ops_madd2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fftw_twiddle_awake(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 double", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!14 = !{!"plan_s", !9, i64 0, !13, i64 8, !12, i64 40, !6, i64 48, !6, i64 52}
!15 = !{!"", !14, i64 0, !9, i64 56}
!16 = !{!"p1 _ZTS6plan_s", !9, i64 0}
!17 = !{!"p1 _ZTS6twid_s", !9, i64 0}
!18 = !{!"", !15, i64 0, !16, i64 64, !16, i64 72, !17, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128}
!19 = !{!18, !11, i64 104}
!20 = !{!18, !16, i64 64}
!21 = !{!18, !16, i64 72}
!22 = !{!18, !17, i64 80}
!23 = !{!18, !11, i64 112}
!24 = !{!18, !11, i64 88}
!25 = !{!18, !11, i64 96}
!26 = !{!18, !11, i64 120}
!27 = !{!18, !11, i64 128}
!28 = !{!"twid_s", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !6, i64 32, !9, i64 40, !17, i64 48, !6, i64 56}
!29 = !{!28, !10, i64 0}
!30 = !{!12, !12, i64 0}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!15, !9, i64 56}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"problem_s", !9, i64 0}
!37 = !{!"", !36, i64 0, !9, i64 8, !9, i64 16, !10, i64 24, !10, i64 32, !5, i64 40}
!38 = !{!37, !9, i64 8}
!39 = !{!"", !6, i64 0, !5, i64 8}
!40 = !{!39, !6, i64 0}
!41 = !{!37, !9, i64 16}
!42 = !{!6, !6, i64 0}
!43 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!44 = !{!43, !11, i64 0}
!45 = !{!37, !10, i64 24}
!46 = !{!37, !10, i64 32}
!47 = !{!43, !11, i64 8}
!48 = !{!43, !11, i64 16}
!49 = !{!11, !11, i64 0}
!50 = !{!13, !12, i64 0}
!51 = !{!13, !12, i64 8}
!52 = !{!13, !12, i64 24}
!53 = !{!18, !9, i64 56}
!54 = !{!"printer_s", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !6, i64 32, !6, i64 36}
!55 = !{!54, !9, i64 0}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !32}
!58 = distinct !{!58, !31}
!59 = distinct !{!59, i1 false, !"LVerDomain"}
!60 = distinct !{!60, !59}
!61 = distinct !{!61, !59}
!62 = distinct !{!62, !59}
!63 = distinct !{!63, !59}
!64 = distinct !{!64, !59}
!65 = distinct !{!65, !59}
!66 = distinct !{!66, !59}
!67 = distinct !{!67, !31, !34, !35}
!68 = distinct !{!68, !31, !34}
!69 = distinct !{!69, !31}
!70 = !{!60}
!71 = !{!61}
!72 = !{!62}
!73 = !{!63}
!74 = !{!66, !65, !64, !60, !61, !62}
!75 = !{!66}
!76 = !{!65, !64, !60, !61, !62}
!77 = !{!65}
!78 = !{!64, !60, !61, !62}
!79 = !{!64}
!80 = !{!60, !61, !62}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, i1 false, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !31, !34, !35}
!88 = distinct !{!88, !32}
!89 = distinct !{!89, !31, !34}
!90 = distinct !{!90, i1 false, !"LVerDomain"}
!91 = distinct !{!91, !90}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !90}
!94 = distinct !{!94, !90}
!95 = distinct !{!95, !90}
!96 = distinct !{!96, !90}
!97 = distinct !{!97, !90}
!98 = distinct !{!98, !31, !34, !35}
!99 = distinct !{!99, !31, !34}
!100 = distinct !{!100, !31}
!101 = !{!85}
!102 = !{!86}
!103 = !{!91}
!104 = !{!92}
!105 = !{!93}
!106 = !{!94}
!107 = !{!97, !96, !95, !91, !92, !93}
!108 = !{!97}
!109 = !{!96, !95, !91, !92, !93}
!110 = !{!96}
!111 = !{!95, !91, !92, !93}
!112 = !{!95}
!113 = !{!91, !92, !93}
end_hunk_1
