Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vsrc_mandelbrot?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@init:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !26 ; 2 uses
  %i.e = fmul nsz double %i.d, %i.d
  store double %i.e, ptr %i.c, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27   ; 2 uses
  %i.h = sitofp nsz i32 %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.j = load <2 x double>, ptr %i.i, align 8, !tbaa !28
  %i.k = insertelement <2 x double> poison, double %i.h, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = fdiv nsz <2 x double> %i.j, %i.l
  store <2 x double> %i.m, ptr %i.i, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !29
  %i.p = mul i32 %i.g, 3
  %i.q = mul i32 %i.p, %i.o                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i32 0, ptr %i.s, align 4, !tbaa !31
  %i.t = sext i32 %i.q to i64
  %i.u = tail call ptr @av_malloc_array(i64 noundef %i.t, i64 noundef 24) #8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !32
  %i.w = load i32, ptr %i.r, align 8, !tbaa !30
  %i.x = sext i32 %i.w to i64
  %i.y = tail call ptr @av_malloc_array(i64 noundef %i.x, i64 noundef 24) #8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !34
  %i.ac = add nsw i32 %i.ab, 16
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @av_malloc_array(i64 noundef %i.ad, i64 noundef 16) #8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !35
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !32
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ah = load ptr, ptr %i.z, align 8, !tbaa !33
  %.not20 = icmp eq ptr %i.ah, null
  %.not21 = icmp eq ptr %i.ae, null
  %or.cond = select i1 %.not20, i1 true, i1 %.not21
  %spec.select = select i1 %or.cond, i32 -12, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -12, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @av_freep(ptr noundef nonnull %i.d) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = tail call ptr @ff_get_video_buffer(ptr noundef nonnull %0, i32 noundef %i.e, i32 noundef %i.g) #8 ; 8 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  store i32 1, ptr %i.i, align 4, !tbaa !44
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !52   ; 3 uses
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store i64 %i.k, ptr %i.m, align 8, !tbaa !57
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  store i64 1, ptr %i.n, align 8, !tbaa !58
  %i.o = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !59   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44
  %i.s = sdiv i32 %i.r, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 72 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 22 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load double, ptr %i.v, align 8, !tbaa !60 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !61
  %i.z = fdiv nsz double %i.y, %i.w
  %i.aa = sitofp nsz i64 %i.k to double           ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !62
  %i.ad = fdiv nsz double %i.aa, %i.ac
  %i.ae = tail call nsz double @llvm.pow.f64(double %i.z, double %i.ad)
  %i.af = fmul nsz double %i.w, %i.ae             ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !63
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 6 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !27
  %i.ak = sdiv i32 %i.aj, -2
  %i.al = sitofp nsz i32 %i.ak to double
  %i.am = fadd nsz double %i.al, -5.000000e-01
  %i.an = tail call nsz double @llvm.fmuladd.f64(double %i.af, double %i.am, double %i.ah)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 152 ; 2 uses
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !64
  %i.aq = fcmp nsz une double %i.ap, 0.000000e+00
  br i1 %i.aq, label %fill_from_cache.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !31 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i, label %fill_from_cache.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  %wide.trip.count.i = zext nneg i32 %i.as to i64
  br label %.lr.ph.split.us.split.us.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !28
  %i.az = fcmp nsz ogt double %i.ay, %i.an
  br i1 %i.az, label %fill_from_cache.exit.loopexit.split.loop.exit672.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.split.us.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %fill_from_cache.exit.i, label %.lr.ph.split.us.split.us.i.i, !llvm.loop !45

fill_from_cache.exit.loopexit.split.loop.exit672.i: ; preds = %.lr.ph.split.us.split.us.i.i
  %i.ba = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %fill_from_cache.exit.i

fill_from_cache.exit.i:                           ; preds = %bb.c, %fill_from_cache.exit.loopexit.split.loop.exit672.i, %.preheader.i.i, %bb.b
  %.2466.i = phi i32 [ 0, %bb.b ], [ 0, %.preheader.i.i ], [ %i.ba, %fill_from_cache.exit.loopexit.split.loop.exit672.i ], [ %i.as, %bb.c ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !29
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.be, i1 false)
  %i.bf = load i32, ptr %i.ai, align 4, !tbaa !27 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph552.i, label %._crit_edge553.i

.lr.ph552.i:                                      ; preds = %fill_from_cache.exit.i
  %i.bh = fmul nsz double %i.af, 3.000000e+00
  %i.bi = fmul nsz double %i.bh, 5.000000e-01
  %.not31.i.i = icmp eq ptr %i.p, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 96 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 92 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 120 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.bt = fmul nsz double %i.af, 5.000000e-01
  %i.bu = sext i32 %i.s to i64                    ; 4 uses
  %i.bv = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.bw = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %fill_from_cache.exit438.i, %.lr.ph552.i
  %indvars.iv616.i = phi i64 [ 0, %.lr.ph552.i ], [ %indvars.iv.next617.i, %fill_from_cache.exit438.i ] ; 5 uses
  %i.bx = phi i32 [ %i.bf, %.lr.ph552.i ], [ %i.zi, %fill_from_cache.exit438.i ] ; 3 uses
  %.0454550.i = phi i32 [ %.2466.i, %.lr.ph552.i ], [ %.1455.i, %fill_from_cache.exit438.i ] ; 5 uses
  %.0458549.i = phi i32 [ 0, %.lr.ph552.i ], [ %.8.i, %fill_from_cache.exit438.i ] ; 3 uses
  %.0464548.i = phi i32 [ %.2466.i, %.lr.ph552.i ], [ %.6470.i, %fill_from_cache.exit438.i ] ; 4 uses
  %indvars.iv.next617.i = add nuw nsw i64 %indvars.iv616.i, 1 ; 6 uses
  %i.by = load double, ptr %i.ag, align 8, !tbaa !63
  %.neg.i = sdiv i32 %i.bx, -2
  %i.bz = trunc nuw nsw i64 %indvars.iv616.i to i32 ; 3 uses
  %i.ca = add i32 %.neg.i, %i.bz
  %i.cb = sitofp nsz i32 %i.ca to double
  %i.cc = tail call nsz double @llvm.fmuladd.f64(double %i.af, double %i.cb, double %i.by) ; 17 uses
  %.val419.i = load ptr, ptr %i.t, align 8, !tbaa !19 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val419.i, i64 152
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !64
  %i.cf = fcmp nsz une double %i.ce, 0.000000e+00
  br i1 %i.cf, label %fill_from_cache.exit424.i, label %.preheader.i421.i

.preheader.i421.i:                                ; preds = %bb.d
  %i.cg = getelementptr inbounds nuw i8, ptr %.val419.i, i64 104 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val419.i, i64 100 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !31 ; 2 uses
  %i.cj = icmp slt i32 %.0464548.i, %i.ci
  br i1 %i.cj, label %.lr.ph.i422.i, label %fill_from_cache.exit424.i

.lr.ph.i422.i:                                    ; preds = %.preheader.i421.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.val419.i, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %.val419.i, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.val419.i, i64 96
  %i.cn = getelementptr inbounds nuw i8, ptr %.val419.i, i64 112
  %.pre8.i.i = load ptr, ptr %i.cg, align 8, !tbaa !32
  %i.co = sext i32 %.0464548.i to i64
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.split.us.i.i:                        ; preds = %bb.h, %.lr.ph.i422.i
  %i.cp = phi i32 [ %i.dm, %bb.h ], [ %i.ci, %.lr.ph.i422.i ] ; 2 uses
  %indvars.iv571.i = phi i64 [ %indvars.iv.next572.i, %bb.h ], [ %i.co, %.lr.ph.i422.i ] ; 3 uses
  %.3461.i = phi i32 [ %.4462.i, %bb.h ], [ %.0458549.i, %.lr.ph.i422.i ] ; 6 uses
  %i.cq = phi ptr [ %i.dn, %bb.h ], [ %.pre8.i.i, %.lr.ph.i422.i ] ; 3 uses
  %i.cr = getelementptr inbounds [24 x i8], ptr %i.cq, i64 %indvars.iv571.i ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !28
  %i.cu = fcmp nsz ogt double %i.ct, %i.cc
  br i1 %i.cu, label %fill_from_cache.exit424.loopexit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us.i.i
  %i.cv = load double, ptr %i.cr, align 8, !tbaa !28
  %i.cw = load double, ptr %i.ck, align 8, !tbaa !66
  %i.cx = fsub nsz double %i.cv, %i.cw
  %i.cy = fdiv nsz double %i.cx, %i.af
  %i.cz = load i32, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %i.da = sdiv i32 %i.cz, 2
  %i.db = sitofp nsz i32 %i.da to double
  %i.dc = fadd nsz double %i.cy, %i.db
  %i.dd = tail call i64 @llvm.lrint.i64.f64(double %i.dc)
  %i.de = trunc i64 %i.dd to i32                  ; 2 uses
  %i.df = icmp sgt i32 %i.de, -1
  %.not.us3.i.i = icmp sgt i32 %i.cz, %i.de
  %or.cond.us4.i.i = and i1 %i.df, %.not.us3.i.i
  br i1 %or.cond.us4.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.dg = load i32, ptr %i.cm, align 8, !tbaa !30
  %i.dh = icmp slt i32 %.3461.i, %i.dg
  br i1 %i.dh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.di = load ptr, ptr %i.cn, align 8, !tbaa !33
  %i.dj = add nsw i32 %.3461.i, 1
  %i.dk = sext i32 %.3461.i to i64
  %i.dl = getelementptr inbounds [24 x i8], ptr %i.di, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !tbaa.struct !68
  %.pre.i.i = load ptr, ptr %i.cg, align 8, !tbaa !32
  %.pre.i = load i32, ptr %i.ch, align 4, !tbaa !31
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.dm = phi i32 [ %.pre.i, %bb.g ], [ %i.cp, %bb.f ], [ %i.cp, %bb.e ] ; 2 uses
  %.4462.i = phi i32 [ %i.dj, %bb.g ], [ %.3461.i, %bb.f ], [ %.3461.i, %bb.e ] ; 2 uses
  %i.dn = phi ptr [ %.pre.i.i, %bb.g ], [ %i.cq, %bb.f ], [ %i.cq, %bb.e ]
  %indvars.iv.next572.i = add nsw i64 %indvars.iv571.i, 1 ; 3 uses
  %i.do = sext i32 %i.dm to i64
  %i.dp = icmp slt i64 %indvars.iv.next572.i, %i.do
  br i1 %i.dp, label %.lr.ph.split.split.us.i.i, label %fill_from_cache.exit424.loopexit.i, !llvm.loop !45

fill_from_cache.exit424.loopexit.i:               ; preds = %bb.h, %.lr.ph.split.split.us.i.i
  %.4468.ph.in.i = phi i64 [ %indvars.iv571.i, %.lr.ph.split.split.us.i.i ], [ %indvars.iv.next572.i, %bb.h ]
  %.5463.ph.i = phi i32 [ %.3461.i, %.lr.ph.split.split.us.i.i ], [ %.4462.i, %bb.h ]
  %.4468.ph.i = trunc i64 %.4468.ph.in.i to i32
  %.pre620.i = load i32, ptr %i.ai, align 4, !tbaa !27
  br label %fill_from_cache.exit424.i

fill_from_cache.exit424.i:                        ; preds = %fill_from_cache.exit424.loopexit.i, %.preheader.i421.i, %bb.d
  %i.dq = phi i32 [ %i.bx, %bb.d ], [ %i.bx, %.preheader.i421.i ], [ %.pre620.i, %fill_from_cache.exit424.loopexit.i ]
  %.4468.i = phi i32 [ %.0464548.i, %bb.d ], [ %.0464548.i, %.preheader.i421.i ], [ %.4468.ph.i, %fill_from_cache.exit424.loopexit.i ] ; 4 uses
  %.5463.i = phi i32 [ %.0458549.i, %bb.d ], [ %.0458549.i, %.preheader.i421.i ], [ %.5463.ph.i, %fill_from_cache.exit424.loopexit.i ] ; 2 uses
  %i.dr = sext i32 %i.dq to i64
  %i.ds = icmp slt i64 %indvars.iv.next617.i, %i.dr
  br i1 %i.ds, label %bb.i, label %fill_from_cache.exit428.i

bb.i:                                             ; preds = %fill_from_cache.exit424.i
  %i.dt = mul nsw i64 %indvars.iv.next617.i, %i.bu
  %i.du = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.bb, align 8, !tbaa !29
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.du, i8 0, i64 %i.dx, i1 false)
  %i.dy = fadd nsz double %i.bi, %i.cc            ; 2 uses
  %.val418.i = load ptr, ptr %i.t, align 8, !tbaa !19 ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val418.i, i64 152
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !64
  %i.eb = fcmp nsz une double %i.ea, 0.000000e+00
  br i1 %i.eb, label %fill_from_cache.exit428.i, label %.preheader.i425.i

.preheader.i425.i:                                ; preds = %bb.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.val418.i, i64 100 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !31 ; 4 uses
  %i.ee = icmp slt i32 %.0454550.i, %i.ed
  br i1 %i.ee, label %.lr.ph.i426.i, label %fill_from_cache.exit428.i

.lr.ph.i426.i:                                    ; preds = %.preheader.i425.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.val418.i, i64 104
  %i.eg = getelementptr inbounds nuw i8, ptr %.val418.i, i64 40
  %i.eh = getelementptr inbounds nuw i8, ptr %.val418.i, i64 8
  %i.ei = load ptr, ptr %i.ef, align 8, !tbaa !32 ; 2 uses
  %i.ej = sext i32 %.0454550.i to i64             ; 2 uses
  br i1 %.not31.i.i, label %.lr.ph.split.us.split.us.i427.preheader.i, label %.lr.ph.split.us.split.i.i

.lr.ph.split.us.split.us.i427.preheader.i:        ; preds = %.lr.ph.i426.i
  %i.ek = sext i32 %i.ed to i64
  br label %.lr.ph.split.us.split.us.i427.i

.lr.ph.split.us.split.us.i427.i:                  ; preds = %bb.j, %.lr.ph.split.us.split.us.i427.preheader.i
  %indvars.iv578.i = phi i64 [ %i.ej, %.lr.ph.split.us.split.us.i427.preheader.i ], [ %indvars.iv.next579.i, %bb.j ] ; 3 uses
  %i.el = getelementptr inbounds [24 x i8], ptr %i.ei, i64 %indvars.iv578.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load double, ptr %i.em, align 8, !tbaa !28
  %i.eo = fcmp nsz ogt double %i.en, %i.dy
  br i1 %i.eo, label %fill_from_cache.exit428.loopexit.split.loop.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.split.us.i427.i
  %indvars.iv.next579.i = add nsw i64 %indvars.iv578.i, 1 ; 2 uses
  %exitcond582.not.i = icmp eq i64 %indvars.iv.next579.i, %i.ek
  br i1 %exitcond582.not.i, label %fill_from_cache.exit428.i, label %.lr.ph.split.us.split.us.i427.i, !llvm.loop !45

.lr.ph.split.us.split.i.i:                        ; preds = %.lr.ph.i426.i, %bb.m
  %i.ep = phi i32 [ %i.fj, %bb.m ], [ %i.ed, %.lr.ph.i426.i ]
  %indvars.iv574.i = phi i64 [ %indvars.iv.next575.i, %bb.m ], [ %i.ej, %.lr.ph.i426.i ] ; 3 uses
  %i.eq = getelementptr inbounds [24 x i8], ptr %i.ei, i64 %indvars.iv574.i ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load double, ptr %i.er, align 8, !tbaa !28
  %i.et = fcmp nsz ogt double %i.es, %i.dy
  br i1 %i.et, label %fill_from_cache.exit428.loopexit556.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.split.i.i
  %i.eu = load double, ptr %i.eq, align 8, !tbaa !28
  %i.ev = load double, ptr %i.eg, align 8, !tbaa !66
  %i.ew = fsub nsz double %i.eu, %i.ev
  %i.ex = fdiv nsz double %i.ew, %i.af
  %i.ey = load i32, ptr %i.eh, align 8, !tbaa !29 ; 2 uses
  %i.ez = sdiv i32 %i.ey, 2
  %i.fa = sitofp nsz i32 %i.ez to double
  %i.fb = fadd nsz double %i.ex, %i.fa
  %i.fc = tail call i64 @llvm.lrint.i64.f64(double %i.fb) ; 2 uses
  %i.fd = trunc i64 %i.fc to i32                  ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, -1
  %.not.us.i.i = icmp sgt i32 %i.ey, %i.fd
  %or.cond.us.i.i = and i1 %i.fe, %.not.us.i.i
  br i1 %or.cond.us.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ff = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !70
  %i.fh = and i64 %i.fc, 2147483647
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.fh
  store i32 %i.fg, ptr %i.fi, align 4, !tbaa !44
  %.pre621.i = load i32, ptr %i.ec, align 4, !tbaa !31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fj = phi i32 [ %.pre621.i, %bb.l ], [ %i.ep, %bb.k ] ; 2 uses
  %indvars.iv.next575.i = add nsw i64 %indvars.iv574.i, 1 ; 3 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next575.i, %i.fk
  br i1 %i.fl, label %.lr.ph.split.us.split.i.i, label %fill_from_cache.exit428.loopexit556.i, !llvm.loop !45

fill_from_cache.exit428.loopexit556.i:            ; preds = %bb.m, %.lr.ph.split.us.split.i.i
  %.1455.ph557.in.i = phi i64 [ %indvars.iv.next575.i, %bb.m ], [ %indvars.iv574.i, %.lr.ph.split.us.split.i.i ]
  %.1455.ph557.i = trunc i64 %.1455.ph557.in.i to i32
  br label %fill_from_cache.exit428.i

fill_from_cache.exit428.loopexit.split.loop.exit.i: ; preds = %.lr.ph.split.us.split.us.i427.i
  %i.fm = trunc nsw i64 %indvars.iv578.i to i32
  br label %fill_from_cache.exit428.i

fill_from_cache.exit428.i:                        ; preds = %bb.j, %fill_from_cache.exit428.loopexit.split.loop.exit.i, %fill_from_cache.exit428.loopexit556.i, %.preheader.i425.i, %bb.i, %fill_from_cache.exit424.i
  %.1455.i = phi i32 [ %.0454550.i, %fill_from_cache.exit424.i ], [ %.0454550.i, %bb.i ], [ %.1455.ph557.i, %fill_from_cache.exit428.loopexit556.i ], [ %.0454550.i, %.preheader.i425.i ], [ %i.fm, %fill_from_cache.exit428.loopexit.split.loop.exit.i ], [ %i.ed, %bb.j ]
  %i.fn = load i32, ptr %i.bb, align 8, !tbaa !29 ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, 0
  br i1 %i.fo, label %.lr.ph546.i, label %._crit_edge547.i

.lr.ph546.i:                                      ; preds = %fill_from_cache.exit428.i
  %i.fp = mul nsw i64 %indvars.iv616.i, %i.bu     ; 2 uses
  %i.fq = icmp ne i64 %indvars.iv616.i, 0
  %i.fr = mul nsw i64 %indvars.iv.next617.i, %i.bu
  %i.fs = add nsw i64 %indvars.iv616.i, -1
  %i.ft = mul nsw i64 %i.fs, %i.bu
  %i.fu = add nsw i64 %i.fp, 4294967295
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.p, i64 %i.fp ; 5 uses
  %invariant.gep703.i = getelementptr [4 x i8], ptr %i.p, i64 %i.fr ; 3 uses
  %invariant.gep709.i = getelementptr [4 x i8], ptr %i.p, i64 %i.ft ; 7 uses
  %i.fv = insertelement <2 x double> poison, double %i.cc, i64 1 ; 8 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.be, %.lr.ph546.i
  %indvars.iv608.i = phi i64 [ 0, %.lr.ph546.i ], [ %indvars.iv.next609.i, %bb.be ] ; 11 uses
  %i.fw = phi i32 [ %i.fn, %.lr.ph546.i ], [ %i.xr, %bb.be ] ; 6 uses
  %.1459543.i = phi i32 [ %.5463.i, %.lr.ph546.i ], [ %.2460.i, %bb.be ] ; 7 uses
  %i.fx = load double, ptr %i.bj, align 8, !tbaa !66
  %.neg411.i = sdiv i32 %i.fw, -2
  %i.fy = trunc nuw nsw i64 %indvars.iv608.i to i32 ; 2 uses
  %i.fz = add i32 %.neg411.i, %i.fy               ; 2 uses
  %i.ga = sitofp nsz i32 %i.fz to double
  %i.gb = tail call nsz double @llvm.fmuladd.f64(double %i.af, double %i.ga, double %i.fx) ; 21 uses
  %i.gc = load i32, ptr %i.bk, align 8, !tbaa !71 ; 2 uses
  %i.gd = uitofp nsz i32 %i.gc to double
  %i.ge = fmul nnan nsz double %i.gd, f0x3DF0000000000000 ; 2 uses
  %i.gf = mul i32 %i.gc, 1664525
  %i.gg = add i32 %i.gf, 1013904223
  store i32 %i.gg, ptr %i.bk, align 8, !tbaa !71
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv608.i ; 3 uses
  %i.gh = load i32, ptr %gep.i, align 4, !tbaa !44
  %.not.i = icmp ult i32 %i.gh, 16777216
  br i1 %.not.i, label %bb.o, label %bb.be

bb.o:                                             ; preds = %bb.n
  %i.gi = load double, ptr %i.ao, align 8, !tbaa !64 ; 3 uses
  %i.gj = fcmp nsz une double %i.gi, 0.000000e+00
  br i1 %i.gj, label %bb.ai, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gk = icmp ne i64 %indvars.iv608.i, 0
  %or.cond.i.i = and i1 %i.fq, %i.gk
  br i1 %or.cond.i.i, label %bb.q, label %interpol.exit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.gl = add nuw nsw i64 %indvars.iv608.i, 1     ; 6 uses
  %i.gm = zext i32 %i.fw to i64
  %i.gn = icmp eq i64 %i.gl, %i.gm
  br i1 %i.gn, label %interpol.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.go = load i32, ptr %i.ai, align 4, !tbaa !27 ; 4 uses
  %i.gp = zext i32 %i.go to i64
  %i.gq = icmp eq i64 %indvars.iv.next617.i, %i.gp
  br i1 %i.gq, label %interpol.exit.thread.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gr = ashr i32 %i.fw, 1
  %i.gs = sub nsw i32 %i.fy, %i.gr
  %i.gt = tail call i32 @llvm.abs.i32(i32 %i.gs, i1 true)
  %i.gu = mul nsw i32 %i.go, %i.gt
  %i.gv = ashr i32 %i.go, 1
  %i.gw = sub nsw i32 %i.bz, %i.gv
  %i.gx = tail call i32 @llvm.abs.i32(i32 %i.gw, i1 true)
  %i.gy = mul nuw nsw i32 %i.gx, %i.fw
  %spec.select.i.i = tail call i32 @llvm.smax.i32(i32 %i.gu, i32 %i.gy)
  %i.gz = mul nsw i32 %i.go, %i.fw
  %i.ha = ashr i32 %i.gz, 3
  %i.hb = icmp slt i32 %spec.select.i.i, %i.ha
  br i1 %i.hb, label %interpol.exit.thread.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %gep702.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.gl
  %i.hc = load i32, ptr %gep702.i, align 4, !tbaa !44 ; 2 uses
  %i.hd = add nsw i64 %indvars.iv608.i, -1        ; 6 uses
  %gep704.i = getelementptr [4 x i8], ptr %invariant.gep703.i, i64 %i.hd
  %i.he = load i32, ptr %gep704.i, align 4, !tbaa !44 ; 2 uses
  %gep706.i = getelementptr [4 x i8], ptr %invariant.gep703.i, i64 %indvars.iv608.i
  %i.hf = load i32, ptr %gep706.i, align 4, !tbaa !44 ; 3 uses
  %gep708.i = getelementptr [4 x i8], ptr %invariant.gep703.i, i64 %i.gl
  %i.hg = load i32, ptr %gep708.i, align 4, !tbaa !44 ; 3 uses
  %i.hh = icmp ne i32 %i.hc, 0
  %i.hi = icmp ne i32 %i.hf, 0                    ; 2 uses
  %or.cond3.i.i = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %or.cond3.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %gep726.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.hj = load i32, ptr %gep726.i, align 4, !tbaa !44
  %gep728.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %indvars.iv608.i
  %i.hk = load i32, ptr %gep728.i, align 4, !tbaa !44
  br label %bb.ab

bb.v:                                             ; preds = %bb.t
  %i.hl = icmp ne i32 %i.he, 0
  %i.hm = icmp ne i32 %i.hg, 0                    ; 2 uses
  %or.cond5.i.i = select i1 %i.hl, i1 %i.hm, i1 false
  br i1 %or.cond5.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %gep722.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.gl
  %i.hn = load i32, ptr %gep722.i, align 4, !tbaa !44
  %gep724.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.hd
  %i.ho = load i32, ptr %gep724.i, align 4, !tbaa !44
  br label %bb.ab

bb.x:                                             ; preds = %bb.v
  br i1 %i.hi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %gep716.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %indvars.iv608.i
  %i.hp = load i32, ptr %gep716.i, align 4, !tbaa !44
  %gep718.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.hq = load i32, ptr %gep718.i, align 4, !tbaa !44
  %gep720.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.gl
  %i.hr = load i32, ptr %gep720.i, align 4, !tbaa !44
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  br i1 %i.hm, label %bb.aa, label %interpol.exit.thread.thread.i

bb.aa:                                            ; preds = %bb.z
  %gep710.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.hd
  %i.hs = load i32, ptr %gep710.i, align 4, !tbaa !44
  %gep712.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.hd
  %i.ht = load i32, ptr %gep712.i, align 4, !tbaa !44
  %gep714.i = getelementptr [4 x i8], ptr %invariant.gep709.i, i64 %i.gl
  %i.hu = load i32, ptr %gep714.i, align 4, !tbaa !44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  %.0152.i.i = phi i32 [ %i.hc, %bb.u ], [ %i.hn, %bb.w ], [ %i.hq, %bb.y ], [ %i.ht, %bb.aa ] ; 3 uses
  %.0151.i.i = phi i32 [ %i.hj, %bb.u ], [ %i.he, %bb.w ], [ %i.hr, %bb.y ], [ %i.hu, %bb.aa ] ; 3 uses
  %.0150.i.i = phi i32 [ %i.hf, %bb.u ], [ %i.ho, %bb.w ], [ %i.hf, %bb.y ], [ %i.hs, %bb.aa ] ; 3 uses
  %.0149.i.i = phi i32 [ %i.hk, %bb.u ], [ %i.hg, %bb.w ], [ %i.hp, %bb.y ], [ %i.hg, %bb.aa ] ; 3 uses
  %i.hv = and i32 %.0152.i.i, 255                 ; 2 uses
  %i.hw = and i32 %.0151.i.i, 255                 ; 2 uses
  %i.hx = add nuw nsw i32 %i.hw, %i.hv            ; 2 uses
  %i.hy = and i32 %.0150.i.i, 255                 ; 2 uses
  %i.hz = and i32 %.0149.i.i, 255                 ; 2 uses
  %i.ia = add nuw nsw i32 %i.hz, %i.hy            ; 2 uses
  %reass.sub.i.i = add nsw i32 %i.hx, -6
  %i.ib = sub nsw i32 %reass.sub.i.i, %i.ia
  %i.ic = icmp ult i32 %i.ib, -11
  br i1 %i.ic, label %interpol.exit.thread.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.id = sub nsw i32 %i.hv, %i.hw
  %i.ie = tail call i32 @llvm.abs.i32(i32 %i.id, i1 true)
  %i.if = sub nsw i32 %i.hy, %i.hz
  %i.ig = tail call i32 @llvm.abs.i32(i32 %i.if, i1 true)
  %i.ih = add nuw nsw i32 %i.ig, %i.ie
  %i.ii = icmp samesign ugt i32 %i.ih, 20
  br i1 %i.ii, label %interpol.exit.thread.thread.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ij = add nuw nsw i32 %i.hx, 2
  %i.ik = add nuw nsw i32 %i.ij, %i.ia
  %i.il = lshr i32 %i.ik, 2
  %i.im = lshr i32 %.0152.i.i, 8
  %i.in = lshr i32 %.0151.i.i, 8
  %i.io = lshr i32 %.0150.i.i, 8
  %i.ip = lshr i32 %.0149.i.i, 8
  %i.iq = and i32 %i.im, 255                      ; 2 uses
  %i.ir = and i32 %i.in, 255                      ; 2 uses
  %i.is = add nuw nsw i32 %i.ir, %i.iq            ; 2 uses
  %i.it = and i32 %i.io, 255                      ; 2 uses
  %i.iu = and i32 %i.ip, 255                      ; 2 uses
  %i.iv = add nuw nsw i32 %i.iu, %i.it            ; 2 uses
  %reass.sub.1.i.i = add nsw i32 %i.is, -6
  %i.iw = sub nsw i32 %reass.sub.1.i.i, %i.iv
  %i.ix = icmp ult i32 %i.iw, -11
  br i1 %i.ix, label %interpol.exit.thread.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.iy = sub nsw i32 %i.iq, %i.ir
  %i.iz = tail call i32 @llvm.abs.i32(i32 %i.iy, i1 true)
  %i.ja = sub nsw i32 %i.it, %i.iu
  %i.jb = tail call i32 @llvm.abs.i32(i32 %i.ja, i1 true)
  %i.jc = add nuw nsw i32 %i.jb, %i.iz
  %i.jd = icmp samesign ugt i32 %i.jc, 20
  br i1 %i.jd, label %interpol.exit.thread.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.je = add nuw nsw i32 %i.is, 2
  %i.jf = add nuw nsw i32 %i.je, %i.iv
  %i.jg = shl nuw nsw i32 %i.jf, 6
  %i.jh = and i32 %i.jg, 130816
  %i.ji = lshr i32 %.0152.i.i, 16
  %i.jj = lshr i32 %.0151.i.i, 16
  %i.jk = lshr i32 %.0150.i.i, 16
  %i.jl = lshr i32 %.0149.i.i, 16
  %i.jm = and i32 %i.ji, 255                      ; 2 uses
  %i.jn = and i32 %i.jj, 255                      ; 2 uses
  %i.jo = add nuw nsw i32 %i.jn, %i.jm            ; 2 uses
  %i.jp = and i32 %i.jk, 255                      ; 2 uses
  %i.jq = and i32 %i.jl, 255                      ; 2 uses
  %i.jr = add nuw nsw i32 %i.jq, %i.jp            ; 2 uses
  %reass.sub.2.i.i = add nsw i32 %i.jo, -6
  %i.js = sub nsw i32 %reass.sub.2.i.i, %i.jr
  %i.jt = icmp ult i32 %i.js, -11
  br i1 %i.jt, label %interpol.exit.thread.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ju = sub nsw i32 %i.jm, %i.jn
  %i.jv = tail call i32 @llvm.abs.i32(i32 %i.ju, i1 true)
  %i.jw = sub nsw i32 %i.jp, %i.jq
  %i.jx = tail call i32 @llvm.abs.i32(i32 %i.jw, i1 true)
  %i.jy = add nuw nsw i32 %i.jx, %i.jv
  %i.jz = icmp samesign ugt i32 %i.jy, 20
  br i1 %i.jz, label %interpol.exit.thread.thread.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ka = add nuw nsw i32 %i.jo, 2
  %i.kb = add nuw nsw i32 %i.ka, %i.jr
  %i.kc = shl nuw nsw i32 %i.kb, 14
  %i.kd = and i32 %i.kc, 16711680
  %i.ke = or i32 %i.il, %i.jh
  %i.kf = or i32 %i.ke, %i.kd
  %i.kg = or i32 %i.kf, -16777216                 ; 2 uses
  store i32 %i.kg, ptr %gep.i, align 4, !tbaa !44
  %i.kh = load i32, ptr %i.bl, align 8, !tbaa !30
  %i.ki = icmp slt i32 %.1459543.i, %i.kh
  br i1 %i.ki, label %.sink.split.i, label %bb.be

bb.ai:                                            ; preds = %bb.o
  %i.kj = load <2 x double>, ptr %i.bn, align 8, !tbaa !28
  %i.kk = fmul nsz <2 x double> %i.kj, %i.bw      ; 2 uses
  %i.kl = extractelement <2 x double> %i.kk, i64 0
  %i.km = tail call nsz double @llvm.cos.f64(double %i.kl)
  %i.kn = tail call nsz double @llvm.fmuladd.f64(double %i.km, double %i.gi, double %i.gb)
  %i.ko = extractelement <2 x double> %i.kk, i64 1
  %i.kp = tail call nsz double @llvm.sin.f64(double %i.ko)
  %i.kq = tail call nsz double @llvm.fmuladd.f64(double %i.kp, double %i.gi, double %i.cc)
  br label %interpol.exit.thread.i

interpol.exit.thread.i:                           ; preds = %bb.ai, %bb.q, %bb.p
  %.0388.i = phi nsz double [ %i.kn, %bb.ai ], [ %i.gb, %bb.q ], [ %i.gb, %bb.p ] ; 2 uses
  %.0382.i = phi nsz double [ %i.kq, %bb.ai ], [ %i.cc, %bb.q ], [ %i.cc, %bb.p ] ; 2 uses
  %i.kr = icmp eq i64 %indvars.iv608.i, 0
  br i1 %i.kr, label %.thread.i, label %interpol.exit.thread.thread.i

interpol.exit.thread.thread.i:                    ; preds = %interpol.exit.thread.i, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.s, %bb.r
  %.0382648.i = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %i.cc, %bb.ab ], [ %i.cc, %bb.ac ], [ %i.cc, %bb.ad ], [ %i.cc, %bb.ae ], [ %i.cc, %bb.af ], [ %i.cc, %bb.ag ], [ %i.cc, %bb.r ], [ %i.cc, %bb.z ], [ %i.cc, %bb.s ] ; 3 uses
  %.0388645.i = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %i.gb, %bb.ab ], [ %i.gb, %bb.ac ], [ %i.gb, %bb.ad ], [ %i.gb, %bb.ae ], [ %i.gb, %bb.af ], [ %i.gb, %bb.ag ], [ %i.gb, %bb.r ], [ %i.gb, %bb.z ], [ %i.gb, %bb.s ] ; 3 uses
  %i.ks = load i32, ptr %i.bo, align 4, !tbaa !72
  %.not413.i = icmp eq i32 %i.ks, 0
  br i1 %.not413.i, label %bb.aj, label %.thread.i

bb.aj:                                            ; preds = %interpol.exit.thread.thread.i
  %i.kt = add nsw i64 %i.fu, %indvars.iv608.i
  %sext.i = shl i64 %i.kt, 32
  %i.ku = ashr exact i64 %sext.i, 30
  %i.kv = getelementptr inbounds i8, ptr %i.p, i64 %i.ku
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !44
  %i.kx = icmp eq i32 %i.kw, -16777216
  br i1 %i.kx, label %.thread.i, label %bb.ak

.thread.i:                                        ; preds = %bb.aj, %interpol.exit.thread.thread.i, %interpol.exit.thread.i
  %.0382647.i = phi double [ %.0382.i, %interpol.exit.thread.i ], [ %.0382648.i, %interpol.exit.thread.thread.i ], [ %.0382648.i, %bb.aj ]
  %.0388644.i = phi double [ %.0388.i, %interpol.exit.thread.i ], [ %.0388645.i, %interpol.exit.thread.thread.i ], [ %.0388645.i, %bb.aj ]
  %i.ky = tail call i32 @llvm.abs.i32(i32 %i.fz, i1 true)
  %i.kz = load i32, ptr %i.ai, align 4, !tbaa !27
  %.neg415.i = sdiv i32 %i.kz, -2
  %i.la = add i32 %.neg415.i, %i.bz
  %i.lb = tail call i32 @llvm.abs.i32(i32 %i.la, i1 true)
  %i.lc = add nuw nsw i32 %i.lb, %i.ky
  %i.ld = uitofp nneg i32 %i.lc to double
  %i.le = fmul nsz double %i.af, %i.ld
  %i.lf = sitofp nsz i32 %i.fw to double
  %i.lg = fdiv nsz double %i.le, %i.lf
  %i.lh = fptrunc nsz double %i.lg to float
  br label %bb.ak

bb.ak:                                            ; preds = %.thread.i, %bb.aj
  %.0382646.i = phi double [ %.0382647.i, %.thread.i ], [ %.0382648.i, %bb.aj ] ; 2 uses
  %.0388643.i = phi double [ %.0388644.i, %.thread.i ], [ %.0388645.i, %bb.aj ] ; 2 uses
  %i.li = phi i1 [ true, %.thread.i ], [ false, %bb.aj ] ; 4 uses
  %.0394.i = phi nsz float [ %i.lh, %.thread.i ], [ undef, %bb.aj ] ; 3 uses
  %i.lj = load i32, ptr %i.bp, align 8, !tbaa !34 ; 7 uses
  %i.lk = icmp sgt i32 %i.lj, 8
  br i1 %i.lk, label %.lr.ph.i, label %.thread474.thread.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.ll = add nsw i32 %i.lj, -8
  %i.lm = load ptr, ptr %i.bq, align 8, !tbaa !35 ; 9 uses
  %i.ln = fpext nsz float %.0394.i to double      ; 4 uses
  %i.lo = zext nneg i32 %i.ll to i64
  %i.lp = add nsw i32 %i.lj, -9
  %i.lq = and i32 %i.lp, -8
  %i.lr = add nuw nsw i32 %i.lq, 8
  %i.ls = add nsw i32 %i.lj, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv593.i = phi i32 [ %i.ls, %.lr.ph.i ], [ %indvars.iv.next594.i, %bb.az ] ; 2 uses
  %indvars.iv590.i = phi i32 [ 1, %.lr.ph.i ], [ %indvars.iv.next591.i, %bb.az ] ; 2 uses
  %indvars.iv583.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next584.i, %bb.az ] ; 11 uses
  %.1383508.i = phi double [ %.0382646.i, %.lr.ph.i ], [ %i.qh, %bb.az ] ; 3 uses
  %.1389507.i = phi double [ %.0388643.i, %.lr.ph.i ], [ %i.qj, %bb.az ] ; 2 uses
  %i.lt = fneg nsz double %.1383508.i
  %1 = fmul nsz double %.1383508.i, %i.lt
  %i.lu = fmul nsz double %.1389507.i, 2.000000e+00
  %2 = insertelement <2 x double> poison, double %.1389507.i, i64 0 ; 2 uses
  %3 = insertelement <2 x double> %2, double %i.lu, i64 1
  %4 = insertelement <2 x double> %2, double %.1383508.i, i64 1
  %5 = insertelement <2 x double> %i.fv, double %1, i64 0
  %6 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %3, <2 x double> %4, <2 x double> %5) ; 3 uses
  %7 = extractelement <2 x double> %6, i64 0
  %i.lv = getelementptr [16 x i8], ptr %i.lm, i64 %indvars.iv583.i ; 10 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  %8 = extractelement <2 x double> %6, i64 1      ; 3 uses
  store double %8, ptr %i.lw, align 8, !tbaa !28
  %i.lx = fneg nsz double %8
  %i.ly = fmul nsz double %8, %i.lx
  %i.lz = fadd nsz double %i.gb, %7               ; 3 uses
  store double %i.lz, ptr %i.lv, align 8, !tbaa !28
  %i.ma = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mc = fmul nsz <2 x double> %i.mb, <double 1.000000e+00, double 2.000000e+00>
  %i.md = insertelement <2 x double> %6, double %i.lz, i64 0
  %i.me = insertelement <2 x double> %i.fv, double %i.ly, i64 0
  %i.mf = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> %i.md, <2 x double> %i.me) ; 4 uses
  %i.mg = extractelement <2 x double> %i.mf, i64 1 ; 4 uses
  %i.mh = extractelement <2 x double> %i.mf, i64 0
  %i.mi = fadd nsz double %i.gb, %i.mh            ; 5 uses
  br i1 %i.li, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mj = lshr exact i64 %indvars.iv583.i, 1
  %i.mk = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.mj
  %i.ml = load <2 x double>, ptr %i.mk, align 8, !tbaa !28
  %i.mm = insertelement <2 x double> %i.mf, double %i.mi, i64 0
  %i.mn = fsub nsz <2 x double> %i.ml, %i.mm
  %i.mo = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.mn)
  %i.mp = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.mo)
  %i.mq = fcmp nsz ugt double %i.mp, %i.ln
  br i1 %i.mq, label %bb.an, label %.thread474.thread.loopexit.split.loop.exit684.i

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.mr = getelementptr inbounds nuw i8, ptr %i.lv, i64 16
  store double %i.mi, ptr %i.mr, align 8, !tbaa !28
  %i.ms = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store double %i.mg, ptr %i.ms, align 8, !tbaa !28
  %i.mt = fneg nsz double %i.mg
  %i.mu = fmul nsz double %i.mg, %i.mt
  %i.mv = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mx = fmul nsz <2 x double> %i.mw, <double 1.000000e+00, double 2.000000e+00>
  %i.my = insertelement <2 x double> %i.mf, double %i.mi, i64 0
  %i.mz = insertelement <2 x double> %i.fv, double %i.mu, i64 0
  %i.na = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mx, <2 x double> %i.my, <2 x double> %i.mz) ; 3 uses
  %i.nb = extractelement <2 x double> %i.na, i64 1 ; 3 uses
  %i.nc = extractelement <2 x double> %i.na, i64 0
  %i.nd = getelementptr i8, ptr %i.lv, i64 32
  %i.ne = getelementptr i8, ptr %i.lv, i64 40
  store double %i.nb, ptr %i.ne, align 8, !tbaa !28
  %i.nf = or disjoint i64 %indvars.iv583.i, 3     ; 2 uses
  %i.ng = fneg nsz double %i.nb
  %i.nh = fmul nsz double %i.nb, %i.ng
  %i.ni = fadd nsz double %i.gb, %i.nc            ; 3 uses
  store double %i.ni, ptr %i.nd, align 8, !tbaa !28
  %i.nj = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nk = shufflevector <2 x double> %i.nj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = fmul nsz <2 x double> %i.nk, <double 1.000000e+00, double 2.000000e+00>
  %i.nm = insertelement <2 x double> %i.na, double %i.ni, i64 0
  %i.nn = insertelement <2 x double> %i.fv, double %i.nh, i64 0
  %i.no = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nl, <2 x double> %i.nm, <2 x double> %i.nn) ; 4 uses
  %i.np = extractelement <2 x double> %i.no, i64 1 ; 4 uses
  %i.nq = extractelement <2 x double> %i.no, i64 0
  %i.nr = fadd nsz double %i.gb, %i.nq            ; 5 uses
  br i1 %i.li, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ns = lshr i64 %i.nf, 1
  %i.nt = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.ns
  %i.nu = load <2 x double>, ptr %i.nt, align 8, !tbaa !28
  %i.nv = insertelement <2 x double> %i.no, double %i.nr, i64 0
  %i.nw = fsub nsz <2 x double> %i.nu, %i.nv
  %i.nx = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nw)
  %i.ny = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.nx)
  %i.nz = fcmp nsz ugt double %i.ny, %i.ln
  br i1 %i.nz, label %bb.ap, label %.thread474.thread.loopexit.split.loop.exit680.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.nf ; 2 uses
  store double %i.nr, ptr %i.oa, align 8, !tbaa !28
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store double %i.np, ptr %i.ob, align 8, !tbaa !28
  %i.oc = fneg nsz double %i.np
  %i.od = fmul nsz double %i.np, %i.oc
  %i.oe = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.of = shufflevector <2 x double> %i.oe, <2 x double> poison, <2 x i32> zeroinitializer
  %i.og = fmul nsz <2 x double> %i.of, <double 1.000000e+00, double 2.000000e+00>
  %i.oh = insertelement <2 x double> %i.no, double %i.nr, i64 0
  %i.oi = insertelement <2 x double> %i.fv, double %i.od, i64 0
  %i.oj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.og, <2 x double> %i.oh, <2 x double> %i.oi) ; 3 uses
  %i.ok = extractelement <2 x double> %i.oj, i64 1 ; 3 uses
  %i.ol = extractelement <2 x double> %i.oj, i64 0
  %i.om = getelementptr i8, ptr %i.lv, i64 64
  %i.on = getelementptr i8, ptr %i.lv, i64 72
  store double %i.ok, ptr %i.on, align 8, !tbaa !28
  %i.oo = or disjoint i64 %indvars.iv583.i, 5     ; 3 uses
  %i.op = fneg nsz double %i.ok
  %i.oq = fmul nsz double %i.ok, %i.op
  %i.or = fadd nsz double %i.gb, %i.ol            ; 3 uses
  store double %i.or, ptr %i.om, align 8, !tbaa !28
  %i.os = insertelement <2 x double> poison, double %i.or, i64 0
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ou = fmul nsz <2 x double> %i.ot, <double 1.000000e+00, double 2.000000e+00>
  %i.ov = insertelement <2 x double> %i.oj, double %i.or, i64 0
  %i.ow = insertelement <2 x double> %i.fv, double %i.oq, i64 0
  %i.ox = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ou, <2 x double> %i.ov, <2 x double> %i.ow) ; 4 uses
  %i.oy = extractelement <2 x double> %i.ox, i64 1 ; 4 uses
  %i.oz = extractelement <2 x double> %i.ox, i64 0
  %i.pa = fadd nsz double %i.gb, %i.oz            ; 5 uses
  br i1 %i.li, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.pb = lshr i64 %i.oo, 1
  %i.pc = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.pb
  %i.pd = load <2 x double>, ptr %i.pc, align 8, !tbaa !28
  %i.pe = insertelement <2 x double> %i.ox, double %i.pa, i64 0
  %i.pf = fsub nsz <2 x double> %i.pd, %i.pe
  %i.pg = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.pf)
  %i.ph = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.pg)
  %i.pi = fcmp nsz ugt double %i.ph, %i.ln
  br i1 %i.pi, label %bb.ar, label %.thread474.thread.loopexit.split.loop.exit676.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.pj = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.oo ; 2 uses
  store double %i.pa, ptr %i.pj, align 8, !tbaa !28
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store double %i.oy, ptr %i.pk, align 8, !tbaa !28
  %i.pl = fneg nsz double %i.oy
  %i.pm = fmul nsz double %i.oy, %i.pl
  %i.pn = insertelement <2 x double> poison, double %i.pa, i64 0
  %i.po = shufflevector <2 x double> %i.pn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pp = fmul nsz <2 x double> %i.po, <double 1.000000e+00, double 2.000000e+00>
  %i.pq = insertelement <2 x double> %i.ox, double %i.pa, i64 0
  %i.pr = insertelement <2 x double> %i.fv, double %i.pm, i64 0
  %i.ps = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pp, <2 x double> %i.pq, <2 x double> %i.pr) ; 3 uses
  %i.pt = extractelement <2 x double> %i.ps, i64 1 ; 3 uses
  %i.pu = extractelement <2 x double> %i.ps, i64 0
  %i.pv = getelementptr i8, ptr %i.lv, i64 96
  %i.pw = getelementptr i8, ptr %i.lv, i64 104
  store double %i.pt, ptr %i.pw, align 8, !tbaa !28
  %i.px = or disjoint i64 %indvars.iv583.i, 7     ; 2 uses
  %i.py = fneg nsz double %i.pt
  %i.pz = fmul nsz double %i.pt, %i.py
  %i.qa = fadd nsz double %i.gb, %i.pu            ; 3 uses
  store double %i.qa, ptr %i.pv, align 8, !tbaa !28
  %i.qb = insertelement <2 x double> poison, double %i.qa, i64 0
  %i.qc = shufflevector <2 x double> %i.qb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qd = fmul nsz <2 x double> %i.qc, <double 1.000000e+00, double 2.000000e+00>
  %i.qe = insertelement <2 x double> %i.ps, double %i.qa, i64 0
  %i.qf = insertelement <2 x double> %i.fv, double %i.pz, i64 0
  %i.qg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qd, <2 x double> %i.qe, <2 x double> %i.qf) ; 3 uses
  %i.qh = extractelement <2 x double> %i.qg, i64 1 ; 7 uses
  %i.qi = extractelement <2 x double> %i.qg, i64 0
  %i.qj = fadd nsz double %i.gb, %i.qi            ; 8 uses
  br i1 %i.li, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qk = lshr i64 %i.px, 1
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.qk
  %i.qm = load <2 x double>, ptr %i.ql, align 8, !tbaa !28
  %i.qn = insertelement <2 x double> %i.qg, double %i.qj, i64 0
  %i.qo = fsub nsz <2 x double> %i.qm, %i.qn
  %i.qp = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %i.qo)
  %i.qq = tail call reassoc nsz double @llvm.vector.reduce.fadd.v2f64(double 0.000000e+00, <2 x double> %i.qp)
  %i.qr = fcmp nsz ugt double %i.qq, %i.ln
  br i1 %i.qr, label %bb.at, label %.thread474.thread.loopexit.split.loop.exit.i

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %i.px ; 2 uses
  store double %i.qj, ptr %i.qs, align 8, !tbaa !28
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store double %i.qh, ptr %i.qt, align 8, !tbaa !28
  %i.qu = fmul nsz double %i.qh, %i.qh
  %i.qv = tail call nsz double @llvm.fmuladd.f64(double %i.qj, double %i.qj, double %i.qu)
  %i.qw = load double, ptr %i.br, align 8, !tbaa !26 ; 4 uses
  %i.qx = fcmp nsz ogt double %i.qv, %i.qw
  br i1 %i.qx, label %.preheader489.i, label %bb.az

.preheader489.i:                                  ; preds = %bb.at
  %indvars586.le699.i = trunc i64 %indvars.iv583.i to i32 ; 2 uses
  %i.qy = icmp sgt i32 %i.lj, %indvars586.le699.i
  br i1 %i.qy, label %.lr.ph533.preheader.i, label %.thread474.thread.i

.lr.ph533.preheader.i:                            ; preds = %.preheader489.i
  %wide.trip.count598.i = zext nneg i32 %i.lj to i64
  br label %.lr.ph533.i

.lr.ph533.i:                                      ; preds = %bb.ay, %.lr.ph533.preheader.i
  %indvars.iv588.i = phi i64 [ %indvars.iv583.i, %.lr.ph533.preheader.i ], [ %indvars.iv.next589.i, %bb.ay ] ; 3 uses
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr %i.lm, i64 %indvars.iv588.i
  %i.ra = load <2 x double>, ptr %i.qz, align 8, !tbaa !28 ; 5 uses
  %i.rb = extractelement <2 x double> %i.ra, i64 1 ; 4 uses
  %i.rc = fmul nsz double %i.rb, %i.rb
  %i.rd = extractelement <2 x double> %i.ra, i64 0 ; 4 uses
  %i.re = tail call nsz double @llvm.fmuladd.f64(double %i.rd, double %i.rd, double %i.rc) ; 2 uses
  %i.rf = fcmp nsz ogt double %i.re, %i.qw
  br i1 %i.rf, label %bb.au, label %bb.ay

bb.au:                                            ; preds = %.lr.ph533.i
  %i.rg = trunc nuw nsw i64 %indvars.iv588.i to i32 ; 5 uses
  %i.rh = load i32, ptr %i.bs, align 8, !tbaa !73
  switch i32 %i.rh, label %.thread474.thread.i [
    i32 0, label %bb.av
    i32 1, label %bb.aw
    i32 2, label %.critedge.i
    i32 3, label %bb.ax
  ]

bb.av:                                            ; preds = %bb.au
  %i.ri = uitofp nsz nneg i32 %i.rg to double     ; 2 uses
  %i.rj = uitofp nneg i32 %i.rg to float
  %i.rk = tail call nsz float @llvm.sin.f32(float %i.rj)
  %i.rl = fadd nnan nsz float %i.rk, 1.000000e+00
  %i.rm = fmul nnan nsz float %i.rl, 1.270000e+02
end_hunk_0
