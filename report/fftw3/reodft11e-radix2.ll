Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/reodft11e-radix2?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@mkplan:bb.a

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  call void @fftw_ops_zero(ptr noundef nonnull %i.bk) #5
  %i.bl = load i64, ptr %i.al, align 8, !tbaa !23
  call void @fftw_ops_madd2(i64 noundef %i.bl, ptr noundef nonnull %3, ptr noundef nonnull %i.bk) #5
  %i.bm = load i64, ptr %i.al, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @fftw_ops_madd2(i64 noundef %i.bm, ptr noundef nonnull %i.bn, ptr noundef nonnull %i.bk) #5
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.e, %bb.b, %bb.c, %bb.d, %bb.a, %applicable.exit.thread46, %bb.h
  %.0 = phi ptr [ %i.aa, %bb.h ], [ null, %bb.e ], [ null, %applicable.exit.thread46 ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
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
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = shl nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.e, 4
  %i.h = add nsw i64 %i.g, 1
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull @awake.reodft010e_tw, i64 noundef %i.f, i64 noundef 1, i64 noundef %i.h) #5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load i64, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.k = shl nsw i64 %i.j, 3
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.i, ptr noundef nonnull @awake.reodft11e_tw, i64 noundef %i.k, i64 noundef 1, i64 noundef %i.j) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = tail call ptr @fftw_rdft_kind_str(i32 noundef %i.c) #5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, ptr noundef %i.j) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #5
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_d(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_re11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 17 uses
  %i.g = sdiv i64 %i.f, 2                         ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 6 uses
  %i.q = shl i64 %i.f, 3
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #5 ; 26 uses
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %.lr.ph251, label %._crit_edge252

.lr.ph251:                                        ; preds = %bb.a
  %i.t = add nsw i64 %i.f, -1                     ; 3 uses
  %i.u = mul nsw i64 %i.t, %i.b
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.g ; 11 uses
  %i.w = icmp sgt i64 %i.f, 5                     ; 2 uses
  %i.x = add nsw i64 %i.g, -1                     ; 2 uses
  %i.y = mul nsw i64 %i.x, %i.b
  %i.z = mul nsw i64 %i.g, %i.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = mul nsw i64 %i.t, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.ad = add nsw i64 %smax, -3
  %i.ae = lshr i64 %i.ad, 1                       ; 4 uses
  %i.af = add nuw nsw i64 %i.ae, 2                ; 5 uses
  %i.ag = mul nsw i64 %i.x, %i.d
  %i.ah = sub nsw i64 %i.f, %i.g
  %i.ai = mul nsw i64 %i.ah, %i.d
  %i.aj = shl i64 %i.ae, 4                        ; 5 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.aj   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ak, i64 32  ; 3 uses
  %scevgep397 = getelementptr i8, ptr %i.p, i64 16 ; 3 uses
  %i.al = shl i64 %i.b, 3
  %i.am = or disjoint i64 %i.aj, 8
  %i.an = mul i64 %i.b, %i.am
  %i.ao = shl i64 %i.b, 4
  %i.ap = add i64 %i.aj, 16
  %i.aq = mul i64 %i.b, %i.ap
  %i.ar = shl i64 %i.f, 3                         ; 4 uses
  %i.as = add i64 %i.ar, -24
  %i.at = sub i64 %i.as, %i.aj
  %i.au = mul i64 %i.b, %i.at
  %i.av = add i64 %i.f, 2305843009213693949
  %i.aw = mul i64 %i.b, %i.av
  %i.ax = shl i64 %i.aw, 3
  %i.ay = add i64 %i.ar, -16
  %i.az = sub i64 %i.ay, %i.aj
  %i.ba = mul i64 %i.b, %i.az
  %i.bb = shl i64 %i.k, 3
  %i.bc = add i64 %i.f, 2305843009213693950
  %i.bd = mul i64 %i.b, %i.bc
  %i.be = shl i64 %i.bd, 3
  %scevgep398 = getelementptr i8, ptr %i.r, i64 %i.ar ; 4 uses
  %i.bf = add i64 %i.ar, -8
  %i.bg = shl nuw i64 %i.ae, 3                    ; 4 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %scevgep399 = getelementptr i8, ptr %i.r, i64 %i.bh ; 4 uses
  %i.bi = shl i64 %i.g, 3                         ; 3 uses
  %i.bj = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bg
  %scevgep400 = getelementptr i8, ptr %i.bk, i64 16 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.r, i64 %i.bi
  %scevgep401 = getelementptr i8, ptr %i.bl, i64 8 ; 5 uses
  %i.bm = add i64 %i.bi, -8
  %i.bn = sub i64 %i.bm, %i.bg
  %scevgep402 = getelementptr i8, ptr %i.r, i64 %i.bn ; 5 uses
  %i.bo = getelementptr i8, ptr %i.r, i64 %i.bg   ; 2 uses
  %i.bp = insertelement <2 x ptr> poison, ptr %i.bo, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.ak, i64 1
  %i.br = getelementptr i8, <2 x ptr> %i.bq, <2 x i64> <i64 16, i64 32>
  %scevgep403 = getelementptr i8, ptr %i.bo, i64 16 ; 4 uses
  %i.bs = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.p, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, <2 x i64> <i64 8, i64 16>
  %scevgep404 = getelementptr i8, ptr %i.r, i64 8 ; 4 uses
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep404, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep403, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep402, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x ptr> poison, ptr %scevgep401, i64 0
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <4 x ptr> poison, ptr %scevgep400, i64 0
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x ptr> poison, ptr %scevgep399, i64 0 ; 2 uses
  %i.ci = shufflevector <4 x ptr> %i.ch, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <4 x ptr> poison, ptr %scevgep398, i64 0 ; 2 uses
  %i.ck = shufflevector <4 x ptr> %i.cj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cl = insertelement <4 x ptr> %i.ch, ptr %scevgep404, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %scevgep401, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %scevgep402, i64 3
  %i.co = insertelement <4 x ptr> %i.cj, ptr %scevgep403, i64 1
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep400, i64 2
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %i.v, i64 3
  %i.cr = shufflevector <2 x ptr> %i.br, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = add nuw nsw i64 %i.ae, 1                ; 4 uses
  %min.iters.check = icmp slt i64 %i.f, 34
  %3 = getelementptr i8, ptr %1, i64 %i.be
  %4 = getelementptr i8, ptr %1, i64 %i.ba
  %5 = getelementptr i8, ptr %1, i64 %i.ax
  %6 = getelementptr i8, ptr %1, i64 %i.au
  %7 = getelementptr i8, ptr %1, i64 %i.aq
  %8 = getelementptr i8, ptr %1, i64 %i.ao
  %9 = getelementptr i8, ptr %1, i64 %i.an
  %10 = getelementptr i8, ptr %1, i64 %i.al
  %bound0 = icmp ult ptr %scevgep404, %i.v
  %bound1 = icmp ult ptr %scevgep402, %scevgep403
  %found.conflict = and i1 %bound0, %bound1
  %bound0405 = icmp ult ptr %scevgep404, %scevgep400
  %bound1406 = icmp ult ptr %scevgep401, %scevgep403
  %found.conflict407 = and i1 %bound0405, %bound1406
  %11 = insertelement <4 x ptr> %i.cs, ptr %scevgep402, i64 2
  %12 = insertelement <4 x ptr> %11, ptr %scevgep399, i64 3
  %13 = icmp ult <4 x ptr> %12, %i.cq
  %14 = insertelement <4 x ptr> %i.cr, ptr %i.v, i64 2
  %15 = insertelement <4 x ptr> %14, ptr %scevgep398, i64 3
  %16 = icmp ult <4 x ptr> %i.cn, %15
  %i.cu = and <4 x i1> %16, %13
  %bound0456 = icmp ult ptr %scevgep402, %scevgep
  %bound1457 = icmp ult ptr %scevgep397, %i.v
  %found.conflict458 = and i1 %bound0456, %bound1457
  %bound0460 = icmp ult ptr %scevgep401, %scevgep398
  %bound1461 = icmp ult ptr %scevgep399, %scevgep400
  %found.conflict462 = and i1 %bound0460, %bound1461
  %bound0480 = icmp ult ptr %scevgep401, %scevgep
  %bound1481 = icmp ult ptr %scevgep397, %scevgep400
  %found.conflict482 = and i1 %bound0480, %bound1481
  %bound0500 = icmp ult ptr %scevgep399, %scevgep
  %bound1501 = icmp ult ptr %scevgep397, %scevgep398
  %found.conflict502 = and i1 %bound0500, %bound1501
  %i.cv = bitcast <4 x i1> %i.cu to i4
  %i.cw = icmp ne i4 %i.cv, 0
  %op.rdx518 = or i1 %i.cw, %found.conflict
  %op.rdx519 = or i1 %found.conflict407, %found.conflict458
  %op.rdx520 = or i1 %found.conflict462, %found.conflict482
  %op.rdx522 = or i1 %op.rdx518, %op.rdx519
  %invariant.op = or i1 %found.conflict502, %op.rdx520
  %invariant.op532 = or i1 %invariant.op, %op.rdx522
  %n.vec = and i64 %i.ct, 9223372036854775806     ; 2 uses
  %i.cx = shl nuw i64 %i.ct, 1
  %i.cy = or i64 %i.cx, 2                         ; 2 uses
  %i.cz = or i64 %i.ct, 1
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph251, %bb.f
  %.0249 = phi ptr [ %1, %.lr.ph251 ], [ %i.nu, %bb.f ] ; 17 uses
  %.0226248 = phi ptr [ %2, %.lr.ph251 ], [ %i.nv, %bb.f ] ; 9 uses
  %.0228247 = phi i64 [ 0, %.lr.ph251 ], [ %i.nt, %bb.f ] ; 2 uses
  %i.da = load double, ptr %.0249, align 8, !tbaa !22
  %i.db = fmul double %i.da, 2.000000e+00
  store double %i.db, ptr %i.r, align 8, !tbaa !22
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.u
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !22
  %i.de = fmul double %i.dd, 2.000000e+00
  store double %i.de, ptr %i.v, align 8, !tbaa !22
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader525, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.df = mul i64 %.0228247, %i.bb                ; 8 uses
  %i.dg = getelementptr i8, ptr %3, i64 %i.df     ; 4 uses
  %i.dh = getelementptr i8, ptr %4, i64 %i.df     ; 4 uses
  %i.di = getelementptr i8, ptr %5, i64 %i.df     ; 4 uses
  %i.dj = getelementptr i8, ptr %6, i64 %i.df     ; 4 uses
  %i.dk = getelementptr i8, ptr %7, i64 %i.df     ; 4 uses
  %i.dl = getelementptr i8, ptr %8, i64 %i.df     ; 4 uses
  %i.dm = getelementptr i8, ptr %9, i64 %i.df     ; 4 uses
  %i.dn = getelementptr i8, ptr %10, i64 %i.df    ; 4 uses
  %i.do = icmp ult ptr %i.dg, %i.dh
  %i.dp = select i1 %i.do, ptr %i.dg, ptr %i.dh
  %i.dq = icmp ugt ptr %i.dg, %i.dh
  %i.dr = select i1 %i.dq, ptr %i.dg, ptr %i.dh
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = icmp ult ptr %i.di, %i.dj
  %i.du = select i1 %i.dt, ptr %i.di, ptr %i.dj
  %i.dv = icmp ugt ptr %i.di, %i.dj
  %i.dw = select i1 %i.dv, ptr %i.di, ptr %i.dj
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = icmp ult ptr %i.dk, %i.dl
  %i.dz = select i1 %i.dy, ptr %i.dk, ptr %i.dl
  %i.ea = icmp ugt ptr %i.dk, %i.dl
  %i.eb = select i1 %i.ea, ptr %i.dk, ptr %i.dl
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = icmp ult ptr %i.dm, %i.dn
  %i.ee = select i1 %i.ed, ptr %i.dm, ptr %i.dn
  %i.ef = icmp ugt ptr %i.dm, %i.dn
  %i.eg = select i1 %i.ef, ptr %i.dm, ptr %i.dn
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = insertelement <4 x ptr> poison, ptr %i.ds, i64 0
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %i.dx, i64 1
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %i.ec, i64 2
  %i.el = insertelement <4 x ptr> %i.ek, ptr %i.eh, i64 3 ; 4 uses
  %i.em = icmp ult <4 x ptr> %i.bw, %i.el
  %i.en = insertelement <4 x ptr> poison, ptr %i.dp, i64 0
  %i.eo = insertelement <4 x ptr> %i.en, ptr %i.du, i64 1
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %i.dz, i64 2
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %i.ee, i64 3 ; 4 uses
  %i.er = icmp ult <4 x ptr> %i.eq, %i.by
  %i.es = and <4 x i1> %i.em, %i.er
  %i.et = icmp ult <4 x ptr> %i.ca, %i.el
  %i.eu = icmp ult <4 x ptr> %i.eq, %i.cc
  %i.ev = and <4 x i1> %i.et, %i.eu
  %i.ew = icmp ult <4 x ptr> %i.ce, %i.el
  %i.ex = icmp ult <4 x ptr> %i.eq, %i.cg
  %i.ey = and <4 x i1> %i.ew, %i.ex
  %i.ez = icmp ult <4 x ptr> %i.ci, %i.el
  %i.fa = icmp ult <4 x ptr> %i.eq, %i.ck
  %i.fb = and <4 x i1> %i.ez, %i.fa
  %rdx.op = or <4 x i1> %i.es, %i.ev
  %rdx.op507 = or <4 x i1> %rdx.op, %i.ey
  %rdx.op508 = or <4 x i1> %rdx.op507, %i.fb
  %i.fc = bitcast <4 x i1> %rdx.op508 to i4
  %i.fd = icmp ne i4 %i.fc, 0
  %op.rdx524.reass = or i1 %i.fd, %invariant.op532
  br i1 %op.rdx524.reass, label %.lr.ph.preheader525, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fe = shl i64 %index, 1                       ; 4 uses
  %i.ff = or disjoint i64 %i.fe, 2                ; 3 uses
  %i.fg = add i64 %i.fe, 4                        ; 2 uses
  %i.fh = or disjoint i64 %index, 1               ; 4 uses
  %i.fi = or disjoint i64 %i.fe, 1
  %i.fj = or disjoint i64 %i.fe, 3
  %i.fk = mul nsw i64 %i.fi, %i.b
  %i.fl = mul nsw i64 %i.fj, %i.b
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fk
  %i.fn = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fl
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !22, !alias.scope !65
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !22, !alias.scope !65
  %i.fq = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fp, i64 1 ; 2 uses
  %i.fs = mul nsw i64 %i.ff, %i.b
  %i.ft = mul nsw i64 %i.fg, %i.b
  %i.fu = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fs
  %i.fv = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ft
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !22, !alias.scope !66
  %i.fx = load double, ptr %i.fv, align 8, !tbaa !22, !alias.scope !66
  %i.fy = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fx, i64 1 ; 2 uses
  %i.ga = fadd <2 x double> %i.fr, %i.fz          ; 2 uses
  %i.gb = fsub <2 x double> %i.fr, %i.fz          ; 2 uses
  %i.gc = sub nsw i64 %i.f, %i.ff                 ; 2 uses
  %i.gd = sub nsw i64 %i.f, %i.fg                 ; 2 uses
  %i.ge = add nsw i64 %i.gc, -1
  %i.gf = add nsw i64 %i.gd, -1
  %i.gg = mul nsw i64 %i.ge, %i.b
  %i.gh = mul nsw i64 %i.gf, %i.b
  %i.gi = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gg
  %i.gj = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gh
  %i.gk = load double, ptr %i.gi, align 8, !tbaa !22, !alias.scope !67
  %i.gl = load double, ptr %i.gj, align 8, !tbaa !22, !alias.scope !67
  %i.gm = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1 ; 2 uses
  %i.go = mul nsw i64 %i.gc, %i.b
  %i.gp = mul nsw i64 %i.gd, %i.b
  %i.gq = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.go
  %i.gr = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gp
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !22, !alias.scope !68
  %i.gt = load double, ptr %i.gr, align 8, !tbaa !22, !alias.scope !68
  %i.gu = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1 ; 2 uses
  %i.gw = fadd <2 x double> %i.gn, %i.gv          ; 2 uses
  %i.gx = fsub <2 x double> %i.gn, %i.gv          ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ff
  %wide.vec = load <4 x double>, ptr %i.gy, align 8, !tbaa !22, !alias.scope !69 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 4 uses
  %strided.vec504 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.gz = fadd <2 x double> %i.ga, %i.gw          ; 2 uses
  %i.ha = fsub <2 x double> %i.ga, %i.gw          ; 2 uses
  %i.hb = fmul <2 x double> %strided.vec504, %i.gz
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.ha, <2 x double> %i.hb)
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fh
  store <2 x double> %i.hc, ptr %i.hd, align 8, !tbaa !22, !alias.scope !70, !noalias !71
  %i.he = fneg <2 x double> %i.ha
  %i.hf = fmul <2 x double> %strided.vec504, %i.he
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gz, <2 x double> %i.hf)
  %i.hh = sub nuw nsw i64 %i.g, %i.fh
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hh
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -8
  %reverse = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.hj, align 8, !tbaa !22, !alias.scope !72, !noalias !73
  %i.hk = fadd <2 x double> %i.gb, %i.gx          ; 2 uses
  %i.hl = fsub <2 x double> %i.gx, %i.gb          ; 2 uses
  %i.hm = fmul <2 x double> %strided.vec504, %i.hk
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.hl, <2 x double> %i.hm)
  %i.ho = getelementptr [8 x i8], ptr %i.v, i64 %i.fh
  store <2 x double> %i.hn, ptr %i.ho, align 8, !tbaa !22, !alias.scope !74, !noalias !75
  %i.hp = fneg <2 x double> %i.hl
  %i.hq = fmul <2 x double> %strided.vec504, %i.hp
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.hk, <2 x double> %i.hq)
  %i.hs = sub nsw i64 %i.f, %i.fh
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.hs
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -8
  %reverse505 = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse505, ptr %i.hu, align 8, !tbaa !22, !alias.scope !76, !noalias !77
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader525

.lr.ph.preheader525:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.cy, %middle.block ]
  %.0227237.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader525, %.lr.ph
  %i.hw = phi i64 [ %i.jp, %.lr.ph ], [ %.ph, %.lr.ph.preheader525 ] ; 4 uses
  %.0227237 = phi i64 [ %i.jo, %.lr.ph ], [ %.0227237.ph, %.lr.ph.preheader525 ] ; 5 uses
  %i.hx = add nsw i64 %i.hw, -1
  %i.hy = mul nsw i64 %i.hx, %i.b
  %i.hz = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !22 ; 2 uses
  %i.ib = mul nsw i64 %i.hw, %i.b
  %i.ic = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ib
  %i.id = load double, ptr %i.ic, align 8, !tbaa !22 ; 2 uses
  %i.ie = fadd double %i.ia, %i.id                ; 2 uses
  %i.if = fsub double %i.ia, %i.id                ; 2 uses
  %i.ig = sub nsw i64 %i.f, %i.hw                 ; 2 uses
  %i.ih = add nsw i64 %i.ig, -1
  %i.ii = mul nsw i64 %i.ih, %i.b
  %i.ij = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !22 ; 2 uses
  %i.il = mul nsw i64 %i.ig, %i.b
  %i.im = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !22 ; 2 uses
  %i.io = fadd double %i.ik, %i.in                ; 2 uses
  %i.ip = fsub double %i.ik, %i.in                ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hw ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !22 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.it = load double, ptr %i.is, align 8, !tbaa !22 ; 4 uses
  %i.iu = fadd double %i.ie, %i.io                ; 2 uses
  %i.iv = fsub double %i.ie, %i.io                ; 2 uses
  %i.iw = fmul double %i.it, %i.iu
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.iv, double %i.iw)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227237
  store double %i.ix, ptr %i.iy, align 8, !tbaa !22
  %i.iz = fneg double %i.iv
  %i.ja = fmul double %i.it, %i.iz
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.iu, double %i.ja)
  %i.jc = sub nuw nsw i64 %i.g, %.0227237
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.jc
  store double %i.jb, ptr %i.jd, align 8, !tbaa !22
  %i.je = fadd double %i.if, %i.ip                ; 2 uses
  %i.jf = fsub double %i.ip, %i.if                ; 2 uses
  %i.jg = fmul double %i.it, %i.je
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.jf, double %i.jg)
  %i.ji = getelementptr [8 x i8], ptr %i.v, i64 %.0227237
  store double %i.jh, ptr %i.ji, align 8, !tbaa !22
  %i.jj = fneg double %i.jf
  %i.jk = fmul double %i.it, %i.jj
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.je, double %i.jk)
  %i.jm = sub nsw i64 %i.f, %.0227237
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jm
  store double %i.jl, ptr %i.jn, align 8, !tbaa !22
  %i.jo = add nuw nsw i64 %.0227237, 1            ; 3 uses
  %i.jp = shl nuw nsw i64 %i.jo, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jo, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0227.lcssa = phi i64 [ 1, %bb.b ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph ] ; 3 uses
  %.lcssa = phi i64 [ 2, %bb.b ], [ %i.cy, %middle.block ], [ %i.jp, %.lr.ph ]
  %i.jq = icmp eq i64 %.lcssa, %i.g
  br i1 %i.jq, label %bb.c, label %bb.d
end_hunk_0
begin_hunk_1_@apply_re11:bb.a
  %i.lq = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.lp
  %i.lr = fneg double %i.lo
  %i.ls = load <2 x double>, ptr %.0229239, align 8, !tbaa !22 ; 2 uses
  %i.lt = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.lo, i64 1
  %i.lv = fmul <2 x double> %i.lu, %i.ls
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lx = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.ly = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.ly, <2 x double> %i.lw) ; 2 uses
  %i.ma = extractelement <2 x double> %i.lz, i64 0
  store double %i.ma, ptr %i.lq, align 8, !tbaa !22
  %i.mb = sub nsw i64 %i.f, %i.lb
  %i.mc = mul nsw i64 %i.mb, %i.d
  %i.md = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mc
  %i.me = extractelement <2 x double> %i.lz, i64 1
  store double %i.me, ptr %i.md, align 8, !tbaa !22
  %i.mf = getelementptr inbounds nuw i8, ptr %.0229239, i64 16
  %i.mg = fadd double %i.ld, %i.lg
  %i.mh = fadd double %i.li, %i.ll                ; 2 uses
  %i.mi = mul nsw i64 %i.lb, %i.d
  %i.mj = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mi
  %i.mk = fneg double %i.mh
  %i.ml = load <2 x double>, ptr %i.mf, align 8, !tbaa !22 ; 2 uses
  %i.mm = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.mn = insertelement <2 x double> %i.mm, double %i.mh, i64 1
  %i.mo = fmul <2 x double> %i.mn, %i.ml
  %i.mp = shufflevector <2 x double> %i.mo, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mq = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mr = shufflevector <2 x double> %i.mq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ms = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.mr, <2 x double> %i.mp) ; 2 uses
  %i.mt = extractelement <2 x double> %i.ms, i64 0
  store double %i.mt, ptr %i.mj, align 8, !tbaa !22
  %i.mu = sub nsw i64 %i.t, %i.lb
  %i.mv = mul nsw i64 %i.mu, %i.d
  %i.mw = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.mv
  %i.mx = extractelement <2 x double> %i.ms, i64 1
  store double %i.mx, ptr %i.mw, align 8, !tbaa !22
  %i.my = add nuw nsw i64 %.1240, 1               ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %.0229239, i64 32 ; 2 uses
  %i.na = shl nuw nsw i64 %i.my, 1                ; 2 uses
  %exitcond259.not = icmp eq i64 %i.my, %i.af
  br i1 %exitcond259.not, label %._crit_edge243, label %.lr.ph242, !llvm.loop !63

._crit_edge243:                                   ; preds = %.lr.ph242, %bb.d
  %.0229.lcssa = phi ptr [ %i.la, %bb.d ], [ %i.mz, %.lr.ph242 ]
  %.1.lcssa = phi i64 [ 1, %bb.d ], [ %i.af, %.lr.ph242 ] ; 2 uses
  %.lcssa236 = phi i64 [ 2, %bb.d ], [ %i.na, %.lr.ph242 ]
  %i.nb = icmp eq i64 %.lcssa236, %i.g
  br i1 %i.nb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge243
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.1.lcssa
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !22
  %i.ne = getelementptr [8 x i8], ptr %i.v, i64 %.1.lcssa
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !22 ; 2 uses
  %i.ng = fneg double %i.nf
  %i.nh = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ag
  %i.ni = load <2 x double>, ptr %.0229.lcssa, align 8, !tbaa !22 ; 2 uses
  %i.nj = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.ng, i64 1
  %i.nl = fmul <2 x double> %i.ni, %i.nk
  %i.nm = shufflevector <2 x double> %i.nl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nn = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.no, <2 x double> %i.nm) ; 2 uses
  %i.nq = extractelement <2 x double> %i.np, i64 0
  store double %i.nq, ptr %i.nh, align 8, !tbaa !22
  %i.nr = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.ai
  %i.ns = extractelement <2 x double> %i.np, i64 1
  store double %i.ns, ptr %i.nr, align 8, !tbaa !22
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge243, %bb.e
  %i.nt = add nuw nsw i64 %.0228247, 1            ; 2 uses
  %i.nu = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.k
  %i.nv = getelementptr inbounds [8 x i8], ptr %.0226248, i64 %i.m
  %exitcond260.not = icmp eq i64 %i.nt, %i.i
  br i1 %exitcond260.not, label %._crit_edge252, label %bb.b, !llvm.loop !64

._crit_edge252:                                   ; preds = %bb.f, %bb.a
  tail call void @fftw_ifree(ptr noundef %i.r) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_ro11(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 23 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !25   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 17 uses
  %i.g = sdiv i64 %i.f, 2                         ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load i64, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !30   ; 6 uses
  %i.q = shl i64 %i.f, 3
  %i.r = tail call ptr @fftw_malloc_plain(i64 noundef %i.q) #5 ; 26 uses
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %.lr.ph251, label %._crit_edge252

.lr.ph251:                                        ; preds = %bb.a
  %i.t = add nsw i64 %i.f, -1                     ; 6 uses
  %i.u = mul nsw i64 %i.t, %i.b
  %i.v = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.g ; 11 uses
  %i.w = icmp sgt i64 %i.f, 5                     ; 2 uses
  %i.x = mul nsw i64 %i.g, %i.b
  %i.y = add nsw i64 %i.g, -1                     ; 2 uses
  %i.z = mul nsw i64 %i.y, %i.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = mul nsw i64 %i.t, %i.d
  %smax = tail call i64 @llvm.smax.i64(i64 %i.g, i64 4)
  %i.ad = add nsw i64 %smax, -3
  %i.ae = lshr i64 %i.ad, 1                       ; 4 uses
  %i.af = add nuw nsw i64 %i.ae, 2                ; 5 uses
  %i.ag = mul nsw i64 %i.y, %i.d
  %i.ah = sub nsw i64 %i.f, %i.g
  %i.ai = mul nsw i64 %i.ah, %i.d
  %i.aj = shl i64 %i.ae, 4                        ; 5 uses
  %i.ak = getelementptr i8, ptr %i.p, i64 %i.aj   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ak, i64 32  ; 3 uses
  %scevgep397 = getelementptr i8, ptr %i.p, i64 16 ; 3 uses
  %i.al = shl i64 %i.f, 3                         ; 4 uses
  %i.am = add i64 %i.al, -16
  %i.an = sub i64 %i.am, %i.aj
  %i.ao = mul i64 %i.b, %i.an
  %i.ap = add i64 %i.f, 2305843009213693950
  %i.aq = mul i64 %i.b, %i.ap
  %i.ar = shl i64 %i.aq, 3
  %i.as = add i64 %i.al, -24
  %i.at = sub i64 %i.as, %i.aj
  %i.au = mul i64 %i.b, %i.at
  %i.av = add i64 %i.f, 2305843009213693949
  %i.aw = mul i64 %i.b, %i.av
  %i.ax = shl i64 %i.aw, 3
  %i.ay = shl i64 %i.b, 4
  %i.az = add i64 %i.aj, 16
  %i.ba = mul i64 %i.b, %i.az
  %i.bb = shl i64 %i.b, 3
  %i.bc = shl i64 %i.k, 3
  %i.bd = or disjoint i64 %i.aj, 8
  %i.be = mul i64 %i.b, %i.bd
  %scevgep398 = getelementptr i8, ptr %i.r, i64 %i.al ; 4 uses
  %i.bf = add i64 %i.al, -8
  %i.bg = shl nuw i64 %i.ae, 3                    ; 4 uses
  %i.bh = sub i64 %i.bf, %i.bg
  %scevgep399 = getelementptr i8, ptr %i.r, i64 %i.bh ; 4 uses
  %i.bi = shl i64 %i.g, 3                         ; 3 uses
  %i.bj = getelementptr i8, ptr %i.r, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bg
  %scevgep400 = getelementptr i8, ptr %i.bk, i64 16 ; 5 uses
  %i.bl = getelementptr i8, ptr %i.r, i64 %i.bi
  %scevgep401 = getelementptr i8, ptr %i.bl, i64 8 ; 5 uses
  %i.bm = add i64 %i.bi, -8
  %i.bn = sub i64 %i.bm, %i.bg
  %scevgep402 = getelementptr i8, ptr %i.r, i64 %i.bn ; 5 uses
  %i.bo = getelementptr i8, ptr %i.r, i64 %i.bg   ; 2 uses
  %i.bp = insertelement <2 x ptr> poison, ptr %i.bo, i64 0
  %i.bq = insertelement <2 x ptr> %i.bp, ptr %i.ak, i64 1
  %i.br = getelementptr i8, <2 x ptr> %i.bq, <2 x i64> <i64 16, i64 32>
  %scevgep403 = getelementptr i8, ptr %i.bo, i64 16 ; 4 uses
  %i.bs = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.p, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, <2 x i64> <i64 8, i64 16>
  %scevgep404 = getelementptr i8, ptr %i.r, i64 8 ; 4 uses
  %i.bv = insertelement <4 x ptr> poison, ptr %scevgep404, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = insertelement <4 x ptr> poison, ptr %scevgep403, i64 0
  %i.by = shufflevector <4 x ptr> %i.bx, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bz = insertelement <4 x ptr> poison, ptr %scevgep402, i64 0
  %i.ca = shufflevector <4 x ptr> %i.bz, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cb = insertelement <4 x ptr> poison, ptr %i.v, i64 0
  %i.cc = shufflevector <4 x ptr> %i.cb, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cd = insertelement <4 x ptr> poison, ptr %scevgep401, i64 0
  %i.ce = shufflevector <4 x ptr> %i.cd, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cf = insertelement <4 x ptr> poison, ptr %scevgep400, i64 0
  %i.cg = shufflevector <4 x ptr> %i.cf, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = insertelement <4 x ptr> poison, ptr %scevgep399, i64 0 ; 2 uses
  %i.ci = shufflevector <4 x ptr> %i.ch, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cj = insertelement <4 x ptr> poison, ptr %scevgep398, i64 0 ; 2 uses
  %i.ck = shufflevector <4 x ptr> %i.cj, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.cl = insertelement <4 x ptr> %i.ch, ptr %scevgep404, i64 1
  %i.cm = insertelement <4 x ptr> %i.cl, ptr %scevgep401, i64 2
  %i.cn = insertelement <4 x ptr> %i.cm, ptr %scevgep402, i64 3
  %i.co = insertelement <4 x ptr> %i.cj, ptr %scevgep403, i64 1
  %i.cp = insertelement <4 x ptr> %i.co, ptr %scevgep400, i64 2
  %i.cq = insertelement <4 x ptr> %i.cp, ptr %i.v, i64 3
  %i.cr = shufflevector <2 x ptr> %i.br, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cs = shufflevector <2 x ptr> %i.bu, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = add nuw nsw i64 %i.ae, 1                ; 4 uses
  %min.iters.check = icmp slt i64 %i.f, 34
  %3 = getelementptr i8, ptr %1, i64 %i.be
  %4 = getelementptr i8, ptr %1, i64 %i.bb
  %5 = getelementptr i8, ptr %1, i64 %i.ba
  %6 = getelementptr i8, ptr %1, i64 %i.ay
  %7 = getelementptr i8, ptr %1, i64 %i.ax
  %8 = getelementptr i8, ptr %1, i64 %i.au
  %9 = getelementptr i8, ptr %1, i64 %i.ar
  %10 = getelementptr i8, ptr %1, i64 %i.ao
  %bound0 = icmp ult ptr %scevgep404, %i.v
  %bound1 = icmp ult ptr %scevgep402, %scevgep403
  %found.conflict = and i1 %bound0, %bound1
  %bound0405 = icmp ult ptr %scevgep404, %scevgep400
  %bound1406 = icmp ult ptr %scevgep401, %scevgep403
  %found.conflict407 = and i1 %bound0405, %bound1406
  %11 = insertelement <4 x ptr> %i.cs, ptr %scevgep402, i64 2
  %12 = insertelement <4 x ptr> %11, ptr %scevgep399, i64 3
  %13 = icmp ult <4 x ptr> %12, %i.cq
  %14 = insertelement <4 x ptr> %i.cr, ptr %i.v, i64 2
  %15 = insertelement <4 x ptr> %14, ptr %scevgep398, i64 3
  %16 = icmp ult <4 x ptr> %i.cn, %15
  %i.cu = and <4 x i1> %16, %13
  %bound0456 = icmp ult ptr %scevgep402, %scevgep
  %bound1457 = icmp ult ptr %scevgep397, %i.v
  %found.conflict458 = and i1 %bound0456, %bound1457
  %bound0460 = icmp ult ptr %scevgep401, %scevgep398
  %bound1461 = icmp ult ptr %scevgep399, %scevgep400
  %found.conflict462 = and i1 %bound0460, %bound1461
  %bound0480 = icmp ult ptr %scevgep401, %scevgep
  %bound1481 = icmp ult ptr %scevgep397, %scevgep400
  %found.conflict482 = and i1 %bound0480, %bound1481
  %bound0500 = icmp ult ptr %scevgep399, %scevgep
  %bound1501 = icmp ult ptr %scevgep397, %scevgep398
  %found.conflict502 = and i1 %bound0500, %bound1501
  %i.cv = bitcast <4 x i1> %i.cu to i4
  %i.cw = icmp ne i4 %i.cv, 0
  %op.rdx518 = or i1 %i.cw, %found.conflict
  %op.rdx519 = or i1 %found.conflict407, %found.conflict458
  %op.rdx520 = or i1 %found.conflict462, %found.conflict482
  %op.rdx522 = or i1 %op.rdx518, %op.rdx519
  %invariant.op = or i1 %found.conflict502, %op.rdx520
  %invariant.op532 = or i1 %invariant.op, %op.rdx522
  %n.vec = and i64 %i.ct, 9223372036854775806     ; 2 uses
  %i.cx = shl nuw i64 %i.ct, 1
  %i.cy = or i64 %i.cx, 2                         ; 2 uses
  %i.cz = or i64 %i.ct, 1
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph251, %bb.f
  %.0249 = phi ptr [ %1, %.lr.ph251 ], [ %i.nv, %bb.f ] ; 17 uses
  %.0226248 = phi ptr [ %2, %.lr.ph251 ], [ %i.nw, %bb.f ] ; 9 uses
  %.0228247 = phi i64 [ 0, %.lr.ph251 ], [ %i.nu, %bb.f ] ; 2 uses
  %i.da = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.u
  %i.db = load double, ptr %i.da, align 8, !tbaa !22
  %i.dc = fmul double %i.db, 2.000000e+00
  store double %i.dc, ptr %i.r, align 8, !tbaa !22
  %i.dd = load double, ptr %.0249, align 8, !tbaa !22
  %i.de = fmul double %i.dd, 2.000000e+00
  store double %i.de, ptr %i.v, align 8, !tbaa !22
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  br i1 %min.iters.check, label %.lr.ph.preheader525, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.df = mul i64 %.0228247, %i.bc                ; 8 uses
  %i.dg = getelementptr i8, ptr %3, i64 %i.df     ; 4 uses
  %i.dh = getelementptr i8, ptr %4, i64 %i.df     ; 4 uses
  %i.di = getelementptr i8, ptr %5, i64 %i.df     ; 4 uses
  %i.dj = getelementptr i8, ptr %6, i64 %i.df     ; 4 uses
  %i.dk = getelementptr i8, ptr %7, i64 %i.df     ; 4 uses
  %i.dl = getelementptr i8, ptr %8, i64 %i.df     ; 4 uses
  %i.dm = getelementptr i8, ptr %9, i64 %i.df     ; 4 uses
  %i.dn = getelementptr i8, ptr %10, i64 %i.df    ; 4 uses
  %i.do = icmp ult ptr %i.dg, %i.dh
  %i.dp = select i1 %i.do, ptr %i.dg, ptr %i.dh
  %i.dq = icmp ugt ptr %i.dg, %i.dh
  %i.dr = select i1 %i.dq, ptr %i.dg, ptr %i.dh
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %i.dt = icmp ult ptr %i.di, %i.dj
  %i.du = select i1 %i.dt, ptr %i.di, ptr %i.dj
  %i.dv = icmp ugt ptr %i.di, %i.dj
  %i.dw = select i1 %i.dv, ptr %i.di, ptr %i.dj
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  %i.dy = icmp ult ptr %i.dk, %i.dl
  %i.dz = select i1 %i.dy, ptr %i.dk, ptr %i.dl
  %i.ea = icmp ugt ptr %i.dk, %i.dl
  %i.eb = select i1 %i.ea, ptr %i.dk, ptr %i.dl
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = icmp ult ptr %i.dm, %i.dn
  %i.ee = select i1 %i.ed, ptr %i.dm, ptr %i.dn
  %i.ef = icmp ugt ptr %i.dm, %i.dn
  %i.eg = select i1 %i.ef, ptr %i.dm, ptr %i.dn
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = insertelement <4 x ptr> poison, ptr %i.ds, i64 0
  %i.ej = insertelement <4 x ptr> %i.ei, ptr %i.dx, i64 1
  %i.ek = insertelement <4 x ptr> %i.ej, ptr %i.ec, i64 2
  %i.el = insertelement <4 x ptr> %i.ek, ptr %i.eh, i64 3 ; 4 uses
  %i.em = icmp ult <4 x ptr> %i.bw, %i.el
  %i.en = insertelement <4 x ptr> poison, ptr %i.dp, i64 0
  %i.eo = insertelement <4 x ptr> %i.en, ptr %i.du, i64 1
  %i.ep = insertelement <4 x ptr> %i.eo, ptr %i.dz, i64 2
  %i.eq = insertelement <4 x ptr> %i.ep, ptr %i.ee, i64 3 ; 4 uses
  %i.er = icmp ult <4 x ptr> %i.eq, %i.by
  %i.es = and <4 x i1> %i.em, %i.er
  %i.et = icmp ult <4 x ptr> %i.ca, %i.el
  %i.eu = icmp ult <4 x ptr> %i.eq, %i.cc
  %i.ev = and <4 x i1> %i.et, %i.eu
  %i.ew = icmp ult <4 x ptr> %i.ce, %i.el
  %i.ex = icmp ult <4 x ptr> %i.eq, %i.cg
  %i.ey = and <4 x i1> %i.ew, %i.ex
  %i.ez = icmp ult <4 x ptr> %i.ci, %i.el
  %i.fa = icmp ult <4 x ptr> %i.eq, %i.ck
  %i.fb = and <4 x i1> %i.ez, %i.fa
  %rdx.op = or <4 x i1> %i.es, %i.ev
  %rdx.op507 = or <4 x i1> %rdx.op, %i.ey
  %rdx.op508 = or <4 x i1> %rdx.op507, %i.fb
  %i.fc = bitcast <4 x i1> %rdx.op508 to i4
  %i.fd = icmp ne i4 %i.fc, 0
  %op.rdx524.reass = or i1 %i.fd, %invariant.op532
  br i1 %op.rdx524.reass, label %.lr.ph.preheader525, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fe = shl i64 %index, 1                       ; 4 uses
  %i.ff = or disjoint i64 %i.fe, 2                ; 4 uses
  %i.fg = add i64 %i.fe, 4                        ; 3 uses
  %i.fh = or disjoint i64 %index, 1               ; 4 uses
  %i.fi = sub nsw i64 %i.f, %i.ff
  %i.fj = sub nsw i64 %i.f, %i.fg
  %i.fk = mul nsw i64 %i.fi, %i.b
  %i.fl = mul nsw i64 %i.fj, %i.b
  %i.fm = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fk
  %i.fn = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fl
  %i.fo = load double, ptr %i.fm, align 8, !tbaa !22, !alias.scope !92
  %i.fp = load double, ptr %i.fn, align 8, !tbaa !22, !alias.scope !92
  %i.fq = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fp, i64 1 ; 2 uses
  %i.fs = sub nsw i64 %i.t, %i.ff
  %i.ft = sub nsw i64 %i.t, %i.fg
  %i.fu = mul nsw i64 %i.fs, %i.b
  %i.fv = mul nsw i64 %i.ft, %i.b
  %i.fw = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fu
  %i.fx = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.fv
  %i.fy = load double, ptr %i.fw, align 8, !tbaa !22, !alias.scope !93
  %i.fz = load double, ptr %i.fx, align 8, !tbaa !22, !alias.scope !93
  %i.ga = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fz, i64 1 ; 2 uses
  %i.gc = fadd <2 x double> %i.fr, %i.gb          ; 2 uses
  %i.gd = fsub <2 x double> %i.fr, %i.gb          ; 2 uses
  %i.ge = mul nsw i64 %i.ff, %i.b
  %i.gf = mul nsw i64 %i.fg, %i.b
  %i.gg = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ge
  %i.gh = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gf
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !22, !alias.scope !94
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !22, !alias.scope !94
  %i.gk = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.gj, i64 1 ; 2 uses
  %i.gm = or disjoint i64 %i.fe, 1
  %i.gn = or disjoint i64 %i.fe, 3
  %i.go = mul nsw i64 %i.gm, %i.b
  %i.gp = mul nsw i64 %i.gn, %i.b
  %i.gq = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.go
  %i.gr = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.gp
  %i.gs = load double, ptr %i.gq, align 8, !tbaa !22, !alias.scope !95
  %i.gt = load double, ptr %i.gr, align 8, !tbaa !22, !alias.scope !95
  %i.gu = insertelement <2 x double> poison, double %i.gs, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1 ; 2 uses
  %i.gw = fadd <2 x double> %i.gl, %i.gv          ; 2 uses
  %i.gx = fsub <2 x double> %i.gl, %i.gv          ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ff
  %wide.vec = load <4 x double>, ptr %i.gy, align 8, !tbaa !22, !alias.scope !96 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 4 uses
  %strided.vec504 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.gz = fadd <2 x double> %i.gc, %i.gw          ; 2 uses
  %i.ha = fsub <2 x double> %i.gc, %i.gw          ; 2 uses
  %i.hb = fmul <2 x double> %strided.vec504, %i.gz
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.ha, <2 x double> %i.hb)
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fh
  store <2 x double> %i.hc, ptr %i.hd, align 8, !tbaa !22, !alias.scope !97, !noalias !98
  %i.he = fneg <2 x double> %i.ha
  %i.hf = fmul <2 x double> %strided.vec504, %i.he
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.gz, <2 x double> %i.hf)
  %i.hh = sub nuw nsw i64 %i.g, %i.fh
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hh
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -8
  %reverse = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse, ptr %i.hj, align 8, !tbaa !22, !alias.scope !99, !noalias !100
  %i.hk = fadd <2 x double> %i.gd, %i.gx          ; 2 uses
  %i.hl = fsub <2 x double> %i.gx, %i.gd          ; 2 uses
  %i.hm = fmul <2 x double> %strided.vec504, %i.hk
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.hl, <2 x double> %i.hm)
  %i.ho = getelementptr [8 x i8], ptr %i.v, i64 %i.fh
  store <2 x double> %i.hn, ptr %i.ho, align 8, !tbaa !22, !alias.scope !101, !noalias !102
  %i.hp = fneg <2 x double> %i.hl
  %i.hq = fmul <2 x double> %strided.vec504, %i.hp
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %strided.vec, <2 x double> %i.hk, <2 x double> %i.hq)
  %i.hs = sub nsw i64 %i.f, %i.fh
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.hs
  %i.hu = getelementptr inbounds i8, ptr %i.ht, i64 -8
  %reverse505 = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %reverse505, ptr %i.hu, align 8, !tbaa !22, !alias.scope !103, !noalias !104
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader525

.lr.ph.preheader525:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph.preheader ], [ %i.cy, %middle.block ]
  %.0227237.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader525, %.lr.ph
  %i.hw = phi i64 [ %i.jp, %.lr.ph ], [ %.ph, %.lr.ph.preheader525 ] ; 5 uses
  %.0227237 = phi i64 [ %i.jo, %.lr.ph ], [ %.0227237.ph, %.lr.ph.preheader525 ] ; 5 uses
  %i.hx = sub nsw i64 %i.f, %i.hw
  %i.hy = mul nsw i64 %i.hx, %i.b
  %i.hz = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !22 ; 2 uses
  %i.ib = sub nsw i64 %i.t, %i.hw
  %i.ic = mul nsw i64 %i.ib, %i.b
  %i.id = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !22 ; 2 uses
  %i.if = fadd double %i.ia, %i.ie                ; 2 uses
  %i.ig = fsub double %i.ia, %i.ie                ; 2 uses
  %i.ih = mul nsw i64 %i.hw, %i.b
  %i.ii = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.ih
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !22 ; 2 uses
  %i.ik = add nsw i64 %i.hw, -1
  %i.il = mul nsw i64 %i.ik, %i.b
  %i.im = getelementptr inbounds [8 x i8], ptr %.0249, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !22 ; 2 uses
  %i.io = fadd double %i.ij, %i.in                ; 2 uses
  %i.ip = fsub double %i.ij, %i.in                ; 2 uses
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.hw ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !22 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.it = load double, ptr %i.is, align 8, !tbaa !22 ; 4 uses
  %i.iu = fadd double %i.if, %i.io                ; 2 uses
  %i.iv = fsub double %i.if, %i.io                ; 2 uses
  %i.iw = fmul double %i.it, %i.iu
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.iv, double %i.iw)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.0227237
  store double %i.ix, ptr %i.iy, align 8, !tbaa !22
  %i.iz = fneg double %i.iv
  %i.ja = fmul double %i.it, %i.iz
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.iu, double %i.ja)
  %i.jc = sub nuw nsw i64 %i.g, %.0227237
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.jc
  store double %i.jb, ptr %i.jd, align 8, !tbaa !22
  %i.je = fadd double %i.ig, %i.ip                ; 2 uses
  %i.jf = fsub double %i.ip, %i.ig                ; 2 uses
  %i.jg = fmul double %i.it, %i.je
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.jf, double %i.jg)
  %i.ji = getelementptr [8 x i8], ptr %i.v, i64 %.0227237
  store double %i.jh, ptr %i.ji, align 8, !tbaa !22
  %i.jj = fneg double %i.jf
  %i.jk = fmul double %i.it, %i.jj
  %i.jl = tail call double @llvm.fmuladd.f64(double %i.ir, double %i.je, double %i.jk)
  %i.jm = sub nsw i64 %i.f, %.0227237
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.jm
  store double %i.jl, ptr %i.jn, align 8, !tbaa !22
  %i.jo = add nuw nsw i64 %.0227237, 1            ; 3 uses
  %i.jp = shl nuw nsw i64 %i.jo, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.jo, %i.af
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %.0227.lcssa = phi i64 [ 1, %bb.b ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph ] ; 3 uses
  %.lcssa = phi i64 [ 2, %bb.b ], [ %i.cy, %middle.block ], [ %i.jp, %.lr.ph ]
  %i.jq = icmp eq i64 %.lcssa, %i.g
  br i1 %i.jq, label %bb.c, label %bb.d
end_hunk_1
