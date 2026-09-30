Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/amrnbdec?download=true
inline.NumInlined: 22
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@amrnb_decode_init:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #7
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #7
  store <2 x i32> splat (i32 1), ptr %i.c, align 8, !tbaa !30
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i32 [ 1, %bb.d ], [ %i.e, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !57
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 8000, ptr %i.h, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 8, ptr %i.j, align 4, !tbaa !58
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.preheader
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.preheader ], [ 0, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw [2392 x i8], ptr %i.b, i64 %indvars.iv46 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1524
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1688
  store ptr %i.m, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 664
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 704
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next, %vector.body50 ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr @lsp_sub4_init, i64 %index
  %wide.load = load <2 x i8>, ptr %i.r, align 1, !tbaa !31
  %i.s = sext <2 x i8> %wide.load to <2 x i32>
  %i.t = mul nsw <2 x i32> %i.s, splat (i32 1000)
  %i.u = sitofp nsz <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan nsz <2 x float> %i.u, splat (float f0x38000000)
  %i.w = fpext nsz <2 x float> %i.v to <2 x double>
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  store <2 x double> %i.w, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @lsp_avg_init, i64 %index
  %wide.load51 = load <2 x i16>, ptr %i.y, align 4, !tbaa !43
  %i.z = sitofp <2 x i16> %wide.load51 to <2 x float>
  %i.aa = fmul nnan nsz <2 x float> %i.z, splat (float f0x38000000) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index
  store <2 x float> %i.aa, ptr %i.ab, align 4, !tbaa !44
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  store <2 x float> %i.aa, ptr %i.ac, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, 10
  br i1 %i.ad, label %.preheader, label %vector.body50, !llvm.loop !54

.preheader:                                       ; preds = %vector.body50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 2016
  store <4 x float> splat (float -1.400000e+01), ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 2344
  tail call void @ff_acelp_filter_init(ptr noundef nonnull %i.af) #7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 2360
  tail call void @ff_acelp_vectors_init(ptr noundef nonnull %i.ag) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2368
  tail call void @ff_celp_filter_init(ptr noundef nonnull %i.ah) #7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 2384
  tail call void @ff_celp_math_init(ptr noundef nonnull %i.ai) #7
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !29
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next47, %i.ak
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %.preheader, %bb.g, %bb.b
  %.034 = phi i32 [ -1163346256, %bb.b ], [ 0, %bb.g ], [ 0, %.preheader ]
  ret i32 %.034
}

; Function Attrs: nounwind uwtable
define internal i32 @amrnb_decode_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 5 uses
  %i.b = alloca [50 x float], align 16            ; 5 uses
  %i.c = alloca [10 x float], align 16            ; 14 uses
  %i.d = alloca [10 x float], align 16            ; 14 uses
  %i.e = alloca [40 x float], align 16            ; 5 uses
  %i.f = alloca [40 x float], align 16            ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 8 uses
  %i.i = alloca [10 x float], align 16            ; 11 uses
  %i.j = alloca [10 x float], align 16            ; 7 uses
  %i.k = alloca [5 x ptr], align 16               ; 9 uses
  %4 = alloca %struct.AMRFixed, align 4           ; 28 uses
  %i.l = alloca [40 x float], align 16            ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !70   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 160, ptr %i.s, align 8, !tbaa !76
  %i.t = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #7 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.bc, label %.preheader161

.preheader161:                                    ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %.not134177 = icmp sgt i32 %i.w, 0
  br i1 %.not134177, label %.lr.ph, label %.thread159

.lr.ph:                                           ; preds = %.preheader161
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 92 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.au = load <2 x float>, ptr @ff_pow_0_7, align 16 ; 2 uses
  %i.av = load <2 x float>, ptr @ff_pow_0_55, align 16
  %i.aw = load <2 x float>, ptr @ff_pow_0_75, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bb = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_7, i64 8), align 8 ; 2 uses
  %i.bc = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 8), align 8
  %i.bd = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_75, i64 8), align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.bi = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_7, i64 16), align 16 ; 2 uses
  %i.bj = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 16), align 16
  %i.bk = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_75, i64 16), align 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.bp = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_7, i64 24), align 8 ; 2 uses
  %i.bq = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 24), align 8
  %i.br = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_75, i64 24), align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.bw = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_7, i64 32), align 16 ; 2 uses
  %i.bx = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_55, i64 32), align 16
  %i.by = load <2 x float>, ptr getelementptr inbounds nuw (i8, ptr @ff_pow_0_75, i64 32), align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 44 ; 2 uses
  %i.ce = shufflevector <2 x float> %i.au, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cf = shufflevector <2 x float> %i.av, <2 x float> %i.au, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cg = shufflevector <2 x float> %i.bb, <2 x float> %i.bd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ch = shufflevector <2 x float> %i.bc, <2 x float> %i.bb, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ci = shufflevector <2 x float> %i.bi, <2 x float> %i.bk, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cj = shufflevector <2 x float> %i.bj, <2 x float> %i.bi, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ck = shufflevector <2 x float> %i.bp, <2 x float> %i.br, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cl = shufflevector <2 x float> %i.bq, <2 x float> %i.bp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cm = shufflevector <2 x float> %i.bw, <2 x float> %i.by, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.cn = shufflevector <2 x float> %i.bx, <2 x float> %i.bw, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ba
  %indvars.iv192 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next193, %bb.ba ] ; 3 uses
  %.0123179 = phi i32 [ %i.r, %.lr.ph ], [ %i.auv, %bb.ba ] ; 2 uses
  %.0125178 = phi ptr [ %i.p, %.lr.ph ], [ %i.auu, %bb.ba ] ; 3 uses
  %i.co = getelementptr inbounds nuw [2392 x i8], ptr %i.n, i64 %indvars.iv192 ; 134 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !77
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv192
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !78 ; 3 uses
  %i.cs = load i8, ptr %.0125178, align 1, !tbaa !31
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = and i32 %i.cu, 15                       ; 7 uses
  %i.cw = and i32 %i.ct, 4
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = zext i1 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 114
  store i8 %i.cy, ptr %i.cz, align 2, !tbaa !79
  %i.da = icmp samesign ugt i32 %i.cv, 8
  br i1 %i.da, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.db = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @frame_sizes_nb, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !31
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %.not.i = icmp sgt i32 %.0123179, %i.de
  br i1 %.not.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not12.i = icmp eq i32 %i.cv, 8
  br i1 %.not12.i, label %.loopexit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %.0125178, i64 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @amr_unpacking_bitmaps_per_mode, i64 %i.db
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !78 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(114) %i.co, i8 0, i64 114, i1 false)
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !31  ; 2 uses
  %.not20.i.i = icmp eq i8 %i.di, 0
  br i1 %.not20.i.i, label %.loopexit206, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.dj = phi i8 [ %i.fh, %bb.g ], [ %i.di, %bb.e ] ; 4 uses
  %.021.i.i = phi ptr [ %scevgep23.i.i, %bb.g ], [ %i.dh, %bb.e ] ; 3 uses
  %i.dk = zext i8 %i.dj to i32                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 2 ; 2 uses
  %i.dn = load i8, ptr %i.dl, align 1, !tbaa !31
  %xtraiter = and i32 %i.dk, 1
  %i.do = icmp eq i8 %i.dj, 1
  br i1 %i.do, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i32 %i.dk, 254
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.new
  %.119.i.i = phi ptr [ %i.dm, %.lr.ph.i.i.new ], [ %i.dz, %bb.f ] ; 3 uses
  %.01318.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.eo, %bb.f ]
  %niter = phi i32 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.119.i.i, i64 1
  %i.dq = load i8, ptr %.119.i.i, align 1, !tbaa !31
  %i.dr = zext i8 %i.dq to i32                    ; 2 uses
  %i.ds = lshr i32 %i.dr, 3
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !31
  %i.dw = zext i8 %i.dv to i32
  %i.dx = and i32 %i.dr, 7
  %i.dy = lshr i32 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %.119.i.i, i64 2 ; 2 uses
  %i.ea = load i8, ptr %i.dp, align 1, !tbaa !31
  %i.eb = zext i8 %i.ea to i32                    ; 2 uses
  %i.ec = shl i32 %.01318.i.i, 2
  %i.ed = shl nuw nsw i32 %i.dy, 1
  %i.ee = and i32 %i.ed, 2
  %i.ef = or disjoint i32 %i.ec, %i.ee
  %i.eg = lshr i32 %i.eb, 3
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !31
  %i.ek = zext i8 %i.ej to i32
  %i.el = and i32 %i.eb, 7
  %i.em = lshr i32 %i.ek, %i.el
  %i.en = and i32 %i.em, 1
  %i.eo = or disjoint i32 %i.en, %i.ef            ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !59

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.119.i.i.epil.init = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.dz, %.unr-lcssa ]
  %.01318.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.eo, %.unr-lcssa ]
  %lcmp.mod232 = trunc i8 %i.dj to i1
  call void @llvm.assume(i1 %lcmp.mod232)
  %i.ep = load i8, ptr %.119.i.i.epil.init, align 1, !tbaa !31
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = shl i32 %.01318.i.i.epil.init, 1
  %i.es = lshr i32 %i.eq, 3
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !31
  %i.ew = zext i8 %i.ev to i32
  %i.ex = and i32 %i.eq, 7
  %i.ey = lshr i32 %i.ew, %i.ex
  %i.ez = and i32 %i.ey, 1
  %i.fa = or disjoint i32 %i.ez, %i.er
  br label %bb.g

bb.g:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa = phi i32 [ %i.eo, %.unr-lcssa ], [ %i.fa, %.epil.preheader ]
  %i.fb = zext i8 %i.dj to i64
  %i.fc = getelementptr i8, ptr %.021.i.i, i64 %i.fb
  %scevgep23.i.i = getelementptr i8, ptr %i.fc, i64 2 ; 2 uses
  %i.fd = trunc i32 %.lcssa to i16
  %i.fe = lshr i8 %i.dn, 1
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ff
  store i16 %i.fd, ptr %i.fg, align 2, !tbaa !43
  %i.fh = load i8, ptr %scevgep23.i.i, align 1, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i, label %.loopexit206, label %.lr.ph.i.i, !llvm.loop !60

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.fi = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  store i32 15, ptr %i.fi, align 4, !tbaa !48
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %bb.bb

.loopexit162:                                     ; preds = %bb.d
  %i.fj = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  store i32 8, ptr %i.fj, align 4, !tbaa !48
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  br label %bb.bb

.loopexit206:                                     ; preds = %bb.g, %bb.e
  %i.fk = getelementptr inbounds nuw i8, ptr %i.co, i64 116 ; 7 uses
  store i32 %i.cv, ptr %i.fk, align 4, !tbaa !48
  %i.fl = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.fm = icmp eq i32 %i.cv, 7
  br i1 %i.fm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.fn = load i16, ptr %i.co, align 4, !tbaa !43
  %i.fo = zext i16 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_1, i64 %i.fo
  store ptr %i.fp, ptr %i.k, align 16, !tbaa !49
  %i.fq = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !43
  %i.fs = zext i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_2, i64 %i.fs
  store ptr %i.ft, ptr %i.aa, align 8, !tbaa !49
  %i.fu = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !43 ; 2 uses
  %i.fw = lshr i16 %i.fv, 1
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_3, i64 %i.fx
  store ptr %i.fy, ptr %i.ab, align 16, !tbaa !49
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !43
  %i.gb = zext i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_4, i64 %i.gb
  store ptr %i.gc, ptr %i.ac, align 8, !tbaa !49
  %i.gd = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !43
  %i.gf = zext i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_5, i64 %i.gf
  store ptr %i.gg, ptr %i.ad, align 16, !tbaa !49
  %i.gh = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.gi = load <4 x i16>, ptr %i.gh, align 4, !tbaa !43
  %i.gj = sitofp <4 x i16> %i.gi to <4 x double>
  %i.gk = fmul nnan nsz <4 x double> %i.gj, splat (double f0x3FCF400000000000)
  %i.gl = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gk, <4 x double> splat (double 6.500000e-01), <4 x double> <double f0x40751E4180000000, double f0x407FB147A0000000, double f0x408A17B020000000, double f0x40937C47A0000000>)
  %i.gm = fptrunc <4 x double> %i.gl to <4 x float>
  store <4 x float> %i.gm, ptr %i.j, align 16, !tbaa !44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.go = load <4 x i16>, ptr %i.gn, align 4, !tbaa !43
  %i.gp = sitofp <4 x i16> %i.go to <4 x double>
  %i.gq = fmul nnan nsz <4 x double> %i.gp, splat (double f0x3FCF400000000000)
  %i.gr = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gq, <4 x double> splat (double 6.500000e-01), <4 x double> <double 1.646000e+03, double f0x409EFBA3E0000000, double f0x40A2CFEB80000000, double f0x40A5280520000000>)
  %i.gs = fptrunc <4 x double> %i.gr to <4 x float>
  store <4 x float> %i.gs, ptr %i.ae, align 16, !tbaa !44
  %i.gt = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.gu = load <2 x i16>, ptr %i.gt, align 4, !tbaa !43
  %i.gv = sitofp <2 x i16> %i.gu to <2 x double>
  %i.gw = fmul nnan nsz <2 x double> %i.gv, splat (double f0x3FCF400000000000)
  %i.gx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> splat (double 6.500000e-01), <2 x double> <double 3.104000e+03, double f0x40AA21F0A0000000>)
  %i.gy = fptrunc <2 x double> %i.gx to <2 x float>
  store <2 x float> %i.gy, ptr %i.af, align 16, !tbaa !44
  %i.gz = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.ha = getelementptr inbounds nuw i8, ptr %i.co, i64 224 ; 2 uses
  %i.hb = and i16 %i.fv, 1
  %i.hc = zext nneg i16 %i.hb to i32
  call fastcc void @lsf2lsp_for_mode12k2(ptr noundef nonnull %i.co, ptr noundef nonnull %i.ha, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.hc, i32 noundef 0)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.co, i64 384 ; 2 uses
  %i.he = load i16, ptr %i.fu, align 4, !tbaa !43
  %i.hf = and i16 %i.he, 1
  %i.hg = zext nneg i16 %i.hf to i32
  call fastcc void @lsf2lsp_for_mode12k2(ptr noundef nonnull %i.co, ptr noundef nonnull %i.hd, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 2, i32 noundef %i.hg, i32 noundef 1)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.hi = load <2 x double>, ptr %i.hh, align 8, !tbaa !41
  %i.hj = load <2 x double>, ptr %i.ha, align 8, !tbaa !41 ; 2 uses
  %i.hk = fmul nsz <2 x double> %i.hj, splat (double 5.000000e-01)
  %i.hl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hk)
  store <2 x double> %i.hl, ptr %i.gz, align 8, !tbaa !41
  %i.hm = getelementptr inbounds nuw i8, ptr %i.co, i64 480
  %i.hn = getelementptr inbounds nuw i8, ptr %i.co, i64 240
  %i.ho = getelementptr inbounds nuw i8, ptr %i.co, i64 160
  %i.hp = load <2 x double>, ptr %i.hm, align 8, !tbaa !41
  %i.hq = load <2 x double>, ptr %i.hn, align 8, !tbaa !41 ; 2 uses
  %i.hr = fmul nsz <2 x double> %i.hq, splat (double 5.000000e-01)
  %i.hs = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hp, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hr)
  store <2 x double> %i.hs, ptr %i.ho, align 8, !tbaa !41
  %i.ht = getelementptr inbounds nuw i8, ptr %i.co, i64 496
  %i.hu = getelementptr inbounds nuw i8, ptr %i.co, i64 256
  %i.hv = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  %i.hw = load <2 x double>, ptr %i.ht, align 8, !tbaa !41
  %i.hx = load <2 x double>, ptr %i.hu, align 8, !tbaa !41 ; 2 uses
  %i.hy = fmul nsz <2 x double> %i.hx, splat (double 5.000000e-01)
  %i.hz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> splat (double 5.000000e-01), <2 x double> %i.hy)
  store <2 x double> %i.hz, ptr %i.hv, align 8, !tbaa !41
  %i.ia = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.ib = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  %i.ic = getelementptr inbounds nuw i8, ptr %i.co, i64 192
  %i.id = load <2 x double>, ptr %i.ia, align 8, !tbaa !41
  %i.ie = load <2 x double>, ptr %i.ib, align 8, !tbaa !41 ; 2 uses
  %i.if = fmul nsz <2 x double> %i.ie, splat (double 5.000000e-01)
  %i.ig = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> splat (double 5.000000e-01), <2 x double> %i.if)
  store <2 x double> %i.ig, ptr %i.ic, align 8, !tbaa !41
  %i.ih = getelementptr inbounds nuw i8, ptr %i.co, i64 528
  %i.ii = getelementptr inbounds nuw i8, ptr %i.co, i64 288
  %i.ij = getelementptr inbounds nuw i8, ptr %i.co, i64 208
  %i.ik = load <2 x double>, ptr %i.ih, align 8, !tbaa !41
  %i.il = load <2 x double>, ptr %i.ii, align 8, !tbaa !41 ; 2 uses
  %i.im = fmul nsz <2 x double> %i.il, splat (double 5.000000e-01)
  %i.in = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> splat (double 5.000000e-01), <2 x double> %i.im)
  store <2 x double> %i.in, ptr %i.ij, align 8, !tbaa !41
  %i.io = getelementptr inbounds nuw i8, ptr %i.co, i64 304
  %i.ip = load <2 x double>, ptr %i.hd, align 8, !tbaa !41
  %i.iq = fmul nsz <2 x double> %i.ip, splat (double 5.000000e-01)
  %i.ir = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> splat (double 5.000000e-01), <2 x double> %i.iq)
  store <2 x double> %i.ir, ptr %i.io, align 8, !tbaa !41
  %i.is = getelementptr inbounds nuw i8, ptr %i.co, i64 400
  %i.it = getelementptr inbounds nuw i8, ptr %i.co, i64 320
  %i.iu = load <2 x double>, ptr %i.is, align 8, !tbaa !41
  %i.iv = fmul nsz <2 x double> %i.iu, splat (double 5.000000e-01)
  %i.iw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hq, <2 x double> splat (double 5.000000e-01), <2 x double> %i.iv)
  store <2 x double> %i.iw, ptr %i.it, align 8, !tbaa !41
  %i.ix = getelementptr inbounds nuw i8, ptr %i.co, i64 416
  %i.iy = getelementptr inbounds nuw i8, ptr %i.co, i64 336
  %i.iz = load <2 x double>, ptr %i.ix, align 8, !tbaa !41
  %i.ja = fmul nsz <2 x double> %i.iz, splat (double 5.000000e-01)
  %i.jb = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hx, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ja)
  store <2 x double> %i.jb, ptr %i.iy, align 8, !tbaa !41
  %i.jc = getelementptr inbounds nuw i8, ptr %i.co, i64 432
  %i.jd = getelementptr inbounds nuw i8, ptr %i.co, i64 352
  %i.je = load <2 x double>, ptr %i.jc, align 8, !tbaa !41
  %i.jf = fmul nsz <2 x double> %i.je, splat (double 5.000000e-01)
  %i.jg = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> splat (double 5.000000e-01), <2 x double> %i.jf)
  store <2 x double> %i.jg, ptr %i.jd, align 8, !tbaa !41
  %i.jh = getelementptr inbounds nuw i8, ptr %i.co, i64 448
  %i.ji = getelementptr inbounds nuw i8, ptr %i.co, i64 368
  %i.jj = load <2 x double>, ptr %i.jh, align 8, !tbaa !41
  %i.jk = fmul nsz <2 x double> %i.jj, splat (double 5.000000e-01)
  %i.jl = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> splat (double 5.000000e-01), <2 x double> %i.jk)
  store <2 x double> %i.jl, ptr %i.ji, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %.preheader

bb.i:                                             ; preds = %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.jm = icmp eq i32 %i.cv, 5
  %i.jn = select i1 %i.jm, ptr @lsf_3_1_MODE_7k95, ptr @lsf_3_1
  %i.jo = load i16, ptr %i.co, align 4, !tbaa !43
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [6 x i8], ptr %i.jn, i64 %i.jp ; 4 uses
  %.sroa.5.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  %.sroa.6.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %.sroa.6.0.copyload46.i = load i16, ptr %.sroa.6.0..sroa_idx45.i, align 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !43
  %i.jt = zext i16 %i.js to i32
  %i.ju = icmp samesign ult i32 %i.cv, 2          ; 2 uses
  %i.jv = zext i1 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jt, %i.jv
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [6 x i8], ptr @lsf_3_2, i64 %i.jx ; 3 uses
  %.sroa.7.6.copyload.i = load i16, ptr %i.jy, align 2 ; 2 uses
  %.sroa.9.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 2 ; 2 uses
  %.sroa.9.6..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.jz = select i1 %i.ju, ptr @lsf_3_3_MODE_5k15, ptr @lsf_3_3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.kb = load i16, ptr %i.ka, align 4, !tbaa !43
  %i.kc = zext i16 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8            ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.co, i64 122
  %6 = getelementptr inbounds nuw i8, ptr %i.co, i64 124
  %7 = getelementptr inbounds nuw i8, ptr %i.co, i64 126
  %i.kg = load <2 x i16>, ptr %i.jq, align 2
  %.sroa.5.0.copyload44.i = load i16, ptr %.sroa.5.0..sroa_idx43.i, align 2
  %.sroa.0.0.copyload42.i = load i16, ptr %i.jq, align 2
  %i.kh = shufflevector <2 x i16> %i.kg, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ki = insertelement <4 x i16> %i.kh, i16 %.sroa.6.0.copyload46.i, i64 2
  %i.kj = insertelement <4 x i16> %i.ki, i16 %.sroa.7.6.copyload.i, i64 3
  %i.kk = sitofp <4 x i16> %i.kj to <4 x float>
  %i.kl = load <4 x i16>, ptr %i.kf, align 4, !tbaa !43
  %i.km = sitofp <4 x i16> %i.kl to <4 x float>
  %i.kn = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> <float 2.916260e-01, float 3.286440e-01, float 3.836360e-01, float 4.056400e-01>, <4 x float> %i.kk)
  %i.ko = fpext <4 x float> %i.kn to <4 x double>
  %i.kp = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ko, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FA827FE56041894, double f0x3FB1C0010624DD2F, double f0x3FBD83FF5C28F5C3, double f0x3FC56FFC083126EA>)
  %i.kq = fptrunc <4 x double> %i.kp to <4 x float>
  store <4 x float> %i.kq, ptr %i.i, align 16, !tbaa !44
  %i.kr = getelementptr inbounds nuw i8, ptr %i.co, i64 128 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.co, i64 130
  %.sroa.11.12.extract.trunc.i = trunc i64 %i.ke to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.co, i64 132
  %.sroa.11.14.extract.shift.i = lshr i64 %i.ke, 16
  %.sroa.11.14.extract.trunc.i = trunc i64 %.sroa.11.14.extract.shift.i to i16
  %i.kt = load <2 x i16>, ptr %.sroa.9.6..sroa_idx.i, align 2
  %.sroa.10.6.copyload.i = load i16, ptr %.sroa.9.6..sroa_idx.i.a, align 2
  %.sroa.9.6.copyload.i = load i16, ptr %.sroa.9.6..sroa_idx.i, align 2
  %i.ku = shufflevector <2 x i16> %i.kt, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kv = insertelement <4 x i16> %i.ku, i16 %.sroa.11.12.extract.trunc.i, i64 2
  %i.kw = insertelement <4 x i16> %i.kv, i16 %.sroa.11.14.extract.trunc.i, i64 3
  %i.kx = sitofp <4 x i16> %i.kw to <4 x float>
  %i.ky = load <4 x i16>, ptr %i.kr, align 4, !tbaa !43
  %i.kz = sitofp <4 x i16> %i.ky to <4 x float>
  %i.la = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kz, <4 x float> <float 4.388730e-01, float 3.555600e-01, float 3.231200e-01, float 2.980650e-01>, <4 x float> %i.kx)
  %i.lb = fpext <4 x float> %i.la to <4 x double>
  %i.lc = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lb, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FCB3C01A9FBE76D, double f0x3FD05F01BA5E3540, double f0x3FD39F7F7CED9169, double f0x3FD5EE828F5C28F6>)
  %i.ld = fptrunc <4 x double> %i.lc to <4 x float>
  store <4 x float> %i.ld, ptr %i.y, align 16, !tbaa !44
  %i.le = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.lf = bitcast i64 %i.ke to <4 x i16>
  %i.lg = shufflevector <4 x i16> %i.lf, <4 x i16> poison, <2 x i32> <i32 2, i32 3>
  %i.lh = sitofp <2 x i16> %i.lg to <2 x float>
  %i.li = load <2 x i16>, ptr %i.le, align 4, !tbaa !43
  %i.lj = sitofp <2 x i16> %i.li to <2 x float>
  %i.lk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> <float 2.622380e-01, float 1.978760e-01>, <2 x float> %i.lh)
  %i.ll = fpext <2 x float> %i.lk to <2 x double>
  %i.lm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> splat (double f0x3F00000000000000), <2 x double> <double f0x3FD8EF00624DD2F2, double f0x3FDAC8FD916872B0>)
  %i.ln = fptrunc <2 x double> %i.lm to <2 x float>
  store <2 x float> %i.ln, ptr %i.z, align 16, !tbaa !44
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.i, double noundef 6.256100e-03, i32 noundef 10) #7
  %i.lo = getelementptr inbounds nuw i8, ptr %i.co, i64 2360 ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.co, i64 544
  %i.lq = getelementptr inbounds nuw i8, ptr %i.co, i64 664 ; 5 uses
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !50
  call void %i.lr(ptr noundef nonnull %i.lp, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !61
  %i.ls = load ptr, ptr %i.lo, align 8, !tbaa !50
  %i.lt = getelementptr inbounds nuw i8, ptr %i.co, i64 584
  call void %i.ls(ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !61
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !50
  %i.lv = getelementptr inbounds nuw i8, ptr %i.co, i64 624
  call void %i.lu(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !61
  %i.lw = load ptr, ptr %i.lo, align 8, !tbaa !50
  call void %i.lw(ptr noundef nonnull %i.lq, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 10) #7, !inline_history !61
  store i16 %.sroa.0.0.copyload42.i, ptr %i.kf, align 8
  store i16 %.sroa.5.0.copyload44.i, ptr %5, align 2
  store i16 %.sroa.6.0.copyload46.i, ptr %6, align 4
  store i16 %.sroa.7.6.copyload.i, ptr %7, align 2
  store i16 %.sroa.9.6.copyload.i, ptr %i.kr, align 8
  store i16 %.sroa.10.6.copyload.i, ptr %8, align 2
  store i64 %i.ke, ptr %i.ks, align 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.co, i64 384 ; 2 uses
  call void @ff_acelp_lsf2lspd(ptr noundef nonnull %i.lx, ptr noundef nonnull %i.i, i32 noundef 10) #7
  %i.ly = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.lz = getelementptr i8, ptr %i.co, i64 144
  %i.ma = load <2 x double>, ptr %i.ly, align 8, !tbaa !41 ; 4 uses
  %i.mb = load <2 x double>, ptr %i.lx, align 8, !tbaa !41
  %i.mc = fsub nsz <2 x double> %i.mb, %i.ma
  %i.md = fmul nsz <2 x double> %i.mc, splat (double 2.500000e-01) ; 3 uses
  %i.me = fadd nsz <2 x double> %i.ma, %i.md
  store <2 x double> %i.me, ptr %i.lz, align 8, !tbaa !41
  %i.mf = getelementptr inbounds nuw i8, ptr %i.co, i64 480
  %i.mg = getelementptr inbounds nuw i8, ptr %i.co, i64 400
  %i.mh = getelementptr i8, ptr %i.co, i64 160
  %i.mi = load <2 x double>, ptr %i.mf, align 8, !tbaa !41 ; 4 uses
  %i.mj = load <2 x double>, ptr %i.mg, align 8, !tbaa !41
  %i.mk = fsub nsz <2 x double> %i.mj, %i.mi
  %i.ml = fmul nsz <2 x double> %i.mk, splat (double 2.500000e-01) ; 3 uses
  %i.mm = fadd nsz <2 x double> %i.mi, %i.ml
  store <2 x double> %i.mm, ptr %i.mh, align 8, !tbaa !41
  %i.mn = getelementptr inbounds nuw i8, ptr %i.co, i64 496
  %i.mo = getelementptr inbounds nuw i8, ptr %i.co, i64 416
  %i.mp = getelementptr i8, ptr %i.co, i64 176
  %i.mq = load <2 x double>, ptr %i.mn, align 8, !tbaa !41 ; 4 uses
  %i.mr = load <2 x double>, ptr %i.mo, align 8, !tbaa !41
  %i.ms = fsub nsz <2 x double> %i.mr, %i.mq
  %i.mt = fmul nsz <2 x double> %i.ms, splat (double 2.500000e-01) ; 3 uses
  %i.mu = fadd nsz <2 x double> %i.mq, %i.mt
  store <2 x double> %i.mu, ptr %i.mp, align 8, !tbaa !41
  %i.mv = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.mw = getelementptr inbounds nuw i8, ptr %i.co, i64 432
  %i.mx = getelementptr i8, ptr %i.co, i64 192
  %i.my = load <2 x double>, ptr %i.mv, align 8, !tbaa !41 ; 4 uses
  %i.mz = load <2 x double>, ptr %i.mw, align 8, !tbaa !41
  %i.na = fsub nsz <2 x double> %i.mz, %i.my
  %i.nb = fmul nsz <2 x double> %i.na, splat (double 2.500000e-01) ; 3 uses
  %i.nc = fadd nsz <2 x double> %i.my, %i.nb
  store <2 x double> %i.nc, ptr %i.mx, align 8, !tbaa !41
  %i.nd = getelementptr inbounds nuw i8, ptr %i.co, i64 528
  %i.ne = getelementptr inbounds nuw i8, ptr %i.co, i64 448
  %i.nf = getelementptr i8, ptr %i.co, i64 208
  %i.ng = load <2 x double>, ptr %i.nd, align 8, !tbaa !41 ; 4 uses
  %i.nh = load <2 x double>, ptr %i.ne, align 8, !tbaa !41
  %i.ni = fsub nsz <2 x double> %i.nh, %i.ng
  %i.nj = fmul nsz <2 x double> %i.ni, splat (double 2.500000e-01) ; 3 uses
  %i.nk = fadd nsz <2 x double> %i.ng, %i.nj
  store <2 x double> %i.nk, ptr %i.nf, align 8, !tbaa !41
  %i.nl = getelementptr i8, ptr %i.co, i64 224
  %i.nm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ma)
  store <2 x double> %i.nm, ptr %i.nl, align 8, !tbaa !41
  %i.nn = getelementptr i8, ptr %i.co, i64 240
  %i.no = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> splat (double 2.000000e+00), <2 x double> %i.mi)
  store <2 x double> %i.no, ptr %i.nn, align 8, !tbaa !41
  %i.np = getelementptr i8, ptr %i.co, i64 256
  %i.nq = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> splat (double 2.000000e+00), <2 x double> %i.mq)
  store <2 x double> %i.nq, ptr %i.np, align 8, !tbaa !41
  %i.nr = getelementptr i8, ptr %i.co, i64 272
  %i.ns = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> splat (double 2.000000e+00), <2 x double> %i.my)
  store <2 x double> %i.ns, ptr %i.nr, align 8, !tbaa !41
  %i.nt = getelementptr i8, ptr %i.co, i64 288
  %i.nu = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ng)
  store <2 x double> %i.nu, ptr %i.nt, align 8, !tbaa !41
  %i.nv = getelementptr i8, ptr %i.co, i64 304
  %i.nw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ma)
  store <2 x double> %i.nw, ptr %i.nv, align 8, !tbaa !41
  %i.nx = getelementptr i8, ptr %i.co, i64 320
  %i.ny = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> splat (double 3.000000e+00), <2 x double> %i.mi)
  store <2 x double> %i.ny, ptr %i.nx, align 8, !tbaa !41
  %i.nz = getelementptr i8, ptr %i.co, i64 336
  %i.oa = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> splat (double 3.000000e+00), <2 x double> %i.mq)
  store <2 x double> %i.oa, ptr %i.nz, align 8, !tbaa !41
  %i.ob = getelementptr i8, ptr %i.co, i64 352
  %i.oc = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> splat (double 3.000000e+00), <2 x double> %i.my)
  store <2 x double> %i.oc, ptr %i.ob, align 8, !tbaa !41
  %i.od = getelementptr i8, ptr %i.co, i64 368
  %i.oe = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> splat (double 3.000000e+00), <2 x double> %i.ng)
  store <2 x double> %i.oe, ptr %i.od, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %i.of = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.og = getelementptr inbounds nuw i8, ptr %i.co, i64 744 ; 2 uses
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.of, ptr noundef nonnull %i.og, i32 noundef 5) #7
  %i.oh = getelementptr inbounds nuw i8, ptr %i.co, i64 224
  %i.oi = getelementptr inbounds nuw i8, ptr %i.co, i64 784
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.oh, ptr noundef nonnull %i.oi, i32 noundef 5) #7
  %i.oj = getelementptr inbounds nuw i8, ptr %i.co, i64 304
  %i.ok = getelementptr inbounds nuw i8, ptr %i.co, i64 824
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.oj, ptr noundef nonnull %i.ok, i32 noundef 5) #7
  %i.ol = getelementptr inbounds nuw i8, ptr %i.co, i64 384
  %i.om = getelementptr inbounds nuw i8, ptr %i.co, i64 864
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.ol, ptr noundef nonnull %i.om, i32 noundef 5) #7
  %i.on = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.oo = getelementptr inbounds nuw i8, ptr %i.co, i64 904 ; 4 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.co, i64 2344
  %i.oq = getelementptr inbounds nuw i8, ptr %i.co, i64 1688 ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.co, i64 1696
  %i.os = getelementptr inbounds nuw i8, ptr %i.co, i64 2048 ; 43 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.co, i64 2072 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.co, i64 1856 ; 6 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.co, i64 2384 ; 4 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.co, i64 2016
  %i.ow = getelementptr inbounds nuw i8, ptr %i.co, i64 2068 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.co, i64 544
  %i.oy = getelementptr inbounds nuw i8, ptr %i.co, i64 704 ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.co, i64 712
  %i.pa = getelementptr inbounds nuw i8, ptr %i.co, i64 2076 ; 3 uses
  %.phi.trans.insert.i141 = getelementptr inbounds nuw i8, ptr %i.co, i64 2077 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.co, i64 2052 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.co, i64 2056 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.co, i64 2060
  %i.pe = getelementptr inbounds nuw i8, ptr %i.co, i64 2064
  %i.pf = getelementptr inbounds nuw i8, ptr %i.co, i64 2032 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.co, i64 2080 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.co, i64 2085 ; 3 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.co, i64 2036
  %i.pj = getelementptr inbounds nuw i8, ptr %i.co, i64 2084 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.co, i64 2184 ; 5 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.co, i64 2088 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.co, i64 2368 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.co, i64 2376
  %i.po = getelementptr inbounds nuw i8, ptr %i.co, i64 2128
  %i.pp = getelementptr inbounds nuw i8, ptr %i.co, i64 2132
  %i.pq = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.pr = getelementptr inbounds nuw i8, ptr %i.co, i64 384
  %i.ps = getelementptr inbounds nuw i8, ptr %i.co, i64 908
  %i.pt = getelementptr inbounds nuw i8, ptr %i.co, i64 1068
  %i.pu = getelementptr inbounds nuw i8, ptr %i.co, i64 2144
  %i.pv = getelementptr inbounds nuw i8, ptr %i.co, i64 2304
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 11 uses
  %i.pw = getelementptr inbounds nuw [26 x i8], ptr %i.on, i64 %indvars.iv ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.px = load i32, ptr %i.fk, align 4, !tbaa !48 ; 4 uses
  %i.py = icmp eq i32 %i.px, 7
  %i.pz = load i16, ptr %i.pw, align 2, !tbaa !81 ; 2 uses
  %i.qa = zext i16 %i.pz to i32                   ; 6 uses
  br i1 %i.py, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.qb = and i64 %indvars.iv, 1
  %or.cond.i.i = icmp eq i64 %i.qb, 0
  br i1 %or.cond.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.qc = icmp ult i16 %i.pz, 463
  br i1 %i.qc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.qd = mul nuw nsw i32 %i.qa, 10923
  %i.qe = add nuw nsw i32 %i.qd, 1168761
  %i.qf = lshr i32 %i.qe, 16                      ; 2 uses
  %.neg18.i.i = mul nsw i32 %i.qf, -6
  %i.qg = add nuw nsw i32 %i.qa, 105
  %i.qh = add nsw i32 %i.qg, %.neg18.i.i          ; 2 uses
  store i32 %i.qh, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.n:                                             ; preds = %bb.l
  %i.qi = add nsw i32 %i.qa, -368
  store i32 0, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.o:                                             ; preds = %bb.k
  %i.qj = load i8, ptr %i.oo, align 8, !tbaa !82  ; 2 uses
  %i.qk = zext i8 %i.qj to i32
  %i.ql = mul nuw nsw i32 %i.qa, 10923
  %i.qm = add nuw nsw i32 %i.ql, 54615
  %i.qn = lshr i32 %i.qm, 16
  %i.qo = add nsw i32 %i.qn, -1                   ; 2 uses
  %.neg.i.i = mul nsw i32 %i.qo, -6
  %i.qp = add nsw i32 %i.qa, -3
  %i.qq = add nsw i32 %i.qp, %.neg.i.i            ; 2 uses
  store i32 %i.qq, ptr %i.h, align 4, !tbaa !30
  %i.qr = add nsw i32 %i.qk, -5
  %i.qs = icmp ult i8 %i.qj, 23
  %..i.i.i = call i32 @llvm.umin.i32(i32 %i.qr, i32 134)
  %.0.i.i.i = select i1 %i.qs, i32 18, i32 %..i.i.i
  %i.qt = add nsw i32 %.0.i.i.i, %i.qo
  br label %decode_pitch_vector.exit

bb.p:                                             ; preds = %bb.j
  %i.qu = load i8, ptr %i.oo, align 8, !tbaa !82
  %i.qv = zext i8 %i.qu to i32
  %i.qw = icmp ugt i32 %i.px, 1
  %i.qx = zext i1 %i.qw to i32
  %i.qy = icmp ult i32 %i.px, 4
  %i.qz = icmp eq i32 %i.px, 5
  %i.ra = select i1 %i.qz, i32 5, i32 6
  %i.rb = select i1 %i.qy, i32 4, i32 %i.ra
  %i.rc = trunc nuw nsw i64 %indvars.iv to i32
  call void @ff_decode_pitch_lag(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef %i.qa, i32 noundef %i.qv, i32 noundef range(i32 -2147483648, 4) %i.rc, i32 noundef %i.qx, i32 noundef %i.rb) #7
  %i.rd = load i32, ptr %i.h, align 4, !tbaa !30
  %i.re = shl nsw i32 %i.rd, 1                    ; 2 uses
  store i32 %i.re, ptr %i.h, align 4, !tbaa !30
  %.pre.i = load i32, ptr %i.g, align 4, !tbaa !30
end_hunk_0
begin_hunk_1_@synthesis:bb.a
  %i.ig = load float, ptr %i.if, align 4, !tbaa !44
  %i.ih = call nsz float @llvm.fabs.f32(float %i.ig)
  %i.ii = fcmp nsz ogt float %i.ih, 3.276800e+04
  br i1 %i.ii, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !44
  %i.il = call nsz float @llvm.fabs.f32(float %i.ik)
  %i.im = fcmp nsz ogt float %i.il, 3.276800e+04
  br i1 %i.im, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.io = load float, ptr %i.in, align 4, !tbaa !44
  %i.ip = call nsz float @llvm.fabs.f32(float %i.io)
  %i.iq = fcmp nsz ogt float %i.ip, 3.276800e+04
  br i1 %i.iq, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.is = load float, ptr %i.ir, align 4, !tbaa !44
  %i.it = call nsz float @llvm.fabs.f32(float %i.is)
  %i.iu = fcmp nsz ogt float %i.it, 3.276800e+04
  br i1 %i.iu, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !44
  %i.ix = call nsz float @llvm.fabs.f32(float %i.iw)
  %i.iy = fcmp nsz ogt float %i.ix, 3.276800e+04
  br i1 %i.iy, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !44
  %i.jb = call nsz float @llvm.fabs.f32(float %i.ja)
  %i.jc = fcmp nsz ogt float %i.jb, 3.276800e+04
  %spec.select = zext i1 %i.jc to i32
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.034 = phi i32 [ 1, %bb.c ], [ 1, %bb.w ], [ 1, %bb.d ], [ %spec.select, %bb.ap ], [ 1, %bb.e ], [ 1, %bb.ab ], [ 1, %bb.f ], [ 1, %bb.ao ], [ 1, %bb.g ], [ 1, %bb.x ], [ 1, %bb.h ], [ 1, %bb.an ], [ 1, %bb.i ], [ 1, %bb.af ], [ 1, %bb.j ], [ 1, %bb.am ], [ 1, %bb.k ], [ 1, %bb.y ], [ 1, %bb.l ], [ 1, %bb.al ], [ 1, %bb.m ], [ 1, %bb.ad ], [ 1, %bb.n ], [ 1, %bb.ak ], [ 1, %bb.o ], [ 1, %bb.z ], [ 1, %bb.p ], [ 1, %bb.aj ], [ 1, %bb.q ], [ 1, %bb.ae ], [ 1, %bb.r ], [ 1, %bb.ai ], [ 1, %bb.s ], [ 1, %bb.aa ], [ 1, %bb.t ], [ 1, %bb.ah ], [ 1, %bb.u ], [ 1, %bb.ac ], [ 1, %bb.v ], [ 1, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.034
}

declare void @ff_clear_fixed_vector(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @lsf2lsp_for_mode12k2(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 0, 3) %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x float], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = zext nneg i32 %4 to i64                  ; 5 uses
  %i.c = load ptr, ptr %3, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 2              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.b
  %i.i = load i32, ptr %i.h, align 2              ; 3 uses
  %.sroa.6.sroa.0.0.extract.trunc = trunc i32 %i.i to i16
  %.sroa.6.sroa.5.0.extract.shift = lshr i32 %i.i, 16
  %.sroa.6.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.6.sroa.5.0.extract.shift to i16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.b
  %i.m = load i32, ptr %i.l, align 2              ; 2 uses
  %.sroa.9.sroa.0.0.extract.trunc = trunc i32 %i.m to i16 ; 2 uses
  %.sroa.9.sroa.7.0.extract.shift = lshr i32 %i.m, 16
  %.sroa.9.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.9.sroa.7.0.extract.shift to i16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.b
  %i.q = load i32, ptr %i.p, align 2              ; 3 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i32 %i.q to i16
  %.sroa.16.sroa.5.0.extract.shift = lshr i32 %i.q, 16
  %.sroa.16.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.16.sroa.5.0.extract.shift to i16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.b
  %i.u = load i32, ptr %i.t, align 2              ; 2 uses
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  %i.v = sub i16 0, %.sroa.9.sroa.0.0.extract.trunc
  %i.w = sub i16 0, %.sroa.9.sroa.7.0.extract.trunc
  %.sroa.9.sroa.7.0 = select i1 %.not, i16 %.sroa.9.sroa.7.0.extract.trunc, i16 %i.w ; 2 uses
  %.sroa.9.sroa.0.0 = select i1 %.not, i16 %.sroa.9.sroa.0.0.extract.trunc, i16 %i.v ; 2 uses
  %.not18 = icmp eq i32 %6, 0                     ; 2 uses
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.e, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.i, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.9.sroa.7.0.insert.ext = zext i16 %.sroa.9.sroa.7.0 to i32
  %.sroa.9.sroa.7.0.insert.shift = shl nuw i32 %.sroa.9.sroa.7.0.insert.ext, 16
  %.sroa.9.sroa.0.0.insert.ext = zext i16 %.sroa.9.sroa.0.0 to i32
  %.sroa.9.sroa.0.0.insert.insert = or disjoint i32 %.sroa.9.sroa.7.0.insert.shift, %.sroa.9.sroa.0.0.insert.ext
  store i32 %.sroa.9.sroa.0.0.insert.insert, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %i.q, ptr %.sroa.16.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.u, ptr %.sroa.19.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = insertelement <2 x i32> poison, i32 %i.e, i64 0
  %i.z = bitcast <2 x i32> %i.y to <4 x i16>
  %i.aa = insertelement <4 x i16> %i.z, i16 %.sroa.6.sroa.0.0.extract.trunc, i64 2
  %i.ab = insertelement <4 x i16> %i.aa, i16 %.sroa.6.sroa.5.0.extract.trunc, i64 3
  %i.ac = sitofp <4 x i16> %i.ab to <4 x double>
  %i.ad = load <4 x float>, ptr %2, align 4, !tbaa !44
  %i.ae = fpext <4 x float> %i.ad to <4 x double>
  %i.af = fmul nsz <4 x double> %i.ae, splat (double 1.250000e-04)
  %i.ag = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ac, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.af)
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float>
  store <4 x float> %i.ah, ptr %i.a, align 16, !tbaa !44
  %i.ai = insertelement <4 x i16> poison, i16 %.sroa.9.sroa.0.0, i64 0
  %i.aj = insertelement <4 x i16> %i.ai, i16 %.sroa.9.sroa.7.0, i64 1
  %i.ak = insertelement <4 x i16> %i.aj, i16 %.sroa.16.sroa.0.0.extract.trunc, i64 2
  %i.al = insertelement <4 x i16> %i.ak, i16 %.sroa.16.sroa.5.0.extract.trunc, i64 3
  %i.am = sitofp <4 x i16> %i.al to <4 x double>
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load <4 x float>, ptr %i.an, align 4, !tbaa !44
  %i.aq = fpext <4 x float> %i.ap to <4 x double>
  %i.ar = fmul nsz <4 x double> %i.aq, splat (double 1.250000e-04)
  %i.as = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.am, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.ar)
  %i.at = fptrunc <4 x double> %i.as to <4 x float>
  store <4 x float> %i.at, ptr %i.ao, align 16, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = bitcast i32 %i.u to <2 x i16>
  %i.ax = sitofp <2 x i16> %i.aw to <2 x double>
  %i.ay = load <2 x float>, ptr %i.au, align 4, !tbaa !44
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fmul nsz <2 x double> %i.az, splat (double 1.250000e-04)
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double f0x3F00000000000000), <2 x double> %i.ba)
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  store <2 x float> %i.bc, ptr %i.av, align 16, !tbaa !44
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.a, double noundef 6.256100e-03, i32 noundef 10) #7
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !50
  call void %i.bg(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void %i.bh(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void %i.bj(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !50
  call void %i.bl(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 10) #7, !inline_history !99
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @ff_acelp_lsf2lspd(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 10) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

declare void @ff_set_min_dist_lsf(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_lsf2lspd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_decode_pitch_lag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_decode_10_pulses_35bits(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_celp_circ_addf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_scale_vector_to_given_sum_of_squares(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

declare void @ff_tilt_compensation(ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_adaptive_gain_control(ptr noundef, ptr noundef, float noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 356}
!30 = !{!6, !6, i64 0}
!31 = !{!5, !5, i64 0}
!32 = !{!"AMRNBFrame", !5, i64 0, !5, i64 10}
!33 = !{!"p1 float", !9, i64 0}
!34 = !{!"ACELPFContext", !9, i64 0, !9, i64 8}
!35 = !{!"ACELPVContext", !9, i64 0}
!36 = !{!"CELPFContext", !9, i64 0, !9, i64 8}
!37 = !{!"CELPMContext", !9, i64 0}
!38 = !{!"AMRContext", !32, i64 0, !5, i64 114, !6, i64 116, !5, i64 120, !5, i64 144, !5, i64 464, !5, i64 544, !5, i64 704, !5, i64 744, !5, i64 904, !5, i64 908, !33, i64 1688, !5, i64 1696, !5, i64 1856, !5, i64 2016, !5, i64 2032, !5, i64 2052, !16, i64 2072, !5, i64 2076, !5, i64 2077, !16, i64 2080, !5, i64 2084, !5, i64 2085, !5, i64 2088, !16, i64 2128, !16, i64 2132, !5, i64 2136, !5, i64 2144, !34, i64 2344, !35, i64 2360, !36, i64 2368, !37, i64 2384}
!39 = !{!38, !33, i64 1688}
!40 = !{!"double", !5, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"short", !5, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!16, !16, i64 0}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.isvectorized", i32 1}
!47 = !{!"llvm.loop.unroll.runtime.disable"}
!48 = !{!38, !6, i64 116}
!49 = !{!17, !17, i64 0}
!50 = !{!35, !9, i64 0}
!51 = !{!38, !9, i64 2384}
!52 = !{!38, !9, i64 2368}
!53 = !{!38, !9, i64 2360}
!54 = distinct !{!54, !45, !46, !47}
!55 = distinct !{!55, !45}
!56 = !{!9, !9, i64 0}
!57 = !{!27, !6, i64 344}
!58 = !{!27, !6, i64 348}
!59 = distinct !{!59, !45}
!60 = distinct !{!60, !45}
!61 = distinct !{null, null}
!62 = distinct !{null}
!63 = distinct !{!63, !45, !47, !46}
!64 = distinct !{!64, !45}
!65 = distinct !{null}
!66 = distinct !{null, null}
!67 = distinct !{!67, !45}
!68 = distinct !{!68, !45}
!69 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!70 = !{!69, !14, i64 24}
!71 = !{!69, !6, i64 32}
!72 = !{!"p2 omnipotent char", !25, i64 0}
!73 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!74 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!75 = !{!"AVFrame", !5, i64 0, !5, i64 64, !72, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !73, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !74, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!76 = !{!75, !6, i64 112}
!77 = !{!75, !72, i64 96}
!78 = !{!14, !14, i64 0}
!79 = !{!38, !5, i64 114}
!80 = !{!"AMRNBSubframe", !42, i64 0, !42, i64 2, !42, i64 4, !5, i64 6}
!81 = !{!80, !42, i64 0}
!82 = !{!38, !5, i64 904}
!83 = !{!38, !9, i64 2344}
!84 = !{!"AMRFixed", !6, i64 0, !5, i64 4, !5, i64 44, !6, i64 84, !6, i64 88, !16, i64 92}
!85 = !{!84, !6, i64 0}
!86 = !{!80, !42, i64 2}
!87 = !{!80, !42, i64 4}
!88 = !{!38, !16, i64 2072}
!89 = !{!84, !6, i64 88}
!90 = !{!84, !16, i64 92}
!91 = !{!38, !5, i64 2076}
!92 = !{!38, !5, i64 2077}
!93 = !{!38, !16, i64 2080}
!94 = !{!38, !5, i64 2085}
!95 = !{!38, !5, i64 2084}
!96 = !{!33, !33, i64 0}
!97 = !{!38, !9, i64 2376}
!98 = !{!38, !9, i64 2352}
!99 = distinct !{null}
end_hunk_1
