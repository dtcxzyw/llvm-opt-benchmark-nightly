Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/wma?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
begin_hunk_0_@ff_wma_init:bb.a
  %i.eu = getelementptr inbounds nuw [50 x i8], ptr %i.dg, i64 %indvars.iv335
  %wide.trip.count = zext i8 %i.es to i64
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph, %bb.au
  %indvars.iv323 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next324, %bb.au ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv323
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !52
  %i.ex = zext i8 %i.ew to i16
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %indvars.iv323
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !55
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next324, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.au, %bb.at
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv335
  store i32 %i.et, ptr %i.ez, align 4, !tbaa !59
  br label %bb.az

bb.av:                                            ; preds = %bb.ax, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ax ], [ 0, %bb.as ] ; 3 uses
  %.0245301 = phi i32 [ %.1, %bb.ax ], [ 0, %bb.as ] ; 3 uses
  %.1253299 = phi i32 [ %spec.select291, %bb.ax ], [ 0, %bb.as ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr @ff_wma_critical_freqs, i64 %indvars.iv
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !55
  %i.fc = zext i16 %i.fb to i32
  %i.fd = mul i32 %i.dq, %i.fc
  %reass.add = add i32 %i.fd, %.pre
  %reass.mul = shl i32 %reass.add, 1
  %i.fe = sdiv i32 %reass.mul, %i.en
  %i.ff = shl i32 %i.fe, 2                        ; 2 uses
  %spec.select291 = tail call i32 @llvm.smin.i32(i32 %i.ff, i32 %i.dq) ; 3 uses
  %i.fg = icmp sgt i32 %spec.select291, %.1253299
  br i1 %i.fg, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fh = sub nsw i32 %spec.select291, %.1253299
  %i.fi = trunc i32 %i.fh to i16
  %i.fj = add nsw i32 %.0245301, 1
  %i.fk = sext i32 %.0245301 to i64
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.fk
  store i16 %i.fi, ptr %i.fl, align 2, !tbaa !55
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.1 = phi i32 [ %i.fj, %bb.aw ], [ %.0245301, %bb.av ] ; 3 uses
  %.not288 = icmp slt i32 %i.ff, %i.dq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.fm = icmp samesign ult i64 %indvars.iv, 24
  %or.cond319 = select i1 %.not288, i1 %i.fm, i1 false
  br i1 %or.cond319, label %bb.av, label %bb.ay, !llvm.loop !61

bb.ay:                                            ; preds = %bb.ax
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv335
  store i32 %.1, ptr %i.fn, align 4, !tbaa !59
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge, %bb.ay, %.loopexit297
  %i.fo = phi i32 [ %i.et, %._crit_edge ], [ %.1, %bb.ay ], [ %.pre348, %.loopexit297 ] ; 2 uses
  %i.fp = load i32, ptr %i.x, align 8, !tbaa !48  ; 2 uses
  %i.fq = mul nsw i32 %i.fp, 9
  %.neg = sdiv i32 %i.fq, -100
  %i.fr = add i32 %.neg, %i.fp
  %i.fs = ashr i32 %i.fr, %i.dp
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv335 ; 2 uses
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !59
  %i.fu = shl nsw i32 %i.dq, 1
  %i.fv = sitofp nsz i32 %i.fu to float
  %i.fw = fmul nsz float %.0261, %i.fv
  %i.fx = load i32, ptr %i.e, align 8, !tbaa !30
  %i.fy = sitofp nsz i32 %i.fx to float
  %i.fz = fdiv nsz float %i.fw, %i.fy
  %i.ga = fpext nsz float %i.fz to double
  %i.gb = fadd nsz double %i.ga, 5.000000e-01
  %i.gc = fptosi double %i.gb to i32
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv335 ; 2 uses
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !59
  %i.ge = icmp sgt i32 %i.fo, 0
  br i1 %i.ge, label %.lr.ph309, label %._crit_edge310

.lr.ph309:                                        ; preds = %bb.az
  %i.gf = getelementptr inbounds nuw [50 x i8], ptr %i.dg, i64 %indvars.iv335
  %i.gg = getelementptr inbounds nuw [64 x i8], ptr %i.dk, i64 %indvars.iv335
  %wide.trip.count333 = zext nneg i32 %i.fo to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph309, %bb.bc
  %indvars.iv330 = phi i64 [ 0, %.lr.ph309 ], [ %indvars.iv.next331, %bb.bc ] ; 2 uses
  %.3307 = phi i32 [ 0, %.lr.ph309 ], [ %.4, %bb.bc ] ; 3 uses
  %.2256305 = phi i32 [ 0, %.lr.ph309 ], [ %i.gk, %bb.bc ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %indvars.iv330
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !55
  %i.gj = zext i16 %i.gi to i32
  %i.gk = add nuw nsw i32 %.2256305, %i.gj        ; 2 uses
  %i.gl = load i32, ptr %i.gd, align 4, !tbaa !59
  %spec.select292 = tail call i32 @llvm.smax.i32(i32 %.2256305, i32 %i.gl) ; 2 uses
  %i.gm = load i32, ptr %i.ft, align 4, !tbaa !59
  %.0242 = tail call i32 @llvm.smin.i32(i32 %i.gk, i32 %i.gm) ; 2 uses
  %i.gn = icmp sgt i32 %.0242, %spec.select292
  br i1 %i.gn, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.go = sub nsw i32 %.0242, %spec.select292
  %i.gp = add nsw i32 %.3307, 1
  %i.gq = sext i32 %.3307 to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.gq
  store i32 %i.go, ptr %i.gr, align 4, !tbaa !59
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.4 = phi i32 [ %i.gp, %bb.bb ], [ %.3307, %bb.ba ] ; 2 uses
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %._crit_edge310, label %bb.ba, !llvm.loop !62

._crit_edge310:                                   ; preds = %bb.bc, %bb.az
  %.3.lcssa = phi i32 [ 0, %bb.az ], [ %.4, %bb.bc ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv335
  store i32 %.3.lcssa, ptr %i.gs, align 4, !tbaa !59
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %i.gt = load i32, ptr %i.aj, align 16, !tbaa !50 ; 2 uses
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next336, %i.gu
  br i1 %i.gv, label %bb.ak, label %.preheader, !llvm.loop !63

bb.bd:                                            ; preds = %.lr.ph315, %bb.bd
  %i.gw = phi i32 [ %.pre349.a, %.lr.ph315 ], [ %i.gz, %bb.bd ]
  %indvars.iv338 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next339, %bb.bd ] ; 3 uses
  %i.gx = trunc nuw nsw i64 %indvars.iv338 to i32 ; 2 uses
  %i.gy = sub nsw i32 %i.gw, %i.gx
  tail call void @ff_init_ff_sine_windows(i32 noundef %i.gy) #7
  %i.gz = load i32, ptr %i.s, align 4, !tbaa !44  ; 2 uses
  %i.ha = sub nsw i32 %i.gz, %i.gx
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr inbounds [8 x i8], ptr @ff_sine_windows, i64 %i.hb
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv338
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !64
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 1 ; 2 uses
  %i.hf = load i32, ptr %i.aj, align 16, !tbaa !50
  %i.hg = sext i32 %i.hf to i64
  %i.hh = icmp slt i64 %indvars.iv.next339, %i.hg
  br i1 %i.hh, label %bb.bd, label %._crit_edge316, !llvm.loop !66

._crit_edge316:                                   ; preds = %bb.bd, %bb.aj, %.preheader
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 1172
  store i32 1, ptr %i.hi, align 4, !tbaa !67
  %i.hj = load i32, ptr %i.ak, align 16, !tbaa !51
  %.not284 = icmp eq i32 %i.hj, 0
  br i1 %.not284, label %.loopexit, label %bb.be

bb.be:                                            ; preds = %._crit_edge316
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !68
  %.not285 = icmp eq i32 %i.hl, 0
  %.sink347 = select i1 %.not285, float 4.000000e-02, float 2.000000e-02 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 165284
  store float %.sink347, ptr %i.hm, align 4, !tbaa !69
  %i.hn = fpext nnan ninf nsz float %.sink347 to double
  %i.ho = fmul nnan nsz double %i.hn, f0x3E0BB67AE8584CAA
  %i.hp = fptrunc nnan nsz double %i.ho to float
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 132512
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bf
  %indvars.iv341 = phi i64 [ 0, %bb.be ], [ %indvars.iv.next342, %bb.bf ] ; 2 uses
  %.0318 = phi i32 [ 1, %bb.be ], [ %i.hs, %bb.bf ]
  %i.hr = mul i32 %.0318, 314159
  %i.hs = add i32 %i.hr, 1                        ; 2 uses
  %i.ht = sitofp nsz i32 %i.hs to float
  %i.hu = fmul nsz float %i.hp, %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv341
  store float %i.hu, ptr %i.hv, align 4, !tbaa !70
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond344.not = icmp eq i64 %indvars.iv.next342, 8192
  br i1 %exitcond344.not, label %.loopexit, label %bb.bf, !llvm.loop !71

.loopexit:                                        ; preds = %bb.bf, %._crit_edge316
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hx = load i32, ptr %i.hw, align 8, !tbaa !72
  %i.hy = and i32 %i.hx, 8388608
  %i.hz = tail call ptr @avpriv_float_dsp_alloc(i32 noundef %i.hy) #7 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 175528
  store ptr %i.hz, ptr %i.ia, align 8, !tbaa !73
  %.not286 = icmp eq ptr %i.hz, null
  br i1 %.not286, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %.loopexit
  %i.ib = load i32, ptr %i.e, align 8, !tbaa !30
  %i.ic = icmp sgt i32 %i.ib, 31999
  br i1 %i.ic, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.id = fpext nsz float %.0262 to double        ; 2 uses
  %i.ie = fcmp nsz olt double %i.id, f0x3FE70A3D70A3D70A
  br i1 %i.ie, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.if = fcmp nsz olt double %i.id, 1.160000e+00
  %spec.select293 = select i1 %i.if, i64 2, i64 4
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0259 = phi i64 [ 4, %bb.bg ], [ 0, %bb.bh ], [ %spec.select293, %bb.bi ]
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr @coef_vlcs, i64 %.0259 ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !74
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 1152 ; 2 uses
  store ptr %i.ii, ptr %i.ij, align 16, !tbaa !74
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 1048
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %i.io = tail call fastcc i32 @init_coef_vlc(ptr noundef nonnull %i.ik, ptr noundef nonnull %i.il, ptr noundef nonnull %i.im, ptr noundef nonnull %i.in, ptr noundef nonnull %i.ig) #8 ; 2 uses
  %i.ip = icmp slt i32 %i.io, 0
  br i1 %i.ip, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.iq = getelementptr inbounds nuw i8, ptr %i.b, i64 1072
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 1104
  %i.is = getelementptr inbounds nuw i8, ptr %i.b, i64 1120
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 1136
  %i.iu = load ptr, ptr %i.ij, align 16, !tbaa !74
  %i.iv = tail call fastcc i32 @init_coef_vlc(ptr noundef nonnull %i.iq, ptr noundef nonnull %i.ir, ptr noundef nonnull %i.is, ptr noundef nonnull %i.it, ptr noundef %i.iu) #8
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %.loopexit, %bb.a, %bb.b, %bb.bk, %bb.l
  %.0265 = phi i32 [ -1, %bb.a ], [ -1163346256, %bb.l ], [ -12, %.loopexit ], [ %i.iv, %bb.bk ], [ -1, %bb.b ], [ %i.io, %bb.bj ]
  ret i32 %.0265
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @ff_wma_get_frame_len_bits(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ff_init_ff_sine_windows(i32 noundef) local_unnamed_addr #2

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @init_coef_vlc(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = load i32, ptr %4, align 8, !tbaa !76     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !79
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.k = tail call i32 @ff_vlc_init_sparse(ptr noundef %0, i32 noundef 9, i32 noundef %i.d, ptr noundef %i.f, i32 noundef 1, i32 noundef 1, ptr noundef %i.h, i32 noundef 4, i32 noundef 4, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %i.d to i64                     ; 3 uses
  %i.n = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 2) #7 ; 4 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !81
  %i.o = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 4) #7 ; 4 uses
  store ptr %i.o, ptr %i.c, align 8, !tbaa !64
  %i.p = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 2) #7 ; 4 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !81
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ne ptr %i.o, null
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  %i.s = icmp ne ptr %i.p, null
  %or.cond3 = select i1 %or.cond, i1 %i.s, i1 false
  br i1 %or.cond3, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.t = icmp sgt i32 %i.d, 2
  br i1 %i.t, label %.lr.ph44, label %._crit_edge45

bb.c:                                             ; preds = %bb.b
  call void @av_freep(ptr noundef nonnull %i.a) #7
  call void @av_freep(ptr noundef nonnull %i.c) #7
  call void @av_freep(ptr noundef nonnull %i.b) #7
  br label %bb.e

.lr.ph44:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %.043 = phi i32 [ %i.ag, %._crit_edge ], [ 1, %.preheader ] ; 2 uses
  %.03641 = phi i32 [ %.1.lcssa, %._crit_edge ], [ 2, %.preheader ] ; 3 uses
  %i.u = trunc i32 %.03641 to i16
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv47
  store i16 %i.u, ptr %i.v, align 2, !tbaa !55
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %indvars.iv47
  %i.x = load i16, ptr %i.w, align 2, !tbaa !55   ; 2 uses
  %i.y = zext i16 %i.x to i32
  %.not = icmp eq i16 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph44
  %i.z = uitofp nneg i32 %.043 to float
  %i.aa = sext i32 %.03641 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.03540 = phi i32 [ 0, %.lr.ph ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ab = trunc i32 %.03540 to i16
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.n, i64 %indvars.iv
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !55
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv
  store float %i.z, ptr %i.ad, align 4, !tbaa !70
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = add nuw nsw i32 %.03540, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ae, %i.y
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !82

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.af = trunc nsw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph44
  %.1.lcssa = phi i32 [ %.03641, %.lr.ph44 ], [ %i.af, %._crit_edge.loopexit ] ; 2 uses
  %i.ag = add nuw nsw i32 %.043, 1
  %i.ah = icmp slt i32 %.1.lcssa, %i.d
  br i1 %i.ah, label %.lr.ph44, label %._crit_edge45, !llvm.loop !83

._crit_edge45:                                    ; preds = %._crit_edge, %.preheader
  store ptr %i.n, ptr %1, align 8, !tbaa !81
  store ptr %i.o, ptr %2, align 8, !tbaa !64
  store ptr %i.p, ptr %3, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge45, %bb.c
  %.037 = phi i32 [ -12, %bb.c ], [ 0, %._crit_edge45 ], [ %i.k, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.037
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 9, 14) i32 @ff_wma_total_gain_to_bits(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %0, 15
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 32
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ult i32 %0, 40
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ult i32 %0, 45
  %. = select i1 %i.d, i32 10, i32 9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 11, %bb.c ], [ 13, %bb.a ], [ 12, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define noundef i32 @ff_wma_end(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1168 ; 2 uses
  %i.d = load i32, ptr %i.c, align 16, !tbaa !50
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 66768
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  tail call void @av_tx_uninit(ptr noundef nonnull %i.g) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %i.c, align 16, !tbaa !50
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @ff_vlc_free(ptr noundef nonnull %i.m) #7
end_hunk_0
