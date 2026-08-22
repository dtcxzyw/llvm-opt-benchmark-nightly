Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacps_float?download=true
inline.NumInlined: 20
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@hybrid_synthesis:bb.a
  store float %i.hj, ptr %i.gx, align 4, !tbaa !15
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !15
  %i.hm = fadd nsz float %i.hl, %.promoted141     ; 2 uses
  store float %i.hm, ptr %i.gy, align 4, !tbaa !15
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !15
  %i.hp = fadd nsz float %i.ho, %.promoted142     ; 2 uses
  store float %i.hp, ptr %i.gz, align 4, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !15
  %i.hs = fadd nsz float %i.hr, %.promoted143     ; 2 uses
  store float %i.hs, ptr %i.ha, align 4, !tbaa !15
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv ; 2 uses
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !15
  %i.hv = fadd nsz float %i.hu, %i.hd             ; 2 uses
  store float %i.hv, ptr %i.gv, align 4, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !15
  %i.hy = fadd nsz float %i.hx, %i.hg             ; 2 uses
  store float %i.hy, ptr %i.gw, align 4, !tbaa !15
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !15
  %i.ib = fadd nsz float %i.ia, %i.hj             ; 2 uses
  store float %i.ib, ptr %i.gx, align 4, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.id = load float, ptr %i.ic, align 4, !tbaa !15
  %i.ie = fadd nsz float %i.id, %i.hm             ; 2 uses
  store float %i.ie, ptr %i.gy, align 4, !tbaa !15
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.ig = load float, ptr %i.if, align 4, !tbaa !15
  %i.ih = fadd nsz float %i.ig, %i.hp             ; 2 uses
  store float %i.ih, ptr %i.gz, align 4, !tbaa !15
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !15
  %i.ik = fadd nsz float %i.ij, %i.hs             ; 2 uses
  store float %i.ik, ptr %i.ha, align 4, !tbaa !15
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.im = load float, ptr %i.il, align 4, !tbaa !15
  %i.in = fadd nsz float %i.im, %i.hv             ; 2 uses
  store float %i.in, ptr %i.gv, align 4, !tbaa !15
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.ip = load float, ptr %i.io, align 4, !tbaa !15
  %i.iq = fadd nsz float %i.ip, %i.hy             ; 2 uses
  store float %i.iq, ptr %i.gw, align 4, !tbaa !15
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !15
  %i.it = fadd nsz float %i.is, %i.ib             ; 2 uses
  store float %i.it, ptr %i.gx, align 4, !tbaa !15
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.iv = load float, ptr %i.iu, align 4, !tbaa !15
  %i.iw = fadd nsz float %i.iv, %i.ie             ; 2 uses
  store float %i.iw, ptr %i.gy, align 4, !tbaa !15
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !15
  %i.iz = fadd nsz float %i.iy, %i.ih             ; 2 uses
  store float %i.iz, ptr %i.gz, align 4, !tbaa !15
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !15
  %i.jc = fadd nsz float %i.jb, %i.ik             ; 2 uses
  store float %i.jc, ptr %i.ha, align 4, !tbaa !15
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !15
  %i.jf = fadd nsz float %i.je, %i.in
  store float %i.jf, ptr %i.gv, align 4, !tbaa !15
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !15
  %i.ji = fadd nsz float %i.jh, %i.iq
  store float %i.ji, ptr %i.gw, align 4, !tbaa !15
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv ; 2 uses
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !15
  %i.jl = fadd nsz float %i.jk, %i.it
  store float %i.jl, ptr %i.gx, align 4, !tbaa !15
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !15
  %i.jo = fadd nsz float %i.jn, %i.iw
  store float %i.jo, ptr %i.gy, align 4, !tbaa !15
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv ; 2 uses
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !15
  %i.jr = fadd nsz float %i.jq, %i.iz
  store float %i.jr, ptr %i.gz, align 4, !tbaa !15
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.jt = load float, ptr %i.js, align 4, !tbaa !15
  %i.ju = fadd nsz float %i.jt, %i.jc
  store float %i.ju, ptr %i.ha, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %bb.b, label %.preheader131, !llvm.loop !62

bb.b:                                             ; preds = %.preheader131
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !63
  %i.jx = getelementptr inbounds nuw i8, ptr %2, i64 6912
  tail call void %i.jw(ptr noundef nonnull %1, ptr noundef nonnull %i.jx, i32 noundef 5, i32 noundef 32) #11
  br label %bb.c

scalar.ph:                                        ; preds = %.preheader, %scalar.ph
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %scalar.ph ], [ 0, %.preheader ] ; 13 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv151 ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !15
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv151 ; 2 uses
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !15
  %i.kc = fadd nsz float %i.jz, %i.kb
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv151 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !15
  %i.kf = fadd nsz float %i.kc, %i.ke
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv151 ; 2 uses
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !15
  %i.ki = fadd nsz float %i.kf, %i.kh
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv151 ; 2 uses
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !15
  %i.kl = fadd nsz float %i.ki, %i.kk
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv151 ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !15
  %i.ko = fadd nsz float %i.kl, %i.kn
  %i.kp = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %indvars.iv151 ; 3 uses
  store float %i.ko, ptr %i.kp, align 4, !tbaa !15
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !15
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !15
  %i.ku = fadd nsz float %i.kr, %i.kt
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !15
  %i.kx = fadd nsz float %i.ku, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !15
  %i.la = fadd nsz float %i.kx, %i.kz
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !15
  %i.ld = fadd nsz float %i.la, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  %i.lf = load float, ptr %i.le, align 4, !tbaa !15
  %i.lg = fadd nsz float %i.ld, %i.lf
  %i.lh = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %indvars.iv151 ; 3 uses
  store float %i.lg, ptr %i.lh, align 4, !tbaa !15
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv151 ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !15
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv151 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 4, !tbaa !15
  %i.lm = fadd nsz float %i.lj, %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kp, i64 4
  store float %i.lm, ptr %i.ln, align 4, !tbaa !15
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !15
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !15
  %i.ls = fadd nsz float %i.lp, %i.lr
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 4
  store float %i.ls, ptr %i.lt, align 4, !tbaa !15
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv151 ; 2 uses
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !15
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv151 ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !15
  %i.ly = fadd nsz float %i.lv, %i.lx
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store float %i.ly, ptr %i.lz, align 4, !tbaa !15
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !15
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.md = load float, ptr %i.mc, align 4, !tbaa !15
  %i.me = fadd nsz float %i.mb, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store float %i.me, ptr %i.mf, align 4, !tbaa !15
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, 32
  br i1 %exitcond154.not, label %middle.block, label %scalar.ph, !llvm.loop !64

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !63
  tail call void %i.mh(ptr noundef nonnull %1, ptr noundef nonnull %i.ac, i32 noundef 3, i32 noundef 32) #11
  br label %bb.c

bb.c:                                             ; preds = %middle.block, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ff_ps_init() local_unnamed_addr #3 {
bb.a:
  tail call fastcc void @ps_tableinit() #12
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ps_tableinit() unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.f
  %indvars.iv190 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next191, %bb.f ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_cos, i64 %indvars.iv190
  %i.b = load float, ptr %i.a, align 4, !tbaa !15
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_sin, i64 %indvars.iv190
  %i.d = load float, ptr %i.c, align 4, !tbaa !15
  %i.e = shl nuw nsw i64 %indvars.iv190, 6
  %0 = insertelement <2 x float> poison, float %i.b, i64 0
  %1 = insertelement <2 x float> %0, float %i.d, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %indvars.iv186 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next187, %bb.e ] ; 4 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_cos, i64 %indvars.iv186
  %i.g = load float, ptr %i.f, align 4, !tbaa !15
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_sin, i64 %indvars.iv186
  %i.i = load float, ptr %i.h, align 4, !tbaa !15
  %2 = insertelement <2 x float> poison, float %i.g, i64 0
  %3 = insertelement <2 x float> %2, float %i.i, i64 1
  %4 = fmul nsz <2 x float> %3, splat (float 5.000000e-01)
  %5 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %1, <2 x float> splat (float 2.500000e-01), <2 x float> %4)
  %i.j = shl nuw nsw i64 %indvars.iv186, 3
  %i.k = add nuw nsw i64 %i.j, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_cos, i64 %indvars.iv
  %i.m = load float, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.ipdopd_sin, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !15
  %6 = add nuw nsw i64 %indvars.iv, %i.k          ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr @pd_re_smooth, i64 %6
  %8 = insertelement <2 x float> poison, float %i.m, i64 0
  %9 = insertelement <2 x float> %8, float %i.o, i64 1
  %10 = fadd nsz <2 x float> %5, %9               ; 2 uses
  %11 = fpext <2 x float> %10 to <2 x double>     ; 2 uses
  %12 = extractelement <2 x double> %11, i64 0
  %13 = extractelement <2 x double> %11, i64 1
  %i.p = tail call nsz double @hypot(double noundef %13, double noundef %12) #13
  %i.q = fdiv nsz double 1.000000e+00, %i.p
  %i.r = fptrunc nsz double %i.q to float
  %14 = insertelement <2 x float> poison, float %i.r, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer
  %16 = fmul nsz <2 x float> %10, %15             ; 2 uses
  %17 = extractelement <2 x float> %16, i64 0
  store float %17, ptr %7, align 4, !tbaa !15
  %18 = getelementptr inbounds nuw [4 x i8], ptr @pd_im_smooth, i64 %6
  %19 = extractelement <2 x float> %16, i64 1
  store float %19, ptr %18, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.e, label %bb.d, !llvm.loop !65

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond189.not = icmp eq i64 %indvars.iv.next187, 8
  br i1 %exitcond189.not, label %bb.f, label %bb.c, !llvm.loop !66

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next191 = add nuw nsw i64 %indvars.iv190, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next191, 8
  br i1 %exitcond193.not, label %.preheader175, label %bb.b, !llvm.loop !67

.preheader175:                                    ; preds = %bb.f, %middle.block
  %indvars.iv198 = phi i64 [ %indvars.iv.next199, %middle.block ], [ 0, %bb.f ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.iid_par_dequant, i64 %indvars.iv198
  %i.t = load float, ptr %i.s, align 4, !tbaa !15 ; 4 uses
  %20 = getelementptr inbounds nuw [128 x i8], ptr @HA, i64 %indvars.iv198
  %i.u = getelementptr inbounds nuw [128 x i8], ptr @HB, i64 %indvars.iv198
  %21 = fmul nsz float %i.t, 2.000000e+00
  %22 = insertelement <2 x float> poison, float %i.t, i64 0 ; 2 uses
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %23, <2 x float> <float -1.000000e+00, float 1.000000e+00>) ; 2 uses
  %25 = extractelement <2 x float> %24, i64 1
  %26 = tail call nsz float @llvm.sqrt.f32(float %25)
  %27 = insertelement <2 x float> %22, float %26, i64 1
  %28 = fdiv nsz <2 x float> <float 1.000000e+00, float f0x3FB504F3>, %27 ; 3 uses
  %29 = extractelement <2 x float> %28, i64 1     ; 2 uses
  %30 = extractelement <2 x float> %28, i64 0
  %31 = fadd nsz float %i.t, %30                  ; 2 uses
  %i.v = fmul nsz float %31, %31
  %32 = fmul nsz float %i.t, %29                  ; 2 uses
  %33 = fsub nsz float %29, %32
  %broadcast.splat = shufflevector <2 x float> %28, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splatinsert218 = insertelement <4 x float> poison, float %32, i64 0
  %broadcast.splat219 = shufflevector <4 x float> %broadcast.splatinsert218, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert220 = insertelement <4 x float> poison, float %33, i64 0
  %broadcast.splat221 = shufflevector <4 x float> %broadcast.splatinsert220, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <4 x float> poison, float %21, i64 0
  %broadcast.splat223 = shufflevector <4 x float> %broadcast.splatinsert222, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat225 = shufflevector <4 x float> %broadcast.splatinsert224, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = shufflevector <2 x float> %24, <2 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader175
  %index = phi i64 [ 0, %.preheader175 ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader175 ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.acos_icc_invq, i64 %index
  %wide.load = load <4 x float>, ptr %i.x, align 16, !tbaa !15
  %i.y = fmul nsz <4 x float> %wide.load, splat (float 5.000000e-01) ; 3 uses
  %i.z = fmul nsz <4 x float> %broadcast.splat221, %i.y
  %i.aa = fmul nsz <4 x float> %i.z, splat (float f0x3F3504F3) ; 2 uses
  %i.ab = fadd nsz <4 x float> %i.y, %i.aa
  %i.ac = tail call nsz { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.ab) ; 2 uses
  %i.ad = extractvalue { <4 x float>, <4 x float> } %i.ac, 0
  %i.ae = extractvalue { <4 x float>, <4 x float> } %i.ac, 1
  %i.af = fmul nsz <4 x float> %broadcast.splat219, %i.ae
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %20, i64 %index
  %i.ah = fsub nsz <4 x float> %i.aa, %i.y
  %i.ai = tail call nsz { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.ah) ; 2 uses
  %i.aj = extractvalue { <4 x float>, <4 x float> } %i.ai, 0
  %i.ak = extractvalue { <4 x float>, <4 x float> } %i.ai, 1
  %i.al = fmul nsz <4 x float> %broadcast.splat, %i.ak
  %i.am = fmul nsz <4 x float> %broadcast.splat219, %i.ad
  %i.an = fmul nsz <4 x float> %broadcast.splat, %i.aj
  %i.ao = shufflevector <4 x float> %i.af, <4 x float> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ap = shufflevector <4 x float> %i.am, <4 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.ao, <8 x float> %i.ap, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.ag, align 16, !tbaa !15
  %i.aq = icmp samesign ult <4 x i64> %vec.ind, splat (i64 5)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.icc_invq, i64 %index
  %wide.load226 = load <4 x float>, ptr %i.ar, align 16, !tbaa !15
  %predphi = select nsz <4 x i1> %i.aq, <4 x float> %wide.load226, <4 x float> splat (float 5.000000e-02) ; 3 uses
  %i.as = fmul nsz <4 x float> %broadcast.splat223, %predphi
  %i.at = tail call nsz <4 x float> @llvm.atan2.v4f32(<4 x float> %i.as, <4 x float> %i.w)
  %i.au = fmul nsz <4 x float> %i.at, splat (float 5.000000e-01) ; 3 uses
  %i.av = fmul nsz <4 x float> %predphi, splat (float 4.000000e+00)
  %i.aw = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.av, <4 x float> %predphi, <4 x float> splat (float -4.000000e+00))
  %i.ax = fdiv nsz <4 x float> %i.aw, %broadcast.splat225
  %i.ay = fadd nsz <4 x float> %i.ax, splat (float 1.000000e+00)
  %i.az = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ay) ; 2 uses
  %i.ba = fsub nsz <4 x float> splat (float 1.000000e+00), %i.az
  %i.bb = fadd nsz <4 x float> %i.az, splat (float 1.000000e+00)
  %i.bc = fdiv nsz <4 x float> %i.ba, %i.bb
  %i.bd = tail call nsz <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.bc)
  %34 = tail call nsz <4 x float> @llvm.atan.v4f32(<4 x float> %i.bd)
  %35 = tail call nsz { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %34) ; 2 uses
  %36 = extractvalue { <4 x float>, <4 x float> } %35, 0
  %37 = extractvalue { <4 x float>, <4 x float> } %35, 1
  %i.be = fcmp nsz olt <4 x float> %i.au, zeroinitializer
  %i.bf = fpext nsz <4 x float> %i.au to <4 x double>
  %i.bg = fadd nsz <4 x double> %i.bf, splat (double f0x3FF921FB54442D18)
  %i.bh = fptrunc nsz <4 x double> %i.bg to <4 x float>
  %i.bi = select nsz <4 x i1> %i.be, <4 x float> %i.bh, <4 x float> %i.au
  %i.bj = tail call nsz { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float> %i.bi) ; 2 uses
  %i.bk = extractvalue { <4 x float>, <4 x float> } %i.bj, 0
  %i.bl = extractvalue { <4 x float>, <4 x float> } %i.bj, 1
  %i.bm = fpext nsz <4 x float> %i.bl to <4 x double>
  %i.bn = fmul nsz <4 x double> %i.bm, splat (double f0x3FF6A09E667F3BCD) ; 2 uses
  %i.bo = fpext nsz <4 x float> %37 to <4 x double>
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %index
  %i.bq = fpext nsz <4 x float> %i.bk to <4 x double> ; 2 uses
  %i.br = fmul nsz <4 x double> %i.bq, splat (double f0x3FF6A09E667F3BCD)
  %i.bs = fmul nsz <4 x double> %i.bq, splat (double f0xBFF6A09E667F3BCD)
  %i.bt = fpext nsz <4 x float> %36 to <4 x double>
  %i.bu = shufflevector <4 x double> %i.bn, <4 x double> %i.br, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bv = shufflevector <4 x double> %i.bo, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bw = fmul nsz <8 x double> %i.bu, %i.bv
  %i.bx = shufflevector <4 x double> %i.bs, <4 x double> %i.bn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = shufflevector <4 x double> %i.bt, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bz = fmul nsz <8 x double> %i.bx, %i.by
  %i.ca = shufflevector <8 x double> %i.bw, <8 x double> %i.bz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec227 = fptrunc nsz <16 x double> %i.ca to <16 x float>
  store <16 x float> %interleaved.vec227, ptr %i.bp, align 16, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.cb = icmp eq i64 %index.next, 8
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond201.not = icmp eq i64 %indvars.iv.next199, 46
  br i1 %exitcond201.not, label %.preheader174, label %.preheader175, !llvm.loop !69

.preheader174:                                    ; preds = %middle.block, %bb.k
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %bb.k ], [ 0, %middle.block ] ; 6 uses
  %i.cc = icmp samesign ult i64 %indvars.iv206, 10
  br i1 %i.cc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader174
  %i.cd = getelementptr inbounds nuw i8, ptr @ps_tableinit.f_center_20, i64 %indvars.iv206
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29
  %i.cf = sitofp i8 %i.ce to double
  %i.cg = fmul nnan nsz double %i.cf, 1.250000e-01
  br label %bb.i

bb.h:                                             ; preds = %.preheader174
  %i.ch = trunc nuw nsw i64 %indvars.iv206 to i32
  %i.ci = uitofp nneg i32 %i.ch to float
  %i.cj = fadd nsz float %i.ci, -6.500000e+00
  %i.ck = fpext nsz float %i.cj to double
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0138 = phi nsz double [ %i.cg, %bb.g ], [ %i.ck, %bb.h ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr @Q_fract_allpass, i64 %indvars.iv206
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.j
  %indvars.iv202 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next203, %bb.j ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.fractional_delay_links, i64 %indvars.iv202
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !15
  %i.co = fpext nsz float %i.cn to double
  %i.cp = fmul nsz double %i.co, f0xC00921FB54442D18
  %i.cq = fmul nsz double %.0138, %i.cp
  %sincos159 = tail call nsz { double, double } @llvm.sincos.f64(double %i.cq) ; 2 uses
  %sin160 = extractvalue { double, double } %sincos159, 0
  %cos161 = extractvalue { double, double } %sincos159, 1
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv202
  %i.cs = insertelement <2 x double> poison, double %cos161, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %sin160, i64 1
  %i.cu = fptrunc <2 x double> %i.ct to <2 x float>
  store <2 x float> %i.cu, ptr %i.cr, align 8, !tbaa !15
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next203, 3
  br i1 %exitcond205.not, label %bb.k, label %bb.j, !llvm.loop !70

bb.k:                                             ; preds = %bb.j
  %i.cv = fmul nsz double %.0138, f0xBFF39A816DFBE7FA
  %sincos156 = tail call nsz { double, double } @llvm.sincos.f64(double %i.cv) ; 2 uses
  %sin157 = extractvalue { double, double } %sincos156, 0
  %cos158 = extractvalue { double, double } %sincos156, 1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr @phi_fract, i64 %indvars.iv206
  %i.cx = insertelement <2 x double> poison, double %cos158, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %sin157, i64 1
  %i.cz = fptrunc <2 x double> %i.cy to <2 x float>
  store <2 x float> %i.cz, ptr %i.cw, align 8, !tbaa !15
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next207, 30
  br i1 %exitcond209.not, label %.preheader, label %.preheader174, !llvm.loop !71

.preheader:                                       ; preds = %bb.k, %bb.p
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %bb.p ], [ 0, %bb.k ] ; 6 uses
  %i.da = icmp samesign ult i64 %indvars.iv214, 32
  br i1 %i.da, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader
  %i.db = getelementptr inbounds nuw i8, ptr @ps_tableinit.f_center_34, i64 %indvars.iv214
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !29
  %i.dd = sitofp i8 %i.dc to double
  %i.de = fdiv nsz double %i.dd, 2.400000e+01
  br label %bb.n

bb.m:                                             ; preds = %.preheader
  %i.df = trunc nuw nsw i64 %indvars.iv214 to i32
  %i.dg = uitofp nneg i32 %i.df to float
  %i.dh = fadd nsz float %i.dg, -2.650000e+01
  %i.di = fpext nsz float %i.dh to double
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0 = phi nsz double [ %i.de, %bb.l ], [ %i.di, %bb.m ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr getelementptr inbounds nuw (i8, ptr @Q_fract_allpass, i64 1200), i64 %indvars.iv214
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.o
  %indvars.iv210 = phi i64 [ 0, %bb.n ], [ %indvars.iv.next211, %bb.o ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr @ps_tableinit.fractional_delay_links, i64 %indvars.iv210
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !15
  %i.dm = fpext nsz float %i.dl to double
  %i.dn = fmul nsz double %i.dm, f0xC00921FB54442D18
  %i.do = fmul nsz double %.0, %i.dn
  %sincos153 = tail call nsz { double, double } @llvm.sincos.f64(double %i.do) ; 2 uses
  %sin154 = extractvalue { double, double } %sincos153, 0
  %cos155 = extractvalue { double, double } %sincos153, 1
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv210
  %i.dq = insertelement <2 x double> poison, double %cos155, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %sin154, i64 1
  %i.ds = fptrunc <2 x double> %i.dr to <2 x float>
  store <2 x float> %i.ds, ptr %i.dp, align 8, !tbaa !15
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next211, 3
  br i1 %exitcond213.not, label %bb.p, label %bb.o, !llvm.loop !72

bb.p:                                             ; preds = %bb.o
  %i.dt = fmul nsz double %.0, f0xBFF39A816DFBE7FA
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.dt) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.du = getelementptr inbounds nuw [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @phi_fract, i64 400), i64 %indvars.iv214
  %i.dv = insertelement <2 x double> poison, double %cos, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %sin, i64 1
  %i.dx = fptrunc <2 x double> %i.dw to <2 x float>
  store <2 x float> %i.dx, ptr %i.du, align 8, !tbaa !15
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next215, 50
  br i1 %exitcond217.not, label %bb.q, label %.preheader, !llvm.loop !73

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f20_0_8, ptr noundef nonnull @g0_Q8, i32 noundef 8) #12
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f34_0_12, ptr noundef nonnull @g0_Q12, i32 noundef 12) #12
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f34_1_8, ptr noundef nonnull @g1_Q8, i32 noundef 8) #12
  tail call fastcc void @make_filters_from_proto(ptr noundef nonnull @f34_2_4, ptr noundef nonnull @g2_Q4, i32 noundef 4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @hybrid4_8_12_cx(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 4, 13) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 32 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void %i.b(ptr noundef %2, ptr noundef %1, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void %i.d(ptr noundef nonnull %i.e, ptr noundef nonnull %i.c, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void %i.g(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void %i.j(ptr noundef nonnull %i.k, ptr noundef nonnull %i.i, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void %i.m(ptr noundef nonnull %i.n, ptr noundef nonnull %i.l, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void %i.p(ptr noundef nonnull %i.q, ptr noundef nonnull %i.o, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void %i.s(ptr noundef nonnull %i.t, ptr noundef nonnull %i.r, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 56
  tail call void %i.v(ptr noundef nonnull %i.w, ptr noundef nonnull %i.u, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void %i.y(ptr noundef nonnull %i.z, ptr noundef nonnull %i.x, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void %i.ab(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.aa, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  tail call void %i.ae(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ad, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void %i.ah(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ag, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void %i.ak(ptr noundef nonnull %i.al, ptr noundef nonnull %i.aj, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void %i.an(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.am, ptr noundef %3, i64 noundef 32, i32 noundef %4) #11
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
end_hunk_0
begin_hunk_1_@remap20:bb.a
  %i.fa = icmp sgt i32 %3, 0
  br i1 %i.fa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  %.not.i26 = icmp eq i32 %4, 0
  %wide.trip.count37 = zext nneg i32 %3 to i64    ; 2 uses
  br i1 %.not.i26, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [34 x i8], ptr %i.a, i64 %indvars.iv34 ; 11 uses
  %i.fc = getelementptr inbounds nuw [34 x i8], ptr %1, i64 %indvars.iv34 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 10
  store i8 0, ptr %i.fd, align 1, !tbaa !29
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !29  ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !29
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 9
  store i8 %i.ff, ptr %i.fh, align 1, !tbaa !29
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !29  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 6
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !29
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fb, i64 7
  store i8 %i.fj, ptr %i.fl, align 1, !tbaa !29
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !29  ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  store i8 %i.fn, ptr %i.fo, align 1, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fb, i64 5
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !29
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !29  ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !29
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fb, i64 3
  store i8 %i.fr, ptr %i.ft, align 1, !tbaa !29
  %i.fu = load i8, ptr %i.fc, align 1, !tbaa !29  ; 2 uses
  store i8 %i.fu, ptr %i.fb, align 1, !tbaa !29
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !29
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !77

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [34 x i8], ptr %i.a, i64 %indvars.iv ; 20 uses
  %i.fx = getelementptr inbounds nuw [34 x i8], ptr %1, i64 %indvars.iv ; 10 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 9
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !29  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 18
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fw, i64 19
  store i8 %i.fz, ptr %i.gb, align 1, !tbaa !29
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !29  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !29
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 17
  store i8 %i.gd, ptr %i.gf, align 1, !tbaa !29
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 7
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !29  ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fw, i64 14
  store i8 %i.gh, ptr %i.gi, align 1, !tbaa !29
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fw, i64 15
  store i8 %i.gh, ptr %i.gj, align 1, !tbaa !29
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 6
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !29  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fw, i64 12
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !29
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fw, i64 13
  store i8 %i.gl, ptr %i.gn, align 1, !tbaa !29
  %i.go = getelementptr inbounds nuw i8, ptr %i.fx, i64 5
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !29  ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fw, i64 10
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !29
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fw, i64 11
  store i8 %i.gp, ptr %i.gr, align 1, !tbaa !29
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !29  ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !29
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fw, i64 9
  store i8 %i.gt, ptr %i.gv, align 1, !tbaa !29
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 3
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !29  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.fw, i64 6
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !29
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fw, i64 7
  store i8 %i.gx, ptr %i.gz, align 1, !tbaa !29
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !29  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !29
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fw, i64 5
  store i8 %i.hb, ptr %i.hd, align 1, !tbaa !29
  %i.he = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !29  ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fw, i64 2
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !29
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fw, i64 3
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !29
  %i.hi = load i8, ptr %i.fx, align 1, !tbaa !29  ; 2 uses
  store i8 %i.hi, ptr %i.fw, align 1, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  store i8 %i.hi, ptr %i.hj, align 1, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count37
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !77

bb.f:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %map_idx_34_to_20.exit, %bb.e, %bb.b, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @map_val_34_to_20(ptr nofree noundef captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load <4 x float>, ptr %0, align 4, !tbaa !15 ; 2 uses
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !15
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.e = shufflevector <4 x float> %i.b, <4 x float> %i.d, <4 x i32> <i32 0, i32 2, i32 3, i32 5>
  %i.f = shufflevector <4 x float> %i.b, <4 x float> %i.d, <4 x i32> <i32 1, i32 1, i32 4, i32 4>
  %i.g = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.e, <4 x float> splat (float 2.000000e+00), <4 x float> %i.f)
  %i.h = fmul nsz <4 x float> %i.g, splat (float f0x3EAAAAAB)
  store <4 x float> %i.h, ptr %0, align 4, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load float, ptr %i.i, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = load float, ptr %i.m, align 4, !tbaa !15
  %i.o = load <2 x float>, ptr %i.k, align 4, !tbaa !15
  %i.p = insertelement <2 x float> poison, float %i.j, i64 0
  %i.q = insertelement <2 x float> %i.p, float %i.n, i64 1
  %i.r = fadd nsz <2 x float> %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load <2 x float>, ptr %i.s, align 4, !tbaa !15
  %i.u = shufflevector <2 x float> %i.r, <2 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.v = fmul nsz <4 x float> %i.u, <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %i.v, ptr %i.a, align 4, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load float, ptr %i.w, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.aa = load float, ptr %i.z, align 4, !tbaa !15
  %i.ab = load <2 x float>, ptr %i.y, align 4, !tbaa !15
  %i.ac = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.aa, i64 1
  %i.ae = fadd nsz <2 x float> %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ag = load <2 x float>, ptr %i.af, align 4, !tbaa !15
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ai = fmul nsz <4 x float> %i.ah, <float 5.000000e-01, float 5.000000e-01, float 1.000000e+00, float 1.000000e+00>
  store <4 x float> %i.ai, ptr %i.l, align 4, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ao = load float, ptr %i.an, align 4, !tbaa !15
  %i.ap = load <2 x float>, ptr %i.am, align 4, !tbaa !15
  %i.aq = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ao, i64 1
  %i.as = fadd nsz <2 x float> %i.ap, %i.ar
  %i.at = load <2 x float>, ptr %i.aj, align 4, !tbaa !15
  %i.au = shufflevector <2 x float> %i.at, <2 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.av = fmul nsz <4 x float> %i.au, <float 1.000000e+00, float 1.000000e+00, float 5.000000e-01, float 5.000000e-01>
  store <4 x float> %i.av, ptr %i.w, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ay = load <8 x float>, ptr %i.aw, align 4, !tbaa !15 ; 4 uses
  %i.az = shufflevector <8 x float> %i.ay, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 4, i32 poison>
  %i.ba = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.bb = shufflevector <8 x float> %i.ay, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 5, i32 poison>
  %i.bc = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.bb, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.bd = fadd nsz <4 x float> %i.ba, %i.bc
  %i.be = load <2 x float>, ptr %i.ax, align 4, !tbaa !15
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bg = shufflevector <8 x float> %i.ay, <8 x float> %i.bf, <4 x i32> <i32 0, i32 2, i32 6, i32 8>
  %i.bh = fadd nsz <4 x float> %i.bd, %i.bg
  %i.bi = shufflevector <8 x float> %i.ay, <8 x float> %i.bf, <4 x i32> <i32 1, i32 3, i32 7, i32 9>
  %i.bj = fadd nsz <4 x float> %i.bh, %i.bi
  %i.bk = fmul nsz <4 x float> %i.bj, <float 5.000000e-01, float 5.000000e-01, float 2.500000e-01, float 5.000000e-01>
  store <4 x float> %i.bk, ptr %i.af, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #5

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @make_filters_from_proto(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 4, 13) %2) unnamed_addr #9 {
bb.a:
  %i.a = uitofp nneg i32 %2 to double
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv24 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next25, %bb.c ] ; 3 uses
  %i.b = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.c = uitofp nneg i32 %i.b to double
  %i.d = fadd nnan nsz double %i.c, 5.000000e-01
  %i.e = fmul nnan nsz double %i.d, f0x401921FB54442D18
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv24
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.g = trunc i64 %indvars.iv to i32
  %i.h = add i32 %i.g, -6
  %i.i = sitofp nsz i32 %i.h to double
  %i.j = fmul nsz double %i.e, %i.i
  %i.k = fdiv nsz double %i.j, %i.a
  %sincos = tail call nsz { double, double } @llvm.sincos.f64(double %i.k) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !15
  %i.n = fpext nsz float %i.m to double
  %i.o = fmul nsz double %cos, %i.n
  %i.p = fptrunc nsz double %i.o to float
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store float %i.p, ptr %i.q, align 4, !tbaa !15
  %i.r = load float, ptr %i.l, align 4, !tbaa !15
  %i.s = fpext nsz float %i.r to double
  %i.t = fneg nsz double %sin
  %i.u = fmul nsz double %i.t, %i.s
  %i.v = fptrunc nsz double %i.u to float
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store float %i.v, ptr %i.w, align 4, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !78

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond27.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count
  br i1 %exitcond27.not, label %bb.d, label %.preheader, !llvm.loop !79

bb.d:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <4 x float>, <4 x float> } @llvm.sincos.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.atan.v4f32(<4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.atan2.v4f32(<4 x float>, <4 x float>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind willreturn memory(none) }

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
!9 = !{!10, !6, i64 756}
!10 = !{!"PSContext", !11, i64 0, !7, i64 768, !7, i64 2528, !7, i64 36016, !7, i64 80416, !7, i64 80560, !7, i64 80704, !7, i64 80848, !7, i64 82480, !7, i64 84112, !7, i64 85744, !7, i64 87376, !7, i64 110672, !7, i64 133968, !7, i64 134002, !12, i64 134040}
!11 = !{!"PSCommonContext", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !7, i64 52, !7, i64 76, !7, i64 246, !7, i64 416, !7, i64 586, !6, i64 756, !6, i64 760}
!12 = !{!"PSDSPContext", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !7, i64 48}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!12, !13, i64 24}
!20 = distinct !{null}
!21 = !{!12, !13, i64 16}
!22 = distinct !{null, null}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !18, !25, !26}
!28 = !{!10, !6, i64 760}
!29 = !{!7, !7, i64 0}
!30 = !{!10, !13, i64 134040}
!31 = distinct !{null}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = !{!10, !13, i64 134080}
!36 = distinct !{!36, !18}
!37 = !{!10, !13, i64 134048}
!38 = distinct !{!38, !18}
!39 = distinct !{!39, !18}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 omnipotent char", !13, i64 0}
!42 = !{!11, !6, i64 24}
!43 = !{!11, !6, i64 40}
!44 = !{!11, !6, i64 12}
!45 = !{!11, !6, i64 44}
!46 = !{!11, !6, i64 28}
!47 = !{!11, !6, i64 48}
!48 = !{!11, !6, i64 16}
!49 = !{!11, !6, i64 760}
!50 = !{!11, !6, i64 8}
!51 = distinct !{!51, !18}
!52 = !{!13, !13, i64 0}
!53 = distinct !{null}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = !{!57}
!57 = distinct !{!57, !58}
!58 = distinct !{!58, !"LVerDomain"}
!59 = !{!60}
!60 = distinct !{!60, !58}
!61 = distinct !{!61, !18, !25, !26}
!62 = distinct !{!62, !18}
!63 = !{!12, !13, i64 32}
!64 = distinct !{!64, !18, !25}
!65 = distinct !{!65, !18}
!66 = distinct !{!66, !18}
!67 = distinct !{!67, !18}
!68 = distinct !{!68, !18, !25, !26}
!69 = distinct !{!69, !18}
!70 = distinct !{!70, !18}
!71 = distinct !{!71, !18}
!72 = distinct !{!72, !18}
!73 = distinct !{!73, !18}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
end_hunk_1
