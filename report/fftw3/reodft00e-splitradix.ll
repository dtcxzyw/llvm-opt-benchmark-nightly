Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft00e-splitradix?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mkplan:bb.a
  %i.bs = load ptr, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !40
  %.not70 = icmp eq i32 %i.bt, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !47
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bw = phi i64 [ %i.bv, %bb.m ], [ 0, %bb.l ]
  %i.bx = tail call ptr @fftw_taint(ptr noundef %i.br, i64 noundef %i.bw) #5
  %i.by = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !47
  %i.cc = select i1 %i.bg, i64 %i.cb, i64 0
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.cc
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !40
  %.not71 = icmp eq i32 %i.cf, 0
  br i1 %.not71, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !48
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ci = phi i64 [ %i.ch, %bb.o ], [ 0, %bb.n ]
  %i.cj = tail call ptr @fftw_taint(ptr noundef %i.cd, i64 noundef %i.ci) #5
  %i.ck = load i32, ptr %i.k, align 8, !tbaa !42
  %i.cl = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.bi, ptr noundef %i.bj, ptr noundef %i.bx, ptr noundef %i.cj, i32 noundef %i.ck) #5
  %i.cm = tail call ptr @fftw_mkplan_d(ptr noundef nonnull %2, ptr noundef %i.cl) #5 ; 3 uses
  %.not72 = icmp eq ptr %i.cm, null
  br i1 %.not72, label %bb.q, label %bb.r

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
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 5 uses
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
  %3 = add i64 %i.f, 1                            ; 3 uses
  %factor.op.mul = mul i64 %i.d, %i.g
  %4 = icmp sgt i64 %i.f, 0
  %i.u = shl nsw i64 %3, 1
  %5 = add nsw i64 %i.u, -2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.reass = shl i64 %factor.op.mul, 4
  %i.x = add nsw i64 %i.g, -1                     ; 4 uses
  %i.y = icmp sgt i64 %i.f, 5
  %i.z = shl nuw nsw i64 %i.g, 1                  ; 3 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %3, i64 5)
  %i.aa = add nsw i64 %smax, -2
  %i.ab = lshr i64 %i.aa, 2                       ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %i.ad = add nuw i64 %i.i, 2305843009213693951
  %i.ae = mul i64 %i.m, %i.ad
  %i.af = shl i64 %i.ae, 3                        ; 3 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.ah = icmp sgt i64 %i.f, 9
  %umin = zext i1 %i.ah to i64                    ; 2 uses
  %i.ai = add nsw i64 %i.ag, -4
  %i.aj = sub i64 %i.ai, %umin
  %i.ak = lshr i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, %umin                ; 2 uses
  %i.am = shl i64 %i.al, 3                        ; 5 uses
  %i.an = getelementptr i8, ptr %2, i64 %i.af
  %i.ao = getelementptr i8, ptr %i.an, i64 %i.am
  %scevgep171 = getelementptr i8, ptr %i.ao, i64 16 ; 3 uses
  %i.ap = shl i64 %i.g, 4                         ; 2 uses
  %i.aq = add i64 %i.ap, -8
  %i.ar = sub i64 %i.aq, %i.am
  %scevgep172 = getelementptr i8, ptr %2, i64 %i.ar ; 5 uses
  %i.as = getelementptr i8, ptr %2, i64 %i.af
  %scevgep173 = getelementptr i8, ptr %i.as, i64 %i.ap ; 5 uses
  %i.at = shl i64 %i.g, 3                         ; 4 uses
  %i.au = add i64 %i.at, -8
  %i.av = sub i64 %i.au, %i.am                    ; 2 uses
  %scevgep174 = getelementptr i8, ptr %2, i64 %i.av ; 3 uses
  %i.aw = add i64 %i.af, %i.at                    ; 2 uses
  %scevgep175 = getelementptr i8, ptr %2, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %2, i64 %i.at
  %scevgep176 = getelementptr i8, ptr %i.ax, i64 8 ; 5 uses
  %i.ay = getelementptr i8, ptr %2, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.am
  %scevgep177 = getelementptr i8, ptr %i.az, i64 16 ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.s, i64 %i.av ; 3 uses
  %scevgep179 = getelementptr i8, ptr %i.s, i64 %i.at ; 3 uses
  %i.ba = insertelement <2 x ptr> poison, ptr %i.s, i64 0
  %i.bb = insertelement <2 x ptr> %i.ba, ptr %2, i64 1
  %i.bc = getelementptr i8, <2 x ptr> %i.bb, i64 8 ; 4 uses
  %i.bd = getelementptr i8, ptr %i.s, i64 %i.am
  %i.be = shl i64 %i.al, 4
  %i.bf = getelementptr i8, ptr %i.p, i64 %i.be   ; 2 uses
  %i.bg = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %i.bh = insertelement <2 x ptr> %i.bg, ptr %i.bf, i64 1
  %i.bi = getelementptr i8, <2 x ptr> %i.bh, i64 16 ; 3 uses
  %scevgep182 = getelementptr i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bj = insertelement <4 x ptr> poison, ptr %scevgep174, i64 0
  %i.bk = shufflevector <4 x ptr> %i.bj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep177, i64 0
  %i.bm = insertelement <4 x ptr> %i.bl, ptr %scevgep179, i64 1
  %i.bn = insertelement <4 x ptr> poison, ptr %scevgep176, i64 0
  %i.bo = insertelement <4 x ptr> %i.bn, ptr %scevgep178, i64 1
  %i.bp = insertelement <4 x ptr> poison, ptr %scevgep175, i64 0
  %i.bq = shufflevector <4 x ptr> %i.bp, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.br = insertelement <4 x ptr> poison, ptr %scevgep171, i64 0
  %i.bs = insertelement <4 x ptr> poison, ptr %scevgep173, i64 0
  %i.bt = insertelement <4 x ptr> %i.bs, ptr %scevgep175, i64 1
  %i.bu = insertelement <4 x ptr> %i.bt, ptr %scevgep177, i64 2
  %i.bv = insertelement <4 x ptr> %i.bu, ptr %scevgep179, i64 3
  %i.bw = insertelement <4 x ptr> poison, ptr %scevgep172, i64 0
  %i.bx = insertelement <4 x ptr> %i.bw, ptr %scevgep174, i64 1
  %i.by = insertelement <4 x ptr> %i.bx, ptr %scevgep176, i64 2
  %i.bz = insertelement <4 x ptr> %i.by, ptr %scevgep178, i64 3
  %i.ca = shufflevector <4 x ptr> %i.br, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <2 x ptr> poison, ptr %scevgep178, i64 0
  %i.cc = insertelement <2 x ptr> poison, ptr %scevgep173, i64 0
  %i.cd = shufflevector <2 x ptr> %i.cc, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x ptr> poison, ptr %scevgep172, i64 0
  %i.cf = shufflevector <2 x ptr> %i.ce, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cg = insertelement <2 x ptr> poison, ptr %scevgep179, i64 0
  %i.ch = insertelement <2 x ptr> poison, ptr %scevgep177, i64 0
  %i.ci = shufflevector <2 x ptr> %i.ch, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x ptr> poison, ptr %scevgep176, i64 0
  %i.ck = shufflevector <2 x ptr> %i.cj, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cl = shufflevector <2 x ptr> %i.bi, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cm = shufflevector <4 x ptr> %i.bm, <4 x ptr> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = shufflevector <2 x ptr> %i.cg, <2 x ptr> %i.bi, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.co = shufflevector <2 x ptr> %i.bi, <2 x ptr> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cp = insertelement <4 x ptr> %i.cl, ptr %scevgep171, i64 0
  %i.cq = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cr = shufflevector <2 x ptr> %i.cb, <2 x ptr> %i.bc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cs = shufflevector <4 x ptr> %i.bo, <4 x ptr> %i.cq, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ct = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cu = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %xtraiter = and i64 %i.cu, 7                    ; 3 uses
  %6 = icmp slt i64 %3, 30
  %unroll_iter = and i64 %i.cu, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod282 = icmp ne i64 %xtraiter, 0
  %i.cv = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.cw = add nsw i64 %i.cv, -4                   ; 2 uses
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = zext i1 %i.cx to i64                    ; 2 uses
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = lshr i64 %i.cz, 1
  %i.db = add nuw i64 %i.da, %i.cy
  %i.dc = add i64 %i.db, 1                        ; 4 uses
  %min.iters.check = icmp ugt i64 %i.dc, 9
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dd = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.de = icmp ult <4 x ptr> %i.dd, %i.bv
  %i.df = icmp ult <4 x ptr> %i.bz, %i.ca
  %.mask = and i64 %i.m, 1152921504606846976
  %i.dg = insertelement <4 x ptr> %i.ct, ptr %i.p, i64 1
  %i.dh = insertelement <4 x ptr> %i.dg, ptr %scevgep172, i64 2
  %i.di = insertelement <4 x ptr> %i.dh, ptr %scevgep176, i64 3
  %i.dj = insertelement <4 x ptr> %i.co, ptr %scevgep171, i64 1
  %i.dk = insertelement <4 x ptr> %i.dj, ptr %scevgep175, i64 2
  %i.dl = insertelement <4 x ptr> %i.dk, ptr %scevgep173, i64 3
  %i.dm = icmp ult <4 x ptr> %i.di, %i.dl
  %i.dn = insertelement <4 x ptr> %i.cq, ptr %scevgep174, i64 2
  %i.do = insertelement <4 x ptr> %i.dn, ptr %scevgep172, i64 3
  %i.dp = insertelement <4 x ptr> %i.cp, ptr %scevgep173, i64 2
  %i.dq = insertelement <4 x ptr> %i.dp, ptr %scevgep177, i64 3
  %i.dr = icmp ult <4 x ptr> %i.do, %i.dq
  %i.ds = and <4 x i1> %i.dr, %i.dm
  %i.dt = icmp ult <2 x ptr> %i.cf, %i.cn
  %i.du = icmp ult <2 x ptr> %i.cr, %i.cd
  %bound0218 = icmp ult ptr %scevgep172, %scevgep182
  %bound1219 = icmp ult ptr %i.p, %scevgep173
  %i.dv = icmp ult <4 x ptr> %i.bk, %i.cm
  %i.dw = insertelement <4 x ptr> %i.cs, ptr %i.p, i64 3
  %i.dx = icmp ult <4 x ptr> %i.dw, %i.bq
  %i.dy = icmp ult <2 x ptr> %i.ck, %i.cn
  %i.dz = icmp ult <2 x ptr> %i.cr, %i.ci
  %bound0246 = icmp ult ptr %scevgep176, %scevgep182
  %bound1247 = icmp ult ptr %i.p, %scevgep177
  %stride.check = icmp ne i64 %.mask, 0
  %i.ea = shufflevector <2 x i1> %i.dy, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.eb = insertelement <8 x i1> %i.ea, i1 %bound0246, i64 6
  %i.ec = insertelement <8 x i1> %i.eb, i1 %stride.check, i64 7
  %i.ed = shufflevector <4 x i1> %i.dv, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = shufflevector <8 x i1> %i.ed, <8 x i1> %i.ec, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ef = shufflevector <2 x i1> %i.dz, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eg = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.ef, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.eh = insertelement <8 x i1> %i.eg, i1 %bound1247, i64 6
  %i.ei = shufflevector <4 x i1> %i.dx, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <8 x i1> %i.ei, <8 x i1> %i.eh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ek = and <8 x i1> %i.ee, %i.ej
  %i.el = bitcast <8 x i1> %i.ek to i8
  %i.em = icmp ne i8 %i.el, 0
  %i.en = shufflevector <2 x i1> %i.dt, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.eo = insertelement <8 x i1> %i.en, i1 %bound0218, i64 6
  %i.ep = insertelement <8 x i1> %i.eo, i1 %i.em, i64 7
  %i.eq = shufflevector <4 x i1> %i.de, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.er = shufflevector <8 x i1> %i.eq, <8 x i1> %i.ep, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.es = shufflevector <2 x i1> %i.du, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.es, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.eu = insertelement <8 x i1> %i.et, i1 %bound1219, i64 6
  %i.ev = shufflevector <4 x i1> %i.df, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ew = shufflevector <8 x i1> %i.ev, <8 x i1> %i.eu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ex = and <8 x i1> %i.er, %i.ew
  %i.ey = bitcast <4 x i1> %i.ds to i4
  %i.ez = icmp ne i4 %i.ey, 0
  %i.fa = bitcast <8 x i1> %i.ex to i8
  %i.fb = icmp ne i8 %i.fa, 0
  %op.rdx = or i1 %i.fb, %i.ez
  %n.vec = and i64 %i.dc, -2                      ; 3 uses
  %i.fc = sub i64 %i.x, %n.vec                    ; 2 uses
  %i.fd = or i64 %i.dc, 1                         ; 2 uses
  %cmp.n = icmp eq i64 %i.dc, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.c
  %.0153 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.ld, %bb.c ] ; 12 uses
  %.0126152 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.le, %bb.c ] ; 15 uses
  %.0130151 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.lc, %bb.c ]
  br i1 %4, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %6, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0127138 = phi i64 [ %i.gz, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 9 uses
  %.0128137 = phi i64 [ %i.gw, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.fe = mul nsw i64 %.0127138, %i.b
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  store double %i.fg, ptr %i.fh, align 8, !tbaa !30
  %i.fi = add nuw nsw i64 %.0127138, 4
  %i.fj = mul nsw i64 %i.fi, %i.b
  %i.fk = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fj
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !30
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store double %i.fl, ptr %i.fn, align 8, !tbaa !30
  %i.fo = add nuw nsw i64 %.0127138, 8
  %i.fp = mul nsw i64 %i.fo, %i.b
  %i.fq = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fp
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !30
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store double %i.fr, ptr %i.ft, align 8, !tbaa !30
  %i.fu = add nuw nsw i64 %.0127138, 12
  %i.fv = mul nsw i64 %i.fu, %i.b
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fv
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !30
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  store double %i.fx, ptr %i.fz, align 8, !tbaa !30
  %i.ga = add nuw nsw i64 %.0127138, 16
  %i.gb = mul nsw i64 %i.ga, %i.b
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.gb
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !30
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  store double %i.gd, ptr %i.gf, align 8, !tbaa !30
  %i.gg = add nuw nsw i64 %.0127138, 20
  %i.gh = mul nsw i64 %i.gg, %i.b
  %i.gi = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.gh
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !30
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  store double %i.gj, ptr %i.gl, align 8, !tbaa !30
  %i.gm = add nuw nsw i64 %.0127138, 24
  %i.gn = mul nsw i64 %i.gm, %i.b
  %i.go = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !30
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  store double %i.gp, ptr %i.gr, align 8, !tbaa !30
  %i.gs = add nuw nsw i64 %.0127138, 28
  %i.gt = mul nsw i64 %i.gs, %i.b
  %i.gu = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.gt
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !30
  %i.gw = add nuw nsw i64 %.0128137, 8            ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  store double %i.gv, ptr %i.gy, align 8, !tbaa !30
  %i.gz = add nuw nsw i64 %.0127138, 32           ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0127138.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.gz, %._crit_edge.loopexit.unr-lcssa ]
  %.0128137.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.gw, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod282)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0127138.epil = phi i64 [ %i.hf, %.lr.ph.epil ], [ %.0127138.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0128137.epil = phi i64 [ %i.hd, %.lr.ph.epil ], [ %.0128137.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.ha = mul nsw i64 %.0127138.epil, %i.b
  %i.hb = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ha
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !30
  %i.hd = add nuw nsw i64 %.0128137.epil, 1
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137.epil
  store double %i.hc, ptr %i.he, align 8, !tbaa !30
  %i.hf = add nuw nsw i64 %.0127138.epil, 4       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.0128.lcssa = phi i64 [ 0, %.preheader ], [ %i.ac, %.lr.ph.epil ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.0127.lcssa = phi i64 [ 1, %.preheader ], [ %i.gz, %._crit_edge.loopexit.unr-lcssa ], [ %i.hf, %.lr.ph.epil ]
  %i.hg = sub i64 %5, %.0127.lcssa                ; 2 uses
  %i.hh = icmp sgt i64 %i.hg, 0
  br i1 %i.hh, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %._crit_edge, %.lr.ph143
  %.1141 = phi i64 [ %i.hn, %.lr.ph143 ], [ %i.hg, %._crit_edge ] ; 3 uses
  %.1129140 = phi i64 [ %i.hl, %.lr.ph143 ], [ %.0128.lcssa, %._crit_edge ] ; 2 uses
  %i.hi = mul nsw i64 %.1141, %i.b
  %i.hj = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.hi
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !30
  %i.hl = add nuw nsw i64 %.1129140, 1
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1129140
  store double %i.hk, ptr %i.hm, align 8, !tbaa !30
  %i.hn = add nsw i64 %.1141, -4
  %i.ho = icmp samesign ugt i64 %.1141, 4
  br i1 %i.ho, label %.lr.ph143, label %._crit_edge144, !llvm.loop !58

._crit_edge144:                                   ; preds = %.lr.ph143, %._crit_edge
  %i.hp = load ptr, ptr %i.v, align 8, !tbaa !21  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !33
  tail call void %i.hr(ptr noundef %i.hp, ptr noundef %i.s, ptr noundef %i.s) #5
  %i.hs = load ptr, ptr %i.w, align 8, !tbaa !20  ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 56
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !33
  tail call void %i.hu(ptr noundef %i.hs, ptr noundef %.0153, ptr noundef %.0126152) #5
  %i.hv = load double, ptr %.0126152, align 8, !tbaa !30 ; 2 uses
  %i.hw = load double, ptr %i.s, align 8, !tbaa !30
  %i.hx = fmul double %i.hw, 2.000000e+00         ; 2 uses
  %i.hy = fadd double %i.hv, %i.hx
  store double %i.hy, ptr %.0126152, align 8, !tbaa !30
  %i.hz = fsub double %i.hv, %i.hx
  %i.ia = getelementptr inbounds i8, ptr %.0126152, i64 %.reass
  store double %i.hz, ptr %i.ia, align 8, !tbaa !30
  br i1 %i.y, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %._crit_edge144
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx
  br i1 %brmerge, label %.lr.ph147.preheader277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147.preheader
  %invariant.gep = getelementptr [8 x i8], ptr %.0126152, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ib = sub i64 %i.x, %index                    ; 2 uses
  %i.ic = or disjoint i64 %index, 1               ; 5 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ic
  %wide.load = load <2 x double>, ptr %i.id, align 8, !tbaa !30, !alias.scope !70 ; 2 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ib
  %i.if = getelementptr inbounds i8, ptr %i.ie, i64 -8
  %wide.load250 = load <2 x double>, ptr %i.if, align 8, !tbaa !30, !alias.scope !71
  %reverse = shufflevector <2 x double> %wide.load250, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ig = shl nuw nsw i64 %i.ic, 4
  %i.ih = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ig
  %wide.vec = load <4 x double>, ptr %i.ih, align 8, !tbaa !30, !alias.scope !72 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec251 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ii = fmul <2 x double> %reverse, %strided.vec251
  %i.ij = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %wide.load, <2 x double> %i.ii)
  %i.ik = fmul <2 x double> %i.ij, splat (double 2.000000e+00) ; 2 uses
  %i.il = fneg <2 x double> %wide.load
  %i.im = fmul <2 x double> %strided.vec251, %i.il
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %reverse, <2 x double> %i.im)
  %i.io = fmul <2 x double> %i.in, splat (double 2.000000e+00) ; 2 uses
  %i.ip = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ic ; 2 uses
  %wide.load252 = load <2 x double>, ptr %i.ip, align 8, !tbaa !30, !alias.scope !73, !noalias !74 ; 2 uses
  %i.iq = fadd <2 x double> %wide.load252, %i.ik
  store <2 x double> %i.iq, ptr %i.ip, align 8, !tbaa !30, !alias.scope !73, !noalias !74
  %i.ir = fsub <2 x double> %wide.load252, %i.ik
  %i.is = sub nsw i64 %i.z, %i.ic
  %i.it = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.is
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -8
  %reverse253 = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse253, ptr %i.iu, align 8, !tbaa !30, !alias.scope !75, !noalias !76
  %i.iv = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ib
  %i.iw = getelementptr inbounds i8, ptr %i.iv, i64 -8 ; 2 uses
  %wide.load254 = load <2 x double>, ptr %i.iw, align 8, !tbaa !30, !alias.scope !77, !noalias !78 ; 2 uses
  %reverse255 = shufflevector <2 x double> %wide.load254, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ix = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse256 = fsub <2 x double> %wide.load254, %i.ix
  store <2 x double> %reverse256, ptr %i.iw, align 8, !tbaa !30, !alias.scope !77, !noalias !78
  %i.iy = fadd <2 x double> %i.io, %reverse255
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ic
  store <2 x double> %i.iy, ptr %gep, align 8, !tbaa !30, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge148, label %.lr.ph147.preheader277

.lr.ph147.preheader277:                           ; preds = %.lr.ph147.preheader, %middle.block
  %.ph = phi i64 [ %i.fc, %middle.block ], [ %i.x, %.lr.ph147.preheader ]
  %.2145.ph = phi i64 [ %i.fd, %middle.block ], [ 1, %.lr.ph147.preheader ]
  br label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph147.preheader277, %.lr.ph147
  %i.ja = phi i64 [ %i.kl, %.lr.ph147 ], [ %.ph, %.lr.ph147.preheader277 ] ; 2 uses
  %.2145 = phi i64 [ %i.kk, %.lr.ph147 ], [ %.2145.ph, %.lr.ph147.preheader277 ] ; 6 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2145
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !30 ; 2 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ja
  %i.je = load double, ptr %i.jd, align 8, !tbaa !30 ; 2 uses
  %.idx135 = shl nuw nsw i64 %.2145, 4
  %i.jf = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx135
  %i.jg = fneg double %i.jc
  %i.jh = load <2 x double>, ptr %i.jf, align 8, !tbaa !30 ; 2 uses
  %i.ji = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = insertelement <2 x double> poison, double %i.je, i64 0
  %i.jk = insertelement <2 x double> %i.jj, double %i.jg, i64 1
  %i.jl = fmul <2 x double> %i.ji, %i.jk
  %i.jm = shufflevector <2 x double> %i.jh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jn = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jo = insertelement <2 x double> %i.jn, double %i.je, i64 1
  %i.jp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.jo, <2 x double> %i.jl) ; 2 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 0
  %i.jr = fmul double %i.jq, 2.000000e+00         ; 2 uses
  %i.js = extractelement <2 x double> %i.jp, i64 1
  %i.jt = fmul double %i.js, 2.000000e+00         ; 2 uses
  %i.ju = mul nsw i64 %.2145, %i.d
  %i.jv = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ju ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !30 ; 2 uses
  %i.jx = fadd double %i.jw, %i.jr
  store double %i.jx, ptr %i.jv, align 8, !tbaa !30
  %i.jy = fsub double %i.jw, %i.jr
  %i.jz = sub nsw i64 %i.z, %.2145
  %i.ka = mul nsw i64 %i.jz, %i.d
  %i.kb = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ka
  store double %i.jy, ptr %i.kb, align 8, !tbaa !30
  %i.kc = mul nsw i64 %i.ja, %i.d
  %i.kd = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.kc ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !30 ; 2 uses
  %i.kf = fsub double %i.ke, %i.jt
  store double %i.kf, ptr %i.kd, align 8, !tbaa !30
  %i.kg = fadd double %i.jt, %i.ke
  %i.kh = add nuw nsw i64 %.2145, %i.g
  %i.ki = mul nsw i64 %i.kh, %i.d
  %i.kj = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ki
  store double %i.kg, ptr %i.kj, align 8, !tbaa !30
  %i.kk = add nuw nsw i64 %.2145, 1               ; 4 uses
  %i.kl = sub nsw i64 %i.g, %i.kk                 ; 3 uses
  %i.km = icmp slt i64 %i.kk, %i.kl
  br i1 %i.km, label %.lr.ph147, label %._crit_edge148, !llvm.loop !68

._crit_edge148:                                   ; preds = %.lr.ph147, %middle.block, %._crit_edge144
  %.2.lcssa = phi i64 [ 1, %._crit_edge144 ], [ %i.fd, %middle.block ], [ %i.kk, %.lr.ph147 ] ; 5 uses
  %.lcssa = phi i64 [ %i.x, %._crit_edge144 ], [ %i.fc, %middle.block ], [ %i.kl, %.lr.ph147 ]
  %i.kn = icmp eq i64 %.2.lcssa, %.lcssa
  br i1 %i.kn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge148
  %.idx134 = shl nuw nsw i64 %.2.lcssa, 4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx134
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !30
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.2.lcssa
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !30
  %i.ks = fmul double %i.kp, %i.kr
  %i.kt = fmul double %i.ks, 2.000000e+00         ; 2 uses
  %i.ku = mul nsw i64 %.2.lcssa, %i.d
  %i.kv = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.ku ; 2 uses
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !30 ; 2 uses
  %i.kx = fadd double %i.kw, %i.kt
  store double %i.kx, ptr %i.kv, align 8, !tbaa !30
  %i.ky = fsub double %i.kw, %i.kt
  %i.kz = sub nsw i64 %i.z, %.2.lcssa
  %i.la = mul nsw i64 %i.kz, %i.d
  %i.lb = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.la
  store double %i.ky, ptr %i.lb, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge148, %bb.b
  %i.lc = add nuw nsw i64 %.0130151, 1            ; 2 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.k
  %i.le = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.m
  %exitcond159.not = icmp eq i64 %i.lc, %i.i
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
end_hunk_0
