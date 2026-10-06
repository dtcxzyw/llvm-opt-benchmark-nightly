Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/colorspaces?download=true
inline.NumInlined: 104
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_colorspaces_get_matrix_from_profile:bb.a
  %indvars.iv261 = phi i64 [ 0, %.lr.ph237 ], [ %indvars.iv.next262, %bb.o ] ; 3 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv261 to i32
  %i.cn = uitofp nsz nneg i32 %i.cm to float
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.cl
  %i.cp = tail call reassoc nsz arcp contract afn float @cmsEvalToneCurveFloat(ptr noundef nonnull %i.l, float noundef %i.co) #26
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv261
  store float %i.cp, ptr %i.cq, align 4, !tbaa !14
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit, label %bb.o

bb.p:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.b, ptr noundef nonnull align 64 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.cr = call i32 @mat3SSEinv(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #26
  %.not200 = icmp eq i32 %i.cr, 0
  br i1 %.not200, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cs = call ptr @cmsReverseToneCurveEx(i32 noundef 32768, ptr noundef nonnull %i.j) #26 ; 4 uses
  %i.ct = call ptr @cmsReverseToneCurveEx(i32 noundef 32768, ptr noundef nonnull %i.k) #26 ; 4 uses
  %i.cu = call ptr @cmsReverseToneCurveEx(i32 noundef 32768, ptr noundef nonnull %i.l) #26 ; 4 uses
  %i.cv = icmp ne ptr %i.cs, null
  %i.cw = icmp ne ptr %i.ct, null
  %or.cond17 = select i1 %i.cv, i1 %i.cw, i1 false
  %i.cx = icmp ne ptr %i.cu, null
  %or.cond19 = select i1 %or.cond17, i1 %i.cx, i1 false
  br i1 %or.cond19, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @cmsFreeToneCurve(ptr noundef %i.cs) #26
  call void @cmsFreeToneCurve(ptr noundef %i.ct) #26
  call void @cmsFreeToneCurve(ptr noundef %i.cu) #26
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %or.cond21 = and i1 %i.bk, %i.bl
  %or.cond23 = and i1 %or.cond21, %i.bm
  br i1 %or.cond23, label %bb.t, label %.loopexit215

bb.t:                                             ; preds = %bb.s
  %i.cy = call i32 @cmsIsToneCurveLinear(ptr noundef nonnull %i.j) #26
  %.not201 = icmp eq i32 %i.cy, 0
  br i1 %.not201, label %.preheader218, label %bb.u

.preheader218:                                    ; preds = %bb.t
  %i.cz = icmp sgt i32 %5, 0
  br i1 %i.cz, label %.lr.ph, label %.loopexit219

.lr.ph:                                           ; preds = %.preheader218
  %i.da = uitofp nneg i32 %5 to float
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, -1.000000e+00
  %wide.trip.count = zext nneg i32 %5 to i64
  %i.dc = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.db
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store float -1.000000e+00, ptr %2, align 4, !tbaa !14
  br label %.loopexit219

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %i.dd = trunc nuw nsw i64 %indvars.iv to i32
  %i.de = uitofp nsz nneg i32 %i.dd to float
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.dc
  %i.dg = call reassoc nsz arcp contract afn float @cmsEvalToneCurveFloat(ptr noundef nonnull %i.cs, float noundef %i.df) #26
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store float %i.dg, ptr %i.dh, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit219, label %bb.v

.loopexit219:                                     ; preds = %bb.v, %.preheader218, %bb.u
  %i.di = call i32 @cmsIsToneCurveLinear(ptr noundef nonnull %i.k) #26
  %.not202 = icmp eq i32 %i.di, 0
  br i1 %.not202, label %.preheader216, label %bb.w

.preheader216:                                    ; preds = %.loopexit219
  %i.dj = icmp sgt i32 %5, 0
  br i1 %i.dj, label %.lr.ph229, label %.loopexit217

.lr.ph229:                                        ; preds = %.preheader216
  %i.dk = uitofp nneg i32 %5 to float
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, -1.000000e+00
  %wide.trip.count244 = zext nneg i32 %5 to i64
  %i.dm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dl
  br label %bb.x

bb.w:                                             ; preds = %.loopexit219
  store float -1.000000e+00, ptr %3, align 4, !tbaa !14
  br label %.loopexit217

bb.x:                                             ; preds = %.lr.ph229, %bb.x
  %indvars.iv241 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next242, %bb.x ] ; 3 uses
  %i.dn = trunc nuw nsw i64 %indvars.iv241 to i32
  %i.do = uitofp nsz nneg i32 %i.dn to float
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.dm
  %i.dq = call reassoc nsz arcp contract afn float @cmsEvalToneCurveFloat(ptr noundef nonnull %i.ct, float noundef %i.dp) #26
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv241
  store float %i.dq, ptr %i.dr, align 4, !tbaa !14
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %.loopexit217, label %bb.x

.loopexit217:                                     ; preds = %bb.x, %.preheader216, %bb.w
  %i.ds = call i32 @cmsIsToneCurveLinear(ptr noundef nonnull %i.l) #26
  %.not203 = icmp eq i32 %i.ds, 0
  br i1 %.not203, label %.preheader214, label %bb.y

.preheader214:                                    ; preds = %.loopexit217
  %i.dt = icmp sgt i32 %5, 0
  br i1 %i.dt, label %.lr.ph231, label %.loopexit215

.lr.ph231:                                        ; preds = %.preheader214
  %i.du = uitofp nneg i32 %5 to float
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, -1.000000e+00
  %wide.trip.count249 = zext nneg i32 %5 to i64
  %i.dw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dv
  br label %bb.z

bb.y:                                             ; preds = %.loopexit217
  store float -1.000000e+00, ptr %4, align 4, !tbaa !14
  br label %.loopexit215

bb.z:                                             ; preds = %.lr.ph231, %bb.z
  %indvars.iv246 = phi i64 [ 0, %.lr.ph231 ], [ %indvars.iv.next247, %bb.z ] ; 3 uses
  %i.dx = trunc nuw nsw i64 %indvars.iv246 to i32
  %i.dy = uitofp nsz nneg i32 %i.dx to float
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.dw
  %i.ea = call reassoc nsz arcp contract afn float @cmsEvalToneCurveFloat(ptr noundef nonnull %i.cu, float noundef %i.dz) #26
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv246
  store float %i.ea, ptr %i.eb, align 4, !tbaa !14
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %.loopexit215, label %bb.z

.thread:                                          ; preds = %bb.p, %bb.r
  %.1156.ph = phi i32 [ 4, %bb.r ], [ 3, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.ab

.loopexit215:                                     ; preds = %bb.z, %.preheader214, %bb.s, %bb.y
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.cs) #26
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.ct) #26
  call void @cmsFreeToneCurve(ptr noundef nonnull %i.cu) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.preheader, %.loopexit215, %bb.n
  %.not207 = icmp eq ptr %1, null
  br i1 %.not207, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 64 dereferenceable(64) %i.a, i64 64, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %.loopexit, %bb.aa, %.preheader222.preheader
  %.2 = phi i32 [ %.1156.ph, %.thread ], [ 3, %.preheader222.preheader ], [ 0, %bb.aa ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.g, %bb.ab, %bb.a, %bb.b
  %.5 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ %.2, %bb.ab ], [ 2, %bb.g ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @dt_colorspaces_get_matrix_from_output_profile(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @_colorspaces_get_matrix_from_profile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define ptr @dt_colorspaces_create_alternate_profile(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cmsCIExyY, align 16         ; 5 uses
  %2 = alloca %struct.cmsCIExyYTRIPLE, align 16   ; 9 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca [512 x i8], align 16              ; 5 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.86) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.87) #27
  %.not.1 = icmp eq i32 %i.d, 0
  br i1 %.not.1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.88) #27
  %.not.2 = icmp eq i32 %i.e, 0
  br i1 %.not.2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.89) #27
  %.not.3 = icmp eq i32 %i.f, 0
  br i1 %.not.3, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @dt_alternate_colormatrices, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @dt_alternate_colormatrices, i64 56), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @dt_alternate_colormatrices, i64 112), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @dt_alternate_colormatrices, i64 168), %bb.d ] ; 7 uses
  %3 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 44
  %4 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %6 = load i32, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.l = load <2 x i32>, ptr %3, align 4, !tbaa !16 ; 3 uses
  %i.m = sitofp <2 x i32> %i.l to <2 x float>
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 1.000000e+00, ptr %i.n, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.o = load <2 x i32>, ptr %i.g, align 8, !tbaa !16 ; 3 uses
  %i.p = sitofp <2 x i32> %i.o to <2 x float>
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double 1.000000e+00, ptr %i.q, align 16, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.s = load <2 x i32>, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double 1.000000e+00, ptr %i.u, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load <2 x i32>, ptr %i.k, align 8, !tbaa !16 ; 3 uses
  %7 = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.j, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison), !tbaa !16
  %i.x = shufflevector <2 x i32> %i.l, <2 x i32> %i.o, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.y = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.z = shufflevector <4 x i32> %i.x, <4 x i32> %i.y, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.aa = shufflevector <2 x i32> %i.w, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x i32> %i.z, <4 x i32> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ac = shufflevector <2 x i32> %i.l, <2 x i32> %i.o, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ad = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x i32> %i.ac, <4 x i32> %i.ad, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.af = shufflevector <2 x i32> %i.w, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x i32> %i.ae, <4 x i32> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ah = add nsw <4 x i32> %i.ab, %i.ag
  %8 = insertelement <4 x i32> poison, i32 %5, i64 0
  %9 = insertelement <4 x i32> %8, i32 %6, i64 1
  %10 = shufflevector <4 x i32> %9, <4 x i32> %7, <4 x i32> <i32 0, i32 1, i32 4, i32 7>
  %i.ai = add nsw <4 x i32> %i.ah, %10
  %i.aj = sitofp <4 x i32> %i.ai to <4 x float>   ; 4 uses
  %11 = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fdiv reassoc nsz arcp contract afn <2 x float> %i.m, %11
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  store <2 x double> %i.al, ptr %1, align 16, !tbaa !17
  %12 = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fdiv reassoc nsz arcp contract afn <2 x float> %i.p, %12
  %i.an = fpext <2 x float> %i.am to <2 x double>
  store <2 x double> %i.an, ptr %2, align 16, !tbaa !17
  %13 = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ao = fdiv reassoc nsz arcp contract afn <2 x float> %i.t, %13
  %i.ap = fpext <2 x float> %i.ao to <2 x double>
  store <2 x double> %i.ap, ptr %i.r, align 8, !tbaa !17
  %i.aq = sitofp <2 x i32> %i.w to <2 x float>
  %14 = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ar = fdiv reassoc nsz arcp contract afn <2 x float> %i.aq, %14
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  store <2 x double> %i.as, ptr %i.v, align 16, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double 1.000000e+00, ptr %i.at, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.au = tail call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.au, ptr %i.av, align 16, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !20
  store ptr %i.au, ptr %i.a, align 16, !tbaa !20
  %i.ax = call ptr @cmsCreateRGBProfile(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #26 ; 6 uses
  %i.ay = load ptr, ptr %i.a, align 16, !tbaa !20
  call void @cmsFreeToneCurve(ptr noundef %i.ay) #26
  %i.az = icmp eq ptr %i.ax, null
  br i1 %i.az, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ba = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 512, ptr noundef nonnull @.str, ptr noundef nonnull %0) #26 ; 0 uses
  call void @cmsSetProfileVersion(ptr noundef nonnull %i.ax, double noundef 2.100000e+00) #26
  %i.bb = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.bc = call i32 @cmsMLUsetASCII(ptr noundef %i.bb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #26 ; 0 uses
  %i.bd = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.be = call i32 @cmsMLUsetASCII(ptr noundef %i.bd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.bf = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.bg = call i32 @cmsMLUsetASCII(ptr noundef %i.bf, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.bh = call i32 @cmsWriteTag(ptr noundef nonnull %i.ax, i32 noundef 1684893284, ptr noundef %i.bb) #26 ; 0 uses
  %i.bi = call i32 @cmsWriteTag(ptr noundef nonnull %i.ax, i32 noundef 1684890724, ptr noundef %i.bd) #26 ; 0 uses
  %i.bj = call i32 @cmsWriteTag(ptr noundef nonnull %i.ax, i32 noundef 1684370275, ptr noundef %i.bf) #26 ; 0 uses
  call void @cmsMLUfree(ptr noundef %i.bb) #26
  call void @cmsMLUfree(ptr noundef %i.bd) #26
  call void @cmsMLUfree(ptr noundef %i.bf) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g
  %.1 = phi ptr [ %i.ax, %bb.g ], [ null, %bb.d ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @cmsBuildGamma(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @cmsCreateRGBProfile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cmsFreeToneCurve(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @cmsSetProfileVersion(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @cmsMLUalloc(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmsMLUsetASCII(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cmsWriteTag(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @cmsMLUfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @dt_colorspaces_create_vendor_profile(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cmsCIExyY, align 16         ; 5 uses
  %2 = alloca %struct.cmsCIExyYTRIPLE, align 16   ; 9 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca [512 x i8], align 16              ; 5 uses
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.90) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(15) @.str.86) #27
  %.not.1 = icmp eq i32 %i.d, 0
  br i1 %.not.1, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(14) @.str.87) #27
  %.not.2 = icmp eq i32 %i.e, 0
  br i1 %.not.2, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(12) @.str.88) #27
  %.not.3 = icmp eq i32 %i.f, 0
  br i1 %.not.3, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(13) @.str.89) #27
  %.not.4 = icmp eq i32 %i.g, 0
  br i1 %.not.4, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @dt_vendor_colormatrices, %bb.a ], [ getelementptr inbounds nuw (i8, ptr @dt_vendor_colormatrices, i64 56), %bb.b ], [ getelementptr inbounds nuw (i8, ptr @dt_vendor_colormatrices, i64 112), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @dt_vendor_colormatrices, i64 168), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @dt_vendor_colormatrices, i64 224), %bb.e ] ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 44
  %3 = load i32, ptr %i.h, align 4, !tbaa !16     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.lcssa, i64 52
  %4 = load i32, ptr %i.i, align 4, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %5 = load i32, ptr %i.k, align 8, !tbaa !16
  %6 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 20
  %i.l = getelementptr inbounds nuw i8, ptr %.lcssa, i64 28
  %7 = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %8 = sitofp reassoc nsz arcp contract afn i32 %3 to float
  %9 = insertelement <2 x float> <float poison, float 1.000000e+06>, float %8, i64 0
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 1.000000e+00, ptr %i.m, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.n = load <2 x i32>, ptr %i.j, align 8, !tbaa !16 ; 3 uses
  %i.o = sitofp <2 x i32> %i.n to <2 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double 1.000000e+00, ptr %i.p, align 16, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load <2 x i32>, ptr %6, align 4, !tbaa !16 ; 3 uses
  %10 = sitofp <2 x i32> %i.r to <2 x float>
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double 1.000000e+00, ptr %11, align 8, !tbaa !15
  %12 = getelementptr inbounds nuw i8, ptr %2, i64 48
  %13 = load <2 x i32>, ptr %7, align 8, !tbaa !16 ; 3 uses
  %14 = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %i.l, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison), !tbaa !16
  %15 = shufflevector <2 x i32> %i.n, <2 x i32> %i.r, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %16 = insertelement <4 x i32> %15, i32 %3, i64 0
  %i.s = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.t = shufflevector <4 x i32> %16, <4 x i32> %i.s, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %17 = shufflevector <2 x i32> %i.n, <2 x i32> %i.r, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.u = insertelement <4 x i32> %17, i32 1000000, i64 0
  %i.v = shufflevector <2 x i32> %13, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <4 x i32> %i.u, <4 x i32> %i.v, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.w = add nsw <4 x i32> %i.t, %18
  %19 = insertelement <4 x i32> poison, i32 %4, i64 0
  %20 = insertelement <4 x i32> %19, i32 %5, i64 1
  %21 = shufflevector <4 x i32> %20, <4 x i32> %14, <4 x i32> <i32 0, i32 1, i32 4, i32 7>
  %i.x = add nsw <4 x i32> %i.w, %21
  %i.y = sitofp <4 x i32> %i.x to <4 x float>     ; 4 uses
  %22 = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> zeroinitializer
  %i.z = fdiv reassoc nsz arcp contract afn <2 x float> %9, %22
  %i.aa = fpext <2 x float> %i.z to <2 x double>
  store <2 x double> %i.aa, ptr %1, align 16, !tbaa !17
  %23 = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fdiv reassoc nsz arcp contract afn <2 x float> %i.o, %23
  %i.ac = fpext <2 x float> %i.ab to <2 x double>
  store <2 x double> %i.ac, ptr %2, align 16, !tbaa !17
  %24 = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ad = fdiv reassoc nsz arcp contract afn <2 x float> %10, %24
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  store <2 x double> %i.ae, ptr %i.q, align 8, !tbaa !17
  %i.af = sitofp <2 x i32> %13 to <2 x float>
  %25 = shufflevector <4 x float> %i.y, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.ag = fdiv reassoc nsz arcp contract afn <2 x float> %i.af, %25
  %i.ah = fpext <2 x float> %i.ag to <2 x double>
  store <2 x double> %i.ah, ptr %12, align 16, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double 1.000000e+00, ptr %i.ai, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.aj = tail call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aj, ptr %i.ak, align 16, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !20
  store ptr %i.aj, ptr %i.a, align 16, !tbaa !20
  %i.am = call ptr @cmsCreateRGBProfile(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #26 ; 6 uses
  %i.an = load ptr, ptr %i.a, align 16, !tbaa !20
  call void @cmsFreeToneCurve(ptr noundef %i.an) #26
  %i.ao = icmp eq ptr %i.am, null
  br i1 %i.ao, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 512, ptr noundef nonnull @.str.4, ptr noundef nonnull %0) #26 ; 0 uses
  call void @cmsSetProfileVersion(ptr noundef nonnull %i.am, double noundef 2.100000e+00) #26
  %i.aq = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.ar = call i32 @cmsMLUsetASCII(ptr noundef %i.aq, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #26 ; 0 uses
  %i.as = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.at = call i32 @cmsMLUsetASCII(ptr noundef %i.as, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.au = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.av = call i32 @cmsMLUsetASCII(ptr noundef %i.au, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.aw = call i32 @cmsWriteTag(ptr noundef nonnull %i.am, i32 noundef 1684893284, ptr noundef %i.aq) #26 ; 0 uses
  %i.ax = call i32 @cmsWriteTag(ptr noundef nonnull %i.am, i32 noundef 1684890724, ptr noundef %i.as) #26 ; 0 uses
  %i.ay = call i32 @cmsWriteTag(ptr noundef nonnull %i.am, i32 noundef 1684370275, ptr noundef %i.au) #26 ; 0 uses
  call void @cmsMLUfree(ptr noundef %i.aq) #26
  call void @cmsMLUfree(ptr noundef %i.as) #26
  call void @cmsMLUfree(ptr noundef %i.au) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.h
  %.1 = phi ptr [ %i.am, %bb.h ], [ null, %bb.e ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define ptr @dt_colorspaces_create_darktable_profile(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.cmsCIExyY, align 16         ; 5 uses
  %2 = alloca %struct.cmsCIExyYTRIPLE, align 16   ; 9 uses
  %i.a = alloca [3 x ptr], align 16               ; 7 uses
  %i.b = alloca [512 x i8], align 16              ; 5 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 93
  br i1 %exitcond.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [56 x i8], ptr @dt_profiled_colormatrices, i64 %indvars.iv ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef %i.d) #27
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %5 = load i32, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.k = load <2 x i32>, ptr %i.f, align 4, !tbaa !16 ; 3 uses
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double 1.000000e+00, ptr %i.m, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.n = load <2 x i32>, ptr %i.g, align 8, !tbaa !16 ; 3 uses
  %i.o = sitofp <2 x i32> %i.n to <2 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double 1.000000e+00, ptr %i.p, align 16, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load <2 x i32>, ptr %i.i, align 4, !tbaa !16 ; 3 uses
  %i.s = sitofp <2 x i32> %i.r to <2 x float>
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double 1.000000e+00, ptr %i.t, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.v = load <2 x i32>, ptr %i.j, align 8, !tbaa !16 ; 3 uses
  %7 = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 4 %6, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison), !tbaa !16
  %i.w = shufflevector <2 x i32> %i.k, <2 x i32> %i.n, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.x = shufflevector <2 x i32> %i.r, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.y = shufflevector <4 x i32> %i.w, <4 x i32> %i.x, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.z = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aa = shufflevector <4 x i32> %i.y, <4 x i32> %i.z, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ab = shufflevector <2 x i32> %i.k, <2 x i32> %i.n, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ac = shufflevector <2 x i32> %i.r, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ad = shufflevector <4 x i32> %i.ab, <4 x i32> %i.ac, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ae = shufflevector <2 x i32> %i.v, <2 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.af = shufflevector <4 x i32> %i.ad, <4 x i32> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ag = add nsw <4 x i32> %i.aa, %i.af
  %8 = insertelement <4 x i32> poison, i32 %4, i64 0
  %9 = insertelement <4 x i32> %8, i32 %5, i64 1
  %10 = shufflevector <4 x i32> %9, <4 x i32> %7, <4 x i32> <i32 0, i32 1, i32 4, i32 7>
  %i.ah = add nsw <4 x i32> %i.ag, %10
  %i.ai = sitofp <4 x i32> %i.ah to <4 x float>   ; 4 uses
  %11 = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> zeroinitializer
  %i.aj = fdiv reassoc nsz arcp contract afn <2 x float> %i.l, %11
  %i.ak = fpext <2 x float> %i.aj to <2 x double>
  store <2 x double> %i.ak, ptr %1, align 16, !tbaa !17
  %12 = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.al = fdiv reassoc nsz arcp contract afn <2 x float> %i.o, %12
  %i.am = fpext <2 x float> %i.al to <2 x double>
  store <2 x double> %i.am, ptr %2, align 16, !tbaa !17
  %13 = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.an = fdiv reassoc nsz arcp contract afn <2 x float> %i.s, %13
  %i.ao = fpext <2 x float> %i.an to <2 x double>
  store <2 x double> %i.ao, ptr %i.q, align 8, !tbaa !17
  %i.ap = sitofp <2 x i32> %i.v to <2 x float>
  %14 = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.aq = fdiv reassoc nsz arcp contract afn <2 x float> %i.ap, %14
  %i.ar = fpext <2 x float> %i.aq to <2 x double>
  store <2 x double> %i.ar, ptr %i.u, align 16, !tbaa !17
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double 1.000000e+00, ptr %i.as, align 16, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.at = tail call ptr @cmsBuildGamma(ptr noundef null, double noundef 1.000000e+00) #26 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.at, ptr %i.au, align 16, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.at, ptr %i.av, align 8, !tbaa !20
  store ptr %i.at, ptr %i.a, align 16, !tbaa !20
  %i.aw = call ptr @cmsCreateRGBProfile(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #26 ; 6 uses
  %i.ax = load ptr, ptr %i.a, align 16, !tbaa !20
  call void @cmsFreeToneCurve(ptr noundef %i.ax) #26
  %i.ay = icmp eq ptr %i.aw, null
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 512, ptr noundef nonnull @.str.5, ptr noundef %0) #26 ; 0 uses
  call void @cmsSetProfileVersion(ptr noundef nonnull %i.aw, double noundef 2.100000e+00) #26
  %i.ba = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.bb = call i32 @cmsMLUsetASCII(ptr noundef %i.ba, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #26 ; 0 uses
  %i.bc = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.bd = call i32 @cmsMLUsetASCII(ptr noundef %i.bc, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.be = call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.bf = call i32 @cmsMLUsetASCII(ptr noundef %i.be, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #26 ; 0 uses
  %i.bg = call i32 @cmsWriteTag(ptr noundef nonnull %i.aw, i32 noundef 1684893284, ptr noundef %i.ba) #26 ; 0 uses
  %i.bh = call i32 @cmsWriteTag(ptr noundef nonnull %i.aw, i32 noundef 1684890724, ptr noundef %i.bc) #26 ; 0 uses
  %i.bi = call i32 @cmsWriteTag(ptr noundef nonnull %i.aw, i32 noundef 1684370275, ptr noundef %i.be) #26 ; 0 uses
  call void @cmsMLUfree(ptr noundef %i.ba) #26
  call void @cmsMLUfree(ptr noundef %i.bc) #26
  call void @cmsMLUfree(ptr noundef %i.be) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.f
  %.1 = phi ptr [ %i.aw, %bb.f ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @dt_colorspaces_get_work_profile(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = load ptr, ptr @dt_colorspaces_get_work_profile.colorin, align 8, !tbaa !23 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.a
  %.01954 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 16), align 8, !tbaa !25 ; 2 uses
  %.not55 = icmp eq ptr %.01954, null
  br i1 %.not55, label %.thread41, label %.critedge

bb.b:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.01956, i64 8
  %.019 = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %.not = icmp eq ptr %.019, null
  br i1 %.not, label %._crit_edge, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.b
  %.01956 = phi ptr [ %.019, %bb.b ], [ %.01954, %.preheader ] ; 2 uses
  %i.e = load ptr, ptr %.01956, align 8, !tbaa !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.g = tail call i32 @g_strcmp0(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.6) #26
  %.not.i.not = icmp eq i32 %i.g, 0
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.critedge
  store ptr %i.e, ptr @dt_colorspaces_get_work_profile.colorin, align 8, !tbaa !23
  br label %.thread

._crit_edge:                                      ; preds = %bb.b
  %.pr.pre = load ptr, ptr @dt_colorspaces_get_work_profile.colorin, align 8, !tbaa !23 ; 2 uses
  %.not24 = icmp eq ptr %.pr.pre, null
  br i1 %.not24, label %.thread41, label %.thread

.thread:                                          ; preds = %bb.a, %bb.c, %._crit_edge
  %i.h = phi ptr [ %.pr.pre, %._crit_edge ], [ %i.b, %bb.a ], [ %i.e, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 464
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !32
  %.not25 = icmp eq ptr %i.j, null
  br i1 %.not25, label %.thread41, label %bb.d

bb.d:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !75
  %i.l = and i32 %i.k, 256
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 821, ptr noundef nonnull @__FUNCTION__.dt_colorspaces_get_work_profile, ptr noundef nonnull @.str.9) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !76
  %i.n = tail call ptr @dt_database_get(ptr noundef %i.m) #26
  %i.o = call i32 @sqlite3_prepare_v2(ptr noundef %i.n, ptr noundef nonnull @.str.9, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #26
  %.not27 = icmp eq i32 %i.o, 0
  br i1 %.not27, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !78
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !76
  %i.r = call ptr @dt_database_get(ptr noundef %i.q) #26
  %i.s = call ptr @sqlite3_errmsg(ptr noundef %i.r) #26
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 821, ptr noundef nonnull @__FUNCTION__.dt_colorspaces_get_work_profile, ptr noundef nonnull @.str.9, ptr noundef %i.s) #28 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.v = call i32 @sqlite3_bind_int(ptr noundef %i.u, i32 noundef 1, i32 noundef %0) #26
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !78
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !76
  %i.y = call ptr @dt_database_get(ptr noundef %i.x) #26
  %i.z = call ptr @sqlite3_errmsg(ptr noundef %i.y) #26
  %i.aa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, i32 noundef 823, ptr noundef nonnull @__FUNCTION__.dt_colorspaces_get_work_profile, ptr noundef %i.z) #28 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.ac = call i32 @sqlite3_step(ptr noundef %i.ab) #26
  %i.ad = icmp eq i32 %i.ac, 100
  br i1 %i.ad, label %bb.k, label %.thread45

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.af = call ptr @sqlite3_column_blob(ptr noundef %i.ae, i32 noundef 0) #26 ; 2 uses
  %i.ag = load ptr, ptr @dt_colorspaces_get_work_profile.colorin, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 464
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.aj = call ptr %i.ai(ptr noundef %i.af, ptr noundef nonnull @.str.12) #26 ; 2 uses
  %i.ak = load ptr, ptr @dt_colorspaces_get_work_profile.colorin, align 8, !tbaa !23
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 464
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = call ptr %i.am(ptr noundef %i.af, ptr noundef nonnull @.str.13) #26 ; 2 uses
  %i.ao = icmp ne ptr %i.aj, null
  %i.ap = icmp ne ptr %i.an, null
  %or.cond = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.l, label %.thread45

bb.l:                                             ; preds = %bb.k
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !16 ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 216), align 8, !tbaa !81
  %.02339.i = load ptr, ptr %i.ar, align 8, !tbaa !25 ; 3 uses
  %.not40.i = icmp eq ptr %.02339.i, null
  br i1 %.not40.i, label %.thread45, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %.not32.i = icmp eq i32 %i.aq, 0
  br i1 %.not32.i, label %.lr.ph.split.us.i, label %.lr.ph.split.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.o
  %.02341.us.i = phi ptr [ %.023.us.i, %bb.o ], [ %.02339.i, %.lr.ph.i ] ; 2 uses
  %i.as = load ptr, ptr %.02341.us.i, align 8, !tbaa !27 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1060
  %i.au = load i32, ptr %i.at, align 4, !tbaa !83
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.split.us.i
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !84
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.az = call i32 @dt_colorspaces_is_profile_equal(ptr noundef nonnull %i.ay, ptr noundef nonnull readonly %i.an)
  %.not33.us.i = icmp eq i32 %i.az, 0
  br i1 %.not33.us.i, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %.lr.ph.split.us.i, %bb.n, %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.02341.us.i, i64 8
  %.023.us.i = load ptr, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %.not.us.i = icmp eq ptr %.023.us.i, null
  br i1 %.not.us.i, label %.thread45, label %.lr.ph.split.us.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.i, %bb.q
  %.02341.us48.i = phi ptr [ %.023.us49.i, %bb.q ], [ %.02339.i, %.lr.ph.i ] ; 2 uses
  %i.bb = load ptr, ptr %.02341.us48.i, align 8, !tbaa !27 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1060
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !83
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.split.us.i
end_hunk_0
begin_hunk_1_@dt_make_transposed_matrices_from_primaries_and_whitepoint:.preheader
  %i.de = load float, ptr %i.au, align 8, !tbaa !14
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.cj
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 40
  store float %i.df, ptr %i.dg, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

declare i32 @mat3SSEinv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @dt_colorspaces_profile_is_wide_gamut(i32 noundef %0) local_unnamed_addr #18 {
bb.a:
  %switch.tableidx = add i32 %0, -2               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 25
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.dt_colorspaces_profile_is_wide_gamut, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @cmsIsMatrixShaper(ptr noundef) local_unnamed_addr #3

declare i32 @cmsIsCLUT(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmsIsToneCurveLinear(ptr noundef) local_unnamed_addr #3

declare float @cmsEvalToneCurveFloat(ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cmsReverseToneCurveEx(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cmsXYZ2xyY(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cmsCreateProfilePlaceholder(ptr noundef) local_unnamed_addr #3

declare void @cmsSetDeviceClass(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cmsSetColorSpace(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cmsSetPCS(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cmsLinkTag(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsCreateTransform(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsBuildParametricToneCurve(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_create_lcms_profile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  %i.b = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.c = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.d = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  %i.e = tail call ptr @cmsMLUalloc(ptr noundef null, i32 noundef 1) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %4, ptr %i.a, align 16, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %4, ptr %i.g, align 16, !tbaa !20
  %i.h = call ptr @cmsCreateRGBProfile(ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a) #26 ; 8 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @cmsSetProfileVersion(ptr noundef %i.h, double noundef 2.400000e+00) #26
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not29 = icmp eq ptr %5, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1667851120, ptr noundef nonnull %5) #26 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  call void @cmsSetHeaderFlags(ptr noundef %i.h, i32 noundef 1) #26
  %i.j = call i32 @cmsMLUsetASCII(ptr noundef %i.b, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.181) #26 ; 0 uses
  %i.k = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1668313716, ptr noundef %i.b) #26 ; 0 uses
  %i.l = call i32 @cmsMLUsetASCII(ptr noundef %i.c, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %0) #26 ; 0 uses
  %i.m = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1684370275, ptr noundef %i.c) #26 ; 0 uses
  %i.n = call i32 @cmsMLUsetASCII(ptr noundef %i.d, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %1) #26 ; 0 uses
  %i.o = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1684890724, ptr noundef %i.d) #26 ; 0 uses
  %i.p = call i32 @cmsMLUsetASCII(ptr noundef %i.e, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.182) #26 ; 0 uses
  %i.q = call i32 @cmsWriteTag(ptr noundef %i.h, i32 noundef 1684893284, ptr noundef %i.e) #26 ; 0 uses
  call void @cmsMLUfree(ptr noundef %i.b) #26
  call void @cmsMLUfree(ptr noundef %i.c) #26
  call void @cmsMLUfree(ptr noundef %i.d) #26
  call void @cmsMLUfree(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %i.h
}

declare void @cmsSetHeaderFlags(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #19

declare ptr @cmsBuildTabulatedToneCurveFloat(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #20

declare ptr @cmsCreateXYZProfile() local_unnamed_addr #3

declare void @cmsSetHeaderRenderingIntent(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cmsCreateLab4Profile(ptr noundef) local_unnamed_addr #3

declare ptr @cmsD50_xyY() local_unnamed_addr #3

declare void @dt_loc_get_user_config_dir(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @dt_loc_get_datadir(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #21

declare noalias ptr @g_build_filename(ptr noundef, ...) local_unnamed_addr #3

declare ptr @g_dir_open(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_dir_read_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_read_file(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @g_list_prepend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_dir_close(ptr noundef) local_unnamed_addr #3

declare ptr @g_list_sort(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @_sort_profiles(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.b = tail call noalias ptr @g_utf8_casefold(ptr noundef nonnull %i.a, i64 noundef -1) #26 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.d = tail call noalias ptr @g_utf8_casefold(ptr noundef nonnull %i.c, i64 noundef -1) #26 ; 2 uses
  %i.e = tail call i32 @g_strcmp0(ptr noundef %i.b, ptr noundef %i.d) #26
  tail call void @g_free(ptr noundef %i.b) #26
  tail call void @g_free(ptr noundef %i.d) #26
  ret i32 %i.e
}

declare noalias ptr @g_utf8_casefold(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gdk_monitor_get_display(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_display_get_n_monitors(ptr noundef) local_unnamed_addr #3

declare ptr @gdk_display_get_monitor(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #10

declare ptr @cd_window_get_profile_finish(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cd_profile_get_filename(ptr noundef) local_unnamed_addr #3

declare i32 @g_file_get_contents(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x i32> @llvm.masked.load.v4i32.p0(ptr captures(none), <4 x i1>, <4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.exp.v8f64(<8 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x double> @llvm.masked.load.v4f64.p0(ptr captures(none), <4 x i1>, <4 x double>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { cold nounwind }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!13 = !{!"float", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!12, !11, i64 16}
!16 = !{!8, !8, i64 0}
!17 = !{!11, !11, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 _ZTS17_cms_curve_struct", !18, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 omnipotent char", !18, i64 0}
!22 = !{!"p1 _ZTS18dt_iop_module_so_t", !18, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"p1 _ZTS6_GList", !18, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"_GList", !18, i64 0, !24, i64 8, !24, i64 16}
!27 = !{!26, !18, i64 0}
!28 = !{!"p1 _ZTS11dt_action_t", !18, i64 0}
!29 = !{!"dt_action_t", !8, i64 0, !21, i64 8, !21, i64 16, !18, i64 24, !28, i64 32, !28, i64 40}
!30 = !{!"p1 _ZTS8_GModule", !18, i64 0}
!31 = !{!"dt_iop_module_so_t", !29, i64 0, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !18, i64 224, !18, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !18, i64 320, !18, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !18, i64 376, !18, i64 384, !18, i64 392, !18, i64 400, !18, i64 408, !18, i64 416, !18, i64 424, !18, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !30, i64 488, !7, i64 496, !18, i64 520, !8, i64 528, !18, i64 536, !8, i64 544, !8, i64 548}
!32 = !{!31, !18, i64 464}
!33 = !{!"dt_codepath_t", !8, i64 0}
!34 = !{!"p1 _ZTS11_JsonParser", !18, i64 0}
!35 = !{!"p1 _ZTS9dt_conf_t", !18, i64 0}
!36 = !{!"p1 _ZTS12dt_develop_t", !18, i64 0}
!37 = !{!"p1 _ZTS8dt_lib_t", !18, i64 0}
!38 = !{!"p1 _ZTS17dt_view_manager_t", !18, i64 0}
!39 = !{!"p1 _ZTS12dt_control_t", !18, i64 0}
!40 = !{!"p1 _ZTS19dt_control_signal_t", !18, i64 0}
!41 = !{!"p1 _ZTS12dt_gui_gtk_t", !18, i64 0}
!42 = !{!"p1 _ZTS17dt_mipmap_cache_t", !18, i64 0}
!43 = !{!"p1 _ZTS16dt_image_cache_t", !18, i64 0}
!44 = !{!"p1 _ZTS12dt_bauhaus_t", !18, i64 0}
!45 = !{!"p1 _ZTS13dt_database_t", !18, i64 0}
!46 = !{!"p1 _ZTS14dt_pwstorage_t", !18, i64 0}
!47 = !{!"p1 _ZTS11dt_camctl_t", !18, i64 0}
!48 = !{!"p1 _ZTS15dt_collection_t", !18, i64 0}
!49 = !{!"p1 _ZTS14dt_selection_t", !18, i64 0}
!50 = !{!"p1 _ZTS11dt_points_t", !18, i64 0}
!51 = !{!"p1 _ZTS12dt_imageio_t", !18, i64 0}
!52 = !{!"p1 _ZTS11dt_opencl_t", !18, i64 0}
!53 = !{!"p1 _ZTS9dt_dbus_t", !18, i64 0}
!54 = !{!"p1 _ZTS9dt_undo_t", !18, i64 0}
!55 = !{!"p1 _ZTS16dt_colorspaces_t", !18, i64 0}
!56 = !{!"p1 _ZTS9dt_l10n_t", !18, i64 0}
!57 = !{!"dt_pthread_mutex_t", !7, i64 0}
!58 = !{!"p1 _ZTS9lua_State", !18, i64 0}
!59 = !{!"_Bool", !7, i64 0}
!60 = !{!"p1 _ZTS10_GMainLoop", !18, i64 0}
!61 = !{!"p1 _ZTS13_GMainContext", !18, i64 0}
!62 = !{!"p1 _ZTS12_GThreadPool", !18, i64 0}
!63 = !{!"p1 _ZTS12_GAsyncQueue", !18, i64 0}
!64 = !{!"", !58, i64 0, !57, i64 8, !7, i64 48, !59, i64 96, !59, i64 97, !60, i64 104, !61, i64 112, !62, i64 120, !63, i64 128, !63, i64 136, !63, i64 144}
!65 = !{!"p1 _ZTS10_GTimeZone", !18, i64 0}
!66 = !{!"p1 _ZTS10_GDateTime", !18, i64 0}
!67 = !{!"long", !7, i64 0}
!68 = !{!"p1 int", !18, i64 0}
!69 = !{!"dt_sys_resources_t", !67, i64 0, !67, i64 8, !68, i64 16, !68, i64 24, !8, i64 32}
!70 = !{!"dt_backthumb_t", !11, i64 0, !11, i64 8, !8, i64 16, !8, i64 20}
!71 = !{!"dt_gimp_t", !8, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28}
!72 = !{!"p1 _ZTS10_GtkWidget", !18, i64 0}
!73 = !{!"dt_splash_t", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !8, i64 32}
!74 = !{!"darktable_t", !33, i64 0, !8, i64 4, !8, i64 8, !24, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !34, i64 48, !35, i64 56, !36, i64 64, !37, i64 72, !38, i64 80, !39, i64 88, !40, i64 96, !41, i64 104, !42, i64 112, !43, i64 120, !44, i64 128, !45, i64 136, !46, i64 144, !47, i64 152, !48, i64 160, !49, i64 168, !50, i64 176, !51, i64 184, !52, i64 192, !53, i64 200, !54, i64 208, !55, i64 216, !56, i64 224, !7, i64 232, !57, i64 2792, !57, i64 2832, !57, i64 2872, !57, i64 2912, !57, i64 2952, !57, i64 2992, !21, i64 3032, !21, i64 3040, !21, i64 3048, !21, i64 3056, !21, i64 3064, !21, i64 3072, !21, i64 3080, !21, i64 3088, !21, i64 3096, !21, i64 3104, !21, i64 3112, !21, i64 3120, !21, i64 3128, !64, i64 3136, !24, i64 3288, !11, i64 3296, !24, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !65, i64 3520, !66, i64 3528, !69, i64 3536, !70, i64 3576, !71, i64 3600, !73, i64 3632, !8, i64 3672}
!75 = !{!74, !8, i64 8}
!76 = !{!74, !45, i64 136}
!77 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!78 = !{!77, !77, i64 0}
!79 = !{!"p1 _ZTS12sqlite3_stmt", !18, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!74, !55, i64 216}
!82 = !{!"dt_colorspaces_color_profile_t", !8, i64 0, !7, i64 4, !7, i64 516, !18, i64 1032, !8, i64 1040, !8, i64 1044, !8, i64 1048, !8, i64 1052, !8, i64 1056, !8, i64 1060}
!83 = !{!82, !8, i64 1060}
!84 = !{!82, !8, i64 0}
!85 = !{!82, !8, i64 1044}
!86 = !{!82, !8, i64 1048}
!87 = !{!7, !7, i64 0}
!88 = !{!"dt_colorspaces_t", !24, i64 0, !7, i64 8, !21, i64 64, !21, i64 72, !8, i64 80, !21, i64 88, !21, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !7, i64 124, !7, i64 636, !7, i64 1148, !7, i64 1660, !8, i64 2172, !8, i64 2176, !8, i64 2180, !8, i64 2184, !18, i64 2192, !18, i64 2200, !18, i64 2208, !18, i64 2216}
!89 = !{!88, !18, i64 2192}
!90 = !{!88, !18, i64 2200}
!91 = !{!88, !8, i64 108}
!92 = !{!82, !18, i64 1032}
!93 = !{}
!94 = !{!88, !8, i64 2172}
!95 = !{!88, !18, i64 2208}
!96 = !{!88, !18, i64 2216}
!97 = !{!88, !8, i64 112}
!98 = !{!82, !8, i64 1052}
!99 = !{!88, !8, i64 2176}
!100 = !{!88, !24, i64 0}
!101 = !{!82, !8, i64 1040}
!102 = !{!"llvm.loop.isvectorized", i32 1}
!103 = !{!"llvm.loop.unroll.runtime.disable"}
!104 = !{!88, !8, i64 116}
!105 = !{!88, !8, i64 120}
!106 = !{!88, !8, i64 2180}
!107 = !{!88, !8, i64 2184}
!108 = !{!67, !67, i64 0}
!109 = !{!88, !21, i64 64}
!110 = !{!88, !21, i64 72}
!111 = !{!88, !21, i64 88}
!112 = !{!88, !21, i64 96}
!113 = !{!21, !21, i64 0}
!114 = !{!88, !8, i64 104}
!115 = !{!88, !8, i64 80}
!116 = !{!74, !8, i64 3312}
!117 = !{!74, !40, i64 96}
!118 = !{!12, !11, i64 0}
!119 = !{!12, !11, i64 8}
!120 = !{!"dt_profiled_colormatrix_t", !21, i64 0, !7, i64 8, !7, i64 20, !7, i64 32, !7, i64 44}
!121 = !{!120, !21, i64 0}
!122 = distinct !{!122, !102, !103}
!123 = distinct !{!123, !102, !103}
!124 = !{!"", !12, i64 0, !12, i64 24, !12, i64 48}
!125 = !{!124, !11, i64 16}
!126 = !{!124, !11, i64 40}
!127 = !{!124, !11, i64 64}
!128 = !{!82, !8, i64 1056}
!129 = !{!26, !24, i64 8}
!130 = !{!74, !36, i64 64}
!131 = !{!"p1 _ZTS15dt_iop_module_t", !18, i64 0}
!132 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !18, i64 0}
!133 = !{!"short", !7, i64 0}
!134 = !{!"", !133, i64 0, !133, i64 2}
!135 = !{!"", !8, i64 0, !7, i64 16}
!136 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !134, i64 48, !135, i64 64, !7, i64 96, !8, i64 112}
!137 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!138 = !{!"dt_image_geoloc_t", !11, i64 0, !11, i64 8, !11, i64 16}
!139 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!140 = !{!"p1 _ZTS16dt_cache_entry_t", !18, i64 0}
!141 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !67, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !13, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !67, i64 1448, !67, i64 1456, !67, i64 1464, !67, i64 1472, !8, i64 1480, !136, i64 1488, !7, i64 1616, !21, i64 1656, !8, i64 1664, !8, i64 1668, !137, i64 1672, !138, i64 1680, !139, i64 1704, !133, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !13, i64 1756, !13, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !24, i64 1856, !140, i64 1864, !8, i64 1872, !8, i64 1876}
!142 = !{!"p1 _ZTS15dt_masks_form_t", !18, i64 0}
!143 = !{!"p1 _ZTS19dt_masks_form_gui_t", !18, i64 0}
!144 = !{!"dt_dev_proxy_exposure_t", !131, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!145 = !{!"p1 _ZTS15dt_lib_module_t", !18, i64 0}
!146 = !{!"", !145, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64}
!147 = !{!"", !145, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
end_hunk_1
