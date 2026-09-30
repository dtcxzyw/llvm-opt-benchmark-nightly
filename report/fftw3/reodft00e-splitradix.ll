Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft00e-splitradix?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mkplan:bb.a
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
  %scevgep = getelementptr i8, ptr %2, i64 8      ; 6 uses
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
  %scevgep171 = getelementptr i8, ptr %i.ao, i64 16 ; 6 uses
  %i.ap = shl i64 %i.m, 3                         ; 3 uses
  %i.aq = shl i64 %i.g, 4                         ; 2 uses
  %i.ar = add i64 %i.aq, -8
  %i.as = sub i64 %i.ar, %i.am
  %scevgep172 = getelementptr i8, ptr %2, i64 %i.as ; 3 uses
  %i.at = getelementptr i8, ptr %2, i64 %i.af
  %scevgep173 = getelementptr i8, ptr %i.at, i64 %i.aq ; 3 uses
  %i.au = shl i64 %i.g, 3                         ; 4 uses
  %i.av = add i64 %i.au, -8
  %i.aw = sub i64 %i.av, %i.am                    ; 2 uses
  %scevgep174 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = add i64 %i.af, %i.au                    ; 2 uses
  %scevgep175 = getelementptr i8, ptr %2, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %2, i64 %i.au
  %scevgep176 = getelementptr i8, ptr %i.ay, i64 8 ; 5 uses
  %i.az = getelementptr i8, ptr %2, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.am
  %scevgep177 = getelementptr i8, ptr %i.ba, i64 16 ; 5 uses
  %scevgep178 = getelementptr i8, ptr %i.s, i64 %i.aw ; 4 uses
  %scevgep179 = getelementptr i8, ptr %i.s, i64 %i.au ; 4 uses
  %scevgep180 = getelementptr i8, ptr %i.s, i64 8 ; 4 uses
  %i.bb = getelementptr i8, ptr %i.s, i64 %i.am   ; 2 uses
  %scevgep181 = getelementptr i8, ptr %i.bb, i64 16
  %i.bc = shl i64 %i.al, 4
  %i.bd = getelementptr i8, ptr %i.p, i64 %i.bc   ; 2 uses
  %i.be = insertelement <2 x ptr> poison, ptr %i.bb, i64 0
  %i.bf = insertelement <2 x ptr> %i.be, ptr %i.bd, i64 1
  %i.bg = getelementptr i8, <2 x ptr> %i.bf, i64 16 ; 2 uses
  %scevgep182 = getelementptr i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bh = insertelement <4 x ptr> poison, ptr %scevgep174, i64 0 ; 2 uses
  %i.bi = shufflevector <4 x ptr> %i.bh, <4 x ptr> poison, <4 x i32> zeroinitializer
  %3 = insertelement <4 x ptr> poison, ptr %scevgep177, i64 0
  %4 = insertelement <4 x ptr> %3, ptr %scevgep179, i64 1
  %5 = insertelement <4 x ptr> poison, ptr %scevgep176, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %scevgep178, i64 1
  %i.bj = insertelement <4 x ptr> %6, ptr %scevgep180, i64 2
  %7 = insertelement <4 x ptr> %i.bj, ptr %i.p, i64 3
  %i.bk = insertelement <4 x ptr> poison, ptr %scevgep175, i64 0 ; 2 uses
  %i.bl = shufflevector <4 x ptr> %i.bk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bm = insertelement <4 x ptr> poison, ptr %scevgep172, i64 0
  %i.bn = shufflevector <4 x ptr> %i.bm, <4 x ptr> poison, <4 x i32> zeroinitializer
  %8 = insertelement <4 x ptr> %i.bk, ptr %scevgep177, i64 1
  %9 = insertelement <4 x ptr> %8, ptr %scevgep179, i64 2
  %i.bo = insertelement <4 x ptr> %i.bh, ptr %scevgep176, i64 1
  %10 = insertelement <4 x ptr> %i.bo, ptr %scevgep178, i64 2
  %11 = insertelement <4 x ptr> %10, ptr %scevgep180, i64 3
  %12 = insertelement <4 x ptr> poison, ptr %scevgep173, i64 0
  %13 = shufflevector <4 x ptr> %12, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bp = insertelement <2 x ptr> poison, ptr %scevgep178, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %scevgep180, i64 1
  %i.br = insertelement <2 x ptr> poison, ptr %scevgep177, i64 0
  %i.bs = shufflevector <2 x ptr> %i.br, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bt = insertelement <2 x ptr> poison, ptr %scevgep176, i64 0
  %i.bu = shufflevector <2 x ptr> %i.bt, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bv = insertelement <2 x ptr> poison, ptr %scevgep179, i64 0
  %i.bw = shufflevector <2 x ptr> %i.bg, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %14 = shufflevector <4 x ptr> %4, <4 x ptr> %i.bw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bx = shufflevector <2 x ptr> %i.bv, <2 x ptr> %i.bg, <2 x i32> <i32 0, i32 2>
  %15 = shufflevector <4 x ptr> %9, <4 x ptr> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.by = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %xtraiter = and i64 %i.by, 7                    ; 3 uses
  %i.bz = icmp ult i64 %i.f, 29
  %unroll_iter = and i64 %i.by, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod304 = icmp ne i64 %xtraiter, 0
  %i.ca = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.cb = add nsw i64 %i.ca, -4                   ; 2 uses
  %i.cc = icmp ne i64 %i.cb, 0
  %i.cd = zext i1 %i.cc to i64                    ; 2 uses
  %i.ce = sub i64 %i.cb, %i.cd
  %i.cf = lshr i64 %i.ce, 1
  %i.cg = add nuw i64 %i.cf, %i.cd
  %i.ch = add i64 %i.cg, 1                        ; 4 uses
  %min.iters.check = icmp ugt i64 %i.ch, 13
  %ident.check.not = icmp eq i64 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep173
  %bound1 = icmp ult ptr %scevgep172, %scevgep171
  %found.conflict = and i1 %bound0, %bound1
  %bound0184 = icmp ult ptr %scevgep, %scevgep175
  %bound1185 = icmp ult ptr %scevgep174, %scevgep171
  %found.conflict186 = and i1 %bound0184, %bound1185
  %bound0189 = icmp ult ptr %scevgep, %scevgep177
  %bound1190 = icmp ult ptr %scevgep176, %scevgep171
  %found.conflict191 = and i1 %bound0189, %bound1190
  %bound0195 = icmp ult ptr %scevgep, %scevgep179
  %bound1196 = icmp ult ptr %scevgep178, %scevgep171
  %found.conflict197 = and i1 %bound0195, %bound1196
  %bound0200 = icmp ult ptr %scevgep, %scevgep181
  %bound1201 = icmp ult ptr %scevgep180, %scevgep171
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0205 = icmp ult ptr %scevgep, %scevgep182
  %bound1206 = icmp ult ptr %i.p, %scevgep171
  %found.conflict207 = and i1 %bound0205, %bound1206
  %i.ci = icmp ult <4 x ptr> %i.bn, %15
  %i.cj = icmp ult <4 x ptr> %11, %13
  %bound0232 = icmp ult ptr %scevgep172, %scevgep182
  %bound1233 = icmp ult ptr %i.p, %scevgep173
  %i.ck = icmp ult <4 x ptr> %i.bi, %14
  %i.cl = icmp ult <4 x ptr> %7, %i.bl
  %i.cm = icmp ult <2 x ptr> %i.bu, %i.bx
  %i.cn = icmp ult <2 x ptr> %i.bq, %i.bs
  %bound0268 = icmp ult ptr %scevgep176, %scevgep182
  %bound1269 = icmp ult ptr %i.p, %scevgep177
  %stride.check187 = icmp slt i64 %i.ap, 0
  %i.co = shufflevector <2 x i1> %i.cm, <2 x i1> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison>
  %i.cp = insertelement <8 x i1> %i.co, i1 %bound0268, i64 6
  %i.cq = insertelement <8 x i1> %i.cp, i1 %stride.check187, i64 7
  %i.cr = shufflevector <4 x i1> %i.ck, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cs = shufflevector <8 x i1> %i.cr, <8 x i1> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ct = shufflevector <2 x i1> %i.cn, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cu = shufflevector <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, <8 x i1> %i.ct, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 8, i32 9, i32 poison, i32 7>
  %i.cv = insertelement <8 x i1> %i.cu, i1 %bound1269, i64 6
  %i.cw = shufflevector <4 x i1> %i.cl, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cx = shufflevector <8 x i1> %i.cw, <8 x i1> %i.cv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.cy = and <8 x i1> %i.cs, %i.cx
  %stride.check230 = icmp slt i64 %i.ap, 0
  %stride.check271 = icmp slt i64 %i.ap, 0
  %i.cz = bitcast <8 x i1> %i.cy to i8
  %i.da = icmp ne i8 %i.cz, 0
  %i.db = insertelement <8 x i1> poison, i1 %bound0232, i64 4
  %i.dc = insertelement <8 x i1> %i.db, i1 %stride.check230, i64 5
  %i.dd = insertelement <8 x i1> %i.dc, i1 %stride.check271, i64 6
  %i.de = insertelement <8 x i1> %i.dd, i1 %i.da, i64 7
  %i.df = shufflevector <4 x i1> %i.ci, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dg = shufflevector <8 x i1> %i.df, <8 x i1> %i.de, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dh = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true, i1 true, i1 true>, i1 %bound1233, i64 4
  %i.di = shufflevector <4 x i1> %i.cj, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dj = shufflevector <8 x i1> %i.di, <8 x i1> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.dk = and <8 x i1> %i.dg, %i.dj
  %i.dl = bitcast <8 x i1> %i.dk to i8
  %i.dm = icmp ne i8 %i.dl, 0
  %op.rdx293 = or i1 %i.dm, %found.conflict186
  %op.rdx294 = or i1 %found.conflict, %found.conflict191
  %op.rdx295 = or i1 %found.conflict197, %found.conflict202
  %op.rdx296 = or i1 %op.rdx293, %op.rdx294
  %op.rdx297 = or i1 %op.rdx295, %found.conflict207
  %op.rdx298 = or i1 %op.rdx296, %op.rdx297
  %n.vec = and i64 %i.ch, -2                      ; 3 uses
  %i.dn = sub i64 %i.x, %n.vec                    ; 2 uses
  %i.do = or i64 %i.ch, 1                         ; 2 uses
  %cmp.n = icmp eq i64 %i.ch, %n.vec
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.c
  %.0153 = phi ptr [ %1, %.preheader.lr.ph ], [ %i.jo, %bb.c ] ; 12 uses
  %.0126152 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.jp, %bb.c ] ; 15 uses
  %.0130151 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.jn, %bb.c ]
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  br i1 %i.bz, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0127138 = phi i64 [ %i.fk, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 9 uses
  %.0128137 = phi i64 [ %i.fh, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 9 uses
  %niter = phi i64 [ %niter.next.7, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.dp = mul nsw i64 %.0127138, %i.b
  %i.dq = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  store double %i.dr, ptr %i.ds, align 8, !tbaa !30
  %i.dt = add nuw nsw i64 %.0127138, 4
  %i.du = mul nsw i64 %i.dt, %i.b
  %i.dv = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.du
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store double %i.dw, ptr %i.dy, align 8, !tbaa !30
  %i.dz = add nuw nsw i64 %.0127138, 8
  %i.ea = mul nsw i64 %i.dz, %i.b
  %i.eb = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ea
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !30
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store double %i.ec, ptr %i.ee, align 8, !tbaa !30
  %i.ef = add nuw nsw i64 %.0127138, 12
  %i.eg = mul nsw i64 %i.ef, %i.b
  %i.eh = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !30
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store double %i.ei, ptr %i.ek, align 8, !tbaa !30
  %i.el = add nuw nsw i64 %.0127138, 16
  %i.em = mul nsw i64 %i.el, %i.b
  %i.en = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !30
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store double %i.eo, ptr %i.eq, align 8, !tbaa !30
  %i.er = add nuw nsw i64 %.0127138, 20
  %i.es = mul nsw i64 %i.er, %i.b
  %i.et = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !30
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  store double %i.eu, ptr %i.ew, align 8, !tbaa !30
  %i.ex = add nuw nsw i64 %.0127138, 24
  %i.ey = mul nsw i64 %i.ex, %i.b
  %i.ez = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !30
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  store double %i.fa, ptr %i.fc, align 8, !tbaa !30
  %i.fd = add nuw nsw i64 %.0127138, 28
  %i.fe = mul nsw i64 %i.fd, %i.b
  %i.ff = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fh = add nuw nsw i64 %.0128137, 8            ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 56
  store double %i.fg, ptr %i.fj, align 8, !tbaa !30
  %i.fk = add nuw nsw i64 %.0127138, 32           ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0127138.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %i.fk, %._crit_edge.loopexit.unr-lcssa ]
  %.0128137.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.fh, %._crit_edge.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod304)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0127138.epil = phi i64 [ %i.fq, %.lr.ph.epil ], [ %.0127138.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0128137.epil = phi i64 [ %i.fo, %.lr.ph.epil ], [ %.0128137.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.fl = mul nsw i64 %.0127138.epil, %i.b
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !30
  %i.fo = add nuw nsw i64 %.0128137.epil, 1
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0128137.epil
  store double %i.fn, ptr %i.fp, align 8, !tbaa !30
  %i.fq = add nuw nsw i64 %.0127138.epil, 4       ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader
  %.0128.lcssa = phi i64 [ 0, %.preheader ], [ %i.ac, %.lr.ph.epil ], [ %i.ac, %._crit_edge.loopexit.unr-lcssa ]
  %.0127.lcssa = phi i64 [ 1, %.preheader ], [ %i.fk, %._crit_edge.loopexit.unr-lcssa ], [ %i.fq, %.lr.ph.epil ]
  %i.fr = sub nsw i64 %i.u, %.0127.lcssa          ; 2 uses
  %i.fs = icmp sgt i64 %i.fr, 0
  br i1 %i.fs, label %.lr.ph143, label %._crit_edge144

.lr.ph143:                                        ; preds = %._crit_edge, %.lr.ph143
  %.1141 = phi i64 [ %i.fy, %.lr.ph143 ], [ %i.fr, %._crit_edge ] ; 3 uses
  %.1129140 = phi i64 [ %i.fw, %.lr.ph143 ], [ %.0128.lcssa, %._crit_edge ] ; 2 uses
  %i.ft = mul nsw i64 %.1141, %i.b
  %i.fu = getelementptr inbounds [8 x i8], ptr %.0153, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !30
  %i.fw = add nuw nsw i64 %.1129140, 1
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.1129140
  store double %i.fv, ptr %i.fx, align 8, !tbaa !30
  %i.fy = add nsw i64 %.1141, -4
  %i.fz = icmp samesign ugt i64 %.1141, 4
  br i1 %i.fz, label %.lr.ph143, label %._crit_edge144, !llvm.loop !58

._crit_edge144:                                   ; preds = %.lr.ph143, %._crit_edge
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !21  ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !33
  tail call void %i.gc(ptr noundef %i.ga, ptr noundef %i.s, ptr noundef %i.s) #5
  %i.gd = load ptr, ptr %i.w, align 8, !tbaa !20  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 56
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !33
  tail call void %i.gf(ptr noundef %i.gd, ptr noundef %.0153, ptr noundef %.0126152) #5
  %i.gg = load double, ptr %.0126152, align 8, !tbaa !30 ; 2 uses
  %i.gh = load double, ptr %i.s, align 8, !tbaa !30
  %i.gi = fmul double %i.gh, 2.000000e+00         ; 2 uses
  %i.gj = fadd double %i.gg, %i.gi
  store double %i.gj, ptr %.0126152, align 8, !tbaa !30
  %i.gk = fsub double %i.gg, %i.gi
  %i.gl = getelementptr inbounds i8, ptr %.0126152, i64 %.reass
  store double %i.gk, ptr %i.gl, align 8, !tbaa !30
  br i1 %i.y, label %.lr.ph147.preheader, label %._crit_edge148

.lr.ph147.preheader:                              ; preds = %._crit_edge144
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %op.rdx298
  br i1 %brmerge, label %.lr.ph147.preheader299, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph147.preheader
  %invariant.gep = getelementptr [8 x i8], ptr %.0126152, i64 %i.g
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gm = sub i64 %i.x, %index                    ; 2 uses
  %i.gn = or disjoint i64 %index, 1               ; 5 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.gn
  %wide.load = load <2 x double>, ptr %i.go, align 8, !tbaa !30, !alias.scope !70 ; 2 uses
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.gm
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 -8
  %wide.load273 = load <2 x double>, ptr %i.gq, align 8, !tbaa !30, !alias.scope !71
  %reverse = shufflevector <2 x double> %wide.load273, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gn, 4
  %i.gs = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.gr
  %wide.vec = load <4 x double>, ptr %i.gs, align 8, !tbaa !30, !alias.scope !72 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec274 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gt = fmul <2 x double> %reverse, %strided.vec274
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %wide.load, <2 x double> %i.gt)
  %i.gv = fmul <2 x double> %i.gu, splat (double 2.000000e+00) ; 2 uses
  %i.gw = fneg <2 x double> %wide.load
  %i.gx = fmul <2 x double> %strided.vec274, %i.gw
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %reverse, <2 x double> %i.gx)
  %i.gz = fmul <2 x double> %i.gy, splat (double 2.000000e+00) ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.gn ; 2 uses
  %wide.load275 = load <2 x double>, ptr %i.ha, align 8, !tbaa !30, !alias.scope !73, !noalias !74 ; 2 uses
  %i.hb = fadd <2 x double> %wide.load275, %i.gv
  store <2 x double> %i.hb, ptr %i.ha, align 8, !tbaa !30, !alias.scope !73, !noalias !74
  %i.hc = fsub <2 x double> %wide.load275, %i.gv
  %i.hd = sub nsw i64 %i.z, %i.gn
  %i.he = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.hd
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 -8
  %reverse276 = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse276, ptr %i.hf, align 8, !tbaa !30, !alias.scope !75, !noalias !76
  %i.hg = getelementptr inbounds [8 x i8], ptr %.0126152, i64 %i.gm
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -8 ; 2 uses
  %wide.load277 = load <2 x double>, ptr %i.hh, align 8, !tbaa !30, !alias.scope !77, !noalias !78 ; 2 uses
  %reverse278 = shufflevector <2 x double> %wide.load277, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hi = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse279 = fsub <2 x double> %wide.load277, %i.hi
  store <2 x double> %reverse279, ptr %i.hh, align 8, !tbaa !30, !alias.scope !77, !noalias !78
  %i.hj = fadd <2 x double> %i.gz, %reverse278
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.gn
  store <2 x double> %i.hj, ptr %gep, align 8, !tbaa !30, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !67
end_hunk_0
