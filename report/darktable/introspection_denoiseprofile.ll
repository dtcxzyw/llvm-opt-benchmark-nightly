Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_denoiseprofile?download=true
inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 84
begin_hunk_0_@flags:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @default_colorspace(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @tiling_callback(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef writeonly captures(none) initializes((0, 12), (16, 28)) %4) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !113 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.c, align 4, !tbaa !120
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.d, align 4, !tbaa !122
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 4, !tbaa !99
  switch i32 %i.f, label %bb.c [
    i32 0, label %bb.b
    i32 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.g = load float, ptr %i.b, align 4, !tbaa !123
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !124
  %i.j = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.i, float 2.000000e+00)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.l = load float, ptr %i.k, align 8, !tbaa !125
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.l, float 1.000000e+00)
  %i.n = fdiv reassoc nsz arcp contract afn float %i.j, %i.m
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.n, float 1.000000e+00) ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.g
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.p)
  %i.r = fptosi float %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !126
  %i.u = fmul reassoc nsz arcp contract afn float %i.o, %i.t
  %i.v = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.u)
  %i.w = fptosi float %i.v to i32                 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !127
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = mul nsw i32 %i.w, %i.w
  %i.ab = mul nsw i32 %i.aa, %i.w
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.ab to double
  %i.ad = sitofp reassoc nsz arcp contract afn i32 %i.w to double ; 2 uses
  %i.ae = fmul reassoc nnan nsz arcp contract afn double %i.ad, 7.000000e+00
  %i.af = tail call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.ad)
  %i.ag = fmul reassoc nsz arcp contract afn double %i.ae, %i.af
  %i.ah = fadd reassoc nsz arcp contract afn double %i.ag, %i.ac
  %i.ai = fmul reassoc nsz arcp contract afn double %i.z, f0x3FC5555555555555
  %i.aj = fmul reassoc nsz arcp contract afn double %i.ai, %i.ah
  %i.ak = fptrunc reassoc nsz arcp contract afn double %i.aj to float
  %i.al = tail call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ak)
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.w to float
  %i.an = fadd reassoc nsz arcp contract afn float %i.al, %i.am
  %i.ao = fptosi float %i.an to i32
  store <2 x float> <float 2.250000e+00, float 5.000000e+00>, ptr %4, align 4, !tbaa !16
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 1.000000e+00, ptr %i.ap, align 4, !tbaa !128
  %i.aq = add nsw i32 %i.ao, %i.r
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = load float, ptr %i.ar, align 4, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.au = load float, ptr %i.at, align 8, !tbaa !125 ; 3 uses
  %i.av = fdiv reassoc nsz arcp contract afn float %i.as, %i.au
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.av, float 1.000000e+00) ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ay = load <2 x i32>, ptr %i.ax, align 16, !tbaa !41
  %i.az = sitofp <2 x i32> %i.ay to <2 x float>   ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 1
  %i.bb = fmul reassoc nsz arcp contract afn float %i.au, %i.ba
  %i.bc = extractelement <2 x float> %i.az, i64 0
  %i.bd = fmul reassoc nsz arcp contract afn float %i.au, %i.bc
  %i.be = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bb, float %i.bd)
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, 2.000000e-01
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bf, float 2.570000e+02)
  %i.bh = fmul reassoc nnan nsz arcp contract afn float %i.bg, 5.000000e-01
  %i.bi = fadd reassoc nsz arcp contract afn float %i.bh, -5.000000e-01
  %i.bj = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bi) ; 7 uses
  %.reass = fdiv reassoc nsz arcp contract afn float 2.500000e+00, %i.aw
  %i.bk = fadd reassoc nsz arcp contract afn float %.reass, -5.000000e-01
  %i.bl = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bk)
  %i.bm = fadd reassoc nsz arcp contract afn float %i.bl, -5.000000e-01
  %i.bn = fdiv reassoc nsz arcp contract afn float %i.bm, %i.bj
  %i.bo = fcmp reassoc nsz arcp contract afn ogt float %i.bn, 1.000000e+00
  br i1 %i.bo, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.reass.1 = fdiv reassoc nsz arcp contract afn float 4.500000e+00, %i.aw
  %i.bp = fadd reassoc nsz arcp contract afn float %.reass.1, -5.000000e-01
  %i.bq = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bp)
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, -5.000000e-01
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.br, %i.bj
  %i.bt = fcmp reassoc nsz arcp contract afn ogt float %i.bs, 1.000000e+00
  br i1 %i.bt, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.reass.2 = fdiv reassoc nsz arcp contract afn float 8.500000e+00, %i.aw
  %i.bu = fadd reassoc nsz arcp contract afn float %.reass.2, -5.000000e-01
  %i.bv = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bu)
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, -5.000000e-01
  %i.bx = fdiv reassoc nsz arcp contract afn float %i.bw, %i.bj
  %i.by = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 1.000000e+00
  br i1 %i.by, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.reass.3 = fdiv reassoc nsz arcp contract afn float 1.650000e+01, %i.aw
  %i.bz = fadd reassoc nsz arcp contract afn float %.reass.3, -5.000000e-01
  %i.ca = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.bz)
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, -5.000000e-01
  %i.cc = fdiv reassoc nsz arcp contract afn float %i.cb, %i.bj
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %i.cc, 1.000000e+00
  br i1 %i.cd, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.reass.4 = fdiv reassoc nsz arcp contract afn float 3.250000e+01, %i.aw
  %i.ce = fadd reassoc nsz arcp contract afn float %.reass.4, -5.000000e-01
  %i.cf = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.ce)
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, -5.000000e-01
  %i.ch = fdiv reassoc nsz arcp contract afn float %i.cg, %i.bj
  %i.ci = fcmp reassoc nsz arcp contract afn ogt float %i.ch, 1.000000e+00
  br i1 %i.ci, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.reass.5 = fdiv reassoc nsz arcp contract afn float 6.450000e+01, %i.aw
  %i.cj = fadd reassoc nsz arcp contract afn float %.reass.5, -5.000000e-01
  %i.ck = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.cj)
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, -5.000000e-01
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.cl, %i.bj
  %i.cn = fcmp reassoc nsz arcp contract afn ogt float %i.cm, 1.000000e+00
  br i1 %i.cn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.reass.6 = fdiv reassoc nsz arcp contract afn float 1.285000e+02, %i.aw
  %i.co = fadd reassoc nsz arcp contract afn float %.reass.6, -5.000000e-01
  %i.cp = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.co)
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, -5.000000e-01
  %i.cr = fdiv reassoc nsz arcp contract afn float %i.cq, %i.bj
  %i.cs = fcmp reassoc nsz arcp contract afn ogt float %i.cr, 1.000000e+00
  br i1 %i.cs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.048.lcssa = phi i32 [ 0, %bb.c ], [ 7, %bb.j ], [ 1, %bb.d ], [ 6, %bb.i ], [ 2, %bb.e ], [ 4, %bb.g ], [ 3, %bb.f ], [ 5, %bb.h ] ; 2 uses
  %i.ct = shl nuw nsw i32 1, %.048.lcssa
  store float 5.000000e+00, ptr %4, align 4, !tbaa !129
  %i.cu = uitofp nneg i32 %.048.lcssa to float
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, 3.500000e+00
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.cv, ptr %i.cw, align 4, !tbaa !130
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.cx, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b
  %.sink = phi i32 [ %i.ct, %bb.k ], [ %i.aq, %bb.b ]
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %.sink, ptr %i.cy, align 4, !tbaa !131
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = alloca [256 x i8], align 16              ; 4 uses
  %i.d = alloca [256 x i8], align 16              ; 4 uses
  %i.e = alloca [256 x i8], align 16              ; 4 uses
  %i.f = alloca ptr, align 8                      ; 8 uses
  %i.g = alloca ptr, align 8                      ; 8 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca [4 x float], align 16             ; 4 uses
  %i.j = alloca [4 x float], align 16             ; 4 uses
  %i.k = alloca [4 x float], align 16             ; 4 uses
  %i.l = alloca [4 x float], align 16             ; 7 uses
  %i.m = alloca [4 x float], align 16             ; 5 uses
  %i.n = alloca [4 x float], align 16             ; 4 uses
  %i.o = alloca [4 x float], align 16             ; 4 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca [4 x float], align 16             ; 6 uses
  %i.r = alloca [4 x float], align 16             ; 4 uses
  %i.s = alloca [4 x float], align 16             ; 4 uses
  %i.t = alloca [4 x float], align 16             ; 4 uses
  %i.u = alloca [4 x float], align 16             ; 4 uses
  %6 = alloca %struct.dt_nlmeans_param_t, align 8 ; 14 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !113 ; 30 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.y = load i32, ptr %i.x, align 4, !tbaa !99
  switch i32 %i.y, label %bb.az [
    i32 0, label %bb.b
    i32 3, label %bb.b
    i32 1, label %bb.q
    i32 4, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.z = load ptr, ptr %1, align 16, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !133
  %i.ac = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %i.z, i32 noundef %i.ab, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %process_nlmeans.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %i.ad = load ptr, ptr %1, align 16, !tbaa !132
  %i.ae = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %i.ad, ptr noundef %4, ptr noundef %5, i32 noundef 1048580, ptr noundef nonnull %i.p, i32 noundef 0) #18
  %.not39.i = icmp eq i32 %i.ae, 0
  br i1 %.not39.i, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load float, ptr %i.af, align 4, !tbaa !124
  %i.ah = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ag, float 2.000000e+00)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !125
  %i.ak = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aj, float 1.000000e+00)
  %i.al = fdiv reassoc nsz arcp contract afn float %i.ah, %i.ak
  %i.am = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.al, float 1.000000e+00) ; 8 uses
  %i.an = load float, ptr %i.w, align 8, !tbaa !134
  %i.ao = fmul reassoc nsz arcp contract afn float %i.am, %i.an
  %i.ap = call reassoc nsz arcp contract afn float @llvm.ceil.f32(float %i.ao)
  %i.aq = fptosi float %i.ap to i32               ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !136
  %i.at = fptosi float %i.as to i32               ; 9 uses
  %i.au = getelementptr i8, ptr %i.w, i64 20
  %.val.i = load float, ptr %i.au, align 4, !tbaa !137 ; 3 uses
  %i.av = getelementptr i8, ptr %1, i64 8
  %.val40.i = load ptr, ptr %i.av, align 8, !tbaa !138 ; 6 uses
  %i.aw = getelementptr i8, ptr %.val40.i, i64 644
  %.val40.val.i = load i32, ptr %i.aw, align 4, !tbaa !139 ; 2 uses
  %i.ax = mul nsw i32 %i.at, %i.at
  %i.ay = mul nsw i32 %i.ax, %i.at
  %i.az = sitofp reassoc nsz arcp contract afn i32 %i.ay to double
  %i.ba = sitofp reassoc nsz arcp contract afn i32 %i.at to double ; 3 uses
  %i.bb = fmul reassoc nnan nsz arcp contract afn double %i.ba, 7.000000e+00
  %i.bc = call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.ba)
  %i.bd = fmul reassoc nsz arcp contract afn double %i.bb, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn double %i.bd, %i.az
  %i.bf = fpext reassoc nsz arcp contract afn float %.val.i to double
  %i.bg = fmul reassoc nsz arcp contract afn double %i.bf, f0x3FC5555555555555
  %i.bh = fmul reassoc nsz arcp contract afn double %i.bg, %i.be
  %i.bi = fadd reassoc nsz arcp contract afn double %i.bh, %i.ba
  %i.bj = fptosi double %i.bi to i32              ; 2 uses
  %i.bk = and i32 %.val40.val.i, 268
  %or.cond1.i.i = icmp eq i32 %i.bk, 0
  br i1 %or.cond1.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = call i32 @llvm.smin.i32(i32 %i.at, i32 3) ; 6 uses
  %i.bm = sub nsw i32 %i.bj, %i.bl
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.bm to double
  %i.bo = fmul reassoc nnan nsz arcp contract afn double %i.bn, 6.000000e+00
  %i.bp = mul nsw i32 %i.bl, %i.bl
  %i.bq = mul nsw i32 %i.bp, %i.bl
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to double
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.bl to double ; 2 uses
  %i.bt = fmul reassoc nnan nsz arcp contract afn double %i.bs, 7.000000e+00
  %i.bu = call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.bs)
  %i.bv = fmul reassoc nsz arcp contract afn double %i.bt, %i.bu
  %i.bw = fadd reassoc nsz arcp contract afn double %i.bv, %i.br
  %i.bx = fdiv reassoc nsz arcp contract afn double %i.bo, %i.bw
  %i.by = fptrunc reassoc nsz arcp contract afn double %i.bx to float
  br label %nlmeans_scattering.exit.i

bb.f:                                             ; preds = %bb.d
  %i.bz = and i32 %.val40.val.i, 18
  %.not44.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not44.i.i, label %nlmeans_scattering.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !147
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 2616
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !185
  %.not45.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not45.i.i, label %bb.h, label %nlmeans_scattering.exit.i

bb.h:                                             ; preds = %bb.g
  %i.cd = call i32 @llvm.smin.i32(i32 %i.at, i32 4)
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.cd to float ; 2 uses
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.cg = fmul reassoc nsz arcp contract afn float %i.am, %i.cf ; 2 uses
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, %i.ce
  %..i.i = select reassoc nsz arcp contract afn i1 %i.ch, float %i.ce, float %i.cg
  %i.ci = fptosi float %..i.i to i32              ; 6 uses
  %i.cj = sub nsw i32 %i.bj, %i.ci
  %i.ck = sitofp reassoc nsz arcp contract afn i32 %i.cj to double
  %i.cl = fmul reassoc nnan nsz arcp contract afn double %i.ck, 6.000000e+00
  %i.cm = mul nsw i32 %i.ci, %i.ci
  %i.cn = mul nsw i32 %i.cm, %i.ci
  %i.co = sitofp reassoc nsz arcp contract afn i32 %i.cn to double
  %i.cp = sitofp reassoc nsz arcp contract afn i32 %i.ci to double ; 2 uses
  %i.cq = fmul reassoc nnan nsz arcp contract afn double %i.cp, 7.000000e+00
  %i.cr = call reassoc ninf nsz arcp contract afn double @llvm.sqrt.f64(double %i.cp)
  %i.cs = fmul reassoc nsz arcp contract afn double %i.cq, %i.cr
  %i.ct = fadd reassoc nsz arcp contract afn double %i.cs, %i.co
  %i.cu = fdiv reassoc nsz arcp contract afn double %i.cl, %i.ct
  %i.cv = fptrunc reassoc nsz arcp contract afn double %i.cu to float
  br label %nlmeans_scattering.exit.i

nlmeans_scattering.exit.i:                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.039.i.i = phi i32 [ %i.bl, %bb.e ], [ %i.at, %bb.g ], [ %i.ci, %bb.h ], [ %i.at, %bb.f ]
  %.0.i.i = phi nsz float [ %i.by, %bb.e ], [ %.val.i, %bb.g ], [ %i.cv, %bb.h ], [ %.val.i, %bb.f ]
  %i.cw = getelementptr i8, ptr %i.w, i64 288
  %.val41.i = load i32, ptr %i.cw, align 8, !tbaa !186
  %i.cx = shl nsw i32 %i.aq, 1
  %i.cy = or disjoint i32 %i.cx, 1                ; 3 uses
  %i.cz = mul nsw i32 %i.cy, %i.cy
  %i.da = uitofp nneg i32 %i.cz to float
  %i.db = fdiv reassoc nsz arcp contract afn float 4.500000e-02, %i.da
  %.not.i.i = icmp eq i32 %.val41.i, 0            ; 2 uses
  %i.dc = sitofp reassoc nsz arcp contract afn i32 %i.cy to float
  %i.dd = fdiv reassoc nsz arcp contract afn float 1.500000e-02, %i.dc
  %.0.i43.i = select nsz i1 %.not.i.i, float %i.dd, float %i.db
  %i.de = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.df = load float, ptr %i.de, align 8, !tbaa !187
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  %i.dh = load ptr, ptr %i.p, align 8, !tbaa !188 ; 13 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val40.i, i64 256
  %i.dj = load <2 x float>, ptr %i.di, align 16, !tbaa !16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.val40.i, i64 264
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !16 ; 2 uses
  %i.dm = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.dl, <2 x float> %i.dj)
  %i.dn = fmul reassoc nsz arcp contract afn float %i.dm, f0x3EAAAAAB ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  br i1 %.not.i.i, label %.preheader.i.i.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %nlmeans_scattering.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.val40.i, i64 272
  %i.dr = load <2 x float>, ptr %i.dq, align 16, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %.val40.i, i64 280
  %i.dt = getelementptr inbounds nuw i8, ptr %.val40.i, i64 284
  %i.du = load float, ptr %i.dt, align 4, !tbaa !16
  %i.dv = load float, ptr %i.ds, align 8, !tbaa !16
  %i.dw = fmul reassoc nsz arcp contract afn float %i.du, 0.000000e+00
  br label %compute_wb_factors.exit.i.i

bb.i:                                             ; preds = %nlmeans_scattering.exit.i
  %i.dx = fcmp reassoc nsz arcp contract afn une float %i.dn, 0.000000e+00
  br i1 %i.dx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.w, i64 284
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !189
  %.not31.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not31.i.i.i, label %bb.k, label %compute_wb_factors.exit.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ea = fcmp reassoc nsz arcp contract afn oeq float %i.dn, 0.000000e+00
  %i.eb = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  br i1 %i.ea, label %.preheader1.preheader.i.i.i, label %compute_wb_factors.exit.i.i

.preheader1.preheader.i.i.i:                      ; preds = %bb.k
  br label %compute_wb_factors.exit.i.i

compute_wb_factors.exit.i.i:                      ; preds = %.preheader1.preheader.i.i.i, %bb.k, %bb.j, %.preheader.i.i.i
  %i.ed = phi float [ %i.dw, %.preheader.i.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i.i ], [ %i.dn, %bb.k ], [ %i.dn, %bb.j ]
  %i.ee = phi float [ %i.dv, %.preheader.i.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i.i ], [ %i.dn, %bb.k ], [ %i.dl, %bb.j ] ; 2 uses
  %i.ef = phi <2 x float> [ %i.dr, %.preheader.i.i.i ], [ splat (float 1.000000e+00), %.preheader1.preheader.i.i.i ], [ %i.ec, %bb.k ], [ %i.dj, %bb.j ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !190 ; 3 uses
  %i.ei = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = fdiv reassoc nsz arcp contract afn <2 x float> %i.ej, %i.ef
  %i.el = fdiv reassoc nsz arcp contract afn float %i.am, %i.ee
  %i.em = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.el)
  %i.en = fmul reassoc nsz arcp contract afn float %i.em, 1.000000e-01
  %i.eo = fadd reassoc nsz arcp contract afn float %i.en, %i.eh ; 2 uses
  %i.ep = fcmp reassoc nsz arcp contract afn ogt float %i.eo, 0.000000e+00
  %i.eq = select reassoc nsz arcp contract afn i1 %i.ep, float %i.eo, float 0.000000e+00 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.eu = load float, ptr %i.er, align 8, !tbaa !191
  %i.ev = fmul reassoc nsz arcp contract afn float %i.eu, %i.am ; 3 uses
  %i.ew = load float, ptr %i.es, align 4, !tbaa !16 ; 2 uses
  %i.ex = load float, ptr %i.et, align 8, !tbaa !16 ; 3 uses
  %i.ey = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.ek)
  %i.ez = fmul reassoc nsz arcp contract afn <2 x float> %i.ey, splat (float 1.000000e-01)
  %i.fa = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fadd reassoc nsz arcp contract afn <2 x float> %i.ez, %i.fb ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fc, zeroinitializer
  %i.fe = select <2 x i1> %i.fd, <2 x float> %i.fc, <2 x float> zeroinitializer ; 2 uses
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fg = insertelement <4 x float> %i.ff, float 0.000000e+00, i64 3
  %i.fh = insertelement <4 x float> %i.fg, float %i.eq, i64 2 ; 2 uses
  store <4 x float> %i.fh, ptr %i.r, align 16, !tbaa !16
  %i.fi = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fmul reassoc nsz arcp contract afn <2 x float> %i.fj, %i.ef ; 5 uses
  store <2 x float> %i.fk, ptr %i.q, align 16, !tbaa !16
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ev, %i.ee ; 4 uses
  %i.fm = fmul reassoc nsz arcp contract afn float %i.ev, %i.ed ; 3 uses
  store float %i.fl, ptr %i.dp, align 8, !tbaa !16
  store float %i.fm, ptr %i.do, align 4, !tbaa !16
  %i.fn = insertelement <4 x float> poison, float %i.ew, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = shufflevector <2 x float> %i.fk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = insertelement <4 x float> %i.fp, float %i.fl, i64 2
  %i.fr = insertelement <4 x float> %i.fq, float %i.fm, i64 3 ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.fr ; 11 uses
  store <4 x float> %i.fs, ptr %i.s, align 16, !tbaa !16
  %i.ft = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fr ; 3 uses
  store <4 x float> %i.fv, ptr %i.t, align 16, !tbaa !16
  %i.fw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.eh
  %i.fx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e-02, float %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.w, i64 292 ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !192
  %.not.i44.i = icmp eq i32 %i.fz, 0
  %i.ga = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !193 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !194 ; 2 uses
  br i1 %.not.i44.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %compute_wb_factors.exit.i.i
  %i.ge = fmul reassoc nsz arcp contract afn float %i.ex, %i.fl
  %i.gf = extractelement <4 x float> %i.fs, i64 0
  %foldExtExtBinop257 = fdiv reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fs ; 2 uses
  %foldExtExtBinop259 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop257, %foldExtExtBinop257
  %i.gg = extractelement <4 x float> %foldExtExtBinop259, i64 0
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, 3.750000e-01 ; 2 uses
  %i.gi = extractelement <4 x float> %i.fs, i64 1
  %foldExtExtBinop261 = fdiv reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fs ; 2 uses
  %foldExtExtBinop263 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop261, %foldExtExtBinop261
  %7 = extractelement <4 x float> %foldExtExtBinop263, i64 1
  %i.gj = fadd reassoc nsz arcp contract afn float %7, 3.750000e-01 ; 2 uses
  %i.gk = extractelement <4 x float> %i.fs, i64 2 ; 2 uses
  %8 = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gk ; 2 uses
  %9 = fmul reassoc nsz arcp contract afn float %8, %8
  %i.gl = fadd reassoc nsz arcp contract afn float %9, 3.750000e-01 ; 2 uses
  %i.gm = sext i32 %i.gb to i64
  %i.gn = sext i32 %i.gd to i64
  %i.go = shl nsw i64 %i.gm, 2
  %i.gp = mul i64 %i.go, %i.gn                    ; 4 uses
  %.not.i61.i.i = icmp eq i64 %i.gp, 0
  br i1 %.not.i61.i.i, label %nlmeans_precondition.exit.i, label %.preheader.i62.i.i.preheader

.preheader.i62.i.i.preheader:                     ; preds = %bb.l
  %i.gq = add i64 %i.gp, -4                       ; 2 uses
  %i.gr = lshr exact i64 %i.gq, 2
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %min.iters.check227 = icmp ult i64 %i.gq, 28
  br i1 %min.iters.check227, label %.preheader.i62.i.i.preheader281, label %vector.memcheck220

vector.memcheck220:                               ; preds = %.preheader.i62.i.i.preheader
  %i.gt = shl i64 %i.gp, 2                        ; 2 uses
  %scevgep221 = getelementptr i8, ptr %i.dh, i64 %i.gt
  %scevgep222 = getelementptr i8, ptr %2, i64 %i.gt
  %bound0223 = icmp ult ptr %i.dh, %scevgep222
  %bound1224 = icmp ult ptr %2, %scevgep221
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.preheader.i62.i.i.preheader281, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck220
  %n.vec229 = and i64 %i.gs, 9223372036854775800  ; 3 uses
  %i.gu = shl i64 %n.vec229, 2
  %broadcast.splat231 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <8 x float> poison, float %i.gh, i64 0
  %broadcast.splat235 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert236 = insertelement <8 x float> poison, float %i.gj, i64 0
  %broadcast.splat239 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert240 = insertelement <8 x float> poison, float %i.gl, i64 0
  %broadcast.splat241 = shufflevector <8 x float> %broadcast.splatinsert240, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat243 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.gv = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat231
  %i.gw = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat235
  %i.gx = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat239
  %i.gy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat243
  %i.gz = shufflevector <8 x float> %broadcast.splatinsert232, <8 x float> %broadcast.splatinsert236, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph228
  %index245 = phi i64 [ 0, %vector.ph228 ], [ %index.next252, %vector.body244 ] ; 2 uses
  %i.ha = shl nuw i64 %index245, 2                ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ha
  %wide.vec246 = load <32 x float>, ptr %i.hb, align 4, !tbaa !16, !alias.scope !195 ; 4 uses
  %strided.vec247 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec248 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec249 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec250 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.hc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec247, %i.gv
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ha
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec248, %i.gw
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec249, %i.gx
  %i.hg = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat241, %i.hf
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec250, %i.gy
  %i.hi = shufflevector <8 x float> %i.hc, <8 x float> %i.he, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hj = fadd reassoc nsz arcp contract afn <16 x float> %i.gz, %i.hi
  %i.hk = shufflevector <8 x float> %i.hg, <8 x float> %i.hh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hl = shufflevector <16 x float> %i.hj, <16 x float> %i.hk, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.hm = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.hl, <32 x float> zeroinitializer)
  %i.hn = call reassoc nnan nsz arcp contract afn <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.hm)
  %interleaved.vec251 = fmul reassoc nnan nsz arcp contract afn <32 x float> %i.hn, splat (float 2.000000e+00)
  store <32 x float> %interleaved.vec251, ptr %i.hd, align 4, !tbaa !16, !alias.scope !198, !noalias !195
  %index.next252 = add nuw i64 %index245, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next252, %n.vec229
  br i1 %i.ho, label %middle.block253, label %vector.body244, !llvm.loop !200

middle.block253:                                  ; preds = %vector.body244
  %cmp.n254 = icmp eq i64 %i.gs, %n.vec229
  br i1 %cmp.n254, label %nlmeans_precondition.exit.i, label %.preheader.i62.i.i.preheader281

.preheader.i62.i.i.preheader281:                  ; preds = %vector.memcheck220, %.preheader.i62.i.i.preheader, %middle.block253
  %.02830.i.i.i.ph = phi i64 [ 0, %vector.memcheck220 ], [ 0, %.preheader.i62.i.i.preheader ], [ %i.gu, %middle.block253 ]
  %i.hp = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gf
  %i.hq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gi
  %i.hr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gk
  %i.hs = extractelement <4 x float> %i.fs, i64 3
  %i.ht = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hs
  br label %.preheader.i62.i.i

.preheader.i62.i.i:                               ; preds = %.preheader.i62.i.i.preheader281, %.preheader.i62.i.i
  %.02830.i.i.i = phi i64 [ %i.jc, %.preheader.i62.i.i ], [ %.02830.i.i.i.ph, %.preheader.i62.i.i.preheader281 ] ; 6 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02830.i.i.i
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !16
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hv, %i.hp
  %i.hx = fadd reassoc nsz arcp contract afn float %i.gh, %i.hw
  %i.hy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.hx, float 0.000000e+00)
  %i.hz = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.hy)
  %i.ia = fmul reassoc nnan nsz arcp contract afn float %i.hz, 2.000000e+00
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.02830.i.i.i
  store float %i.ia, ptr %i.ib, align 4, !tbaa !16
  %i.ic = or disjoint i64 %.02830.i.i.i, 1        ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ic
  %i.ie = load float, ptr %i.id, align 4, !tbaa !16
  %i.if = fmul reassoc nsz arcp contract afn float %i.ie, %i.hq
  %i.ig = fadd reassoc nsz arcp contract afn float %i.gj, %i.if
  %i.ih = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ig, float 0.000000e+00)
  %i.ii = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ih)
  %i.ij = fmul reassoc nnan nsz arcp contract afn float %i.ii, 2.000000e+00
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ic
  store float %i.ij, ptr %i.ik, align 4, !tbaa !16
  %i.il = or disjoint i64 %.02830.i.i.i, 2        ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.il
  %i.in = load float, ptr %i.im, align 4, !tbaa !16
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.hr
  %i.ip = fadd reassoc nsz arcp contract afn float %i.gl, %i.io
  %i.iq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ip, float 0.000000e+00)
  %i.ir = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.iq)
  %i.is = fmul reassoc nnan nsz arcp contract afn float %i.ir, 2.000000e+00
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.il
  store float %i.is, ptr %i.it, align 4, !tbaa !16
  %i.iu = or disjoint i64 %.02830.i.i.i, 3        ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !16
  %i.ix = fmul reassoc nsz arcp contract afn float %i.iw, %i.ht
  %i.iy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ix, float 0.000000e+00)
  %i.iz = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.iy)
  %i.ja = fmul reassoc nnan nsz arcp contract afn float %i.iz, 2.000000e+00
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.iu
  store float %i.ja, ptr %i.jb, align 4, !tbaa !16
  %i.jc = add nuw i64 %.02830.i.i.i, 4            ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.gp
  br i1 %i.jd, label %.preheader.i62.i.i, label %nlmeans_precondition.exit.i, !llvm.loop !203

bb.m:                                             ; preds = %compute_wb_factors.exit.i.i
  %i.je = sext i32 %i.gb to i64
  %i.jf = sext i32 %i.gd to i64
  %i.jg = fmul reassoc nsz arcp contract afn <2 x float> %i.fe, splat (float 5.000000e-01)
  %i.jh = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jg ; 3 uses
  %i.ji = fmul reassoc nsz arcp contract afn float %i.eq, 5.000000e-01
  %i.jj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ji ; 3 uses
  %i.jk = shl nsw i64 %i.je, 2
  %i.jl = mul i64 %i.jk, %i.jf                    ; 2 uses
  %.not.i63.i.i = icmp eq i64 %i.jl, 0
  br i1 %.not.i63.i.i, label %precondition_v2.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %i.jm = fmul reassoc nsz arcp contract afn float %i.ew, %i.fx
  %i.jn = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.jm)
  %i.jo = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, %i.fh
  %i.jp = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.jn, i64 0
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jr = fmul reassoc nsz arcp contract afn <4 x float> %i.jq, %i.jo ; 3 uses
  %i.js = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.jt = shufflevector <2 x float> %i.js, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ju = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.jv = insertelement <2 x float> %i.ju, float %i.fm, i64 1 ; 3 uses
  %i.jw = add i64 %i.jl, -4                       ; 3 uses
  %i.jx = lshr exact i64 %i.jw, 2
  %i.jy = add nuw nsw i64 %i.jx, 1                ; 2 uses
  %i.jz = icmp eq i64 %i.jw, 0
  br i1 %i.jz, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter291 = and i64 %i.jy, 9223372036854775806
  %i.ka = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jv
  %i.kb = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fk
  %i.kc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.jr
  %i.kd = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jv
  %i.ke = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fk
  %i.kf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.jr
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.04247.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.mb, %.lr.ph.i.i.i ] ; 4 uses
  %niter292 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter292.next.1, %.lr.ph.i.i.i ]
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.i ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load <2 x float>, ptr %i.kh, align 4, !tbaa !16
  %i.kj = fmul reassoc nsz arcp contract afn <2 x float> %i.ki, %i.ka
  %i.kk = fadd reassoc nsz arcp contract afn <2 x float> %i.kj, %i.jt ; 2 uses
  %i.kl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kk, zeroinitializer
  %i.km = select <2 x i1> %i.kl, <2 x float> %i.kk, <2 x float> zeroinitializer ; 2 uses
  %i.kn = extractelement <2 x float> %i.km, i64 0
  %i.ko = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.kn, float %i.jj)
  %i.kp = load <2 x float>, ptr %i.kg, align 4, !tbaa !16
  %i.kq = fmul reassoc nsz arcp contract afn <2 x float> %i.kp, %i.kb
  %i.kr = fadd reassoc nsz arcp contract afn <2 x float> %i.kq, %i.jt ; 2 uses
  %i.ks = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kr, zeroinitializer
  %i.kt = select <2 x i1> %i.ks, <2 x float> %i.kr, <2 x float> zeroinitializer
  %i.ku = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.kt, <2 x float> %i.jh)
  %i.kv = insertelement <4 x float> poison, float %i.ko, i64 2
  %i.kw = shufflevector <2 x float> %i.km, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.kx = shufflevector <4 x float> %i.kv, <4 x float> %i.kw, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.ky = shufflevector <2 x float> %i.ku, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kz = shufflevector <4 x float> %i.ky, <4 x float> %i.kx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.la = fmul reassoc nsz arcp contract afn <4 x float> %i.kz, splat (float 2.000000e+00)
  %i.lb = fmul reassoc nsz arcp contract afn <4 x float> %i.la, %i.kc
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.04247.i.i.i
  store <4 x float> %i.lb, ptr %i.lc, align 16, !tbaa !42, !alias.scope !204, !nontemporal !207
  %i.ld = or disjoint i64 %.04247.i.i.i, 4        ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  %i.lg = load <2 x float>, ptr %i.lf, align 4, !tbaa !16
  %i.lh = fmul reassoc nsz arcp contract afn <2 x float> %i.lg, %i.kd
  %i.li = fadd reassoc nsz arcp contract afn <2 x float> %i.lh, %i.jt ; 2 uses
  %i.lj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.li, zeroinitializer
  %i.lk = select <2 x i1> %i.lj, <2 x float> %i.li, <2 x float> zeroinitializer ; 2 uses
  %i.ll = extractelement <2 x float> %i.lk, i64 0
end_hunk_0
