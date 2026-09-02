Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 119
begin_hunk_0_@GenImageGradientSquare:bb.a
  %i.de = fsub nnan float 1.000000e+00, %i.dd
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.df = insertelement <4 x float> poison, float %i.dd, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dh = fmul nnan <4 x float> %i.dg, %i.p
  %i.di = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = fmul <4 x float> %i.dj, %i.u
  %i.dl = fadd <4 x float> %i.dh, %i.dk
  %i.dm = fptosi <4 x float> %i.dl to <4 x i32>
  %i.dn = trunc <4 x i32> %i.dm to <4 x i8>
  store <4 x i8> %i.dn, ptr %gep, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.v
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !105
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
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 4 uses
  %i.e = icmp sgt i32 %2, 0
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge28.split

.preheader.preheader:                             ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64                  ; 3 uses
  %wide.trip.count33 = zext nneg i32 %2 to i64
  %xtraiter = and i64 %i.g, 1
  %i.h = icmp eq i32 %1, 1
  %unroll_iter = and i64 %i.g, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod38 = trunc i32 %1 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv30 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next31, %._crit_edge ] ; 3 uses
  %i.i = trunc nuw nsw i64 %indvars.iv30 to i32
  %i.j = sdiv i32 %i.i, %4                        ; 3 uses
  %i.k = mul nuw nsw i64 %indvars.iv30, %i.g      ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %invariant.gep36.invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %invariant.gep36.invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  br label %bb.b

._crit_edge28.split:                              ; preds = %._crit_edge, %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.o, align 4
  ret void

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.p = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.q = sdiv i32 %i.p, %3
  %i.r = add nsw i32 %i.j, %i.q
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  %invariant.gep36.invariant.gep.epil = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %..epil = select i1 %i.t, i32 %5, i32 %6
  %gep37.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep.epil, i64 %indvars.iv.epil.init
  store i32 %..epil, ptr %gep37.epil, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge28.split, label %.preheader

bb.b:                                             ; preds = %bb.b, %.preheader.new
  %indvars.iv = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.b ]
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = sdiv i32 %i.u, %3
  %i.w = add nsw i32 %i.j, %i.v
  %i.x = and i32 %i.w, 1
  %i.y = icmp eq i32 %i.x, 0
  %. = select i1 %i.y, i32 %5, i32 %6
  %gep37 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep, i64 %indvars.iv
  store i32 %., ptr %gep37, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.aa = sdiv i32 %i.z, %3
  %i.ab = add nsw i32 %i.j, %i.aa
  %i.ac = and i32 %i.ab, 1
  %i.ad = icmp eq i32 %i.ac, 0
  %..1 = select i1 %i.ad, i32 %5, i32 %6
  %gep37.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep36.invariant.gep.1, i64 %indvars.iv.next
  store i32 %..1, ptr %gep37.1, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b
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
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.ac, align 4
  ret void

._crit_edge:                                      ; preds = %stb_perlin_fbm_noise3.exit
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge47.split, label %.preheader

bb.b:                                             ; preds = %.preheader, %stb_perlin_fbm_noise3.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %stb_perlin_fbm_noise3.exit ] ; 3 uses
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = add i32 %3, %i.ad
  %i.af = sitofp i32 %i.ae to float
  %i.ag = fmul float %i.s, %i.af                  ; 2 uses
  %i.ah = fmul float %i.j, %i.ag
  %.041 = select i1 %i.p, float %i.ah, float %i.ag
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.022.i = phi float [ %i.he, %.lr.ph.i ], [ 0.000000e+00, %bb.b ]
  %.01819.i = phi i32 [ %i.hg, %.lr.ph.i ], [ 0, %bb.b ] ; 3 uses
  %i.ai = phi <2 x float> [ %i.hf, %.lr.ph.i ], [ splat (float 1.000000e+00), %bb.b ] ; 4 uses
  %6 = extractelement <2 x float> %i.ai, i64 1    ; 2 uses
  %7 = fmul float %.041, %6                       ; 3 uses
  %8 = fmul float %.042, %6
  %9 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %9, float %8, i64 1 ; 3 uses
  %11 = fptosi <2 x float> %10 to <2 x i32>       ; 2 uses
  %12 = fptosi float %7 to i32                    ; 2 uses
  %i.aj = sitofp <2 x i32> %11 to <2 x float>
  %13 = sitofp i32 %12 to float
  %i.ak = fcmp olt <2 x float> %10, %i.aj
  %14 = fcmp olt float %7, %13
  %i.al = sext <2 x i1> %i.ak to <2 x i32>
  %15 = sext i1 %14 to i32
  %i.am = add nsw <2 x i32> %i.al, %11            ; 3 uses
  %16 = add nsw i32 %15, %12                      ; 3 uses
  %i.an = and i32 %16, 255
  %i.ao = add nsw i32 %16, 1
  %i.ap = and i32 %i.ao, 255
  %i.aq = extractelement <2 x i32> %i.am, i64 1   ; 2 uses
  %i.ar = and i32 %i.aq, 255                      ; 2 uses
  %i.as = add nsw i32 %i.aq, 1
  %i.at = and i32 %i.as, 255                      ; 2 uses
  %i.au = extractelement <2 x i32> %i.am, i64 0   ; 2 uses
  %i.av = and i32 %i.au, 255                      ; 4 uses
  %i.aw = add nsw i32 %i.au, 1
  %i.ax = and i32 %i.aw, 255                      ; 4 uses
  %i.ay = sitofp <2 x i32> %i.am to <2 x float>
  %17 = sitofp i32 %16 to float
  %18 = fsub float %7, %17                        ; 6 uses
  %i.az = tail call float @llvm.fmuladd.f32(float %18, float 6.000000e+00, float -1.500000e+01)
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %18, float 1.000000e+01)
  %i.bb = fmul float %18, %i.ba
  %i.bc = fmul float %18, %i.bb
  %i.bd = fmul float %18, %i.bc
  %i.be = fsub <2 x float> %10, %i.ay             ; 8 uses
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.be, <2 x float> splat (float 6.000000e+00), <2 x float> splat (float -1.500000e+01))
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.be, <2 x float> splat (float 1.000000e+01))
  %i.bh = fmul <2 x float> %i.be, %i.bg
  %i.bi = fmul <2 x float> %i.be, %i.bh
  %i.bj = fmul <2 x float> %i.be, %i.bi           ; 2 uses
  %i.bk = add nuw nsw i32 %i.an, %.01819.i
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = add nuw nsw i32 %i.ap, %.01819.i
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  %i.bu = add nuw nsw i32 %i.ar, %i.bo
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = add nuw nsw i32 %i.at, %i.bo
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = add nuw nsw i32 %i.ar, %i.bt
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = add nuw nsw i32 %i.at, %i.bt
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = add nuw nsw i32 %i.av, %i.by
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.cs ; 2 uses
  %i.cu = load <2 x float>, ptr %i.ct, align 16   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cw = load float, ptr %i.cv, align 8
  %i.cx = add nuw nsw i32 %i.ax, %i.by
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.db ; 2 uses
  %i.dd = load <2 x float>, ptr %i.dc, align 16   ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load float, ptr %i.de, align 8
  %i.dg = add nuw nsw i32 %i.av, %i.cd
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = fadd <2 x float> %i.be, splat (float -1.000000e+00) ; 2 uses
  %i.dl = zext i8 %i.dj to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.dl ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dm, align 16   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load float, ptr %i.do, align 8
  %i.dq = add nuw nsw i32 %i.ax, %i.cd
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.du ; 2 uses
  %i.dw = load <2 x float>, ptr %i.dv, align 16   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load float, ptr %i.dx, align 8
  %i.dz = add nuw nsw i32 %i.av, %i.ci
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %19 = insertelement <2 x float> poison, float %18, i64 0
  %i.ed = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fadd <2 x float> %i.ed, <float -1.000000e+00, float -0.000000e+00> ; 4 uses
  %i.ef = zext i8 %i.ec to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.ef ; 2 uses
  %i.eh = load <2 x float>, ptr %i.eg, align 16   ; 2 uses
  %i.ei = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ej = shufflevector <2 x float> %i.eh, <2 x float> %i.cu, <2 x i32> <i32 1, i32 3>
  %i.ek = fmul <2 x float> %i.ei, %i.ej
  %i.el = shufflevector <2 x float> %i.eh, <2 x float> %i.cu, <2 x i32> <i32 0, i32 2>
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.ee, <2 x float> %i.ek)
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.eo = load float, ptr %i.en, align 8
  %i.ep = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.cw, i64 1
  %i.er = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.er, <2 x float> %i.em) ; 2 uses
  %i.et = add nuw nsw i32 %i.ax, %i.ci
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1
  %i.ex = zext i8 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.ex ; 2 uses
  %i.ez = load <2 x float>, ptr %i.ey, align 16   ; 2 uses
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> %i.dd, <2 x i32> <i32 1, i32 3>
  %i.fb = fmul <2 x float> %i.ei, %i.fa
  %i.fc = shufflevector <2 x float> %i.ez, <2 x float> %i.dd, <2 x i32> <i32 0, i32 2>
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.ee, <2 x float> %i.fb)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ff = load float, ptr %i.fe, align 8
  %i.fg = insertelement <2 x float> poison, float %i.ff, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.df, i64 1
  %i.fi = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fi, <2 x float> %i.fd)
  %i.fk = add nuw nsw i32 %i.av, %i.cn
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.fo ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fp, align 16   ; 2 uses
  %i.fr = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fs = shufflevector <2 x float> %i.fq, <2 x float> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.ft = fmul <2 x float> %i.fr, %i.fs
  %i.fu = shufflevector <2 x float> %i.fq, <2 x float> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.ee, <2 x float> %i.ft)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fx = load float, ptr %i.fw, align 8
  %i.fy = insertelement <2 x float> poison, float %i.fx, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %i.dp, i64 1
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.er, <2 x float> %i.fv) ; 2 uses
  %i.gb = add nuw nsw i32 %i.ax, %i.cn
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr @stb__perlin_randtab_grad_idx, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr @stb__perlin_grad.basis, i64 %i.gf ; 2 uses
  %i.gh = load <2 x float>, ptr %i.gg, align 16   ; 2 uses
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> %i.dw, <2 x i32> <i32 1, i32 3>
  %i.gj = fmul <2 x float> %i.fr, %i.gi
  %i.gk = shufflevector <2 x float> %i.gh, <2 x float> %i.dw, <2 x i32> <i32 0, i32 2>
  %i.gl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ee, <2 x float> %i.gj)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gn = load float, ptr %i.gm, align 8
  %i.go = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gp = insertelement <2 x float> %i.go, float %i.dy, i64 1
  %i.gq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.fi, <2 x float> %i.gl)
  %i.gr = fsub <2 x float> %i.fj, %i.es
  %i.gs = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gr, <2 x float> %i.gs, <2 x float> %i.es) ; 2 uses
  %i.gu = fsub <2 x float> %i.gq, %i.ga
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gu, <2 x float> %i.gs, <2 x float> %i.ga)
  %i.gw = fsub <2 x float> %i.gv, %i.gt
  %i.gx = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.gx, <2 x float> %i.gt) ; 2 uses
  %i.gz = extractelement <2 x float> %i.gy, i64 0
  %i.ha = extractelement <2 x float> %i.gy, i64 1 ; 2 uses
  %i.hb = fsub float %i.gz, %i.ha
  %i.hc = tail call noundef float @llvm.fmuladd.f32(float %i.hb, float %i.bd, float %i.ha)
  %i.hd = extractelement <2 x float> %i.ai, i64 0
  %i.he = tail call float @llvm.fmuladd.f32(float %i.hc, float %i.hd, float %.022.i) ; 3 uses
  %i.hf = fmul <2 x float> %i.ai, <float 5.000000e-01, float 2.000000e+00>
  %i.hg = add nuw nsw i32 %.01819.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hg, 6
  br i1 %exitcond.not.i, label %stb_perlin_fbm_noise3.exit, label %.lr.ph.i

stb_perlin_fbm_noise3.exit:                       ; preds = %.lr.ph.i
  %i.hh = fcmp olt float %i.he, -1.000000e+00
  %spec.store.select = select i1 %i.hh, float -1.000000e+00, float %i.he ; 2 uses
  %i.hi = fcmp ogt float %spec.store.select, 1.000000e+00
  %spec.store.select1 = select i1 %i.hi, float 1.000000e+00, float %spec.store.select
  %i.hj = fadd float %spec.store.select1, 1.000000e+00
  %i.hk = fmul float %i.hj, 5.000000e-01
  %i.hl = fmul float %i.hk, 2.550000e+02
  %i.hm = fptoui float %i.hl to i8                ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 4 uses
  store i8 %i.hm, ptr %gep, align 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 1
  store i8 %i.hm, ptr %.sroa.2.0..sroa_idx, align 1
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 2
  store i8 %i.hm, ptr %.sroa.3.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %gep, i64 3
  store i8 -1, ptr %.sroa.4.0..sroa_idx, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @GenImageCellular(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Image) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = mul nsw i32 %2, %1
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #53 ; 2 uses
  %i.e = sdiv i32 %1, %3                          ; 15 uses
  %i.f = sdiv i32 %2, %3                          ; 8 uses
  %i.g = mul nsw i32 %i.f, %i.e                   ; 3 uses
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #53 ; 11 uses
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph, label %.preheader88

.lr.ph:                                           ; preds = %bb.a
  %i.l = add nsw i32 %3, -1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %bb.b

.preheader88:                                     ; preds = %bb.b, %bb.a
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph97, label %._crit_edge98.split

.lr.ph97:                                         ; preds = %.preheader88
  %i.n = icmp sgt i32 %1, 0
  %i.o = sitofp i32 %3 to float
  br i1 %i.n, label %.lr.ph95.preheader, label %._crit_edge98.split

.lr.ph95.preheader:                               ; preds = %.lr.ph97
  %i.p = sext i32 %i.e to i64
  %i.q = sext i32 %i.f to i64                     ; 3 uses
  %i.r = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count128 = zext nneg i32 %2 to i64
  br label %.lr.ph95

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.t = sdiv i32 %i.s, %i.e
  %i.u = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef %i.l) #52
  %i.v = srem i32 %i.s, %i.e
  %i.w = tail call i32 @GetRandomValue(i32 noundef 0, i32 noundef %i.l) #52
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.y = mul nsw i32 %i.t, %3
  %i.z = mul nsw i32 %i.v, %3
  %i.aa = add nsw i32 %i.y, %i.u
  %i.ab = add nsw i32 %i.z, %i.w
  %i.ac = insertelement <2 x i32> poison, i32 %i.ab, i64 0
  %i.ad = insertelement <2 x i32> %i.ac, i32 %i.aa, i64 1
  %i.ae = sitofp <2 x i32> %i.ad to <2 x float>
  store <2 x float> %i.ae, ptr %i.x, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader88, label %bb.b

._crit_edge98.split:                              ; preds = %._crit_edge, %.lr.ph97, %.preheader88
  tail call void @free(ptr noundef %i.j) #52
  store ptr %i.d, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %2, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 7, ptr %i.ai, align 4
  ret void

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %._crit_edge
  %indvars.iv125 = phi i64 [ 0, %.lr.ph95.preheader ], [ %indvars.iv.next126, %._crit_edge ] ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv125 to i32     ; 2 uses
  %i.ak = sdiv i32 %i.aj, %3                      ; 22 uses
  %i.al = mul nuw nsw i64 %indvars.iv125, %i.r
  %i.am = sext i32 %i.ak to i64                   ; 3 uses
  %i.an = icmp sgt i32 %i.ak, 0
  %.not86 = icmp sle i32 %i.ak, %i.f
  %or.cond87 = and i1 %i.an, %.not86
  %i.ao = add nsw i32 %i.ak, -1
  %i.ap = mul i32 %i.ao, %i.e
  %i.aq = icmp sgt i32 %i.ak, -1
  %.not86.1 = icmp slt i32 %i.ak, %i.f
  %or.cond87.1 = and i1 %i.aq, %.not86.1
  %i.ar = mul i32 %i.ak, %i.e
  %i.as = add nsw i64 %i.am, 1                    ; 2 uses
  %i.at = icmp sgt i32 %i.ak, -2
  %.not86.2 = icmp slt i64 %i.as, %i.q
  %or.cond87.2 = and i1 %i.at, %.not86.2
  %i.au = trunc i64 %i.as to i32
  %i.av = mul i32 %i.e, %i.au
  %i.aw = icmp sgt i32 %i.ak, 0
  %.not86.1108 = icmp sle i32 %i.ak, %i.f
  %or.cond87.1109 = and i1 %i.aw, %.not86.1108
end_hunk_0
