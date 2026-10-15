Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/f_ebur128?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@activate:bb.a
  %i.xv = fsub nsz double %.0389.i, %i.xt
  %i.xw = load double, ptr %i.dx, align 8, !tbaa !46
  %i.xx = fsub nsz double %i.xw, %i.xt
  %i.xy = load double, ptr %i.eh, align 8, !tbaa !47
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.xj, ptr noundef nonnull @.str.101, ptr noundef %i.xr, i32 noundef %i.xs, double noundef %i.xu, double noundef %i.xv, double noundef %i.xx, ptr noundef nonnull @.str.54, double noundef %i.xy) #14
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.xz = load i32, ptr %i.at, align 8, !tbaa !50 ; 2 uses
  %i.ya = and i32 %i.xz, 2
  %.not424.i = icmp eq i32 %i.ya, 0
  br i1 %.not424.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.yb = load i32, ptr %i.fe, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.yb, ptr noundef nonnull @.str.102) #14
  br i1 %i.dr, label %.lr.ph503.i, label %._crit_edge504.i

._crit_edge504.i:                                 ; preds = %.lr.ph503.i, %bb.br
  %i.yc = load i32, ptr %i.fe, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.yc, ptr noundef nonnull @.str.104) #14
  %.pre605.i = load i32, ptr %i.at, align 8, !tbaa !50
  br label %bb.bs

.lr.ph503.i:                                      ; preds = %bb.br, %.lr.ph503.i
  %indvars.iv581.i = phi i64 [ %indvars.iv.next582.i, %.lr.ph503.i ], [ 0, %bb.br ] ; 2 uses
  %i.yd = load i32, ptr %i.fe, align 8, !tbaa !36
  %i.ye = load ptr, ptr %i.fc, align 8, !tbaa !68
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %indvars.iv581.i
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !10
  %i.yh = call nsz double @llvm.log10.f64(double %i.yg)
  %i.yi = fmul nsz double %i.yh, 2.000000e+01
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.yd, ptr noundef nonnull @.str.103, double noundef %i.yi) #14
  %indvars.iv.next582.i = add nuw nsw i64 %indvars.iv581.i, 1 ; 2 uses
  %exitcond585.not.i = icmp eq i64 %indvars.iv.next582.i, %wide.trip.count542.i
  br i1 %exitcond585.not.i, label %._crit_edge504.i, label %.lr.ph503.i, !llvm.loop !131

bb.bs:                                            ; preds = %._crit_edge504.i, %bb.bq
  %i.yj = phi i32 [ %i.xz, %bb.bq ], [ %.pre605.i, %._crit_edge504.i ]
  %i.yk = and i32 %i.yj, 4
  %.not425.i = icmp eq i32 %i.yk, 0
  br i1 %.not425.i, label %.split.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.yl = load i32, ptr %i.fe, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.yl, ptr noundef nonnull @.str.105) #14
  br i1 %i.dr, label %.lr.ph507.i, label %.loopexit633.i

.lr.ph507.i:                                      ; preds = %bb.bt, %.lr.ph507.i
  %indvars.iv586.i = phi i64 [ %indvars.iv.next587.i, %.lr.ph507.i ], [ 0, %bb.bt ] ; 2 uses
  %i.ym = load i32, ptr %i.fe, align 8, !tbaa !36
  %i.yn = load ptr, ptr %i.ff, align 8, !tbaa !66
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv586.i
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !10
  %i.yq = call nsz double @llvm.log10.f64(double %i.yp)
  %i.yr = fmul nsz double %i.yq, 2.000000e+01
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.ym, ptr noundef nonnull @.str.103, double noundef %i.yr) #14
  %indvars.iv.next587.i = add nuw nsw i64 %indvars.iv586.i, 1 ; 2 uses
  %exitcond590.not.i = icmp eq i64 %indvars.iv.next587.i, %wide.trip.count542.i
  br i1 %exitcond590.not.i, label %.loopexit633.i, label %.lr.ph507.i, !llvm.loop !132

.loopexit633.i:                                   ; preds = %.lr.ph507.i, %bb.bt
  %i.ys = load i32, ptr %i.fe, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.ys, ptr noundef nonnull @.str.104) #14
  %.pre606.i = load i32, ptr %i.at, align 8, !tbaa !50
  %.pre607.i = and i32 %.pre606.i, 4
  %i.yt = icmp eq i32 %.pre607.i, 0
  br i1 %i.yt, label %.split.i, label %bb.bu

bb.bu:                                            ; preds = %.loopexit633.i
  %i.yu = load i32, ptr %i.fe, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.yu, ptr noundef nonnull @.str.106) #14
  br i1 %i.dr, label %.lr.ph511.i, label %._crit_edge512.i

._crit_edge512.i:                                 ; preds = %.lr.ph511.i, %bb.bu
  %i.yv = load i32, ptr %i.fe, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.yv, ptr noundef nonnull @.str.104) #14
  br label %.split.i

.lr.ph511.i:                                      ; preds = %bb.bu, %.lr.ph511.i
  %indvars.iv591.i = phi i64 [ %indvars.iv.next592.i, %.lr.ph511.i ], [ 0, %bb.bu ] ; 2 uses
  %i.yw = load i32, ptr %i.fe, align 8, !tbaa !36
  %i.yx = load ptr, ptr %i.fd, align 8, !tbaa !67
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv591.i
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !10
  %i.za = call nsz double @llvm.log10.f64(double %i.yz)
  %i.zb = fmul nsz double %i.za, 2.000000e+01
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.yw, ptr noundef nonnull @.str.103, double noundef %i.zb) #14
  %indvars.iv.next592.i = add nuw nsw i64 %indvars.iv591.i, 1 ; 2 uses
  %exitcond595.not.i = icmp eq i64 %indvars.iv.next592.i, %wide.trip.count542.i
  br i1 %exitcond595.not.i, label %._crit_edge512.i, label %.lr.ph511.i, !llvm.loop !133

.split.i:                                         ; preds = %._crit_edge512.i, %.loopexit633.i, %bb.bs
  %i.zc = load i32, ptr %i.fe, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ak, i32 noundef %i.zc, ptr noundef nonnull @.str.88) #14
  br label %.thread.i

.thread.i:                                        ; preds = %.split.i, %bb.bm, %bb.x
  %i.zd = phi ptr [ %i.fk, %bb.x ], [ %i.xi, %bb.bm ], [ %i.xi, %.split.i ] ; 2 uses
  %indvars.iv.next597.i = add nsw i64 %indvars.iv596.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next597.i to i32
  %exitcond599.not.i = icmp eq i32 %i.ar, %lftr.wideiv.i
  br i1 %exitcond599.not.i, label %.thread441.i, label %bb.t, !llvm.loop !134

.thread441.i:                                     ; preds = %.thread.i, %bb.s
  %i.ze = phi ptr [ %i.ai, %bb.s ], [ %i.zd, %.thread.i ]
  store i32 0, ptr %i.da, align 8, !tbaa !147
  %i.zf = getelementptr inbounds nuw i8, ptr %i.am, i64 320
  store ptr null, ptr %i.zf, align 8, !tbaa !140
  %i.zg = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !139
  %i.zi = getelementptr inbounds nuw i8, ptr %i.am, i64 188
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !37
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [8 x i8], ptr %i.zh, i64 %i.zk
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !138
  %i.zn = call i32 @ff_filter_frame(ptr noundef %i.zm, ptr noundef %i.ze) #14
  br label %filter_frame.exit

filter_frame.exit:                                ; preds = %bb.bf, %bb.n, %.thread437.i, %.split440.i, %.thread441.i
  %.8.i = phi i32 [ %i.zn, %.thread441.i ], [ %i.bd, %bb.n ], [ %i.qt, %.thread437.i ], [ %i.vp, %.split440.i ], [ -12, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.l, %filter_frame.exit
  %.249 = phi i32 [ %.8.i, %filter_frame.exit ], [ %.047, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  %i.zo = call i32 @ff_inlink_acknowledge_status(ptr noundef %i.l, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #14
  %.not63 = icmp eq i32 %i.zo, 0
  br i1 %.not63, label %.thread73, label %.preheader

.preheader:                                       ; preds = %bb.bv
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !165
  %.not91 = icmp eq i32 %i.zq, 0
  br i1 %.not91, label %._crit_edge, label %.lr.ph

.thread73:                                        ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  %i.zr = call i32 @ff_outlink_frame_wanted(ptr noundef %i.v) #14
  %.not64 = icmp eq i32 %i.zr, 0
  br i1 %.not64, label %bb.bx, label %bb.bw

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.zs = load ptr, ptr %i.o, align 8, !tbaa !139
  %i.zt = getelementptr inbounds nuw [8 x i8], ptr %i.zs, i64 %indvars.iv
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !138
  %i.zv = load i32, ptr %i.h, align 4, !tbaa !42
  %i.zw = load i64, ptr %i.i, align 8, !tbaa !93
  call void @ff_avfilter_link_set_in_status(ptr noundef %i.zu, i32 noundef %i.zv, i64 noundef %i.zw) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.zx = load i32, ptr %i.zp, align 8, !tbaa !165
  %i.zy = zext i32 %i.zx to i64
  %i.zz = icmp samesign ult i64 %indvars.iv.next, %i.zy
  br i1 %i.zz, label %.lr.ph, label %._crit_edge, !llvm.loop !135

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  br label %bb.ca

bb.bw:                                            ; preds = %.thread73
  call void @ff_inlink_request_frame(ptr noundef %i.l) #14
  br label %bb.ca

bb.bx:                                            ; preds = %.thread73
  %i.aaa = load i32, ptr %i.r, align 4, !tbaa !37
  %.not65 = icmp eq i32 %i.aaa, 0
  br i1 %.not65, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.aab = call i32 @ff_outlink_frame_wanted(ptr noundef %i.q) #14
  %.not66 = icmp eq i32 %i.aab, 0
  br i1 %.not66, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @ff_inlink_request_frame(ptr noundef %i.l) #14
  br label %bb.ca

bb.ca:                                            ; preds = %._crit_edge, %bb.k, %bb.d, %bb.b, %bb.bx, %bb.by, %bb.bz, %bb.bw
  %.6 = phi i32 [ 0, %bb.bw ], [ 0, %bb.bz ], [ 0, %bb.b ], [ 0, %._crit_edge ], [ %.047, %bb.k ], [ 0, %bb.d ], [ %.249, %bb.by ], [ %.249, %bb.bx ]
  ret i32 %.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @config_audio_input(ptr nofree noundef readonly captures(none) %0) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !75   ; 3 uses
  %i.g = sitofp nsz i32 %i.f to double            ; 2 uses
  %i.h = fdiv nsz double f0x40B4A4141DBAF1BA, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.k = tail call nsz double @llvm.tan.f64(double %i.h)
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.n = fmul nsz <2 x double> %i.m, <double f0x3FF423B88EE23B99, double 1.000000e+00>
  %i.o = fdiv nsz <2 x double> %i.n, splat (double f0x3FE6A12DF668776C) ; 2 uses
  %i.p = fadd nsz <2 x double> %i.o, <double f0x3FF95B9B16BF11C6, double 1.000000e+00> ; 2 uses
  %1 = shufflevector <2 x double> <double poison, double f0xBFF95B9B16BF11C6>, <2 x double> %i.p, <2 x i32> <i32 3, i32 1>
  %i.q = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.m, <2 x double> %1) ; 3 uses
  %i.r = extractelement <2 x double> %i.q, i64 0
  %2 = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %3 = insertelement <2 x double> %i.p, double -1.000000e+00, i64 1
  %4 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.m, <2 x double> %3) ; 2 uses
  %5 = shufflevector <2 x double> %i.q, <2 x double> %4, <2 x i32> <i32 1, i32 3>
  %6 = fmul nsz <2 x double> %5, splat (double 2.000000e+00) ; 2 uses
  %7 = shufflevector <2 x double> %4, <2 x double> %6, <2 x i32> <i32 0, i32 2>
  %8 = fdiv nsz <2 x double> %7, %2
  store <2 x double> %8, ptr %i.i, align 8, !tbaa !10
  %9 = fsub nsz <2 x double> <double f0x3FF95B9B16BF11C6, double 1.000000e+00>, %i.o
  %10 = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.m, <2 x double> %9) ; 2 uses
  %11 = shufflevector <2 x double> %10, <2 x double> %6, <2 x i32> <i32 0, i32 3>
  %12 = fdiv nsz <2 x double> %11, %2
  store <2 x double> %12, ptr %i.j, align 8, !tbaa !10
  %13 = extractelement <2 x double> %10, i64 1
  %14 = fdiv nsz double %13, %i.r
  %15 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store double %14, ptr %15, align 8, !tbaa !166
  %i.s = fdiv nsz double f0x405DF39763FA798B, %i.g
  %i.t = tail call nsz double @llvm.tan.f64(double %i.s) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <2 x double> <double 1.000000e+00, double -2.000000e+00>, ptr %i.u, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store double 1.000000e+00, ptr %i.v, align 8, !tbaa !167
  %i.w = fdiv nsz double %i.t, f0x3FE002ADD8D38A3C ; 2 uses
  %i.x = fadd nsz double %i.w, 1.000000e+00
  %i.y = tail call nsz double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.aa = fsub nsz double 1.000000e+00, %i.w
  %i.ab = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ad = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.aa, i64 1
  %i.ae = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ac, <2 x double> %i.ad)
  %i.af = fmul nsz <2 x double> %i.ae, <double 2.000000e+00, double 1.000000e+00>
  %i.ag = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv nsz <2 x double> %i.af, %i.ah
  store <2 x double> %i.ai, ptr %i.z, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 492
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !38
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.am = load i32, ptr %i.al, align 8, !tbaa !50
  %i.an = and i32 %i.am, 4
  %.not67 = icmp eq i32 %i.an, 0
  br i1 %.not67, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ao = icmp sgt i32 %i.f, 19
  %i.ap = sdiv i32 %i.f, 10
  %i.aq = select i1 %i.ao, i32 %i.ap, i32 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.tan.f64(double) #7

declare ptr @av_default_item_name(ptr noundef) #8

; Function Attrs: nounwind uwtable
define internal fastcc noalias ptr @get_histogram() unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias ptr @av_calloc(i64 noundef 8001, i64 noundef 24) #14 ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %vector.body

vector.body:                                      ; preds = %bb.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.a ] ; 3 uses
  %vec.ind = phi <2 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1>, %bb.a ] ; 2 uses
  %i.b = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.c = fdiv nsz <2 x double> %i.b, splat (double 1.000000e+02)
  %i.d = fadd nsz <2 x double> %i.c, splat (double -7.000000e+01) ; 3 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %index
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = extractelement <2 x double> %i.d, i64 0
  store double %i.h, ptr %i.g, align 8, !tbaa !79
  %i.i = fadd nsz <2 x double> %i.d, splat (double 6.910000e-01)
  %i.j = fdiv nsz <2 x double> %i.i, splat (double 1.000000e+01)
  %i.k = fmul nsz <2 x double> %i.j, splat (double f0x400A934F0979A371)
  %i.l = tail call nsz <2 x double> @llvm.exp2.v2f64(<2 x double> %i.k) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = extractelement <2 x double> %i.l, i64 0
  store double %i.o, ptr %i.m, align 8, !tbaa !78
  %i.p = shufflevector <2 x double> %i.l, <2 x double> %i.d, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.p, ptr %i.n, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.q = icmp eq i64 %index.next, 8000
  br i1 %i.q, label %.preheader, label %vector.body, !llvm.loop !168

.preheader:                                       ; preds = %vector.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 192016
  store double 1.000000e+01, ptr %i.r, align 8, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 192008
  store double f0x40277305B959834B, ptr %i.s, align 8, !tbaa !78
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_video_output(ptr noundef %0) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 196 ; 4 uses
  %.pre240 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !182 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !183  ; 2 uses
  %i.f = icmp slt i32 %i.e, 640
  %i.g = icmp slt i32 %.pre240, 480
  %or.cond = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond, label %._crit_edge239, label %bb.b

._crit_edge239:                                   ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.a, i32 noundef 16, ptr noundef nonnull @.str.71, i32 noundef %i.e, i32 noundef %.pre240) #14
  br label %drawline.exit209

bb.b:                                             ; preds = %bb.a
  %i.h = load <2 x i32>, ptr %i.d, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.k = shufflevector <2 x i32> %i.h, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.l = shufflevector <4 x i32> %i.k, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.l, ptr %i.i, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 4294967306, ptr %i.m, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 42949672961, ptr %i.n, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store i32 8, ptr %i.o, align 8, !tbaa !184
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store i32 40, ptr %i.p, align 4, !tbaa !185
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store i32 24, ptr %i.q, align 8, !tbaa !186
  %i.r = load i32, ptr %.phi.trans.insert, align 4, !tbaa !182
  %i.s = add nsw i32 %i.r, -48                    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store i32 %i.s, ptr %i.t, align 4, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 4 uses
  store i32 20, ptr %i.v, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 244 ; 4 uses
  store i32 %i.s, ptr %i.w, align 4, !tbaa !89
  %i.x = load i32, ptr %i.d, align 8, !tbaa !183  ; 2 uses
  %i.y = add nsw i32 %i.x, -28
  store i32 %i.y, ptr %i.u, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 236 ; 5 uses
  store i32 40, ptr %i.z, align 4, !tbaa !90
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 6 uses
  store i32 40, ptr %i.aa, align 8, !tbaa !83
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 220 ; 7 uses
  store i32 40, ptr %i.ab, align 4, !tbaa !82
  %i.ac = add nsw i32 %i.x, -76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 6 uses
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 228 ; 8 uses
  store i32 %i.s, ptr %i.ae, align 4, !tbaa !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  tail call void @av_frame_free(ptr noundef nonnull %i.af) #14
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !188
  %i.ah = load i32, ptr %i.j, align 4, !tbaa !189
  %i.ai = tail call ptr @ff_get_video_buffer(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %i.ah) #14 ; 18 uses
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !81
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %drawline.exit209, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 124
  store i32 1, ptr %i.aj, align 4, !tbaa !42
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !42
  %i.ak = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.al = add nsw i32 %i.ak, 1
  %i.am = sext i32 %i.al to i64
  %i.an = tail call noalias ptr @av_calloc(i64 noundef %i.am, i64 noundef 4) #14 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 3 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !86
  %.not155 = icmp eq ptr %i.an, null
  br i1 %.not155, label %drawline.exit209, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ap = load i32, ptr %.phi.trans.insert, align 4, !tbaa !182
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.preheader
  tail call void (ptr, i32, i32, i32, ptr, ptr, ...) @drawtext(ptr noundef nonnull %i.ai, i32 noundef 8, i32 noundef 24, i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @font_colors, i64 3), ptr noundef nonnull @.str.75)
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !39 ; 5 uses
  %.neg214 = mul i32 %i.at, -2
  %.not156215 = icmp slt i32 %i.at, %.neg214
  br i1 %.not156215, label %._crit_edge219, label %.lr.ph218

.lr.ph218:                                        ; preds = %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
end_hunk_0
begin_hunk_1_@drawtext:bb.a
  %i.ac = load i8, ptr %gep, align 1, !tbaa !197
  %i.ad = and i8 %i.ac, 16
  %.not33.3 = icmp eq i8 %i.ad, 0
  br i1 %.not33.3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ab, i8 0, i64 3, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %.037, i64 12 ; 2 uses
  %i.af = load i8, ptr %gep, align 1, !tbaa !197
  %i.ag = and i8 %i.af, 8
  %.not33.4 = icmp eq i8 %i.ag, 0
  br i1 %.not33.4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ae, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ae, i8 0, i64 3, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %.037, i64 15 ; 2 uses
  %i.ai = load i8, ptr %gep, align 1, !tbaa !197
  %i.aj = and i8 %i.ai, 4
  %.not33.5 = icmp eq i8 %i.aj, 0
  br i1 %.not33.5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ah, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ah, i8 0, i64 3, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %.037, i64 18 ; 2 uses
  %i.al = load i8, ptr %gep, align 1, !tbaa !197
  %i.am = and i8 %i.al, 2
  %.not33.6 = icmp eq i8 %i.am, 0
  br i1 %.not33.6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ak, i8 0, i64 3, i1 false)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.an = getelementptr inbounds nuw i8, ptr %.037, i64 21 ; 2 uses
  %i.ao = load i8, ptr %gep, align 1, !tbaa !197
  %i.ap = and i8 %i.ao, 1
  %.not33.7 = icmp eq i8 %i.ap, 0
  br i1 %.not33.7, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, ptr noundef nonnull align 1 dereferenceable(3) %4, i64 3, i1 false)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.an, i8 0, i64 3, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.aq = load i32, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr i8, ptr %.037, i64 %i.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.ad, label %.preheader, !llvm.loop !195

bb.ad:                                            ; preds = %bb.ac
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next42
  %i.au = load i8, ptr %i.at, align 1, !tbaa !197 ; 2 uses
  %.not31 = icmp eq i8 %i.au, 0
  br i1 %.not31, label %._crit_edge, label %bb.e, !llvm.loop !196

._crit_edge:                                      ; preds = %bb.ad, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare ptr @avpriv_vga16_font_get() local_unnamed_addr #8

declare ptr @avpriv_cga_font_get() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #10

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #10

declare i32 @av_size_mult(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @av_channel_layout_channel_from_index(ptr noundef, i32 noundef) local_unnamed_addr #8

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #8

declare ptr @swr_alloc() local_unnamed_addr #8

declare i32 @av_opt_set_chlayout(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @av_opt_set_int(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @av_opt_set_sample_fmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

declare i32 @swr_init(ptr noundef) local_unnamed_addr #8

declare void @av_freep(ptr noundef) local_unnamed_addr #8

declare void @swr_free(ptr noundef) local_unnamed_addr #8

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #8

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @ff_make_sample_format_list(ptr noundef) local_unnamed_addr #8

declare i32 @ff_outlink_get_status(ptr noundef) local_unnamed_addr #8

declare void @ff_inlink_set_status(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @ff_inlink_consume_samples(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare i32 @ff_inlink_consume_frame(ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @ff_inlink_acknowledge_status(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i32 @ff_outlink_frame_wanted(ptr noundef) local_unnamed_addr #8

declare void @ff_inlink_request_frame(ptr noundef) local_unnamed_addr #8

declare i32 @swr_convert(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #12

declare i32 @ff_inlink_make_frame_writable(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @av_frame_clone(ptr noundef) local_unnamed_addr #8

declare void @ff_filter_set_ready(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #2

declare ptr @av_ts_make_time_string2(ptr noundef, i64 noundef, i64) local_unnamed_addr #8

declare void @ff_avfilter_link_set_in_status(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.exp2.v2f64(<2 x double>) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }

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
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"EBUR128Biquad", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 double", !12, i64 0}
!14 = !{!"EBUR128DSPContext", !11, i64 0, !11, i64 40, !13, i64 80, !13, i64 88, !12, i64 96, !12, i64 104}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!20 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!23 = !{!"any p2 pointer", !12, i64 0}
!24 = !{!"p2 _ZTS12AVFilterLink", !23, i64 0}
!25 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!26 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!27 = !{!"AVFilterContext", !19, i64 0, !20, i64 8, !21, i64 16, !22, i64 24, !24, i64 32, !6, i64 40, !22, i64 48, !24, i64 56, !6, i64 64, !12, i64 72, !25, i64 80, !6, i64 88, !6, i64 92, !21, i64 96, !6, i64 104, !26, i64 112, !6, i64 120}
!28 = !{!27, !12, i64 72}
!29 = !{!"p1 _ZTS10SwrContext", !12, i64 0}
!30 = !{!"rect", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!31 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!32 = !{!"p1 int", !12, i64 0}
!33 = !{!"p1 _ZTS10hist_entry", !12, i64 0}
!34 = !{!"integrator", !13, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !9, i64 32, !9, i64 40, !6, i64 48, !33, i64 56}
!35 = !{!"EBUR128Context", !19, i64 0, !14, i64 8, !6, i64 120, !9, i64 128, !13, i64 136, !9, i64 144, !13, i64 152, !13, i64 160, !29, i64 168, !13, i64 176, !6, i64 184, !6, i64 188, !6, i64 192, !6, i64 196, !30, i64 200, !30, i64 216, !30, i64 232, !31, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !32, i64 280, !6, i64 288, !13, i64 296, !6, i64 304, !6, i64 308, !6, i64 312, !31, i64 320, !34, i64 328, !34, i64 392, !9, i64 456, !9, i64 464, !9, i64 472, !9, i64 480, !6, i64 488, !6, i64 492, !6, i64 496, !9, i64 504, !6, i64 512, !6, i64 516, !6, i64 520}
!36 = !{!35, !6, i64 488}
!37 = !{!35, !6, i64 188}
!38 = !{!35, !6, i64 492}
!39 = !{!35, !6, i64 256}
!40 = !{!35, !6, i64 260}
!41 = !{!21, !21, i64 0}
!42 = !{!6, !6, i64 0}
!43 = !{!35, !6, i64 288}
!44 = !{!35, !6, i64 496}
!45 = !{!35, !9, i64 504}
!46 = !{!35, !9, i64 456}
!47 = !{!35, !9, i64 464}
!48 = !{!35, !9, i64 472}
!49 = !{!35, !9, i64 480}
!50 = !{!35, !6, i64 120}
!51 = !{!35, !9, i64 144}
!52 = !{!35, !9, i64 128}
!53 = !{!35, !6, i64 308}
!54 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!55 = !{!"AVRational", !6, i64 0, !6, i64 4}
!56 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !12, i64 16}
!57 = !{!"p2 _ZTS15AVFrameSideData", !23, i64 0}
!58 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!59 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!60 = !{!"AVFilterFormatsConfig", !58, i64 0, !58, i64 8, !59, i64 16, !58, i64 24, !58, i64 32, !58, i64 40}
!61 = !{!"AVFilterLink", !54, i64 0, !22, i64 8, !54, i64 16, !22, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !55, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !56, i64 72, !55, i64 96, !57, i64 104, !6, i64 112, !6, i64 116, !60, i64 120, !60, i64 168}
!62 = !{!61, !54, i64 16}
!63 = !{!"long", !5, i64 0}
!64 = !{!35, !13, i64 176}
!65 = !{!35, !29, i64 168}
!66 = !{!35, !13, i64 160}
!67 = !{!35, !13, i64 136}
!68 = !{!35, !13, i64 152}
!69 = !{!35, !6, i64 340}
!70 = !{!35, !6, i64 404}
!71 = !{!35, !13, i64 328}
!72 = !{!35, !13, i64 392}
!73 = !{!35, !13, i64 344}
!74 = !{!35, !13, i64 408}
!75 = !{!61, !6, i64 64}
!76 = !{!35, !13, i64 296}
!77 = !{!"hist_entry", !6, i64 0, !9, i64 8, !9, i64 16}
!78 = !{!77, !9, i64 8}
!79 = !{!77, !9, i64 16}
!80 = !{!35, !6, i64 228}
!81 = !{!35, !31, i64 248}
!82 = !{!35, !6, i64 220}
!83 = !{!35, !6, i64 216}
!84 = !{!35, !6, i64 268}
!85 = !{!35, !6, i64 272}
!86 = !{!35, !32, i64 280}
!87 = !{!35, !6, i64 264}
!88 = !{!35, !6, i64 224}
!89 = !{!35, !6, i64 244}
!90 = !{!35, !6, i64 236}
!91 = !{!35, !6, i64 232}
!92 = !{!35, !6, i64 240}
!93 = !{!63, !63, i64 0}
!94 = !{!61, !54, i64 0}
!95 = distinct !{!95, i1 false, !"LVerDomain"}
!96 = distinct !{!96, !95}
!97 = distinct !{!97, !95}
!98 = distinct !{!98, !15, !16, !17}
!99 = distinct !{!99, !15, !16}
!100 = !{!14, !13, i64 80}
!101 = !{!14, !13, i64 88}
!102 = !{!96}
!103 = !{!97}
!104 = distinct !{!104, !15}
!105 = distinct !{!105, !15}
!106 = distinct !{!106, !18}
!107 = !{!35, !33, i64 384}
!108 = !{!35, !33, i64 448}
!109 = !{!12, !12, i64 0}
!110 = !{!35, !12, i64 104}
!111 = !{!35, !12, i64 112}
!112 = !{!35, !9, i64 360}
!113 = !{!35, !9, i64 424}
!114 = !{!"p1 _ZTS21AVFilterFormatsConfig", !12, i64 0}
!115 = !{!114, !114, i64 0}
!116 = distinct !{null}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !18}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !18}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = distinct !{!132, !15}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !15}
!135 = distinct !{!135, !15}
!136 = !{!27, !24, i64 32}
!137 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!138 = !{!137, !137, i64 0}
!139 = !{!27, !24, i64 56}
!140 = !{!35, !31, i64 320}
!141 = !{!31, !31, i64 0}
!142 = !{!"p2 omnipotent char", !23, i64 0}
!143 = !{!"p2 _ZTS11AVBufferRef", !23, i64 0}
!144 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!145 = !{!"AVFrame", !5, i64 0, !5, i64 64, !142, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !55, i64 124, !63, i64 136, !63, i64 144, !55, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !143, i64 248, !6, i64 256, !57, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !63, i64 304, !144, i64 312, !6, i64 320, !26, i64 328, !26, i64 336, !63, i64 344, !63, i64 352, !63, i64 360, !63, i64 368, !12, i64 376, !56, i64 384, !63, i64 408, !6, i64 416}
!146 = !{!145, !6, i64 112}
!147 = !{!35, !6, i64 312}
!148 = !{!14, !12, i64 104}
!149 = !{!35, !6, i64 336}
!150 = !{!35, !6, i64 400}
!151 = !{!35, !6, i64 352}
!152 = !{!35, !6, i64 416}
!153 = !{!14, !12, i64 96}
!154 = !{!35, !6, i64 304}
!155 = !{!145, !63, i64 136}
!156 = !{!34, !33, i64 56}
!157 = !{!77, !6, i64 0}
!158 = !{!34, !9, i64 40}
!159 = !{!34, !6, i64 48}
!160 = !{!34, !9, i64 32}
!161 = !{!35, !6, i64 516}
!162 = !{!35, !6, i64 512}
!163 = !{!35, !6, i64 520}
!164 = !{!145, !63, i64 408}
!165 = !{!27, !6, i64 64}
!166 = !{!35, !9, i64 40}
!167 = !{!35, !9, i64 64}
!168 = distinct !{!168, !15, !16, !17}
!169 = distinct !{!169, !15}
!170 = distinct !{!170, !15}
!171 = distinct !{!171, !15}
!172 = distinct !{!172, !15}
!173 = distinct !{!173, !15}
!174 = distinct !{!174, !18}
!175 = distinct !{!175, !18}
!176 = distinct !{!176, !18}
!177 = distinct !{!177, !18}
!178 = distinct !{!178, !18}
!179 = distinct !{!179, !18}
!180 = distinct !{!180, !18}
!181 = distinct !{!181, !18}
!182 = !{!35, !6, i64 196}
!183 = !{!35, !6, i64 192}
!184 = !{!35, !6, i64 200}
!185 = !{!35, !6, i64 204}
!186 = !{!35, !6, i64 208}
!187 = !{!35, !6, i64 212}
!188 = !{!61, !6, i64 40}
!189 = !{!61, !6, i64 44}
!190 = distinct !{!190, !15}
!191 = !{!61, !6, i64 76}
!192 = !{!35, !13, i64 88}
!193 = !{!35, !13, i64 96}
!194 = !{!61, !6, i64 36}
!195 = distinct !{!195, !15}
!196 = distinct !{!196, !15}
!197 = !{!5, !5, i64 0}
end_hunk_1
