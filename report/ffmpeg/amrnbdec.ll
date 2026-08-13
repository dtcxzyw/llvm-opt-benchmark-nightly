inline.NumInlined: 22
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@amrnb_decode_init:bb.a
  tail call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #7
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #7
  store i32 1, ptr %i.c, align 8, !tbaa !30
  store i32 1, ptr %i.d, align 4, !tbaa !30
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi i32 [ 1, %bb.d ], [ %i.e, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !33
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 8000, ptr %i.h, align 8, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 348
  store i32 8, ptr %i.j, align 4, !tbaa !34
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %.preheader
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.preheader ], [ 0, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw [2392 x i8], ptr %i.b, i64 %indvars.iv46 ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1524
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1688
  store ptr %i.m, ptr %i.n, align 8, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 664
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 704
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %.lr.ph
  %index = phi i64 [ 0, %.lr.ph ], [ %index.next, %vector.body51 ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr @lsp_sub4_init, i64 %index
  %wide.load = load <2 x i8>, ptr %i.r, align 1, !tbaa !31
  %i.s = sext <2 x i8> %wide.load to <2 x i32>
  %i.t = mul nsw <2 x i32> %i.s, splat (i32 1000)
  %i.u = sitofp nsz <2 x i32> %i.t to <2 x float>
  %i.v = fmul nnan nsz <2 x float> %i.u, splat (float f0x38000000)
  %i.w = fpext nsz <2 x float> %i.v to <2 x double>
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index
  store <2 x double> %i.w, ptr %i.x, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @lsp_avg_init, i64 %index
  %wide.load52 = load <2 x i16>, ptr %i.y, align 4, !tbaa !45
  %i.z = sitofp <2 x i16> %wide.load52 to <2 x float>
  %i.aa = fmul nnan nsz <2 x float> %i.z, splat (float f0x38000000) ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index
  store <2 x float> %i.aa, ptr %i.ab, align 4, !tbaa !47
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index
  store <2 x float> %i.aa, ptr %i.ac, align 4, !tbaa !47
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ad = icmp eq i64 %index.next, 10
  br i1 %i.ad, label %.preheader, label %vector.body51, !llvm.loop !48

.preheader:                                       ; preds = %vector.body51
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 2016
  store <4 x float> splat (float -1.400000e+01), ptr %i.ae, align 8, !tbaa !47
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
  br i1 %i.al, label %.lr.ph, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %.preheader, %bb.g, %bb.b
  %.0 = phi i32 [ -1163346256, %bb.b ], [ 0, %bb.g ], [ 0, %.preheader ]
  ret i32 %.0
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
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 160, ptr %i.s, align 8, !tbaa !56
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
  %.0122180 = phi ptr [ %i.p, %.lr.ph ], [ %i.auk, %bb.ba ] ; 3 uses
  %.0125179 = phi i32 [ %i.r, %.lr.ph ], [ %i.aul, %bb.ba ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2392 x i8], ptr %i.n, i64 %indvars.iv192 ; 132 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !61
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv192
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62 ; 3 uses
  %i.cs = load i8, ptr %.0122180, align 1, !tbaa !31
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = lshr i32 %i.ct, 3
  %i.cv = and i32 %i.cu, 15                       ; 7 uses
  %i.cw = and i32 %i.ct, 4
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = zext i1 %i.cx to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 114
  store i8 %i.cy, ptr %i.cz, align 2, !tbaa !63
  %i.da = icmp samesign ugt i32 %i.cv, 8
  br i1 %i.da, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.db = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr @frame_sizes_nb, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !31
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %.not.i = icmp sgt i32 %.0125179, %i.de
  br i1 %.not.i, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %.not12.i = icmp eq i32 %i.cv, 8
  br i1 %.not12.i, label %.loopexit162, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.df = getelementptr inbounds nuw i8, ptr %.0122180, i64 1 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @amr_unpacking_bitmaps_per_mode, i64 %i.db
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !62 ; 2 uses
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
  %.01417.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %i.eo, %bb.f ]
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
  %i.ec = shl i32 %.01417.i.i, 2
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
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.f, !llvm.loop !64

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.g, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i.i
  %.119.i.i.epil.init = phi ptr [ %i.dm, %.lr.ph.i.i ], [ %i.dz, %.unr-lcssa ]
  %.01417.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %i.eo, %.unr-lcssa ]
  %lcmp.mod223 = trunc i8 %i.dj to i1
  call void @llvm.assume(i1 %lcmp.mod223)
  %i.ep = load i8, ptr %.119.i.i.epil.init, align 1, !tbaa !31
  %i.eq = zext i8 %i.ep to i32                    ; 2 uses
  %i.er = shl i32 %.01417.i.i.epil.init, 1
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
  store i16 %i.fd, ptr %i.fg, align 2, !tbaa !45
  %i.fh = load i8, ptr %scevgep23.i.i, align 1, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i, label %.loopexit206, label %.lr.ph.i.i, !llvm.loop !65

.loopexit:                                        ; preds = %bb.c, %bb.b
  %i.fi = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  store i32 15, ptr %i.fi, align 4, !tbaa !66
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %bb.bb

.loopexit162:                                     ; preds = %bb.d
  %i.fj = getelementptr inbounds nuw i8, ptr %i.co, i64 116
  store i32 8, ptr %i.fj, align 4, !tbaa !66
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.5) #7
  br label %bb.bb

.loopexit206:                                     ; preds = %bb.g, %bb.e
  %i.fk = getelementptr inbounds nuw i8, ptr %i.co, i64 116 ; 7 uses
  store i32 %i.cv, ptr %i.fk, align 4, !tbaa !66
  %i.fl = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.fm = icmp eq i32 %i.cv, 7
  br i1 %i.fm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.fn = load i16, ptr %i.co, align 4, !tbaa !45
  %i.fo = zext i16 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_1, i64 %i.fo
  store ptr %i.fp, ptr %i.k, align 16, !tbaa !67
  %i.fq = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !45
  %i.fs = zext i16 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_2, i64 %i.fs
  store ptr %i.ft, ptr %i.aa, align 8, !tbaa !67
  %i.fu = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 2 uses
  %i.fv = load i16, ptr %i.fu, align 4, !tbaa !45 ; 2 uses
  %i.fw = lshr i16 %i.fv, 1
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_3, i64 %i.fx
  store ptr %i.fy, ptr %i.ab, align 16, !tbaa !67
  %i.fz = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !45
  %i.gb = zext i16 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_4, i64 %i.gb
  store ptr %i.gc, ptr %i.ac, align 8, !tbaa !67
  %i.gd = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !45
  %i.gf = zext i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr @lsf_5_5, i64 %i.gf
  store ptr %i.gg, ptr %i.ad, align 16, !tbaa !67
  %i.gh = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.gi = load <4 x i16>, ptr %i.gh, align 4, !tbaa !45
  %i.gj = sitofp <4 x i16> %i.gi to <4 x double>
  %i.gk = fmul nnan nsz <4 x double> %i.gj, splat (double f0x3FCF400000000000)
  %i.gl = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gk, <4 x double> splat (double 6.500000e-01), <4 x double> <double f0x40751E4180000000, double f0x407FB147A0000000, double f0x408A17B020000000, double f0x40937C47A0000000>)
  %i.gm = fptrunc <4 x double> %i.gl to <4 x float>
  store <4 x float> %i.gm, ptr %i.j, align 16, !tbaa !47
  %i.gn = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %i.go = load <4 x i16>, ptr %i.gn, align 4, !tbaa !45
  %i.gp = sitofp <4 x i16> %i.go to <4 x double>
  %i.gq = fmul nnan nsz <4 x double> %i.gp, splat (double f0x3FCF400000000000)
  %i.gr = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gq, <4 x double> splat (double 6.500000e-01), <4 x double> <double 1.646000e+03, double f0x409EFBA3E0000000, double f0x40A2CFEB80000000, double f0x40A5280520000000>)
  %i.gs = fptrunc <4 x double> %i.gr to <4 x float>
  store <4 x float> %i.gs, ptr %i.ae, align 16, !tbaa !47
  %i.gt = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %i.gu = load <2 x i16>, ptr %i.gt, align 4, !tbaa !45
  %i.gv = sitofp <2 x i16> %i.gu to <2 x double>
  %i.gw = fmul nnan nsz <2 x double> %i.gv, splat (double f0x3FCF400000000000)
  %i.gx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> splat (double 6.500000e-01), <2 x double> <double 3.104000e+03, double f0x40AA21F0A0000000>)
  %i.gy = fptrunc <2 x double> %i.gx to <2 x float>
  store <2 x float> %i.gy, ptr %i.af, align 16, !tbaa !47
  %i.gz = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.ha = getelementptr inbounds nuw i8, ptr %i.co, i64 224 ; 2 uses
  %i.hb = and i16 %i.fv, 1
  %i.hc = zext nneg i16 %i.hb to i32
  call fastcc void @lsf2lsp_for_mode12k2(ptr noundef nonnull %i.co, ptr noundef nonnull %i.ha, ptr noundef %i.j, ptr noundef %i.k, i32 noundef 0, i32 noundef %i.hc, i32 noundef 0)
  %i.hd = getelementptr inbounds nuw i8, ptr %i.co, i64 384 ; 2 uses
end_hunk_0
begin_hunk_1_@amrnb_decode_frame:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  br label %.preheader

bb.i:                                             ; preds = %.loopexit206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  %i.jm = icmp eq i32 %i.cv, 5
  %i.jn = select i1 %i.jm, ptr @lsf_3_1_MODE_7k95, ptr @lsf_3_1
  %i.jo = load i16, ptr %i.co, align 4, !tbaa !45
  %i.jp = zext i16 %i.jo to i64
  %i.jq = getelementptr inbounds nuw [6 x i8], ptr %i.jn, i64 %i.jp ; 3 uses
  %.sroa.6.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %.sroa.6.0.copyload46.i = load i16, ptr %.sroa.6.0..sroa_idx45.i, align 2 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !45
  %i.jt = zext i16 %i.js to i32
  %i.ju = icmp samesign ult i32 %i.cv, 2          ; 2 uses
  %i.jv = zext i1 %i.ju to i32
  %i.jw = shl nuw nsw i32 %i.jt, %i.jv
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [6 x i8], ptr @lsf_3_2, i64 %i.jx ; 2 uses
  %.sroa.7.6.copyload.i = load i16, ptr %i.jy, align 2 ; 2 uses
  %.sroa.9.6..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jy, i64 2 ; 2 uses
  %i.jz = select i1 %i.ju, ptr @lsf_3_3_MODE_5k15, ptr @lsf_3_3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.kb = load i16, ptr %i.ka, align 4, !tbaa !45
  %i.kc = zext i16 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8            ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.co, i64 120 ; 2 uses
  %i.kg = load <2 x i16>, ptr %i.jq, align 2
  %i.kh = shufflevector <2 x i16> %i.kg, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ki = insertelement <4 x i16> %i.kh, i16 %.sroa.6.0.copyload46.i, i64 2
  %i.kj = insertelement <4 x i16> %i.ki, i16 %.sroa.7.6.copyload.i, i64 3
  %i.kk = sitofp <4 x i16> %i.kj to <4 x float>
  %i.kl = load <4 x i16>, ptr %i.kf, align 4, !tbaa !45
  %i.km = sitofp <4 x i16> %i.kl to <4 x float>
  %i.kn = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.km, <4 x float> <float 2.916260e-01, float 3.286440e-01, float 3.836360e-01, float 4.056400e-01>, <4 x float> %i.kk)
  %i.ko = fpext <4 x float> %i.kn to <4 x double>
  %i.kp = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ko, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FA827FE56041894, double f0x3FB1C0010624DD2F, double f0x3FBD83FF5C28F5C3, double f0x3FC56FFC083126EA>)
  %i.kq = fptrunc <4 x double> %i.kp to <4 x float>
  store <4 x float> %i.kq, ptr %i.i, align 16, !tbaa !47
  %i.kr = getelementptr inbounds nuw i8, ptr %i.co, i64 128 ; 2 uses
  %.sroa.11.12.extract.trunc.i = trunc i64 %i.ke to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.co, i64 132
  %.sroa.11.14.extract.shift.i = lshr i64 %i.ke, 16
  %.sroa.11.14.extract.trunc.i = trunc i64 %.sroa.11.14.extract.shift.i to i16
  %i.kt = load <2 x i16>, ptr %.sroa.9.6..sroa_idx.i, align 2
  %i.ku = shufflevector <2 x i16> %i.kt, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kv = insertelement <4 x i16> %i.ku, i16 %.sroa.11.12.extract.trunc.i, i64 2
  %i.kw = insertelement <4 x i16> %i.kv, i16 %.sroa.11.14.extract.trunc.i, i64 3
  %i.kx = sitofp <4 x i16> %i.kw to <4 x float>
  %i.ky = load <4 x i16>, ptr %i.kr, align 4, !tbaa !45
  %i.kz = sitofp <4 x i16> %i.ky to <4 x float>
  %i.la = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kz, <4 x float> <float 4.388730e-01, float 3.555600e-01, float 3.231200e-01, float 2.980650e-01>, <4 x float> %i.kx)
  %i.lb = fpext <4 x float> %i.la to <4 x double>
  %i.lc = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.lb, <4 x double> splat (double f0x3F00000000000000), <4 x double> <double f0x3FCB3C01A9FBE76D, double f0x3FD05F01BA5E3540, double f0x3FD39F7F7CED9169, double f0x3FD5EE828F5C28F6>)
  %i.ld = fptrunc <4 x double> %i.lc to <4 x float>
  store <4 x float> %i.ld, ptr %i.y, align 16, !tbaa !47
  %i.le = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  %.sroa.11.18.extract.shift.i = lshr i64 %i.ke, 48
  %.sroa.11.16.extract.shift.i = lshr i64 %i.ke, 32
  %.sroa.11.18.extract.trunc.i = trunc nuw i64 %.sroa.11.18.extract.shift.i to i16
  %.sroa.11.16.extract.trunc.i = trunc i64 %.sroa.11.16.extract.shift.i to i16
  %i.lf = insertelement <2 x i16> poison, i16 %.sroa.11.16.extract.trunc.i, i64 0
  %i.lg = insertelement <2 x i16> %i.lf, i16 %.sroa.11.18.extract.trunc.i, i64 1
  %i.lh = sitofp <2 x i16> %i.lg to <2 x float>
  %i.li = load <2 x i16>, ptr %i.le, align 4, !tbaa !45
  %i.lj = sitofp <2 x i16> %i.li to <2 x float>
  %i.lk = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> <float 2.622380e-01, float 1.978760e-01>, <2 x float> %i.lh)
  %i.ll = fpext <2 x float> %i.lk to <2 x double>
  %i.lm = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> splat (double f0x3F00000000000000), <2 x double> <double f0x3FD8EF00624DD2F2, double f0x3FDAC8FD916872B0>)
  %i.ln = fptrunc <2 x double> %i.lm to <2 x float>
  store <2 x float> %i.ln, ptr %i.z, align 16, !tbaa !47
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.i, double noundef 6.256100e-03, i32 noundef 10) #7
  %i.lo = getelementptr inbounds nuw i8, ptr %i.co, i64 2360 ; 4 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.co, i64 544
  %i.lq = getelementptr inbounds nuw i8, ptr %i.co, i64 664 ; 5 uses
  %i.lr = load ptr, ptr %i.lo, align 8, !tbaa !68
  call void %i.lr(ptr noundef nonnull %i.lp, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !69
  %i.ls = load ptr, ptr %i.lo, align 8, !tbaa !68
  %i.lt = getelementptr inbounds nuw i8, ptr %i.co, i64 584
  call void %i.ls(ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !69
  %i.lu = load ptr, ptr %i.lo, align 8, !tbaa !68
  %i.lv = getelementptr inbounds nuw i8, ptr %i.co, i64 624
  call void %i.lu(ptr noundef nonnull %i.lv, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !69
  %i.lw = load ptr, ptr %i.lo, align 8, !tbaa !68
  call void %i.lw(ptr noundef nonnull %i.lq, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.i, float noundef 0.000000e+00, float noundef 1.000000e+00, i32 noundef 10) #7, !inline_history !69
  %i.lx = load <2 x i16>, ptr %i.jq, align 2
  %i.ly = shufflevector <2 x i16> %i.lx, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lz = insertelement <4 x i16> %i.ly, i16 %.sroa.6.0.copyload46.i, i64 2
  %i.ma = insertelement <4 x i16> %i.lz, i16 %.sroa.7.6.copyload.i, i64 3
  store <4 x i16> %i.ma, ptr %i.kf, align 8
  %i.mb = load <2 x i16>, ptr %.sroa.9.6..sroa_idx.i, align 2
  store <2 x i16> %i.mb, ptr %i.kr, align 8
  store i64 %i.ke, ptr %i.ks, align 4
  %i.mc = getelementptr inbounds nuw i8, ptr %i.co, i64 384 ; 2 uses
  call void @ff_acelp_lsf2lspd(ptr noundef nonnull %i.mc, ptr noundef nonnull %i.i, i32 noundef 10) #7
  %i.md = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.me = getelementptr i8, ptr %i.co, i64 144
  %i.mf = load <2 x double>, ptr %i.md, align 8, !tbaa !43 ; 4 uses
  %i.mg = load <2 x double>, ptr %i.mc, align 8, !tbaa !43
  %i.mh = fsub nsz <2 x double> %i.mg, %i.mf
  %i.mi = fmul nsz <2 x double> %i.mh, splat (double 2.500000e-01) ; 3 uses
  %i.mj = fadd nsz <2 x double> %i.mf, %i.mi
  store <2 x double> %i.mj, ptr %i.me, align 8, !tbaa !43
  %i.mk = getelementptr inbounds nuw i8, ptr %i.co, i64 480
  %i.ml = getelementptr inbounds nuw i8, ptr %i.co, i64 400
  %i.mm = getelementptr i8, ptr %i.co, i64 160
  %i.mn = load <2 x double>, ptr %i.mk, align 8, !tbaa !43 ; 4 uses
  %i.mo = load <2 x double>, ptr %i.ml, align 8, !tbaa !43
  %i.mp = fsub nsz <2 x double> %i.mo, %i.mn
  %i.mq = fmul nsz <2 x double> %i.mp, splat (double 2.500000e-01) ; 3 uses
  %i.mr = fadd nsz <2 x double> %i.mn, %i.mq
  store <2 x double> %i.mr, ptr %i.mm, align 8, !tbaa !43
  %i.ms = getelementptr inbounds nuw i8, ptr %i.co, i64 496
  %i.mt = getelementptr inbounds nuw i8, ptr %i.co, i64 416
  %i.mu = getelementptr i8, ptr %i.co, i64 176
  %i.mv = load <2 x double>, ptr %i.ms, align 8, !tbaa !43 ; 4 uses
  %i.mw = load <2 x double>, ptr %i.mt, align 8, !tbaa !43
  %i.mx = fsub nsz <2 x double> %i.mw, %i.mv
  %i.my = fmul nsz <2 x double> %i.mx, splat (double 2.500000e-01) ; 3 uses
  %i.mz = fadd nsz <2 x double> %i.mv, %i.my
  store <2 x double> %i.mz, ptr %i.mu, align 8, !tbaa !43
  %i.na = getelementptr inbounds nuw i8, ptr %i.co, i64 512
  %i.nb = getelementptr inbounds nuw i8, ptr %i.co, i64 432
  %i.nc = getelementptr i8, ptr %i.co, i64 192
  %i.nd = load <2 x double>, ptr %i.na, align 8, !tbaa !43 ; 4 uses
  %i.ne = load <2 x double>, ptr %i.nb, align 8, !tbaa !43
  %i.nf = fsub nsz <2 x double> %i.ne, %i.nd
  %i.ng = fmul nsz <2 x double> %i.nf, splat (double 2.500000e-01) ; 3 uses
  %i.nh = fadd nsz <2 x double> %i.nd, %i.ng
  store <2 x double> %i.nh, ptr %i.nc, align 8, !tbaa !43
  %i.ni = getelementptr inbounds nuw i8, ptr %i.co, i64 528
  %i.nj = getelementptr inbounds nuw i8, ptr %i.co, i64 448
  %i.nk = getelementptr i8, ptr %i.co, i64 208
  %i.nl = load <2 x double>, ptr %i.ni, align 8, !tbaa !43 ; 4 uses
  %i.nm = load <2 x double>, ptr %i.nj, align 8, !tbaa !43
  %i.nn = fsub nsz <2 x double> %i.nm, %i.nl
  %i.no = fmul nsz <2 x double> %i.nn, splat (double 2.500000e-01) ; 3 uses
  %i.np = fadd nsz <2 x double> %i.nl, %i.no
  store <2 x double> %i.np, ptr %i.nk, align 8, !tbaa !43
  %i.nq = getelementptr i8, ptr %i.co, i64 224
  %i.nr = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> splat (double 2.000000e+00), <2 x double> %i.mf)
  store <2 x double> %i.nr, ptr %i.nq, align 8, !tbaa !43
  %i.ns = getelementptr i8, ptr %i.co, i64 240
  %i.nt = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> splat (double 2.000000e+00), <2 x double> %i.mn)
  store <2 x double> %i.nt, ptr %i.ns, align 8, !tbaa !43
  %i.nu = getelementptr i8, ptr %i.co, i64 256
  %i.nv = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> splat (double 2.000000e+00), <2 x double> %i.mv)
  store <2 x double> %i.nv, ptr %i.nu, align 8, !tbaa !43
  %i.nw = getelementptr i8, ptr %i.co, i64 272
  %i.nx = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> splat (double 2.000000e+00), <2 x double> %i.nd)
  store <2 x double> %i.nx, ptr %i.nw, align 8, !tbaa !43
  %i.ny = getelementptr i8, ptr %i.co, i64 288
  %i.nz = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> splat (double 2.000000e+00), <2 x double> %i.nl)
  store <2 x double> %i.nz, ptr %i.ny, align 8, !tbaa !43
  %i.oa = getelementptr i8, ptr %i.co, i64 304
  %i.ob = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> splat (double 3.000000e+00), <2 x double> %i.mf)
  store <2 x double> %i.ob, ptr %i.oa, align 8, !tbaa !43
  %i.oc = getelementptr i8, ptr %i.co, i64 320
  %i.od = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mq, <2 x double> splat (double 3.000000e+00), <2 x double> %i.mn)
  store <2 x double> %i.od, ptr %i.oc, align 8, !tbaa !43
  %i.oe = getelementptr i8, ptr %i.co, i64 336
  %i.of = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> splat (double 3.000000e+00), <2 x double> %i.mv)
  store <2 x double> %i.of, ptr %i.oe, align 8, !tbaa !43
  %i.og = getelementptr i8, ptr %i.co, i64 352
  %i.oh = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ng, <2 x double> splat (double 3.000000e+00), <2 x double> %i.nd)
  store <2 x double> %i.oh, ptr %i.og, align 8, !tbaa !43
  %i.oi = getelementptr i8, ptr %i.co, i64 368
  %i.oj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.no, <2 x double> splat (double 3.000000e+00), <2 x double> %i.nl)
  store <2 x double> %i.oj, ptr %i.oi, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  br label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.h
  %i.ok = getelementptr inbounds nuw i8, ptr %i.co, i64 144
  %i.ol = getelementptr inbounds nuw i8, ptr %i.co, i64 744 ; 2 uses
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.ok, ptr noundef nonnull %i.ol, i32 noundef 5) #7
  %i.om = getelementptr inbounds nuw i8, ptr %i.co, i64 224
  %i.on = getelementptr inbounds nuw i8, ptr %i.co, i64 784
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.om, ptr noundef nonnull %i.on, i32 noundef 5) #7
  %i.oo = getelementptr inbounds nuw i8, ptr %i.co, i64 304
  %i.op = getelementptr inbounds nuw i8, ptr %i.co, i64 824
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.oo, ptr noundef nonnull %i.op, i32 noundef 5) #7
  %i.oq = getelementptr inbounds nuw i8, ptr %i.co, i64 384
  %i.or = getelementptr inbounds nuw i8, ptr %i.co, i64 864
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.oq, ptr noundef nonnull %i.or, i32 noundef 5) #7
  %i.os = getelementptr inbounds nuw i8, ptr %i.co, i64 10
  %i.ot = getelementptr inbounds nuw i8, ptr %i.co, i64 904 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.co, i64 2344
  %i.ov = getelementptr inbounds nuw i8, ptr %i.co, i64 1688 ; 5 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.co, i64 1696
  %i.ox = getelementptr inbounds nuw i8, ptr %i.co, i64 2048 ; 43 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.co, i64 2072 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.co, i64 1856 ; 6 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.co, i64 2384 ; 4 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.co, i64 2016
  %i.pb = getelementptr inbounds nuw i8, ptr %i.co, i64 2068 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.co, i64 544
  %i.pd = getelementptr inbounds nuw i8, ptr %i.co, i64 704 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.co, i64 708
  %6 = getelementptr inbounds nuw i8, ptr %i.co, i64 724
  %i.pe = getelementptr inbounds nuw i8, ptr %i.co, i64 740
  %i.pf = getelementptr inbounds nuw i8, ptr %i.co, i64 2076 ; 3 uses
  %.phi.trans.insert.i141 = getelementptr inbounds nuw i8, ptr %i.co, i64 2077 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.co, i64 2052 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.co, i64 2056 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.co, i64 2060
  %i.pj = getelementptr inbounds nuw i8, ptr %i.co, i64 2064
  %i.pk = getelementptr inbounds nuw i8, ptr %i.co, i64 2032 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.co, i64 2080 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.co, i64 2085 ; 3 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.co, i64 2036
  %i.po = getelementptr inbounds nuw i8, ptr %i.co, i64 2084 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.co, i64 2184 ; 5 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.co, i64 2088 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.co, i64 2368 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.co, i64 2376
  %i.pt = getelementptr inbounds nuw i8, ptr %i.co, i64 2128
  %i.pu = getelementptr inbounds nuw i8, ptr %i.co, i64 2132
  %i.pv = getelementptr inbounds nuw i8, ptr %i.co, i64 464
  %i.pw = getelementptr inbounds nuw i8, ptr %i.co, i64 384
  %i.px = getelementptr inbounds nuw i8, ptr %i.co, i64 908
  %i.py = getelementptr inbounds nuw i8, ptr %i.co, i64 1068
  %i.pz = getelementptr inbounds nuw i8, ptr %i.co, i64 2144
  %i.qa = getelementptr inbounds nuw i8, ptr %i.co, i64 2304
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.az
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.az ] ; 11 uses
  %i.qb = getelementptr inbounds nuw [26 x i8], ptr %i.os, i64 %indvars.iv ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  %i.qc = load i32, ptr %i.fk, align 4, !tbaa !66 ; 4 uses
  %i.qd = icmp eq i32 %i.qc, 7
  %i.qe = load i16, ptr %i.qb, align 2, !tbaa !70 ; 2 uses
  %i.qf = zext i16 %i.qe to i32                   ; 6 uses
  br i1 %i.qd, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.qg = and i64 %indvars.iv, 1
  %or.cond.i.i = icmp eq i64 %i.qg, 0
  br i1 %or.cond.i.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.qh = icmp ult i16 %i.qe, 463
  br i1 %i.qh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.qi = mul nuw nsw i32 %i.qf, 10923
  %i.qj = add nuw nsw i32 %i.qi, 1168761
  %i.qk = lshr i32 %i.qj, 16                      ; 2 uses
  %.neg18.i.i = mul nsw i32 %i.qk, -6
  %i.ql = add nuw nsw i32 %i.qf, 105
  %i.qm = add nsw i32 %i.ql, %.neg18.i.i          ; 2 uses
  store i32 %i.qm, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.n:                                             ; preds = %bb.l
  %i.qn = add nsw i32 %i.qf, -368
  store i32 0, ptr %i.h, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

bb.o:                                             ; preds = %bb.k
  %i.qo = load i8, ptr %i.ot, align 8, !tbaa !72  ; 2 uses
  %i.qp = zext i8 %i.qo to i32
  %i.qq = mul nuw nsw i32 %i.qf, 10923
  %i.qr = add nuw nsw i32 %i.qq, 54615
  %i.qs = lshr i32 %i.qr, 16
  %i.qt = add nsw i32 %i.qs, -1                   ; 2 uses
  %.neg.i.i = mul nsw i32 %i.qt, -6
  %i.qu = add nsw i32 %i.qf, -3
  %i.qv = add nsw i32 %i.qu, %.neg.i.i            ; 2 uses
  store i32 %i.qv, ptr %i.h, align 4, !tbaa !30
  %i.qw = add nsw i32 %i.qp, -5
  %i.qx = icmp ult i8 %i.qo, 23
  %..i.i.i = call i32 @llvm.umin.i32(i32 %i.qw, i32 134)
  %.0.i.i.i = select i1 %i.qx, i32 18, i32 %..i.i.i
  %i.qy = add nsw i32 %.0.i.i.i, %i.qt
  br label %decode_pitch_vector.exit

bb.p:                                             ; preds = %bb.j
  %i.qz = load i8, ptr %i.ot, align 8, !tbaa !72
  %i.ra = zext i8 %i.qz to i32
  %i.rb = icmp ugt i32 %i.qc, 1
  %i.rc = zext i1 %i.rb to i32
  %i.rd = icmp ult i32 %i.qc, 4
  %i.re = icmp eq i32 %i.qc, 5
  %i.rf = select i1 %i.re, i32 5, i32 6
  %i.rg = select i1 %i.rd, i32 4, i32 %i.rf
  %i.rh = trunc nuw nsw i64 %indvars.iv to i32
  call void @ff_decode_pitch_lag(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, i32 noundef %i.qf, i32 noundef %i.ra, i32 noundef range(i32 -2147483648, 4) %i.rh, i32 noundef %i.rc, i32 noundef %i.rg) #7
  %i.ri = load i32, ptr %i.h, align 4, !tbaa !30
  %i.rj = shl nsw i32 %i.ri, 1                    ; 2 uses
  store i32 %i.rj, ptr %i.h, align 4, !tbaa !30
  %.pre.i = load i32, ptr %i.g, align 4, !tbaa !30
  br label %decode_pitch_vector.exit

decode_pitch_vector.exit:                         ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.rk = phi i32 [ %i.qv, %bb.o ], [ 0, %bb.n ], [ %i.qm, %bb.m ], [ %i.rj, %bb.p ] ; 3 uses
  %i.rl = phi i32 [ %i.qy, %bb.o ], [ %i.qn, %bb.n ], [ %i.qk, %bb.m ], [ %.pre.i, %bb.p ] ; 2 uses
  %i.rm = trunc i32 %i.rl to i8
  store i8 %i.rm, ptr %i.ot, align 8, !tbaa !72
  %i.rn = icmp sgt i32 %i.rk, 0                   ; 2 uses
  %i.ro = zext i1 %i.rn to i32
  %i.rp = add nsw i32 %i.rl, %i.ro                ; 2 uses
  store i32 %i.rp, ptr %i.g, align 4, !tbaa !30
  %i.rq = load ptr, ptr %i.ou, align 8, !tbaa !73
  %i.rr = load ptr, ptr %i.ov, align 8, !tbaa !35 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 4
  %i.rt = sext i32 %i.rp to i64
  %i.ru = sub nsw i64 0, %i.rt
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.ru
  %i.rw = add nsw i32 %i.rk, 6
  %i.rx = select i1 %i.rn, i32 %i.rk, i32 %i.rw
  call void %i.rq(ptr noundef %i.rr, ptr noundef nonnull %i.rv, ptr noundef nonnull @ff_b60_sinc, i32 noundef 6, i32 noundef %i.rx, i32 noundef 10, i32 noundef 40) #7, !inline_history !74
  %i.ry = load ptr, ptr %i.ov, align 8, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ow, ptr noundef nonnull align 4 dereferenceable(160) %i.ry, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qb, i64 6 ; 3 uses
  %i.sa = load i32, ptr %i.fk, align 4, !tbaa !66 ; 3 uses
  switch i32 %i.sa, label %bb.s [
    i32 7, label %bb.q
    i32 6, label %bb.r
  ]

bb.q:                                             ; preds = %decode_pitch_vector.exit
  call void @ff_decode_10_pulses_35bits(ptr noundef nonnull %i.rz, ptr noundef nonnull %4, ptr noundef nonnull @gray_decode, i32 noundef 5, i32 noundef 3) #7
  br label %decode_fixed_sparse.exit

bb.r:                                             ; preds = %decode_pitch_vector.exit
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qb, i64 14
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qb, i64 18
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !45 ; 3 uses
  %i.sf = ashr i16 %i.se, 2
  %i.sg = sext i16 %i.sf to i32
  %i.sh = mul nsw i32 %i.sg, 25
  %i.si = add nsw i32 %i.sh, 12
  %i.sj = lshr i32 %i.si, 5
  %.lhs.trunc.i.i = trunc i32 %i.sj to i16        ; 2 uses
  %i.sk = srem i16 %.lhs.trunc.i.i, 5
  %.sext.i.i = sext i16 %i.sk to i32              ; 2 uses
  %i.sl = sdiv i16 %.lhs.trunc.i.i, 5             ; 2 uses
  %i.sm = and i16 %i.sl, 1
  %.not.i.i135 = icmp eq i16 %i.sm, 0
  %i.sn = sub nsw i32 4, %.sext.i.i
  %spec.select.i.i = select i1 %.not.i.i135, i32 %.sext.i.i, i32 %i.sn
  %.sext32.i.i = sext i16 %i.sl to i32
  store i32 8, ptr %4, align 4, !tbaa !75
  %i.so = shl i16 %i.se, 2
  %i.sp = and i16 %i.so, 4
  %i.sq = shl i16 %i.se, 1
  %i.sr = and i16 %i.sq, 4
  %i.ss = load i16, ptr %i.sc, align 2, !tbaa !45
  %i.st = load i16, ptr %i.sb, align 2, !tbaa !45
  %i.su = zext nneg i16 %i.sp to i32
  %i.sv = zext nneg i16 %i.sr to i32
  %i.sw = sext i16 %i.ss to i32                   ; 4 uses
  %i.sx = sext i16 %i.st to i32                   ; 4 uses
  %i.sy = ashr i32 %i.sx, 3
  %i.sz = sext i32 %i.sy to i64
  %i.ta = getelementptr inbounds [3 x i8], ptr @base_five_table, i64 %i.sz ; 3 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 2
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !31
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 1
  %i.te = load i8, ptr %i.td, align 1, !tbaa !31
  %i.tf = load i8, ptr %i.ta, align 1, !tbaa !31
  %i.tg = ashr i32 %i.sw, 3
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [3 x i8], ptr @base_five_table, i64 %i.th ; 3 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !31
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !31
  %i.tn = load i8, ptr %i.ti, align 1, !tbaa !31
  %i.to = zext i8 %i.tn to i32
  %i.tp = zext i8 %i.tm to i32
  %i.tq = zext i8 %i.tk to i32
  %i.tr = zext i8 %i.tf to i32
  %i.ts = zext i8 %i.te to i32
  %i.tt = zext i8 %i.tc to i32
  %i.tu = shl nsw i32 %spec.select.i.i, 3
  %i.tv = shl nuw nsw i32 %i.tq, 3
  %i.tw = shl nuw nsw i32 %i.tr, 3
  %i.tx = shl nuw nsw i32 %i.tt, 3
  %i.ty = shl nsw i32 %i.sw, 2
  %i.tz = shl nsw i32 %i.sx, 2
  %i.ua = and i32 %i.ty, 4
  %i.ub = and i32 %i.sx, 4
  %i.uc = and i32 %i.tz, 4
  %i.ud = or disjoint i32 %i.tu, %i.su            ; 2 uses
  %i.ue = or disjoint i32 %i.tv, %i.ua            ; 2 uses
  %i.uf = or disjoint i32 %i.tw, %i.ub            ; 2 uses
  %i.ug = or disjoint i32 %i.tx, %i.uc            ; 2 uses
  store i32 %i.ug, ptr %i.ag, align 4, !tbaa !30
  %i.uh = shl nsw i32 %.sext32.i.i, 3
  %i.ui = shl nuw nsw i32 %i.tp, 3
  %i.uj = shl nuw nsw i32 %i.to, 3
  %i.uk = shl nuw nsw i32 %i.ts, 3
  %i.ul = shl nsw i32 %i.sw, 1
  %i.um = shl nsw i32 %i.sx, 1
end_hunk_1
begin_hunk_2_@amrnb_decode_frame:bb.a
  %i.agm = fmul nsz float %i.agj, %i.agl
  store float %i.agm, ptr %i.agk, align 4, !tbaa !47
  %i.agn = load float, ptr %i.ox, align 8, !tbaa !47
  %i.ago = getelementptr inbounds nuw i8, ptr %i.abl, i64 132 ; 2 uses
  %i.agp = load float, ptr %i.ago, align 4, !tbaa !47
  %i.agq = fmul nsz float %i.agn, %i.agp
  store float %i.agq, ptr %i.ago, align 4, !tbaa !47
  %i.agr = load float, ptr %i.ox, align 8, !tbaa !47
  %i.ags = getelementptr inbounds nuw i8, ptr %i.abl, i64 136 ; 2 uses
  %i.agt = load float, ptr %i.ags, align 4, !tbaa !47
  %i.agu = fmul nsz float %i.agr, %i.agt
  store float %i.agu, ptr %i.ags, align 4, !tbaa !47
  %i.agv = load float, ptr %i.ox, align 8, !tbaa !47
  %i.agw = getelementptr inbounds nuw i8, ptr %i.abl, i64 140 ; 2 uses
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !47
  %i.agy = fmul nsz float %i.agv, %i.agx
  store float %i.agy, ptr %i.agw, align 4, !tbaa !47
  %i.agz = load float, ptr %i.ox, align 8, !tbaa !47
  %i.aha = getelementptr inbounds nuw i8, ptr %i.abl, i64 144 ; 2 uses
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !47
  %i.ahc = fmul nsz float %i.agz, %i.ahb
  store float %i.ahc, ptr %i.aha, align 4, !tbaa !47
  %i.ahd = load float, ptr %i.ox, align 8, !tbaa !47
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.abl, i64 148 ; 2 uses
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !47
  %i.ahg = fmul nsz float %i.ahd, %i.ahf
  store float %i.ahg, ptr %i.ahe, align 4, !tbaa !47
  %i.ahh = load float, ptr %i.ox, align 8, !tbaa !47
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.abl, i64 152 ; 2 uses
  %i.ahj = load float, ptr %i.ahi, align 4, !tbaa !47
  %i.ahk = fmul nsz float %i.ahh, %i.ahj
  store float %i.ahk, ptr %i.ahi, align 4, !tbaa !47
  %i.ahl = load float, ptr %i.ox, align 8, !tbaa !47
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.abl, i64 156 ; 2 uses
  %i.ahn = load float, ptr %i.ahm, align 4, !tbaa !47
  %i.aho = fmul nsz float %i.ahl, %i.ahn
  store float %i.aho, ptr %i.ahm, align 4, !tbaa !47
  %i.ahp = load ptr, ptr %i.ov, align 8, !tbaa !35
  %i.ahq = load float, ptr %i.pb, align 4, !tbaa !47
  call void @ff_set_fixed_vector(ptr noundef %i.ahp, ptr noundef nonnull %4, float noundef %i.ahq, i32 noundef 40) #7
  %i.ahr = load ptr, ptr %i.ov, align 8, !tbaa !35 ; 41 uses
  %i.ahs = load float, ptr %i.ahr, align 4, !tbaa !47
  %i.aht = call nsz float @llvm.trunc.f32(float %i.ahs)
  store float %i.aht, ptr %i.ahr, align 4, !tbaa !47
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4 ; 2 uses
  %i.ahv = load float, ptr %i.ahu, align 4, !tbaa !47
  %i.ahw = call nsz float @llvm.trunc.f32(float %i.ahv)
  store float %i.ahw, ptr %i.ahu, align 4, !tbaa !47
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8 ; 2 uses
  %i.ahy = load float, ptr %i.ahx, align 4, !tbaa !47
  %i.ahz = call nsz float @llvm.trunc.f32(float %i.ahy)
  store float %i.ahz, ptr %i.ahx, align 4, !tbaa !47
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahr, i64 12 ; 2 uses
  %i.aib = load float, ptr %i.aia, align 4, !tbaa !47
  %i.aic = call nsz float @llvm.trunc.f32(float %i.aib)
  store float %i.aic, ptr %i.aia, align 4, !tbaa !47
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahr, i64 16 ; 2 uses
  %i.aie = load float, ptr %i.aid, align 4, !tbaa !47
  %i.aif = call nsz float @llvm.trunc.f32(float %i.aie)
  store float %i.aif, ptr %i.aid, align 4, !tbaa !47
  %i.aig = getelementptr inbounds nuw i8, ptr %i.ahr, i64 20 ; 2 uses
  %i.aih = load float, ptr %i.aig, align 4, !tbaa !47
  %i.aii = call nsz float @llvm.trunc.f32(float %i.aih)
  store float %i.aii, ptr %i.aig, align 4, !tbaa !47
  %i.aij = getelementptr inbounds nuw i8, ptr %i.ahr, i64 24 ; 2 uses
  %i.aik = load float, ptr %i.aij, align 4, !tbaa !47
  %i.ail = call nsz float @llvm.trunc.f32(float %i.aik)
  store float %i.ail, ptr %i.aij, align 4, !tbaa !47
  %i.aim = getelementptr inbounds nuw i8, ptr %i.ahr, i64 28 ; 2 uses
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !47
  %i.aio = call nsz float @llvm.trunc.f32(float %i.ain)
  store float %i.aio, ptr %i.aim, align 4, !tbaa !47
  %i.aip = getelementptr inbounds nuw i8, ptr %i.ahr, i64 32 ; 2 uses
  %i.aiq = load float, ptr %i.aip, align 4, !tbaa !47
  %i.air = call nsz float @llvm.trunc.f32(float %i.aiq)
  store float %i.air, ptr %i.aip, align 4, !tbaa !47
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahr, i64 36 ; 2 uses
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !47
  %i.aiu = call nsz float @llvm.trunc.f32(float %i.ait)
  store float %i.aiu, ptr %i.ais, align 4, !tbaa !47
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 40 ; 2 uses
  %i.aiw = load float, ptr %i.aiv, align 4, !tbaa !47
  %i.aix = call nsz float @llvm.trunc.f32(float %i.aiw)
  store float %i.aix, ptr %i.aiv, align 4, !tbaa !47
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.ahr, i64 44 ; 2 uses
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !47
  %i.aja = call nsz float @llvm.trunc.f32(float %i.aiz)
  store float %i.aja, ptr %i.aiy, align 4, !tbaa !47
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.ahr, i64 48 ; 2 uses
  %i.ajc = load float, ptr %i.ajb, align 4, !tbaa !47
  %i.ajd = call nsz float @llvm.trunc.f32(float %i.ajc)
  store float %i.ajd, ptr %i.ajb, align 4, !tbaa !47
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ahr, i64 52 ; 2 uses
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !47
  %i.ajg = call nsz float @llvm.trunc.f32(float %i.ajf)
  store float %i.ajg, ptr %i.aje, align 4, !tbaa !47
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ahr, i64 56 ; 2 uses
  %i.aji = load float, ptr %i.ajh, align 4, !tbaa !47
  %i.ajj = call nsz float @llvm.trunc.f32(float %i.aji)
  store float %i.ajj, ptr %i.ajh, align 4, !tbaa !47
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ahr, i64 60 ; 2 uses
  %i.ajl = load float, ptr %i.ajk, align 4, !tbaa !47
  %i.ajm = call nsz float @llvm.trunc.f32(float %i.ajl)
  store float %i.ajm, ptr %i.ajk, align 4, !tbaa !47
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ahr, i64 64 ; 2 uses
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !47
  %i.ajp = call nsz float @llvm.trunc.f32(float %i.ajo)
  store float %i.ajp, ptr %i.ajn, align 4, !tbaa !47
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.ahr, i64 68 ; 2 uses
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !47
  %i.ajs = call nsz float @llvm.trunc.f32(float %i.ajr)
  store float %i.ajs, ptr %i.ajq, align 4, !tbaa !47
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ahr, i64 72 ; 2 uses
  %i.aju = load float, ptr %i.ajt, align 4, !tbaa !47
  %i.ajv = call nsz float @llvm.trunc.f32(float %i.aju)
  store float %i.ajv, ptr %i.ajt, align 4, !tbaa !47
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ahr, i64 76 ; 2 uses
  %i.ajx = load float, ptr %i.ajw, align 4, !tbaa !47
  %i.ajy = call nsz float @llvm.trunc.f32(float %i.ajx)
  store float %i.ajy, ptr %i.ajw, align 4, !tbaa !47
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ahr, i64 80 ; 2 uses
  %i.aka = load float, ptr %i.ajz, align 4, !tbaa !47
  %i.akb = call nsz float @llvm.trunc.f32(float %i.aka)
  store float %i.akb, ptr %i.ajz, align 4, !tbaa !47
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ahr, i64 84 ; 2 uses
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !47
  %i.ake = call nsz float @llvm.trunc.f32(float %i.akd)
  store float %i.ake, ptr %i.akc, align 4, !tbaa !47
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ahr, i64 88 ; 2 uses
  %i.akg = load float, ptr %i.akf, align 4, !tbaa !47
  %i.akh = call nsz float @llvm.trunc.f32(float %i.akg)
  store float %i.akh, ptr %i.akf, align 4, !tbaa !47
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ahr, i64 92 ; 2 uses
  %i.akj = load float, ptr %i.aki, align 4, !tbaa !47
  %i.akk = call nsz float @llvm.trunc.f32(float %i.akj)
  store float %i.akk, ptr %i.aki, align 4, !tbaa !47
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ahr, i64 96 ; 2 uses
  %i.akm = load float, ptr %i.akl, align 4, !tbaa !47
  %i.akn = call nsz float @llvm.trunc.f32(float %i.akm)
  store float %i.akn, ptr %i.akl, align 4, !tbaa !47
  %i.ako = getelementptr inbounds nuw i8, ptr %i.ahr, i64 100 ; 2 uses
  %i.akp = load float, ptr %i.ako, align 4, !tbaa !47
  %i.akq = call nsz float @llvm.trunc.f32(float %i.akp)
  store float %i.akq, ptr %i.ako, align 4, !tbaa !47
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ahr, i64 104 ; 2 uses
  %i.aks = load float, ptr %i.akr, align 4, !tbaa !47
  %i.akt = call nsz float @llvm.trunc.f32(float %i.aks)
  store float %i.akt, ptr %i.akr, align 4, !tbaa !47
  %i.aku = getelementptr inbounds nuw i8, ptr %i.ahr, i64 108 ; 2 uses
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !47
  %i.akw = call nsz float @llvm.trunc.f32(float %i.akv)
  store float %i.akw, ptr %i.aku, align 4, !tbaa !47
  %i.akx = getelementptr inbounds nuw i8, ptr %i.ahr, i64 112 ; 2 uses
  %i.aky = load float, ptr %i.akx, align 4, !tbaa !47
  %i.akz = call nsz float @llvm.trunc.f32(float %i.aky)
  store float %i.akz, ptr %i.akx, align 4, !tbaa !47
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ahr, i64 116 ; 2 uses
  %i.alb = load float, ptr %i.ala, align 4, !tbaa !47
  %i.alc = call nsz float @llvm.trunc.f32(float %i.alb)
  store float %i.alc, ptr %i.ala, align 4, !tbaa !47
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ahr, i64 120 ; 2 uses
  %i.ale = load float, ptr %i.ald, align 4, !tbaa !47
  %i.alf = call nsz float @llvm.trunc.f32(float %i.ale)
  store float %i.alf, ptr %i.ald, align 4, !tbaa !47
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ahr, i64 124 ; 2 uses
  %i.alh = load float, ptr %i.alg, align 4, !tbaa !47
  %i.ali = call nsz float @llvm.trunc.f32(float %i.alh)
  store float %i.ali, ptr %i.alg, align 4, !tbaa !47
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ahr, i64 128 ; 2 uses
  %i.alk = load float, ptr %i.alj, align 4, !tbaa !47
  %i.all = call nsz float @llvm.trunc.f32(float %i.alk)
  store float %i.all, ptr %i.alj, align 4, !tbaa !47
  %i.alm = getelementptr inbounds nuw i8, ptr %i.ahr, i64 132 ; 2 uses
  %i.aln = load float, ptr %i.alm, align 4, !tbaa !47
  %i.alo = call nsz float @llvm.trunc.f32(float %i.aln)
  store float %i.alo, ptr %i.alm, align 4, !tbaa !47
  %i.alp = getelementptr inbounds nuw i8, ptr %i.ahr, i64 136 ; 2 uses
  %i.alq = load float, ptr %i.alp, align 4, !tbaa !47
  %i.alr = call nsz float @llvm.trunc.f32(float %i.alq)
  store float %i.alr, ptr %i.alp, align 4, !tbaa !47
  %i.als = getelementptr inbounds nuw i8, ptr %i.ahr, i64 140 ; 2 uses
  %i.alt = load float, ptr %i.als, align 4, !tbaa !47
  %i.alu = call nsz float @llvm.trunc.f32(float %i.alt)
  store float %i.alu, ptr %i.als, align 4, !tbaa !47
  %i.alv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 144 ; 2 uses
  %i.alw = load float, ptr %i.alv, align 4, !tbaa !47
  %i.alx = call nsz float @llvm.trunc.f32(float %i.alw)
  store float %i.alx, ptr %i.alv, align 4, !tbaa !47
  %i.aly = getelementptr inbounds nuw i8, ptr %i.ahr, i64 148 ; 2 uses
  %i.alz = load float, ptr %i.aly, align 4, !tbaa !47
  %i.ama = call nsz float @llvm.trunc.f32(float %i.alz)
  store float %i.ama, ptr %i.aly, align 4, !tbaa !47
  %i.amb = getelementptr inbounds nuw i8, ptr %i.ahr, i64 152 ; 2 uses
  %i.amc = load float, ptr %i.amb, align 4, !tbaa !47
  %i.amd = call nsz float @llvm.trunc.f32(float %i.amc)
  store float %i.amd, ptr %i.amb, align 4, !tbaa !47
  %i.ame = getelementptr inbounds nuw i8, ptr %i.ahr, i64 156 ; 2 uses
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !47
  %i.amg = call nsz float @llvm.trunc.f32(float %i.amf)
  store float %i.amg, ptr %i.ame, align 4, !tbaa !47
  %i.amh = getelementptr inbounds nuw [40 x i8], ptr %i.pc, i64 %indvars.iv ; 4 uses
  %i.ami = load i32, ptr %i.fk, align 4, !tbaa !66 ; 4 uses
  %7 = load float, ptr %i.pd, align 8, !tbaa !47  ; 2 uses
  %8 = load float, ptr %i.amh, align 4, !tbaa !47
  %9 = fsub nsz float %7, %8
  %10 = call nsz float @llvm.fabs.f32(float %9)
  %i.amj = fdiv nsz float %10, %7
  %11 = getelementptr inbounds nuw i8, ptr %i.amh, i64 4
  %i.amk = fpext nsz float %i.amj to double
  %12 = load <4 x float>, ptr %5, align 4, !tbaa !47 ; 2 uses
  %13 = load <4 x float>, ptr %11, align 4, !tbaa !47
  %14 = fsub nsz <4 x float> %12, %13
  %15 = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %14)
  %16 = fpext <4 x float> %15 to <4 x double>
  %17 = fpext <4 x float> %12 to <4 x double>
  %18 = fdiv nsz <4 x double> %16, %17            ; 4 uses
  %19 = extractelement <4 x double> %18, i64 0
  %20 = fadd nsz double %19, %i.amk
  %21 = fptrunc nsz double %20 to float
  %22 = fpext nsz float %21 to double
  %23 = extractelement <4 x double> %18, i64 1
  %i.aml = fadd nsz double %23, %22
  %i.amm = fptrunc nsz double %i.aml to float
  %i.amn = fpext nsz float %i.amm to double
  %i.amo = extractelement <4 x double> %18, i64 2
  %i.amp = fadd nsz double %i.amo, %i.amn
  %i.amq = fptrunc nsz double %i.amp to float
  %i.amr = fpext nsz float %i.amq to double
  %i.ams = extractelement <4 x double> %18, i64 3
  %i.amt = fadd nsz double %i.ams, %i.amr
  %i.amu = fptrunc nsz double %i.amt to float
  %24 = getelementptr inbounds nuw i8, ptr %i.amh, i64 20
  %i.amv = fpext nsz float %i.amu to double
  %25 = load <4 x float>, ptr %6, align 4, !tbaa !47 ; 2 uses
  %26 = load <4 x float>, ptr %24, align 4, !tbaa !47
  %27 = fsub nsz <4 x float> %25, %26
  %28 = call nsz <4 x float> @llvm.fabs.v4f32(<4 x float> %27)
  %29 = fpext <4 x float> %28 to <4 x double>
  %30 = fpext <4 x float> %25 to <4 x double>
  %31 = fdiv nsz <4 x double> %29, %30            ; 4 uses
  %i.amw = extractelement <4 x double> %31, i64 0
  %i.amx = fadd nsz double %i.amw, %i.amv
  %i.amy = fptrunc nsz double %i.amx to float
  %i.amz = fpext nsz float %i.amy to double
  %i.ana = extractelement <4 x double> %31, i64 1
  %i.anb = fadd nsz double %i.ana, %i.amz
  %i.anc = fptrunc nsz double %i.anb to float
  %i.and = fpext nsz float %i.anc to double
  %i.ane = extractelement <4 x double> %31, i64 2
  %i.anf = fadd nsz double %i.ane, %i.and
  %i.ang = fptrunc nsz double %i.anf to float
  %i.anh = fpext nsz float %i.ang to double
  %i.ani = extractelement <4 x double> %31, i64 3
  %i.anj = fadd nsz double %i.ani, %i.anh
  %i.ank = fptrunc nsz double %i.anj to float
  %32 = load float, ptr %i.pe, align 4, !tbaa !47 ; 2 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.amh, i64 36
  %34 = load float, ptr %33, align 4, !tbaa !47
  %35 = fsub nsz float %32, %34
  %36 = call nsz float @llvm.fabs.f32(float %35)
  %37 = fpext float %36 to double
  %i.anl = fpext nsz float %32 to double
  %38 = fdiv nsz double %37, %i.anl
  %39 = fpext nsz float %i.ank to double
  %i.anm = fadd nsz double %38, %39
  %i.ann = fptrunc nsz double %i.anm to float
  %i.ano = load i8, ptr %i.pf, align 4, !tbaa !84
  %i.anp = add i8 %i.ano, 1
  %i.anq = fpext nsz float %i.ann to double       ; 2 uses
  %i.anr = fcmp nsz ugt double %i.anq, 6.500000e-01
  %storemerge.i = select i1 %i.anr, i8 %i.anp, i8 0 ; 3 uses
  store i8 %storemerge.i, ptr %i.pf, align 4, !tbaa !84
  %i.ans = icmp ugt i8 %storemerge.i, 10
  br i1 %i.ans, label %.thread.i, label %bb.aj

.thread.i:                                        ; preds = %bb.ai
  %i.ant = add i8 %storemerge.i, -1
  store i8 %i.ant, ptr %i.pf, align 4, !tbaa !84
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.pre.i142 = load i8, ptr %.phi.trans.insert.i141, align 1, !tbaa !85 ; 2 uses
  %i.anu = icmp ult i8 %.pre.i142, 40
  br i1 %i.anu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %.thread.i
  %i.anv = phi i8 [ 0, %.thread.i ], [ %.pre.i142, %bb.aj ]
  %i.anw = add nuw nsw i8 %i.anv, 1
  store i8 %i.anw, ptr %.phi.trans.insert.i141, align 1, !tbaa !85
  br label %bb.an

bb.al:                                            ; preds = %bb.aj
  switch i32 %i.ami, label %bb.an [
    i32 6, label %bb.am
    i32 3, label %bb.am
    i32 2, label %bb.am
    i32 1, label %bb.am
    i32 0, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al, %bb.al
  %i.anx = call nsz double @llvm.fmuladd.f64(double %i.anq, double 4.000000e+00, double -1.600000e+00)
  %i.any = fptrunc nsz double %i.anx to float     ; 2 uses
  %i.anz = fcmp nsz ogt float %i.any, 0.000000e+00
  %i.aoa = select nsz i1 %i.anz, float %i.any, float 0.000000e+00 ; 2 uses
  %i.aob = fcmp nsz ogt float %i.aoa, 1.000000e+00
  %..i.i143 = select nsz i1 %i.aob, float 1.000000e+00, float %i.aoa ; 2 uses
  %i.aoc = load float, ptr %i.pg, align 4, !tbaa !47
  %i.aod = load float, ptr %i.ph, align 8, !tbaa !47
  %i.aoe = fadd nsz float %i.aoc, %i.aod
  %i.aof = load float, ptr %i.pi, align 4, !tbaa !47
  %i.aog = fadd nsz float %i.aoe, %i.aof
  %i.aoh = load float, ptr %i.pj, align 8, !tbaa !47
  %i.aoi = fadd nsz float %i.aog, %i.aoh
  %i.aoj = load float, ptr %i.pb, align 4, !tbaa !47 ; 2 uses
  %i.aok = fadd nsz float %i.aoi, %i.aoj
  %i.aol = fpext nsz float %i.aok to double
  %i.aom = fmul nsz double %i.aol, 2.000000e-01
  %i.aon = fptrunc nsz double %i.aom to float
  %i.aoo = fmul nsz float %..i.i143, %i.aoj
  %i.aop = fpext nsz float %i.aoo to double
  %i.aoq = fpext nsz float %..i.i143 to double
  %i.aor = fsub nsz double 1.000000e+00, %i.aoq
  %i.aos = fpext nsz float %i.aon to double
  %i.aot = call nsz double @llvm.fmuladd.f64(double %i.aor, double %i.aos, double %i.aop)
  %i.aou = fptrunc nsz double %i.aot to float
  br label %fixed_gain_smooth.exit

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.aov = load float, ptr %i.pb, align 4, !tbaa !47
  br label %fixed_gain_smooth.exit

fixed_gain_smooth.exit:                           ; preds = %bb.am, %bb.an
  %.0.i144 = phi nsz float [ %i.aov, %bb.an ], [ %i.aou, %bb.am ] ; 5 uses
  %i.aow = load float, ptr %i.ox, align 8, !tbaa !47
  %i.aox = fpext nsz float %i.aow to double       ; 2 uses
  %i.aoy = fcmp nsz olt double %i.aox, 6.000000e-01 ; 2 uses
  %i.aoz = fcmp nsz olt double %i.aox, 9.000000e-01 ; 2 uses
  %.42.i = select i1 %i.aoz, i32 1, i32 2
  %.034.i = select i1 %i.aoy, i32 0, i32 %.42.i   ; 2 uses
  %i.apa = fpext nsz float %.0.i144 to double
  %i.apb = load float, ptr %i.pl, align 8, !tbaa !86
  %i.apc = fpext nsz float %i.apb to double
  %i.apd = fmul nsz double %i.apc, 2.000000e+00
  %i.ape = fcmp nsz olt double %i.apd, %i.apa
  br i1 %i.ape, label %.thread50.i, label %bb.ao

.thread50.i:                                      ; preds = %fixed_gain_smooth.exit
  store i8 2, ptr %i.pm, align 1, !tbaa !87
  br label %bb.aq

bb.ao:                                            ; preds = %fixed_gain_smooth.exit
  %i.apf = load i8, ptr %i.pm, align 1, !tbaa !87 ; 2 uses
  %.not.i145 = icmp eq i8 %i.apf, 0
  br i1 %.not.i145, label %.preheader.preheader.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.apg = add i8 %i.apf, -1                      ; 2 uses
  store i8 %i.apg, ptr %i.pm, align 1, !tbaa !87
  %i.aph = icmp eq i8 %i.apg, 0
  br i1 %i.aph, label %.preheader.preheader.i, label %bb.aq

.preheader.preheader.i:                           ; preds = %bb.ap, %bb.ao
  %i.api = load <4 x float>, ptr %i.pk, align 8, !tbaa !47
  %i.apj = fpext <4 x float> %i.api to <4 x double>
  %i.apk = fcmp nsz olt <4 x double> %i.apj, splat (double 6.000000e-01)
  %i.apl = zext i1 %i.aoy to i32
  %i.apm = bitcast <4 x i1> %i.apk to i4
  %i.apn = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %i.apm)
  %i.apo = zext nneg i4 %i.apn to i32
  %op.rdx = add nuw nsw i32 %i.apo, %i.apl
  %i.app = icmp samesign ugt i32 %op.rdx, 2
  %spec.select.i = select i1 %i.app, i32 0, i32 %.034.i ; 2 uses
  %i.apq = load i8, ptr %i.po, align 4, !tbaa !88
  %i.apr = zext i8 %i.apq to i32
  %i.aps = add nuw nsw i32 %i.apr, 1
  %i.apt = icmp samesign ugt i32 %spec.select.i, %i.aps
  %.2.i = select i1 %i.apt, i32 1, i32 %spec.select.i
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %.thread50.i
  %i.apu = add nuw nsw i32 %.034.i, 1
  %spec.select43.i = select i1 %i.aoz, i32 %i.apu, i32 2
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.preheader.preheader.i
  %.3.i = phi i32 [ %.2.i, %.preheader.preheader.i ], [ %spec.select43.i, %bb.aq ]
  %i.apv = fcmp nsz olt float %.0.i144, 5.000000e+00
  %.4.i = select i1 %i.apv, i32 2, i32 %.3.i      ; 3 uses
  %.not41.i = icmp eq i32 %i.ami, 4
  br i1 %.not41.i, label %anti_sparseness.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.apw = icmp ult i32 %i.ami, 6
  %i.apx = icmp samesign ult i32 %.4.i, 2
  %or.cond.i146 = select i1 %i.apw, i1 %i.apx, i1 false
  br i1 %or.cond.i146, label %bb.at, label %anti_sparseness.exit

bb.at:                                            ; preds = %bb.as
  %i.apy = icmp eq i32 %i.ami, 5
  %i.apz = select i1 %i.apy, ptr @ir_filters_lookup_MODE_7k95, ptr @ir_filters_lookup
  %i.aqa = zext nneg i32 %.4.i to i64
  %i.aqb = getelementptr inbounds nuw [8 x i8], ptr %i.apz, i64 %i.aqa
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !89 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.aqd = load i32, ptr %i.ar, align 4, !tbaa !81 ; 6 uses
  %i.aqe = load float, ptr %i.as, align 4, !tbaa !82 ; 2 uses
  %i.aqf = icmp slt i32 %i.aqd, 40
  br i1 %i.aqf, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  call void @ff_celp_circ_addf(ptr noundef nonnull %i.e, ptr noundef %i.aqc, ptr noundef %i.aqc, i32 noundef %i.aqd, float noundef %i.aqe, i32 noundef 40) #7
  %i.aqg = icmp slt i32 %i.aqd, 20
  br i1 %i.aqg, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @ff_celp_circ_addf(ptr noundef nonnull %i.f, ptr noundef %i.aqc, ptr noundef nonnull %i.e, i32 noundef %i.aqd, float noundef %i.aqe, i32 noundef 40) #7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.l, i8 0, i64 160, i1 false)
  %i.aqh = load i32, ptr %4, align 4, !tbaa !75
  %i.aqi = icmp sgt i32 %i.aqh, 0
  br i1 %i.aqi, label %.lr.ph.i.i147, label %apply_ir_filter.exit.i

.lr.ph.i.i147:                                    ; preds = %bb.aw
  %i.aqj = sub nsw i32 40, %i.aqd
  %i.aqk = shl i32 %i.aqd, 1
  %i.aql = sub nsw i32 40, %i.aqk
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i147
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i147 ], [ %indvars.iv.next.i.i, %bb.ax ] ; 3 uses
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.i
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !30 ; 3 uses
  %i.aqo = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.i
  %i.aqp = load float, ptr %i.aqo, align 4, !tbaa !47
  %.not.i.i148 = icmp slt i32 %i.aqn, %i.aqj
  %.not31.i.i = icmp slt i32 %i.aqn, %i.aql
  %..i.i149 = select i1 %.not31.i.i, ptr %i.f, ptr %i.e
  %.0.i.i = select i1 %.not.i.i148, ptr %..i.i149, ptr %i.aqc
  call void @ff_celp_circ_addf(ptr noundef nonnull %i.l, ptr noundef nonnull %i.l, ptr noundef %.0.i.i, i32 noundef %i.aqn, float noundef %i.aqp, i32 noundef 40) #7
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.aqq = load i32, ptr %4, align 4, !tbaa !75
  %i.aqr = sext i32 %i.aqq to i64
  %i.aqs = icmp slt i64 %indvars.iv.next.i.i, %i.aqr
  br i1 %i.aqs, label %bb.ax, label %apply_ir_filter.exit.i, !llvm.loop !90

apply_ir_filter.exit.i:                           ; preds = %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %anti_sparseness.exit

anti_sparseness.exit:                             ; preds = %bb.ar, %bb.as, %apply_ir_filter.exit.i
  %.036.i = phi ptr [ %i.l, %apply_ir_filter.exit.i ], [ %i.oy, %bb.as ], [ %i.oy, %bb.ar ] ; 2 uses
  %i.aqt = trunc nuw nsw i32 %.4.i to i8
  store i8 %i.aqt, ptr %i.po, align 4, !tbaa !88
  store float %.0.i144, ptr %i.pl, align 8, !tbaa !86
  %i.aqu = getelementptr inbounds nuw [40 x i8], ptr %i.ol, i64 %indvars.iv ; 12 uses
  %i.aqv = call fastcc i32 @synthesis(ptr noundef nonnull %i.co, ptr noundef nonnull %i.aqu, float noundef %.0.i144, ptr noundef nonnull %.036.i, ptr noundef nonnull %i.pp, i8 noundef zeroext 0)
  %.not = icmp eq i32 %i.aqv, 0
  br i1 %.not, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %anti_sparseness.exit
end_hunk_2
begin_hunk_3_@synthesis:bb.a
  %i.ii = fcmp nsz ogt float %i.ih, 3.276800e+04
  br i1 %i.ii, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 140
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !47
  %i.il = call nsz float @llvm.fabs.f32(float %i.ik)
  %i.im = fcmp nsz ogt float %i.il, 3.276800e+04
  br i1 %i.im, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.in = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.io = load float, ptr %i.in, align 4, !tbaa !47
  %i.ip = call nsz float @llvm.fabs.f32(float %i.io)
  %i.iq = fcmp nsz ogt float %i.ip, 3.276800e+04
  br i1 %i.iq, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 148
  %i.is = load float, ptr %i.ir, align 4, !tbaa !47
  %i.it = call nsz float @llvm.fabs.f32(float %i.is)
  %i.iu = fcmp nsz ogt float %i.it, 3.276800e+04
  br i1 %i.iu, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !47
  %i.ix = call nsz float @llvm.fabs.f32(float %i.iw)
  %i.iy = fcmp nsz ogt float %i.ix, 3.276800e+04
  br i1 %i.iy, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.iz = getelementptr inbounds nuw i8, ptr %4, i64 156
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !47
  %i.jb = call nsz float @llvm.fabs.f32(float %i.ja)
  %i.jc = fcmp nsz ogt float %i.jb, 3.276800e+04
  br i1 %i.jc, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %bb.aq ], [ 1, %bb.d ], [ 1, %bb.ap ], [ 1, %bb.e ], [ 1, %bb.ab ], [ 1, %bb.f ], [ 1, %bb.ao ], [ 1, %bb.g ], [ 1, %bb.x ], [ 1, %bb.h ], [ 1, %bb.an ], [ 1, %bb.i ], [ 1, %bb.af ], [ 1, %bb.j ], [ 1, %bb.am ], [ 1, %bb.k ], [ 1, %bb.y ], [ 1, %bb.l ], [ 1, %bb.al ], [ 1, %bb.m ], [ 1, %bb.ad ], [ 1, %bb.n ], [ 1, %bb.ak ], [ 1, %bb.o ], [ 1, %bb.z ], [ 1, %bb.p ], [ 1, %bb.aj ], [ 1, %bb.q ], [ 1, %bb.ae ], [ 1, %bb.r ], [ 1, %bb.ai ], [ 1, %bb.s ], [ 1, %bb.aa ], [ 1, %bb.t ], [ 1, %bb.ah ], [ 1, %bb.u ], [ 1, %bb.ac ], [ 1, %bb.v ], [ 1, %bb.ag ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
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
  %i.c = load ptr, ptr %3, align 8, !tbaa !67
  %i.d = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.b
  %i.h = load i32, ptr %i.d, align 2              ; 2 uses
  %i.i = load i32, ptr %i.g, align 2              ; 3 uses
  %.sroa.6.sroa.5.0.extract.shift = lshr i32 %i.i, 16
  %.sroa.6.sroa.0.0.extract.trunc = trunc i32 %i.i to i16
  %.sroa.6.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.6.sroa.5.0.extract.shift to i16
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.b
  %i.m = load i32, ptr %i.l, align 2              ; 2 uses
  %.sroa.9.sroa.0.0.extract.trunc = trunc i32 %i.m to i16 ; 2 uses
  %.sroa.9.sroa.7.0.extract.shift = lshr i32 %i.m, 16
  %.sroa.9.sroa.7.0.extract.trunc = trunc nuw i32 %.sroa.9.sroa.7.0.extract.shift to i16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.b
  %i.q = load i32, ptr %i.p, align 2              ; 3 uses
  %.sroa.16.sroa.0.0.extract.trunc = trunc i32 %i.q to i16
  %.sroa.16.sroa.5.0.extract.shift = lshr i32 %i.q, 16
  %.sroa.16.sroa.5.0.extract.trunc = trunc nuw i32 %.sroa.16.sroa.5.0.extract.shift to i16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.b
  %i.u = load i32, ptr %i.t, align 2              ; 2 uses
  %.not = icmp eq i32 %5, 0                       ; 2 uses
  %i.v = sub i16 0, %.sroa.9.sroa.0.0.extract.trunc
  %i.w = sub i16 0, %.sroa.9.sroa.7.0.extract.trunc
  %.sroa.9.sroa.0.0 = select i1 %.not, i16 %.sroa.9.sroa.0.0.extract.trunc, i16 %i.v ; 2 uses
  %.sroa.9.sroa.7.0 = select i1 %.not, i16 %.sroa.9.sroa.7.0.extract.trunc, i16 %i.w ; 2 uses
  %.not18 = icmp eq i32 %6, 0                     ; 2 uses
  br i1 %.not18, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 %i.h, ptr %i.x, align 8
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
  %i.y = insertelement <2 x i32> poison, i32 %i.h, i64 0
  %i.z = bitcast <2 x i32> %i.y to <4 x i16>
  %i.aa = insertelement <4 x i16> %i.z, i16 %.sroa.6.sroa.0.0.extract.trunc, i64 2
  %i.ab = insertelement <4 x i16> %i.aa, i16 %.sroa.6.sroa.5.0.extract.trunc, i64 3
  %i.ac = sitofp <4 x i16> %i.ab to <4 x double>
  %i.ad = load <4 x float>, ptr %2, align 4, !tbaa !47
  %i.ae = fpext <4 x float> %i.ad to <4 x double>
  %i.af = fmul nsz <4 x double> %i.ae, splat (double 1.250000e-04)
  %i.ag = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ac, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.af)
  %i.ah = fptrunc <4 x double> %i.ag to <4 x float>
  store <4 x float> %i.ah, ptr %i.a, align 16, !tbaa !47
  %i.ai = insertelement <4 x i16> poison, i16 %.sroa.9.sroa.0.0, i64 0
  %i.aj = insertelement <4 x i16> %i.ai, i16 %.sroa.9.sroa.7.0, i64 1
  %i.ak = insertelement <4 x i16> %i.aj, i16 %.sroa.16.sroa.0.0.extract.trunc, i64 2
  %i.al = insertelement <4 x i16> %i.ak, i16 %.sroa.16.sroa.5.0.extract.trunc, i64 3
  %i.am = sitofp <4 x i16> %i.al to <4 x double>
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load <4 x float>, ptr %i.an, align 4, !tbaa !47
  %i.aq = fpext <4 x float> %i.ap to <4 x double>
  %i.ar = fmul nsz <4 x double> %i.aq, splat (double 1.250000e-04)
  %i.as = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.am, <4 x double> splat (double f0x3F00000000000000), <4 x double> %i.ar)
  %i.at = fptrunc <4 x double> %i.as to <4 x float>
  store <4 x float> %i.at, ptr %i.ao, align 16, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aw = bitcast i32 %i.u to <2 x i16>
  %i.ax = sitofp <2 x i16> %i.aw to <2 x double>
  %i.ay = load <2 x float>, ptr %i.au, align 4, !tbaa !47
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  %i.ba = fmul nsz <2 x double> %i.az, splat (double 1.250000e-04)
  %i.bb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> splat (double f0x3F00000000000000), <2 x double> %i.ba)
  %i.bc = fptrunc <2 x double> %i.bb to <2 x float>
  store <2 x float> %i.bc, ptr %i.av, align 16, !tbaa !47
  call void @ff_set_min_dist_lsf(ptr noundef nonnull %i.a, double noundef 6.256100e-03, i32 noundef 10) #7
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2360 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 5 uses
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !68
  call void %i.bg(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 7.500000e-01, float noundef 2.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 584
  call void %i.bh(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 5.000000e-01, float noundef 5.000000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bj = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 624
  call void %i.bj(ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.a, float noundef 2.500000e-01, float noundef 7.500000e-01, i32 noundef 10) #7, !inline_history !99
  %i.bl = load ptr, ptr %i.bd, align 8, !tbaa !68
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
declare i4 @llvm.ctpop.i4(i4) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!10, !6, i64 356}
!30 = !{!6, !6, i64 0}
!31 = !{!7, !7, i64 0}
!32 = !{!12, !12, i64 0}
!33 = !{!10, !6, i64 344}
!34 = !{!10, !6, i64 348}
!35 = !{!36, !38, i64 1688}
!36 = !{!"AMRContext", !37, i64 0, !7, i64 114, !6, i64 116, !7, i64 120, !7, i64 144, !7, i64 464, !7, i64 544, !7, i64 704, !7, i64 744, !7, i64 904, !7, i64 908, !38, i64 1688, !7, i64 1696, !7, i64 1856, !7, i64 2016, !7, i64 2032, !7, i64 2052, !18, i64 2072, !7, i64 2076, !7, i64 2077, !18, i64 2080, !7, i64 2084, !7, i64 2085, !7, i64 2088, !18, i64 2128, !18, i64 2132, !7, i64 2136, !7, i64 2144, !39, i64 2344, !40, i64 2360, !41, i64 2368, !42, i64 2384}
!37 = !{!"AMRNBFrame", !7, i64 0, !7, i64 10}
!38 = !{!"p1 float", !12, i64 0}
!39 = !{!"ACELPFContext", !12, i64 0, !12, i64 8}
!40 = !{!"ACELPVContext", !12, i64 0}
!41 = !{!"CELPFContext", !12, i64 0, !12, i64 8}
!42 = !{!"CELPMContext", !12, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !7, i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"short", !7, i64 0}
!47 = !{!18, !18, i64 0}
!48 = distinct !{!48, !49, !50, !51}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !49}
!53 = !{!54, !16, i64 24}
!54 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!55 = !{!54, !6, i64 32}
!56 = !{!57, !6, i64 112}
!57 = !{!"AVFrame", !7, i64 0, !7, i64 64, !58, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !59, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !60, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!58 = !{!"p2 omnipotent char", !28, i64 0}
!59 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!60 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!61 = !{!57, !58, i64 96}
!62 = !{!16, !16, i64 0}
!63 = !{!36, !7, i64 114}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = !{!36, !6, i64 116}
!67 = !{!19, !19, i64 0}
!68 = !{!40, !12, i64 0}
!69 = distinct !{null, null}
!70 = !{!71, !46, i64 0}
!71 = !{!"AMRNBSubframe", !46, i64 0, !46, i64 2, !46, i64 4, !7, i64 6}
!72 = !{!36, !7, i64 904}
!73 = !{!36, !12, i64 2344}
!74 = distinct !{null}
!75 = !{!76, !6, i64 0}
!76 = !{!"AMRFixed", !6, i64 0, !7, i64 4, !7, i64 44, !6, i64 84, !6, i64 88, !18, i64 92}
!77 = distinct !{!77, !49, !51, !50}
!78 = !{!71, !46, i64 2}
!79 = !{!71, !46, i64 4}
!80 = !{!36, !18, i64 2072}
!81 = !{!76, !6, i64 88}
!82 = !{!76, !18, i64 92}
!83 = !{!36, !12, i64 2384}
!84 = !{!36, !7, i64 2076}
!85 = !{!36, !7, i64 2077}
!86 = !{!36, !18, i64 2080}
!87 = !{!36, !7, i64 2085}
!88 = !{!36, !7, i64 2084}
!89 = !{!38, !38, i64 0}
!90 = distinct !{!90, !49}
!91 = distinct !{null}
!92 = !{!36, !12, i64 2368}
!93 = !{!36, !12, i64 2376}
!94 = distinct !{null, null}
!95 = distinct !{!95, !49}
!96 = !{!36, !12, i64 2352}
!97 = !{!36, !12, i64 2360}
!98 = distinct !{!98, !49}
!99 = distinct !{null}
end_hunk_3
