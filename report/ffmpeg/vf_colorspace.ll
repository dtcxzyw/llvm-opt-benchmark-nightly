Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorspace?download=true
inline.NumInlined: 10
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 21
begin_hunk_0_@convert:bb.a

._crit_edge22.i103:                               ; preds = %._crit_edge.i101
  %i.id = load ptr, ptr %i.ca, align 8, !tbaa !53
  %xtraiter153 = and i64 %wide.trip.count.i92, 1
  %i.ie = icmp eq i64 %i.gx, 0
  %unroll_iter156 = and i64 %wide.trip.count.i92, 2147483646
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  %lcmp.mod155 = trunc i32 %i.r to i1
  br label %.preheader.1.i104

.preheader.1.i104:                                ; preds = %._crit_edge.1.i112, %._crit_edge22.i103
  %.021.1.i105 = phi ptr [ %i.id, %._crit_edge22.i103 ], [ %i.jh, %._crit_edge.1.i112 ] ; 4 uses
  %.01820.1.i106 = phi i32 [ 0, %._crit_edge22.i103 ], [ %i.ji, %._crit_edge.1.i112 ]
  br i1 %i.ie, label %.epil.preheader152, label %.preheader.1.i104.new

.preheader.1.i104.new:                            ; preds = %.preheader.1.i104, %.preheader.1.i104.new
  %indvars.iv.1.i107 = phi i64 [ %indvars.iv.next.1.i110.1, %.preheader.1.i104.new ], [ 0, %.preheader.1.i104 ] ; 3 uses
  %niter157 = phi i64 [ %niter157.next.1, %.preheader.1.i104.new ], [ 0, %.preheader.1.i104 ]
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %.021.1.i105, i64 %indvars.iv.1.i107 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !61 ; 2 uses
  %i.ih = sext i16 %i.ig to i32
  %i.ii = add nsw i32 %i.ih, 2048                 ; 2 uses
  %i.ij = icmp ugt i32 %i.ii, 32767
  %isnotneg.inv.i.1.i108 = icmp slt i16 %i.ig, -2048
  %i.ik = select i1 %isnotneg.inv.i.1.i108, i32 0, i32 32767
  %.0.i.1.i109 = select i1 %i.ij, i32 %i.ik, i32 %i.ii
  %i.il = zext i32 %.0.i.1.i109 to i64
  %i.im = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.il
  %i.in = load i16, ptr %i.im, align 2, !tbaa !61
  store i16 %i.in, ptr %i.if, align 2, !tbaa !61
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %.021.1.i105, i64 %indvars.iv.1.i107
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 2 ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !61 ; 2 uses
  %i.ir = sext i16 %i.iq to i32
  %i.is = add nsw i32 %i.ir, 2048                 ; 2 uses
  %i.it = icmp ugt i32 %i.is, 32767
  %isnotneg.inv.i.1.i108.1 = icmp slt i16 %i.iq, -2048
  %i.iu = select i1 %isnotneg.inv.i.1.i108.1, i32 0, i32 32767
  %.0.i.1.i109.1 = select i1 %i.it, i32 %i.iu, i32 %i.is
  %i.iv = zext i32 %.0.i.1.i109.1 to i64
  %i.iw = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.iv
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !61
  store i16 %i.ix, ptr %i.ip, align 2, !tbaa !61
  %indvars.iv.next.1.i110.1 = add nuw nsw i64 %indvars.iv.1.i107, 2 ; 2 uses
  %niter157.next.1 = add i64 %niter157, 2         ; 2 uses
  %niter157.ncmp.1 = icmp eq i64 %niter157.next.1, %unroll_iter156
  br i1 %niter157.ncmp.1, label %._crit_edge.1.i112.unr-lcssa, label %.preheader.1.i104.new, !llvm.loop !119

._crit_edge.1.i112.unr-lcssa:                     ; preds = %.preheader.1.i104.new
  br i1 %lcmp.mod154.not, label %._crit_edge.1.i112, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge.1.i112.unr-lcssa, %.preheader.1.i104
  %indvars.iv.1.i107.epil.init = phi i64 [ 0, %.preheader.1.i104 ], [ %indvars.iv.next.1.i110.1, %._crit_edge.1.i112.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod155)
  %i.iy = getelementptr inbounds nuw [2 x i8], ptr %.021.1.i105, i64 %indvars.iv.1.i107.epil.init ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !61 ; 2 uses
  %i.ja = sext i16 %i.iz to i32
  %i.jb = add nsw i32 %i.ja, 2048                 ; 2 uses
  %i.jc = icmp ugt i32 %i.jb, 32767
  %isnotneg.inv.i.1.i108.epil = icmp slt i16 %i.iz, -2048
  %i.jd = select i1 %isnotneg.inv.i.1.i108.epil, i32 0, i32 32767
  %.0.i.1.i109.epil = select i1 %i.jc, i32 %i.jd, i32 %i.jb
  %i.je = zext i32 %.0.i.1.i109.epil to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !61
  store i16 %i.jg, ptr %i.iy, align 2, !tbaa !61
  br label %._crit_edge.1.i112

._crit_edge.1.i112:                               ; preds = %._crit_edge.1.i112.unr-lcssa, %.epil.preheader152
  %i.jh = getelementptr inbounds [2 x i8], ptr %.021.1.i105, i64 %i.gt
  %i.ji = add nuw nsw i32 %.01820.1.i106, 1       ; 2 uses
  %exitcond28.1.not.i113 = icmp eq i32 %i.ji, %i.t
  br i1 %exitcond28.1.not.i113, label %._crit_edge22.1.i114, label %.preheader.1.i104, !llvm.loop !120

._crit_edge22.1.i114:                             ; preds = %._crit_edge.1.i112
  %i.jj = load ptr, ptr %i.ce, align 16, !tbaa !53
  %xtraiter159 = and i64 %wide.trip.count.i92, 1
  %i.jk = icmp eq i64 %i.gx, 0
  %unroll_iter162 = and i64 %wide.trip.count.i92, 2147483646
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  %lcmp.mod161 = trunc i32 %i.r to i1
  br label %.preheader.2.i115

.preheader.2.i115:                                ; preds = %._crit_edge.2.i123, %._crit_edge22.1.i114
  %.021.2.i116 = phi ptr [ %i.jj, %._crit_edge22.1.i114 ], [ %i.kn, %._crit_edge.2.i123 ] ; 4 uses
  %.01820.2.i117 = phi i32 [ 0, %._crit_edge22.1.i114 ], [ %i.ko, %._crit_edge.2.i123 ]
  br i1 %i.jk, label %.epil.preheader158, label %.preheader.2.i115.new

.preheader.2.i115.new:                            ; preds = %.preheader.2.i115, %.preheader.2.i115.new
  %indvars.iv.2.i118 = phi i64 [ %indvars.iv.next.2.i121.1, %.preheader.2.i115.new ], [ 0, %.preheader.2.i115 ] ; 3 uses
  %niter163 = phi i64 [ %niter163.next.1, %.preheader.2.i115.new ], [ 0, %.preheader.2.i115 ]
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %.021.2.i116, i64 %indvars.iv.2.i118 ; 2 uses
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !61 ; 2 uses
  %i.jn = sext i16 %i.jm to i32
  %i.jo = add nsw i32 %i.jn, 2048                 ; 2 uses
  %i.jp = icmp ugt i32 %i.jo, 32767
  %isnotneg.inv.i.2.i119 = icmp slt i16 %i.jm, -2048
  %i.jq = select i1 %isnotneg.inv.i.2.i119, i32 0, i32 32767
  %.0.i.2.i120 = select i1 %i.jp, i32 %i.jq, i32 %i.jo
  %i.jr = zext i32 %.0.i.2.i120 to i64
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !61
  store i16 %i.jt, ptr %i.jl, align 2, !tbaa !61
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %.021.2.i116, i64 %indvars.iv.2.i118
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2 ; 2 uses
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !61 ; 2 uses
  %i.jx = sext i16 %i.jw to i32
  %i.jy = add nsw i32 %i.jx, 2048                 ; 2 uses
  %i.jz = icmp ugt i32 %i.jy, 32767
  %isnotneg.inv.i.2.i119.1 = icmp slt i16 %i.jw, -2048
  %i.ka = select i1 %isnotneg.inv.i.2.i119.1, i32 0, i32 32767
  %.0.i.2.i120.1 = select i1 %i.jz, i32 %i.ka, i32 %i.jy
  %i.kb = zext i32 %.0.i.2.i120.1 to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !tbaa !61
  store i16 %i.kd, ptr %i.jv, align 2, !tbaa !61
  %indvars.iv.next.2.i121.1 = add nuw nsw i64 %indvars.iv.2.i118, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %._crit_edge.2.i123.unr-lcssa, label %.preheader.2.i115.new, !llvm.loop !119

._crit_edge.2.i123.unr-lcssa:                     ; preds = %.preheader.2.i115.new
  br i1 %lcmp.mod160.not, label %._crit_edge.2.i123, label %.epil.preheader158

.epil.preheader158:                               ; preds = %._crit_edge.2.i123.unr-lcssa, %.preheader.2.i115
  %indvars.iv.2.i118.epil.init = phi i64 [ 0, %.preheader.2.i115 ], [ %indvars.iv.next.2.i121.1, %._crit_edge.2.i123.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod161)
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %.021.2.i116, i64 %indvars.iv.2.i118.epil.init ; 2 uses
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !61 ; 2 uses
  %i.kg = sext i16 %i.kf to i32
  %i.kh = add nsw i32 %i.kg, 2048                 ; 2 uses
  %i.ki = icmp ugt i32 %i.kh, 32767
  %isnotneg.inv.i.2.i119.epil = icmp slt i16 %i.kf, -2048
  %i.kj = select i1 %isnotneg.inv.i.2.i119.epil, i32 0, i32 32767
  %.0.i.2.i120.epil = select i1 %i.ki, i32 %i.kj, i32 %i.kh
  %i.kk = zext i32 %.0.i.2.i120.epil to i64
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr %i.gv, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !61
  store i16 %i.km, ptr %i.ke, align 2, !tbaa !61
  br label %._crit_edge.2.i123

._crit_edge.2.i123:                               ; preds = %._crit_edge.2.i123.unr-lcssa, %.epil.preheader158
  %i.kn = getelementptr inbounds [2 x i8], ptr %.021.2.i116, i64 %i.gt
  %i.ko = add nuw nsw i32 %.01820.2.i117, 1       ; 2 uses
  %exitcond28.2.not.i124 = icmp eq i32 %i.ko, %i.t
  br i1 %exitcond28.2.not.i124, label %apply_lut.exit125, label %.preheader.2.i115, !llvm.loop !120

apply_lut.exit125:                                ; preds = %._crit_edge.2.i123, %bb.f, %bb.c
  %i.kp = getelementptr inbounds nuw i8, ptr %i.e, i64 532
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !123
  %i.kr = icmp eq i32 %i.kq, 1
  %i.ks = load i64, ptr %i.bt, align 8, !tbaa !68 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.e, i64 1056 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.e, i64 1360 ; 2 uses
  br i1 %i.kr, label %bb.g, label %bb.h

bb.g:                                             ; preds = %apply_lut.exit125
  %i.kv = getelementptr inbounds nuw i8, ptr %i.e, i64 1392
  %i.kw = load ptr, ptr %i.kv, align 16, !tbaa !66
  %i.kx = getelementptr inbounds nuw i8, ptr %i.e, i64 584
  call void %i.kw(ptr noundef nonnull %i.b, ptr noundef nonnull %i.av, ptr noundef nonnull %i.c, i64 noundef %i.ks, i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %i.kt, ptr noundef nonnull %i.ku, ptr noundef nonnull %i.kx) #9
  br label %bb.i

bb.h:                                             ; preds = %apply_lut.exit125
  %i.ky = getelementptr inbounds nuw i8, ptr %i.e, i64 1384
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !56
  call void %i.kz(ptr noundef nonnull %i.b, ptr noundef nonnull %i.av, ptr noundef nonnull %i.c, i64 noundef %i.ks, i32 noundef %i.r, i32 noundef %i.t, ptr noundef nonnull %i.kt, ptr noundef nonnull %i.ku) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #4

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @av_get_pix_fmt_name(i32 noundef) local_unnamed_addr #3

declare ptr @av_csp_primaries_desc_from_id(i32 noundef) local_unnamed_addr #3

declare ptr @av_color_primaries_name(i32 noundef) local_unnamed_addr #3

declare void @ff_fill_rgb2xyz_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ff_matrix_invert_3x3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_whitepoint_conv_table(ptr noundef nonnull %0, i32 noundef %1, i64 %.0.val, i64 %.8.val, i64 %.0.val1, i64 %.8.val3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [3 x [3 x double]], align 16      ; 4 uses
  %i.b = alloca [3 x [3 x double]], align 16      ; 8 uses
  %i.c = alloca [3 x [3 x double]], align 16      ; 4 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [72 x i8], ptr @fill_whitepoint_conv_table.ma_tbl, i64 %i.d ; 7 uses
  %i.f = insertelement <2 x i64> poison, i64 %.0.val1, i64 0
  %i.g = insertelement <2 x i64> %i.f, i64 %.0.val, i64 1 ; 2 uses
  %i.h = trunc <2 x i64> %i.g to <2 x i32>
  %i.i = lshr <2 x i64> %i.g, splat (i64 32)
  %i.j = insertelement <2 x i64> poison, i64 %.8.val3, i64 0
  %i.k = insertelement <2 x i64> %i.j, i64 %.8.val, i64 1 ; 2 uses
  %i.l = trunc <2 x i64> %i.k to <2 x i32>
  %i.m = lshr <2 x i64> %i.k, splat (i64 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @ff_matrix_invert_3x3(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a) #9
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.q = load double, ptr %i.p, align 8, !tbaa !59 ; 2 uses
  %i.r = sitofp <2 x i32> %i.h to <2 x double>
  %i.s = trunc nuw <2 x i64> %i.i to <2 x i32>
  %i.t = sitofp <2 x i32> %i.s to <2 x double>
  %i.u = trunc nuw <2 x i64> %i.m to <2 x i32>
  %i.v = fdiv nsz <2 x double> %i.r, %i.t         ; 4 uses
  %i.w = sitofp <2 x i32> %i.l to <2 x double>
  %i.x = sitofp <2 x i32> %i.u to <2 x double>
  %i.y = fdiv nsz <2 x double> %i.w, %i.x         ; 4 uses
  %i.z = fsub nsz <2 x double> splat (double 1.000000e+00), %i.v
  %i.aa = fsub nsz <2 x double> %i.z, %i.y        ; 4 uses
  %i.ab = load <4 x double>, ptr %i.e, align 8, !tbaa !59 ; 3 uses
  %i.ac = load <2 x double>, ptr %2, align 8, !tbaa !59
  %i.ad = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.af = shufflevector <4 x double> %i.ab, <4 x double> %i.ae, <2 x i32> <i32 1, i32 4> ; 2 uses
  %i.ag = fmul nsz <2 x double> %i.ad, %i.af
  %i.ah = shufflevector <4 x double> %i.ab, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ai = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ai, <2 x double> %i.ag)
  %i.ak = shufflevector <4 x double> %i.ab, <4 x double> %i.ae, <2 x i32> <i32 2, i32 5> ; 2 uses
  %i.al = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.al, <2 x double> %i.aj)
  %i.an = extractelement <2 x double> %i.aa, i64 1
  %i.ao = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul nsz <2 x double> %i.ao, %i.af
  %i.aq = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.aq, <2 x double> %i.ap)
  %i.as = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.as, <2 x double> %i.ar)
  %3 = load double, ptr %i.o, align 8, !tbaa !59
  %4 = load double, ptr %i.n, align 8, !tbaa !59
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = fmul nsz <2 x double> %i.y, %6
  %7 = insertelement <2 x double> poison, double %4, i64 0
  %i.av = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.av, <2 x double> %i.v, <2 x double> %i.au) ; 2 uses
  %i.ax = extractelement <2 x double> %i.aw, i64 1
  %i.ay = call nsz double @llvm.fmuladd.f64(double %i.q, double %i.an, double %i.ax)
  %i.az = extractelement <2 x double> %i.aa, i64 0
  %i.ba = extractelement <2 x double> %i.aw, i64 0
  %i.bb = call nsz double @llvm.fmuladd.f64(double %i.q, double %i.az, double %i.ba)
  %i.bc = fdiv nsz <2 x double> %i.at, %i.am      ; 2 uses
  %i.bd = extractelement <2 x double> %i.bc, i64 0
  store double %i.bd, ptr %i.b, align 16, !tbaa !59
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bf = extractelement <2 x double> %i.bc, i64 1
  store double %i.bf, ptr %i.be, align 16, !tbaa !59
  %i.bg = fdiv nsz double %i.bb, %i.ay
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store double %i.bg, ptr %i.bh, align 16, !tbaa !59
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  call void @ff_matrix_mul_3x3(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b) #9
  call void @ff_matrix_mul_3x3(ptr noundef nonnull %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @ff_matrix_mul_3x3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f64(double) #5

declare ptr @av_color_transfer_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @fill_gamma_table(ptr nofree noundef captures(none) initializes((872, 880)) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !54  ; 4 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !126 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !127 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !129 ; 3 uses
  %i.j = fdiv nsz double 1.000000e+00, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55   ; 4 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !126 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !127 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !129
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.u = load i32, ptr %i.t, align 4, !tbaa !130
  %i.v = icmp eq i32 %i.u, 1                      ; 2 uses
  %i.w = tail call noalias ptr @av_malloc(i64 noundef 131072) #9 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 872
  store ptr %i.w, ptr %i.x, align 8, !tbaa !63
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = insertelement <2 x double> poison, double %i.c, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.g, i64 1
  %i.aa = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 65536 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 880
  store ptr %i.ab, ptr %i.ac, align 16, !tbaa !76
  %i.ad = fneg nsz double %i.o
  %i.ae = fneg nsz double %i.e
  %i.af = fmul nsz double %i.i, %i.ae
  %i.ag = fneg nsz double %i.m
  %i.ah = fadd nsz double %i.m, -1.000000e+00
  %i.ai = fsub nsz double 1.000000e+00, %i.m
  %i.aj = fsub nsz double 1.000000e+00, %i.c
  %i.ak = fmul nsz double %i.e, %i.i
  %i.al = extractelement <2 x double> %i.aa, i64 0 ; 2 uses
  %i.am = extractelement <2 x double> %i.aa, i64 1 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.s
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %i.an = trunc i64 %indvars.iv to i32
  %i.ao = add i32 %i.an, -2048
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fdiv nsz double %i.ap, 2.867200e+04     ; 10 uses
  %i.ar = fcmp nsz ugt double %i.aq, %i.ad
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = fneg nsz double %i.aq
  %i.at = tail call nsz double @llvm.pow.f64(double %i.as, double %i.q)
  %i.au = tail call nsz double @llvm.fmuladd.f64(double %i.ag, double %i.at, double %i.ah)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.av = fcmp nsz olt double %i.aq, %i.o
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aw = fmul nsz double %i.s, %i.aq
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ax = tail call nsz double @llvm.pow.f64(double %i.aq, double %i.q)
  %i.ay = tail call nsz double @llvm.fmuladd.f64(double %i.m, double %i.ax, double %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.061 = phi nsz double [ %i.au, %bb.d ], [ %i.aw, %bb.f ], [ %i.ay, %bb.g ]
  %i.az = fmul nsz double %.061, 2.867200e+04
  %i.ba = tail call i64 @llvm.lrint.i64.f64(double %i.az) ; 2 uses
  %i.bb = trunc i64 %i.ba to i32                  ; 3 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 0)
  %i.bd = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 28672)
  %i.be = trunc nuw nsw i32 %i.bd to i16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = add i32 %i.bb, 32768
  %.not.i69 = icmp ult i32 %i.bf, 65536
  %i.bg = icmp sgt i32 %i.bb, -1
  %i.bh = select i1 %i.bg, i16 32767, i16 -32768
  %i.bi = trunc i64 %i.ba to i16
  %.0.i70 = select i1 %.not.i69, i16 %i.bi, i16 %i.bh
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bj = phi i16 [ %i.be, %bb.i ], [ %.0.i70, %bb.j ]
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !61
  %i.bl = fcmp nsz ugt double %i.aq, %i.af
  br i1 %i.bl, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = fsub nsz double %i.aj, %i.aq
  %i.bn = fmul nsz double %i.al, %i.bm
  %i.bo = tail call nsz double @llvm.pow.f64(double %i.bn, double %i.am)
  %i.bp = fneg nsz double %i.bo
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.bq = fcmp nsz olt double %i.aq, %i.ak
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = fmul nsz double %i.j, %i.aq
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bs = fadd nsz double %i.c, %i.aq
  %i.bt = fadd nsz double %i.bs, -1.000000e+00
  %i.bu = fmul nsz double %i.al, %i.bt
  %i.bv = tail call nsz double @llvm.pow.f64(double %i.bu, double %i.am)
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.0 = phi nsz double [ %i.bp, %bb.l ], [ %i.br, %bb.n ], [ %i.bv, %bb.o ]
  %i.bw = fmul nsz double %.0, 2.867200e+04
  %i.bx = tail call i64 @llvm.lrint.i64.f64(double %i.bw) ; 2 uses
  %i.by = trunc i64 %i.bx to i32                  ; 3 uses
  br i1 %i.v, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.ca = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 28672)
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cc = add i32 %i.by, 32768
  %.not.i = icmp ult i32 %i.cc, 65536
  %i.cd = icmp sgt i32 %i.by, -1
  %i.ce = select i1 %i.cd, i16 32767, i16 -32768
  %i.cf = trunc i64 %i.bx to i16
  %.0.i68 = select i1 %.not.i, i16 %i.cf, i16 %i.ce
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cg = phi i16 [ %i.cb, %bb.q ], [ %.0.i68, %bb.r ]
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %indvars.iv
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !61
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32768
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !124

.loopexit:                                        ; preds = %bb.s, %bb.a
  %.063 = phi i32 [ -12, %bb.a ], [ 0, %bb.s ]
  ret i32 %.063
}

declare ptr @av_csp_luma_coeffs_from_avcsp(i32 noundef) local_unnamed_addr #3

end_hunk_0
