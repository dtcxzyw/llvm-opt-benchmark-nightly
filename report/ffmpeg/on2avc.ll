Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/on2avc?download=true
inline.NumInlined: 49
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 24
begin_hunk_0_@wtf_44:bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 1280
  tail call fastcc void @twiddle(ptr noundef nonnull %i.av, ptr noundef nonnull %i.au, i32 noundef 256, ptr noundef nonnull @ff_on2avc_tab_84_3, i32 noundef 84, i32 noundef 4, i32 noundef 13, i32 noundef 7, ptr noundef nonnull @ff_on2avc_tabs_20_84_3)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 1536
  tail call fastcc void @twiddle(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au, i32 noundef 256, ptr noundef nonnull @ff_on2avc_tab_84_2, i32 noundef 84, i32 noundef 4, i32 noundef 16, i32 noundef 4, ptr noundef nonnull @ff_on2avc_tabs_20_84_2)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 1792
  tail call fastcc void @twiddle(ptr noundef nonnull %i.ax, ptr noundef nonnull %i.au, i32 noundef 256, ptr noundef nonnull @ff_on2avc_tab_84_1, i32 noundef 84, i32 noundef 4, i32 noundef 16, i32 noundef 4, ptr noundef nonnull @ff_on2avc_tabs_20_84_1)
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 20704 ; 2 uses
  tail call fastcc void @twiddle(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i32 noundef 256, ptr noundef nonnull @ff_on2avc_tab_40_1, i32 noundef 40, i32 noundef 2, i32 noundef 11, i32 noundef 8, ptr noundef nonnull @ff_on2avc_tabs_19_40_1)
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 2560
  tail call fastcc void @twiddle(ptr noundef nonnull %i.ba, ptr noundef nonnull %i.az, i32 noundef 256, ptr noundef nonnull @ff_on2avc_tab_40_2, i32 noundef 40, i32 noundef 2, i32 noundef 8, i32 noundef 11, ptr noundef nonnull @ff_on2avc_tabs_19_40_2)
  tail call fastcc void @wtf_end_1024(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #3

declare i32 @ff_vlc_init_from_lengths(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @twiddle(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 16, 257) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 10, 85) %4, i32 noundef range(i32 2, 5) %5, i32 noundef range(i32 1, 17) %6, i32 noundef range(i32 1, 12) %7, ptr nofree noundef readonly captures(none) %8) unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %8, align 8, !tbaa !53
  %i.b = zext nneg i32 %4 to i64                  ; 12 uses
  %wide.trip.count.i = zext nneg i32 %6 to i64    ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.c = icmp eq i32 %6, 1
  %unroll_iter = and i64 %wide.trip.count.i, 30
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod145 = trunc i32 %6 to i1
  br label %.preheader49.i

.preheader49.i:                                   ; preds = %bb.b, %bb.a
  %indvars.iv58.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next59.i, %bb.b ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv58.i ; 3 uses
  br i1 %i.c, label %.epil.preheader, label %.preheader49.i.new

.preheader49.i.new:                               ; preds = %.preheader49.i, %.preheader49.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.preheader49.i.new ], [ 0, %.preheader49.i ] ; 4 uses
  %.04351.i = phi double [ %i.o, %.preheader49.i.new ], [ 0.000000e+00, %.preheader49.i ]
  %niter = phi i64 [ %niter.next.1, %.preheader49.i.new ], [ 0, %.preheader49.i ]
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.e = load float, ptr %i.d, align 4, !tbaa !41
  %i.f = fpext nsz float %i.e to double
  %i.g = mul nuw nsw i64 %indvars.iv.i, %i.b
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.g
  %i.h = load double, ptr %gep.i, align 8, !tbaa !55
  %i.i = tail call nsz double @llvm.fmuladd.f64(double %i.f, double %i.h, double %.04351.i)
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.k = load float, ptr %i.j, align 4, !tbaa !41
  %i.l = fpext nsz float %i.k to double
  %i.m = mul nuw nsw i64 %indvars.iv.next.i, %i.b
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.m
  %i.n = load double, ptr %gep.i.1, align 8, !tbaa !55
  %i.o = tail call nsz double @llvm.fmuladd.f64(double %i.l, double %i.n, double %i.i) ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader49.i.new, !llvm.loop !70

.unr-lcssa:                                       ; preds = %.preheader49.i.new
  br i1 %lcmp.mod.not, label %bb.b, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader49.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader49.i ], [ %indvars.iv.next.i.1, %.unr-lcssa ] ; 2 uses
  %.04351.i.epil.init = phi double [ 0.000000e+00, %.preheader49.i ], [ %i.o, %.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i.epil.init
  %i.q = load float, ptr %i.p, align 4, !tbaa !41
  %i.r = fpext nsz float %i.q to double
  %i.s = mul nuw nsw i64 %indvars.iv.i.epil.init, %i.b
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %i.s
  %i.t = load double, ptr %gep.i.epil, align 8, !tbaa !55
  %i.u = tail call nsz double @llvm.fmuladd.f64(double %i.r, double %i.t, double %.04351.i.epil.init)
  br label %bb.b

bb.b:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa143 = phi double [ %i.o, %.unr-lcssa ], [ %i.u, %.epil.preheader ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58.i ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !41
  %i.x = fpext nsz float %i.w to double
  %i.y = fadd nsz double %.lcssa143, %i.x
  %i.z = fptrunc nsz double %i.y to float
  store float %i.z, ptr %i.v, align 4, !tbaa !41
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %i.b
  br i1 %exitcond62.not.i, label %bb.c, label %.preheader49.i, !llvm.loop !71

bb.c:                                             ; preds = %bb.b
  %i.aa = sub nsw i32 %2, %4
  %.lhs.trunc = trunc nsw i32 %i.aa to i16
  %.rhs.trunc = trunc nuw nsw i32 %5 to i16
  %i.ab = sdiv i16 %.lhs.trunc, %.rhs.trunc       ; 3 uses
  %i.ac = zext nneg i32 %2 to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ac
  %i.ae = sub nsw i64 0, %i.b
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %wide.trip.count.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = sext i16 %i.ab to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %wide.trip.count.i ; 3 uses
  %wide.trip.count66.i = zext nneg i32 %7 to i64  ; 2 uses
  %xtraiter148 = and i64 %wide.trip.count66.i, 1
  %i.am = icmp eq i32 %7, 1
  %unroll_iter153 = and i64 %wide.trip.count66.i, 14
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  %lcmp.mod152 = trunc i32 %7 to i1
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.c
  %indvars.iv68.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next69.i, %bb.d ] ; 3 uses
  %invariant.gep74.i = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv68.i ; 3 uses
  br i1 %i.am, label %.epil.preheader147, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.preheader.i.new ], [ 0, %.preheader.i ] ; 4 uses
  %.054.i = phi double [ %i.ay, %.preheader.i.new ], [ 0.000000e+00, %.preheader.i ]
  %niter154 = phi i64 [ %niter154.next.1, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv63.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !41
  %i.ap = fpext nsz float %i.ao to double
  %i.aq = mul nuw nsw i64 %indvars.iv63.i, %i.b
  %gep75.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep74.i, i64 %i.aq
  %i.ar = load double, ptr %gep75.i, align 8, !tbaa !55
  %i.as = tail call nsz double @llvm.fmuladd.f64(double %i.ap, double %i.ar, double %.054.i)
  %indvars.iv.next64.i = or disjoint i64 %indvars.iv63.i, 1 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next64.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !41
  %i.av = fpext nsz float %i.au to double
  %i.aw = mul nuw nsw i64 %indvars.iv.next64.i, %i.b
  %gep75.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep74.i, i64 %i.aw
  %i.ax = load double, ptr %gep75.i.1, align 8, !tbaa !55
  %i.ay = tail call nsz double @llvm.fmuladd.f64(double %i.av, double %i.ax, double %i.as) ; 3 uses
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %niter154.next.1 = add i64 %niter154, 2         ; 2 uses
  %niter154.ncmp.1 = icmp eq i64 %niter154.next.1, %unroll_iter153
  br i1 %niter154.ncmp.1, label %.unr-lcssa146, label %.preheader.i.new, !llvm.loop !72

.unr-lcssa146:                                    ; preds = %.preheader.i.new
  br i1 %lcmp.mod149.not, label %bb.d, label %.epil.preheader147

.epil.preheader147:                               ; preds = %.unr-lcssa146, %.preheader.i
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next64.i.1, %.unr-lcssa146 ] ; 2 uses
  %.054.i.epil.init = phi double [ 0.000000e+00, %.preheader.i ], [ %i.ay, %.unr-lcssa146 ]
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv63.i.epil.init
  %i.ba = load float, ptr %i.az, align 4, !tbaa !41
  %i.bb = fpext nsz float %i.ba to double
  %i.bc = mul nuw nsw i64 %indvars.iv63.i.epil.init, %i.b
  %gep75.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep74.i, i64 %i.bc
  %i.bd = load double, ptr %gep75.i.epil, align 8, !tbaa !55
  %i.be = tail call nsz double @llvm.fmuladd.f64(double %i.bb, double %i.bd, double %.054.i.epil.init)
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa146, %.epil.preheader147
  %.lcssa = phi double [ %i.ay, %.unr-lcssa146 ], [ %i.be, %.epil.preheader147 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv68.i ; 2 uses
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !41
  %i.bh = fpext nsz float %i.bg to double
  %i.bi = fadd nsz double %.lcssa, %i.bh
  %i.bj = fptrunc nsz double %i.bi to float
  store float %i.bj, ptr %i.bf, align 4, !tbaa !41
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %i.b
  br i1 %exitcond72.not.i, label %pretwiddle.exit, label %.preheader.i, !llvm.loop !73

pretwiddle.exit:                                  ; preds = %bb.d
  %.not67 = icmp slt i16 %i.ab, 0
  br i1 %.not67, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %pretwiddle.exit
  %i.bk = add nsw i32 %4, -1
  %i.bl = add nsw i32 %2, -1
  %i.bm = zext nneg i32 %2 to i64
  %narrow = add nuw i16 %i.ab, 1
  %wide.trip.count85 = zext i16 %narrow to i64
  %invariant.gep92 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %wide.trip.count.i
  %i.bn = getelementptr [4 x i8], ptr %1, i64 %i.bm ; 2 uses
  %n.vec125 = and i64 %i.b, 124                   ; 3 uses
  %cmp.n140 = icmp eq i64 %n.vec125, %i.b
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph70, %.loopexit
  %indvars.iv82 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next83, %.loopexit ] ; 2 uses
  %.05368 = phi i32 [ %i.bk, %.lr.ph70 ], [ %i.ek, %.loopexit ]
  %gep93 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep92, i64 %indvars.iv82
  %i.bo = load float, ptr %gep93, align 4, !tbaa !41
  %i.bp = and i32 %.05368, %i.bl                  ; 6 uses
  %9 = icmp samesign ult i32 %i.bp, %4
  %i.bq = fpext nsz float %i.bo to double         ; 6 uses
  %i.br = zext nneg i32 %i.bp to i64              ; 6 uses
  br i1 %9, label %.lr.ph.preheader, label %vector.ph124

vector.ph124:                                     ; preds = %bb.e
  %broadcast.splatinsert126 = insertelement <2 x double> poison, double %i.bq, i64 0
  %broadcast.splat127 = shufflevector <2 x double> %broadcast.splatinsert126, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph124
  %index129 = phi i64 [ 0, %vector.ph124 ], [ %index.next138, %vector.body128 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index129 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load130.a = load <2 x double>, ptr %i.bs, align 8, !tbaa !55
  %wide.load131.a = load <2 x double>, ptr %i.bt, align 8, !tbaa !55
  %i.bu = sub nuw nsw i64 %i.br, %index129
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bv, i64 -12 ; 2 uses
  %wide.load132.a = load <2 x float>, ptr %i.bw, align 4, !tbaa !41
  %wide.load133 = load <2 x float>, ptr %i.bx, align 4, !tbaa !41
  %reverse134.a = shufflevector <2 x float> %wide.load132.a, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %reverse135.a = shufflevector <2 x float> %wide.load133, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.by = fpext nsz <2 x float> %reverse134.a to <2 x double>
  %i.bz = fpext nsz <2 x float> %reverse135.a to <2 x double>
  %i.ca = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat127, <2 x double> %wide.load130.a, <2 x double> %i.by)
  %i.cb = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat127, <2 x double> %wide.load131.a, <2 x double> %i.bz)
  %i.cc = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse136.a = fptrunc nsz <2 x double> %i.cc to <2 x float>
  %i.cd = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse137 = fptrunc nsz <2 x double> %i.cd to <2 x float>
  store <2 x float> %reverse136.a, ptr %i.bw, align 4, !tbaa !41
  store <2 x float> %reverse137, ptr %i.bx, align 4, !tbaa !41
  %index.next138 = add nuw i64 %index129, 4       ; 2 uses
  %i.ce = icmp eq i64 %index.next138, %n.vec125
  br i1 %i.ce, label %middle.block139, label %vector.body128, !llvm.loop !74

middle.block139:                                  ; preds = %vector.body128
  br i1 %cmp.n140, label %.loopexit, label %.preheader59

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cf = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check103 = icmp samesign ult i32 %i.bp, 3
  br i1 %min.iters.check103, label %.lr.ph.preheader141, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.preheader
  %n.vec105 = and i64 %i.cf, 4294967292           ; 4 uses
  %i.cg = sub nsw i64 %i.br, %n.vec105
  %i.ch = shl nuw nsw i64 %n.vec105, 3
  %i.ci = getelementptr i8, ptr %3, i64 %i.ch
  %broadcast.splatinsert106 = insertelement <2 x double> poison, double %i.bq, i64 0
  %broadcast.splat107 = shufflevector <2 x double> %broadcast.splatinsert106, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph104
  %index109 = phi i64 [ 0, %vector.ph104 ], [ %index.next118, %vector.body108 ] ; 3 uses
  %i.cj = sub i64 %i.br, %index109
  %i.ck = shl i64 %index109, 3
  %next.gep = getelementptr i8, ptr %3, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load110.a = load <2 x double>, ptr %next.gep, align 8, !tbaa !55
  %wide.load111.a = load <2 x double>, ptr %i.cl, align 8, !tbaa !55
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cj ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -4 ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 -12 ; 2 uses
  %wide.load112.a = load <2 x float>, ptr %i.cn, align 4, !tbaa !41
  %wide.load113 = load <2 x float>, ptr %i.co, align 4, !tbaa !41
  %reverse114.a = shufflevector <2 x float> %wide.load112.a, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %reverse115.a = shufflevector <2 x float> %wide.load113, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cp = fpext nsz <2 x float> %reverse114.a to <2 x double>
  %i.cq = fpext nsz <2 x float> %reverse115.a to <2 x double>
  %i.cr = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat107, <2 x double> %wide.load110.a, <2 x double> %i.cp)
  %i.cs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat107, <2 x double> %wide.load111.a, <2 x double> %i.cq)
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse116.a = fptrunc nsz <2 x double> %i.ct to <2 x float>
  %i.cu = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse117 = fptrunc nsz <2 x double> %i.cu to <2 x float>
  store <2 x float> %reverse116.a, ptr %i.cn, align 4, !tbaa !41
  store <2 x float> %reverse117, ptr %i.co, align 4, !tbaa !41
  %index.next118 = add nuw i64 %index109, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next118, %n.vec105
  br i1 %i.cv, label %middle.block119, label %vector.body108, !llvm.loop !75

middle.block119:                                  ; preds = %vector.body108
  %cmp.n120 = icmp eq i64 %i.cf, %n.vec105
  br i1 %cmp.n120, label %.preheader, label %.lr.ph.preheader141

.lr.ph.preheader141:                              ; preds = %.lr.ph.preheader, %middle.block119
  %indvars.iv74.ph = phi i64 [ %i.br, %.lr.ph.preheader ], [ %i.cg, %middle.block119 ]
  %.064.ph = phi ptr [ %3, %.lr.ph.preheader ], [ %i.ci, %middle.block119 ]
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %middle.block119
  %i.cw = xor i32 %i.bp, -1
  %i.cx = add nsw i32 %4, %i.cw                   ; 3 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph66, label %.loopexit

.lr.ph66:                                         ; preds = %.preheader
  %wide.trip.count80 = zext nneg i32 %i.cx to i64 ; 3 uses
  %10 = zext nneg i32 %i.bp to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %10 ; 2 uses
  %min.iters.check = icmp ult i32 %i.cx, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66
  %n.vec = and i64 %wide.trip.count80, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bq, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %wide.load = load <2 x double>, ptr %i.da, align 8, !tbaa !55
  %wide.load96.a = load <2 x double>, ptr %i.db, align 8, !tbaa !55
  %i.dc = xor i64 %index, -1
  %i.dd = getelementptr [4 x i8], ptr %i.bn, i64 %i.dc ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 -4     ; 2 uses
  %i.df = getelementptr i8, ptr %i.dd, i64 -12    ; 2 uses
  %wide.load97.a = load <2 x float>, ptr %i.de, align 4, !tbaa !41
  %wide.load98 = load <2 x float>, ptr %i.df, align 4, !tbaa !41
  %reverse = shufflevector <2 x float> %wide.load97.a, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %reverse99.a = shufflevector <2 x float> %wide.load98, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dg = fpext nsz <2 x float> %reverse to <2 x double>
  %i.dh = fpext nsz <2 x float> %reverse99.a to <2 x double>
  %i.di = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load, <2 x double> %i.dg)
  %i.dj = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load96.a, <2 x double> %i.dh)
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse100.a = fptrunc nsz <2 x double> %i.dk to <2 x float>
  %i.dl = shufflevector <2 x double> %i.dj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse101 = fptrunc nsz <2 x double> %i.dl to <2 x float>
  store <2 x float> %reverse100.a, ptr %i.de, align 4, !tbaa !41
  store <2 x float> %reverse101, ptr %i.df, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count80
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph66, %middle.block
  %indvars.iv77.ph = phi i64 [ 0, %.lr.ph66 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader141, %.lr.ph
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %.lr.ph ], [ %indvars.iv74.ph, %.lr.ph.preheader141 ] ; 3 uses
  %.064 = phi ptr [ %i.dn, %.lr.ph ], [ %.064.ph, %.lr.ph.preheader141 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %i.do = load double, ptr %.064, align 8, !tbaa !55
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv74 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !41
  %i.dr = fpext nsz float %i.dq to double
  %i.ds = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.do, double %i.dr)
  %i.dt = fptrunc nsz double %i.ds to float
  store float %i.dt, ptr %i.dp, align 4, !tbaa !41
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, -1
  %.not = icmp eq i64 %indvars.iv74, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !77

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %scalar.ph ], [ %indvars.iv77.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv77
  %i.du = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.dv = load double, ptr %i.du, align 8, !tbaa !55
  %i.dw = xor i64 %indvars.iv77, -1
  %i.dx = getelementptr [4 x i8], ptr %i.bn, i64 %i.dw ; 2 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !41
  %i.dz = fpext nsz float %i.dy to double
  %i.ea = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.dv, double %i.dz)
  %i.eb = fptrunc nsz double %i.ea to float
  store float %i.eb, ptr %i.dx, align 4, !tbaa !41
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %.loopexit, label %scalar.ph, !llvm.loop !78

.preheader59:                                     ; preds = %middle.block139, %.preheader59
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader59 ], [ %n.vec125, %middle.block139 ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !55
  %i.ee = sub nuw nsw i64 %i.br, %indvars.iv
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ee ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !41
  %i.eh = fpext nsz float %i.eg to double
  %i.ei = tail call nsz double @llvm.fmuladd.f64(double %i.bq, double %i.ed, double %i.eh)
  %i.ej = fptrunc nsz double %i.ei to float
  store float %i.ej, ptr %i.ef, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.preheader59, !llvm.loop !79

.loopexit:                                        ; preds = %.preheader59, %scalar.ph, %middle.block139, %middle.block, %.preheader
  %i.ek = add nuw nsw i32 %i.bp, %5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %._crit_edge, label %bb.e, !llvm.loop !80

._crit_edge:                                      ; preds = %.loopexit, %pretwiddle.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wtf_end_512(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((1536, 2048)) %2, ptr noundef initializes((0, 1536)) %3) unnamed_addr #1 {
vector.memcheck:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1536) %3, ptr noundef nonnull align 4 dereferenceable(1536) %2, i64 1536, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1536 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1536 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %i.a, ptr noundef nonnull align 4 dereferenceable(512) %i.b, i64 512, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1008
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1024
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 1508
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 2028
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.e, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(88) %i.g, i8 0, i64 88, i1 false)
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !121
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122
  tail call void %i.j(ptr noundef %i.l, ptr noundef %1, ptr noundef nonnull %3, i64 noundef 4) #11
  %i.m = load ptr, ptr %i.i, align 16, !tbaa !121
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  tail call void %i.m(ptr noundef %i.n, ptr noundef nonnull %i.o, ptr noundef nonnull %i.c, i64 noundef 4) #11
  %i.p = load ptr, ptr %i.i, align 16, !tbaa !121
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  tail call void %i.p(ptr noundef %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.f, i64 noundef 4) #11
  %i.s = load ptr, ptr %i.i, align 16, !tbaa !121
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 2 uses
  tail call void %i.s(ptr noundef %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.b, i64 noundef 4) #11
  tail call fastcc void @combine_fft(ptr noundef %1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.r, ptr noundef nonnull %i.u, ptr noundef nonnull %3, i32 noundef 512, i32 noundef 2)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !123
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !124
  tail call void %i.w(ptr noundef %i.y, ptr noundef %1, ptr noundef nonnull %3, i64 noundef 4) #11
  %i.z = load ptr, ptr @ff_on2avc_tabs_20_84_1, align 16, !tbaa !53 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 336
  %scevgep15 = getelementptr i8, ptr %2, i64 64
  %bound0 = icmp ult ptr %1, %scevgep15
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader49.i, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load float, ptr %2, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.ap, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fpext nsz <2 x float> %broadcast.splat to <2 x double>
  %i.ar = load float, ptr %i.ao, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert16 = insertelement <2 x float> poison, float %i.ar, i64 0
  %broadcast.splat17 = shufflevector <2 x float> %broadcast.splatinsert16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fpext nsz <2 x float> %broadcast.splat17 to <2 x double>
  %i.at = load float, ptr %i.an, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert18 = insertelement <2 x float> poison, float %i.at, i64 0
  %broadcast.splat19 = shufflevector <2 x float> %broadcast.splatinsert18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fpext nsz <2 x float> %broadcast.splat19 to <2 x double>
  %i.av = load float, ptr %i.am, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert20 = insertelement <2 x float> poison, float %i.av, i64 0
  %broadcast.splat21 = shufflevector <2 x float> %broadcast.splatinsert20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fpext nsz <2 x float> %broadcast.splat21 to <2 x double>
  %i.ax = load float, ptr %i.aa, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert22 = insertelement <2 x float> poison, float %i.ax, i64 0
  %broadcast.splat23 = shufflevector <2 x float> %broadcast.splatinsert22, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fpext nsz <2 x float> %broadcast.splat23 to <2 x double>
  %i.az = load float, ptr %i.al, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert24 = insertelement <2 x float> poison, float %i.az, i64 0
  %broadcast.splat25 = shufflevector <2 x float> %broadcast.splatinsert24, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fpext nsz <2 x float> %broadcast.splat25 to <2 x double>
  %i.bb = load float, ptr %i.ak, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert26 = insertelement <2 x float> poison, float %i.bb, i64 0
  %broadcast.splat27 = shufflevector <2 x float> %broadcast.splatinsert26, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fpext nsz <2 x float> %broadcast.splat27 to <2 x double>
  %i.bd = load float, ptr %i.aj, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert28 = insertelement <2 x float> poison, float %i.bd, i64 0
  %broadcast.splat29 = shufflevector <2 x float> %broadcast.splatinsert28, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fpext nsz <2 x float> %broadcast.splat29 to <2 x double>
  %i.bf = load float, ptr %i.ab, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert30 = insertelement <2 x float> poison, float %i.bf, i64 0
  %broadcast.splat31 = shufflevector <2 x float> %broadcast.splatinsert30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fpext nsz <2 x float> %broadcast.splat31 to <2 x double>
  %i.bh = load float, ptr %i.ai, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert32 = insertelement <2 x float> poison, float %i.bh, i64 0
  %broadcast.splat33 = shufflevector <2 x float> %broadcast.splatinsert32, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fpext nsz <2 x float> %broadcast.splat33 to <2 x double>
  %i.bj = load float, ptr %i.ah, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert34 = insertelement <2 x float> poison, float %i.bj, i64 0
  %broadcast.splat35 = shufflevector <2 x float> %broadcast.splatinsert34, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fpext nsz <2 x float> %broadcast.splat35 to <2 x double>
  %i.bl = load float, ptr %i.ag, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert36 = insertelement <2 x float> poison, float %i.bl, i64 0
  %broadcast.splat37 = shufflevector <2 x float> %broadcast.splatinsert36, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fpext nsz <2 x float> %broadcast.splat37 to <2 x double>
  %i.bn = load float, ptr %i.ac, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert38 = insertelement <2 x float> poison, float %i.bn, i64 0
  %broadcast.splat39 = shufflevector <2 x float> %broadcast.splatinsert38, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fpext nsz <2 x float> %broadcast.splat39 to <2 x double>
  %i.bp = load float, ptr %i.af, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert40 = insertelement <2 x float> poison, float %i.bp, i64 0
  %broadcast.splat41 = shufflevector <2 x float> %broadcast.splatinsert40, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fpext nsz <2 x float> %broadcast.splat41 to <2 x double>
  %i.br = load float, ptr %i.ae, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert42 = insertelement <2 x float> poison, float %i.br, i64 0
  %broadcast.splat43 = shufflevector <2 x float> %broadcast.splatinsert42, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fpext nsz <2 x float> %broadcast.splat43 to <2 x double>
  %i.bt = load float, ptr %i.ad, align 4, !tbaa !41, !alias.scope !125
  %broadcast.splatinsert44 = insertelement <2 x float> poison, float %i.bt, i64 0
  %broadcast.splat45 = shufflevector <2 x float> %broadcast.splatinsert44, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fpext nsz <2 x float> %broadcast.splat45 to <2 x double>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index ; 16 uses
  %wide.load = load <2 x double>, ptr %i.bv, align 8, !tbaa !55
  %i.bw = fmul nsz <2 x double> %wide.load, %i.aq
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 672
  %wide.load46 = load <2 x double>, ptr %i.bx, align 8, !tbaa !55
  %i.by = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %wide.load46, <2 x double> %i.bw)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 1344
  %wide.load47 = load <2 x double>, ptr %i.bz, align 8, !tbaa !55
  %i.ca = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %wide.load47, <2 x double> %i.by)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 2016
  %wide.load48 = load <2 x double>, ptr %i.cb, align 8, !tbaa !55
  %i.cc = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %wide.load48, <2 x double> %i.ca)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 2688
  %wide.load49 = load <2 x double>, ptr %i.cd, align 8, !tbaa !55
  %i.ce = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %wide.load49, <2 x double> %i.cc)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 3360
  %wide.load50 = load <2 x double>, ptr %i.cf, align 8, !tbaa !55
  %i.cg = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %wide.load50, <2 x double> %i.ce)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bv, i64 4032
  %wide.load51 = load <2 x double>, ptr %i.ch, align 8, !tbaa !55
  %i.ci = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %wide.load51, <2 x double> %i.cg)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 4704
  %wide.load52 = load <2 x double>, ptr %i.cj, align 8, !tbaa !55
  %i.ck = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %wide.load52, <2 x double> %i.ci)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 5376
  %wide.load53 = load <2 x double>, ptr %i.cl, align 8, !tbaa !55
  %i.cm = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %wide.load53, <2 x double> %i.ck)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 6048
  %wide.load54 = load <2 x double>, ptr %i.cn, align 8, !tbaa !55
  %i.co = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %wide.load54, <2 x double> %i.cm)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bv, i64 6720
  %wide.load55 = load <2 x double>, ptr %i.cp, align 8, !tbaa !55
  %i.cq = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %wide.load55, <2 x double> %i.co)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 7392
  %wide.load56 = load <2 x double>, ptr %i.cr, align 8, !tbaa !55
  %i.cs = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %wide.load56, <2 x double> %i.cq)
end_hunk_0
