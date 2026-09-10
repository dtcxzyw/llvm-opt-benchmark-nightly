Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rmodels?download=true
inline.NumInlined: 1421
inline.NumDeleted: 227
loop-unroll.NumCompletelyUnrolled: 83
loop-unroll.NumRuntimeUnrolled: 98
loop-unroll.NumUnrolled: 187
begin_hunk_0_@UpdateModelAnimationEx:bb.a
  %i.xq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xo, <4 x float> %i.xp, <4 x float> %i.xl)
  %i.xr = insertelement <4 x float> poison, float %i.vp, i64 0
  %i.xs = shufflevector <2 x float> %i.tw, <2 x float> %i.tr, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> %i.um, <4 x i32> <i32 0, i32 1, i32 5, i32 5>
  %i.xu = insertelement <4 x float> poison, float %i.vy, i64 0
  %i.xv = shufflevector <2 x float> %i.vf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.xw = shufflevector <4 x float> %i.xu, <4 x float> %i.xv, <4 x i32> <i32 0, i32 4, i32 poison, i32 6> ; 2 uses
  %i.xx = shufflevector <4 x float> %i.xw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.xy = shufflevector <2 x float> %i.sn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.xz = insertelement <4 x float> %i.xy, float %i.wa, i64 2
  %i.ya = insertelement <4 x float> %i.xz, float %i.uc, i64 3
  %i.yb = insertelement <2 x float> poison, float %i.tl, i64 0
  %i.yc = shufflevector <2 x float> %i.yb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yd = fmul <2 x float> %i.ux, %i.yc
  %i.ye = shufflevector <2 x float> %i.ui, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ye, <2 x float> %i.ve, <2 x float> %i.yd) ; 6 uses
  %i.yg = extractelement <2 x float> %i.yf, i64 1
  %i.yh = fmul float %i.yg, %i.vl
  %i.yi = extractelement <2 x float> %i.ui, i64 0
  %i.yj = tail call float @llvm.fmuladd.f32(float %i.uk, float %i.yi, float %i.yh)
  %i.yk = extractelement <2 x float> %i.yf, i64 0
  %i.yl = tail call float @llvm.fmuladd.f32(float %i.yk, float %i.vm, float %i.yj)
  %i.ym = extractelement <2 x float> %i.vf, i64 1
  %i.yn = tail call float @llvm.fmuladd.f32(float %i.ym, float %i.vn, float %i.yl)
  %i.yo = tail call float @llvm.fmuladd.f32(float %i.vp, float %i.vq, float %i.yn)
  %i.yp = tail call float @llvm.fmuladd.f32(float %i.vy, float %i.vr, float %i.yo)
  %i.yq = fdiv float 1.000000e+00, %i.yp
  %i.yr = insertelement <4 x float> poison, float %i.yq, i64 0
  %i.ys = shufflevector <4 x float> %i.yr, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.yt = fmul <4 x float> %i.xb, %i.ys           ; 4 uses
  %i.yu = fmul <4 x float> %i.xq, %i.ys           ; 4 uses
  %i.yv = fneg <2 x float> %i.yf
  %i.yw = shufflevector <2 x float> %i.yv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yx = shufflevector <4 x float> %i.xr, <4 x float> %i.yw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.yy = shufflevector <2 x float> %i.yf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yz = shufflevector <4 x float> %i.yx, <4 x float> %i.yy, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.za = fmul <4 x float> %i.tx, %i.yz
  %i.zb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xt, <4 x float> %i.xx, <4 x float> %i.za)
  %i.zc = shufflevector <2 x float> %i.vf, <2 x float> %i.yf, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.zd = insertelement <4 x float> %i.zc, float %i.uk, i64 2
  %i.ze = shufflevector <4 x float> %i.zd, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 2> ; 2 uses
  %i.zf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ya, <4 x float> %i.ze, <4 x float> %i.zb)
  %i.zg = fmul <4 x float> %i.zf, %i.ys           ; 4 uses
  %i.zh = shufflevector <2 x float> %i.vf, <2 x float> %i.yf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.zi = shufflevector <4 x float> %i.zh, <4 x float> %i.yw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.zj = fmul <4 x float> %i.up, %i.zi
  %i.zk = shufflevector <4 x float> %i.xw, <4 x float> %i.vg, <4 x i32> <i32 poison, i32 1, i32 0, i32 5>
  %i.zl = insertelement <4 x float> %i.zk, float %i.uv, i64 0
  %i.zm = fneg <2 x float> %i.tp
  %i.zn = shufflevector <2 x float> %i.zm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.zo = insertelement <4 x float> %i.zn, float %i.vy, i64 0
  %i.zp = shufflevector <4 x float> %i.zo, <4 x float> %i.vg, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zq = shufflevector <4 x float> %i.zp, <4 x float> %i.xv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.zr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zl, <4 x float> %i.zq, <4 x float> %i.zj)
  %i.zs = insertelement <4 x float> poison, float %i.vu, i64 0
  %i.zt = insertelement <4 x float> %i.zs, float %i.ti, i64 2
  %i.zu = insertelement <4 x float> %i.zt, float %i.uk, i64 3
  %i.zv = shufflevector <4 x float> %i.zu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.zw = shufflevector <4 x float> %i.ze, <4 x float> %i.yy, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.zx = insertelement <4 x float> %i.zw, float %i.ua, i64 3
  %i.zy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zv, <4 x float> %i.zx, <4 x float> %i.zr)
  %i.zz = fmul <4 x float> %i.zy, %i.ys           ; 4 uses
  %i.aaa = shufflevector <3 x float> %i.py, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aab = fmul <4 x float> %i.aaa, %i.yu
  %i.aac = shufflevector <3 x float> %i.py, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aad = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yt, <4 x float> %i.aac, <4 x float> %i.aab)
  %i.aae = shufflevector <3 x float> %i.py, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aaf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zg, <4 x float> %i.aae, <4 x float> %i.aad)
  %i.aag = shufflevector <2 x float> %i.rm, <2 x float> poison, <4 x i32> zeroinitializer
  %i.aah = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.aag, <4 x float> %i.aaf)
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.aai, ptr %i.kz, align 4
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kz, i64 16
  %i.aaj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pj, <3 x float> zeroinitializer, <3 x float> %i.pn)
  %i.aak = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pq, <3 x float> zeroinitializer, <3 x float> %i.aaj)
  %i.aal = insertelement <3 x float> poison, float %i.kx, i64 0
  %i.aam = shufflevector <3 x float> %i.aal, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aan = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pt, <3 x float> %i.aam, <3 x float> %i.aak) ; 3 uses
  %i.aao = shufflevector <3 x float> %i.aan, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.aap = fmul <4 x float> %i.aao, %i.yu
  %i.aaq = shufflevector <3 x float> %i.aan, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aar = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yt, <4 x float> %i.aaq, <4 x float> %i.aap)
  %i.aas = shufflevector <3 x float> %i.aan, <3 x float> poison, <4 x i32> zeroinitializer
  %i.aat = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zg, <4 x float> %i.aas, <4 x float> %i.aar)
  %i.aau = insertelement <4 x float> poison, float %i.qv, i64 0
  %i.aav = shufflevector <4 x float> %i.aau, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.aav, <4 x float> %i.aat)
  %i.aax = shufflevector <4 x float> %i.aaw, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.aax, ptr %.sroa.7306.0..sroa_idx, align 4
  %.sroa.11310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  %i.aay = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pj, <3 x float> zeroinitializer, <3 x float> %i.pu) ; 2 uses
  %i.aaz = fadd <3 x float> %i.pq, %i.aay
  %i.aba = insertelement <3 x float> poison, float %i.ky, i64 0
  %i.abb = shufflevector <3 x float> %i.aba, <3 x float> poison, <3 x i32> zeroinitializer
  %i.abc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.pt, <3 x float> %i.abb, <3 x float> %i.aaz) ; 3 uses
  %i.abd = shufflevector <3 x float> %i.abc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.abe = fmul <4 x float> %i.abd, %i.yu
  %i.abf = shufflevector <3 x float> %i.abc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.abg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yt, <4 x float> %i.abf, <4 x float> %i.abe)
  %i.abh = shufflevector <3 x float> %i.abc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.abi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zg, <4 x float> %i.abh, <4 x float> %i.abg)
  %i.abj = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.abk = shufflevector <4 x float> %i.abj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.abk, <4 x float> %i.abi)
  %i.abm = shufflevector <4 x float> %i.abl, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.abm, ptr %.sroa.11310.0..sroa_idx, align 4
  %.sroa.15314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.abn = shufflevector <3 x float> %i.pq, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.abo = insertelement <4 x float> %i.abn, float %i.pa, i64 3
  %i.abp = shufflevector <3 x float> %i.aay, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.abq = shufflevector <4 x float> %i.abp, <4 x float> %i.qx, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.abr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abo, <4 x float> zeroinitializer, <4 x float> %i.abq)
  %i.abs = shufflevector <3 x float> %i.pt, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.abt = insertelement <4 x float> %i.abs, float 1.000000e+00, i64 3
  %i.abu = fadd <4 x float> %i.abt, %i.abr        ; 4 uses
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.abw = fmul <4 x float> %i.abv, %i.yu
  %i.abx = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.aby = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yt, <4 x float> %i.abx, <4 x float> %i.abw)
  %i.abz = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aca = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zg, <4 x float> %i.abz, <4 x float> %i.aby)
  %i.acb = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.acc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zz, <4 x float> %i.acb, <4 x float> %i.aca)
  %i.acd = shufflevector <4 x float> %i.acc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.acd, ptr %.sroa.15314.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g

bb.w:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @UnloadModelAnimations(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.preheader.preheader, label %._crit_edge15

.preheader.preheader:                             ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv17 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next18, %._crit_edge ] ; 2 uses
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %indvars.iv17 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.b

._crit_edge15:                                    ; preds = %._crit_edge, %bb.a
  tail call void @free(ptr noundef %0) #54
  ret void

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @free(ptr noundef %i.h) #54
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge15, label %.preheader

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @free(ptr noundef %i.k) #54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.c, align 4
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @IsModelAnimationValid(ptr nofree noundef readonly byval(%struct.Model) align 8 captures(none) %0, ptr nofree noundef readonly byval(%struct.ModelAnimation) align 8 captures(none) %1) local_unnamed_addr #23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.b, %i.d
  ret i1 %.not
}

; Function Attrs: nounwind uwtable
define void @GenMeshPoly(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = icmp slt i32 %1, 3
  br i1 %i.a, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = mul nuw nsw i32 %1, 3                    ; 5 uses
  %i.c = zext nneg i32 %i.b to i64                ; 11 uses
  %i.d = mul nuw nsw i64 %i.c, 12                 ; 2 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #56 ; 5 uses
  %i.f = uitofp nneg i32 %1 to float
  %i.g = fdiv float 3.600000e+02, %i.f
  %i.h = add nsw i32 %i.b, -2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %2, i64 0
  %i.k = shufflevector <4 x float> %i.j, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.d) #56 ; 7 uses
  %n.vec = and i64 %i.c, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %._crit_edge
  %index = phi i64 [ 0, %._crit_edge ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %index
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %index
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.m, align 4
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.o, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %.loopexit, label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.08592 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv ; 3 uses
  %i.r = fmul float %.08592, f0x3C8EFA35          ; 2 uses
  %i.s = tail call float @sinf(float noundef %i.r) #54
  %i.t = tail call float @cosf(float noundef %i.r) #54
  %i.u = fmul float %2, %i.s
  %i.v = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.u, i64 3
  store <4 x float> %i.v, ptr %i.q, align 4
  %.sroa.242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store float 0.000000e+00, ptr %.sroa.242.0..sroa_idx, align 4
  %.sroa.343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.w = fadd float %i.g, %.08592                 ; 2 uses
  %i.x = fmul float %i.w, f0x3C8EFA35             ; 2 uses
  %i.y = tail call float @sinf(float noundef %i.x) #54
  %i.z = tail call float @cosf(float noundef %i.x) #54
  %i.aa = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.t, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %i.y, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %i.z, i64 3
  %i.ad = fmul <4 x float> %i.ac, %i.k
  store <4 x float> %i.ad, ptr %.sroa.343.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ae = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  store i32 %i.b, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %1, ptr %i.af, align 4
  %i.ag = mul nuw nsw i32 %1, 9
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #56 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = mul i32 %1, 6
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 2
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.an) #56 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ao, ptr %i.ap, align 8
  %i.aq = tail call noalias ptr @malloc(i64 noundef %i.ai) #56 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.ar, align 8
  %xtraiter = and i64 %i.c, 1
  %unroll_iter = and i64 %i.c, 2147483646
  br label %bb.b

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %scalar.ph ], [ %n.vec, %middle.block ] ; 2 uses
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv99 ; 2 uses
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.as, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next100, %i.c
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !188

bb.b:                                             ; preds = %bb.b, %.loopexit
  %indvars.iv105 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next106.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.loopexit ], [ %niter.next.1, %bb.b ]
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv105 ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv105, 12
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx ; 2 uses
  %i.av = load <2 x float>, ptr %i.at, align 4
  store <2 x float> %i.av, ptr %i.au, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store float %i.ax, ptr %i.ay, align 4
  %indvars.iv.next106 = or disjoint i64 %indvars.iv105, 1 ; 2 uses
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next106 ; 2 uses
  %.idx.1 = mul nuw nsw i64 %indvars.iv.next106, 12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.1 ; 2 uses
  %i.bb = load <2 x float>, ptr %i.az, align 4
  store <2 x float> %i.bb, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bd = load float, ptr %i.bc, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store float %i.bd, ptr %i.be, align 4
  %indvars.iv.next106.1 = add nuw nsw i64 %indvars.iv105, 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %vector.ph125.unr-lcssa, label %bb.b

vector.ph125.unr-lcssa:                           ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.ph125, label %.epil.preheader

.epil.preheader:                                  ; preds = %vector.ph125.unr-lcssa
  %lcmp.mod133 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %indvars.iv.next106.1 ; 2 uses
  %.idx.epil = mul nuw nsw i64 %indvars.iv.next106.1, 12
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx.epil ; 2 uses
  %i.bh = load <2 x float>, ptr %i.bf, align 4
  store <2 x float> %i.bh, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store float %i.bj, ptr %i.bk, align 4
  br label %vector.ph125

vector.ph125:                                     ; preds = %vector.ph125.unr-lcssa, %.epil.preheader
  %n.vec126 = and i64 %i.c, 2147483644            ; 3 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next129, %vector.body127 ] ; 3 uses
  %i.bl = shl nuw nsw i64 %index128, 3
  %i.bm = shl i64 %index128, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bm
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x float> zeroinitializer, ptr %i.bn, align 4
  store <4 x float> zeroinitializer, ptr %i.bp, align 4
  %index.next129 = add nuw i64 %index128, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next129, %n.vec126
  br i1 %i.bq, label %middle.block130, label %vector.body127, !llvm.loop !189

middle.block130:                                  ; preds = %vector.body127
  %cmp.n131 = icmp eq i64 %n.vec126, %i.c
  br i1 %cmp.n131, label %.preheader.preheader, label %.preheader90

.preheader.preheader:                             ; preds = %.preheader90, %middle.block130
  %xtraiter134 = and i64 %i.c, 1
  %unroll_iter137 = and i64 %i.c, 2147483646
  br label %.preheader

.preheader90:                                     ; preds = %middle.block130, %.preheader90
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.preheader90 ], [ %n.vec126, %middle.block130 ] ; 2 uses
  %.idx121 = shl nuw nsw i64 %indvars.iv110, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx121
  store <2 x float> zeroinitializer, ptr %i.br, align 4
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %i.c
  br i1 %exitcond114.not, label %.preheader.preheader, label %.preheader90, !llvm.loop !190

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %bb.c, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa
  %lcmp.mod136 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv.next116.1 ; 2 uses
  %.idx122.epil = mul nuw nsw i64 %indvars.iv.next116.1, 12
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx122.epil ; 2 uses
  %i.bu = load <2 x float>, ptr %i.bs, align 4
  store <2 x float> %i.bu, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store float %i.bw, ptr %i.bx, align 4
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.preheader.epil.preheader
  tail call void @free(ptr noundef nonnull %i.e) #54
  tail call void @free(ptr noundef nonnull %i.l) #54
  tail call void @UploadMesh(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %bb.d

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  %indvars.iv115 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next116.1, %.preheader ] ; 4 uses
  %niter138 = phi i64 [ 0, %.preheader.preheader ], [ %niter138.next.1, %.preheader ]
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv115 ; 2 uses
  %.idx122 = mul nuw nsw i64 %indvars.iv115, 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx122 ; 2 uses
  %i.ca = load <2 x float>, ptr %i.by, align 4
  store <2 x float> %i.ca, ptr %i.bz, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cc = load float, ptr %i.cb, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store float %i.cc, ptr %i.cd, align 4
  %indvars.iv.next116 = or disjoint i64 %indvars.iv115, 1 ; 2 uses
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.l, i64 %indvars.iv.next116 ; 2 uses
  %.idx122.1 = mul nuw nsw i64 %indvars.iv.next116, 12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx122.1 ; 2 uses
  %i.cg = load <2 x float>, ptr %i.ce, align 4
  store <2 x float> %i.cg, ptr %i.cf, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load float, ptr %i.ch, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store float %i.ci, ptr %i.cj, align 4
  %indvars.iv.next116.1 = add nuw nsw i64 %indvars.iv115, 2 ; 3 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.unr-lcssa, label %.preheader

bb.d:                                             ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @GenMeshPlane(ptr dead_on_unwind noalias nofree writable sret(%struct.Mesh) align 8 captures(none) initializes((0, 120)) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false)
  %i.a = add nsw i32 %3, 1                        ; 6 uses
  %i.b = add i32 %4, 1                            ; 3 uses
  %i.c = mul nsw i32 %i.b, %i.a                   ; 12 uses
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  %i.e = mul nsw i64 %i.d, 12                     ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #56 ; 5 uses
  %.not141 = icmp slt i32 %4, 0                   ; 2 uses
  br i1 %.not141, label %._crit_edge145.split, label %.lr.ph144

.lr.ph144:                                        ; preds = %bb.a
  %i.g = uitofp nneg i32 %4 to float
  %.not135139 = icmp slt i32 %3, 0
  %i.h = sitofp i32 %3 to float                   ; 2 uses
  br i1 %.not135139, label %._crit_edge145.split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph144
  %i.i = zext nneg i32 %i.a to i64                ; 4 uses
  %wide.trip.count176 = zext i32 %i.b to i64
  %min.iters.check = icmp ult i32 %i.a, 4
  %n.vec = and i64 %i.i, 2147483644               ; 3 uses
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <4 x float> poison, float %1, i64 0
  %broadcast.splat227 = shufflevector <4 x float> %broadcast.splatinsert226, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.i
  br label %.lr.ph

._crit_edge145.split:                             ; preds = %._crit_edge, %.lr.ph144, %bb.a
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.e) #56 ; 7 uses
  %i.k = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.k, label %.lr.ph148.preheader, label %._crit_edge149

.lr.ph148.preheader:                              ; preds = %._crit_edge145.split
  %wide.trip.count181 = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check229 = icmp ult i32 %i.c, 4
  br i1 %min.iters.check229, label %.lr.ph148.preheader284, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph148.preheader
  %n.vec231 = and i64 %wide.trip.count181, 2147483644 ; 3 uses
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph230
  %index233 = phi i64 [ 0, %vector.ph230 ], [ %index.next234, %vector.body232 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %index233
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %index233
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.l, align 4
  store <6 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %i.n, align 4
  %index.next234 = add nuw i64 %index233, 4       ; 2 uses
  %i.o = icmp eq i64 %index.next234, %n.vec231
  br i1 %i.o, label %middle.block235, label %vector.body232, !llvm.loop !191

middle.block235:                                  ; preds = %vector.body232
  %cmp.n236 = icmp eq i64 %n.vec231, %wide.trip.count181
  br i1 %cmp.n236, label %._crit_edge149, label %.lr.ph148.preheader284

.lr.ph148.preheader284:                           ; preds = %.lr.ph148.preheader, %middle.block235
  %indvars.iv178.ph = phi i64 [ 0, %.lr.ph148.preheader ], [ %n.vec231, %middle.block235 ]
  br label %.lr.ph148

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv173 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next174, %._crit_edge ] ; 3 uses
  %i.p = trunc nuw nsw i64 %indvars.iv173 to i32
  %i.q = uitofp nneg i32 %i.p to float
  %i.r = fdiv float %i.q, %i.g
  %i.s = fadd float %i.r, -5.000000e-01
  %i.t = fmul float %2, %i.s                      ; 2 uses
  %i.u = mul nuw nsw i64 %indvars.iv173, %i.i
  %invariant.gep = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.u ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.t, i64 0
  %i.v = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.w = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.x = fdiv <4 x float> %i.w, %broadcast.splat225
  %i.y = fadd <4 x float> %i.x, splat (float -5.000000e-01)
  %i.z = fmul <4 x float> %broadcast.splat227, %i.y
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %index
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> zeroinitializer, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ab, <8 x float> %i.v, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x float> %interleaved.vec, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !192

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %i.ad = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.t, i64 1
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %._crit_edge145.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = uitofp nneg i32 %i.ae to float
  %i.ag = fdiv float %i.af, %i.h
  %i.ah = fadd float %i.ag, -5.000000e-01
  %i.ai = fmul float %1, %i.ah
  %gep = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  store float %i.ai, ptr %gep, align 4
  %.sroa.275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 4
  store <2 x float> %i.ad, ptr %.sroa.275.0..sroa_idx, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !193

._crit_edge149:                                   ; preds = %.lr.ph148, %middle.block235, %._crit_edge145.split
  %i.aj = shl nsw i64 %i.d, 3
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #56 ; 5 uses
  br i1 %.not141, label %._crit_edge156.split, label %.preheader138.lr.ph

.preheader138.lr.ph:                              ; preds = %._crit_edge149
  %.not134150 = icmp slt i32 %3, 0
  %i.al = sitofp i32 %3 to float                  ; 2 uses
  %i.am = uitofp nneg i32 %4 to float
  br i1 %.not134150, label %._crit_edge156.split, label %.preheader138.preheader

.preheader138.preheader:                          ; preds = %.preheader138.lr.ph
  %i.an = zext nneg i32 %i.a to i64               ; 4 uses
  %wide.trip.count191 = zext i32 %i.b to i64
  %min.iters.check239 = icmp ult i32 %i.a, 4
  %n.vec241 = and i64 %i.an, 2147483644           ; 3 uses
  %broadcast.splatinsert244 = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat245 = shufflevector <4 x float> %broadcast.splatinsert244, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n253 = icmp eq i64 %n.vec241, %i.an
  br label %.preheader138

.lr.ph148:                                        ; preds = %.lr.ph148.preheader284, %.lr.ph148
  %indvars.iv178 = phi i64 [ %indvars.iv.next179, %.lr.ph148 ], [ %indvars.iv178.ph, %.lr.ph148.preheader284 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv178 ; 2 uses
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.ao, align 4
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float 0.000000e+00, ptr %.sroa.3.0..sroa_idx, align 4
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !194

.preheader138:                                    ; preds = %.preheader138.preheader, %._crit_edge153
  %indvars.iv188 = phi i64 [ 0, %.preheader138.preheader ], [ %indvars.iv.next189, %._crit_edge153 ] ; 3 uses
  %i.ap = mul nuw nsw i64 %indvars.iv188, %i.an
  %i.aq = trunc nuw nsw i64 %indvars.iv188 to i32
  %i.ar = uitofp nneg i32 %i.aq to float
  %i.as = fdiv float %i.ar, %i.am                 ; 2 uses
  %invariant.gep222 = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ap ; 2 uses
  br i1 %min.iters.check239, label %scalar.ph238.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %.preheader138
  %broadcast.splatinsert242 = insertelement <4 x float> poison, float %i.as, i64 0
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph240
  %index247 = phi i64 [ 0, %vector.ph240 ], [ %index.next250, %vector.body246 ] ; 2 uses
  %vec.ind248 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph240 ], [ %vec.ind.next251, %vector.body246 ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep222, i64 %index247
  %i.au = uitofp nneg <4 x i32> %vec.ind248 to <4 x float>
  %i.av = fdiv <4 x float> %i.au, %broadcast.splat245
  %interleaved.vec249 = shufflevector <4 x float> %i.av, <4 x float> %broadcast.splatinsert242, <8 x i32> <i32 0, i32 4, i32 1, i32 4, i32 2, i32 4, i32 3, i32 4>
  store <8 x float> %interleaved.vec249, ptr %i.at, align 4
  %index.next250 = add nuw i64 %index247, 4       ; 2 uses
  %vec.ind.next251 = add <4 x i32> %vec.ind248, splat (i32 4)
  %i.aw = icmp eq i64 %index.next250, %n.vec241
  br i1 %i.aw, label %middle.block252, label %vector.body246, !llvm.loop !195

middle.block252:                                  ; preds = %vector.body246
  br i1 %cmp.n253, label %._crit_edge153, label %scalar.ph238.preheader

scalar.ph238.preheader:                           ; preds = %.preheader138, %middle.block252
  %indvars.iv183.ph = phi i64 [ 0, %.preheader138 ], [ %n.vec241, %middle.block252 ]
  br label %scalar.ph238

._crit_edge156.split:                             ; preds = %._crit_edge153, %.preheader138.lr.ph, %._crit_edge149
  %i.ax = mul nsw i32 %4, %3                      ; 4 uses
  %i.ay = mul nsw i32 %i.ax, 6                    ; 3 uses
  %i.az = sext i32 %i.ay to i64                   ; 2 uses
end_hunk_0
