Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcaenc?download=true
inline.NumInlined: 126
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 38
begin_hunk_0_@encode_init:bb.a
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr @sample_rates, i64 %indvars.iv275
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !29
  %i.hv = sitofp nsz i32 %i.hu to double
  %i.hw = getelementptr inbounds nuw [25600 x i8], ptr %i.hs, i64 %indvars.iv275
  %broadcast.splatinsert320 = insertelement <4 x double> poison, double %i.hv, i64 0
  %broadcast.splat321 = shufflevector <4 x double> %broadcast.splatinsert320, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.preheader198

.preheader197:                                    ; preds = %bb.t
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 284040
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %.preheader197
  %index330 = phi i64 [ 0, %.preheader197 ], [ %index.next332, %vector.body329 ] ; 2 uses
  %vec.ind331 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.preheader197 ], [ %vec.ind.next333, %vector.body329 ] ; 2 uses
  %i.hy = uitofp nneg <4 x i32> %vec.ind331 to <4 x double>
  %i.hz = fmul nnan nsz <4 x double> %i.hy, splat (double -1.000000e-02)
  %i.ia = fmul nnan nsz <4 x double> %i.hz, splat (double f0x400A934F0979A371)
  %i.ib = call nnan nsz <4 x double> @llvm.exp2.v4f64(<4 x double> %i.ia)
  %i.ic = fadd nnan nsz <4 x double> %i.ib, splat (double 1.000000e+00)
  %i.id = call nnan nsz <4 x double> @llvm.log10.v4f64(<4 x double> %i.ic)
  %i.ie = fmul nnan nsz <4 x double> %i.id, splat (double 1.000000e+02)
  %i.if = fptosi <4 x double> %i.ie to <4 x i32>
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index330
  store <4 x i32> %i.if, ptr %i.ig, align 4, !tbaa !29
  %index.next332 = add nuw i64 %index330, 4       ; 2 uses
  %vec.ind.next333 = add <4 x i32> %vec.ind331, splat (i32 4)
  %i.ih = icmp eq i64 %index.next332, 256
  br i1 %i.ih, label %.preheader195, label %vector.body329, !llvm.loop !67

.preheader198:                                    ; preds = %.preheader199, %middle.block327
  %indvars.iv271 = phi i64 [ 0, %.preheader199 ], [ %indvars.iv.next272, %middle.block327 ] ; 4 uses
  %i.ii = getelementptr inbounds nuw [1024 x i8], ptr %i.hw, i64 %indvars.iv271
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr @erb, i64 %indvars.iv271
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !54
  %i.il = uitofp i16 %i.ik to double
  %i.im = getelementptr inbounds nuw [2 x i8], ptr @fc, i64 %indvars.iv271
  %i.in = load i16, ptr %i.im, align 2, !tbaa !54
  %i.io = uitofp i16 %i.in to double
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.io, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert318 = insertelement <4 x double> poison, double %i.il, i64 0
  %broadcast.splat319 = shufflevector <4 x double> %broadcast.splatinsert318, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body322

vector.body322:                                   ; preds = %vector.body322, %.preheader198
  %index323 = phi i64 [ 0, %.preheader198 ], [ %index.next325, %vector.body322 ] ; 2 uses
  %vec.ind324 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.preheader198 ], [ %vec.ind.next326, %vector.body322 ] ; 2 uses
  %i.ip = uitofp nneg <4 x i32> %vec.ind324 to <4 x double>
  %i.iq = fadd nnan nsz <4 x double> %i.ip, splat (double 5.000000e-01)
  %i.ir = fmul nsz <4 x double> %i.iq, %broadcast.splat321
  %i.is = fmul nsz <4 x double> %i.ir, splat (double f0x3F60000000000000) ; 2 uses
  %i.it = fdiv nsz <4 x double> %i.is, splat (double 1.000000e+03) ; 5 uses
  %i.iu = call nsz <4 x double> @llvm.pow.v4f64(<4 x double> %i.it, <4 x double> splat (double -8.000000e-01))
  %i.iv = fadd nsz <4 x double> %i.it, splat (double -3.400000e+00) ; 2 uses
  %i.iw = fmul nsz <4 x double> %i.iv, splat (double -6.000000e-01)
  %i.ix = fmul nsz <4 x double> %i.iv, %i.iw
  %i.iy = call nsz <4 x double> @llvm.exp.v4f64(<4 x double> %i.ix)
  %i.iz = fmul nsz <4 x double> %i.iy, splat (double 6.800000e+00)
  %i.ja = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> splat (double -3.640000e+00), <4 x double> %i.iz)
  %i.jb = fadd nsz <4 x double> %i.it, splat (double f0xC021666666666666) ; 2 uses
  %i.jc = fmul nsz <4 x double> %i.jb, splat (double -1.500000e-01)
  %i.jd = fmul nsz <4 x double> %i.jb, %i.jc
  %i.je = call nsz <4 x double> @llvm.exp.v4f64(<4 x double> %i.jd)
  %i.jf = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.je, <4 x double> splat (double -6.000000e+00), <4 x double> %i.ja)
  %i.jg = fmul nsz <4 x double> %i.it, %i.it      ; 2 uses
  %i.jh = fmul nsz <4 x double> %i.jg, splat (double -6.000000e-04)
  %i.ji = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jh, <4 x double> %i.jg, <4 x double> %i.jf)
  %i.jj = fsub nsz <4 x double> %i.is, %broadcast.splat
  %i.jk = fdiv nsz <4 x double> %i.jj, %broadcast.splat319 ; 2 uses
  %i.jl = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jk, <4 x double> %i.jk, <4 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.jm = fmul nsz <4 x double> %i.jl, %i.jl
  %i.jn = fdiv nsz <4 x double> splat (double 1.000000e+00), %i.jm
  %i.jo = call nsz <4 x double> @llvm.log10.v4f64(<4 x double> %i.jn)
  %i.jp = fmul nsz <4 x double> %i.jo, splat (double 2.000000e+01)
  %i.jq = fadd nsz <4 x double> %i.jp, %i.ji
  %i.jr = fmul nsz <4 x double> %i.jq, splat (double 1.000000e+01)
  %i.js = fptosi <4 x double> %i.jr to <4 x i32>
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %index323
  store <4 x i32> %i.js, ptr %i.jt, align 4, !tbaa !29
  %index.next325 = add nuw i64 %index323, 4       ; 2 uses
  %vec.ind.next326 = add <4 x i32> %vec.ind324, splat (i32 4)
  %i.ju = icmp eq i64 %index.next325, 256
  br i1 %i.ju, label %middle.block327, label %vector.body322, !llvm.loop !68

middle.block327:                                  ; preds = %vector.body322
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next272, 25
  br i1 %exitcond274.not, label %bb.t, label %.preheader198, !llvm.loop !69

bb.t:                                             ; preds = %middle.block327
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next276, 9
  br i1 %exitcond278.not, label %.preheader197, label %.preheader199, !llvm.loop !70

.preheader195:                                    ; preds = %vector.body329, %bb.v
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %bb.v ], [ 0, %vector.body329 ] ; 3 uses
  %i.jv = trunc nuw nsw i64 %indvars.iv287 to i32
  %i.jw = uitofp nsz nneg i32 %i.jv to double
  %i.jx = fadd nnan nsz double %i.jw, 5.000000e-01
  br label %bb.u

bb.u:                                             ; preds = %.preheader195, %bb.u
  %indvars.iv283 = phi i64 [ 0, %.preheader195 ], [ %indvars.iv.next284, %bb.u ] ; 3 uses
  %.0174224 = phi double [ 0.000000e+00, %.preheader195 ], [ %i.kn, %bb.u ]
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_fir_32bands_perfect, i64 %indvars.iv283
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !75
  %i.ka = trunc nuw nsw i64 %indvars.iv283 to i32 ; 2 uses
  %i.kb = and i32 %i.ka, 64
  %.not191 = icmp eq i32 %i.kb, 0
  %i.kc = select i1 %.not191, i32 1, i32 -1
  %i.kd = sitofp nsz i32 %i.kc to float
  %i.ke = fmul nsz float %i.jz, %i.kd
  %i.kf = fpext nsz float %i.ke to double
  %i.kg = uitofp nsz nneg i32 %i.ka to double
  %i.kh = fadd nnan nsz double %i.kg, 5.000000e-01
  %i.ki = fadd nnan nsz double %i.kh, -2.560000e+02
  %i.kj = fmul nnan nsz double %i.ki, f0x401921FB54442D18
  %i.kk = fmul nsz double %i.jx, %i.kj
  %i.kl = fmul nsz double %i.kk, f0x3F60000000000000
  %i.km = call nsz double @llvm.cos.f64(double %i.kl)
  %i.kn = call nsz double @llvm.fmuladd.f64(double %i.kf, double %i.km, double %.0174224) ; 2 uses
  %indvars.iv.next284 = add nuw nsw i64 %indvars.iv283, 1 ; 2 uses
  %exitcond286.not = icmp eq i64 %indvars.iv.next284, 512
  br i1 %exitcond286.not, label %bb.v, label %bb.u, !llvm.loop !71

bb.v:                                             ; preds = %bb.u
  %i.ko = call nsz double @llvm.log10.f64(double %i.kn)
  %i.kp = fmul nsz double %i.ko, 2.000000e+02
  %i.kq = fptosi double %i.kp to i32
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv287
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !29
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %exitcond290.not = icmp eq i64 %indvars.iv.next288, 8
  br i1 %exitcond290.not, label %.preheader, label %.preheader195, !llvm.loop !72

.preheader:                                       ; preds = %bb.v, %bb.x
  %indvars.iv295 = phi i64 [ %indvars.iv.next296, %bb.x ], [ 0, %bb.v ] ; 3 uses
  %i.ks = trunc nuw nsw i64 %indvars.iv295 to i32
  %i.kt = uitofp nsz nneg i32 %i.ks to double
  %i.ku = fadd nnan nsz double %i.kt, 5.000000e-01
  br label %bb.w

bb.w:                                             ; preds = %.preheader, %bb.w
  %indvars.iv291 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next292, %bb.w ] ; 3 uses
  %.0173227 = phi double [ 0.000000e+00, %.preheader ], [ %i.lk, %bb.w ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr @ff_dca_fir_32bands_nonperfect, i64 %indvars.iv291
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !75
  %i.kx = trunc nuw nsw i64 %indvars.iv291 to i32 ; 2 uses
  %i.ky = and i32 %i.kx, 64
  %.not190 = icmp eq i32 %i.ky, 0
  %i.kz = select i1 %.not190, i32 1, i32 -1
  %i.la = sitofp nsz i32 %i.kz to float
  %i.lb = fmul nsz float %i.kw, %i.la
  %i.lc = fpext nsz float %i.lb to double
  %i.ld = uitofp nsz nneg i32 %i.kx to double
  %i.le = fadd nnan nsz double %i.ld, 5.000000e-01
  %i.lf = fadd nnan nsz double %i.le, -2.560000e+02
  %i.lg = fmul nnan nsz double %i.lf, f0x401921FB54442D18
  %i.lh = fmul nsz double %i.ku, %i.lg
  %i.li = fmul nsz double %i.lh, f0x3F60000000000000
  %i.lj = call nsz double @llvm.cos.f64(double %i.li)
  %i.lk = call nsz double @llvm.fmuladd.f64(double %i.lc, double %i.lj, double %.0173227) ; 2 uses
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next292, 512
  br i1 %exitcond294.not, label %bb.x, label %bb.w, !llvm.loop !73

bb.x:                                             ; preds = %bb.w
  %i.ll = call nsz double @llvm.log10.f64(double %i.lk)
  %i.lm = fmul nsz double %i.ll, 2.000000e+02
  %i.ln = fptosi double %i.lm to i32
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv295
  store i32 %i.ln, ptr %i.lo, align 4, !tbaa !29
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next296, 8
  br i1 %exitcond298.not, label %bb.y, label %.preheader, !llvm.loop !74

bb.y:                                             ; preds = %bb.x
  %i.lp = call i32 @pthread_once(ptr noundef nonnull @encode_init.init_static_once, ptr noundef nonnull @dcaenc_init_static_tables) #11 ; 0 uses
  br label %subband_bufer_alloc.exit.thread

subband_bufer_alloc.exit.thread:                  ; preds = %bb.l, %bb.a, %bb.o, %bb.n, %bb.b, %bb.y, %bb.m
  %.0 = phi i32 [ 0, %bb.y ], [ %i.fw, %bb.o ], [ -12, %bb.b ], [ -22, %bb.m ], [ -12, %bb.a ], [ -22, %bb.n ], [ -22, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 4 uses
  %i.b = alloca [512 x i32], align 16             ; 5 uses
  %i.c = alloca [256 x i32], align 16             ; 4 uses
  %i.d = alloca [256 x i32], align 16             ; 4 uses
  %i.e = alloca [256 x i32], align 16             ; 68 uses
  %i.f = alloca [512 x i32], align 16             ; 10 uses
  %i.g = alloca [512 x i32], align 16             ; 8 uses
  %i.h = alloca [512 x i32], align 16             ; 10 uses
  %i.i = alloca [64 x i32], align 16              ; 26 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 224 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !50
  %i.n = sext i32 %i.m to i64
  %i.o = tail call i32 @ff_get_encode_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %i.n, i32 noundef 0) #11 ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.mo, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %2, align 8, !tbaa !140    ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 22 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !38   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph96.i, label %subband_transform.exit

.lr.ph96.i:                                       ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 7056
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 104 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !40   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 41288 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 19344
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 112 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 160 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 176 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %.lr.ph96.i
  %indvars.iv140.i = phi i64 [ 0, %.lr.ph96.i ], [ %indvars.iv.next141.i, %bb.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv140.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !45
  %i.as = getelementptr inbounds nuw [2048 x i8], ptr %i.w, i64 %indvars.iv140.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(2048) %i.as, i64 2048, i1 false)
  %i.at = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %indvars.iv140.i
  %i.au = sext i8 %i.ar to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.q, i64 %i.au ; 32 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader76.i, %bb.c
  %indvars.iv136.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next137.i, %.preheader76.i ] ; 3 uses
  %.06594.i = phi i32 [ 0, %bb.c ], [ %i.kv, %.preheader76.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 0, i64 256, i1 false)
  %i.av = zext nneg i32 %.06594.i to i64          ; 5 uses
  %i.aw = sub nuw nsw i32 512, %.06594.i          ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.aw to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ax = icmp eq i32 %.06594.i, 511
  br i1 %i.ax, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.d
  %unroll_iter = and i64 %wide.trip.count.i, 1022
  br label %bb.e

.preheader80.i.unr-lcssa:                         ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader80.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader80.i.unr-lcssa, %bb.d
  %indvars.iv100.i.epil.init = phi i64 [ %i.av, %bb.d ], [ %indvars.iv.next101.i.1, %.preheader80.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.d ], [ %indvars.iv.next.i.1, %.preheader80.i.unr-lcssa ]
  %.06782.i.epil.init = phi i32 [ 0, %bb.d ], [ %i.cu, %.preheader80.i.unr-lcssa ] ; 2 uses
  %lcmp.mod646 = trunc i32 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod646)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv100.i.epil.init
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i.epil.init
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bc = sext i32 %i.az to i64
  %i.bd = sext i32 %i.bb to i64
  %i.be = mul nsw i64 %i.bd, %i.bc
  %i.bf = add nsw i64 %i.be, 2147483648
  %i.bg = lshr i64 %i.bf, 32
  %.0.i.i.i.i.epil = trunc nuw i64 %i.bg to i32
  %i.bh = zext nneg i32 %.06782.i.epil.init to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !29
  %i.bk = add nsw i32 %i.bj, %.0.i.i.i.i.epil
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !29
  %i.bl = add nuw nsw i32 %.06782.i.epil.init, 1
  %i.bm = and i32 %i.bl, 63
  br label %.preheader80.i

.preheader80.i:                                   ; preds = %.preheader80.i.unr-lcssa, %.epil.preheader
  %.lcssa642 = phi i32 [ %i.cu, %.preheader80.i.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 2 uses
  %.not97.i = icmp eq i32 %.06594.i, 0
  br i1 %.not97.i, label %.preheader79.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader80.i
  %i.bn = load ptr, ptr %i.x, align 8, !tbaa !40  ; 3 uses
  %xtraiter648 = and i64 %i.av, 1
  %i.bo = icmp eq i32 %.06594.i, 1
  br i1 %i.bo, label %.epil.preheader647, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter651 = and i64 %i.av, 510
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.new
  %indvars.iv100.i = phi i64 [ %i.av, %.new ], [ %indvars.iv.next101.i.1, %bb.e ] ; 3 uses
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.e ] ; 3 uses
  %.06782.i = phi i32 [ 0, %.new ], [ %i.cu, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.e ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv100.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !29
  %i.bt = sext i32 %i.bq to i64
  %i.bu = sext i32 %i.bs to i64
  %i.bv = mul nsw i64 %i.bu, %i.bt
  %i.bw = add nsw i64 %i.bv, 2147483648
  %i.bx = lshr i64 %i.bw, 32
  %.0.i.i.i.i = trunc nuw i64 %i.bx to i32
  %i.by = zext nneg i32 %.06782.i to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !29
  %i.cb = add nsw i32 %i.ca, %.0.i.i.i.i
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !29
  %i.cc = add nuw nsw i32 %.06782.i, 1
  %i.cd = and i32 %i.cc, 63
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv100.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !29
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !29
  %i.ck = sext i32 %i.cg to i64
  %i.cl = sext i32 %i.cj to i64
  %i.cm = mul nsw i64 %i.cl, %i.ck
  %i.cn = add nsw i64 %i.cm, 2147483648
  %i.co = lshr i64 %i.cn, 32
  %.0.i.i.i.i.1 = trunc nuw i64 %i.co to i32
  %i.cp = zext nneg i32 %i.cd to i64
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cp ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !29
  %i.cs = add nsw i32 %i.cr, %.0.i.i.i.i.1
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !29
  %i.ct = add nuw nsw i32 %.06782.i, 2
  %i.cu = and i32 %i.ct, 63                       ; 3 uses
  %indvars.iv.next101.i.1 = add nuw nsw i64 %indvars.iv100.i, 2 ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader80.i.unr-lcssa, label %bb.e, !llvm.loop !79

.preheader79.i.loopexit.unr-lcssa:                ; preds = %bb.f
  %lcmp.mod649.not = icmp eq i64 %xtraiter648, 0
  br i1 %lcmp.mod649.not, label %.preheader79.i, label %.epil.preheader647

.epil.preheader647:                               ; preds = %.preheader79.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv109.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next110.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %indvars.iv107.i.epil.init = phi i64 [ %wide.trip.count.i, %.lr.ph.i ], [ %indvars.iv.next108.i.1, %.preheader79.i.loopexit.unr-lcssa ]
  %.16885.i.epil.init = phi i32 [ %.lcssa642, %.lr.ph.i ], [ %i.ft, %.preheader79.i.loopexit.unr-lcssa ]
  %lcmp.mod650 = trunc i32 %.06594.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod650)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv109.i.epil.init
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv107.i.epil.init
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !29
  %i.cz = sext i32 %i.cw to i64
  %i.da = sext i32 %i.cy to i64
  %i.db = mul nsw i64 %i.da, %i.cz
  %i.dc = add nsw i64 %i.db, 2147483648
  %i.dd = lshr i64 %i.dc, 32
  %.0.i.i.i74.i.epil = trunc nuw i64 %i.dd to i32
  %i.de = zext nneg i32 %.16885.i.epil.init to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.de ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !29
  %i.dh = add nsw i32 %i.dg, %.0.i.i.i74.i.epil
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !29
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.epil.preheader647, %.preheader79.i.loopexit.unr-lcssa, %.preheader80.i
  %i.di = load <4 x i32>, ptr %i.ac, align 16, !tbaa !29
  %i.dj = load <4 x i32>, ptr %i.ad, align 16, !tbaa !29
  %i.dk = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dl = sub nsw <4 x i32> %i.di, %i.dk
  store <4 x i32> %i.dl, ptr %i.ac, align 16, !tbaa !29
  %i.dm = load <4 x i32>, ptr %i.ae, align 16, !tbaa !29
  %i.dn = load <4 x i32>, ptr %i.af, align 16, !tbaa !29
  %i.do = shufflevector <4 x i32> %i.dn, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dp = sub nsw <4 x i32> %i.dm, %i.do
  store <4 x i32> %i.dp, ptr %i.ae, align 16, !tbaa !29
  %i.dq = load <4 x i32>, ptr %i.ag, align 16, !tbaa !29
  %i.dr = load <4 x i32>, ptr %i.ah, align 16, !tbaa !29
  %i.ds = shufflevector <4 x i32> %i.dr, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dt = sub nsw <4 x i32> %i.dq, %i.ds
end_hunk_0
begin_hunk_1_@encode_frame:bb.a

bb.gx:                                            ; preds = %bb.gv
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %i.bxh = add nsw i32 %i.bwm, 29
  %.pre136.i = load i32, ptr %i.r, align 4, !tbaa !38
  br label %put_bits.exit77.i

put_bits.exit77.i:                                ; preds = %bb.gy, %bb.gu
  %i.bxi = phi i32 [ %i.bwl, %bb.gu ], [ %.pre136.i, %bb.gy ] ; 5 uses
  %.026.i.i75.i = phi i32 [ %i.bws, %bb.gu ], [ %i.bwp, %bb.gy ] ; 4 uses
  %.0.i.i76.i = phi i32 [ %i.bwt, %bb.gu ], [ %i.bxh, %bb.gy ] ; 4 uses
  store i32 %.026.i.i75.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %.0.i.i76.i, ptr %i.avz, align 4, !tbaa !155
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i138, 1 ; 2 uses
  %i.bxj = sext i32 %i.bxi to i64
  %i.bxk = icmp slt i64 %indvars.iv.next.i139, %i.bxj
  br i1 %i.bxk, label %bb.gt, label %.preheader88.i, !llvm.loop !118

.preheader87.i:                                   ; preds = %.preheader88.i, %._crit_edge.i140
  %i.bxl = phi i32 [ %i.bys, %._crit_edge.i140 ], [ %i.bxi, %.preheader88.i ] ; 2 uses
  %i.bxm = phi i32 [ %i.byt, %._crit_edge.i140 ], [ %.0.i.i76.i, %.preheader88.i ] ; 2 uses
  %i.bxn = phi i32 [ %i.byu, %._crit_edge.i140 ], [ %.026.i.i75.i, %.preheader88.i ] ; 2 uses
  %i.bxo = phi i32 [ %i.byv, %._crit_edge.i140 ], [ %i.bxi, %.preheader88.i ] ; 2 uses
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %._crit_edge.i140 ], [ 0, %.preheader88.i ] ; 3 uses
  %i.bxp = icmp sgt i32 %i.bxo, 0
  br i1 %i.bxp, label %.lr.ph106.i, label %._crit_edge.i140

.lr.ph106.i:                                      ; preds = %.preheader87.i
  %i.bxq = getelementptr inbounds nuw i8, ptr @ff_dca_quant_index_sel_nbits, i64 %indvars.iv121.i
  %i.bxr = load i8, ptr %i.bxq, align 1, !tbaa !45
  %i.bxs = zext i8 %i.bxr to i32                  ; 5 uses
  %invariant.gep.i147 = getelementptr inbounds nuw [4 x i8], ptr %i.bwj, i64 %indvars.iv121.i
  %invariant.op = sub i32 32, %i.bxs
  br label %bb.gz

.preheader86.i:                                   ; preds = %._crit_edge.i140
  %i.bxt = icmp sgt i32 %i.bys, 0
  br i1 %i.bxt, label %.preheader.i142, label %put_primary_audio_header.exit

bb.gz:                                            ; preds = %put_bits.exit81.i, %.lr.ph106.i
  %i.bxu = phi i32 [ %i.bxl, %.lr.ph106.i ], [ %i.byp, %put_bits.exit81.i ]
  %i.bxv = phi i32 [ %i.bxm, %.lr.ph106.i ], [ %.0.i.i80.i, %put_bits.exit81.i ] ; 5 uses
  %i.bxw = phi i32 [ %i.bxn, %.lr.ph106.i ], [ %.026.i.i79.i, %put_bits.exit81.i ] ; 2 uses
  %indvars.iv118.i = phi i64 [ 0, %.lr.ph106.i ], [ %indvars.iv.next119.i, %put_bits.exit81.i ] ; 2 uses
  %gep.i148 = getelementptr inbounds nuw [40 x i8], ptr %invariant.gep.i147, i64 %indvars.iv118.i
  %i.bxx = load i32, ptr %gep.i148, align 4, !tbaa !29 ; 3 uses
  %i.bxy = icmp sgt i32 %i.bxv, %i.bxs
  br i1 %i.bxy, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.bxz = shl i32 %i.bxw, %i.bxs
  %i.bya = or i32 %i.bxx, %i.bxz
  %i.byb = sub nuw nsw i32 %i.bxv, %i.bxs
  br label %put_bits.exit81.i

bb.hb:                                            ; preds = %bb.gz
  %i.byc = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.byd = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.bye = ptrtoint ptr %i.byc to i64
  %i.byf = ptrtoint ptr %i.byd to i64
  %i.byg = sub i64 %i.bye, %i.byf
  %i.byh = icmp ugt i64 %i.byg, 3
  br i1 %i.byh, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.byi = shl i32 %i.bxw, %i.bxv
  %i.byj = sub nsw i32 %i.bxs, %i.bxv
  %i.byk = lshr i32 %i.bxx, %i.byj
  %i.byl = or i32 %i.byk, %i.byi
  %i.bym = call i32 @llvm.bswap.i32(i32 %i.byl)
  store i32 %i.bym, ptr %i.byd, align 1, !tbaa !45
  %i.byn = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.byo = getelementptr inbounds nuw i8, ptr %i.byn, i64 4
  store ptr %i.byo, ptr %i.avy, align 8, !tbaa !154
  br label %bb.he

bb.hd:                                            ; preds = %bb.hb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc
  %.reass.i.reass.reass = add i32 %i.bxv, %invariant.op
  %.pre137.i = load i32, ptr %i.r, align 4, !tbaa !38
  br label %put_bits.exit81.i

put_bits.exit81.i:                                ; preds = %bb.he, %bb.ha
  %i.byp = phi i32 [ %i.bxu, %bb.ha ], [ %.pre137.i, %bb.he ] ; 4 uses
  %.026.i.i79.i = phi i32 [ %i.bya, %bb.ha ], [ %i.bxx, %bb.he ] ; 3 uses
  %.0.i.i80.i = phi i32 [ %i.byb, %bb.ha ], [ %.reass.i.reass.reass, %bb.he ] ; 3 uses
  store i32 %.026.i.i79.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %.0.i.i80.i, ptr %i.avz, align 4, !tbaa !155
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %i.byq = sext i32 %i.byp to i64
  %i.byr = icmp slt i64 %indvars.iv.next119.i, %i.byq
  br i1 %i.byr, label %bb.gz, label %._crit_edge.i140, !llvm.loop !119

._crit_edge.i140:                                 ; preds = %put_bits.exit81.i, %.preheader87.i
  %i.bys = phi i32 [ %i.bxl, %.preheader87.i ], [ %i.byp, %put_bits.exit81.i ] ; 5 uses
  %i.byt = phi i32 [ %i.bxm, %.preheader87.i ], [ %.0.i.i80.i, %put_bits.exit81.i ] ; 3 uses
  %i.byu = phi i32 [ %i.bxn, %.preheader87.i ], [ %.026.i.i79.i, %put_bits.exit81.i ] ; 3 uses
  %i.byv = phi i32 [ %i.bxo, %.preheader87.i ], [ %i.byp, %put_bits.exit81.i ]
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 2 uses
  %exitcond.not.i141 = icmp eq i64 %indvars.iv.next122.i, 10
  br i1 %exitcond.not.i141, label %.preheader86.i, label %.preheader87.i, !llvm.loop !120

.preheader.i142:                                  ; preds = %.preheader86.i, %._crit_edge110.i
  %.pre138139.i = phi i32 [ %.pre138140.i, %._crit_edge110.i ], [ %i.bys, %.preheader86.i ] ; 2 uses
  %i.byw = phi i32 [ %i.cac, %._crit_edge110.i ], [ %i.bys, %.preheader86.i ] ; 2 uses
  %i.byx = phi i32 [ %i.cad, %._crit_edge110.i ], [ %i.byt, %.preheader86.i ] ; 2 uses
  %i.byy = phi i32 [ %i.cae, %._crit_edge110.i ], [ %i.byu, %.preheader86.i ] ; 2 uses
  %i.byz = phi i32 [ %i.caf, %._crit_edge110.i ], [ %i.bys, %.preheader86.i ] ; 2 uses
  %indvars.iv127.i143 = phi i64 [ %indvars.iv.next128.i144, %._crit_edge110.i ], [ 0, %.preheader86.i ] ; 3 uses
  %i.bza = icmp sgt i32 %i.byz, 0
  br i1 %i.bza, label %.lr.ph109.i, label %._crit_edge110.i

.lr.ph109.i:                                      ; preds = %.preheader.i142
  %invariant.gep111.i = getelementptr inbounds nuw [4 x i8], ptr %i.bwj, i64 %indvars.iv127.i143
  %i.bzb = getelementptr inbounds nuw i8, ptr @ff_dca_quant_index_group_size, i64 %indvars.iv127.i143
  %i.bzc = load i8, ptr %i.bzb, align 1, !tbaa !45
  %i.bzd = zext i8 %i.bzc to i32
  br label %bb.hf

bb.hf:                                            ; preds = %bb.hm, %.lr.ph109.i
  %.pre138141.i = phi i32 [ %.pre138139.i, %.lr.ph109.i ], [ %.pre138142.i, %bb.hm ] ; 2 uses
  %i.bze = phi i32 [ %i.byw, %.lr.ph109.i ], [ %i.bzx, %bb.hm ]
  %i.bzf = phi i32 [ %i.byx, %.lr.ph109.i ], [ %i.bzy, %bb.hm ] ; 5 uses
  %i.bzg = phi i32 [ %i.byy, %.lr.ph109.i ], [ %i.bzz, %bb.hm ] ; 3 uses
  %indvars.iv124.i145 = phi i64 [ 0, %.lr.ph109.i ], [ %indvars.iv.next125.i146, %bb.hm ] ; 2 uses
  %gep112.i = getelementptr inbounds nuw [40 x i8], ptr %invariant.gep111.i, i64 %indvars.iv124.i145
  %i.bzh = load i32, ptr %gep112.i, align 4, !tbaa !29
  %i.bzi = icmp slt i32 %i.bzh, %i.bzd
  br i1 %i.bzi, label %bb.hg, label %bb.hm

bb.hg:                                            ; preds = %bb.hf
  %i.bzj = icmp sgt i32 %i.bzf, 2
  br i1 %i.bzj, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.bzk = shl i32 %i.bzg, 2
  %i.bzl = add nsw i32 %i.bzf, -2
  br label %put_bits.exit85.i

bb.hi:                                            ; preds = %bb.hg
  %i.bzm = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.bzn = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.bzo = ptrtoint ptr %i.bzm to i64
  %i.bzp = ptrtoint ptr %i.bzn to i64
  %i.bzq = sub i64 %i.bzo, %i.bzp
  %i.bzr = icmp ugt i64 %i.bzq, 3
  br i1 %i.bzr, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.bzs = shl i32 %i.bzg, %i.bzf
  %i.bzt = call i32 @llvm.bswap.i32(i32 %i.bzs)
  store i32 %i.bzt, ptr %i.bzn, align 1, !tbaa !45
  %i.bzu = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.bzu, i64 4
  store ptr %i.bzv, ptr %i.avy, align 8, !tbaa !154
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.bzw = add nsw i32 %i.bzf, 30
  %.pre138.pre.i = load i32, ptr %i.r, align 4, !tbaa !38
  br label %put_bits.exit85.i

put_bits.exit85.i:                                ; preds = %bb.hl, %bb.hh
  %.pre138.i = phi i32 [ %.pre138141.i, %bb.hh ], [ %.pre138.pre.i, %bb.hl ] ; 2 uses
  %.026.i.i83.i = phi i32 [ %i.bzk, %bb.hh ], [ 0, %bb.hl ] ; 2 uses
  %.0.i.i84.i = phi i32 [ %i.bzl, %bb.hh ], [ %i.bzw, %bb.hl ] ; 2 uses
  store i32 %.026.i.i83.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %.0.i.i84.i, ptr %i.avz, align 4, !tbaa !155
  br label %bb.hm

bb.hm:                                            ; preds = %put_bits.exit85.i, %bb.hf
  %.pre138142.i = phi i32 [ %.pre138141.i, %bb.hf ], [ %.pre138.i, %put_bits.exit85.i ] ; 2 uses
  %i.bzx = phi i32 [ %i.bze, %bb.hf ], [ %.pre138.i, %put_bits.exit85.i ] ; 4 uses
  %i.bzy = phi i32 [ %i.bzf, %bb.hf ], [ %.0.i.i84.i, %put_bits.exit85.i ] ; 2 uses
  %i.bzz = phi i32 [ %i.bzg, %bb.hf ], [ %.026.i.i83.i, %put_bits.exit85.i ] ; 2 uses
  %indvars.iv.next125.i146 = add nuw nsw i64 %indvars.iv124.i145, 1 ; 2 uses
  %i.caa = sext i32 %i.bzx to i64
  %i.cab = icmp slt i64 %indvars.iv.next125.i146, %i.caa
  br i1 %i.cab, label %bb.hf, label %._crit_edge110.i, !llvm.loop !121

._crit_edge110.i:                                 ; preds = %bb.hm, %.preheader.i142
  %.pre138140.i = phi i32 [ %.pre138139.i, %.preheader.i142 ], [ %.pre138142.i, %bb.hm ]
  %i.cac = phi i32 [ %i.byw, %.preheader.i142 ], [ %i.bzx, %bb.hm ]
  %i.cad = phi i32 [ %i.byx, %.preheader.i142 ], [ %i.bzy, %bb.hm ] ; 2 uses
  %i.cae = phi i32 [ %i.byy, %.preheader.i142 ], [ %i.bzz, %bb.hm ] ; 2 uses
  %i.caf = phi i32 [ %i.byz, %.preheader.i142 ], [ %i.bzx, %bb.hm ]
  %indvars.iv.next128.i144 = add nuw nsw i64 %indvars.iv127.i143, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next128.i144, 10
  br i1 %exitcond130.not.i, label %put_primary_audio_header.exit, label %.preheader.i142, !llvm.loop !122

put_primary_audio_header.exit:                    ; preds = %._crit_edge110.i, %put_bits.exit53.i, %.preheader93.i, %.preheader92.i, %.preheader91.i, %.preheader90.i, %.preheader89.i, %.preheader88.i, %.preheader86.i
  %i.cag = phi i32 [ %i.byt, %.preheader86.i ], [ %.0.i.i52.i, %put_bits.exit53.i ], [ %.0.i.i56.i, %.preheader93.i ], [ %.0.i.i60.i, %.preheader92.i ], [ %.0.i.i64.i, %.preheader91.i ], [ %.0.i.i68.i, %.preheader90.i ], [ %.0.i.i72.i, %.preheader89.i ], [ %.0.i.i76.i, %.preheader88.i ], [ %i.cad, %._crit_edge110.i ] ; 4 uses
  %i.cah = phi i32 [ %i.byu, %.preheader86.i ], [ %.026.i.i51.i, %put_bits.exit53.i ], [ %.026.i.i55.i, %.preheader93.i ], [ %.026.i.i59.i, %.preheader92.i ], [ %.026.i.i63.i, %.preheader91.i ], [ %.026.i.i67.i, %.preheader90.i ], [ %.026.i.i71.i, %.preheader89.i ], [ %.026.i.i75.i, %.preheader88.i ], [ %i.cae, %._crit_edge110.i ] ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.k, i64 36784
  %6 = getelementptr inbounds nuw i8, ptr %i.k, i64 36808 ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.k, i64 37576
  %8 = getelementptr inbounds nuw i8, ptr %i.k, i64 34704
  %9 = getelementptr inbounds nuw i8, ptr %i.k, i64 124
  %10 = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %11 = getelementptr inbounds nuw i8, ptr %i.k, i64 39880
  %12 = getelementptr inbounds nuw i8, ptr %i.k, i64 20880
  %i.cai = icmp sgt i32 %i.cag, 2
  br i1 %i.cai, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %put_primary_audio_header.exit
  %i.caj = shl i32 %i.cah, 2
  %i.cak = or disjoint i32 %i.caj, 1
  br label %put_bits.exit.i149

bb.ho:                                            ; preds = %put_primary_audio_header.exit
  %i.cal = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cam = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.can = ptrtoint ptr %i.cal to i64
  %i.cao = ptrtoint ptr %i.cam to i64
  %i.cap = sub i64 %i.can, %i.cao
  %i.caq = icmp ugt i64 %i.cap, 3
  br i1 %i.caq, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.car = shl i32 %i.cah, %i.cag
  %i.cas = icmp eq i32 %i.cag, 2
  %i.cat = zext i1 %i.cas to i32
  %i.cau = or i32 %i.car, %i.cat
  %i.cav = call i32 @llvm.bswap.i32(i32 %i.cau)
  store i32 %i.cav, ptr %i.cam, align 1, !tbaa !45
  %i.caw = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 4
  store ptr %i.cax, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit.i149

bb.hq:                                            ; preds = %bb.ho
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit.i149

put_bits.exit.i149:                               ; preds = %bb.hq, %bb.hp, %bb.hn
  %.sink.i150 = phi i32 [ -2, %bb.hn ], [ 30, %bb.hq ], [ 30, %bb.hp ]
  %.026.i.i.i151 = phi i32 [ %i.cak, %bb.hn ], [ 1, %bb.hq ], [ 1, %bb.hp ] ; 3 uses
  %i.cay = add nsw i32 %.sink.i150, %i.cag        ; 4 uses
  store i32 %.026.i.i.i151, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cay, ptr %i.avz, align 4, !tbaa !155
  %i.caz = icmp sgt i32 %i.cay, 3
  br i1 %i.caz, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %put_bits.exit.i149
  %i.cba = shl i32 %.026.i.i.i151, 3
  br label %put_bits.exit99.i152

bb.hs:                                            ; preds = %put_bits.exit.i149
  %i.cbb = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cbc = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cbd = ptrtoint ptr %i.cbb to i64
  %i.cbe = ptrtoint ptr %i.cbc to i64
  %i.cbf = sub i64 %i.cbd, %i.cbe
  %i.cbg = icmp ugt i64 %i.cbf, 3
  br i1 %i.cbg, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.cbh = shl i32 %.026.i.i.i151, %i.cay
  %i.cbi = call i32 @llvm.bswap.i32(i32 %i.cbh)
  store i32 %i.cbi, ptr %i.cbc, align 1, !tbaa !45
  %i.cbj = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cbk = getelementptr inbounds nuw i8, ptr %i.cbj, i64 4
  store ptr %i.cbk, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit99.i152

bb.hu:                                            ; preds = %bb.hs
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit99.i152

put_bits.exit99.i152:                             ; preds = %bb.hu, %bb.ht, %bb.hr
  %.sink332.i = phi i32 [ -3, %bb.hr ], [ 29, %bb.hu ], [ 29, %bb.ht ]
  %.026.i.i97.i153 = phi i32 [ %i.cba, %bb.hr ], [ 0, %bb.hu ], [ 0, %bb.ht ] ; 3 uses
  %i.cbl = add nsw i32 %.sink332.i, %i.cay        ; 3 uses
  store i32 %.026.i.i97.i153, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cbl, ptr %i.avz, align 4, !tbaa !155
  %i.cbm = load i32, ptr %i.r, align 4, !tbaa !38 ; 2 uses
  %i.cbn = icmp sgt i32 %i.cbm, 0
  br i1 %i.cbn, label %.preheader157.i, label %._crit_edge.i154

.preheader157.i:                                  ; preds = %put_bits.exit99.i152, %bb.ia
  %i.cbo = phi i32 [ %i.cco, %bb.ia ], [ %i.cbl, %put_bits.exit99.i152 ]
  %i.cbp = phi i32 [ %.026.i.i101.i168, %bb.ia ], [ %.026.i.i97.i153, %put_bits.exit99.i152 ]
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %bb.ia ], [ 0, %put_bits.exit99.i152 ] ; 2 uses
  %i.cbq = getelementptr inbounds nuw [128 x i8], ptr %4, i64 %indvars.iv189.i
  br label %bb.hv

.preheader156.i:                                  ; preds = %bb.ia
  %i.cbr = icmp sgt i32 %i.ccp, 0
  br i1 %i.cbr, label %.preheader155.i, label %._crit_edge.i154

bb.hv:                                            ; preds = %put_bits.exit103.i167, %.preheader157.i
  %i.cbs = phi i32 [ %i.cbo, %.preheader157.i ], [ %i.cco, %put_bits.exit103.i167 ] ; 4 uses
  %i.cbt = phi i32 [ %i.cbp, %.preheader157.i ], [ %.026.i.i101.i168, %put_bits.exit103.i167 ] ; 2 uses
  %indvars.iv.i166 = phi i64 [ 0, %.preheader157.i ], [ %indvars.iv.next.i169, %put_bits.exit103.i167 ] ; 2 uses
  %i.cbu = getelementptr inbounds nuw [4 x i8], ptr %i.cbq, i64 %indvars.iv.i166
  %i.cbv = load i32, ptr %i.cbu, align 4, !tbaa !29
  %i.cbw = icmp ne i32 %i.cbv, -1
  %i.cbx = zext i1 %i.cbw to i32                  ; 4 uses
  %i.cby = icmp sgt i32 %i.cbs, 1
  br i1 %i.cby, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.cbz = shl i32 %i.cbt, 1
  %i.cca = or disjoint i32 %i.cbz, %i.cbx
  br label %put_bits.exit103.i167

bb.hx:                                            ; preds = %bb.hv
  %i.ccb = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.ccc = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.ccd = ptrtoint ptr %i.ccb to i64
  %i.cce = ptrtoint ptr %i.ccc to i64
  %i.ccf = sub i64 %i.ccd, %i.cce
  %i.ccg = icmp ugt i64 %i.ccf, 3
  br i1 %i.ccg, label %bb.hy, label %bb.hz

bb.hy:                                            ; preds = %bb.hx
  %i.cch = shl i32 %i.cbt, %i.cbs
  %i.cci = sub nsw i32 1, %i.cbs
  %i.ccj = lshr i32 %i.cbx, %i.cci
  %i.cck = or i32 %i.ccj, %i.cch
  %i.ccl = call i32 @llvm.bswap.i32(i32 %i.cck)
  store i32 %i.ccl, ptr %i.ccc, align 1, !tbaa !45
  %i.ccm = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccm, i64 4
  store ptr %i.ccn, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit103.i167

bb.hz:                                            ; preds = %bb.hx
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit103.i167

put_bits.exit103.i167:                            ; preds = %bb.hz, %bb.hy, %bb.hw
  %.sink333.i = phi i32 [ -1, %bb.hw ], [ 31, %bb.hz ], [ 31, %bb.hy ]
  %.026.i.i101.i168 = phi i32 [ %i.cca, %bb.hw ], [ %i.cbx, %bb.hz ], [ %i.cbx, %bb.hy ] ; 5 uses
  %i.cco = add nsw i32 %.sink333.i, %i.cbs        ; 5 uses
  store i32 %.026.i.i101.i168, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cco, ptr %i.avz, align 4, !tbaa !155
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i166, 1 ; 2 uses
  %exitcond.not.i170 = icmp eq i64 %indvars.iv.next.i169, 32
  br i1 %exitcond.not.i170, label %bb.ia, label %bb.hv, !llvm.loop !123

bb.ia:                                            ; preds = %put_bits.exit103.i167
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.ccp = load i32, ptr %i.r, align 4, !tbaa !38 ; 3 uses
  %i.ccq = sext i32 %i.ccp to i64
  %i.ccr = icmp slt i64 %indvars.iv.next190.i, %i.ccq
  br i1 %i.ccr, label %.preheader157.i, label %.preheader156.i, !llvm.loop !124

.preheader155.i:                                  ; preds = %.preheader156.i, %bb.ii
  %i.ccs = phi i32 [ %i.cds, %bb.ii ], [ %i.cco, %.preheader156.i ]
  %i.cct = phi i32 [ %i.cdt, %bb.ii ], [ %.026.i.i101.i168, %.preheader156.i ]
  %indvars.iv196.i = phi i64 [ %indvars.iv.next197.i, %bb.ii ], [ 0, %.preheader156.i ] ; 2 uses
  %i.ccu = getelementptr inbounds nuw [128 x i8], ptr %4, i64 %indvars.iv196.i
  br label %bb.ib

.preheader154.i:                                  ; preds = %bb.ii
  %i.ccv = icmp sgt i32 %i.cdu, 0
  br i1 %i.ccv, label %.lr.ph.i171.a, label %._crit_edge.i154

bb.ib:                                            ; preds = %bb.ih, %.preheader155.i
  %i.ccw = phi i32 [ %i.ccs, %.preheader155.i ], [ %i.cds, %bb.ih ] ; 5 uses
  %i.ccx = phi i32 [ %i.cct, %.preheader155.i ], [ %i.cdt, %bb.ih ] ; 3 uses
  %indvars.iv192.i = phi i64 [ 0, %.preheader155.i ], [ %indvars.iv.next193.i, %bb.ih ] ; 2 uses
  %i.ccy = getelementptr inbounds nuw [4 x i8], ptr %i.ccu, i64 %indvars.iv192.i
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !29 ; 5 uses
  %i.cda = icmp sgt i32 %i.ccz, -1
  br i1 %i.cda, label %bb.ic, label %bb.ih

bb.ic:                                            ; preds = %bb.ib
  %i.cdb = icmp sgt i32 %i.ccw, 12
  br i1 %i.cdb, label %bb.id, label %bb.ie

bb.id:                                            ; preds = %bb.ic
  %i.cdc = shl i32 %i.ccx, 12
  %i.cdd = or i32 %i.ccz, %i.cdc
  br label %put_bits.exit107.i178

bb.ie:                                            ; preds = %bb.ic
  %i.cde = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cdf = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cdg = ptrtoint ptr %i.cde to i64
  %i.cdh = ptrtoint ptr %i.cdf to i64
  %i.cdi = sub i64 %i.cdg, %i.cdh
  %i.cdj = icmp ugt i64 %i.cdi, 3
  br i1 %i.cdj, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.cdk = shl i32 %i.ccx, %i.ccw
  %i.cdl = sub nsw i32 12, %i.ccw
  %i.cdm = lshr i32 %i.ccz, %i.cdl
  %i.cdn = or i32 %i.cdm, %i.cdk
  %i.cdo = call i32 @llvm.bswap.i32(i32 %i.cdn)
  store i32 %i.cdo, ptr %i.cdf, align 1, !tbaa !45
  %i.cdp = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 4
  store ptr %i.cdq, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit107.i178

bb.ig:                                            ; preds = %bb.ie
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit107.i178

put_bits.exit107.i178:                            ; preds = %bb.ig, %bb.if, %bb.id
  %.sink334.i = phi i32 [ -12, %bb.id ], [ 20, %bb.ig ], [ 20, %bb.if ]
  %.026.i.i105.i179 = phi i32 [ %i.cdd, %bb.id ], [ %i.ccz, %bb.ig ], [ %i.ccz, %bb.if ] ; 2 uses
  %i.cdr = add nsw i32 %.sink334.i, %i.ccw        ; 2 uses
  store i32 %.026.i.i105.i179, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cdr, ptr %i.avz, align 4, !tbaa !155
  br label %bb.ih

bb.ih:                                            ; preds = %put_bits.exit107.i178, %bb.ib
  %i.cds = phi i32 [ %i.ccw, %bb.ib ], [ %i.cdr, %put_bits.exit107.i178 ] ; 4 uses
  %i.cdt = phi i32 [ %i.ccx, %bb.ib ], [ %.026.i.i105.i179, %put_bits.exit107.i178 ] ; 4 uses
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %exitcond195.not.i = icmp eq i64 %indvars.iv.next193.i, 32
  br i1 %exitcond195.not.i, label %bb.ii, label %bb.ib, !llvm.loop !125

bb.ii:                                            ; preds = %bb.ih
  %indvars.iv.next197.i = add nuw nsw i64 %indvars.iv196.i, 1 ; 2 uses
  %i.cdu = load i32, ptr %i.r, align 4, !tbaa !38 ; 3 uses
  %i.cdv = sext i32 %i.cdu to i64
  %i.cdw = icmp slt i64 %indvars.iv.next197.i, %i.cdv
  br i1 %i.cdw, label %.preheader155.i, label %.preheader154.i, !llvm.loop !126

.preheader151.i:                                  ; preds = %dca_vlc_enc_alloc.exit.i
  %i.cdx = icmp sgt i32 %i.cgb, 0
  br i1 %i.cdx, label %.preheader150.i, label %._crit_edge.i154

.lr.ph.i171.a:                                    ; preds = %.preheader154.i, %dca_vlc_enc_alloc.exit.i
  %.pre11.i.i = phi i32 [ %.pre11.i238.i, %dca_vlc_enc_alloc.exit.i ], [ %i.cds, %.preheader154.i ] ; 2 uses
  %.pre.i.i = phi i32 [ %.pre.i235.i, %dca_vlc_enc_alloc.exit.i ], [ %i.cdt, %.preheader154.i ] ; 2 uses
  %indvars.iv203.i = phi i64 [ %indvars.iv.next204.i, %dca_vlc_enc_alloc.exit.i ], [ 0, %.preheader154.i ] ; 3 uses
  %i.cdy = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv203.i
  %i.cdz = load i32, ptr %i.cdy, align 4, !tbaa !29 ; 2 uses
  %i.cea = icmp eq i32 %i.cdz, 6
  %i.ceb = getelementptr inbounds nuw [128 x i8], ptr %6, i64 %indvars.iv203.i ; 2 uses
  br i1 %i.cea, label %.preheader152.i, label %bb.in

.preheader152.i:                                  ; preds = %.lr.ph.i171.a, %put_bits.exit111.i176
  %i.cec = phi i32 [ %i.cew, %put_bits.exit111.i176 ], [ %.pre11.i.i, %.lr.ph.i171.a ] ; 4 uses
  %i.ced = phi i32 [ %.026.i.i109.i177, %put_bits.exit111.i176 ], [ %.pre.i.i, %.lr.ph.i171.a ] ; 2 uses
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i, %put_bits.exit111.i176 ], [ 0, %.lr.ph.i171.a ] ; 2 uses
  %i.cee = getelementptr inbounds nuw [4 x i8], ptr %i.ceb, i64 %indvars.iv199.i
  %i.cef = load i32, ptr %i.cee, align 4, !tbaa !29 ; 4 uses
  %i.ceg = icmp sgt i32 %i.cec, 5
  br i1 %i.ceg, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %.preheader152.i
  %i.ceh = shl i32 %i.ced, 5
  %i.cei = or i32 %i.cef, %i.ceh
  br label %put_bits.exit111.i176

bb.ik:                                            ; preds = %.preheader152.i
  %i.cej = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cek = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cel = ptrtoint ptr %i.cej to i64
  %i.cem = ptrtoint ptr %i.cek to i64
  %i.cen = sub i64 %i.cel, %i.cem
  %i.ceo = icmp ugt i64 %i.cen, 3
  br i1 %i.ceo, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.cep = shl i32 %i.ced, %i.cec
  %i.ceq = sub nsw i32 5, %i.cec
  %i.cer = lshr i32 %i.cef, %i.ceq
  %i.ces = or i32 %i.cer, %i.cep
  %i.cet = call i32 @llvm.bswap.i32(i32 %i.ces)
  store i32 %i.cet, ptr %i.cek, align 1, !tbaa !45
  %i.ceu = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cev = getelementptr inbounds nuw i8, ptr %i.ceu, i64 4
  store ptr %i.cev, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit111.i176

bb.im:                                            ; preds = %bb.ik
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit111.i176

put_bits.exit111.i176:                            ; preds = %bb.im, %bb.il, %bb.ij
  %.sink335.i = phi i32 [ -5, %bb.ij ], [ 27, %bb.im ], [ 27, %bb.il ]
  %.026.i.i109.i177 = phi i32 [ %i.cei, %bb.ij ], [ %i.cef, %bb.im ], [ %i.cef, %bb.il ] ; 3 uses
  %i.cew = add nsw i32 %.sink335.i, %i.cec        ; 3 uses
  store i32 %.026.i.i109.i177, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cew, ptr %i.avz, align 4, !tbaa !155
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %indvars.iv.next200.i, 32
  br i1 %exitcond202.not.i, label %dca_vlc_enc_alloc.exit.i, label %.preheader152.i, !llvm.loop !127

bb.in:                                            ; preds = %.lr.ph.i171.a
  %i.cex = and i32 %i.cdz, 255
  %i.cey = zext nneg i32 %i.cex to i64
  %i.cez = getelementptr inbounds nuw [52 x i8], ptr @bitalloc_12_table, i64 %i.cey
  br label %bb.io

bb.io:                                            ; preds = %put_bits.exit.i.i, %bb.in
  %i.cfa = phi i32 [ %.pre11.i.i, %bb.in ], [ %.0.i.i.i.i173, %put_bits.exit.i.i ] ; 5 uses
  %i.cfb = phi i32 [ %.pre.i.i, %bb.in ], [ %.026.i.i.i.i, %put_bits.exit.i.i ] ; 2 uses
  %indvars.iv.i.i172 = phi i64 [ 0, %bb.in ], [ %indvars.iv.next.i.i174, %put_bits.exit.i.i ] ; 2 uses
  %i.cfc = getelementptr inbounds nuw [4 x i8], ptr %i.ceb, i64 %indvars.iv.i.i172
  %i.cfd = load i32, ptr %i.cfc, align 4, !tbaa !29
  %i.cfe = sext i32 %i.cfd to i64
  %i.cff = getelementptr inbounds [4 x i8], ptr %i.cez, i64 %i.cfe ; 2 uses
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cff, i64 2
  %i.cfh = load i16, ptr %i.cfg, align 2, !tbaa !54
  %i.cfi = zext i16 %i.cfh to i32                 ; 4 uses
  %i.cfj = load i16, ptr %i.cff, align 4, !tbaa !54
  %i.cfk = zext i16 %i.cfj to i32                 ; 3 uses
  %i.cfl = icmp sgt i32 %i.cfa, %i.cfi
  br i1 %i.cfl, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.cfm = shl i32 %i.cfb, %i.cfi
  %i.cfn = or i32 %i.cfm, %i.cfk
  br label %put_bits.exit.i.i

bb.iq:                                            ; preds = %bb.io
  %i.cfo = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cfp = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cfq = ptrtoint ptr %i.cfo to i64
  %i.cfr = ptrtoint ptr %i.cfp to i64
  %i.cfs = sub i64 %i.cfq, %i.cfr
  %i.cft = icmp ugt i64 %i.cfs, 3
  br i1 %i.cft, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.cfu = shl i32 %i.cfb, %i.cfa
  %i.cfv = sub nsw i32 %i.cfi, %i.cfa
  %i.cfw = lshr i32 %i.cfk, %i.cfv
  %i.cfx = or i32 %i.cfw, %i.cfu
  %i.cfy = call i32 @llvm.bswap.i32(i32 %i.cfx)
  store i32 %i.cfy, ptr %i.cfp, align 1, !tbaa !45
  %i.cfz = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cga = getelementptr inbounds nuw i8, ptr %i.cfz, i64 4
  store ptr %i.cga, ptr %i.avy, align 8, !tbaa !154
  br label %bb.it

bb.is:                                            ; preds = %bb.iq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %bb.it

bb.it:                                            ; preds = %bb.is, %bb.ir
  %reass.sub.i112.i = add nsw i32 %i.cfa, 32
  br label %put_bits.exit.i.i

put_bits.exit.i.i:                                ; preds = %bb.it, %bb.ip
  %.026.i.i.i.i = phi i32 [ %i.cfn, %bb.ip ], [ %i.cfk, %bb.it ] ; 3 uses
  %.pn.i = phi i32 [ %i.cfa, %bb.ip ], [ %reass.sub.i112.i, %bb.it ]
  %.0.i.i.i.i173 = sub i32 %.pn.i, %i.cfi         ; 3 uses
  store i32 %.026.i.i.i.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %.0.i.i.i.i173, ptr %i.avz, align 4, !tbaa !155
  %indvars.iv.next.i.i174 = add nuw nsw i64 %indvars.iv.i.i172, 1 ; 2 uses
  %exitcond.not.i.i175 = icmp eq i64 %indvars.iv.next.i.i174, 32
  br i1 %exitcond.not.i.i175, label %dca_vlc_enc_alloc.exit.i, label %bb.io, !llvm.loop !128

dca_vlc_enc_alloc.exit.i:                         ; preds = %put_bits.exit.i.i, %put_bits.exit111.i176
  %.pre11.i238.i = phi i32 [ %i.cew, %put_bits.exit111.i176 ], [ %.0.i.i.i.i173, %put_bits.exit.i.i ] ; 3 uses
  %.pre.i235.i = phi i32 [ %.026.i.i109.i177, %put_bits.exit111.i176 ], [ %.026.i.i.i.i, %put_bits.exit.i.i ] ; 3 uses
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %i.cgb = load i32, ptr %i.r, align 4, !tbaa !38 ; 3 uses
  %i.cgc = sext i32 %i.cgb to i64
  %i.cgd = icmp slt i64 %indvars.iv.next204.i, %i.cgc
  br i1 %i.cgd, label %.lr.ph.i171.a, label %.preheader151.i, !llvm.loop !129

.preheader150.i:                                  ; preds = %.preheader151.i, %bb.jb
  %i.cge = phi i32 [ %i.cgz, %bb.jb ], [ %.pre11.i238.i, %.preheader151.i ]
  %i.cgf = phi i32 [ %i.cha, %bb.jb ], [ %.pre.i235.i, %.preheader151.i ]
  %indvars.iv210.i = phi i64 [ %indvars.iv.next211.i, %bb.jb ], [ 0, %.preheader151.i ] ; 2 uses
  %i.cgg = getelementptr inbounds nuw [128 x i8], ptr %6, i64 %indvars.iv210.i
  br label %bb.iu

.preheader149.i:                                  ; preds = %bb.jb
  %i.cgh = icmp sgt i32 %i.chb, 0
  br i1 %i.cgh, label %.preheader148.i, label %._crit_edge.i154

bb.iu:                                            ; preds = %bb.ja, %.preheader150.i
  %i.cgi = phi i32 [ %i.cge, %.preheader150.i ], [ %i.cgz, %bb.ja ] ; 4 uses
  %i.cgj = phi i32 [ %i.cgf, %.preheader150.i ], [ %i.cha, %bb.ja ] ; 3 uses
  %indvars.iv206.i = phi i64 [ 0, %.preheader150.i ], [ %indvars.iv.next207.i, %bb.ja ] ; 2 uses
  %i.cgk = getelementptr inbounds nuw [4 x i8], ptr %i.cgg, i64 %indvars.iv206.i
  %i.cgl = load i32, ptr %i.cgk, align 4, !tbaa !29
  %.not95.i = icmp eq i32 %i.cgl, 0
  br i1 %.not95.i, label %bb.ja, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.cgm = icmp sgt i32 %i.cgi, 1
  br i1 %i.cgm, label %bb.iw, label %bb.ix

bb.iw:                                            ; preds = %bb.iv
  %i.cgn = shl i32 %i.cgj, 1
  br label %put_bits.exit116.i

bb.ix:                                            ; preds = %bb.iv
  %i.cgo = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cgp = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cgq = ptrtoint ptr %i.cgo to i64
  %i.cgr = ptrtoint ptr %i.cgp to i64
  %i.cgs = sub i64 %i.cgq, %i.cgr
  %i.cgt = icmp ugt i64 %i.cgs, 3
  br i1 %i.cgt, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.cgu = shl i32 %i.cgj, %i.cgi
  %i.cgv = call i32 @llvm.bswap.i32(i32 %i.cgu)
  store i32 %i.cgv, ptr %i.cgp, align 1, !tbaa !45
  %i.cgw = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cgx = getelementptr inbounds nuw i8, ptr %i.cgw, i64 4
  store ptr %i.cgx, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit116.i

bb.iz:                                            ; preds = %bb.ix
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit116.i

put_bits.exit116.i:                               ; preds = %bb.iz, %bb.iy, %bb.iw
  %.sink336.i = phi i32 [ -1, %bb.iw ], [ 31, %bb.iz ], [ 31, %bb.iy ]
  %.026.i.i114.i = phi i32 [ %i.cgn, %bb.iw ], [ 0, %bb.iz ], [ 0, %bb.iy ] ; 2 uses
  %i.cgy = add nsw i32 %.sink336.i, %i.cgi        ; 2 uses
  store i32 %.026.i.i114.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cgy, ptr %i.avz, align 4, !tbaa !155
  br label %bb.ja

bb.ja:                                            ; preds = %put_bits.exit116.i, %bb.iu
  %i.cgz = phi i32 [ %i.cgi, %bb.iu ], [ %i.cgy, %put_bits.exit116.i ] ; 4 uses
  %i.cha = phi i32 [ %i.cgj, %bb.iu ], [ %.026.i.i114.i, %put_bits.exit116.i ] ; 4 uses
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1 ; 2 uses
  %exitcond209.not.i = icmp eq i64 %indvars.iv.next207.i, 32
  br i1 %exitcond209.not.i, label %bb.jb, label %bb.iu, !llvm.loop !130

bb.jb:                                            ; preds = %bb.ja
  %indvars.iv.next211.i = add nuw nsw i64 %indvars.iv210.i, 1 ; 2 uses
  %i.chb = load i32, ptr %i.r, align 4, !tbaa !38 ; 3 uses
  %i.chc = sext i32 %i.chb to i64
  %i.chd = icmp slt i64 %indvars.iv.next211.i, %i.chc
  br i1 %i.chd, label %.preheader150.i, label %.preheader149.i, !llvm.loop !131

.preheader148.i:                                  ; preds = %.preheader149.i, %bb.jj
  %i.che = phi i32 [ %i.cif, %bb.jj ], [ %i.cgz, %.preheader149.i ]
  %i.chf = phi i32 [ %i.cig, %bb.jj ], [ %i.cha, %.preheader149.i ]
  %indvars.iv217.i = phi i64 [ %indvars.iv.next218.i, %bb.jj ], [ 0, %.preheader149.i ] ; 3 uses
  %i.chg = getelementptr inbounds nuw [128 x i8], ptr %6, i64 %indvars.iv217.i
  %i.chh = getelementptr inbounds nuw [128 x i8], ptr %7, i64 %indvars.iv217.i
  br label %bb.jc

bb.jc:                                            ; preds = %bb.ji, %.preheader148.i
  %i.chi = phi i32 [ %i.che, %.preheader148.i ], [ %i.cif, %bb.ji ] ; 5 uses
  %i.chj = phi i32 [ %i.chf, %.preheader148.i ], [ %i.cig, %bb.ji ] ; 3 uses
  %indvars.iv213.i = phi i64 [ 0, %.preheader148.i ], [ %indvars.iv.next214.i, %bb.ji ] ; 3 uses
  %i.chk = getelementptr inbounds nuw [4 x i8], ptr %i.chg, i64 %indvars.iv213.i
  %i.chl = load i32, ptr %i.chk, align 4, !tbaa !29
  %.not94.i = icmp eq i32 %i.chl, 0
  br i1 %.not94.i, label %bb.ji, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.chm = getelementptr inbounds nuw [4 x i8], ptr %i.chh, i64 %indvars.iv213.i
  %i.chn = load i32, ptr %i.chm, align 4, !tbaa !29 ; 4 uses
  %i.cho = icmp sgt i32 %i.chi, 7
  br i1 %i.cho, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.chp = shl i32 %i.chj, 7
  %i.chq = or i32 %i.chn, %i.chp
  br label %put_bits.exit120.i

bb.jf:                                            ; preds = %bb.jd
  %i.chr = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.chs = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cht = ptrtoint ptr %i.chr to i64
  %i.chu = ptrtoint ptr %i.chs to i64
  %i.chv = sub i64 %i.cht, %i.chu
  %i.chw = icmp ugt i64 %i.chv, 3
  br i1 %i.chw, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.chx = shl i32 %i.chj, %i.chi
  %i.chy = sub nsw i32 7, %i.chi
  %i.chz = lshr i32 %i.chn, %i.chy
  %i.cia = or i32 %i.chz, %i.chx
  %i.cib = call i32 @llvm.bswap.i32(i32 %i.cia)
  store i32 %i.cib, ptr %i.chs, align 1, !tbaa !45
  %i.cic = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cid = getelementptr inbounds nuw i8, ptr %i.cic, i64 4
  store ptr %i.cid, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit120.i

bb.jh:                                            ; preds = %bb.jf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit120.i

put_bits.exit120.i:                               ; preds = %bb.jh, %bb.jg, %bb.je
  %.sink337.i = phi i32 [ -7, %bb.je ], [ 25, %bb.jh ], [ 25, %bb.jg ]
  %.026.i.i118.i = phi i32 [ %i.chq, %bb.je ], [ %i.chn, %bb.jh ], [ %i.chn, %bb.jg ] ; 2 uses
  %i.cie = add nsw i32 %.sink337.i, %i.chi        ; 2 uses
  store i32 %.026.i.i118.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cie, ptr %i.avz, align 4, !tbaa !155
  br label %bb.ji

bb.ji:                                            ; preds = %put_bits.exit120.i, %bb.jc
  %i.cif = phi i32 [ %i.chi, %bb.jc ], [ %i.cie, %put_bits.exit120.i ] ; 3 uses
  %i.cig = phi i32 [ %i.chj, %bb.jc ], [ %.026.i.i118.i, %put_bits.exit120.i ] ; 3 uses
  %indvars.iv.next214.i = add nuw nsw i64 %indvars.iv213.i, 1 ; 2 uses
  %exitcond216.not.i = icmp eq i64 %indvars.iv.next214.i, 32
  br i1 %exitcond216.not.i, label %bb.jj, label %bb.jc, !llvm.loop !132

bb.jj:                                            ; preds = %bb.ji
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %i.cih = load i32, ptr %i.r, align 4, !tbaa !38 ; 2 uses
  %i.cii = sext i32 %i.cih to i64
  %i.cij = icmp slt i64 %indvars.iv.next218.i, %i.cii
  br i1 %i.cij, label %.preheader148.i, label %._crit_edge.i154, !llvm.loop !133

._crit_edge.i154:                                 ; preds = %bb.jj, %.preheader149.i, %.preheader151.i, %.preheader154.i, %.preheader156.i, %put_bits.exit99.i152
  %i.cik = phi i32 [ %i.cbm, %put_bits.exit99.i152 ], [ %i.chb, %.preheader149.i ], [ %i.cgb, %.preheader151.i ], [ %i.cdu, %.preheader154.i ], [ %i.ccp, %.preheader156.i ], [ %i.cih, %bb.jj ]
  %i.cil = phi i32 [ %i.cbl, %put_bits.exit99.i152 ], [ %i.cgz, %.preheader149.i ], [ %.pre11.i238.i, %.preheader151.i ], [ %i.cds, %.preheader154.i ], [ %i.cco, %.preheader156.i ], [ %i.cif, %bb.jj ] ; 2 uses
  %i.cim = phi i32 [ %.026.i.i97.i153, %put_bits.exit99.i152 ], [ %i.cha, %.preheader149.i ], [ %.pre.i235.i, %.preheader151.i ], [ %i.cdt, %.preheader154.i ], [ %.026.i.i101.i168, %.preheader156.i ], [ %i.cig, %bb.jj ] ; 2 uses
  %i.cin = load i32, ptr %i.mm, align 4, !tbaa !39
  %.not.i155 = icmp eq i32 %i.cin, 0
  br i1 %.not.i155, label %bb.jt, label %.preheader147.i.a

.preheader147.i.a:                                ; preds = %._crit_edge.i154, %put_bits.exit124.i
  %i.cio = phi i32 [ %i.cjv, %put_bits.exit124.i ], [ %i.cil, %._crit_edge.i154 ] ; 4 uses
  %i.cip = phi i32 [ %i.cju, %put_bits.exit124.i ], [ %i.cim, %._crit_edge.i154 ] ; 2 uses
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i, %put_bits.exit124.i ], [ 0, %._crit_edge.i154 ] ; 2 uses
  %i.ciq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv220.i
  %i.cir = load i32, ptr %i.ciq, align 4, !tbaa !29
  %i.cis = load i64, ptr %9, align 4              ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i64 %i.cis, 32
  %.sroa.2.0.extract.trunc.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i to i32 ; 2 uses
  %i.cit = add nsw i32 %.sroa.2.0.extract.trunc.i.i, -1
  %i.ciu = shl nuw i32 1, %i.cit
  %i.civ = sext i32 %i.cir to i64
  %i.ciw = shl i64 %i.cis, 32
  %i.cix = ashr exact i64 %i.ciw, 32
  %i.ciy = mul nsw i64 %i.cix, %i.civ
  %i.ciz = add nsw i64 %i.ciy, 2147483648
  %i.cja = lshr i64 %i.ciz, 32
  %.0.i.i.i.i.i = trunc nuw i64 %i.cja to i32
  %i.cjb = add nsw i32 %i.ciu, %.0.i.i.i.i.i
  %i.cjc = ashr i32 %i.cjb, %.sroa.2.0.extract.trunc.i.i
  %i.cjd = and i32 %i.cjc, 255                    ; 4 uses
  %i.cje = icmp sgt i32 %i.cio, 8
  br i1 %i.cje, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %.preheader147.i.a
  %i.cjf = shl i32 %i.cip, 8
  %i.cjg = or disjoint i32 %i.cjd, %i.cjf
  br label %put_bits.exit124.i

bb.jl:                                            ; preds = %.preheader147.i.a
  %i.cjh = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cji = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cjj = ptrtoint ptr %i.cjh to i64
  %i.cjk = ptrtoint ptr %i.cji to i64
  %i.cjl = sub i64 %i.cjj, %i.cjk
  %i.cjm = icmp ugt i64 %i.cjl, 3
  br i1 %i.cjm, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.cjn = shl i32 %i.cip, %i.cio
  %i.cjo = sub nsw i32 8, %i.cio
  %i.cjp = lshr i32 %i.cjd, %i.cjo
  %i.cjq = or i32 %i.cjp, %i.cjn
  %i.cjr = call i32 @llvm.bswap.i32(i32 %i.cjq)
  store i32 %i.cjr, ptr %i.cji, align 1, !tbaa !45
  %i.cjs = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 4
  store ptr %i.cjt, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit124.i

bb.jn:                                            ; preds = %bb.jl
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit124.i

put_bits.exit124.i:                               ; preds = %bb.jn, %bb.jm, %bb.jk
  %.sink338.i = phi i32 [ -8, %bb.jk ], [ 24, %bb.jn ], [ 24, %bb.jm ]
  %i.cju = phi i32 [ %i.cjg, %bb.jk ], [ %i.cjd, %bb.jn ], [ %i.cjd, %bb.jm ] ; 4 uses
  %i.cjv = add nsw i32 %.sink338.i, %i.cio        ; 6 uses
  store i32 %i.cju, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.cjv, ptr %i.avz, align 4, !tbaa !155
  %indvars.iv.next221.i = add nuw nsw i64 %indvars.iv220.i, 1 ; 2 uses
  %exitcond223.not.i = icmp eq i64 %indvars.iv.next221.i, 8
  br i1 %exitcond223.not.i, label %bb.jo, label %.preheader147.i.a, !llvm.loop !134

bb.jo:                                            ; preds = %put_bits.exit124.i
  %i.cjw = load i32, ptr %10, align 8, !tbaa !148 ; 4 uses
  %i.cjx = icmp sgt i32 %i.cjv, 8
  br i1 %i.cjx, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.cjy = shl i32 %i.cju, 8
  %i.cjz = or i32 %i.cjw, %i.cjy
  br label %put_bits.exit128.i

bb.jq:                                            ; preds = %bb.jo
  %i.cka = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.ckb = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.ckc = ptrtoint ptr %i.cka to i64
  %i.ckd = ptrtoint ptr %i.ckb to i64
  %i.cke = sub i64 %i.ckc, %i.ckd
  %i.ckf = icmp ugt i64 %i.cke, 3
  br i1 %i.ckf, label %bb.jr, label %bb.js

bb.jr:                                            ; preds = %bb.jq
  %i.ckg = shl i32 %i.cju, %i.cjv
  %i.ckh = sub nsw i32 8, %i.cjv
  %i.cki = lshr i32 %i.cjw, %i.ckh
  %i.ckj = or i32 %i.cki, %i.ckg
  %i.ckk = call i32 @llvm.bswap.i32(i32 %i.ckj)
  store i32 %i.ckk, ptr %i.ckb, align 1, !tbaa !45
  %i.ckl = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckl, i64 4
  store ptr %i.ckm, ptr %i.avy, align 8, !tbaa !154
  br label %put_bits.exit128.i

bb.js:                                            ; preds = %bb.jq
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  br label %put_bits.exit128.i

put_bits.exit128.i:                               ; preds = %bb.js, %bb.jr, %bb.jp
  %.sink339.i = phi i32 [ -8, %bb.jp ], [ 24, %bb.js ], [ 24, %bb.jr ]
  %.026.i.i126.i = phi i32 [ %i.cjz, %bb.jp ], [ %i.cjw, %bb.js ], [ %i.cjw, %bb.jr ] ; 2 uses
  %i.ckn = add nsw i32 %.sink339.i, %i.cjv        ; 2 uses
  store i32 %.026.i.i126.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %i.ckn, ptr %i.avz, align 4, !tbaa !155
  %.pre.i156 = load i32, ptr %i.r, align 4, !tbaa !38
  br label %bb.jt

bb.jt:                                            ; preds = %put_bits.exit128.i, %._crit_edge.i154
  %.pre96.i251.i = phi i32 [ %i.ckn, %put_bits.exit128.i ], [ %i.cil, %._crit_edge.i154 ] ; 2 uses
  %.pre.i129245.i = phi i32 [ %.026.i.i126.i, %put_bits.exit128.i ], [ %i.cim, %._crit_edge.i154 ] ; 2 uses
  %i.cko = phi i32 [ %.pre.i156, %put_bits.exit128.i ], [ %i.cik, %._crit_edge.i154 ] ; 2 uses
  %i.ckp = icmp sgt i32 %i.cko, 0
  br i1 %i.ckp, label %.preheader146.i, label %.split183.us.i

.preheader146.i:                                  ; preds = %bb.jt, %._crit_edge175.i
  %.pre96.i246.i = phi i32 [ %.pre96.i247.i, %._crit_edge175.i ], [ %.pre96.i251.i, %bb.jt ] ; 2 uses
  %.pre.i129240.i = phi i32 [ %.pre.i129241.i, %._crit_edge175.i ], [ %.pre.i129245.i, %bb.jt ] ; 2 uses
  %i.ckq = phi i32 [ %i.cxw, %._crit_edge175.i ], [ %i.cko, %bb.jt ] ; 2 uses
  %i.ckr = phi i1 [ false, %._crit_edge175.i ], [ true, %bb.jt ]
  %indvars.iv231.i = phi i64 [ 32, %._crit_edge175.i ], [ 0, %bb.jt ]
  %i.cks = icmp sgt i32 %i.ckq, 0
  br i1 %i.cks, label %.preheader.lr.ph.i157, label %._crit_edge175.i

.preheader.lr.ph.i157:                            ; preds = %.preheader146.i
  %invariant.gep176.i158 = getelementptr inbounds nuw i8, ptr %12, i64 %indvars.iv231.i
  br label %.preheader.i159

.preheader.i159:                                  ; preds = %bb.mg, %.preheader.lr.ph.i157
  %.pre96.i248.i = phi i32 [ %.pre96.i246.i, %.preheader.lr.ph.i157 ], [ %.pre96.i250.i, %bb.mg ]
  %.pre.i129242.i = phi i32 [ %.pre.i129240.i, %.preheader.lr.ph.i157 ], [ %.pre.i129244.i, %bb.mg ]
  %indvars.iv228.i = phi i64 [ 0, %.preheader.lr.ph.i157 ], [ %indvars.iv.next229.i, %bb.mg ] ; 4 uses
  %i.ckt = getelementptr inbounds nuw [128 x i8], ptr %6, i64 %indvars.iv228.i
  %i.cku = getelementptr inbounds nuw [40 x i8], ptr %11, i64 %indvars.iv228.i
  %gep177.i160 = getelementptr inbounds nuw [2048 x i8], ptr %invariant.gep176.i158, i64 %indvars.iv228.i ; 3 uses
  br label %bb.ju

bb.ju:                                            ; preds = %put_subframe_samples.exit.i, %.preheader.i159
  %i.ckv = phi i32 [ %.pre96.i248.i, %.preheader.i159 ], [ %.pre96.i250.i, %put_subframe_samples.exit.i ] ; 12 uses
  %i.ckw = phi i32 [ %.pre.i129242.i, %.preheader.i159 ], [ %.pre.i129244.i, %put_subframe_samples.exit.i ] ; 6 uses
  %indvars.iv224.i = phi i64 [ 0, %.preheader.i159 ], [ %indvars.iv.next225.i, %put_subframe_samples.exit.i ] ; 5 uses
  %i.ckx = getelementptr inbounds nuw [4 x i8], ptr %i.ckt, i64 %indvars.iv224.i ; 3 uses
  %i.cky = load i32, ptr %i.ckx, align 4, !tbaa !29 ; 7 uses
  %.not93.i = icmp eq i32 %i.cky, 0
  br i1 %.not93.i, label %put_subframe_samples.exit.i, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.ckz = icmp slt i32 %i.cky, 11
  br i1 %i.ckz, label %bb.jw, label %bb.lz

bb.jw:                                            ; preds = %bb.jv
  %i.cla = icmp sgt i32 %i.cky, 0
  br i1 %i.cla, label %bb.jy, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, i32 noundef 1154) #11
  call void @abort() #13
  unreachable

bb.jy:                                            ; preds = %bb.jw
  %i.clb = add nsw i32 %i.cky, -1
  %i.clc = zext nneg i32 %i.clb to i64            ; 3 uses
  %i.cld = getelementptr inbounds nuw [4 x i8], ptr %i.cku, i64 %i.clc
  %i.cle = load i32, ptr %i.cld, align 4, !tbaa !29 ; 2 uses
  %i.clf = getelementptr inbounds nuw i8, ptr @ff_dca_quant_index_group_size, i64 %i.clc
  %i.clg = load i8, ptr %i.clf, align 1, !tbaa !45
  %i.clh = zext i8 %i.clg to i32
  %i.cli = icmp slt i32 %i.cle, %i.clh
  br i1 %i.cli, label %bb.jz, label %bb.lo

bb.jz:                                            ; preds = %bb.jy
  %gep173.i165 = getelementptr inbounds nuw [64 x i8], ptr %gep177.i160, i64 %indvars.iv224.i ; 8 uses
  %i.clj = getelementptr inbounds nuw [64 x i8], ptr @bitalloc_tables, i64 %i.clc
  %i.clk = and i32 %i.cle, 255
  %i.cll = zext nneg i32 %i.clk to i64
  %i.clm = getelementptr inbounds nuw [8 x i8], ptr %i.clj, i64 %i.cll ; 8 uses
  %i.cln = load ptr, ptr %i.clm, align 8, !tbaa !56 ; 3 uses
  %i.clo = load i32, ptr %gep173.i165, align 4, !tbaa !29
  %i.clp = sext i32 %i.clo to i64
  %i.clq = getelementptr inbounds [4 x i8], ptr %i.cln, i64 %i.clp ; 2 uses
  %i.clr = getelementptr inbounds nuw i8, ptr %i.clq, i64 2
  %i.cls = load i16, ptr %i.clr, align 2, !tbaa !54
  %i.clt = zext i16 %i.cls to i32                 ; 4 uses
  %i.clu = load i16, ptr %i.clq, align 2, !tbaa !54
  %i.clv = zext i16 %i.clu to i32                 ; 3 uses
  %i.clw = icmp sgt i32 %i.ckv, %i.clt
  br i1 %i.clw, label %bb.ka, label %bb.kb

bb.ka:                                            ; preds = %bb.jz
  %i.clx = shl i32 %i.ckw, %i.clt
  %i.cly = or i32 %i.clx, %i.clv
  br label %put_bits.exit.i.i.i

bb.kb:                                            ; preds = %bb.jz
  %i.clz = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cma = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cmb = ptrtoint ptr %i.clz to i64
  %i.cmc = ptrtoint ptr %i.cma to i64
  %i.cmd = sub i64 %i.cmb, %i.cmc
  %i.cme = icmp ugt i64 %i.cmd, 3
  br i1 %i.cme, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.cmf = shl i32 %i.ckw, %i.ckv
  %i.cmg = sub nsw i32 %i.clt, %i.ckv
  %i.cmh = lshr i32 %i.clv, %i.cmg
  %i.cmi = or i32 %i.cmh, %i.cmf
  %i.cmj = call i32 @llvm.bswap.i32(i32 %i.cmi)
  store i32 %i.cmj, ptr %i.cma, align 1, !tbaa !45
  %i.cmk = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmk, i64 4
  store ptr %i.cml, ptr %i.avy, align 8, !tbaa !154
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kb
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  %.pre.pre.i.i.i = load ptr, ptr %i.clm, align 8, !tbaa !56
  br label %bb.ke

bb.ke:                                            ; preds = %bb.kd, %bb.kc
  %.pre.i.i.i = phi ptr [ %.pre.pre.i.i.i, %bb.kd ], [ %i.cln, %bb.kc ]
  %reass.sub185.i = add nsw i32 %i.ckv, 32
  br label %put_bits.exit.i.i.i

put_bits.exit.i.i.i:                              ; preds = %bb.ke, %bb.ka
  %i.cmm = phi ptr [ %i.cln, %bb.ka ], [ %.pre.i.i.i, %bb.ke ] ; 3 uses
  %.026.i.i.i.i.i = phi i32 [ %i.cly, %bb.ka ], [ %i.clv, %bb.ke ] ; 3 uses
  %.pn223 = phi i32 [ %i.ckv, %bb.ka ], [ %reass.sub185.i, %bb.ke ]
  %.0.i.i.i.i137.i = sub i32 %.pn223, %i.clt      ; 6 uses
  store i32 %.026.i.i.i.i.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %.0.i.i.i.i137.i, ptr %i.avz, align 4, !tbaa !155
  %i.cmn = getelementptr inbounds nuw i8, ptr %gep173.i165, i64 4
  %i.cmo = load i32, ptr %i.cmn, align 4, !tbaa !29
  %i.cmp = sext i32 %i.cmo to i64
  %i.cmq = getelementptr inbounds [4 x i8], ptr %i.cmm, i64 %i.cmp ; 2 uses
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmq, i64 2
  %i.cms = load i16, ptr %i.cmr, align 2, !tbaa !54
  %i.cmt = zext i16 %i.cms to i32                 ; 4 uses
  %i.cmu = load i16, ptr %i.cmq, align 2, !tbaa !54
  %i.cmv = zext i16 %i.cmu to i32                 ; 3 uses
  %i.cmw = icmp sgt i32 %.0.i.i.i.i137.i, %i.cmt
  br i1 %i.cmw, label %bb.kj, label %bb.kf

bb.kf:                                            ; preds = %put_bits.exit.i.i.i
  %i.cmx = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cmy = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cmz = ptrtoint ptr %i.cmx to i64
  %i.cna = ptrtoint ptr %i.cmy to i64
  %i.cnb = sub i64 %i.cmz, %i.cna
  %i.cnc = icmp ugt i64 %i.cnb, 3
  br i1 %i.cnc, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  %.pre13.pre.i.i.i = load ptr, ptr %i.clm, align 8, !tbaa !56
  br label %bb.ki

bb.kh:                                            ; preds = %bb.kf
  %i.cnd = shl i32 %.026.i.i.i.i.i, %.0.i.i.i.i137.i
  %i.cne = sub nsw i32 %i.cmt, %.0.i.i.i.i137.i
  %i.cnf = lshr i32 %i.cmv, %i.cne
  %i.cng = or i32 %i.cnf, %i.cnd
  %i.cnh = call i32 @llvm.bswap.i32(i32 %i.cng)
  store i32 %i.cnh, ptr %i.cmy, align 1, !tbaa !45
  %i.cni = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cni, i64 4
  store ptr %i.cnj, ptr %i.avy, align 8, !tbaa !154
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg
  %.pre13.i.i.i = phi ptr [ %i.cmm, %bb.kh ], [ %.pre13.pre.i.i.i, %bb.kg ]
  %reass.sub.1.i.i.i = add nsw i32 %.0.i.i.i.i137.i, 32
  br label %put_bits.exit.1.i.i.i

bb.kj:                                            ; preds = %put_bits.exit.i.i.i
  %i.cnk = shl i32 %.026.i.i.i.i.i, %i.cmt
  %i.cnl = or i32 %i.cnk, %i.cmv
  br label %put_bits.exit.1.i.i.i

put_bits.exit.1.i.i.i:                            ; preds = %bb.kj, %bb.ki
  %i.cnm = phi ptr [ %i.cmm, %bb.kj ], [ %.pre13.i.i.i, %bb.ki ] ; 3 uses
  %.026.i.i.1.i.i.i = phi i32 [ %i.cnl, %bb.kj ], [ %i.cmv, %bb.ki ] ; 3 uses
  %.0.i.i.i.pn.i.i = phi i32 [ %.0.i.i.i.i137.i, %bb.kj ], [ %reass.sub.1.i.i.i, %bb.ki ]
  %.0.i.i.1.i.i.i = sub i32 %.0.i.i.i.pn.i.i, %i.cmt ; 6 uses
  store i32 %.026.i.i.1.i.i.i, ptr %i.avo, align 8, !tbaa !156
  store i32 %.0.i.i.1.i.i.i, ptr %i.avz, align 4, !tbaa !155
  %i.cnn = getelementptr inbounds nuw i8, ptr %gep173.i165, i64 8
  %i.cno = load i32, ptr %i.cnn, align 4, !tbaa !29
  %i.cnp = sext i32 %i.cno to i64
  %i.cnq = getelementptr inbounds [4 x i8], ptr %i.cnm, i64 %i.cnp ; 2 uses
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cnq, i64 2
  %i.cns = load i16, ptr %i.cnr, align 2, !tbaa !54
  %i.cnt = zext i16 %i.cns to i32                 ; 4 uses
  %i.cnu = load i16, ptr %i.cnq, align 2, !tbaa !54
  %i.cnv = zext i16 %i.cnu to i32                 ; 3 uses
  %i.cnw = icmp sgt i32 %.0.i.i.1.i.i.i, %i.cnt
  br i1 %i.cnw, label %bb.ko, label %bb.kk

bb.kk:                                            ; preds = %put_bits.exit.1.i.i.i
  %i.cnx = load ptr, ptr %i.avx, align 8, !tbaa !153
  %i.cny = load ptr, ptr %i.avy, align 8, !tbaa !154 ; 2 uses
  %i.cnz = ptrtoint ptr %i.cnx to i64
  %i.coa = ptrtoint ptr %i.cny to i64
  %i.cob = sub i64 %i.cnz, %i.coa
  %i.coc = icmp ugt i64 %i.cob, 3
  br i1 %i.coc, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.16) #11
  %.pre14.pre.i.i.i = load ptr, ptr %i.clm, align 8, !tbaa !56
  br label %bb.kn

bb.km:                                            ; preds = %bb.kk
  %i.cod = shl i32 %.026.i.i.1.i.i.i, %.0.i.i.1.i.i.i
  %i.coe = sub nsw i32 %i.cnt, %.0.i.i.1.i.i.i
  %i.cof = lshr i32 %i.cnv, %i.coe
  %i.cog = or i32 %i.cof, %i.cod
  %i.coh = call i32 @llvm.bswap.i32(i32 %i.cog)
  store i32 %i.coh, ptr %i.cny, align 1, !tbaa !45
  %i.coi = load ptr, ptr %i.avy, align 8, !tbaa !154
  %i.coj = getelementptr inbounds nuw i8, ptr %i.coi, i64 4
  store ptr %i.coj, ptr %i.avy, align 8, !tbaa !154
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
  %.pre14.i.i.i = phi ptr [ %i.cnm, %bb.km ], [ %.pre14.pre.i.i.i, %bb.kl ]
  %reass.sub.2.i.i.i = add nsw i32 %.0.i.i.1.i.i.i, 32
  br label %put_bits.exit.2.i.i.i

bb.ko:                                            ; preds = %put_bits.exit.1.i.i.i
  %i.cok = shl i32 %.026.i.i.1.i.i.i, %i.cnt
  %i.col = or i32 %i.cok, %i.cnv
  br label %put_bits.exit.2.i.i.i

end_hunk_1
