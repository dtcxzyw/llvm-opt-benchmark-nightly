Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegvideo_enc?download=true
inline.NumInlined: 128
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 126
begin_hunk_0_@get_visual_weight:bb.a
  %i.au = add nsw i32 %.03350.us, 4
  br i1 %i.r, label %bb.f, label %._crit_edge.us

bb.f:                                             ; preds = %bb.e
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.3
  %i.av = load i8, ptr %gep.4, align 1, !tbaa !52
  %i.aw = zext i8 %i.av to i32                    ; 3 uses
  %i.ax = add nsw i32 %i.ar, %i.aw                ; 2 uses
  %i.ay = mul nuw nsw i32 %i.aw, %i.aw
  %i.az = add nsw i32 %i.ay, %i.at                ; 2 uses
  %i.ba = add nsw i32 %.03350.us, 5
  br i1 %i.s, label %bb.g, label %._crit_edge.us

bb.g:                                             ; preds = %bb.f
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.4
  %i.bb = load i8, ptr %gep.5, align 1, !tbaa !52
  %i.bc = zext i8 %i.bb to i32                    ; 3 uses
  %i.bd = add nsw i32 %i.ax, %i.bc                ; 2 uses
  %i.be = mul nuw nsw i32 %i.bc, %i.bc
  %i.bf = add nsw i32 %i.be, %i.az                ; 2 uses
  %i.bg = add nsw i32 %.03350.us, 6
  br i1 %i.t, label %bb.h, label %._crit_edge.us

bb.h:                                             ; preds = %bb.g
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.5
  %i.bh = load i8, ptr %gep.6, align 1, !tbaa !52
  %i.bi = zext i8 %i.bh to i32                    ; 3 uses
  %i.bj = add nsw i32 %i.bd, %i.bi                ; 2 uses
  %i.bk = mul nuw nsw i32 %i.bi, %i.bi
  %i.bl = add nsw i32 %i.bk, %i.bf                ; 2 uses
  %i.bm = add nsw i32 %.03350.us, 7
  br i1 %i.u, label %bb.i, label %._crit_edge.us

bb.i:                                             ; preds = %bb.h
  %gep.7 = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.6
  %i.bn = load i8, ptr %gep.7, align 1, !tbaa !52
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = add nsw i32 %i.bj, %i.bo
  %i.bq = mul nuw nsw i32 %i.bo, %i.bo
  %i.br = add nsw i32 %i.bq, %i.bl
  %i.bs = add nsw i32 %.03350.us, 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.us
  %.lcssa84 = phi i32 [ %i.z, %.lr.ph.us ], [ %i.af, %bb.c ], [ %i.al, %bb.d ], [ %i.ar, %bb.e ], [ %i.ax, %bb.f ], [ %i.bd, %bb.g ], [ %i.bj, %bb.h ], [ %i.bp, %bb.i ] ; 3 uses
  %.lcssa83 = phi i32 [ %i.ab, %.lr.ph.us ], [ %i.ah, %bb.c ], [ %i.an, %bb.d ], [ %i.at, %bb.e ], [ %i.az, %bb.f ], [ %i.bf, %bb.g ], [ %i.bl, %bb.h ], [ %i.br, %bb.i ] ; 2 uses
  %.lcssa = phi i32 [ %i.ac, %.lr.ph.us ], [ %i.ai, %bb.c ], [ %i.ao, %bb.d ], [ %i.au, %bb.e ], [ %i.ba, %bb.f ], [ %i.bg, %bb.g ], [ %i.bm, %bb.h ], [ %i.bs, %bb.i ] ; 3 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next68, %i.h
  br i1 %i.bt, label %.lr.ph.us, label %._crit_edge53.loopexit62, !llvm.loop !527

._crit_edge53.loopexit62:                         ; preds = %._crit_edge.us
  %i.bu = mul nsw i32 %.lcssa, %.lcssa83
  %i.bv = mul nsw i32 %.lcssa84, %.lcssa84
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %.lr.ph52, %._crit_edge53.loopexit62, %bb.b
  %.036.lcssa = phi i32 [ 0, %bb.b ], [ %i.bv, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.034.lcssa = phi i32 [ 0, %bb.b ], [ %i.bu, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %.033.lcssa = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge53.loopexit62 ], [ 0, %.lr.ph52 ]
  %i.bw = sub nsw i32 %.034.lcssa, %.036.lcssa    ; 12 uses
  %i.bx = icmp ult i32 %i.bw, 255
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge53
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !52
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = ashr i32 %i.cd, 4
  br label %ff_sqrt.exit

bb.k:                                             ; preds = %._crit_edge53
  %i.cf = icmp ult i32 %i.bw, 4096
  br i1 %i.cf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = lshr i32 %i.bw, 4
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !52
  %i.ck = lshr i8 %i.cj, 2
  %i.cl = zext nneg i8 %i.ck to i32
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.cm = icmp ult i32 %i.bw, 16384
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cn = lshr i32 %i.bw, 6
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  %i.cr = lshr i8 %i.cq, 1
  %i.cs = zext nneg i8 %i.cr to i32
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.ct = icmp ult i32 %i.bw, 65536
  br i1 %i.ct, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cu = lshr i32 %i.bw, 8
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !52
  %i.cy = zext i8 %i.cx to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %.not.i.i = icmp ult i32 %i.bw, 16777216        ; 2 uses
  %spec.select.i.v.i = select i1 %.not.i.i, i32 16, i32 24
  %spec.select.i.i = lshr i32 %i.bw, %spec.select.i.v.i
  %spec.select7.i.i = select i1 %.not.i.i, i32 0, i32 8
  %i.cz = zext nneg i32 %spec.select.i.i to i64
  %i.da = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !52
  %i.dc = zext i8 %i.db to i32
  %i.dd = add nuw nsw i32 %spec.select7.i.i, %i.dc
  %i.de = lshr i32 %i.dd, 1                       ; 3 uses
  %i.df = add nuw nsw i32 %i.de, 2
  %i.dg = lshr i32 %i.bw, %i.df                   ; 2 uses
  %i.dh = add nuw nsw i32 %i.de, 8
  %i.di = lshr i32 %i.dg, %i.dh
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr @ff_sqrt_tab, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !52  ; 2 uses
  %i.dm = zext i8 %i.dl to i32
  %i.dn = zext i8 %i.dl to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr @ff_inverse, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !54
  %i.dq = tail call i32 @llvm.umulh.i32(i32 %i.dg, i32 %i.dp)
  %i.dr = shl i32 %i.dm, %i.de
  %i.ds = add i32 %i.dq, %i.dr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.l
  %.022.i = phi i32 [ %i.cl, %bb.l ], [ %i.cs, %bb.n ], [ %i.cy, %bb.p ], [ %i.ds, %bb.q ] ; 3 uses
  %i.dt = mul i32 %.022.i, %.022.i
  %i.du = icmp ult i32 %i.bw, %i.dt
  %.neg.i = sext i1 %i.du to i32
  %i.dv = add i32 %.022.i, %.neg.i
  br label %ff_sqrt.exit

ff_sqrt.exit:                                     ; preds = %bb.j, %bb.r
  %.0.i = phi i32 [ %i.ce, %bb.j ], [ %i.dv, %bb.r ]
  %i.dw = mul i32 %.0.i, 36
  %i.dx = udiv i32 %i.dw, %.033.lcssa
  %i.dy = trunc i32 %i.dx to i16
  %gep80 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep79, i64 %indvars.iv70
  store i16 %i.dy, ptr %gep80, align 2, !tbaa !53
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next71, 8
  br i1 %exitcond.not, label %bb.s, label %bb.b, !llvm.loop !528

bb.s:                                             ; preds = %ff_sqrt.exit
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, 8
  br i1 %exitcond76.not, label %bb.t, label %.preheader, !llvm.loop !529

bb.t:                                             ; preds = %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dct_quantize_refine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef range(i32 -2147483648, 12) %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i16], align 16              ; 25 uses
  %i.b = alloca [64 x i16], align 16              ; 13 uses
  %i.c = alloca [65 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = load i16, ptr @basis, align 16, !tbaa !53
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %bb.b, label %build_basis.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1816
  br label %.preheader28.i

.preheader28.i:                                   ; preds = %bb.c, %bb.b
  %indvars.iv39.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next40.i, %bb.c ] ; 4 uses
  %i.g = shl nuw nsw i64 %indvars.iv39.i, 3
  %i.h = icmp eq i64 %indvars.iv39.i, 0
  %.0.i = select nsz i1 %i.h, double f0x40C6A09E667F3BCD, double 1.638400e+04 ; 2 uses
  %i.i = fmul nnan nsz double %.0.i, f0x3FE6A09E667F3BCD
  %i.j = trunc nuw nsw i64 %indvars.iv39.i to i32
  %i.k = uitofp nsz nneg i32 %i.j to double
  %i.l = fmul nnan nsz double %i.k, f0x3FD921FB54442D18
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  %i.m = insertelement <4 x double> poison, double %i.l, i64 0
  %i.n = shufflevector <4 x double> %i.m, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.o = fmul nnan nsz <4 x double> %i.n, <double 5.000000e-01, double 1.500000e+00, double 2.500000e+00, double 3.500000e+00>
  %i.p = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.o)
  %i.q = fmul nnan nsz <4 x double> %i.n, <double 4.500000e+00, double 5.500000e+00, double 6.500000e+00, double 7.500000e+00>
  %i.r = tail call nsz <4 x double> @llvm.cos.v4f64(<4 x double> %i.q)
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %.preheader28.i
  %indvars.iv.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next.i, %.preheader.i ] ; 4 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i ; 64 uses
  %6 = icmp eq i64 %indvars.iv.i, 0
  %.1.i = select nsz i1 %6, double %i.i, double %.0.i
  %i.s = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.t = uitofp nsz nneg i32 %i.s to double
  %7 = fmul nnan nsz double %i.t, f0x3FD921FB54442D18 ; 8 uses
  %8 = fmul nnan nsz double %7, 5.000000e-01
  %9 = tail call nsz double @llvm.cos.f64(double %8)
  %10 = load i8, ptr %gep.i, align 1, !tbaa !52
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %11
  %13 = insertelement <4 x double> poison, double %.1.i, i64 0
  %14 = shufflevector <4 x double> %13, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %15 = fmul nsz <4 x double> %i.p, %14           ; 8 uses
  %16 = insertelement <4 x double> poison, double %9, i64 0
  %17 = shufflevector <4 x double> %16, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %18 = fmul nsz <4 x double> %15, %17
  %19 = fptrunc <4 x double> %18 to <4 x float>   ; 4 uses
  %20 = extractelement <4 x float> %19, i64 0
  %21 = tail call i64 @llvm.lrint.i64.f32(float %20)
  %22 = trunc i64 %21 to i16
  store i16 %22, ptr %12, align 16, !tbaa !53
  %23 = load i8, ptr %gep.i, align 1, !tbaa !52
  %24 = extractelement <4 x float> %19, i64 1
  %25 = tail call i64 @llvm.lrint.i64.f32(float %24)
  %26 = trunc i64 %25 to i16
  %27 = zext i8 %23 to i64
  %28 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %27
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 16
  store i16 %26, ptr %29, align 16, !tbaa !53
  %30 = load i8, ptr %gep.i, align 1, !tbaa !52
  %31 = extractelement <4 x float> %19, i64 2
  %32 = tail call i64 @llvm.lrint.i64.f32(float %31)
  %33 = trunc i64 %32 to i16
  %34 = zext i8 %30 to i64
  %35 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %34
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i16 %33, ptr %36, align 16, !tbaa !53
  %37 = load i8, ptr %gep.i, align 1, !tbaa !52
  %38 = extractelement <4 x float> %19, i64 3
  %39 = tail call i64 @llvm.lrint.i64.f32(float %38)
  %40 = trunc i64 %39 to i16
  %41 = zext i8 %37 to i64
  %42 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 48
  store i16 %40, ptr %43, align 16, !tbaa !53
  %44 = load i8, ptr %gep.i, align 1, !tbaa !52
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 64
  %48 = fmul nsz <4 x double> %i.r, %14           ; 8 uses
  %49 = fmul nsz <4 x double> %48, %17
  %50 = fptrunc <4 x double> %49 to <4 x float>   ; 4 uses
  %51 = extractelement <4 x float> %50, i64 0
  %52 = tail call i64 @llvm.lrint.i64.f32(float %51)
  %53 = trunc i64 %52 to i16
  store i16 %53, ptr %47, align 16, !tbaa !53
  %54 = load i8, ptr %gep.i, align 1, !tbaa !52
  %55 = extractelement <4 x float> %50, i64 1
  %56 = tail call i64 @llvm.lrint.i64.f32(float %55)
  %57 = trunc i64 %56 to i16
  %58 = zext i8 %54 to i64
  %59 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %58
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 80
  store i16 %57, ptr %60, align 16, !tbaa !53
  %61 = load i8, ptr %gep.i, align 1, !tbaa !52
  %62 = extractelement <4 x float> %50, i64 2
  %63 = tail call i64 @llvm.lrint.i64.f32(float %62)
  %64 = trunc i64 %63 to i16
  %65 = zext i8 %61 to i64
  %66 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %65
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 96
  store i16 %64, ptr %67, align 16, !tbaa !53
  %68 = load i8, ptr %gep.i, align 1, !tbaa !52
  %69 = extractelement <4 x float> %50, i64 3
  %70 = tail call i64 @llvm.lrint.i64.f32(float %69)
  %71 = trunc i64 %70 to i16
  %72 = zext i8 %68 to i64
  %73 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %72
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 112
  store i16 %71, ptr %74, align 16, !tbaa !53
  %75 = fmul nnan nsz double %7, 1.500000e+00
  %76 = tail call nsz double @llvm.cos.f64(double %75)
  %77 = load i8, ptr %gep.i, align 1, !tbaa !52
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %78
  %80 = getelementptr inbounds nuw i8, ptr %79, i64 2
  %81 = insertelement <4 x double> poison, double %76, i64 0
  %82 = shufflevector <4 x double> %81, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %83 = fmul nsz <4 x double> %15, %82
  %84 = fptrunc <4 x double> %83 to <4 x float>   ; 4 uses
  %85 = extractelement <4 x float> %84, i64 0
  %86 = tail call i64 @llvm.lrint.i64.f32(float %85)
  %87 = trunc i64 %86 to i16
  store i16 %87, ptr %80, align 2, !tbaa !53
  %88 = load i8, ptr %gep.i, align 1, !tbaa !52
  %89 = extractelement <4 x float> %84, i64 1
  %90 = tail call i64 @llvm.lrint.i64.f32(float %89)
  %91 = trunc i64 %90 to i16
  %92 = zext i8 %88 to i64
  %93 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %92
  %94 = getelementptr inbounds nuw i8, ptr %93, i64 18
  store i16 %91, ptr %94, align 2, !tbaa !53
  %95 = load i8, ptr %gep.i, align 1, !tbaa !52
  %96 = extractelement <4 x float> %84, i64 2
  %97 = tail call i64 @llvm.lrint.i64.f32(float %96)
  %98 = trunc i64 %97 to i16
  %99 = zext i8 %95 to i64
  %100 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %99
  %101 = getelementptr inbounds nuw i8, ptr %100, i64 34
  store i16 %98, ptr %101, align 2, !tbaa !53
  %102 = load i8, ptr %gep.i, align 1, !tbaa !52
  %103 = extractelement <4 x float> %84, i64 3
  %104 = tail call i64 @llvm.lrint.i64.f32(float %103)
  %105 = trunc i64 %104 to i16
  %106 = zext i8 %102 to i64
  %107 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %106
  %108 = getelementptr inbounds nuw i8, ptr %107, i64 50
  store i16 %105, ptr %108, align 2, !tbaa !53
  %109 = load i8, ptr %gep.i, align 1, !tbaa !52
  %110 = zext i8 %109 to i64
  %111 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %110
  %112 = getelementptr inbounds nuw i8, ptr %111, i64 66
  %113 = fmul nsz <4 x double> %48, %82
  %114 = fptrunc <4 x double> %113 to <4 x float> ; 4 uses
  %115 = extractelement <4 x float> %114, i64 0
  %116 = tail call i64 @llvm.lrint.i64.f32(float %115)
  %117 = trunc i64 %116 to i16
  store i16 %117, ptr %112, align 2, !tbaa !53
  %118 = load i8, ptr %gep.i, align 1, !tbaa !52
  %119 = extractelement <4 x float> %114, i64 1
  %120 = tail call i64 @llvm.lrint.i64.f32(float %119)
  %121 = trunc i64 %120 to i16
  %122 = zext i8 %118 to i64
  %123 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %122
  %124 = getelementptr inbounds nuw i8, ptr %123, i64 82
  store i16 %121, ptr %124, align 2, !tbaa !53
  %125 = load i8, ptr %gep.i, align 1, !tbaa !52
  %126 = extractelement <4 x float> %114, i64 2
  %127 = tail call i64 @llvm.lrint.i64.f32(float %126)
  %128 = trunc i64 %127 to i16
  %129 = zext i8 %125 to i64
  %130 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %129
  %131 = getelementptr inbounds nuw i8, ptr %130, i64 98
  store i16 %128, ptr %131, align 2, !tbaa !53
  %132 = load i8, ptr %gep.i, align 1, !tbaa !52
  %133 = extractelement <4 x float> %114, i64 3
  %134 = tail call i64 @llvm.lrint.i64.f32(float %133)
  %135 = trunc i64 %134 to i16
  %136 = zext i8 %132 to i64
  %137 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %136
  %138 = getelementptr inbounds nuw i8, ptr %137, i64 114
  store i16 %135, ptr %138, align 2, !tbaa !53
  %139 = fmul nnan nsz double %7, 2.500000e+00
  %140 = tail call nsz double @llvm.cos.f64(double %139)
  %141 = load i8, ptr %gep.i, align 1, !tbaa !52
  %142 = zext i8 %141 to i64
  %143 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %142
  %144 = getelementptr inbounds nuw i8, ptr %143, i64 4
  %145 = insertelement <4 x double> poison, double %140, i64 0
  %146 = shufflevector <4 x double> %145, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %147 = fmul nsz <4 x double> %15, %146
  %148 = fptrunc <4 x double> %147 to <4 x float> ; 4 uses
  %149 = extractelement <4 x float> %148, i64 0
  %150 = tail call i64 @llvm.lrint.i64.f32(float %149)
  %151 = trunc i64 %150 to i16
  store i16 %151, ptr %144, align 4, !tbaa !53
  %152 = load i8, ptr %gep.i, align 1, !tbaa !52
  %153 = extractelement <4 x float> %148, i64 1
  %154 = tail call i64 @llvm.lrint.i64.f32(float %153)
  %155 = trunc i64 %154 to i16
  %156 = zext i8 %152 to i64
  %157 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %156
  %158 = getelementptr inbounds nuw i8, ptr %157, i64 20
  store i16 %155, ptr %158, align 4, !tbaa !53
  %159 = load i8, ptr %gep.i, align 1, !tbaa !52
  %160 = extractelement <4 x float> %148, i64 2
  %161 = tail call i64 @llvm.lrint.i64.f32(float %160)
  %162 = trunc i64 %161 to i16
  %163 = zext i8 %159 to i64
  %164 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %163
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 36
  store i16 %162, ptr %165, align 4, !tbaa !53
  %166 = load i8, ptr %gep.i, align 1, !tbaa !52
  %167 = extractelement <4 x float> %148, i64 3
  %168 = tail call i64 @llvm.lrint.i64.f32(float %167)
  %169 = trunc i64 %168 to i16
  %170 = zext i8 %166 to i64
  %171 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %170
  %172 = getelementptr inbounds nuw i8, ptr %171, i64 52
  store i16 %169, ptr %172, align 4, !tbaa !53
  %173 = load i8, ptr %gep.i, align 1, !tbaa !52
  %174 = zext i8 %173 to i64
  %175 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %174
  %176 = getelementptr inbounds nuw i8, ptr %175, i64 68
  %177 = fmul nsz <4 x double> %48, %146
  %178 = fptrunc <4 x double> %177 to <4 x float> ; 4 uses
  %179 = extractelement <4 x float> %178, i64 0
  %180 = tail call i64 @llvm.lrint.i64.f32(float %179)
  %181 = trunc i64 %180 to i16
  store i16 %181, ptr %176, align 4, !tbaa !53
  %182 = load i8, ptr %gep.i, align 1, !tbaa !52
  %183 = extractelement <4 x float> %178, i64 1
  %184 = tail call i64 @llvm.lrint.i64.f32(float %183)
  %185 = trunc i64 %184 to i16
  %186 = zext i8 %182 to i64
  %187 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %186
  %188 = getelementptr inbounds nuw i8, ptr %187, i64 84
  store i16 %185, ptr %188, align 4, !tbaa !53
  %189 = load i8, ptr %gep.i, align 1, !tbaa !52
  %190 = extractelement <4 x float> %178, i64 2
  %191 = tail call i64 @llvm.lrint.i64.f32(float %190)
  %192 = trunc i64 %191 to i16
  %193 = zext i8 %189 to i64
  %194 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %193
  %195 = getelementptr inbounds nuw i8, ptr %194, i64 100
  store i16 %192, ptr %195, align 4, !tbaa !53
  %196 = load i8, ptr %gep.i, align 1, !tbaa !52
  %197 = extractelement <4 x float> %178, i64 3
  %198 = tail call i64 @llvm.lrint.i64.f32(float %197)
  %199 = trunc i64 %198 to i16
  %200 = zext i8 %196 to i64
  %201 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %200
  %202 = getelementptr inbounds nuw i8, ptr %201, i64 116
  store i16 %199, ptr %202, align 4, !tbaa !53
  %203 = fmul nnan nsz double %7, 3.500000e+00
  %204 = tail call nsz double @llvm.cos.f64(double %203)
  %205 = load i8, ptr %gep.i, align 1, !tbaa !52
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %206
  %208 = getelementptr inbounds nuw i8, ptr %207, i64 6
  %209 = insertelement <4 x double> poison, double %204, i64 0
  %210 = shufflevector <4 x double> %209, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %211 = fmul nsz <4 x double> %15, %210
  %212 = fptrunc <4 x double> %211 to <4 x float> ; 4 uses
  %213 = extractelement <4 x float> %212, i64 0
  %214 = tail call i64 @llvm.lrint.i64.f32(float %213)
  %215 = trunc i64 %214 to i16
  store i16 %215, ptr %208, align 2, !tbaa !53
  %216 = load i8, ptr %gep.i, align 1, !tbaa !52
  %217 = extractelement <4 x float> %212, i64 1
  %218 = tail call i64 @llvm.lrint.i64.f32(float %217)
  %219 = trunc i64 %218 to i16
  %220 = zext i8 %216 to i64
  %221 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %220
  %222 = getelementptr inbounds nuw i8, ptr %221, i64 22
  store i16 %219, ptr %222, align 2, !tbaa !53
  %223 = load i8, ptr %gep.i, align 1, !tbaa !52
  %224 = extractelement <4 x float> %212, i64 2
  %225 = tail call i64 @llvm.lrint.i64.f32(float %224)
  %226 = trunc i64 %225 to i16
  %227 = zext i8 %223 to i64
  %228 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %227
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 38
  store i16 %226, ptr %229, align 2, !tbaa !53
  %230 = load i8, ptr %gep.i, align 1, !tbaa !52
  %231 = extractelement <4 x float> %212, i64 3
  %232 = tail call i64 @llvm.lrint.i64.f32(float %231)
  %233 = trunc i64 %232 to i16
  %234 = zext i8 %230 to i64
  %235 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %234
  %236 = getelementptr inbounds nuw i8, ptr %235, i64 54
  store i16 %233, ptr %236, align 2, !tbaa !53
  %237 = load i8, ptr %gep.i, align 1, !tbaa !52
  %238 = zext i8 %237 to i64
  %239 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %238
  %240 = getelementptr inbounds nuw i8, ptr %239, i64 70
  %241 = fmul nsz <4 x double> %48, %210
  %242 = fptrunc <4 x double> %241 to <4 x float> ; 4 uses
  %243 = extractelement <4 x float> %242, i64 0
  %244 = tail call i64 @llvm.lrint.i64.f32(float %243)
  %245 = trunc i64 %244 to i16
  store i16 %245, ptr %240, align 2, !tbaa !53
  %246 = load i8, ptr %gep.i, align 1, !tbaa !52
  %247 = extractelement <4 x float> %242, i64 1
  %248 = tail call i64 @llvm.lrint.i64.f32(float %247)
  %249 = trunc i64 %248 to i16
  %250 = zext i8 %246 to i64
  %251 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %250
  %252 = getelementptr inbounds nuw i8, ptr %251, i64 86
  store i16 %249, ptr %252, align 2, !tbaa !53
  %253 = load i8, ptr %gep.i, align 1, !tbaa !52
  %254 = extractelement <4 x float> %242, i64 2
  %255 = tail call i64 @llvm.lrint.i64.f32(float %254)
  %256 = trunc i64 %255 to i16
  %257 = zext i8 %253 to i64
  %258 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %257
  %259 = getelementptr inbounds nuw i8, ptr %258, i64 102
  store i16 %256, ptr %259, align 2, !tbaa !53
  %260 = load i8, ptr %gep.i, align 1, !tbaa !52
  %261 = extractelement <4 x float> %242, i64 3
  %262 = tail call i64 @llvm.lrint.i64.f32(float %261)
  %263 = trunc i64 %262 to i16
  %264 = zext i8 %260 to i64
  %265 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %264
  %266 = getelementptr inbounds nuw i8, ptr %265, i64 118
  store i16 %263, ptr %266, align 2, !tbaa !53
  %267 = fmul nnan nsz double %7, 4.500000e+00
  %268 = tail call nsz double @llvm.cos.f64(double %267)
  %269 = load i8, ptr %gep.i, align 1, !tbaa !52
  %270 = zext i8 %269 to i64
  %271 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %270
  %272 = getelementptr inbounds nuw i8, ptr %271, i64 8
  %273 = insertelement <4 x double> poison, double %268, i64 0
  %274 = shufflevector <4 x double> %273, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %275 = fmul nsz <4 x double> %15, %274
  %276 = fptrunc <4 x double> %275 to <4 x float> ; 4 uses
  %277 = extractelement <4 x float> %276, i64 0
  %278 = tail call i64 @llvm.lrint.i64.f32(float %277)
  %279 = trunc i64 %278 to i16
  store i16 %279, ptr %272, align 8, !tbaa !53
  %280 = load i8, ptr %gep.i, align 1, !tbaa !52
  %281 = extractelement <4 x float> %276, i64 1
  %282 = tail call i64 @llvm.lrint.i64.f32(float %281)
  %283 = trunc i64 %282 to i16
  %284 = zext i8 %280 to i64
  %285 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %284
  %286 = getelementptr inbounds nuw i8, ptr %285, i64 24
  store i16 %283, ptr %286, align 8, !tbaa !53
  %287 = load i8, ptr %gep.i, align 1, !tbaa !52
  %288 = extractelement <4 x float> %276, i64 2
  %289 = tail call i64 @llvm.lrint.i64.f32(float %288)
  %290 = trunc i64 %289 to i16
  %291 = zext i8 %287 to i64
  %292 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %291
  %293 = getelementptr inbounds nuw i8, ptr %292, i64 40
  store i16 %290, ptr %293, align 8, !tbaa !53
  %294 = load i8, ptr %gep.i, align 1, !tbaa !52
  %295 = extractelement <4 x float> %276, i64 3
  %296 = tail call i64 @llvm.lrint.i64.f32(float %295)
  %297 = trunc i64 %296 to i16
  %298 = zext i8 %294 to i64
  %299 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %298
  %300 = getelementptr inbounds nuw i8, ptr %299, i64 56
  store i16 %297, ptr %300, align 8, !tbaa !53
  %301 = load i8, ptr %gep.i, align 1, !tbaa !52
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %302
  %304 = getelementptr inbounds nuw i8, ptr %303, i64 72
  %305 = fmul nsz <4 x double> %48, %274
  %306 = fptrunc <4 x double> %305 to <4 x float> ; 4 uses
  %307 = extractelement <4 x float> %306, i64 0
  %308 = tail call i64 @llvm.lrint.i64.f32(float %307)
  %309 = trunc i64 %308 to i16
  store i16 %309, ptr %304, align 8, !tbaa !53
  %310 = load i8, ptr %gep.i, align 1, !tbaa !52
  %311 = extractelement <4 x float> %306, i64 1
  %312 = tail call i64 @llvm.lrint.i64.f32(float %311)
  %313 = trunc i64 %312 to i16
  %314 = zext i8 %310 to i64
  %315 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %314
  %316 = getelementptr inbounds nuw i8, ptr %315, i64 88
  store i16 %313, ptr %316, align 8, !tbaa !53
  %317 = load i8, ptr %gep.i, align 1, !tbaa !52
  %318 = extractelement <4 x float> %306, i64 2
  %319 = tail call i64 @llvm.lrint.i64.f32(float %318)
  %320 = trunc i64 %319 to i16
  %321 = zext i8 %317 to i64
  %322 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %321
  %323 = getelementptr inbounds nuw i8, ptr %322, i64 104
  store i16 %320, ptr %323, align 8, !tbaa !53
  %324 = load i8, ptr %gep.i, align 1, !tbaa !52
  %325 = extractelement <4 x float> %306, i64 3
  %326 = tail call i64 @llvm.lrint.i64.f32(float %325)
  %327 = trunc i64 %326 to i16
  %328 = zext i8 %324 to i64
  %329 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %328
  %330 = getelementptr inbounds nuw i8, ptr %329, i64 120
  store i16 %327, ptr %330, align 8, !tbaa !53
  %331 = fmul nnan nsz double %7, 5.500000e+00
  %332 = tail call nsz double @llvm.cos.f64(double %331)
  %333 = load i8, ptr %gep.i, align 1, !tbaa !52
  %334 = zext i8 %333 to i64
  %335 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %334
  %336 = getelementptr inbounds nuw i8, ptr %335, i64 10
  %337 = insertelement <4 x double> poison, double %332, i64 0
  %338 = shufflevector <4 x double> %337, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %339 = fmul nsz <4 x double> %15, %338
  %340 = fptrunc <4 x double> %339 to <4 x float> ; 4 uses
  %341 = extractelement <4 x float> %340, i64 0
  %342 = tail call i64 @llvm.lrint.i64.f32(float %341)
  %343 = trunc i64 %342 to i16
  store i16 %343, ptr %336, align 2, !tbaa !53
  %344 = load i8, ptr %gep.i, align 1, !tbaa !52
  %345 = extractelement <4 x float> %340, i64 1
  %346 = tail call i64 @llvm.lrint.i64.f32(float %345)
  %347 = trunc i64 %346 to i16
  %348 = zext i8 %344 to i64
  %349 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %348
  %350 = getelementptr inbounds nuw i8, ptr %349, i64 26
  store i16 %347, ptr %350, align 2, !tbaa !53
  %351 = load i8, ptr %gep.i, align 1, !tbaa !52
  %352 = extractelement <4 x float> %340, i64 2
  %353 = tail call i64 @llvm.lrint.i64.f32(float %352)
  %354 = trunc i64 %353 to i16
  %355 = zext i8 %351 to i64
  %356 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %355
  %357 = getelementptr inbounds nuw i8, ptr %356, i64 42
  store i16 %354, ptr %357, align 2, !tbaa !53
  %358 = load i8, ptr %gep.i, align 1, !tbaa !52
  %359 = extractelement <4 x float> %340, i64 3
  %360 = tail call i64 @llvm.lrint.i64.f32(float %359)
  %361 = trunc i64 %360 to i16
  %362 = zext i8 %358 to i64
  %363 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %362
  %364 = getelementptr inbounds nuw i8, ptr %363, i64 58
  store i16 %361, ptr %364, align 2, !tbaa !53
  %365 = load i8, ptr %gep.i, align 1, !tbaa !52
  %366 = zext i8 %365 to i64
  %367 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %366
  %368 = getelementptr inbounds nuw i8, ptr %367, i64 74
  %369 = fmul nsz <4 x double> %48, %338
  %370 = fptrunc <4 x double> %369 to <4 x float> ; 4 uses
  %371 = extractelement <4 x float> %370, i64 0
  %372 = tail call i64 @llvm.lrint.i64.f32(float %371)
  %373 = trunc i64 %372 to i16
  store i16 %373, ptr %368, align 2, !tbaa !53
  %374 = load i8, ptr %gep.i, align 1, !tbaa !52
  %375 = extractelement <4 x float> %370, i64 1
  %376 = tail call i64 @llvm.lrint.i64.f32(float %375)
  %377 = trunc i64 %376 to i16
  %378 = zext i8 %374 to i64
  %379 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %378
  %380 = getelementptr inbounds nuw i8, ptr %379, i64 90
  store i16 %377, ptr %380, align 2, !tbaa !53
  %381 = load i8, ptr %gep.i, align 1, !tbaa !52
  %382 = extractelement <4 x float> %370, i64 2
  %383 = tail call i64 @llvm.lrint.i64.f32(float %382)
  %384 = trunc i64 %383 to i16
  %385 = zext i8 %381 to i64
  %386 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %385
  %387 = getelementptr inbounds nuw i8, ptr %386, i64 106
  store i16 %384, ptr %387, align 2, !tbaa !53
  %388 = load i8, ptr %gep.i, align 1, !tbaa !52
  %389 = extractelement <4 x float> %370, i64 3
  %390 = tail call i64 @llvm.lrint.i64.f32(float %389)
  %391 = trunc i64 %390 to i16
  %392 = zext i8 %388 to i64
  %393 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %392
  %394 = getelementptr inbounds nuw i8, ptr %393, i64 122
  store i16 %391, ptr %394, align 2, !tbaa !53
  %i.u = fmul nnan nsz double %7, 6.500000e+00
  %i.v = tail call nsz double @llvm.cos.f64(double %i.u)
  %i.w = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.x
  %395 = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.z = insertelement <4 x double> poison, double %i.v, i64 0
  %i.aa = shufflevector <4 x double> %i.z, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ab = fmul nsz <4 x double> %15, %i.aa
  %i.ac = fptrunc <4 x double> %i.ab to <4 x float> ; 4 uses
  %i.ad = extractelement <4 x float> %i.ac, i64 0
  %i.ae = tail call i64 @llvm.lrint.i64.f32(float %i.ad)
  %i.af = trunc i64 %i.ae to i16
  store i16 %i.af, ptr %395, align 4, !tbaa !53
  %i.ag = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ah = extractelement <4 x float> %i.ac, i64 1
  %i.ai = tail call i64 @llvm.lrint.i64.f32(float %i.ah)
  %i.aj = trunc i64 %i.ai to i16
  %i.ak = zext i8 %i.ag to i64
  %i.al = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ak
  %396 = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i16 %i.aj, ptr %396, align 4, !tbaa !53
  %397 = load i8, ptr %gep.i, align 1, !tbaa !52
  %398 = extractelement <4 x float> %i.ac, i64 2
  %399 = tail call i64 @llvm.lrint.i64.f32(float %398)
  %400 = trunc i64 %399 to i16
  %401 = zext i8 %397 to i64
  %402 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %401
  %i.am = getelementptr inbounds nuw i8, ptr %402, i64 44
  store i16 %400, ptr %i.am, align 4, !tbaa !53
  %i.an = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.ao = extractelement <4 x float> %i.ac, i64 3
  %i.ap = tail call i64 @llvm.lrint.i64.f32(float %i.ao)
  %i.aq = trunc i64 %i.ap to i16
  %i.ar = zext i8 %i.an to i64
  %i.as = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ar
  %403 = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  store i16 %i.aq, ptr %403, align 4, !tbaa !53
  %404 = load i8, ptr %gep.i, align 1, !tbaa !52
  %405 = zext i8 %404 to i64
  %406 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %405
  %i.at = getelementptr inbounds nuw i8, ptr %406, i64 76
  %407 = fmul nsz <4 x double> %48, %i.aa
  %408 = fptrunc <4 x double> %407 to <4 x float> ; 4 uses
  %409 = extractelement <4 x float> %408, i64 0
  %410 = tail call i64 @llvm.lrint.i64.f32(float %409)
  %411 = trunc i64 %410 to i16
  store i16 %411, ptr %i.at, align 4, !tbaa !53
  %i.au = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.av = extractelement <4 x float> %408, i64 1
  %i.aw = tail call i64 @llvm.lrint.i64.f32(float %i.av)
  %i.ax = trunc i64 %i.aw to i16
  %i.ay = zext i8 %i.au to i64
  %i.az = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ay
  %412 = getelementptr inbounds nuw i8, ptr %i.az, i64 92
  store i16 %i.ax, ptr %412, align 4, !tbaa !53
  %413 = load i8, ptr %gep.i, align 1, !tbaa !52
  %414 = extractelement <4 x float> %408, i64 2
  %415 = tail call i64 @llvm.lrint.i64.f32(float %414)
  %416 = trunc i64 %415 to i16
  %417 = zext i8 %413 to i64
  %418 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %417
  %i.ba = getelementptr inbounds nuw i8, ptr %418, i64 108
  store i16 %416, ptr %i.ba, align 4, !tbaa !53
  %i.bb = load i8, ptr %gep.i, align 1, !tbaa !52
  %419 = extractelement <4 x float> %408, i64 3
  %420 = tail call i64 @llvm.lrint.i64.f32(float %419)
  %421 = trunc i64 %420 to i16
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bc
  %422 = getelementptr inbounds nuw i8, ptr %i.bd, i64 124
  store i16 %421, ptr %422, align 4, !tbaa !53
  %423 = fmul nnan nsz double %7, 7.500000e+00
  %424 = tail call nsz double @llvm.cos.f64(double %423)
  %425 = load i8, ptr %gep.i, align 1, !tbaa !52
  %426 = zext i8 %425 to i64
  %427 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %426
  %i.be = getelementptr inbounds nuw i8, ptr %427, i64 14
  %428 = insertelement <4 x double> poison, double %424, i64 0
  %429 = shufflevector <4 x double> %428, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bf = fmul nsz <4 x double> %15, %429
  %i.bg = fptrunc <4 x double> %i.bf to <4 x float> ; 4 uses
  %i.bh = extractelement <4 x float> %i.bg, i64 0
  %i.bi = tail call i64 @llvm.lrint.i64.f32(float %i.bh)
  %i.bj = trunc i64 %i.bi to i16
  store i16 %i.bj, ptr %i.be, align 2, !tbaa !53
  %i.bk = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bl = extractelement <4 x float> %i.bg, i64 1
  %i.bm = tail call i64 @llvm.lrint.i64.f32(float %i.bl)
  %i.bn = trunc i64 %i.bm to i16
  %i.bo = zext i8 %i.bk to i64
  %i.bp = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bo
  %430 = getelementptr inbounds nuw i8, ptr %i.bp, i64 30
  store i16 %i.bn, ptr %430, align 2, !tbaa !53
  %431 = load i8, ptr %gep.i, align 1, !tbaa !52
  %432 = extractelement <4 x float> %i.bg, i64 2
  %433 = tail call i64 @llvm.lrint.i64.f32(float %432)
  %434 = trunc i64 %433 to i16
  %435 = zext i8 %431 to i64
  %436 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %435
  %i.bq = getelementptr inbounds nuw i8, ptr %436, i64 46
  store i16 %434, ptr %i.bq, align 2, !tbaa !53
  %i.br = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bs = extractelement <4 x float> %i.bg, i64 3
  %i.bt = tail call i64 @llvm.lrint.i64.f32(float %i.bs)
  %i.bu = trunc i64 %i.bt to i16
  %437 = zext i8 %i.br to i64
  %438 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %437
  %439 = getelementptr inbounds nuw i8, ptr %438, i64 62
  store i16 %i.bu, ptr %439, align 2, !tbaa !53
  %440 = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bv = zext i8 %440 to i64
  %i.bw = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.bv
  %441 = getelementptr inbounds nuw i8, ptr %i.bw, i64 78
  %442 = fmul nsz <4 x double> %48, %429
  %443 = fptrunc <4 x double> %442 to <4 x float> ; 4 uses
  %444 = extractelement <4 x float> %443, i64 0
  %445 = tail call i64 @llvm.lrint.i64.f32(float %444)
  %446 = trunc i64 %445 to i16
  store i16 %446, ptr %441, align 2, !tbaa !53
  %447 = load i8, ptr %gep.i, align 1, !tbaa !52
  %448 = extractelement <4 x float> %443, i64 1
  %449 = tail call i64 @llvm.lrint.i64.f32(float %448)
  %450 = trunc i64 %449 to i16
  %451 = zext i8 %447 to i64
  %452 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %451
  %i.bx = getelementptr inbounds nuw i8, ptr %452, i64 94
  store i16 %450, ptr %i.bx, align 2, !tbaa !53
  %i.by = load i8, ptr %gep.i, align 1, !tbaa !52
  %i.bz = extractelement <4 x float> %443, i64 2
  %i.ca = tail call i64 @llvm.lrint.i64.f32(float %i.bz)
  %i.cb = trunc i64 %i.ca to i16
  %i.cc = zext i8 %i.by to i64
  %i.cd = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.cc
  %453 = getelementptr inbounds nuw i8, ptr %i.cd, i64 110
  store i16 %i.cb, ptr %453, align 2, !tbaa !53
  %454 = load i8, ptr %gep.i, align 1, !tbaa !52
  %455 = extractelement <4 x float> %443, i64 3
  %456 = tail call i64 @llvm.lrint.i64.f32(float %455)
  %457 = trunc i64 %456 to i16
  %458 = zext i8 %454 to i64
  %459 = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %458
  %i.ce = getelementptr inbounds nuw i8, ptr %459, i64 126
  store i16 %457, ptr %i.ce, align 2, !tbaa !53
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i, label %bb.c, label %.preheader.i, !llvm.loop !530

bb.c:                                             ; preds = %.preheader.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 8
  br i1 %exitcond42.not.i, label %build_basis.exit, label %.preheader28.i, !llvm.loop !531

build_basis.exit:                                 ; preds = %bb.c, %bb.a
  %i.cf = shl nsw i32 %5, 1                       ; 4 uses
  %i.cg = add nsw i32 %5, -1
  %i.ch = or i32 %i.cg, 1                         ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3116
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !77
  %.not = icmp eq i32 %i.cj, 0                    ; 2 uses
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %build_basis.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !80 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !81
  %.not422 = icmp eq i32 %i.co, 0
  br i1 %.not422, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cp = icmp slt i32 %4, 4
  %i.cq = load i16, ptr %1, align 2, !tbaa !53
  %i.cr = zext i16 %i.cq to i32                   ; 2 uses
  br i1 %i.cp, label %.thread446, label %.thread

.thread446:                                       ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !537
  %i.cu = shl i32 %i.ct, 3                        ; 2 uses
  %i.cv = mul i32 %i.cu, %i.cr
  br label %.sink.split

.thread:                                          ; preds = %bb.e
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !261
  %i.cy = shl i32 %i.cx, 3                        ; 2 uses
  %i.cz = mul i32 %i.cy, %i.cr
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.da = load i16, ptr %1, align 2, !tbaa !53
  %i.db = sext i16 %i.da to i32
  %i.dc = shl nsw i32 %i.db, 3                    ; 2 uses
  %i.dd = icmp sgt i32 %4, 3
  br i1 %i.dd, label %bb.g, label %.sink.split

bb.g:                                             ; preds = %.thread, %bb.f
  %i.de = phi i32 [ %i.cz, %.thread ], [ %i.dc, %bb.f ] ; 2 uses
  %i.df = phi i32 [ %i.cy, %.thread ], [ 8, %bb.f ] ; 2 uses
  %.0399444 = phi i32 [ %i.ch, %.thread ], [ 0, %bb.f ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 6160
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !90 ; 2 uses
  %.not423 = icmp eq ptr %i.dh, null
  br i1 %.not423, label %.sink.split, label %vector.ph

bb.h:                                             ; preds = %build_basis.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %.thread446, %bb.h
  %.sink567 = phi i64 [ 6176, %bb.h ], [ 6144, %.thread446 ], [ 6144, %bb.g ], [ 6144, %bb.f ]
  %.sink.ph = phi i64 [ 6184, %bb.h ], [ 6152, %.thread446 ], [ 6152, %bb.g ], [ 6152, %bb.f ]
  %.0408.ph = phi ptr [ %i.dj, %bb.h ], [ %i.cl, %.thread446 ], [ %i.cl, %bb.g ], [ %i.cl, %bb.f ]
  %.0407.ph = phi ptr [ %i.dk, %bb.h ], [ %i.cm, %.thread446 ], [ %i.cm, %bb.g ], [ %i.cm, %bb.f ]
  %.1400.ph = phi i32 [ %i.ch, %bb.h ], [ %i.ch, %.thread446 ], [ %.0399444, %bb.g ], [ 0, %bb.f ]
  %.0398.ph = phi i32 [ 0, %bb.h ], [ 1, %.thread446 ], [ 1, %bb.g ], [ 1, %bb.f ]
  %.0387.ph = phi i32 [ 0, %bb.h ], [ %i.cv, %.thread446 ], [ %i.de, %bb.g ], [ %i.dc, %bb.f ]
  %.1370.ph = phi i32 [ 1, %bb.h ], [ %i.cu, %.thread446 ], [ %i.df, %bb.g ], [ 8, %bb.f ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.sink567
  %i.dm = load ptr, ptr %i.dl, align 16, !tbaa !91
  br label %vector.ph

vector.ph:                                        ; preds = %.sink.split, %bb.g
  %.sink = phi i64 [ 6168, %bb.g ], [ %.sink.ph, %.sink.split ]
  %.0408 = phi ptr [ %i.cl, %bb.g ], [ %.0408.ph, %.sink.split ]
  %.0407 = phi ptr [ %i.cm, %bb.g ], [ %.0407.ph, %.sink.split ] ; 8 uses
  %.1400 = phi i32 [ %.0399444, %bb.g ], [ %.1400.ph, %.sink.split ] ; 5 uses
  %.0398 = phi i32 [ 1, %bb.g ], [ %.0398.ph, %.sink.split ] ; 7 uses
  %.0387 = phi i32 [ %i.de, %bb.g ], [ %.0387.ph, %.sink.split ]
  %.0386 = phi ptr [ %i.dh, %bb.g ], [ %i.dm, %.sink.split ] ; 13 uses
  %.1370 = phi i32 [ %i.df, %bb.g ], [ %.1370.ph, %.sink.split ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0385 = load ptr, ptr %i.dn, align 8, !tbaa !91 ; 13 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dp = sext i32 %4 to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.do, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !54 ; 3 uses
  %i.ds = add i32 %.0387, 32
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ds, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 16
  %wide.load = load <8 x i16>, ptr %3, align 2, !tbaa !53
  %wide.load568 = load <8 x i16>, ptr %i.dt, align 2, !tbaa !53
  %i.du = sext <8 x i16> %wide.load to <8 x i32>
  %i.dv = sext <8 x i16> %wide.load568 to <8 x i32>
  %i.dw = shl nsw <8 x i32> %i.du, splat (i32 6)
  %i.dx = shl nsw <8 x i32> %i.dv, splat (i32 6)
  %i.dy = sub <8 x i32> %broadcast.splat, %i.dw
  %i.dz = sub <8 x i32> %broadcast.splat, %i.dx
  %i.ea = trunc <8 x i32> %i.dy to <8 x i16>
  %i.eb = trunc <8 x i32> %i.dz to <8 x i16>
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <8 x i16> %i.ea, ptr %i.a, align 16, !tbaa !53
  store <8 x i16> %i.eb, ptr %i.ec, align 16, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 48
  %wide.load.1 = load <8 x i16>, ptr %i.ed, align 2, !tbaa !53
  %wide.load568.1 = load <8 x i16>, ptr %i.ee, align 2, !tbaa !53
  %i.ef = sext <8 x i16> %wide.load.1 to <8 x i32>
  %i.eg = sext <8 x i16> %wide.load568.1 to <8 x i32>
  %i.eh = shl nsw <8 x i32> %i.ef, splat (i32 6)
  %i.ei = shl nsw <8 x i32> %i.eg, splat (i32 6)
  %i.ej = sub <8 x i32> %broadcast.splat, %i.eh
  %i.ek = sub <8 x i32> %broadcast.splat, %i.ei
  %i.el = trunc <8 x i32> %i.ej to <8 x i16>
  %i.em = trunc <8 x i32> %i.ek to <8 x i16>
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <8 x i16> %i.el, ptr %i.en, align 16, !tbaa !53
  store <8 x i16> %i.em, ptr %i.eo, align 16, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 80
  %wide.load.2 = load <8 x i16>, ptr %i.ep, align 2, !tbaa !53
  %wide.load568.2 = load <8 x i16>, ptr %i.eq, align 2, !tbaa !53
  %i.er = sext <8 x i16> %wide.load.2 to <8 x i32>
  %i.es = sext <8 x i16> %wide.load568.2 to <8 x i32>
  %i.et = shl nsw <8 x i32> %i.er, splat (i32 6)
  %i.eu = shl nsw <8 x i32> %i.es, splat (i32 6)
  %i.ev = sub <8 x i32> %broadcast.splat, %i.et
  %i.ew = sub <8 x i32> %broadcast.splat, %i.eu
  %i.ex = trunc <8 x i32> %i.ev to <8 x i16>
  %i.ey = trunc <8 x i32> %i.ew to <8 x i16>
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <8 x i16> %i.ex, ptr %i.ez, align 16, !tbaa !53
  store <8 x i16> %i.ey, ptr %i.fa, align 16, !tbaa !53
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 112
  %wide.load.3 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !53
  %wide.load568.3 = load <8 x i16>, ptr %i.fc, align 2, !tbaa !53
  %i.fd = sext <8 x i16> %wide.load.3 to <8 x i32>
  %i.fe = sext <8 x i16> %wide.load568.3 to <8 x i32>
  %i.ff = shl nsw <8 x i32> %i.fd, splat (i32 6)
  %i.fg = shl nsw <8 x i32> %i.fe, splat (i32 6)
  %i.fh = sub <8 x i32> %broadcast.splat, %i.ff
  %i.fi = sub <8 x i32> %broadcast.splat, %i.fg
  %i.fj = trunc <8 x i32> %i.fh to <8 x i16>
  %i.fk = trunc <8 x i32> %i.fi to <8 x i16>
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <8 x i16> %i.fj, ptr %i.fl, align 16, !tbaa !53
  store <8 x i16> %i.fk, ptr %i.fm, align 16, !tbaa !53
  br label %vector.body570

vector.body570:                                   ; preds = %vector.ph, %vector.body570
  %index571 = phi i64 [ %index.next575, %vector.body570 ], [ 0, %vector.ph ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.gf, %vector.body570 ], [ zeroinitializer, %vector.ph ]
  %vec.phi572 = phi <4 x i32> [ %i.gg, %vector.body570 ], [ zeroinitializer, %vector.ph ]
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index571 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %wide.load573 = load <4 x i16>, ptr %i.fn, align 2, !tbaa !53
  %wide.load574 = load <4 x i16>, ptr %i.fo, align 2, !tbaa !53
  %i.fp = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load573, i1 false)
  %i.fq = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load574, i1 false)
  %i.fr = add nuw <4 x i16> %i.fp, splat (i16 144) ; 2 uses
  %i.fs = add nuw <4 x i16> %i.fq, splat (i16 144) ; 2 uses
  %i.ft = lshr <4 x i16> %i.fr, splat (i16 1)
  %i.fu = lshr <4 x i16> %i.fs, splat (i16 1)
  %i.fv = add nuw nsw <4 x i16> %i.ft, splat (i16 6912)
  %i.fw = add nuw nsw <4 x i16> %i.fu, splat (i16 6912)
  %i.fx = udiv <4 x i16> %i.fv, %i.fr
  %i.fy = udiv <4 x i16> %i.fw, %i.fs
  %i.fz = add nuw nsw <4 x i16> %i.fx, splat (i16 15) ; 2 uses
  %i.ga = add nuw nsw <4 x i16> %i.fy, splat (i16 15) ; 2 uses
  %i.gb = zext nneg <4 x i16> %i.fz to <4 x i32>  ; 2 uses
  %i.gc = zext nneg <4 x i16> %i.ga to <4 x i32>  ; 2 uses
  store <4 x i16> %i.fz, ptr %i.fn, align 2, !tbaa !53
  store <4 x i16> %i.ga, ptr %i.fo, align 2, !tbaa !53
  %i.gd = mul nuw nsw <4 x i32> %i.gb, %i.gb
  %i.ge = mul nuw nsw <4 x i32> %i.gc, %i.gc
  %i.gf = add <4 x i32> %i.gd, %vec.phi           ; 2 uses
  %i.gg = add <4 x i32> %i.ge, %vec.phi572        ; 2 uses
  %index.next575 = add nuw i64 %index571, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next575, 64
  br i1 %i.gh, label %middle.block576, label %vector.body570, !llvm.loop !532

middle.block576:                                  ; preds = %vector.body570
  %bin.rdx = add <4 x i32> %i.gg, %i.gf
  %i.gi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 4420
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !87
  %i.gm = zext i32 %i.gl to i64
  %i.gn = mul nuw nsw i64 %i.gm, %i.gj
  %i.go = lshr i64 %i.gn, 19
  %i.gp = trunc i64 %i.go to i32                  ; 2 uses
  %.not424491 = icmp sgt i32 %.0398, %i.dr
  %.pre = sub i32 0, %.1400                       ; 4 uses
  br i1 %.not424491, label %..preheader486_crit_edge, label %.lr.ph

..preheader486_crit_edge:                         ; preds = %middle.block576
  %.pre555 = zext nneg i32 %.0398 to i64
  br label %.preheader486

.lr.ph:                                           ; preds = %middle.block576
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 4512
  %i.gr = zext nneg i32 %.0398 to i64             ; 2 uses
  %i.gs = add nuw i32 %i.dr, 1
  %wide.trip.count = zext i32 %i.gs to i64
  br label %bb.i

.preheader486:                                    ; preds = %bb.l, %..preheader486_crit_edge
  %.pre-phi556 = phi i64 [ %.pre555, %..preheader486_crit_edge ], [ %i.gr, %bb.l ] ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 4444 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 4480
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 4512
  %i.gx = add nsw i32 %.0398, -1
  %i.gy = sub i32 0, %.1370                       ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.hr = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  br label %bb.m

bb.i:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv535 = phi i64 [ %i.gr, %.lr.ph ], [ %indvars.iv.next536, %bb.l ] ; 2 uses
  %.0371494 = phi i32 [ 0, %.lr.ph ], [ %.1372, %bb.l ] ; 2 uses
  %.0378493 = phi i32 [ 0, %.lr.ph ], [ %.1379, %bb.l ] ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv535
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !52
  %i.hw = zext i8 %i.hv to i64                    ; 2 uses
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.hw
  %i.hy = load i16, ptr %i.hx, align 2, !tbaa !53 ; 3 uses
  %.not436 = icmp eq i16 %i.hy, 0
  br i1 %.not436, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.hz = sext i16 %i.hy to i32
  %i.ia = icmp slt i16 %i.hy, 0
  %i.ib = mul nsw i32 %i.cf, %i.hz
  %.0367.p = select i1 %i.ia, i32 %.pre, i32 %.1400
  %.0367 = add i32 %i.ib, %.0367.p
  %i.ic = add nsw i32 %.0378493, 1
  %i.id = sext i32 %.0378493 to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.id
  store i32 %.0371494, ptr %i.ie, align 4, !tbaa !54
  %i.if = load ptr, ptr %i.gq, align 16, !tbaa !538
  %i.ig = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.hw
  call void %i.if(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ig, i32 noundef %.0367) #14
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ih = add nsw i32 %.0371494, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1379 = phi i32 [ %i.ic, %bb.j ], [ %.0378493, %bb.k ]
  %.1372 = phi i32 [ 0, %bb.j ], [ %i.ih, %bb.k ]
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %exitcond538.not = icmp eq i64 %indvars.iv.next536, %wide.trip.count
  br i1 %exitcond538.not, label %.preheader486, label %bb.i, !llvm.loop !533

bb.m:                                             ; preds = %.preheader486, %._crit_edge
  %.0394 = phi i32 [ %.2396, %._crit_edge ], [ %i.dr, %.preheader486 ] ; 9 uses
  %i.ii = load ptr, ptr %i.gt, align 8, !tbaa !539
  %i.ij = call i32 %i.ii(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @basis, i32 noundef 0) #14 ; 4 uses
  %i.ik = icmp sgt i32 %.0394, 2
  br i1 %i.ik, label %vector.body578, label %.split

.split:                                           ; preds = %bb.m
  %i.il = load i32, ptr %i.gu, align 4, !tbaa !260
  %i.im = icmp sgt i32 %i.il, 2
  br i1 %i.im, label %vector.body578, label %bb.n

vector.body578:                                   ; preds = %.split, %bb.m
  %wide.load580 = load <8 x i16>, ptr %2, align 2, !tbaa !53
  %i.in = sext <8 x i16> %wide.load580 to <8 x i32> ; 2 uses
  %wide.load581 = load <8 x i16>, ptr %i.a, align 16, !tbaa !53
  %i.io = sext <8 x i16> %wide.load581 to <8 x i32>
  %i.ip = mul nsw <8 x i32> %i.in, %i.in
  %i.iq = mul <8 x i32> %i.ip, %i.io
  %i.ir = add nsw <8 x i32> %i.iq, splat (i32 131072)
  %i.is = ashr <8 x i32> %i.ir, splat (i32 18)
  %i.it = trunc nsw <8 x i32> %i.is to <8 x i16>
  store <8 x i16> %i.it, ptr %i.b, align 16, !tbaa !53
  %wide.load580.1 = load <8 x i16>, ptr %i.gz, align 2, !tbaa !53
  %i.iu = sext <8 x i16> %wide.load580.1 to <8 x i32> ; 2 uses
  %wide.load581.1 = load <8 x i16>, ptr %i.ha, align 16, !tbaa !53
  %i.iv = sext <8 x i16> %wide.load581.1 to <8 x i32>
  %i.iw = mul nsw <8 x i32> %i.iu, %i.iu
  %i.ix = mul <8 x i32> %i.iw, %i.iv
  %i.iy = add nsw <8 x i32> %i.ix, splat (i32 131072)
  %i.iz = ashr <8 x i32> %i.iy, splat (i32 18)
  %i.ja = trunc nsw <8 x i32> %i.iz to <8 x i16>
  store <8 x i16> %i.ja, ptr %i.hb, align 16, !tbaa !53
  %wide.load580.2 = load <8 x i16>, ptr %i.hc, align 2, !tbaa !53
  %i.jb = sext <8 x i16> %wide.load580.2 to <8 x i32> ; 2 uses
  %wide.load581.2 = load <8 x i16>, ptr %i.hd, align 16, !tbaa !53
  %i.jc = sext <8 x i16> %wide.load581.2 to <8 x i32>
  %i.jd = mul nsw <8 x i32> %i.jb, %i.jb
  %i.je = mul <8 x i32> %i.jd, %i.jc
  %i.jf = add nsw <8 x i32> %i.je, splat (i32 131072)
  %i.jg = ashr <8 x i32> %i.jf, splat (i32 18)
  %i.jh = trunc nsw <8 x i32> %i.jg to <8 x i16>
  store <8 x i16> %i.jh, ptr %i.he, align 16, !tbaa !53
  %wide.load580.3 = load <8 x i16>, ptr %i.hf, align 2, !tbaa !53
  %i.ji = sext <8 x i16> %wide.load580.3 to <8 x i32> ; 2 uses
  %wide.load581.3 = load <8 x i16>, ptr %i.hg, align 16, !tbaa !53
  %i.jj = sext <8 x i16> %wide.load581.3 to <8 x i32>
  %i.jk = mul nsw <8 x i32> %i.ji, %i.ji
  %i.jl = mul <8 x i32> %i.jk, %i.jj
  %i.jm = add nsw <8 x i32> %i.jl, splat (i32 131072)
  %i.jn = ashr <8 x i32> %i.jm, splat (i32 18)
  %i.jo = trunc nsw <8 x i32> %i.jn to <8 x i16>
  store <8 x i16> %i.jo, ptr %i.hh, align 16, !tbaa !53
  %wide.load580.4 = load <8 x i16>, ptr %i.hi, align 2, !tbaa !53
  %i.jp = sext <8 x i16> %wide.load580.4 to <8 x i32> ; 2 uses
  %wide.load581.4 = load <8 x i16>, ptr %i.hj, align 16, !tbaa !53
  %i.jq = sext <8 x i16> %wide.load581.4 to <8 x i32>
  %i.jr = mul nsw <8 x i32> %i.jp, %i.jp
  %i.js = mul <8 x i32> %i.jr, %i.jq
  %i.jt = add nsw <8 x i32> %i.js, splat (i32 131072)
  %i.ju = ashr <8 x i32> %i.jt, splat (i32 18)
  %i.jv = trunc nsw <8 x i32> %i.ju to <8 x i16>
  store <8 x i16> %i.jv, ptr %i.hk, align 16, !tbaa !53
  %wide.load580.5 = load <8 x i16>, ptr %i.hl, align 2, !tbaa !53
  %i.jw = sext <8 x i16> %wide.load580.5 to <8 x i32> ; 2 uses
  %wide.load581.5 = load <8 x i16>, ptr %i.hm, align 16, !tbaa !53
  %i.jx = sext <8 x i16> %wide.load581.5 to <8 x i32>
  %i.jy = mul nsw <8 x i32> %i.jw, %i.jw
  %i.jz = mul <8 x i32> %i.jy, %i.jx
  %i.ka = add nsw <8 x i32> %i.jz, splat (i32 131072)
  %i.kb = ashr <8 x i32> %i.ka, splat (i32 18)
  %i.kc = trunc nsw <8 x i32> %i.kb to <8 x i16>
  store <8 x i16> %i.kc, ptr %i.hn, align 16, !tbaa !53
  %wide.load580.6 = load <8 x i16>, ptr %i.ho, align 2, !tbaa !53
  %i.kd = sext <8 x i16> %wide.load580.6 to <8 x i32> ; 2 uses
  %wide.load581.6 = load <8 x i16>, ptr %i.hp, align 16, !tbaa !53
  %i.ke = sext <8 x i16> %wide.load581.6 to <8 x i32>
  %i.kf = mul nsw <8 x i32> %i.kd, %i.kd
  %i.kg = mul <8 x i32> %i.kf, %i.ke
  %i.kh = add nsw <8 x i32> %i.kg, splat (i32 131072)
  %i.ki = ashr <8 x i32> %i.kh, splat (i32 18)
  %i.kj = trunc nsw <8 x i32> %i.ki to <8 x i16>
  store <8 x i16> %i.kj, ptr %i.hq, align 16, !tbaa !53
  %wide.load580.7 = load <8 x i16>, ptr %i.hr, align 2, !tbaa !53
  %i.kk = sext <8 x i16> %wide.load580.7 to <8 x i32> ; 2 uses
  %wide.load581.7 = load <8 x i16>, ptr %i.hs, align 16, !tbaa !53
  %i.kl = sext <8 x i16> %wide.load581.7 to <8 x i32>
  %i.km = mul nsw <8 x i32> %i.kk, %i.kk
  %i.kn = mul <8 x i32> %i.km, %i.kl
  %i.ko = add nsw <8 x i32> %i.kn, splat (i32 131072)
  %i.kp = ashr <8 x i32> %i.ko, splat (i32 18)
  %i.kq = trunc nsw <8 x i32> %i.kp to <8 x i16>
  store <8 x i16> %i.kq, ptr %i.ht, align 16, !tbaa !53
  %i.kr = load ptr, ptr %i.gv, align 16, !tbaa !75
  call void %i.kr(ptr noundef nonnull %i.b) #14
  br label %bb.n

bb.n:                                             ; preds = %.split, %vector.body578
  %i.ks = phi i1 [ false, %.split ], [ true, %vector.body578 ] ; 2 uses
  br i1 %.not, label %.loopexit484, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kt = load i16, ptr %1, align 2, !tbaa !53
  %i.ku = sext i16 %i.kt to i32                   ; 2 uses
  %i.kv = add nsw i32 %i.ku, -1
  %i.kw = mul nsw i32 %i.kv, %.1370
  %or.cond = icmp ugt i32 %i.kw, 2047
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.kx = load ptr, ptr %i.gt, align 8, !tbaa !539
  %i.ky = call i32 %i.kx(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @basis, i32 noundef %i.gy) #14 ; 2 uses
  %i.kz = icmp slt i32 %i.ky, %i.ij               ; 2 uses
  %.1359 = call i32 @llvm.smin.i32(i32 %i.ky, i32 %i.ij)
  %.1339 = sext i1 %i.kz to i32
  %.1333 = select i1 %i.kz, i32 %i.gy, i32 0
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.2360 = phi i32 [ %.1359, %bb.p ], [ %i.ij, %bb.o ] ; 3 uses
  %.2340 = phi i32 [ %.1339, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %.2334 = phi i32 [ %.1333, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.la = add nsw i32 %i.ku, 1
  %i.lb = mul nsw i32 %i.la, %.1370
  %or.cond.1 = icmp ugt i32 %i.lb, 2047
  br i1 %or.cond.1, label %.loopexit484, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.lc = load ptr, ptr %i.gt, align 8, !tbaa !539
  %i.ld = call i32 %i.lc(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull @basis, i32 noundef %.1370) #14 ; 2 uses
  %i.le = icmp slt i32 %i.ld, %.2360              ; 2 uses
  %.1359.1 = call i32 @llvm.smin.i32(i32 %i.ld, i32 %.2360)
  %.1339.1 = select i1 %i.le, i32 1, i32 %.2340
  %.1333.1 = select i1 %i.le, i32 %.1370, i32 %.2334
  br label %.loopexit484

.loopexit484:                                     ; preds = %bb.q, %bb.r, %bb.n
  %.3361 = phi i32 [ %i.ij, %bb.n ], [ %.1359.1, %bb.r ], [ %.2360, %bb.q ]
  %.3341 = phi i32 [ 0, %bb.n ], [ %.1339.1, %bb.r ], [ %.2340, %bb.q ]
  %.3 = phi i32 [ 0, %bb.n ], [ %.1333.1, %bb.r ], [ %.2334, %bb.q ]
  %i.lf = load i32, ptr %i.c, align 16, !tbaa !54
  %i.lg = add nsw i32 %.0394, 1
  %i.lh = sext i32 %i.lg to i64
  %i.li = sext i32 %.0394 to i64
  br label %bb.s

bb.s:                                             ; preds = %.loopexit484, %bb.bq
  %indvars.iv546 = phi i64 [ %.pre-phi556, %.loopexit484 ], [ %indvars.iv.next547, %bb.bq ] ; 7 uses
  %.4516 = phi i32 [ %.3, %.loopexit484 ], [ %.7.1, %bb.bq ] ; 5 uses
  %.0335515 = phi i32 [ %i.lf, %.loopexit484 ], [ %.1336, %bb.bq ]
  %.4342514 = phi i32 [ %.3341, %.loopexit484 ], [ %.7345.1, %bb.bq ] ; 5 uses
  %.4352513 = phi i32 [ 0, %.loopexit484 ], [ %.7355.1, %bb.bq ] ; 5 uses
  %.4362512 = phi i32 [ %.3361, %.loopexit484 ], [ %.7365.1, %bb.bq ] ; 5 uses
  %.2373511 = phi i32 [ 0, %.loopexit484 ], [ %.3374, %bb.bq ] ; 4 uses
  %.2380510 = phi i32 [ 1, %.loopexit484 ], [ %.3381, %bb.bq ] ; 3 uses
  %.0401508 = phi i32 [ 0, %.loopexit484 ], [ %.1402, %bb.bq ] ; 3 uses
  %.0404507 = phi i32 [ 0, %.loopexit484 ], [ %.1405, %bb.bq ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv546
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !52
  %i.ll = zext i8 %i.lk to i64                    ; 2 uses
  %i.lm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ll
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !53 ; 7 uses
  %i.lo = sext i16 %i.ln to i32                   ; 3 uses
  %i.lp = load i32, ptr %i.gu, align 4, !tbaa !260 ; 2 uses
  %i.lq = icmp slt i32 %i.lp, 3
  %i.lr = icmp sgt i64 %indvars.iv546, %i.lh
  %or.cond438 = select i1 %i.lq, i1 %i.lr, i1 false
  br i1 %or.cond438, label %bb.br, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not426 = icmp eq i16 %i.ln, 0                 ; 6 uses
  br i1 %.not426, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ls = icmp slt i16 %i.ln, 0
  %i.lt = mul nsw i32 %i.cf, %i.lo
  %.0325.p = select i1 %i.ls, i32 %.pre, i32 %.1400
  %.0325 = add i32 %i.lt, %.0325.p
  %i.lu = add nsw i32 %.2380510, 1
  %i.lv = sext i32 %.2380510 to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.lv
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !54
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ly = add nsw i32 %.0335515, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3381 = phi i32 [ %i.lu, %bb.u ], [ %.2380510, %bb.v ]
  %.1336 = phi i32 [ %i.lx, %bb.u ], [ %i.ly, %bb.v ] ; 4 uses
  %.1326 = phi i32 [ %.0325, %bb.u ], [ 0, %bb.v ] ; 2 uses
  %invariant.op = add nsw i32 %i.lo, 64           ; 3 uses
  %i.lz = call i32 @llvm.abs.i32(i32 %i.lo, i1 true) ; 2 uses
  %i.ma = add i16 %i.ln, 62
  %or.cond5 = icmp ult i16 %i.ma, 125             ; 2 uses
  %i.mb = icmp slt i64 %indvars.iv546, %i.li      ; 6 uses
  %i.mc = shl nsw i32 %.2373511, 7                ; 3 uses
  %i.md = or disjoint i32 %i.mc, 64               ; 2 uses
  %.reass = add i32 %i.mc, %invariant.op
  %i.me = sext i32 %.reass to i64                 ; 2 uses
  %i.mf = getelementptr inbounds i8, ptr %.0385, i64 %i.me ; 2 uses
  %i.mg = getelementptr inbounds i8, ptr %.0386, i64 %i.me ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.0408, i64 %indvars.iv546 ; 2 uses
  %i.mi = sext i32 %i.mc to i64                   ; 2 uses
  %i.mj = getelementptr i8, ptr %.0385, i64 %i.mi
  %i.mk = getelementptr i8, ptr %i.mj, i64 65     ; 4 uses
  %.not430 = icmp eq i32 %.0401508, 0             ; 4 uses
  %i.ml = shl nsw i32 %.0404507, 7
  %i.mm = add nsw i32 %i.ml, %.0401508
  %i.mn = sext i32 %i.mm to i64                   ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %.0386, i64 %i.mn ; 4 uses
  %i.mp = getelementptr inbounds i8, ptr %.0385, i64 %i.mn ; 4 uses
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 3 uses
  %i.mq = trunc nuw nsw i64 %indvars.iv.next547 to i32
  %i.mr = add i32 %.1336, %i.mq                   ; 2 uses
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds i8, ptr %.0407, i64 %i.ms ; 4 uses
  %i.mu = icmp slt i32 %i.mr, %.0394              ; 4 uses
  %i.mv = getelementptr i8, ptr %.0386, i64 %i.mi
  %i.mw = getelementptr i8, ptr %i.mv, i64 65     ; 4 uses
  %i.mx = shl nsw i32 %.1336, 7                   ; 4 uses
  %i.my = add nsw i32 %.1336, %.2373511
  %i.mz = shl i32 %i.my, 7
  %i.na = add i32 %i.mz, 128                      ; 4 uses
  %i.nb = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.ll ; 2 uses
  %i.nc = sext i16 %i.ln to i64                   ; 2 uses
  %i.nd = add nsw i64 %i.nc, -1                   ; 3 uses
  %i.ne = icmp slt i32 %i.lp, 2
  %i.nf = trunc nsw i64 %i.nd to i32              ; 2 uses
  %i.ng = call i32 @llvm.abs.i32(i32 %i.nf, i1 true)
  %i.nh = icmp samesign ugt i32 %i.ng, %i.lz
  %or.cond528 = select i1 %i.ne, i1 %i.nh, i1 false
  br i1 %or.cond528, label %bb.at, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ni = icmp eq i64 %i.nd, 0
  br i1 %i.ni, label %bb.al, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.nj = icmp slt i16 %i.ln, 1
  %.0.p = select i1 %i.nj, i32 %.pre, i32 %.1400
  %i.nk = trunc nsw i64 %i.nd to i32
  %i.nl = mul i32 %i.cf, %i.nk
  %.0 = add i32 %.0.p, %i.nl                      ; 8 uses
  %i.nm = add i32 %.0, -2048
  %or.cond3 = icmp ult i32 %i.nm, -4095
  br i1 %or.cond3, label %bb.at, label %bb.z

bb.z:                                             ; preds = %bb.y
  br i1 %.not426, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %or.cond5, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  %i.nn = add i32 %i.md, %i.nf
  %i.no = sext i32 %i.nn to i64                   ; 2 uses
  br i1 %i.mb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.np = getelementptr inbounds i8, ptr %.0386, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !52
  %i.nr = zext i8 %i.nq to i32
  %i.ns = load i8, ptr %i.mg, align 1, !tbaa !52
  %i.nt = zext i8 %i.ns to i32
  %i.nu = sub nsw i32 %i.nr, %i.nt
  br label %bb.ar

bb.ad:                                            ; preds = %bb.ab
  %i.nv = getelementptr inbounds i8, ptr %.0385, i64 %i.no
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !52
  %i.nx = zext i8 %i.nw to i32
  %i.ny = load i8, ptr %i.mf, align 1, !tbaa !52
  %i.nz = zext i8 %i.ny to i32
  %i.oa = sub nsw i32 %i.nx, %i.nz
  br label %bb.ar

bb.ae:                                            ; preds = %bb.z
  br i1 %i.ks, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.ob = load i8, ptr %i.mh, align 1, !tbaa !52
  %i.oc = zext i8 %i.ob to i64
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.oc
  %i.oe = load i16, ptr %i.od, align 2, !tbaa !53
  %i.of = icmp slt i16 %i.oe, 0
  br i1 %i.of, label %bb.at, label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ae
  br i1 %i.mb, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %.critedge
  %i.og = load i8, ptr %i.mt, align 1, !tbaa !52
  %i.oh = zext i8 %i.og to i64
  %i.oi = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.oh
  %i.oj = load i16, ptr %i.oi, align 2, !tbaa !53
  %i.ok = sext i16 %i.oj to i32
  %i.ol = add nsw i32 %i.ok, 64                   ; 2 uses
  %i.om = icmp ugt i32 %i.ol, 127
  %spec.store.select = select i1 %i.om, i32 0, i32 %i.ol ; 2 uses
  %i.on = load i8, ptr %i.mw, align 1, !tbaa !52
  %i.oo = zext i8 %i.on to i32                    ; 2 uses
  %i.op = add nsw i32 %spec.store.select, %i.mx
  %i.oq = sext i32 %i.op to i64                   ; 2 uses
  %i.or = add nsw i32 %i.na, %spec.store.select
  %i.os = sext i32 %i.or to i64                   ; 2 uses
  br i1 %i.mu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ot = getelementptr inbounds i8, ptr %.0386, i64 %i.oq
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !52
  %i.ov = zext i8 %i.ou to i32
  %i.ow = add nuw nsw i32 %i.ov, %i.oo
  %i.ox = getelementptr inbounds i8, ptr %.0386, i64 %i.os
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !52
  %i.oz = zext i8 %i.oy to i32
  %i.pa = sub nsw i32 %i.ow, %i.oz
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.pb = getelementptr inbounds i8, ptr %.0385, i64 %i.oq
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !52
  %i.pd = zext i8 %i.pc to i32
  %i.pe = add nuw nsw i32 %i.pd, %i.oo
  %i.pf = getelementptr inbounds i8, ptr %.0385, i64 %i.os
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !52
  %i.ph = zext i8 %i.pg to i32
  %i.pi = sub nsw i32 %i.pe, %i.ph
  br label %bb.ar

bb.aj:                                            ; preds = %.critedge
  %i.pj = load i8, ptr %i.mk, align 1, !tbaa !52
  %i.pk = zext i8 %i.pj to i32                    ; 2 uses
  br i1 %.not430, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.pl = load i8, ptr %i.mo, align 1, !tbaa !52
  %i.pm = zext i8 %i.pl to i32
  %i.pn = load i8, ptr %i.mp, align 1, !tbaa !52
  %i.po = zext i8 %i.pn to i32
  %i.pp = add nuw nsw i32 %i.pm, %i.pk
  %i.pq = sub nsw i32 %i.pp, %i.po
  br label %bb.ar

bb.al:                                            ; preds = %bb.x
  br i1 %i.mb, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.pr = load i8, ptr %i.mt, align 1, !tbaa !52
  %i.ps = zext i8 %i.pr to i64
  %i.pt = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ps
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !53
  %i.pv = sext i16 %i.pu to i32
  %i.pw = add nsw i32 %i.pv, 64                   ; 2 uses
  %i.px = icmp ugt i32 %i.pw, 127
  %spec.store.select6 = select i1 %i.px, i32 0, i32 %i.pw ; 2 uses
  %i.py = add nsw i32 %i.na, %spec.store.select6
  %i.pz = sext i32 %i.py to i64                   ; 2 uses
  %i.qa = add nsw i32 %spec.store.select6, %i.mx
  %i.qb = sext i32 %i.qa to i64                   ; 2 uses
  %i.qc = load i8, ptr %i.mw, align 1, !tbaa !52
  %i.qd = zext i8 %i.qc to i32                    ; 2 uses
  br i1 %i.mu, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.qe = getelementptr inbounds i8, ptr %.0386, i64 %i.pz
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !52
  %i.qg = zext i8 %i.qf to i32
  %i.qh = getelementptr inbounds i8, ptr %.0386, i64 %i.qb
  %i.qi = load i8, ptr %i.qh, align 1, !tbaa !52
  %i.qj = zext i8 %i.qi to i32
  %i.qk = add nuw nsw i32 %i.qj, %i.qd
  %i.ql = sub nsw i32 %i.qg, %i.qk
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.qm = getelementptr inbounds i8, ptr %.0385, i64 %i.pz
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !52
  %i.qo = zext i8 %i.qn to i32
  %i.qp = getelementptr inbounds i8, ptr %.0385, i64 %i.qb
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !52
  %i.qr = zext i8 %i.qq to i32
  %i.qs = add nuw nsw i32 %i.qr, %i.qd
  %i.qt = sub nsw i32 %i.qo, %i.qs
  br label %bb.ar

bb.ap:                                            ; preds = %bb.al
  %i.qu = load i8, ptr %i.mk, align 1, !tbaa !52
  %i.qv = zext i8 %i.qu to i32                    ; 2 uses
  %i.qw = sub nsw i32 0, %i.qv
  br i1 %.not430, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.qx = load i8, ptr %i.mp, align 1, !tbaa !52
  %i.qy = zext i8 %i.qx to i32
  %i.qz = load i8, ptr %i.mo, align 1, !tbaa !52
  %i.ra = zext i8 %i.qz to i32
  %i.rb = add nuw nsw i32 %i.qv, %i.ra
  %i.rc = sub nsw i32 %i.qy, %i.rb
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.ao, %bb.ah, %bb.ai, %bb.aq, %bb.ap, %bb.ac, %bb.ad, %bb.aa, %bb.aj, %bb.ak
  %.2 = phi i32 [ %i.nu, %bb.ac ], [ %i.oa, %bb.ad ], [ 0, %bb.aa ], [ %i.qw, %bb.ap ], [ %i.pq, %bb.ak ], [ %i.pk, %bb.aj ], [ %i.pi, %bb.ai ], [ %i.rc, %bb.aq ], [ %i.pa, %bb.ah ], [ %i.ql, %bb.an ], [ %i.qt, %bb.ao ]
  %.1 = phi i32 [ %.0, %bb.ac ], [ %.0, %bb.ad ], [ %.0, %bb.aa ], [ 0, %bb.ap ], [ %.0, %bb.ak ], [ %.0, %bb.aj ], [ %.0, %bb.ai ], [ 0, %bb.aq ], [ %.0, %bb.ah ], [ 0, %bb.an ], [ 0, %bb.ao ]
  %i.rd = mul nsw i32 %.2, %i.gp
  %i.re = sub nsw i32 %.1, %.1326                 ; 2 uses
  %i.rf = load ptr, ptr %i.gt, align 8, !tbaa !539
  %i.rg = call i32 %i.rf(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.nb, i32 noundef %i.re) #14
  %i.rh = add nsw i32 %i.rg, %i.rd                ; 2 uses
  %i.ri = icmp slt i32 %i.rh, %.4362512
  br i1 %i.ri, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.rj = trunc nuw nsw i64 %indvars.iv546 to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.w, %bb.ar, %bb.as, %bb.af, %bb.y
  %.7365 = phi i32 [ %.4362512, %bb.y ], [ %.4362512, %bb.w ], [ %.4362512, %bb.af ], [ %i.rh, %bb.as ], [ %.4362512, %bb.ar ] ; 5 uses
  %.7355 = phi i32 [ %.4352513, %bb.y ], [ %.4352513, %bb.w ], [ %.4352513, %bb.af ], [ %i.rj, %bb.as ], [ %.4352513, %bb.ar ] ; 4 uses
  %.7345 = phi i32 [ %.4342514, %bb.y ], [ %.4342514, %bb.w ], [ %.4342514, %bb.af ], [ -1, %bb.as ], [ %.4342514, %bb.ar ] ; 4 uses
  %.7 = phi i32 [ %.4516, %bb.y ], [ %.4516, %bb.w ], [ %.4516, %bb.af ], [ %i.re, %bb.as ], [ %.4516, %bb.ar ] ; 4 uses
  %i.rk = add nsw i64 %i.nc, 1                    ; 3 uses
  %i.rl = load i32, ptr %i.gu, align 4, !tbaa !260
  %i.rm = icmp slt i32 %i.rl, 2
  %i.rn = trunc nsw i64 %i.rk to i32              ; 2 uses
  %i.ro = call i32 @llvm.abs.i32(i32 %i.rn, i1 true)
  %i.rp = icmp samesign ugt i32 %i.ro, %i.lz
  %or.cond528.1 = select i1 %i.rm, i1 %i.rp, i1 false
  br i1 %or.cond528.1, label %bb.bq, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.rq = icmp eq i64 %i.rk, 0
  br i1 %i.rq, label %bb.bi, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.rr = icmp slt i16 %i.ln, -1
  %.0.p.1 = select i1 %i.rr, i32 %.pre, i32 %.1400
  %i.rs = trunc nsw i64 %i.rk to i32
  %i.rt = mul i32 %i.cf, %i.rs
  %.0.1 = add i32 %.0.p.1, %i.rt                  ; 8 uses
  %i.ru = add i32 %.0.1, -2048
  %or.cond3.1 = icmp ult i32 %i.ru, -4095
  br i1 %or.cond3.1, label %bb.bq, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not426, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %or.cond5, label %bb.ay, label %bb.bo

bb.ay:                                            ; preds = %bb.ax
  %i.rv = add i32 %i.md, %i.rn
  %i.rw = sext i32 %i.rv to i64                   ; 2 uses
  br i1 %i.mb, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rx = getelementptr inbounds i8, ptr %.0385, i64 %i.rw
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !52
  %i.rz = zext i8 %i.ry to i32
  %i.sa = load i8, ptr %i.mf, align 1, !tbaa !52
  %i.sb = zext i8 %i.sa to i32
  %i.sc = sub nsw i32 %i.rz, %i.sb
  br label %bb.bo

bb.ba:                                            ; preds = %bb.ay
  %i.sd = getelementptr inbounds i8, ptr %.0386, i64 %i.rw
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !52
  %i.sf = zext i8 %i.se to i32
  %i.sg = load i8, ptr %i.mg, align 1, !tbaa !52
  %i.sh = zext i8 %i.sg to i32
  %i.si = sub nsw i32 %i.sf, %i.sh
  br label %bb.bo

bb.bb:                                            ; preds = %bb.aw
  br i1 %i.ks, label %bb.bc, label %.critedge.1

bb.bc:                                            ; preds = %bb.bb
  %i.sj = load i8, ptr %i.mh, align 1, !tbaa !52
  %i.sk = zext i8 %i.sj to i64
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.sk
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !53
  %or.cond441.1 = icmp sgt i16 %i.sm, 0
  br i1 %or.cond441.1, label %bb.bq, label %.critedge.1

.critedge.1:                                      ; preds = %bb.bc, %bb.bb
  br i1 %i.mb, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %.critedge.1
  %i.sn = load i8, ptr %i.mk, align 1, !tbaa !52
  %i.so = zext i8 %i.sn to i32                    ; 2 uses
  br i1 %.not430, label %bb.bo, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.sp = load i8, ptr %i.mo, align 1, !tbaa !52
  %i.sq = zext i8 %i.sp to i32
  %i.sr = load i8, ptr %i.mp, align 1, !tbaa !52
  %i.ss = zext i8 %i.sr to i32
  %i.st = add nuw nsw i32 %i.sq, %i.so
  %i.su = sub nsw i32 %i.st, %i.ss
  br label %bb.bo

bb.bf:                                            ; preds = %.critedge.1
  %i.sv = load i8, ptr %i.mt, align 1, !tbaa !52
  %i.sw = zext i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.sw
  %i.sy = load i16, ptr %i.sx, align 2, !tbaa !53
  %i.sz = sext i16 %i.sy to i32
  %i.ta = add nsw i32 %i.sz, 64                   ; 2 uses
  %i.tb = icmp ugt i32 %i.ta, 127
  %spec.store.select.1 = select i1 %i.tb, i32 0, i32 %i.ta ; 2 uses
  %i.tc = load i8, ptr %i.mw, align 1, !tbaa !52
  %i.td = zext i8 %i.tc to i32                    ; 2 uses
  %i.te = add nsw i32 %spec.store.select.1, %i.mx
  %i.tf = sext i32 %i.te to i64                   ; 2 uses
  %i.tg = add nsw i32 %i.na, %spec.store.select.1
  %i.th = sext i32 %i.tg to i64                   ; 2 uses
  br i1 %i.mu, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ti = getelementptr inbounds i8, ptr %.0385, i64 %i.tf
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !52
  %i.tk = zext i8 %i.tj to i32
  %i.tl = add nuw nsw i32 %i.tk, %i.td
  %i.tm = getelementptr inbounds i8, ptr %.0385, i64 %i.th
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !52
  %i.to = zext i8 %i.tn to i32
  %i.tp = sub nsw i32 %i.tl, %i.to
  br label %bb.bo

bb.bh:                                            ; preds = %bb.bf
  %i.tq = getelementptr inbounds i8, ptr %.0386, i64 %i.tf
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !52
  %i.ts = zext i8 %i.tr to i32
  %i.tt = add nuw nsw i32 %i.ts, %i.td
  %i.tu = getelementptr inbounds i8, ptr %.0386, i64 %i.th
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !52
  %i.tw = zext i8 %i.tv to i32
  %i.tx = sub nsw i32 %i.tt, %i.tw
  br label %bb.bo

bb.bi:                                            ; preds = %bb.au
  br i1 %i.mb, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ty = load i8, ptr %i.mk, align 1, !tbaa !52
  %i.tz = zext i8 %i.ty to i32                    ; 2 uses
  %i.ua = sub nsw i32 0, %i.tz
  br i1 %.not430, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ub = load i8, ptr %i.mp, align 1, !tbaa !52
  %i.uc = zext i8 %i.ub to i32
  %i.ud = load i8, ptr %i.mo, align 1, !tbaa !52
  %i.ue = zext i8 %i.ud to i32
  %i.uf = add nuw nsw i32 %i.tz, %i.ue
  %i.ug = sub nsw i32 %i.uc, %i.uf
  br label %bb.bo

bb.bl:                                            ; preds = %bb.bi
  %i.uh = load i8, ptr %i.mt, align 1, !tbaa !52
  %i.ui = zext i8 %i.uh to i64
  %i.uj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ui
  %i.uk = load i16, ptr %i.uj, align 2, !tbaa !53
  %i.ul = sext i16 %i.uk to i32
  %i.um = add nsw i32 %i.ul, 64                   ; 2 uses
  %i.un = icmp ugt i32 %i.um, 127
  %spec.store.select6.1 = select i1 %i.un, i32 0, i32 %i.um ; 2 uses
  %i.uo = add nsw i32 %i.na, %spec.store.select6.1
  %i.up = sext i32 %i.uo to i64                   ; 2 uses
  %i.uq = add nsw i32 %spec.store.select6.1, %i.mx
  %i.ur = sext i32 %i.uq to i64                   ; 2 uses
  %i.us = load i8, ptr %i.mw, align 1, !tbaa !52
  %i.ut = zext i8 %i.us to i32                    ; 2 uses
  br i1 %i.mu, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.uu = getelementptr inbounds i8, ptr %.0385, i64 %i.up
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !52
  %i.uw = zext i8 %i.uv to i32
  %i.ux = getelementptr inbounds i8, ptr %.0385, i64 %i.ur
  %i.uy = load i8, ptr %i.ux, align 1, !tbaa !52
  %i.uz = zext i8 %i.uy to i32
  %i.va = add nuw nsw i32 %i.uz, %i.ut
  %i.vb = sub nsw i32 %i.uw, %i.va
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.vc = getelementptr inbounds i8, ptr %.0386, i64 %i.up
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !52
  %i.ve = zext i8 %i.vd to i32
  %i.vf = getelementptr inbounds i8, ptr %.0386, i64 %i.ur
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !52
  %i.vh = zext i8 %i.vg to i32
  %i.vi = add nuw nsw i32 %i.vh, %i.ut
  %i.vj = sub nsw i32 %i.ve, %i.vi
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.ba, %bb.az, %bb.ax
  %.2.1 = phi i32 [ %i.si, %bb.ba ], [ %i.sc, %bb.az ], [ 0, %bb.ax ], [ %i.ua, %bb.bj ], [ %i.su, %bb.be ], [ %i.so, %bb.bd ], [ %i.tp, %bb.bg ], [ %i.ug, %bb.bk ], [ %i.tx, %bb.bh ], [ %i.vj, %bb.bn ], [ %i.vb, %bb.bm ]
  %.1.1 = phi i32 [ %.0.1, %bb.ba ], [ %.0.1, %bb.az ], [ %.0.1, %bb.ax ], [ 0, %bb.bj ], [ %.0.1, %bb.be ], [ %.0.1, %bb.bd ], [ %.0.1, %bb.bg ], [ 0, %bb.bk ], [ %.0.1, %bb.bh ], [ 0, %bb.bn ], [ 0, %bb.bm ]
  %i.vk = mul nsw i32 %.2.1, %i.gp
  %i.vl = sub nsw i32 %.1.1, %.1326               ; 2 uses
  %i.vm = load ptr, ptr %i.gt, align 8, !tbaa !539
  %i.vn = call i32 %i.vm(ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.nb, i32 noundef %i.vl) #14
  %i.vo = add nsw i32 %i.vn, %i.vk                ; 2 uses
  %i.vp = icmp slt i32 %i.vo, %.7365
  br i1 %i.vp, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.vq = trunc nuw nsw i64 %indvars.iv546 to i32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bc, %bb.av, %bb.at
  %.7365.1 = phi i32 [ %.7365, %bb.av ], [ %.7365, %bb.at ], [ %.7365, %bb.bc ], [ %i.vo, %bb.bp ], [ %.7365, %bb.bo ]
  %.7355.1 = phi i32 [ %.7355, %bb.av ], [ %.7355, %bb.at ], [ %.7355, %bb.bc ], [ %i.vq, %bb.bp ], [ %.7355, %bb.bo ] ; 2 uses
  %.7345.1 = phi i32 [ %.7345, %bb.av ], [ %.7345, %bb.at ], [ %.7345, %bb.bc ], [ 1, %bb.bp ], [ %.7345, %bb.bo ] ; 2 uses
  %.7.1 = phi i32 [ %.7, %bb.av ], [ %.7, %bb.at ], [ %.7, %bb.bc ], [ %i.vl, %bb.bp ], [ %.7, %bb.bo ] ; 2 uses
  %i.vr = icmp ugt i32 %invariant.op, 127
  %spec.store.select7 = select i1 %i.vr, i32 0, i32 %invariant.op
  %i.vs = add nsw i32 %.2373511, 1
  %.1405 = select i1 %.not426, i32 %.0404507, i32 %.2373511
  %.1402 = select i1 %.not426, i32 %.0401508, i32 %spec.store.select7
  %.3374 = select i1 %.not426, i32 %i.vs, i32 0
  %exitcond549.not = icmp eq i64 %indvars.iv.next547, 64
  br i1 %exitcond549.not, label %bb.br, label %bb.s, !llvm.loop !534

bb.br:                                            ; preds = %bb.s, %bb.bq
  %.4352.lcssa = phi i32 [ %.4352513, %bb.s ], [ %.7355.1, %bb.bq ] ; 3 uses
  %.4342.lcssa = phi i32 [ %.4342514, %bb.s ], [ %.7345.1, %bb.bq ] ; 2 uses
  %.4.lcssa = phi i32 [ %.4516, %bb.s ], [ %.7.1, %bb.bq ]
  %.not431 = icmp eq i32 %.4342.lcssa, 0
  br i1 %.not431, label %bb.ca, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.vt = sext i32 %.4352.lcssa to i64
  %i.vu = getelementptr inbounds i8, ptr %.0407, i64 %i.vt
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !52
  %i.vw = zext i8 %i.vv to i64                    ; 2 uses
  %i.vx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.vw ; 2 uses
  %i.vy = load i16, ptr %i.vx, align 2, !tbaa !53
  %i.vz = trunc nsw i32 %.4342.lcssa to i16
  %i.wa = add i16 %i.vy, %i.vz
  store i16 %i.wa, ptr %i.vx, align 2, !tbaa !53
  %i.wb = icmp sgt i32 %.4352.lcssa, %.0394
  br i1 %i.wb, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.bs
  %.not432517 = icmp slt i32 %.0394, %.0398
  br i1 %.not432517, label %.loopexit, label %.lr.ph519

.lr.ph519:                                        ; preds = %.preheader, %bb.bt
  %.1395518 = phi i32 [ %i.wi, %bb.bt ], [ %.0394, %.preheader ] ; 4 uses
  %i.wc = zext nneg i32 %.1395518 to i64
  %i.wd = getelementptr inbounds nuw i8, ptr %.0407, i64 %i.wc
  %i.we = load i8, ptr %i.wd, align 1, !tbaa !52
  %i.wf = zext i8 %i.we to i64
  %i.wg = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.wf
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !53
  %.not433 = icmp eq i16 %i.wh, 0
  br i1 %.not433, label %bb.bt, label %.loopexit

bb.bt:                                            ; preds = %.lr.ph519
  %i.wi = add nsw i32 %.1395518, -1
  %.not432.not = icmp sgt i32 %.1395518, %.0398
  br i1 %.not432.not, label %.lr.ph519, label %.loopexit, !llvm.loop !535

.loopexit:                                        ; preds = %.lr.ph519, %bb.bt, %.preheader, %bb.bs
  %.2396 = phi i32 [ %.4352.lcssa, %bb.bs ], [ %.0394, %.preheader ], [ %.1395518, %.lr.ph519 ], [ %i.gx, %bb.bt ] ; 3 uses
  %.not434522 = icmp sgt i32 %.0398, %.2396
  br i1 %.not434522, label %._crit_edge, label %.lr.ph526.preheader

.lr.ph526.preheader:                              ; preds = %.loopexit
  %i.wj = add i32 %.2396, 1
  %wide.trip.count553 = zext i32 %i.wj to i64     ; 2 uses
  %i.wk = sub nsw i64 %wide.trip.count553, %.pre-phi556 ; 3 uses
  %xtraiter = and i64 %i.wk, 1
  %i.wl = add nsw i64 %wide.trip.count553, -1
  %i.wm = icmp eq i64 %.pre-phi556, %i.wl
  br i1 %i.wm, label %.lr.ph526.epil.preheader, label %.lr.ph526.preheader.new

.lr.ph526.preheader.new:                          ; preds = %.lr.ph526.preheader
  %unroll_iter = and i64 %i.wk, -2
  br label %.lr.ph526

.lr.ph526:                                        ; preds = %bb.by, %.lr.ph526.preheader.new
  %indvars.iv550 = phi i64 [ %.pre-phi556, %.lr.ph526.preheader.new ], [ %indvars.iv.next551.1, %bb.by ] ; 3 uses
  %.5376525 = phi i32 [ 0, %.lr.ph526.preheader.new ], [ %.6377.1, %bb.by ] ; 2 uses
  %.5383524 = phi i32 [ 0, %.lr.ph526.preheader.new ], [ %.6384.1, %bb.by ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph526.preheader.new ], [ %niter.next.1, %bb.by ]
  %i.wn = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv550
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !52
  %i.wp = zext i8 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.wp
  %i.wr = load i16, ptr %i.wq, align 2, !tbaa !53
  %.not435 = icmp eq i16 %i.wr, 0
  br i1 %.not435, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph526
  %i.ws = add nsw i32 %.5383524, 1
  %i.wt = sext i32 %.5383524 to i64
  %i.wu = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.wt
  store i32 %.5376525, ptr %i.wu, align 4, !tbaa !54
  br label %.lr.ph526.1

bb.bv:                                            ; preds = %.lr.ph526
  %i.wv = add nsw i32 %.5376525, 1
  br label %.lr.ph526.1

.lr.ph526.1:                                      ; preds = %bb.bv, %bb.bu
  %.6384 = phi i32 [ %i.ws, %bb.bu ], [ %.5383524, %bb.bv ] ; 3 uses
  %.6377 = phi i32 [ 0, %bb.bu ], [ %i.wv, %bb.bv ] ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv550
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 1
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !52
  %i.wz = zext i8 %i.wy to i64
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.wz
  %i.xb = load i16, ptr %i.xa, align 2, !tbaa !53
  %.not435.1 = icmp eq i16 %i.xb, 0
  br i1 %.not435.1, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph526.1
  %i.xc = add nsw i32 %.6384, 1
  %i.xd = sext i32 %.6384 to i64
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xd
  store i32 %.6377, ptr %i.xe, align 4, !tbaa !54
  br label %bb.by

bb.bx:                                            ; preds = %.lr.ph526.1
  %i.xf = add nsw i32 %.6377, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.6384.1 = phi i32 [ %i.xc, %bb.bw ], [ %.6384, %bb.bx ] ; 2 uses
  %.6377.1 = phi i32 [ 0, %bb.bw ], [ %i.xf, %bb.bx ] ; 2 uses
  %indvars.iv.next551.1 = add nuw nsw i64 %indvars.iv550, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph526, !llvm.loop !536

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.by
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph526.epil.preheader

.lr.ph526.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph526.preheader
  %indvars.iv550.epil.init = phi i64 [ %.pre-phi556, %.lr.ph526.preheader ], [ %indvars.iv.next551.1, %._crit_edge.loopexit.unr-lcssa ]
  %.5376525.epil.init = phi i32 [ 0, %.lr.ph526.preheader ], [ %.6377.1, %._crit_edge.loopexit.unr-lcssa ]
  %.5383524.epil.init = phi i32 [ 0, %.lr.ph526.preheader ], [ %.6384.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod585 = trunc i64 %i.wk to i1
  call void @llvm.assume(i1 %lcmp.mod585)
  %i.xg = getelementptr inbounds nuw i8, ptr %.0407, i64 %indvars.iv550.epil.init
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !52
  %i.xi = zext i8 %i.xh to i64
  %i.xj = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.xi
  %i.xk = load i16, ptr %i.xj, align 2, !tbaa !53
  %.not435.epil = icmp eq i16 %i.xk, 0
  br i1 %.not435.epil, label %._crit_edge, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph526.epil.preheader
  %i.xl = sext i32 %.5383524.epil.init to i64
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.xl
  store i32 %.5376525.epil.init, ptr %i.xm, align 4, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph526.epil.preheader, %bb.bz, %.loopexit
  %i.xn = load ptr, ptr %i.gw, align 16, !tbaa !538
  %i.xo = getelementptr inbounds nuw [128 x i8], ptr @basis, i64 %i.vw
  call void %i.xn(ptr noundef nonnull %i.a, ptr noundef nonnull %i.xo, i32 noundef %.4.lcssa) #14
  br label %bb.m

bb.ca:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0394
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.lrint.i64.f32(float) #10

declare void @ff_clean_intra_table_entries(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.abs.v16i32(<16 x i32>, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.abs.v4i16(<4 x i16>, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #10

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { nounwind willreturn memory(none) }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{null}
!1 = distinct !{!1, !55}
!2 = distinct !{!2, !55}
!3 = distinct !{!3, !55}
!4 = distinct !{!4, !55}
!5 = distinct !{!5, !55}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 1, !"override-stack-alignment", i32 16}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"FDCTDSPContext", !15, i64 0, !15, i64 8}
!17 = !{!"p1 _ZTS7AVClass", !15, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!"ScanTable", !18, i64 0, !11, i64 8, !11, i64 72}
!20 = !{!"p1 _ZTS14AVCodecContext", !15, i64 0}
!21 = !{!"long", !11, i64 0}
!22 = !{!"p1 _ZTS15AVRefStructPool", !15, i64 0}
!23 = !{!"BufferPoolContext", !22, i64 0, !22, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !12, i64 40, !12, i64 44, !12, i64 48}
!24 = !{!"p1 _ZTS10MPVPicture", !15, i64 0}
!25 = !{!"p1 int", !15, i64 0}
!26 = !{!"MPVWorkPicture", !11, i64 0, !11, i64 24, !24, i64 48, !18, i64 56, !11, i64 64, !25, i64 80, !18, i64 88, !11, i64 96, !12, i64 112}
!27 = !{!"p1 short", !15, i64 0}
!28 = !{!"ScratchpadContext", !18, i64 0, !18, i64 8, !11, i64 16, !12, i64 24}
!29 = !{!"BlockDSPContext", !15, i64 0, !15, i64 8, !11, i64 16}
!30 = !{!"H264ChromaContext", !11, i64 0, !11, i64 32}
!31 = !{!"HpelDSPContext", !11, i64 0, !11, i64 128, !11, i64 256, !11, i64 352}
!32 = !{!"IDCTDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !11, i64 48, !12, i64 112, !12, i64 116}
!33 = !{!"QpelDSPContext", !11, i64 0, !11, i64 256, !11, i64 512}
!34 = !{!"VideoDSPContext", !15, i64 0, !15, i64 8}
!35 = !{!"H263DSPContext", !15, i64 0, !15, i64 8}
!36 = !{!"short", !11, i64 0}
!37 = !{!"p1 _ZTS7AVFrame", !15, i64 0}
!38 = !{!"p1 _ZTS11ThreadFrame", !15, i64 0}
!39 = !{!"p1 _ZTS14ThreadProgress", !15, i64 0}
!40 = !{!"ERPicture", !37, i64 0, !38, i64 8, !39, i64 16, !11, i64 24, !11, i64 40, !25, i64 56, !12, i64 64}
!41 = !{!"ERContext", !20, i64 0, !15, i64 8, !25, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !21, i64 40, !21, i64 48, !11, i64 56, !12, i64 60, !18, i64 64, !18, i64 72, !11, i64 80, !18, i64 104, !18, i64 112, !11, i64 120, !40, i64 184, !40, i64 256, !40, i64 328, !11, i64 400, !11, i64 416, !36, i64 432, !36, i64 434, !12, i64 436, !12, i64 440, !15, i64 448, !15, i64 456}
!42 = !{!"MpegEncContext", !17, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !11, i64 20, !12, i64 68, !19, i64 72, !19, i64 208, !20, i64 344, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !12, i64 372, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !12, i64 392, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408, !12, i64 412, !21, i64 416, !21, i64 424, !22, i64 432, !23, i64 440, !12, i64 496, !12, i64 500, !11, i64 504, !12, i64 760, !26, i64 768, !26, i64 888, !26, i64 1008, !27, i64 1128, !18, i64 1136, !18, i64 1144, !18, i64 1152, !18, i64 1160, !18, i64 1168, !27, i64 1176, !27, i64 1184, !27, i64 1192, !12, i64 1200, !18, i64 1208, !18, i64 1216, !18, i64 1224, !18, i64 1232, !28, i64 1240, !12, i64 1272, !12, i64 1276, !12, i64 1280, !12, i64 1284, !29, i64 1288, !30, i64 1320, !31, i64 1384, !32, i64 1768, !33, i64 1888, !34, i64 2656, !35, i64 2672, !27, i64 2688, !11, i64 2696, !12, i64 2728, !12, i64 2732, !11, i64 2736, !11, i64 2800, !11, i64 2816, !11, i64 2848, !12, i64 3104, !12, i64 3108, !12, i64 3112, !12, i64 3116, !11, i64 3120, !11, i64 3144, !11, i64 3168, !25, i64 3192, !11, i64 3200, !11, i64 3328, !11, i64 3456, !11, i64 3584, !12, i64 3712, !12, i64 3716, !12, i64 3720, !12, i64 3724, !12, i64 3728, !12, i64 3732, !12, i64 3736, !12, i64 3740, !21, i64 3744, !21, i64 3752, !36, i64 3760, !36, i64 3762, !36, i64 3764, !36, i64 3766, !12, i64 3768, !12, i64 3772, !12, i64 3776, !12, i64 3780, !12, i64 3784, !12, i64 3788, !12, i64 3792, !12, i64 3796, !11, i64 3800, !12, i64 3816, !12, i64 3820, !12, i64 3824, !12, i64 3828, !12, i64 3832, !12, i64 3836, !12, i64 3840, !12, i64 3844, !12, i64 3848, !12, i64 3852, !12, i64 3856, !12, i64 3860, !12, i64 3864, !12, i64 3868, !11, i64 3872, !12, i64 3880, !12, i64 3884, !15, i64 3888, !15, i64 3896, !12, i64 3904, !12, i64 3908, !41, i64 3912}
!43 = !{!"PutBitContext", !12, i64 0, !12, i64 4, !18, i64 8, !18, i64 16, !18, i64 24}
!44 = !{!"p1 _ZTS17MPVMainEncContext", !15, i64 0}
!45 = !{!"MpegvideoEncDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !11, i64 40, !15, i64 72}
!46 = !{!"PixblockDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!47 = !{!"any p2 pointer", !15, i64 0}
!48 = !{!"MotionEstContext", !20, i64 0, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 48, !18, i64 80, !18, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !11, i64 168, !11, i64 296, !12, i64 424, !12, i64 428, !21, i64 432, !21, i64 440, !12, i64 448, !11, i64 456, !11, i64 504, !11, i64 552, !11, i64 600, !11, i64 648, !15, i64 712, !47, i64 720, !47, i64 728, !47, i64 736, !47, i64 744, !18, i64 752, !18, i64 760, !15, i64 768, !11, i64 776, !11, i64 1032}
!49 = !{!"p1 _ZTS12MJpegContext", !15, i64 0}
!50 = !{!"MPVEncContext", !42, i64 0, !43, i64 4384, !12, i64 4416, !12, i64 4420, !25, i64 4424, !12, i64 4432, !12, i64 4436, !12, i64 4440, !12, i64 4444, !12, i64 4448, !12, i64 4452, !12, i64 4456, !12, i64 4460, !37, i64 4464, !44, i64 4472, !16, i64 4480, !45, i64 4496, !46, i64 4576, !48, i64 4608, !12, i64 5896, !12, i64 5900, !27, i64 5904, !27, i64 5912, !27, i64 5920, !27, i64 5928, !27, i64 5936, !27, i64 5944, !11, i64 5952, !11, i64 6016, !11, i64 6032, !27, i64 6064, !27, i64 6072, !27, i64 6080, !18, i64 6088, !11, i64 6096, !12, i64 6120, !12, i64 6124, !12, i64 6128, !12, i64 6132, !12, i64 6136, !18, i64 6144, !18, i64 6152, !18, i64 6160, !18, i64 6168, !18, i64 6176, !18, i64 6184, !18, i64 6192, !11, i64 6200, !27, i64 6248, !25, i64 6256, !25, i64 6264, !25, i64 6272, !27, i64 6280, !27, i64 6288, !27, i64 6296, !25, i64 6304, !11, i64 6312, !27, i64 6320, !12, i64 6328, !12, i64 6332, !12, i64 6336, !12, i64 6340, !12, i64 6344, !12, i64 6348, !12, i64 6352, !12, i64 6356, !11, i64 6360, !12, i64 6372, !12, i64 6376, !12, i64 6380, !12, i64 6384, !12, i64 6388, !18, i64 6392, !12, i64 6400, !12, i64 6404, !12, i64 6408, !12, i64 6412, !12, i64 6416, !49, i64 6424, !12, i64 6432, !12, i64 6436, !12, i64 6440, !12, i64 6444, !12, i64 6448, !43, i64 6456, !43, i64 6488, !12, i64 6520, !12, i64 6524, !12, i64 6528, !12, i64 6532, !12, i64 6536, !12, i64 6540, !18, i64 6544, !15, i64 6552, !15, i64 6560, !11, i64 6568, !11, i64 6584, !11, i64 6600, !11, i64 6616, !15, i64 6632, !12, i64 6640, !11, i64 6644, !11, i64 6708, !11, i64 6784}
!51 = !{!50, !12, i64 3836}
!52 = !{!11, !11, i64 0}
!53 = !{!36, !36, i64 0}
!54 = !{!12, !12, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!50, !20, i64 344}
!57 = !{!43, !12, i64 0}
!58 = !{!43, !12, i64 4}
!59 = !{!43, !18, i64 24}
!60 = !{!43, !18, i64 16}
!61 = !{!"p1 _ZTS7AVCodec", !15, i64 0}
!62 = !{!"p1 _ZTS15AVCodecInternal", !15, i64 0}
!63 = !{!"AVRational", !12, i64 0, !12, i64 4}
!64 = !{!"float", !11, i64 0}
!65 = !{!"AVChannelLayout", !12, i64 0, !12, i64 4, !11, i64 8, !15, i64 16}
!66 = !{!"p1 _ZTS10RcOverride", !15, i64 0}
!67 = !{!"p1 _ZTS9AVHWAccel", !15, i64 0}
!68 = !{!"p1 _ZTS11AVBufferRef", !15, i64 0}
!69 = !{!"p1 _ZTS17AVCodecDescriptor", !15, i64 0}
!70 = !{!"p1 _ZTS16AVPacketSideData", !15, i64 0}
!71 = !{!"p2 _ZTS15AVFrameSideData", !47, i64 0}
!72 = !{!"AVCodecContext", !17, i64 0, !12, i64 8, !12, i64 12, !61, i64 16, !12, i64 24, !12, i64 28, !15, i64 32, !62, i64 40, !15, i64 48, !21, i64 56, !12, i64 64, !12, i64 68, !18, i64 72, !12, i64 80, !63, i64 84, !63, i64 92, !63, i64 100, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !63, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !15, i64 184, !15, i64 192, !12, i64 200, !64, i64 204, !64, i64 208, !64, i64 212, !64, i64 216, !64, i64 220, !64, i64 224, !64, i64 228, !64, i64 232, !64, i64 236, !12, i64 240, !12, i64 244, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !27, i64 288, !27, i64 296, !27, i64 304, !12, i64 312, !12, i64 316, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !12, i64 348, !65, i64 352, !12, i64 376, !12, i64 380, !12, i64 384, !12, i64 388, !12, i64 392, !12, i64 396, !12, i64 400, !12, i64 404, !15, i64 408, !12, i64 416, !12, i64 420, !12, i64 424, !64, i64 428, !64, i64 432, !12, i64 436, !12, i64 440, !12, i64 444, !12, i64 448, !12, i64 452, !66, i64 456, !21, i64 464, !21, i64 472, !64, i64 480, !64, i64 484, !12, i64 488, !12, i64 492, !18, i64 496, !18, i64 504, !12, i64 512, !12, i64 516, !12, i64 520, !12, i64 524, !12, i64 528, !67, i64 536, !15, i64 544, !68, i64 552, !68, i64 560, !12, i64 568, !12, i64 572, !11, i64 576, !12, i64 640, !12, i64 644, !12, i64 648, !12, i64 652, !12, i64 656, !12, i64 660, !12, i64 664, !15, i64 672, !15, i64 680, !12, i64 688, !12, i64 692, !12, i64 696, !12, i64 700, !12, i64 704, !12, i64 708, !12, i64 712, !12, i64 716, !12, i64 720, !69, i64 728, !18, i64 736, !12, i64 744, !12, i64 748, !18, i64 752, !18, i64 760, !18, i64 768, !70, i64 776, !12, i64 784, !12, i64 788, !21, i64 792, !12, i64 800, !12, i64 804, !21, i64 808, !15, i64 816, !21, i64 824, !25, i64 832, !12, i64 840, !71, i64 848, !12, i64 856, !12, i64 860}
!73 = !{!72, !12, i64 492}
!74 = !{!50, !15, i64 6560}
!75 = !{!50, !15, i64 4480}
!76 = !{!50, !25, i64 6304}
!77 = !{!50, !12, i64 3116}
!78 = !{!50, !15, i64 4496}
!79 = !{!50, !27, i64 6320}
!80 = !{!50, !18, i64 208}
!81 = !{!50, !12, i64 68}
!82 = !{!25, !25, i64 0}
!83 = !{!50, !18, i64 72}
!84 = !{!50, !25, i64 6272}
!85 = !{!50, !12, i64 6132}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!50, !12, i64 4420}
!88 = !{!50, !12, i64 6448}
!89 = !{!50, !12, i64 360}
!90 = !{!50, !18, i64 6160}
!91 = !{!18, !18, i64 0}
!92 = !{!72, !15, i64 32}
!93 = !{!72, !12, i64 136}
!94 = !{!50, !12, i64 3856}
!95 = !{!"p1 _ZTS16RateControlEntry", !15, i64 0}
!96 = !{!"double", !11, i64 0}
!97 = !{!"p1 _ZTS6AVExpr", !15, i64 0}
end_hunk_0
begin_hunk_1_@llvm.cos.v4f64
!332 = !{!331, !15, i64 0}
!333 = !{!50, !15, i64 6632}
!334 = distinct !{!334, !55}
!335 = !{!50, !27, i64 6296}
!336 = !{!72, !27, i64 296}
!337 = !{!50, !12, i64 6124}
!338 = distinct !{!338, !55}
!339 = distinct !{!339, !55}
!340 = !{!100, !27, i64 10984}
!341 = distinct !{!341, !55}
!342 = !{!100, !18, i64 10976}
!343 = !{!50, !12, i64 400}
!344 = distinct !{!344, !55}
!345 = distinct !{!345, !55}
!346 = distinct !{!346, !86}
!347 = distinct !{!347, !55}
!348 = distinct !{null}
!349 = distinct !{!349, !86}
!350 = distinct !{!350, !86}
!351 = distinct !{!351, !55}
!352 = distinct !{!352, !55, !195, !196}
!353 = distinct !{!353, !55, !195}
!354 = distinct !{null, null, null}
!355 = distinct !{!355, !55}
!356 = distinct !{!356, !55}
!357 = distinct !{!357, !55}
!358 = distinct !{!358, !55}
!359 = distinct !{null, null, null}
!360 = distinct !{!360, !55}
!361 = distinct !{!361, !55}
!362 = distinct !{!362, !55}
!363 = distinct !{!363, !55}
!364 = distinct !{!364, !55}
!365 = distinct !{!365, !86}
!366 = distinct !{!366, !86}
!367 = distinct !{!367, !55}
!368 = distinct !{!368, !55}
!369 = distinct !{!369, !55, !225}
!370 = distinct !{!370, !55, !195, !196}
!371 = distinct !{!371, !55, !195, !196}
!372 = distinct !{null}
!373 = distinct !{!373, !55, !196, !195}
!374 = distinct !{!374, !55}
!375 = distinct !{!375, !55, !195, !196}
!376 = distinct !{!376, !55, !195, !196}
!377 = distinct !{!377, !55, !196, !195}
!378 = distinct !{!378, !55}
!379 = distinct !{!379, !55}
!380 = distinct !{!380, i1 false, !"LVerDomain"}
!381 = distinct !{!381, !380}
!382 = distinct !{!382, !380}
!383 = distinct !{!383, !55, !195}
!384 = distinct !{!384, !55}
!385 = distinct !{null}
!386 = distinct !{!386, !55}
!387 = distinct !{!387, !55}
!388 = distinct !{!388, !55}
!389 = !{!100, !12, i64 9868}
!390 = !{!153, !21, i64 136}
!391 = !{!100, !12, i64 9872}
!392 = !{!100, !21, i64 10160}
!393 = !{!50, !15, i64 4568}
!394 = !{!190, !12, i64 136}
!395 = !{!50, !24, i64 936}
!396 = !{!100, !12, i64 10376}
!397 = !{!100, !12, i64 9876}
!398 = !{!190, !12, i64 140}
!399 = !{!100, !12, i64 10464}
!400 = !{!100, !95, i64 10472}
!401 = !{!"RateControlEntry", !12, i64 0, !64, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !21, i64 40, !12, i64 48, !64, i64 52, !21, i64 56, !21, i64 64}
!402 = !{!401, !12, i64 48}
!403 = !{!190, !12, i64 124}
!404 = !{!100, !12, i64 10324}
!405 = !{!190, !12, i64 128}
!406 = !{!50, !21, i64 3744}
!407 = !{!50, !36, i64 3760}
!408 = !{!50, !21, i64 3752}
!409 = !{!50, !36, i64 3762}
!410 = !{!100, !12, i64 10460}
!411 = !{!211, !18, i64 24}
!412 = !{!50, !18, i64 4688}
!413 = !{!50, !18, i64 4696}
!414 = !{!"branch_weights", i32 4, i32 12}
!415 = !{!100, !12, i64 10944}
!416 = !{!100, !12, i64 10948}
!417 = !{!72, !15, i64 672}
!418 = !{!50, !21, i64 5040}
!419 = !{!50, !12, i64 5056}
!420 = !{!100, !21, i64 10960}
!421 = !{!100, !21, i64 10952}
!422 = !{!50, !12, i64 5896}
!423 = !{!50, !12, i64 6640}
!424 = !{!50, !12, i64 5900}
!425 = !{!72, !27, i64 304}
!426 = !{!153, !12, i64 276}
!427 = !{!100, !12, i64 10420}
!428 = !{!50, !12, i64 3824}
!429 = !{!50, !18, i64 4408}
!430 = !{!381}
!431 = !{!382}
!432 = !{!50, !12, i64 1120}
!433 = !{!50, !12, i64 404}
!434 = !{!50, !12, i64 408}
!435 = !{!100, !12, i64 10456}
!436 = !{!99, !96, i64 16}
!437 = !{!72, !64, i64 480}
!438 = !{!50, !12, i64 3736}
!439 = !{!50, !12, i64 3740}
!440 = !{!100, !12, i64 10416}
!441 = !{!100, !12, i64 10424}
!442 = !{!100, !12, i64 10356}
!443 = !{!100, !96, i64 10480}
!444 = !{!"p1 _ZTS15AVCPBProperties", !15, i64 0}
!445 = !{!444, !444, i64 0}
!446 = !{!156, !21, i64 32}
!447 = !{!100, !21, i64 10408}
!448 = !{!211, !21, i64 8}
!449 = !{!153, !21, i64 408}
!450 = !{!211, !21, i64 64}
!451 = !{!100, !21, i64 10168}
!452 = !{!211, !21, i64 16}
!453 = !{!211, !12, i64 40}
!454 = distinct !{!454, !86}
!455 = distinct !{!455, !55, !225}
!456 = distinct !{!456, !55, !225}
!457 = distinct !{!457, !55}
!458 = distinct !{!458, !55}
!459 = distinct !{!459, !55}
!460 = !{!207, !207, i64 0}
!461 = !{!20, !20, i64 0}
!462 = distinct !{!462, !55}
!463 = !{!50, !25, i64 3192}
!464 = distinct !{!464, !55}
!465 = distinct !{!465, !55, !241}
!466 = !{!50, !12, i64 4736}
!467 = !{!72, !12, i64 272}
!468 = distinct !{!468, !55}
!469 = distinct !{!469, !55}
!470 = !{!72, !12, i64 260}
!471 = distinct !{!471, !55, !241}
!472 = distinct !{!472, !55}
!473 = !{!50, !15, i64 4528}
!474 = distinct !{!474, !55}
!475 = distinct !{!475, !55}
!476 = distinct !{null}
!477 = distinct !{!477, !55}
!478 = distinct !{!478, !55}
!479 = !{!50, !12, i64 3820}
!480 = !{!50, !12, i64 6436}
!481 = !{!50, !12, i64 3712}
!482 = !{!50, !12, i64 3716}
!483 = !{!50, !12, i64 6372}
!484 = !{!50, !12, i64 6540}
!485 = !{!50, !18, i64 4400}
!486 = !{!245, !12, i64 188}
!487 = !{!50, !18, i64 1216}
!488 = !{!245, !12, i64 100}
!489 = !{!245, !12, i64 96}
!490 = !{!42, !18, i64 1216}
!491 = distinct !{null}
!492 = distinct !{null, null}
!493 = !{!245, !12, i64 152}
!494 = distinct !{!494, !55}
!495 = distinct !{null}
!496 = distinct !{null}
!497 = !{!72, !12, i64 524}
!498 = !{!50, !15, i64 3896}
!499 = !{!50, !15, i64 1808}
!500 = !{!50, !12, i64 1276}
!501 = !{!50, !15, i64 3888}
!502 = !{!50, !15, i64 1800}
!503 = distinct !{null}
!504 = distinct !{!504, !55}
!505 = distinct !{!505, !55}
!506 = distinct !{!506, !55}
!507 = distinct !{!507, !55, !225}
!508 = distinct !{!508, !86}
!509 = distinct !{!509, !55}
!510 = distinct !{!510, !55}
!511 = distinct !{!511, !86}
!512 = distinct !{!512, !86}
!513 = distinct !{!513, !55}
!514 = distinct !{!514, !86}
!515 = distinct !{!515, !86}
!516 = distinct !{!516, !55}
!517 = distinct !{!517, !86}
!518 = distinct !{!518, !86}
!519 = !{!50, !18, i64 1240}
!520 = !{!50, !15, i64 2656}
!521 = !{!50, !15, i64 4576}
!522 = !{!50, !15, i64 4592}
!523 = !{!50, !12, i64 6128}
!524 = !{!50, !12, i64 4448}
!525 = !{!50, !12, i64 4452}
!526 = !{!50, !15, i64 6552}
!527 = distinct !{!527, !55}
!528 = distinct !{!528, !55}
!529 = distinct !{!529, !55}
!530 = distinct !{!530, !55}
!531 = distinct !{!531, !55}
!532 = distinct !{!532, !55, !195, !196}
!533 = distinct !{!533, !55}
!534 = distinct !{!534, !55}
!535 = distinct !{!535, !55}
!536 = distinct !{!536, !55}
!537 = !{!50, !12, i64 8}
!538 = !{!50, !15, i64 4512}
!539 = !{!50, !15, i64 4504}
end_hunk_1
