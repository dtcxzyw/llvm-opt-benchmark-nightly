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
  %i.i = tail call nsz double @llvm.tan.f64(double %i.h) ; 2 uses
  %i.j = insertelement <2 x double> poison, double %i.i, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.l = fmul nsz <2 x double> %i.k, <double f0x3FF423B88EE23B99, double 1.000000e+00>
  %i.m = fdiv nsz <2 x double> %i.l, splat (double f0x3FE6A12DF668776C) ; 2 uses
  %i.n = fadd nsz <2 x double> %i.m, <double f0x3FF95B9B16BF11C6, double 1.000000e+00>
  %i.o = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.k, <2 x double> %i.n) ; 3 uses
  %i.p = extractelement <2 x double> %i.o, i64 0
  %i.q = extractelement <2 x double> %i.o, i64 1
  %i.r = fdiv nsz double %i.p, %i.q
  %1 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store double %i.r, ptr %1, align 8, !tbaa !166
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.s = fsub nsz <2 x double> <double f0x3FF95B9B16BF11C6, double 1.000000e+00>, %i.m
  %i.t = insertelement <4 x double> poison, double %i.i, i64 0
  %i.u = shufflevector <4 x double> %i.t, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.v = shufflevector <2 x double> %i.s, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %i.w = shufflevector <4 x double> <double f0xBFF95B9B16BF11C6, double poison, double -1.000000e+00, double poison>, <4 x double> %i.v, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.x = tail call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.u, <4 x double> %i.u, <4 x double> %i.w)
  %i.y = fmul nsz <4 x double> %i.x, <double 2.000000e+00, double 1.000000e+00, double 2.000000e+00, double 1.000000e+00>
  %i.z = shufflevector <2 x double> %i.o, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aa = fdiv nsz <4 x double> %i.y, %i.z        ; 2 uses
  %i.ab = shufflevector <4 x double> %i.aa, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.ab, ptr %2, align 8, !tbaa !10
  %i.ac = shufflevector <4 x double> %i.aa, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.ac, ptr %3, align 8, !tbaa !10
  %i.ad = fdiv nsz double f0x405DF39763FA798B, %i.g
  %i.ae = tail call nsz double @llvm.tan.f64(double %i.ad) ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store <2 x double> <double 1.000000e+00, double -2.000000e+00>, ptr %i.af, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !167
  %i.ah = fdiv nsz double %i.ae, f0x3FE002ADD8D38A3C ; 2 uses
  %i.ai = fadd nsz double %i.ah, 1.000000e+00
  %i.aj = tail call nsz double @llvm.fmuladd.f64(double %i.ae, double %i.ae, double %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.al = fsub nsz double 1.000000e+00, %i.ah
  %i.am = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = insertelement <2 x double> <double -1.000000e+00, double poison>, double %i.al, i64 1
  %i.ap = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.an, <2 x double> %i.ao)
  %i.aq = fmul nsz <2 x double> %i.ap, <double 2.000000e+00, double 1.000000e+00>
  %i.ar = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fdiv nsz <2 x double> %i.aq, %i.as
  store <2 x double> %i.at, ptr %i.ak, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 492
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !50
  %i.ay = and i32 %i.ax, 4
  %.not67 = icmp eq i32 %i.ay, 0
  br i1 %.not67, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.az = icmp sgt i32 %i.f, 19
  %i.ba = sdiv i32 %i.f, 10
  %i.bb = select i1 %i.az, i32 %i.ba, i32 1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 308
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !53
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

end_hunk_0
