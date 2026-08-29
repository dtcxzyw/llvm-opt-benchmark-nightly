Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_truetype?download=true
inline.NumInlined: 388
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbtt__ray_intersect_bezier:bb.a
bb.e:                                             ; preds = %bb.a
  %i.av = fmul float %i.ad, -2.000000e+00
  %i.aw = fdiv float %i.ae, %i.av                 ; 3 uses
  %i.ax = fcmp ult float %i.aw, 0.000000e+00
  %i.ay = fcmp ugt float %i.aw, 1.000000e+00
  %or.cond119 = or i1 %i.ax, %i.ay
  br i1 %or.cond119, label %.thread, label %.thread124

bb.f:                                             ; preds = %bb.c
  br i1 %or.cond.not.not.not, label %.thread124, label %.thread

.thread124:                                       ; preds = %bb.d, %bb.e, %bb.f
  %.3130 = phi i1 [ false, %bb.f ], [ %or.cond.not.not.not, %bb.d ], [ false, %bb.e ]
  %.1106129 = phi float [ %i.ao, %bb.f ], [ %i.ao, %bb.d ], [ 0.000000e+00, %bb.e ] ; 5 uses
  %.3110128 = phi float [ %i.am, %bb.f ], [ %.0107, %bb.d ], [ %i.aw, %bb.e ] ; 5 uses
  %i.az = load float, ptr %1, align 4, !tbaa !74  ; 3 uses
  %i.ba = load float, ptr %i.b, align 4, !tbaa !74 ; 3 uses
  %i.bb = fmul float %i.ba, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.az, float %i.az, float %i.bb)
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 2 uses
  %i.be = fmul float %i.az, %i.bd                 ; 3 uses
  %i.bf = fmul float %i.ba, %i.bd                 ; 3 uses
  %i.bg = load <2 x float>, ptr %2, align 4, !tbaa !74 ; 2 uses
  %i.bh = load <2 x float>, ptr %3, align 4, !tbaa !74 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bj = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.bi, %i.bk
  %i.bm = shufflevector <2 x float> %i.bh, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bn = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bo, <2 x float> %i.bl) ; 2 uses
  %i.bq = load float, ptr %4, align 4, !tbaa !74
  %i.br = load float, ptr %i.e, align 4, !tbaa !74
  %i.bs = fmul float %i.bf, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.be, float %i.bs)
  %i.bu = load float, ptr %0, align 4, !tbaa !74
  %i.bv = load float, ptr %i.f, align 4, !tbaa !74
  %i.bw = fmul float %i.bf, %i.bv
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.be, float %i.bw)
  %i.by = extractelement <2 x float> %i.bp, i64 0
  %i.bz = extractelement <2 x float> %i.bp, i64 1 ; 3 uses
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = fsub float %i.bt, %i.bz
  %i.cc = fsub float %i.bz, %i.bx                 ; 2 uses
  %i.cd = tail call float @llvm.fmuladd.f32(float %.3110128, float -2.000000e+00, float 2.000000e+00)
  %i.ce = fmul float %.3110128, %i.cd
  %i.cf = fmul float %.3110128, %.3110128
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ca, float %i.cc)
  %i.ch = insertelement <2 x float> poison, float %i.ac, i64 1 ; 2 uses
  %i.ci = insertelement <2 x float> %i.ch, float %i.cf, i64 0
  %i.cj = insertelement <2 x float> poison, float %i.cb, i64 0 ; 2 uses
  %i.ck = insertelement <2 x float> %i.cj, float %.3110128, i64 1
  %i.cl = insertelement <2 x float> poison, float %i.ad, i64 1 ; 2 uses
  %i.cm = insertelement <2 x float> %i.cl, float %i.cg, i64 0
  %i.cn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.ck, <2 x float> %i.cm)
  store <2 x float> %i.cn, ptr %5, align 4, !tbaa !74
  br i1 %.3130, label %bb.g, label %.thread

bb.g:                                             ; preds = %.thread124
  %i.co = tail call float @llvm.fmuladd.f32(float %.1106129, float -2.000000e+00, float 2.000000e+00)
  %i.cp = fmul float %.1106129, %i.co
  %i.cq = fmul float %.1106129, %.1106129
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ca, float %i.cc)
  %i.ct = insertelement <2 x float> %i.ch, float %i.cq, i64 0
  %i.cu = insertelement <2 x float> %i.cj, float %.1106129, i64 1
  %i.cv = insertelement <2 x float> %i.cl, float %i.cs, i64 0
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cu, <2 x float> %i.cv)
  store <2 x float> %i.cw, ptr %i.cr, align 4, !tbaa !74
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.b, %bb.g, %.thread124, %bb.f
  %.1112 = phi i32 [ 0, %bb.f ], [ 2, %bb.g ], [ 1, %.thread124 ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.1112
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define range(i32 0, 2) i32 @equal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !74
  %i.b = load float, ptr %1, align 4, !tbaa !74
  %i.c = fcmp oeq float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !74
  %i.h = fcmp oeq float %i.e, %i.g
  %i.i = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i32 [ 0, %bb.a ], [ %i.i, %bb.b ]
  ret i32 %i.j
}

; Function Attrs: nounwind uwtable
define i32 @stbtt__compute_crossings_x(float noundef %0, float noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #25 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %i.b = alloca [2 x float], align 8              ; 4 uses
  %i.c = alloca [2 x float], align 8              ; 4 uses
  %i.d = alloca [2 x float], align 8              ; 4 uses
  %i.e = alloca [2 x float], align 8              ; 4 uses
  %i.f = alloca [2 x [2 x float]], align 16       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i64 1065353216, ptr %i.b, align 8
  %i.g = fpext float %1 to double
  %i.h = tail call double @fmod(double noundef %i.g, double noundef 1.000000e+00) #29 ; 2 uses
  %i.i = fcmp olt double %i.h, f0x3F847AE130000000
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = fadd float %1, f0x3C23D70A
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.k = fcmp ogt double %i.h, f0x3FEFAE1490000000
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = fadd float %1, f0xBC23D70A
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0150 = phi float [ %i.j, %bb.b ], [ %i.l, %bb.d ], [ %1, %bb.c ] ; 9 uses
  store float %0, ptr %i.a, align 4, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %.0150, ptr %i.m, align 4, !tbaa !74
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.0172 = phi i32 [ 0, %.lr.ph ], [ %.9, %.thread ] ; 11 uses
  %i.o = getelementptr inbounds nuw [14 x i8], ptr %3, i64 %indvars.iv ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i8, ptr %i.p, align 2, !tbaa !48
  switch i8 %i.q, label %.thread [
    i8 2, label %bb.g
    i8 3, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.o, i64 -14
  %i.s = load <2 x i16>, ptr %i.r, align 2, !tbaa !59 ; 3 uses
  %i.t = extractelement <2 x i16> %i.s, i64 1     ; 4 uses
  %i.u = extractelement <2 x i16> %i.s, i64 0
  %i.v = sext i16 %i.u to i32                     ; 2 uses
  %i.w = sext i16 %i.t to i32
  %i.x = load i16, ptr %i.o, align 2, !tbaa !51
  %i.y = sext i16 %i.x to i32                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !52  ; 4 uses
  %i.ab = sext i16 %i.aa to i32
  %i.ac = icmp slt i16 %i.t, %i.aa
  %i.ad = tail call i16 @llvm.smin.i16(i16 %i.t, i16 %i.aa)
  %i.ae = sitofp i16 %i.ad to float
  %i.af = fcmp ogt float %.0150, %i.ae
  br i1 %i.af, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ag = tail call i16 @llvm.smax.i16(i16 %i.t, i16 %i.aa)
  %i.ah = sitofp i16 %i.ag to float
  %i.ai = fcmp olt float %.0150, %i.ah
  br i1 %i.ai, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.v, i32 %i.y)
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fcmp ogt float %0, %i.ak
  br i1 %i.al, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.am = sitofp <2 x i16> %i.s to <2 x float>    ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 1
  %i.ao = fsub float %.0150, %i.an
  %i.ap = sub nsw i32 %i.ab, %i.w
  %i.aq = sitofp i32 %i.ap to float
  %i.ar = fdiv float %i.ao, %i.aq
  %i.as = sub nsw i32 %i.y, %i.v
  %i.at = sitofp i32 %i.as to float
  %i.au = extractelement <2 x float> %i.am, i64 0
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.at, float %i.au)
  %i.aw = fcmp olt float %i.av, %0
  %i.ax = select i1 %i.ac, i32 1, i32 -1
  %i.ay = select i1 %i.aw, i32 %i.ax, i32 0
  %.1 = add nsw i32 %i.ay, %.0172
  br label %.thread

bb.k:                                             ; preds = %bb.f
  %i.az = getelementptr i8, ptr %i.o, i64 -14
  %i.ba = load <2 x i16>, ptr %i.az, align 2, !tbaa !59 ; 3 uses
  %i.bb = extractelement <2 x i16> %i.ba, i64 1   ; 6 uses
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.be = load <2 x i16>, ptr %i.bd, align 2, !tbaa !59 ; 3 uses
  %i.bf = load <2 x i16>, ptr %i.o, align 2, !tbaa !59 ; 3 uses
  %i.bg = extractelement <2 x i16> %i.bf, i64 1   ; 6 uses
  %i.bh = extractelement <2 x i16> %i.be, i64 0
  %i.bi = extractelement <2 x i16> %i.bf, i64 0   ; 2 uses
  %i.bj = tail call i16 @llvm.smin.i16(i16 %i.bh, i16 %i.bi)
  %i.bk = extractelement <2 x i16> %i.ba, i64 0   ; 2 uses
  %. = tail call i16 @llvm.smin.i16(i16 %i.bj, i16 %i.bk)
  %i.bl = extractelement <2 x i16> %i.be, i64 1   ; 2 uses
  %i.bm = tail call i16 @llvm.smin.i16(i16 %i.bl, i16 %i.bg)
  %i.bn = tail call i16 @llvm.smin.i16(i16 %i.bb, i16 %i.bm)
  %i.bo = tail call i16 @llvm.smax.i16(i16 %i.bl, i16 %i.bg)
  %i.bp = tail call i16 @llvm.smax.i16(i16 %i.bb, i16 %i.bo)
  %i.bq = sitofp i16 %i.bn to float
  %i.br = fcmp ogt float %.0150, %i.bq
  %i.bs = sitofp i16 %i.bp to float
  %i.bt = fcmp olt float %.0150, %i.bs
  %or.cond162 = and i1 %i.br, %i.bt
  %i.bu = sitofp i16 %. to float
  %i.bv = fcmp ogt float %0, %i.bu
  %or.cond164 = select i1 %or.cond162, i1 %i.bv, i1 false
  br i1 %or.cond164, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.bw = sitofp <2 x i16> %i.ba to <2 x float>   ; 3 uses
  store <2 x float> %i.bw, ptr %i.c, align 8, !tbaa !74
  %i.bx = sitofp <2 x i16> %i.be to <2 x float>   ; 3 uses
  store <2 x float> %i.bx, ptr %i.d, align 8, !tbaa !74
  %i.by = sitofp <2 x i16> %i.bf to <2 x float>   ; 3 uses
  store <2 x float> %i.by, ptr %i.e, align 8, !tbaa !74
  %4 = extractelement <2 x float> %i.bw, i64 0    ; 2 uses
  %5 = extractelement <2 x float> %i.bx, i64 0    ; 2 uses
  %6 = fcmp une float %4, %5
  %7 = extractelement <2 x float> %i.bw, i64 1    ; 2 uses
  %8 = extractelement <2 x float> %i.bx, i64 1    ; 2 uses
  %9 = fcmp une float %7, %8
  %or.cond169 = or i1 %6, %9
  br i1 %or.cond169, label %equal.exit.thread, label %bb.m

equal.exit.thread:                                ; preds = %bb.l
  %10 = extractelement <2 x float> %i.by, i64 0
  %11 = fcmp une float %5, %10
  %12 = extractelement <2 x float> %i.by, i64 1
  %13 = fcmp une float %8, %12
  %or.cond170 = or i1 %11, %13
  br i1 %or.cond170, label %equal.exit165.thread, label %bb.m

bb.m:                                             ; preds = %equal.exit.thread, %bb.l
  %i.bz = sext i16 %i.bk to i32                   ; 2 uses
  %i.ca = sext i16 %i.bi to i32                   ; 2 uses
  %i.cb = sext i16 %i.bg to i32
  %i.cc = icmp slt i16 %i.bb, %i.bg
  %i.cd = tail call i16 @llvm.smin.i16(i16 %i.bb, i16 %i.bg)
  %i.ce = sitofp i16 %i.cd to float
  %i.cf = fcmp ogt float %.0150, %i.ce
  br i1 %i.cf, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cg = tail call i16 @llvm.smax.i16(i16 %i.bb, i16 %i.bg)
  %i.ch = sitofp i16 %i.cg to float
  %i.ci = fcmp olt float %.0150, %i.ch
  br i1 %i.ci, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cj = tail call i32 @llvm.smin.i32(i32 %i.bz, i32 %i.ca)
  %i.ck = sitofp i32 %i.cj to float
  %i.cl = fcmp ogt float %0, %i.ck
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cm = fsub float %.0150, %7
  %i.cn = sub nsw i32 %i.cb, %i.bc
  %i.co = sitofp i32 %i.cn to float
  %i.cp = fdiv float %i.cm, %i.co
  %i.cq = sub nsw i32 %i.ca, %i.bz
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cr, float %4)
  %i.ct = fcmp olt float %i.cs, %0
  %i.cu = select i1 %i.cc, i32 1, i32 -1
  %i.cv = select i1 %i.ct, i32 %i.cu, i32 0
  %.4 = add nsw i32 %i.cv, %.0172
  br label %bb.q

equal.exit165.thread:                             ; preds = %equal.exit.thread
  %i.cw = call i32 @stbtt__ray_intersect_bezier(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) ; 2 uses
  %i.cx = icmp ne i32 %i.cw, 0
  %i.cy = icmp samesign ugt i32 %i.cw, 1
  %i.cz = load <4 x float>, ptr %i.f, align 16
  %i.da = fcmp olt <4 x float> %i.cz, zeroinitializer ; 4 uses
  %i.db = extractelement <4 x i1> %i.da, i64 0
  %or.cond = select i1 %i.cx, i1 %i.db, i1 false
  %i.dc = extractelement <4 x i1> %i.da, i64 1
  %i.dd = select i1 %i.dc, i32 -1, i32 1
  %i.de = select i1 %or.cond, i32 %i.dd, i32 0
  %.5 = add nsw i32 %i.de, %.0172
  %i.df = extractelement <4 x i1> %i.da, i64 2
  %or.cond7 = select i1 %i.cy, i1 %i.df, i1 false
  %i.dg = extractelement <4 x i1> %i.da, i64 3
  %i.dh = select i1 %i.dg, i32 -1, i32 1
  %i.di = select i1 %or.cond7, i32 %i.dh, i32 0
  %.6 = add nsw i32 %.5, %i.di
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %equal.exit165.thread
  %.7 = phi i32 [ %.4, %bb.p ], [ %.0172, %bb.o ], [ %.0172, %bb.n ], [ %.0172, %bb.m ], [ %.6, %equal.exit165.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.j, %bb.i, %bb.h, %bb.g, %bb.k, %bb.q
  %.9 = phi i32 [ %.0172, %bb.f ], [ %.7, %bb.q ], [ %.0172, %bb.k ], [ %.0172, %bb.g ], [ %.0172, %bb.h ], [ %.0172, %bb.i ], [ %.1, %bb.j ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !239

._crit_edge:                                      ; preds = %.thread, %bb.e
  %.0.lcssa = phi i32 [ 0, %bb.e ], [ %.9, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define float @stbtt__cuberoot(float noundef %0) local_unnamed_addr #26 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = fneg float %0
  %i.c = fpext float %i.b to double
  %i.d = tail call double @pow(double noundef %i.c, double noundef f0x3FD5555560000000) #29
  %i.e = fptrunc double %i.d to float
  %i.f = fneg float %i.e
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = fpext float %0 to double
  %i.h = tail call double @pow(double noundef %i.g, double noundef f0x3FD5555560000000) #29
  %i.i = fptrunc double %i.h to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi float [ %i.f, %bb.b ], [ %i.i, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define range(i32 1, 4) i32 @stbtt__solve_cubic(float noundef %0, float noundef %1, float noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #25 {
bb.a:
  %i.a = fdiv float %0, -3.000000e+00             ; 3 uses
  %i.b = fmul float %0, %0
  %i.c = fdiv float %i.b, 3.000000e+00
  %i.d = fsub float %1, %i.c                      ; 4 uses
  %i.e = fmul float %0, 2.000000e+00
  %i.f = fmul float %1, -9.000000e+00
  %i.g = tail call float @llvm.fmuladd.f32(float %i.e, float %0, float %i.f)
  %i.h = fmul float %0, %i.g
  %i.i = fdiv float %i.h, 2.700000e+01
  %i.j = fadd float %2, %i.i                      ; 5 uses
  %i.k = fmul float %i.d, %i.d
  %i.l = fmul float %i.d, %i.k                    ; 2 uses
  %i.m = fmul float %i.l, 4.000000e+00
  %i.n = fdiv float %i.m, 2.700000e+01
  %i.o = tail call float @llvm.fmuladd.f32(float %i.j, float %i.j, float %i.n) ; 2 uses
  %i.p = fcmp ult float %i.o, 0.000000e+00
  br i1 %i.p, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrtf47 = tail call float @sqrtf(float noundef %i.o) #29 ; 2 uses
  %i.q = fneg float %i.j
  %i.r = fsub float %sqrtf47, %i.j
  %i.s = fmul float %i.r, 5.000000e-01            ; 3 uses
  %i.t = fsub float %i.q, %sqrtf47
  %i.u = fmul float %i.t, 5.000000e-01            ; 3 uses
  %i.v = fcmp olt float %i.s, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = fneg float %i.s
  %i.x = fpext float %i.w to double
  %i.y = tail call double @pow(double noundef %i.x, double noundef f0x3FD5555560000000) #29
  %i.z = fptrunc double %i.y to float
  %i.aa = fneg float %i.z
  br label %stbtt__cuberoot.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = fpext float %i.s to double
  %i.ac = tail call double @pow(double noundef %i.ab, double noundef f0x3FD5555560000000) #29
  %i.ad = fptrunc double %i.ac to float
  br label %stbtt__cuberoot.exit

stbtt__cuberoot.exit:                             ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.aa, %bb.c ], [ %i.ad, %bb.d ]
  %i.ae = fcmp olt float %i.u, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %stbtt__cuberoot.exit
  %i.af = fneg float %i.u
  %i.ag = fpext float %i.af to double
  %i.ah = tail call double @pow(double noundef %i.ag, double noundef f0x3FD5555560000000) #29
  %i.ai = fptrunc double %i.ah to float
  %i.aj = fneg float %i.ai
  br label %stbtt__cuberoot.exit49

bb.f:                                             ; preds = %stbtt__cuberoot.exit
  %i.ak = fpext float %i.u to double
  %i.al = tail call double @pow(double noundef %i.ak, double noundef f0x3FD5555560000000) #29
  %i.am = fptrunc double %i.al to float
  br label %stbtt__cuberoot.exit49

stbtt__cuberoot.exit49:                           ; preds = %bb.e, %bb.f
  %.0.i48 = phi float [ %i.aj, %bb.e ], [ %i.am, %bb.f ]
  %i.an = fadd float %i.a, %.0.i
  %i.ao = fadd float %i.an, %.0.i48
  store float %i.ao, ptr %3, align 4, !tbaa !74
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ap = fdiv float %i.d, -3.000000e+00
  %sqrtf = tail call float @sqrtf(float noundef %i.ap) #29 ; 2 uses
  %i.aq = fdiv float -2.700000e+01, %i.l
  %i.ar = fpext float %i.aq to double
  %i.as = tail call double @sqrt(double noundef %i.ar) #29
  %i.at = fneg double %i.as
  %i.au = fpext float %i.j to double
  %i.av = fmul double %i.au, %i.at
  %i.aw = fmul double %i.av, 5.000000e-01
  %i.ax = tail call double @acos(double noundef %i.aw) #29
  %i.ay = fptrunc double %i.ax to float
  %i.az = fdiv float %i.ay, 3.000000e+00
  %i.ba = fpext float %i.az to double             ; 2 uses
  %i.bb = tail call double @cos(double noundef %i.ba) #29
  %i.bc = fptrunc double %i.bb to float           ; 3 uses
  %i.bd = fadd double %i.ba, f0xBFF921FAFC8B007A
  %i.be = tail call double @cos(double noundef %i.bd) #29
  %i.bf = fptrunc double %i.be to float
  %i.bg = fmul float %i.bf, f0x3FDDB3D7           ; 2 uses
  %i.bh = fneg float %sqrtf                       ; 2 uses
  %i.bi = fadd float %i.bg, %i.bc
  %i.bj = fmul float %sqrtf, 2.000000e+00
  %i.bk = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bi, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bh, i64 1
  %i.bo = insertelement <2 x float> poison, float %i.a, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bn, <2 x float> %i.bp)
  store <2 x float> %i.bq, ptr %3, align 4, !tbaa !74
  %i.br = fsub float %i.bc, %i.bg
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.br, float %i.a)
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.bs, ptr %i.bt, align 4, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %stbtt__cuberoot.exit49
  %.0 = phi i32 [ 1, %stbtt__cuberoot.exit49 ], [ 3, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define noalias noundef ptr @stbtt_GetGlyphSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #25 {
bb.a:
end_hunk_0
