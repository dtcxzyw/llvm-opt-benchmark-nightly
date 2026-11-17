Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 114
begin_hunk_0_@GenImageGradientLinear:bb.a
  %i.bw = shufflevector <16 x i8> %i.bp, <16 x i8> %i.bu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i8> %i.bv, <32 x i8> %i.bw, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec, ptr %i.bf, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert100 = insertelement <4 x float> poison, float %i.an, i64 0
  %broadcast.splat101 = shufflevector <4 x float> %broadcast.splatinsert100, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert124 = insertelement <4 x i32> poison, i32 %i.by, i64 0
  %broadcast.splat125 = shufflevector <4 x i32> %broadcast.splatinsert124, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat125, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index126 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next129, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind127 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next130, %vec.epilog.vector.body ] ; 2 uses
  %i.bz = uitofp nneg <4 x i32> %vec.ind127 to <4 x float>
  %i.ca = fmul <4 x float> %broadcast.splat103, %i.bz
  %i.cb = fadd <4 x float> %broadcast.splat101, %i.ca
  %i.cc = fadd <4 x float> %broadcast.splat105, %i.cb
  %i.cd = fdiv <4 x float> %i.cc, %broadcast.splat107 ; 2 uses
  %i.ce = fcmp ogt <4 x float> %i.cd, splat (float 1.000000e+00)
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cd ; 2 uses
  %i.cg = fcmp olt <4 x float> %i.cf, splat (float -1.000000e+00)
  %i.ch = select <4 x i1> %i.cg, <4 x float> splat (float -1.000000e+00), <4 x float> %i.cf
  %i.ci = fmul <4 x float> %i.ch, splat (float 5.000000e-01)
  %i.cj = fadd <4 x float> %i.ci, splat (float 5.000000e-01) ; 5 uses
  %i.ck = fmul <4 x float> %i.cj, %broadcast.splat109
  %i.cl = fsub <4 x float> splat (float 1.000000e+00), %i.cj ; 4 uses
  %i.cm = fmul <4 x float> %i.cl, %broadcast.splat111
  %i.cn = fadd <4 x float> %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index126
  %i.cp = fmul <4 x float> %i.cj, %broadcast.splat113
  %i.cq = fmul <4 x float> %i.cl, %broadcast.splat115
  %i.cr = fadd <4 x float> %i.cp, %i.cq
  %i.cs = fmul <4 x float> %i.cj, %broadcast.splat117
  %i.ct = fmul <4 x float> %i.cl, %broadcast.splat119
  %i.cu = fadd <4 x float> %i.cs, %i.ct
  %i.cv = fmul <4 x float> %i.cj, %broadcast.splat121
  %i.cw = fmul <4 x float> %i.cl, %broadcast.splat123
  %i.cx = fadd <4 x float> %i.cv, %i.cw
  %i.cy = shufflevector <4 x float> %i.cn, <4 x float> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cz = fptosi <8 x float> %i.cy to <8 x i32>
  %i.da = trunc <8 x i32> %i.cz to <8 x i8>
  %i.db = shufflevector <4 x float> %i.cu, <4 x float> %i.cx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dc = fptosi <8 x float> %i.db to <8 x i32>
  %i.dd = trunc <8 x i32> %i.dc to <8 x i8>
  %interleaved.vec128 = shufflevector <8 x i8> %i.da, <8 x i8> %i.dd, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec128, ptr %i.co, align 1
  %index.next129 = add nuw i64 %index126, 4       ; 2 uses
  %vec.ind.next130 = add <4 x i32> %vec.ind127, splat (i32 4)
  %i.de = icmp eq i64 %index.next129, %n.vec99
  br i1 %i.de, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !102

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n131, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge68.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.dg, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.di, align 4
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %i.aj
  br i1 %exitcond74.not, label %._crit_edge68.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.dj = trunc nuw nsw i64 %indvars.iv to i32
  %i.dk = uitofp nneg i32 %i.dj to float
  %i.dl = fmul float %i.j, %i.dk
  %i.dm = fadd float %i.an, %i.dl
  %i.dn = fadd float %i.r, %i.dm
  %i.do = fdiv float %i.dn, %i.w                  ; 2 uses
  %i.dp = fcmp ogt float %i.do, 1.000000e+00
  %i.dq = select i1 %i.dp, float 1.000000e+00, float %i.do ; 2 uses
  %i.dr = fcmp olt float %i.dq, -1.000000e+00
  %i.ds = select i1 %i.dr, float -1.000000e+00, float %i.dq
  %i.dt = fmul float %i.ds, 5.000000e-01
  %i.du = fadd float %i.dt, 5.000000e-01          ; 2 uses
  %i.dv = fsub float 1.000000e+00, %i.du
  %i.dw = mul nuw nsw i64 %indvars.iv, %i.aj
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.dw
  %i.dx = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dy = insertelement <4 x float> %i.dx, float %i.dv, i64 1 ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ea = fmul <4 x float> %i.dz, %i.ad
  %i.eb = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ec = fmul <4 x float> %i.eb, %i.ai
  %i.ed = fadd <4 x float> %i.ea, %i.ec
  %i.ee = fptosi <4 x float> %i.ed to <4 x i32>
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.eg = trunc <4 x i32> %i.ef to <4 x i8>
  store <4 x i8> %i.eg, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !103
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #17

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImageGradientRadial(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 %4, i32 %5) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = sitofp i32 %1 to float
  %i.f = fmul nnan float %i.e, 5.000000e-01
  %i.g = sitofp i32 %2 to float
  %i.h = fmul nnan float %i.g, 5.000000e-01
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge61.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %. = tail call i32 @llvm.smin.i32(i32 %1, i32 %2)
  %.in = sitofp i32 %. to float
  %i.j = fmul nnan float %.in, 5.000000e-01       ; 2 uses
  %i.k = icmp sgt i32 %1, 0
  %i.l = fmul float %3, %i.j
  %i.m = fsub float 1.000000e+00, %3
  %i.n = fmul float %i.m, %i.j
  %i.o = bitcast i32 %5 to <4 x i8>
  %i.p = uitofp <4 x i8> %i.o to <4 x float>
  %i.q = bitcast i32 %4 to <4 x i8>
  %i.r = uitofp <4 x i8> %i.q to <4 x float>
  br i1 %i.k, label %.preheader.preheader, label %._crit_edge61.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.s = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count66 = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv63 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next64, %._crit_edge ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv63 to i32
  %i.u = uitofp nneg i32 %i.t to float
  %i.v = fsub float %i.u, %i.h
  %i.w = mul nuw nsw i64 %indvars.iv63, %i.s
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w
  br label %bb.b

._crit_edge61.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.aa, align 4
  ret void

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count66
  br i1 %exitcond67.not, label %._crit_edge61.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = uitofp nneg i32 %i.ab to float
  %i.ad = fsub float %i.ac, %i.f
  %i.ae = tail call float @hypotf(float noundef %i.ad, float noundef %i.v) #52
  %i.af = fsub float %i.ae, %i.l
  %i.ag = fdiv float %i.af, %i.n
  %i.ah = tail call nsz float @llvm.maxnum.f32(float %i.ag, float 0.000000e+00)
  %i.ai = tail call nsz float @llvm.minnum.f32(float %i.ah, float 1.000000e+00) ; 2 uses
  %i.aj = fsub nnan float 1.000000e+00, %i.ai
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ak = insertelement <4 x float> poison, float %i.ai, i64 0
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> zeroinitializer
  %i.am = fmul nnan <4 x float> %i.al, %i.p
  %i.an = insertelement <4 x float> poison, float %i.aj, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ap = fmul <4 x float> %i.ao, %i.r
  %i.aq = fadd <4 x float> %i.am, %i.ap
  %i.ar = fptosi <4 x float> %i.aq to <4 x i32>
  %i.as = trunc <4 x i32> %i.ar to <4 x i8>
  store <4 x i8> %i.as, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @hypotf(float noundef, float noundef) local_unnamed_addr #30

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImageGradientSquare(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, i32 %4, i32 %5) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = sitofp i32 %1 to float
  %i.f = fmul nnan float %i.e, 5.000000e-01       ; 4 uses
  %i.g = sitofp i32 %2 to float
  %i.h = fmul nnan float %i.g, 5.000000e-01       ; 2 uses
  %i.i = icmp sgt i32 %2, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge59.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.j = icmp sgt i32 %1, 0
  %i.k = fsub float 1.000000e+00, %3              ; 3 uses
  %i.l = bitcast i32 %5 to <4 x i8>
  %i.m = uitofp <4 x i8> %i.l to <4 x float>      ; 9 uses
  %i.n = bitcast i32 %4 to <4 x i8>
  %i.o = uitofp <4 x i8> %i.n to <4 x float>      ; 9 uses
  br i1 %i.j, label %.preheader.preheader, label %._crit_edge59.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.p = zext nneg i32 %1 to i64                  ; 7 uses
  %wide.trip.count64 = zext nneg i32 %2 to i64
  %min.iters.check = icmp ult i32 %1, 4
  %min.iters.check67 = icmp ult i32 %1, 16
  %i.q = and i64 %i.p, 12
  %n.vec = and i64 %i.p, 2147483632               ; 4 uses
  %broadcast.splatinsert68 = insertelement <16 x float> poison, float %i.f, i64 0
  %broadcast.splat69 = shufflevector <16 x float> %broadcast.splatinsert68, <16 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert70 = insertelement <16 x float> poison, float %3, i64 0
  %broadcast.splat71 = shufflevector <16 x float> %broadcast.splatinsert70, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert72 = insertelement <16 x float> poison, float %i.k, i64 0
  %broadcast.splat73 = shufflevector <16 x float> %broadcast.splatinsert72, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat75 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat77 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splat79 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat81 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat83 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat85 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat87 = shufflevector <4 x float> %i.m, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat89 = shufflevector <4 x float> %i.o, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %cmp.n = icmp eq i64 %n.vec, %i.p
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec90 = and i64 %i.p, 2147483644             ; 3 uses
  %broadcast.splatinsert93 = insertelement <4 x float> poison, float %i.f, i64 0
  %broadcast.splat94 = shufflevector <4 x float> %broadcast.splatinsert93, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <4 x float> poison, float %i.k, i64 0
  %broadcast.splat98 = shufflevector <4 x float> %broadcast.splatinsert97, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat100 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat102 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat104 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat106 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat108 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat110 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat112 = shufflevector <4 x float> %i.m, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat114 = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %cmp.n122 = icmp eq i64 %n.vec90, %i.p
  br label %iter.check

iter.check:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv61 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next62, %._crit_edge ] ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv61 to i32
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fsub float %i.s, %i.h
  %i.u = tail call float @llvm.fabs.f32(float %i.t)
  %i.v = fdiv float %i.u, %i.h                    ; 3 uses
  %i.w = mul nuw nsw i64 %indvars.iv61, %i.p
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check67, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.v, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.x = uitofp nneg <16 x i32> %vec.ind to <16 x float>
  %i.y = fsub <16 x float> %i.x, %broadcast.splat69
  %i.z = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.y)
  %i.aa = fdiv <16 x float> %i.z, %broadcast.splat69
  %i.ab = tail call nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.aa, <16 x float> %broadcast.splat)
  %i.ac = fsub <16 x float> %i.ab, %broadcast.splat71
  %i.ad = fdiv <16 x float> %i.ac, %broadcast.splat73
  %i.ae = tail call nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %i.ad, <16 x float> zeroinitializer)
  %i.af = tail call nsz <16 x float> @llvm.minnum.v16f32(<16 x float> %i.ae, <16 x float> splat (float 1.000000e+00)) ; 5 uses
  %i.ag = fmul nnan <16 x float> %i.af, %broadcast.splat75
  %i.ah = fsub <16 x float> splat (float 1.000000e+00), %i.af ; 4 uses
  %i.ai = fmul <16 x float> %i.ah, %broadcast.splat77
  %i.aj = fadd <16 x float> %i.ag, %i.ai
  %i.ak = fptosi <16 x float> %i.aj to <16 x i32>
  %i.al = trunc <16 x i32> %i.ak to <16 x i8>
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  %i.an = fmul nnan <16 x float> %i.af, %broadcast.splat79
  %i.ao = fmul <16 x float> %i.ah, %broadcast.splat81
  %i.ap = fadd <16 x float> %i.an, %i.ao
  %i.aq = fptosi <16 x float> %i.ap to <16 x i32>
  %i.ar = trunc <16 x i32> %i.aq to <16 x i8>
  %i.as = fmul nnan <16 x float> %i.af, %broadcast.splat83
  %i.at = fmul <16 x float> %i.ah, %broadcast.splat85
  %i.au = fadd <16 x float> %i.as, %i.at
  %i.av = fptosi <16 x float> %i.au to <16 x i32>
  %i.aw = trunc <16 x i32> %i.av to <16 x i8>
  %i.ax = fmul nnan <16 x float> %i.af, %broadcast.splat87
  %i.ay = fmul <16 x float> %i.ah, %broadcast.splat89
  %i.az = fadd <16 x float> %i.ax, %i.ay
  %i.ba = fptosi <16 x float> %i.az to <16 x i32>
  %i.bb = trunc <16 x i32> %i.ba to <16 x i8>
  %i.bc = shufflevector <16 x i8> %i.al, <16 x i8> %i.ar, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bd = shufflevector <16 x i8> %i.aw, <16 x i8> %i.bb, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i8> %i.bc, <32 x i8> %i.bd, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec, ptr %i.am, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert91 = insertelement <4 x float> poison, float %i.v, i64 0
  %broadcast.splat92 = shufflevector <4 x float> %broadcast.splatinsert91, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bf = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat116, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next120, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind118 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next121, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = uitofp nneg <4 x i32> %vec.ind118 to <4 x float>
  %i.bh = fsub <4 x float> %i.bg, %broadcast.splat94
  %i.bi = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bh)
  %i.bj = fdiv <4 x float> %i.bi, %broadcast.splat94
  %i.bk = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bj, <4 x float> %broadcast.splat92)
  %i.bl = fsub <4 x float> %i.bk, %broadcast.splat96
  %i.bm = fdiv <4 x float> %i.bl, %broadcast.splat98
  %i.bn = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.bm, <4 x float> zeroinitializer)
  %i.bo = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.bn, <4 x float> splat (float 1.000000e+00)) ; 5 uses
  %i.bp = fmul nnan <4 x float> %i.bo, %broadcast.splat100
  %i.bq = fsub <4 x float> splat (float 1.000000e+00), %i.bo ; 4 uses
  %i.br = fmul <4 x float> %i.bq, %broadcast.splat102
  %i.bs = fadd <4 x float> %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index117
  %i.bu = fmul nnan <4 x float> %i.bo, %broadcast.splat104
  %i.bv = fmul <4 x float> %i.bq, %broadcast.splat106
  %i.bw = fadd <4 x float> %i.bu, %i.bv
  %i.bx = fmul nnan <4 x float> %i.bo, %broadcast.splat108
  %i.by = fmul <4 x float> %i.bq, %broadcast.splat110
  %i.bz = fadd <4 x float> %i.bx, %i.by
  %i.ca = fmul nnan <4 x float> %i.bo, %broadcast.splat112
  %i.cb = fmul <4 x float> %i.bq, %broadcast.splat114
  %i.cc = fadd <4 x float> %i.ca, %i.cb
  %i.cd = shufflevector <4 x float> %i.bs, <4 x float> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ce = fptosi <8 x float> %i.cd to <8 x i32>
  %i.cf = trunc <8 x i32> %i.ce to <8 x i8>
  %i.cg = shufflevector <4 x float> %i.bz, <4 x float> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ch = fptosi <8 x float> %i.cg to <8 x i32>
  %i.ci = trunc <8 x i32> %i.ch to <8 x i8>
  %interleaved.vec119 = shufflevector <8 x i8> %i.cf, <8 x i8> %i.ci, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec119, ptr %i.bt, align 1
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %vec.ind.next121 = add <4 x i32> %vec.ind118, splat (i32 4)
  %i.cj = icmp eq i64 %index.next120, %n.vec90
  br i1 %i.cj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n122, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec90, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge59.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.cn, align 4
  ret void

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge59.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.co = trunc nuw nsw i64 %indvars.iv to i32
  %i.cp = uitofp nneg i32 %i.co to float
  %i.cq = fsub float %i.cp, %i.f
  %i.cr = tail call float @llvm.fabs.f32(float %i.cq)
  %i.cs = fdiv float %i.cr, %i.f
  %i.ct = tail call nsz float @llvm.maxnum.f32(float %i.cs, float %i.v)
  %i.cu = fsub float %i.ct, %3
  %i.cv = fdiv float %i.cu, %i.k
  %i.cw = tail call nsz float @llvm.maxnum.f32(float %i.cv, float 0.000000e+00)
  %i.cx = tail call nsz float @llvm.minnum.f32(float %i.cw, float 1.000000e+00) ; 2 uses
  %i.cy = fsub nnan float 1.000000e+00, %i.cx
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cz = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.db = fmul nnan <4 x float> %i.da, %i.m
  %i.dc = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.de = fmul <4 x float> %i.dd, %i.o
  %i.df = fadd <4 x float> %i.db, %i.de
  %i.dg = fptosi <4 x float> %i.df to <4 x i32>
  %i.dh = trunc <4 x i32> %i.dg to <4 x i8>
  store <4 x i8> %i.dh, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !106
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #17

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImageChecked(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 3 uses
  %i.e = icmp sgt i32 %2, 0
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge28.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64                  ; 4 uses
  %wide.trip.count33 = zext nneg i32 %2 to i64
  %min.iters.check = icmp ult i32 %1, 4
  %n.vec = and i64 %i.g, 2147483644               ; 3 uses
  %broadcast.splatinsert38 = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat39 = shufflevector <4 x i32> %broadcast.splatinsert38, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert40 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat41 = shufflevector <4 x i32> %broadcast.splatinsert40, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat43 = shufflevector <4 x i32> %broadcast.splatinsert42, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.g
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.i = sdiv i32 %i.h, %4                        ; 2 uses
  %i.j = mul nuw nsw i64 %indvars.iv30, %i.g      ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.j
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.l = sdiv <4 x i32> %vec.ind, %broadcast.splat39
  %i.m = add nsw <4 x i32> %broadcast.splat, %i.l
  %i.n = and <4 x i32> %i.m, splat (i32 1)
  %i.o = icmp eq <4 x i32> %i.n, zeroinitializer
  %i.p = select <4 x i1> %i.o, <4 x i32> %broadcast.splat41, <4 x i32> %broadcast.splat43
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  store <4 x i32> %i.p, ptr %i.q, align 1
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %invariant.gep36.invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.j
  br label %scalar.ph

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.v, align 4
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge28.split, label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.w = trunc nuw nsw i64 %indvars.iv to i32
  %i.x = sdiv i32 %i.w, %3
  %i.y = add nsw i32 %i.i, %i.x
  %i.z = and i32 %i.y, 1
  %i.aa = icmp eq i32 %i.z, 0
  %. = select i1 %i.aa, i32 %5, i32 %6
  %gep37 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep, i64 %indvars.iv
  store i32 %., ptr %gep37, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !108
}

; Function Attrs: nounwind uwtable
define void @GenImageWhiteNoise(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %2, %1                       ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = fmul float %3, 1.000000e+02
  %i.g = fptosi float %i.f to i32
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.k, align 4
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef 99) #52
  %i.m = icmp slt i32 %i.l, %i.g
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %. = select i1 %i.m, <4 x i8> splat (i8 -1), <4 x i8> <i8 0, i8 0, i8 0, i8 -1>
  store <4 x i8> %., ptr %i.n, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare i32 @GetRandomValue(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @GenImagePerlinNoise(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #29 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.f = insertelement <2 x i32> %i.e, i32 %2, i64 1
  %i.g = sitofp <2 x i32> %i.f to <2 x float>     ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = fdiv float %i.h, %i.i                    ; 2 uses
  %i.k = icmp sgt i32 %2, 0
  br i1 %i.k, label %.preheader.lr.ph, label %._crit_edge47.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.l = icmp sgt i32 %1, 0
  %i.m = insertelement <2 x float> poison, float %5, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.o = fdiv <2 x float> %i.n, %i.g              ; 2 uses
  %i.p = icmp sgt i32 %1, %2                      ; 2 uses
  br i1 %i.l, label %.preheader.preheader, label %._crit_edge47.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.q = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count52 = zext nneg i32 %2 to i64
  %i.r = extractelement <2 x float> %i.o, i64 1
  %i.s = extractelement <2 x float> %i.o, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv49 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next50, %._crit_edge ] ; 3 uses
  %i.t = trunc i64 %indvars.iv49 to i32
  %i.u = add i32 %4, %i.t
  %i.v = sitofp i32 %i.u to float
  %i.w = fmul float %i.r, %i.v                    ; 2 uses
  %i.x = fdiv float %i.w, %i.j
  %.042 = select i1 %i.p, float %i.w, float %i.x
  %i.y = mul nuw nsw i64 %indvars.iv49, %i.q
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.y
  br label %bb.b

._crit_edge47.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.aa, align 4
end_hunk_0
begin_hunk_1_@ColorFromNormalized:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define { <2 x float>, float } @ColorToHSV(i32 %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.235.0.extract.shift = lshr i32 %0, 8
  %.sroa.3.0.extract.shift = lshr i32 %0, 16
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %i.a = uitofp i8 %.sroa.3.0.extract.trunc to float
  %i.b = fdiv float %i.a, 2.550000e+02            ; 4 uses
  %i.c = trunc i32 %0 to i8
  %i.d = trunc i32 %.sroa.235.0.extract.shift to i8
  %i.e = insertelement <2 x i8> poison, i8 %i.d, i64 0
  %i.f = insertelement <2 x i8> %i.e, i8 %i.c, i64 1
  %i.g = uitofp <2 x i8> %i.f to <2 x float>
  %i.h = fdiv <2 x float> %i.g, splat (float 2.550000e+02) ; 7 uses
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.j = fcmp ogt <2 x float> %i.h, %i.i
  %i.k = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.l = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  %i.m = select <2 x i1> %i.j, <2 x float> %i.k, <2 x float> %i.l ; 3 uses
  %i.n = insertelement <2 x float> %i.m, float %i.b, i64 0 ; 2 uses
  %i.o = insertelement <2 x float> %i.m, float %i.b, i64 1
  %i.p = fcmp ogt <2 x float> %i.n, %i.o
  %i.q = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = select <2 x i1> %i.p, <2 x float> %i.m, <2 x float> %i.q ; 2 uses
  %i.s = extractelement <2 x float> %i.r, i64 0
  %i.t = extractelement <2 x float> %i.r, i64 1   ; 6 uses
  %i.u = fsub float %i.t, %i.s                    ; 5 uses
  %i.v = fcmp olt float %i.u, f0x3727C5AC
  br i1 %i.v, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = fcmp ogt float %i.t, 0.000000e+00
  br i1 %i.w, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.x = fdiv float %i.u, %i.t
  %i.y = extractelement <2 x float> %i.h, i64 1   ; 3 uses
  %i.z = fcmp ult float %i.y, %i.t
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = extractelement <2 x float> %i.h, i64 0
  %i.ab = fsub float %i.aa, %i.b
  %i.ac = fdiv float %i.ab, %i.u
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ad = extractelement <2 x float> %i.h, i64 0  ; 2 uses
  %i.ae = fcmp ult float %i.ad, %i.t
  br i1 %i.ae, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = fsub float %i.b, %i.y
  %i.ag = fdiv float %i.af, %i.u
  %i.ah = fadd float %i.ag, 2.000000e+00
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = fsub float %i.y, %i.ad
  %i.aj = fdiv float %i.ai, %i.u
  %i.ak = fadd float %i.aj, 4.000000e+00
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.sink = phi float [ %i.ah, %bb.f ], [ %i.ak, %bb.g ], [ %i.ac, %bb.d ]
  %i.al = fmul float %.sink, 6.000000e+01         ; 3 uses
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %.sroa.036.0.vec.insert48 = insertelement <2 x float> %i.am, float %i.x, i64 1 ; 2 uses
  %i.an = fcmp olt float %i.al, 0.000000e+00
  %i.ao = fadd float %i.al, 3.600000e+02
  %.sroa.036.0.vec.insert54 = insertelement <2 x float> %.sroa.036.0.vec.insert48, float %i.ao, i64 0
  %.sroa.036.1 = select i1 %i.an, <2 x float> %.sroa.036.0.vec.insert54, <2 x float> %.sroa.036.0.vec.insert48
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  %.sroa.036.2 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %.sroa.036.1, %bb.h ], [ <float +qnan, float 0.000000e+00>, %bb.b ]
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.036.2, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.t, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define range(i32 -16777216, 0) i32 @ColorFromHSV(float noundef %0, float noundef %1, float noundef %2) local_unnamed_addr #41 {
bb.a:
  %i.a = fdiv float %0, 6.000000e+01              ; 3 uses
  %i.b = fadd float %i.a, 5.000000e+00
  %i.c = tail call float @fmodf(float noundef %i.b, float noundef 6.000000e+00) #52 ; 3 uses
  %i.d = fsub float 4.000000e+00, %i.c            ; 2 uses
  %i.e = fcmp olt float %i.d, %i.c
  %i.f = select i1 %i.e, float %i.d, float %i.c   ; 2 uses
  %i.g = fcmp olt float %i.f, 1.000000e+00
  %i.h = select i1 %i.g, float %i.f, float 1.000000e+00 ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %i.j = select i1 %i.i, float %i.h, float 0.000000e+00
  %i.k = fmul float %1, %2                        ; 2 uses
  %i.l = fmul float %i.k, %i.j
  %i.m = fsub float %2, %i.l
  %i.n = fmul float %i.m, 2.550000e+02
  %i.o = fptoui float %i.n to i8
  %i.p = fadd float %i.a, 3.000000e+00
  %i.q = tail call float @fmodf(float noundef %i.p, float noundef 6.000000e+00) #52
  %i.r = fadd float %i.a, 1.000000e+00
  %i.s = tail call float @fmodf(float noundef %i.r, float noundef 6.000000e+00) #52
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.q, i64 1 ; 3 uses
  %i.v = fsub <2 x float> splat (float 4.000000e+00), %i.u ; 2 uses
  %i.w = fcmp olt <2 x float> %i.v, %i.u
  %i.x = select <2 x i1> %i.w, <2 x float> %i.v, <2 x float> %i.u ; 2 uses
  %i.y = fcmp olt <2 x float> %i.x, splat (float 1.000000e+00)
  %i.z = select <2 x i1> %i.y, <2 x float> %i.x, <2 x float> splat (float 1.000000e+00) ; 2 uses
  %i.aa = fcmp ogt <2 x float> %i.z, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> zeroinitializer
  %i.ac = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, %i.ab
  %i.af = insertelement <2 x float> poison, float %2, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = fsub <2 x float> %i.ag, %i.ae
  %i.ai = fmul <2 x float> %i.ah, splat (float 2.550000e+02)
  %i.aj = fptoui <2 x float> %i.ai to <2 x i8>
  %i.ak = zext <2 x i8> %i.aj to <2 x i32>
  %i.al = shl nuw nsw <2 x i32> %i.ak, <i32 16, i32 8> ; 2 uses
  %shift = shufflevector <2 x i32> %i.al, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = or disjoint <2 x i32> %i.al, %shift
  %.sroa.4.0.insert.insert = extractelement <2 x i32> %foldExtExtBinop, i64 0
  %.sroa.0.0.insert.ext = zext i8 %i.o to i32
  %.sroa.3.0.insert.insert = or disjoint i32 %.sroa.4.0.insert.insert, %.sroa.0.0.insert.ext
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.3.0.insert.insert, -16777216
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @fmodf(float noundef, float noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorTint(i32 %0, i32 %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.35.0.extract.shift = lshr i32 %0, 8
  %.sroa.46.0.extract.shift = lshr i32 %0, 16
  %.sroa.5.0.extract.shift = lshr i32 %0, 24
  %.sroa.2.0.extract.shift = lshr i32 %1, 8
  %.sroa.3.0.extract.shift = lshr i32 %1, 16
  %.sroa.4.0.extract.shift = lshr i32 %1, 24
  %i.a = and i32 %0, 255
  %i.b = and i32 %1, 255
  %i.c = and i32 %.sroa.35.0.extract.shift, 255
  %i.d = and i32 %.sroa.2.0.extract.shift, 255
  %i.e = and i32 %.sroa.46.0.extract.shift, 255
  %i.f = and i32 %.sroa.3.0.extract.shift, 255
  %i.g = mul nuw nsw i32 %i.b, %i.a
  %.lhs.trunc = trunc nuw i32 %i.g to i16
  %i.h = mul nuw nsw i32 %i.d, %i.c
  %.lhs.trunc10 = trunc nuw i32 %i.h to i16
  %i.i = mul nuw nsw i32 %i.f, %i.e
  %.lhs.trunc12 = trunc nuw i32 %i.i to i16
  %i.j = mul nuw nsw i32 %.sroa.4.0.extract.shift, %.sroa.5.0.extract.shift
  %.lhs.trunc14 = trunc nuw i32 %i.j to i16
  %i.k = insertelement <4 x i16> poison, i16 %.lhs.trunc, i64 0
  %i.l = insertelement <4 x i16> %i.k, i16 %.lhs.trunc10, i64 1
  %i.m = insertelement <4 x i16> %i.l, i16 %.lhs.trunc12, i64 2
  %i.n = insertelement <4 x i16> %i.m, i16 %.lhs.trunc14, i64 3
  %i.o = udiv <4 x i16> %i.n, splat (i16 255)     ; 4 uses
  %i.p = extractelement <4 x i16> %i.o, i64 0
  %.zext = zext nneg i16 %i.p to i32
  %i.q = extractelement <4 x i16> %i.o, i64 1
  %.zext11 = zext nneg i16 %i.q to i32
  %i.r = extractelement <4 x i16> %i.o, i64 2
  %.zext13 = zext nneg i16 %i.r to i32
  %i.s = extractelement <4 x i16> %i.o, i64 3
  %.zext15 = zext nneg i16 %i.s to i32
  %.sroa.7.0.insert.ext = shl nuw i32 %.zext15, 24
  %.sroa.59.0.insert.ext = shl nuw nsw i32 %.zext13, 16
  %.sroa.59.0.insert.shift = and i32 %.sroa.59.0.insert.ext, 16711680
  %.sroa.59.0.insert.insert = or disjoint i32 %.sroa.59.0.insert.shift, %.sroa.7.0.insert.ext
  %.sroa.38.0.insert.ext = shl nuw nsw i32 %.zext11, 8
  %.sroa.38.0.insert.shift = and i32 %.sroa.38.0.insert.ext, 65280
  %.sroa.38.0.insert.insert = or disjoint i32 %.sroa.59.0.insert.insert, %.sroa.38.0.insert.shift
  %.sroa.07.0.insert.insert = add nuw nsw i32 %.sroa.38.0.insert.insert, %.zext
  ret i32 %.sroa.07.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorBrightness(i32 %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i8
  %i.a = fcmp ogt float %1, 1.000000e+00
  %i.b = fcmp olt float %1, -1.000000e+00
  %spec.store.select = select i1 %i.b, float -1.000000e+00, float %1
  %.027 = select i1 %i.a, float 1.000000e+00, float %spec.store.select ; 4 uses
  %i.c = uitofp i8 %.sroa.0.0.extract.trunc to float ; 3 uses
  %i.d = bitcast i32 %0 to <4 x i8>
  %i.e = shufflevector <4 x i8> %i.d, <4 x i8> poison, <2 x i32> <i32 2, i32 1>
  %i.f = uitofp <2 x i8> %i.e to <2 x float>      ; 3 uses
  %i.g = fcmp olt float %.027, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = fadd float %.027, 1.000000e+00           ; 2 uses
  %i.i = fmul float %i.h, %i.c
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x float> %i.k, %i.f
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = fsub nnan float 2.550000e+02, %i.c
  %i.n = fmul float %i.m, %.027
  %i.o = fadd float %i.n, %i.c
  %i.p = fsub nnan <2 x float> splat (float 2.550000e+02), %i.f
  %i.q = insertelement <2 x float> poison, float %.027, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  %i.t = fadd <2 x float> %i.s, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.026 = phi float [ %i.i, %bb.b ], [ %i.o, %bb.c ]
  %i.u = phi <2 x float> [ %i.l, %bb.b ], [ %i.t, %bb.c ]
  %.sroa.5.0.extract.shift = and i32 %0, -16777216
  %i.v = fptoui float %.026 to i8
  %i.w = fptoui <2 x float> %i.u to <2 x i8>
  %i.x = zext <2 x i8> %i.w to <2 x i32>
  %i.y = shl nuw nsw <2 x i32> %i.x, <i32 16, i32 8> ; 2 uses
  %i.z = extractelement <2 x i32> %i.y, i64 0
  %.sroa.524.0.insert.insert = or disjoint i32 %i.z, %.sroa.5.0.extract.shift
  %i.aa = extractelement <2 x i32> %i.y, i64 1
  %.sroa.323.0.insert.insert = or disjoint i32 %.sroa.524.0.insert.insert, %i.aa
  %.sroa.022.0.insert.ext = zext i8 %i.v to i32
  %.sroa.022.0.insert.insert = or disjoint i32 %.sroa.323.0.insert.insert, %.sroa.022.0.insert.ext
  ret i32 %.sroa.022.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorContrast(i32 %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %0 to i8
  %.sroa.3.0.extract.shift = lshr i32 %0, 8
  %.sroa.3.0.extract.trunc = trunc i32 %.sroa.3.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i32 %0, 16
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %i.a = fcmp olt float %1, -1.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt float %1, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %1
  %i.c = fadd float %spec.store.select, 1.000000e+00 ; 2 uses
  %i.d = fmul float %i.c, %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.037 = phi float [ %i.d, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.e = uitofp i8 %.sroa.0.0.extract.trunc to float
  %i.f = fdiv nnan float %i.e, 2.550000e+02
  %i.g = fadd nnan float %i.f, -5.000000e-01
  %i.h = fmul float %i.g, %.037
  %i.i = fadd float %i.h, 5.000000e-01
  %i.j = fmul float %i.i, 2.550000e+02            ; 3 uses
  %i.k = fcmp olt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp ogt float %i.j, 2.550000e+02
  %spec.store.select1 = select i1 %i.l, float 2.550000e+02, float %i.j
  %i.m = fptoui float %spec.store.select1 to i8
  %i.n = zext i8 %i.m to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.036 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ]
  %i.o = uitofp i8 %.sroa.3.0.extract.trunc to float
  %i.p = fdiv nnan float %i.o, 2.550000e+02
  %i.q = fadd nnan float %i.p, -5.000000e-01
  %i.r = fmul float %i.q, %.037
  %i.s = fadd float %i.r, 5.000000e-01
  %i.t = fmul float %i.s, 2.550000e+02            ; 3 uses
  %i.u = fcmp olt float %i.t, 0.000000e+00
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = fcmp ogt float %i.t, 2.550000e+02
  %spec.store.select2 = select i1 %i.v, float 2.550000e+02, float %i.t
  %i.w = fptoui float %spec.store.select2 to i8
  %i.x = zext i8 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.035 = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = uitofp i8 %.sroa.4.0.extract.trunc to float
  %i.aa = fdiv nnan float %i.z, 2.550000e+02
  %i.ab = fadd nnan float %i.aa, -5.000000e-01
  %i.ac = fmul float %i.ab, %.037
  %i.ad = fadd float %i.ac, 5.000000e-01
  %i.ae = fmul float %i.ad, 2.550000e+02          ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = fcmp ogt float %i.ae, 2.550000e+02
  %spec.store.select3 = select i1 %i.ag, float 2.550000e+02, float %i.ae
  %i.ah = fptoui float %spec.store.select3 to i8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i32 [ %i.aj, %bb.h ], [ 0, %bb.g ]
  %.sroa.5.0.extract.shift = and i32 %0, -16777216
  %.sroa.534.0.insert.insert = or disjoint i32 %.036, %.sroa.5.0.extract.shift
  %.sroa.333.0.insert.insert = or i32 %.sroa.534.0.insert.insert, %.035
  %.sroa.032.0.insert.insert = or i32 %.sroa.333.0.insert.insert, %.0
  ret i32 %.sroa.032.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorAlpha(i32 %0, float noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ogt float %1, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %1
  %i.c = fmul float %spec.store.select, 2.550000e+02
  %i.d = fptoui float %i.c to i8
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw i32 %i.e, 24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %.sroa.03.0.insert.ext = and i32 %0, 16777215
  %.sroa.03.0.insert.insert = or disjoint i32 %.0, %.sroa.03.0.insert.ext
  ret i32 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @ColorLerp(i32 %0, i32 %1, float noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = fcmp olt float %2, 0.000000e+00
  %i.b = fcmp ogt float %2, 1.000000e+00
  %spec.store.select = select i1 %i.b, float 1.000000e+00, float %2
  %.0 = select i1 %i.a, float 0.000000e+00, float %spec.store.select ; 2 uses
  %i.c = fsub float 1.000000e+00, %.0
  %i.d = bitcast i32 %0 to <4 x i8>
  %i.e = uitofp <4 x i8> %i.d to <4 x float>
  %i.f = insertelement <4 x float> poison, float %i.c, i64 0
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <4 x i32> zeroinitializer
  %i.h = fmul <4 x float> %i.g, %i.e
  %i.i = bitcast i32 %1 to <4 x i8>
  %i.j = uitofp <4 x i8> %i.i to <4 x float>
  %i.k = insertelement <4 x float> poison, float %.0, i64 0
  %i.l = shufflevector <4 x float> %i.k, <4 x float> poison, <4 x i32> zeroinitializer
  %i.m = fmul <4 x float> %i.l, %i.j
  %i.n = fadd <4 x float> %i.m, %i.h
  %i.o = fptoui <4 x float> %i.n to <4 x i8>
  %i.p = bitcast <4 x i8> %i.o to i32
  ret i32 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @GetColor(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.0.0.insert.insert = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %.sroa.0.0.insert.insert
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @stbi__stdio_read(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) #8 {
bb.a:
  %i.a = sext i32 %2 to i64
  %i.b = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.a, ptr noundef %0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nofree nounwind uwtable
define internal void @stbi__stdio_skip(ptr nofree noundef captures(none) %0, i32 noundef %1) #8 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.a, i32 noundef 1) ; 0 uses
  %i.c = tail call i32 @fgetc(ptr noundef %0)     ; 2 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @ungetc(i32 noundef %i.c, ptr noundef %0) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal range(i32 0, 2) i32 @stbi__stdio_eof(ptr nofree noundef captures(none) %0) #8 {
bb.a:
  %i.a = tail call i32 @feof(ptr noundef %0) #52
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @ferror(ptr noundef %0) #52
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 1, %bb.a ], [ %i.d, %bb.b ]
end_hunk_1
begin_hunk_2_@stbir__alloc_internal_mem_and_build_samplers:bb.a
  %i.abc = sdiv i32 %.05674.us.i, %i.abb          ; 2 uses
  %i.abd = add nsw i32 %i.abc, %.05773.us.i       ; 3 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  store i32 %i.abd, ptr %i.abe, align 8
  %i.abf = sub nsw i32 %.05674.us.i, %i.abc       ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aay, i64 28
  store i32 %i.aau, ptr %i.abg, align 4
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aay, i64 32
  store i32 %i.aav, ptr %i.abh, align 8
  %indvars.iv.next84.i = or disjoint i64 %indvars.iv83.i, 1 ; 2 uses
  %i.abi = getelementptr inbounds nuw [120 x i8], ptr %i.aag, i64 %indvars.iv.next84.i ; 4 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 20
  store i32 %i.abd, ptr %i.abj, align 4
  %i.abk = trunc i64 %indvars.iv.next84.i to i32
  %i.abl = sub i32 %i.aai, %i.abk
  %i.abm = sdiv i32 %i.abf, %i.abl                ; 2 uses
  %i.abn = add nsw i32 %i.abm, %i.abd             ; 3 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abi, i64 24
  store i32 %i.abn, ptr %i.abo, align 8
  %i.abp = sub nsw i32 %i.abf, %i.abm             ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abi, i64 28
  store i32 %i.aau, ptr %i.abq, align 4
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  store i32 %i.aav, ptr %i.abr, align 8
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2 ; 2 uses
  %niter206.next.1 = add i64 %niter206, 2         ; 2 uses
  %niter206.ncmp.1 = icmp eq i64 %niter206.next.1, %unroll_iter205
  br i1 %niter206.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph76.split.us.i

.lr.ph76.split.i:                                 ; preds = %.lr.ph76.i, %bb.cn
  %indvars.iv.i365 = phi i64 [ %indvars.iv.next.i370, %bb.cn ], [ 0, %.lr.ph76.i ] ; 4 uses
  %.05674.i = phi i32 [ %i.acn, %bb.cn ], [ %i.aas, %.lr.ph76.i ] ; 2 uses
  %.05773.i = phi i32 [ %i.abx, %bb.cn ], [ 0, %.lr.ph76.i ] ; 4 uses
  %i.abs = getelementptr inbounds nuw [120 x i8], ptr %i.aag, i64 %indvars.iv.i365 ; 5 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 20 ; 2 uses
  store i32 %.05773.i, ptr %i.abt, align 4
  %i.abu = trunc i64 %indvars.iv.i365 to i32
  %i.abv = sub i32 %i.aai, %i.abu
  %i.abw = sdiv i32 %.05674.i, %i.abv             ; 3 uses
  %i.abx = add nsw i32 %i.abw, %.05773.i          ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abs, i64 24
  store i32 %i.abx, ptr %i.aby, align 8
  %.not79.i = icmp eq i64 %indvars.iv.i365, 0
  br i1 %.not79.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph76.split.i
  %i.abz = sext i32 %.05773.i to i64
  %i.aca = getelementptr inbounds [8 x i8], ptr %i.aak, i64 %i.abz ; 2 uses
  %spec.select.i366 = tail call i32 @llvm.smin.i32(i32 %i.abw, i32 %i.aat) ; 2 uses
  %i.acb = load i32, ptr %i.aca, align 4          ; 2 uses
  %.not65.i = icmp slt i32 %spec.select.i366, 1
  br i1 %.not65.i, label %._crit_edge.i369, label %.lr.ph.i367

.lr.ph.i367:                                      ; preds = %bb.cl, %bb.cm
  %i.acc = phi i32 [ %i.aci, %bb.cm ], [ %i.acb, %bb.cl ] ; 2 uses
  %.069.i = phi ptr [ %i.acd, %bb.cm ], [ %i.aca, %bb.cl ]
  %.05268.i = phi i32 [ %spec.select64.i, %bb.cm ], [ 0, %bb.cl ] ; 2 uses
  %.05367.i = phi i32 [ %i.ach, %bb.cm ], [ 1, %bb.cl ] ; 3 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %.069.i, i64 8 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4          ; 3 uses
  %i.acf = icmp sgt i32 %i.ace, %i.acb
  br i1 %i.acf, label %._crit_edge.i369, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.i367
  %i.acg = icmp slt i32 %i.ace, %i.acc
  %spec.select64.i = select i1 %i.acg, i32 %.05367.i, i32 %.05268.i ; 2 uses
  %i.ach = add nuw i32 %.05367.i, 1
  %exitcond.not.i368 = icmp eq i32 %.05367.i, %spec.select.i366
  %i.aci = tail call i32 @llvm.smin.i32(i32 %i.ace, i32 %i.acc)
  br i1 %exitcond.not.i368, label %._crit_edge.i369, label %.lr.ph.i367

._crit_edge.i369:                                 ; preds = %bb.cm, %.lr.ph.i367, %bb.cl
  %.052.lcssa.i = phi i32 [ 0, %bb.cl ], [ %spec.select64.i, %bb.cm ], [ %.05268.i, %.lr.ph.i367 ] ; 2 uses
  %i.acj = getelementptr i8, ptr %i.abs, i64 -96  ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 8
  %i.acl = add nsw i32 %i.ack, %.052.lcssa.i
  store i32 %i.acl, ptr %i.acj, align 8
  %i.acm = add nsw i32 %.052.lcssa.i, %.05773.i
  store i32 %i.acm, ptr %i.abt, align 4
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge.i369, %.lr.ph76.split.i
  %i.acn = sub nsw i32 %.05674.i, %i.abw
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abs, i64 28
  store i32 %i.aau, ptr %i.aco, align 4
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abs, i64 32
  store i32 %i.aav, ptr %i.acp, align 8
  %indvars.iv.next.i370 = add nuw nsw i64 %indvars.iv.i365, 1 ; 2 uses
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next.i370, %i.aaw
  br i1 %exitcond82.not.i, label %.loopexit, label %.lr.ph76.split.i

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph76.split.us.i
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %.loopexit, label %.lr.ph76.split.us.i.epil.preheader

.lr.ph76.split.us.i.epil.preheader:               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph76.split.us.i.preheader
  %indvars.iv83.i.epil.init = phi i64 [ 0, %.lr.ph76.split.us.i.preheader ], [ %indvars.iv.next84.i.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.05674.us.i.epil.init = phi i32 [ %i.aas, %.lr.ph76.split.us.i.preheader ], [ %i.abp, %.loopexit.loopexit.unr-lcssa ]
  %.05773.us.i.epil.init = phi i32 [ 0, %.lr.ph76.split.us.i.preheader ], [ %i.abn, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod204 = trunc i32 %i.aai to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.acq = getelementptr inbounds nuw [120 x i8], ptr %i.aag, i64 %indvars.iv83.i.epil.init ; 4 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 20
  store i32 %.05773.us.i.epil.init, ptr %i.acr, align 4
  %i.acs = trunc i64 %indvars.iv83.i.epil.init to i32
  %i.act = sub i32 %i.aai, %i.acs
  %i.acu = sdiv i32 %.05674.us.i.epil.init, %i.act
  %i.acv = add nsw i32 %i.acu, %.05773.us.i.epil.init
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acq, i64 24
  store i32 %i.acv, ptr %i.acw, align 8
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acq, i64 28
  store i32 %i.aau, ptr %i.acx, align 4
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acq, i64 32
  store i32 %i.aav, ptr %i.acy, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cn, %.lr.ph76.split.us.i.epil.preheader, %.loopexit.loopexit.unr-lcssa, %stbir_simd_memcpy.exit360
  %i.acz = getelementptr inbounds nuw i8, ptr %i.ev, i64 276
  %i.ada = load i32, ptr %i.acz, align 4          ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ev, i64 332
  %i.adc = load i32, ptr %i.aaj, align 8
  %.not334 = icmp eq i32 %i.adc, 0
  %i.add = tail call i32 @llvm.smin.i32(i32 %i.ada, i32 %.0.lcssa.i)
  %spec.store.select = select i1 %.not334, i32 %i.add, i32 %i.ada
  store i32 %spec.store.select, ptr %i.adb, align 4
  br label %.thread15

.thread13:                                        ; preds = %bb.at
  %i.ade = add i64 %.3294.in, 15                  ; 2 uses
  %i.adf = tail call noalias ptr @malloc(i64 noundef %i.ade) #53 ; 2 uses
  %i.adg = icmp eq ptr %i.adf, null
  br i1 %i.adg, label %.thread15, label %bb.q

.thread15:                                        ; preds = %.thread13, %.loopexit, %bb.h
  %.2311 = phi ptr [ null, %bb.h ], [ %i.ev, %.loopexit ], [ null, %.thread13 ]
  ret ptr %.2311
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.cmp.ss(<4 x float>, <4 x float>, i8 immarg) #47

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_trapezoid(float noundef %0, float noundef %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fmul float %1, 5.000000e-01              ; 2 uses
  %i.b = fadd float %i.a, 5.000000e-01            ; 2 uses
  %i.c = fcmp olt float %0, 0.000000e+00
  %i.d = fneg float %0
  %.013 = select i1 %i.c, float %i.d, float %0    ; 3 uses
  %i.e = fcmp ult float %.013, %i.b
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fsub float 5.000000e-01, %i.a
  %i.g = fcmp ugt float %.013, %i.f
  %i.h = fsub float %i.b, %.013
  %i.i = fdiv float %i.h, %1
  %.0 = select i1 %i.g, float %i.i, float 1.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi float [ %.0, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__filter_triangle(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.05 = select i1 %i.a, float %i.b, float %0     ; 2 uses
  %i.c = fcmp ugt float %.05, 1.000000e+00
  %i.d = fsub float 1.000000e+00, %.05
  %.0 = select i1 %i.c, float 0.000000e+00, float %i.d
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_cubic(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 3.000000e+00
  %i.f = fadd nnan float %i.e, -6.000000e+00
  %i.g = fmul float %i.d, %i.f
  %i.h = fadd float %i.g, 4.000000e+00
  %i.i = fdiv float %i.h, 6.000000e+00
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %.011, 2.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = fsub nnan float 6.000000e+00, %.011
  %i.l = fmul nnan float %.011, %i.k
  %i.m = fadd nnan float %i.l, -1.200000e+01
  %i.n = fmul nnan float %.011, %i.m
  %i.o = fadd float %i.n, 8.000000e+00
  %i.p = fdiv float %i.o, 6.000000e+00
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.i, %bb.b ], [ %i.p, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_catmullrom(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 1.500000e+00
  %i.f = fsub nnan float 2.500000e+00, %i.e
  %i.g = fmul float %i.d, %i.f
  %i.h = fsub float 1.000000e+00, %i.g
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp olt float %.011, 2.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul nnan float %.011, 5.000000e-01
  %i.k = fadd nnan float %i.j, -2.500000e+00
  %i.l = fmul nnan float %.011, %i.k
  %i.m = fadd nnan float %i.l, 4.000000e+00
  %i.n = fmul nnan float %.011, %i.m
  %i.o = fsub float 2.000000e+00, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.h, %bb.b ], [ %i.o, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal float @stbir__filter_mitchell(float noundef %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  %i.a = fcmp olt float %0, 0.000000e+00
  %i.b = fneg float %0
  %.011 = select i1 %i.a, float %i.b, float %0    ; 8 uses
  %i.c = fcmp olt float %.011, 1.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = fmul float %.011, %.011
  %i.e = fmul nnan float %.011, 2.100000e+01
  %i.f = fadd nnan float %i.e, -3.600000e+01
  %i.g = fmul float %i.d, %i.f
  %i.h = fadd float %i.g, 1.600000e+01
  %i.i = fdiv float %i.h, 1.800000e+01
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = fcmp olt float %.011, 2.000000e+00
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = fmul nnan float %.011, 7.000000e+00
  %i.l = fsub nnan float 3.600000e+01, %i.k
  %i.m = fmul nnan float %.011, %i.l
  %i.n = fadd nnan float %i.m, -6.000000e+01
  %i.o = fmul nnan float %.011, %i.n
  %i.p = fadd float %i.o, 3.200000e+01
  %i.q = fdiv float %i.p, 1.800000e+01
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.i, %bb.b ], [ %i.q, %bb.d ], [ 0.000000e+00, %bb.c ]
  ret float %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__filter_point(float %0, float %1, ptr nofree readnone captures(none) %2) #7 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__support_trapezoid(float noundef %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = fmul float %0, 5.000000e-01
  %i.b = fadd float %i.a, 5.000000e-01
  ret float %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__support_one(float %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__support_two(float %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  ret float 2.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef float @stbir__support_zeropoint5(float %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  ret float 5.000000e-01
}

; Function Attrs: nounwind uwtable
define internal void @stbir__fancy_alpha_weight_4ch(ptr noundef %0, i32 noundef %1) #24 {
bb.a:
  %i.a = sdiv i32 %1, 4
  %i.b = mul nsw i32 %i.a, 7
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c ; 3 uses
  %i.e = sext i32 %1 to i64
  %.neg = mul nsw i64 %i.e, -4
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %.neg ; 3 uses
  %.not44 = icmp slt i32 %1, 8
  br i1 %.not44, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.04043 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04047 = phi ptr [ %.040, %.lr.ph ], [ %.04043, %.lr.ph.preheader ] ; 4 uses
  %.046 = phi ptr [ %i.q, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.pn45 = phi ptr [ %.04047, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.04047) #52, !srcloc !563
  %i.g = load <4 x float>, ptr %.pn45, align 1    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn45, i64 16
  %i.i = load <4 x float>, ptr %i.h, align 1      ; 3 uses
  %i.j = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.k = shufflevector <4 x float> %i.i, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.l = fmul <4 x float> %i.g, %i.j
  %i.m = fmul <4 x float> %i.i, %i.k
  store <4 x float> %i.g, ptr %.046, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.046, i64 16
  store <4 x float> %i.l, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.046, i64 28
  store <4 x float> %i.i, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.046, i64 44
  store <4 x float> %i.m, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.046, i64 56 ; 2 uses
  %.040 = getelementptr inbounds nuw i8, ptr %.04047, i64 32 ; 2 uses
  %.not = icmp ugt ptr %.040, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !562

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.pn.lcssa = phi ptr [ %i.f, %bb.a ], [ %.04047, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.r = icmp ult ptr %.pn.lcssa, %i.d
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull %.pn.lcssa) #52, !srcloc !564
  %i.s = load <4 x float>, ptr %.pn.lcssa, align 1 ; 3 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.u = fmul <4 x float> %i.s, %i.t
  store <4 x float> %i.s, ptr %.0.lcssa, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  store <4 x float> %i.u, ptr %i.v, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @stbir__fancy_alpha_weight_2ch(ptr noundef %0, i32 noundef %1) #24 {
bb.a:
  %i.a = sdiv i32 %1, 2
  %i.b = mul nsw i32 %i.a, 3
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %i.c ; 4 uses
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 2
  %i.g = sub nsw i64 32, %i.f
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 %i.g ; 2 uses
  %.not = icmp slt i32 %1, 8
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.049 = phi ptr [ %i.af, %.preheader ], [ %i.h, %bb.a ] ; 4 uses
  %.0 = phi ptr [ %i.ag, %.preheader ], [ %0, %bb.a ] ; 7 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr %.049) #52, !srcloc !567
  %i.i = getelementptr inbounds i8, ptr %.049, i64 -32
  %i.j = load <4 x float>, ptr %i.i, align 1      ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %.049, i64 -16
  %i.l = load <4 x float>, ptr %i.k, align 1      ; 4 uses
  %i.m = bitcast <4 x float> %i.j to <2 x i64>
end_hunk_2
