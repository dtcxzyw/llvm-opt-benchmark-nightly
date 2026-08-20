inline.NumInlined: 157
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 84
begin_hunk_0_@default_group:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @flags() local_unnamed_addr #0 {
bb.a:
  ret i32 18
}

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
  %i.j = alloca [4 x float], align 16             ; 5 uses
  %i.k = alloca [4 x float], align 16             ; 4 uses
  %i.l = alloca [4 x float], align 16             ; 7 uses
  %i.m = alloca [4 x float], align 16             ; 5 uses
  %i.n = alloca [4 x float], align 16             ; 4 uses
  %i.o = alloca [4 x float], align 16             ; 4 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %i.q = alloca [4 x float], align 16             ; 7 uses
  %i.r = alloca [4 x float], align 16             ; 5 uses
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
  %i.dq = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  br i1 %.not.i.i, label %.preheader.i.i.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %nlmeans_scattering.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.val40.i, i64 272
  %i.ds = load <2 x float>, ptr %i.dr, align 16, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %.val40.i, i64 280
  %i.du = getelementptr inbounds nuw i8, ptr %.val40.i, i64 284
  %i.dv = load float, ptr %i.du, align 4, !tbaa !16
  %i.dw = load float, ptr %i.dt, align 8, !tbaa !16
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dv, 0.000000e+00
  br label %compute_wb_factors.exit.i.i

bb.i:                                             ; preds = %nlmeans_scattering.exit.i
  %i.dy = fcmp reassoc nsz arcp contract afn une float %i.dn, 0.000000e+00
  br i1 %i.dy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.w, i64 284
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !189
  %.not31.i.i.i = icmp eq i32 %i.ea, 0
  br i1 %.not31.i.i.i, label %bb.k, label %compute_wb_factors.exit.i.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.eb = fcmp reassoc nsz arcp contract afn oeq float %i.dn, 0.000000e+00
  %i.ec = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  br i1 %i.eb, label %.preheader1.preheader.i.i.i, label %compute_wb_factors.exit.i.i

.preheader1.preheader.i.i.i:                      ; preds = %bb.k
  br label %compute_wb_factors.exit.i.i

compute_wb_factors.exit.i.i:                      ; preds = %.preheader1.preheader.i.i.i, %bb.k, %bb.j, %.preheader.i.i.i
  %i.ee = phi float [ %i.dx, %.preheader.i.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i.i ], [ %i.dn, %bb.k ], [ %i.dn, %bb.j ]
  %i.ef = phi float [ %i.dw, %.preheader.i.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i.i ], [ %i.dn, %bb.k ], [ %i.dl, %bb.j ] ; 2 uses
  %i.eg = phi <2 x float> [ %i.ds, %.preheader.i.i.i ], [ splat (float 1.000000e+00), %.preheader1.preheader.i.i.i ], [ %i.ed, %bb.k ], [ %i.dj, %bb.j ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !190 ; 3 uses
  %i.ej = insertelement <2 x float> poison, float %i.am, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fdiv reassoc nsz arcp contract afn <2 x float> %i.ek, %i.eg
  %i.em = fdiv reassoc nsz arcp contract afn float %i.am, %i.ef
  %i.en = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.em)
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, 1.000000e-01
  %i.ep = fadd reassoc nsz arcp contract afn float %i.eo, %i.ei ; 2 uses
  %i.eq = fcmp reassoc nsz arcp contract afn ogt float %i.ep, 0.000000e+00
  %i.er = select reassoc nsz arcp contract afn i1 %i.eq, float %i.ep, float 0.000000e+00 ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %8 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.er, i64 0
  store <2 x float> %8, ptr %7, align 8, !tbaa !16
  %i.es = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ev = load float, ptr %i.es, align 8, !tbaa !191
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, %i.am ; 3 uses
  %i.ex = load float, ptr %i.et, align 4, !tbaa !16 ; 2 uses
  %i.ey = load float, ptr %i.eu, align 8, !tbaa !16 ; 3 uses
  %i.ez = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.el)
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.ez, splat (float 1.000000e-01)
  %i.fb = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fadd reassoc nsz arcp contract afn <2 x float> %i.fa, %i.fc ; 2 uses
  %i.fe = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.fd, zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x float> %i.fd, <2 x float> zeroinitializer ; 3 uses
  store <2 x float> %i.ff, ptr %i.r, align 16, !tbaa !16
  %i.fg = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fmul reassoc nsz arcp contract afn <2 x float> %i.fh, %i.eg ; 6 uses
  %i.fj = extractelement <2 x float> %i.fi, i64 0
  store float %i.fj, ptr %i.q, align 16, !tbaa !16
  %i.fk = extractelement <2 x float> %i.fi, i64 1 ; 2 uses
  store float %i.fk, ptr %i.dq, align 4, !tbaa !16
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ew, %i.ef ; 3 uses
  %i.fm = fmul reassoc nsz arcp contract afn float %i.ew, %i.ee ; 3 uses
  store float %i.fl, ptr %i.dp, align 8, !tbaa !16
  store float %i.fm, ptr %i.do, align 4, !tbaa !16
  %i.fn = insertelement <4 x float> poison, float %i.ex, i64 0
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fp = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fq = insertelement <4 x float> %i.fp, float %i.fl, i64 2
  %i.fr = insertelement <4 x float> %i.fq, float %i.fm, i64 3 ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.fr ; 11 uses
  store <4 x float> %i.fs, ptr %i.s, align 16, !tbaa !16
  %i.ft = insertelement <4 x float> poison, float %i.ey, i64 0
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fv = fmul reassoc nsz arcp contract afn <4 x float> %i.fu, %i.fr ; 3 uses
  store <4 x float> %i.fv, ptr %i.t, align 16, !tbaa !16
  %i.fw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ei
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
  %i.ge = fmul reassoc nsz arcp contract afn float %i.ey, %i.fk
  %i.gf = extractelement <4 x float> %i.fs, i64 0
  %foldExtExtBinop257 = fdiv reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fs ; 2 uses
  %foldExtExtBinop259 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop257, %foldExtExtBinop257
  %i.gg = extractelement <4 x float> %foldExtExtBinop259, i64 0
  %i.gh = fadd reassoc nsz arcp contract afn float %i.gg, 3.750000e-01 ; 2 uses
  %i.gi = extractelement <4 x float> %i.fs, i64 1 ; 2 uses
  %i.gj = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gi ; 2 uses
  %i.gk = fmul reassoc nsz arcp contract afn float %i.gj, %i.gj
  %i.gl = fadd reassoc nsz arcp contract afn float %i.gk, 3.750000e-01 ; 2 uses
  %i.gm = extractelement <4 x float> %i.fs, i64 2
  %foldExtExtBinop261 = fdiv reassoc nsz arcp contract afn <4 x float> %i.fv, %i.fs ; 2 uses
  %foldExtExtBinop263 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop261, %foldExtExtBinop261
  %i.gn = extractelement <4 x float> %foldExtExtBinop263, i64 2
  %i.go = fadd reassoc nsz arcp contract afn float %i.gn, 3.750000e-01 ; 2 uses
  %i.gp = sext i32 %i.gb to i64
  %i.gq = sext i32 %i.gd to i64
  %i.gr = shl nsw i64 %i.gp, 2
  %i.gs = mul i64 %i.gr, %i.gq                    ; 4 uses
  %.not.i61.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i61.i.i, label %nlmeans_precondition.exit.i, label %.preheader.i62.i.i.preheader

.preheader.i62.i.i.preheader:                     ; preds = %bb.l
  %i.gt = add i64 %i.gs, -4                       ; 2 uses
  %i.gu = lshr exact i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %min.iters.check227 = icmp ult i64 %i.gt, 28
  br i1 %min.iters.check227, label %.preheader.i62.i.i.preheader281, label %vector.memcheck220

vector.memcheck220:                               ; preds = %.preheader.i62.i.i.preheader
  %i.gw = shl i64 %i.gs, 2                        ; 2 uses
  %scevgep221 = getelementptr i8, ptr %i.dh, i64 %i.gw
  %scevgep222 = getelementptr i8, ptr %2, i64 %i.gw
  %bound0223 = icmp ult ptr %i.dh, %scevgep222
  %bound1224 = icmp ult ptr %2, %scevgep221
  %found.conflict225 = and i1 %bound0223, %bound1224
  br i1 %found.conflict225, label %.preheader.i62.i.i.preheader281, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck220
  %n.vec229 = and i64 %i.gv, 9223372036854775800  ; 3 uses
  %i.gx = shl i64 %n.vec229, 2
  %broadcast.splat231 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <8 x float> poison, float %i.gh, i64 0
  %broadcast.splat235 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert236 = insertelement <8 x float> poison, float %i.gl, i64 0
  %broadcast.splat239 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert240 = insertelement <8 x float> poison, float %i.go, i64 0
  %broadcast.splat241 = shufflevector <8 x float> %broadcast.splatinsert240, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat243 = shufflevector <4 x float> %i.fs, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.gy = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat231
  %i.gz = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat235
  %i.ha = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat239
  %i.hb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat243
  %i.hc = shufflevector <8 x float> %broadcast.splatinsert232, <8 x float> %broadcast.splatinsert236, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph228
  %index245 = phi i64 [ 0, %vector.ph228 ], [ %index.next252, %vector.body244 ] ; 2 uses
  %i.hd = shl nuw i64 %index245, 2                ; 2 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hd
  %wide.vec246 = load <32 x float>, ptr %i.he, align 4, !tbaa !16, !alias.scope !195 ; 4 uses
  %strided.vec247 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec248 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec249 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec250 = shufflevector <32 x float> %wide.vec246, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec247, %i.gy
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.hd
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec248, %i.gz
  %i.hi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec249, %i.ha
  %i.hj = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat241, %i.hi
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec250, %i.hb
  %i.hl = shufflevector <8 x float> %i.hf, <8 x float> %i.hh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hm = fadd reassoc nsz arcp contract afn <16 x float> %i.hc, %i.hl
  %i.hn = shufflevector <8 x float> %i.hj, <8 x float> %i.hk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ho = shufflevector <16 x float> %i.hm, <16 x float> %i.hn, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.hp = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.ho, <32 x float> zeroinitializer)
  %i.hq = call reassoc nnan nsz arcp contract afn <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.hp)
  %interleaved.vec251 = fmul reassoc nnan nsz arcp contract afn <32 x float> %i.hq, splat (float 2.000000e+00)
  store <32 x float> %interleaved.vec251, ptr %i.hg, align 4, !tbaa !16, !alias.scope !198, !noalias !195
  %index.next252 = add nuw i64 %index245, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next252, %n.vec229
  br i1 %i.hr, label %middle.block253, label %vector.body244, !llvm.loop !200

middle.block253:                                  ; preds = %vector.body244
  %cmp.n254 = icmp eq i64 %i.gv, %n.vec229
  br i1 %cmp.n254, label %nlmeans_precondition.exit.i, label %.preheader.i62.i.i.preheader281

.preheader.i62.i.i.preheader281:                  ; preds = %vector.memcheck220, %.preheader.i62.i.i.preheader, %middle.block253
  %.02830.i.i.i.ph = phi i64 [ 0, %vector.memcheck220 ], [ 0, %.preheader.i62.i.i.preheader ], [ %i.gx, %middle.block253 ]
  %i.hs = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gf
  %i.ht = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gi
  %i.hu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gm
  %i.hv = extractelement <4 x float> %i.fs, i64 3
  %i.hw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hv
  br label %.preheader.i62.i.i

.preheader.i62.i.i:                               ; preds = %.preheader.i62.i.i.preheader281, %.preheader.i62.i.i
  %.02830.i.i.i = phi i64 [ %i.jf, %.preheader.i62.i.i ], [ %.02830.i.i.i.ph, %.preheader.i62.i.i.preheader281 ] ; 6 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02830.i.i.i
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !16
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, %i.hs
  %i.ia = fadd reassoc nsz arcp contract afn float %i.gh, %i.hz
  %i.ib = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ia, float 0.000000e+00)
  %i.ic = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ib)
  %i.id = fmul reassoc nnan nsz arcp contract afn float %i.ic, 2.000000e+00
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.02830.i.i.i
  store float %i.id, ptr %i.ie, align 4, !tbaa !16
  %i.if = or disjoint i64 %.02830.i.i.i, 1        ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.if
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !16
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ih, %i.ht
  %i.ij = fadd reassoc nsz arcp contract afn float %i.gl, %i.ii
  %i.ik = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ij, float 0.000000e+00)
  %i.il = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.ik)
  %i.im = fmul reassoc nnan nsz arcp contract afn float %i.il, 2.000000e+00
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.if
  store float %i.im, ptr %i.in, align 4, !tbaa !16
  %i.io = or disjoint i64 %.02830.i.i.i, 2        ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.io
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !16
  %i.ir = fmul reassoc nsz arcp contract afn float %i.iq, %i.hu
  %i.is = fadd reassoc nsz arcp contract afn float %i.go, %i.ir
  %i.it = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.is, float 0.000000e+00)
  %i.iu = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.it)
  %i.iv = fmul reassoc nnan nsz arcp contract afn float %i.iu, 2.000000e+00
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.io
  store float %i.iv, ptr %i.iw, align 4, !tbaa !16
  %i.ix = or disjoint i64 %.02830.i.i.i, 3        ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ix
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !16
  %i.ja = fmul reassoc nsz arcp contract afn float %i.iz, %i.hw
  %i.jb = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ja, float 0.000000e+00)
  %i.jc = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.jb)
  %i.jd = fmul reassoc nnan nsz arcp contract afn float %i.jc, 2.000000e+00
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.ix
  store float %i.jd, ptr %i.je, align 4, !tbaa !16
  %i.jf = add nuw i64 %.02830.i.i.i, 4            ; 2 uses
  %i.jg = icmp ult i64 %i.jf, %i.gs
  br i1 %i.jg, label %.preheader.i62.i.i, label %nlmeans_precondition.exit.i, !llvm.loop !203

bb.m:                                             ; preds = %compute_wb_factors.exit.i.i
  %i.jh = sext i32 %i.gb to i64
  %i.ji = sext i32 %i.gd to i64
  %i.jj = fmul reassoc nsz arcp contract afn <2 x float> %i.ff, splat (float 5.000000e-01)
  %i.jk = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jj ; 3 uses
  %i.jl = fmul reassoc nsz arcp contract afn float %i.er, 5.000000e-01
  %i.jm = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.jl ; 3 uses
  %i.jn = shl nsw i64 %i.jh, 2
  %i.jo = mul i64 %i.jn, %i.ji                    ; 2 uses
  %.not.i63.i.i = icmp eq i64 %i.jo, 0
  br i1 %.not.i63.i.i, label %precondition_v2.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.m
  %i.jp = fmul reassoc nsz arcp contract afn float %i.ex, %i.fx
  %i.jq = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.jp)
  %9 = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %10 = insertelement <4 x float> %9, float 0.000000e+00, i64 3
  %11 = insertelement <4 x float> %10, float %i.er, i64 2
  %i.jr = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, %11
  %i.js = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.jq, i64 0
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ju = fmul reassoc nsz arcp contract afn <4 x float> %i.jt, %i.jr ; 3 uses
  %i.jv = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.jx = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.jy = insertelement <2 x float> %i.jx, float %i.fm, i64 1 ; 3 uses
  %i.jz = add i64 %i.jo, -4                       ; 3 uses
  %i.ka = lshr exact i64 %i.jz, 2
  %i.kb = add nuw nsw i64 %i.ka, 1                ; 2 uses
  %i.kc = icmp eq i64 %i.jz, 0
  br i1 %i.kc, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter291 = and i64 %i.kb, 9223372036854775806
  %i.kd = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jy
  %i.ke = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fi
  %i.kf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ju
  %i.kg = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.jy
  %i.kh = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.fi
  %i.ki = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ju
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.04247.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.me, %.lr.ph.i.i.i ] ; 4 uses
  %niter292 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter292.next.1, %.lr.ph.i.i.i ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.i ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load <2 x float>, ptr %i.kk, align 4, !tbaa !16
  %i.km = fmul reassoc nsz arcp contract afn <2 x float> %i.kl, %i.kd
  %i.kn = fadd reassoc nsz arcp contract afn <2 x float> %i.km, %i.jw ; 2 uses
  %i.ko = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.kn, zeroinitializer
  %i.kp = select <2 x i1> %i.ko, <2 x float> %i.kn, <2 x float> zeroinitializer ; 2 uses
  %i.kq = extractelement <2 x float> %i.kp, i64 0
  %i.kr = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.kq, float %i.jm)
  %i.ks = load <2 x float>, ptr %i.kj, align 4, !tbaa !16
  %i.kt = fmul reassoc nsz arcp contract afn <2 x float> %i.ks, %i.ke
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kt, %i.jw ; 2 uses
  %i.kv = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ku, zeroinitializer
  %i.kw = select <2 x i1> %i.kv, <2 x float> %i.ku, <2 x float> zeroinitializer
  %i.kx = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.kw, <2 x float> %i.jk)
  %i.ky = insertelement <4 x float> poison, float %i.kr, i64 2
  %i.kz = shufflevector <2 x float> %i.kp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.la = shufflevector <4 x float> %i.ky, <4 x float> %i.kz, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.lb = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lc = shufflevector <4 x float> %i.lb, <4 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ld = fmul reassoc nsz arcp contract afn <4 x float> %i.lc, splat (float 2.000000e+00)
  %i.le = fmul reassoc nsz arcp contract afn <4 x float> %i.ld, %i.kf
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.04247.i.i.i
  store <4 x float> %i.le, ptr %i.lf, align 16, !tbaa !42, !alias.scope !204, !nontemporal !207
  %i.lg = or disjoint i64 %.04247.i.i.i, 4        ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load <2 x float>, ptr %i.li, align 4, !tbaa !16
  %i.lk = fmul reassoc nsz arcp contract afn <2 x float> %i.lj, %i.kg
  %i.ll = fadd reassoc nsz arcp contract afn <2 x float> %i.lk, %i.jw ; 2 uses
  %i.lm = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ll, zeroinitializer
  %i.ln = select <2 x i1> %i.lm, <2 x float> %i.ll, <2 x float> zeroinitializer ; 2 uses
  %i.lo = extractelement <2 x float> %i.ln, i64 0
  %i.lp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.lo, float %i.jm)
  %i.lq = load <2 x float>, ptr %i.lh, align 4, !tbaa !16
  %i.lr = fmul reassoc nsz arcp contract afn <2 x float> %i.lq, %i.kh
  %i.ls = fadd reassoc nsz arcp contract afn <2 x float> %i.lr, %i.jw ; 2 uses
  %i.lt = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ls, zeroinitializer
  %i.lu = select <2 x i1> %i.lt, <2 x float> %i.ls, <2 x float> zeroinitializer
  %i.lv = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.lu, <2 x float> %i.jk)
  %i.lw = insertelement <4 x float> poison, float %i.lp, i64 2
  %i.lx = shufflevector <2 x float> %i.ln, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ly = shufflevector <4 x float> %i.lw, <4 x float> %i.lx, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.lz = shufflevector <2 x float> %i.lv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ma = shufflevector <4 x float> %i.lz, <4 x float> %i.ly, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mb = fmul reassoc nsz arcp contract afn <4 x float> %i.ma, splat (float 2.000000e+00)
  %i.mc = fmul reassoc nsz arcp contract afn <4 x float> %i.mb, %i.ki
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.lg
  store <4 x float> %i.mc, ptr %i.md, align 16, !tbaa !42, !alias.scope !204, !nontemporal !207
  %i.me = add nuw i64 %.04247.i.i.i, 8            ; 2 uses
  %niter292.next.1 = add i64 %niter292, 2         ; 2 uses
  %niter292.ncmp.1.not = icmp eq i64 %niter292.next.1, %unroll_iter291
  br i1 %niter292.ncmp.1.not, label %precondition_v2.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

precondition_v2.exit.i.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i.i.i
  %i.mf = and i64 %i.jz, 4
  %lcmp.mod289.not.not = icmp eq i64 %i.mf, 0
  br i1 %lcmp.mod289.not.not, label %.lr.ph.i.i.i.epil.preheader, label %precondition_v2.exit.i.i

.lr.ph.i.i.i.epil.preheader:                      ; preds = %precondition_v2.exit.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.04247.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.me, %precondition_v2.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod290 = trunc i64 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.i.epil.init ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mi = load <2 x float>, ptr %i.mh, align 4, !tbaa !16
  %i.mj = fdiv reassoc nsz arcp contract afn <2 x float> %i.mi, %i.jy
  %i.mk = fadd reassoc nsz arcp contract afn <2 x float> %i.mj, %i.jw ; 2 uses
  %i.ml = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.mk, zeroinitializer
  %i.mm = select <2 x i1> %i.ml, <2 x float> %i.mk, <2 x float> zeroinitializer ; 2 uses
  %i.mn = extractelement <2 x float> %i.mm, i64 0
  %i.mo = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mn, float %i.jm)
  %i.mp = load <2 x float>, ptr %i.mg, align 4, !tbaa !16
  %i.mq = fdiv reassoc nsz arcp contract afn <2 x float> %i.mp, %i.fi
  %i.mr = fadd reassoc nsz arcp contract afn <2 x float> %i.mq, %i.jw ; 2 uses
  %i.ms = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.mr, zeroinitializer
  %i.mt = select <2 x i1> %i.ms, <2 x float> %i.mr, <2 x float> zeroinitializer
  %i.mu = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.mt, <2 x float> %i.jk)
  %i.mv = insertelement <4 x float> poison, float %i.mo, i64 2
  %i.mw = shufflevector <2 x float> %i.mm, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.my = shufflevector <2 x float> %i.mu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> %i.mx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.mz, splat (float 2.000000e+00)
  %i.nb = fdiv reassoc nsz arcp contract afn <4 x float> %i.na, %i.ju
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.04247.i.i.i.epil.init
  store <4 x float> %i.nb, ptr %i.nc, align 16, !tbaa !42, !alias.scope !204, !nontemporal !207
  br label %precondition_v2.exit.i.i

precondition_v2.exit.i.i:                         ; preds = %.lr.ph.i.i.i.epil.preheader, %precondition_v2.exit.i.i.loopexit.unr-lcssa, %bb.m
  call void @llvm.x86.sse.sfence()
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !188
  br label %nlmeans_precondition.exit.i

nlmeans_precondition.exit.i:                      ; preds = %.preheader.i62.i.i, %middle.block253, %precondition_v2.exit.i.i, %bb.l
  %i.nd = phi ptr [ %.pre.i, %precondition_v2.exit.i.i ], [ %i.dh, %bb.l ], [ %i.dh, %middle.block253 ], [ %i.dh, %.preheader.i62.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) @__const.process_wavelets.boost, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store float %.0.i.i, ptr %6, align 8, !tbaa !208
  %i.ne = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.am, ptr %i.ne, align 4, !tbaa !210
  %i.nf = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %i.nf, align 8, !tbaa !16
  %i.ng = getelementptr inbounds nuw i8, ptr %6, i64 16
  store float %i.dg, ptr %i.ng, align 8, !tbaa !211
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 20
  store float %.0.i43.i, ptr %i.nh, align 4, !tbaa !212
  %i.ni = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.aq, ptr %i.ni, align 8, !tbaa !213
  %i.nj = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 %.039.i.i, ptr %i.nj, align 4, !tbaa !214
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 0, ptr %i.nk, align 8, !tbaa !215
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 0, ptr %i.nl, align 4
  %i.nm = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.u, ptr %i.nm, align 8, !tbaa !216
  %i.nn = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nn, i8 0, i64 24, i1 false)
  call void @nlmeans_denoise(ptr noundef %i.nd, ptr noundef %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef nonnull %6) #18
  %i.no = load ptr, ptr %i.p, align 8, !tbaa !188
  call void @free(ptr noundef %i.no) #18
  %i.np = load i32, ptr %i.fy, align 4, !tbaa !192
  %.not.i45.i = icmp eq i32 %i.np, 0
  %i.nq = load i32, ptr %i.ga, align 4, !tbaa !193 ; 2 uses
  %i.nr = load i32, ptr %i.gc, align 4, !tbaa !194 ; 2 uses
  br i1 %.not.i45.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %nlmeans_precondition.exit.i
  call fastcc void @backtransform(ptr noundef %3, i32 noundef %i.nq, i32 noundef %i.nr, ptr noundef nonnull readonly %i.s, ptr noundef nonnull readonly %i.t)
  br label %nlmeans_backtransform.exit.i

bb.o:                                             ; preds = %nlmeans_precondition.exit.i
  %i.ns = load float, ptr %i.et, align 4, !tbaa !16
  %i.nt = fmul reassoc nsz arcp contract afn float %i.ns, %i.fx
  %i.nu = load float, ptr %i.eu, align 8, !tbaa !16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.nw = load float, ptr %i.nv, align 8, !tbaa !217
  %i.nx = fpext reassoc nsz arcp contract afn float %i.nw to double
  %i.ny = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.am)
  %i.nz = fpext reassoc nsz arcp contract afn float %i.ny to double
  %i.oa = fmul reassoc nsz arcp contract afn double %i.nz, 5.000000e-01
  %i.ob = fsub reassoc nsz arcp contract afn double %i.nx, %i.oa
  %i.oc = fptrunc reassoc nsz arcp contract afn double %i.ob to float
  call fastcc void @backtransform_v2(ptr noundef %3, i32 noundef %i.nq, i32 noundef %i.nr, float noundef %i.nt, ptr noundef nonnull readonly %i.r, float noundef %i.nu, float noundef %i.oc, ptr noundef nonnull readonly %i.q)
  br label %nlmeans_backtransform.exit.i

nlmeans_backtransform.exit.i:                     ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  br label %bb.p

bb.p:                                             ; preds = %nlmeans_backtransform.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %process_nlmeans.exit

bb.q:                                             ; preds = %bb.a, %bb.a
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.oe = load float, ptr %i.od, align 4, !tbaa !124
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.og = load float, ptr %i.of, align 8, !tbaa !125 ; 3 uses
  %i.oh = fdiv reassoc nsz arcp contract afn float %i.oe, %i.og
  %i.oi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oh, float 1.000000e+00) ; 11 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !218
  %i.ol = sitofp reassoc nsz arcp contract afn i32 %i.ok to float
  %i.om = fmul reassoc nsz arcp contract afn float %i.og, %i.ol ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.oo = load i32, ptr %i.on, align 16, !tbaa !219
  %i.op = sitofp reassoc nsz arcp contract afn i32 %i.oo to float
  %i.oq = fmul reassoc nsz arcp contract afn float %i.og, %i.op ; 2 uses
  %i.or = fcmp reassoc nsz arcp contract afn ogt float %i.om, %i.oq
  %..i = select reassoc nsz arcp contract afn i1 %i.or, float %i.om, float %i.oq ; 2 uses
  %i.os = fmul reassoc nsz arcp contract afn float %..i, 2.000000e-01
  %i.ot = fcmp reassoc nsz arcp contract afn ogt float %i.os, 2.570000e+02
  %i.ou = fmul reassoc nsz arcp contract afn float %..i, 1.000000e-01
  %i.ov = fadd reassoc nsz arcp contract afn float %i.ou, -5.000000e-01
  %i.ow = tail call reassoc nsz arcp contract afn float @llvm.log2.f32(float %i.ov)
  %i.ox = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ow
  %i.oy = select i1 %i.ot, float f0x3E124925, float %i.ox ; 7 uses
  %.reass.i = fdiv reassoc nnan nsz arcp contract afn float 2.500000e+00, %i.oi
  %i.oz = fadd reassoc nnan nsz arcp contract afn float %.reass.i, -5.000000e-01
  %i.pa = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.oz)
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, -5.000000e-01
  %i.pc = fmul reassoc nsz arcp contract afn float %i.oy, %i.pb
  %i.pd = fcmp reassoc nsz arcp contract afn ogt float %i.pc, 1.000000e+00 ; 2 uses
  br i1 %i.pd, label %bb.y, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.reass.1.i = fdiv reassoc nnan nsz arcp contract afn float 4.500000e+00, %i.oi
  %i.pe = fadd reassoc nnan nsz arcp contract afn float %.reass.1.i, -5.000000e-01
  %i.pf = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pe)
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pf, -5.000000e-01
  %i.ph = fmul reassoc nsz arcp contract afn float %i.oy, %i.pg
  %i.pi = fcmp reassoc nsz arcp contract afn ogt float %i.ph, 1.000000e+00
  br i1 %i.pi, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.reass.2.i = fdiv reassoc nnan nsz arcp contract afn float 8.500000e+00, %i.oi
  %i.pj = fadd reassoc nnan nsz arcp contract afn float %.reass.2.i, -5.000000e-01
  %i.pk = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pj)
  %i.pl = fadd reassoc nsz arcp contract afn float %i.pk, -5.000000e-01
  %i.pm = fmul reassoc nsz arcp contract afn float %i.oy, %i.pl
  %i.pn = fcmp reassoc nsz arcp contract afn ogt float %i.pm, 1.000000e+00
  br i1 %i.pn, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.reass.3.i = fdiv reassoc nnan nsz arcp contract afn float 1.650000e+01, %i.oi
  %i.po = fadd reassoc nnan nsz arcp contract afn float %.reass.3.i, -5.000000e-01
  %i.pp = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.po)
  %i.pq = fadd reassoc nsz arcp contract afn float %i.pp, -5.000000e-01
  %i.pr = fmul reassoc nsz arcp contract afn float %i.oy, %i.pq
  %i.ps = fcmp reassoc nsz arcp contract afn ogt float %i.pr, 1.000000e+00
  br i1 %i.ps, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.reass.4.i = fdiv reassoc nnan nsz arcp contract afn float 3.250000e+01, %i.oi
  %i.pt = fadd reassoc nnan nsz arcp contract afn float %.reass.4.i, -5.000000e-01
  %i.pu = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.pt)
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pu, -5.000000e-01
  %i.pw = fmul reassoc nsz arcp contract afn float %i.oy, %i.pv
  %i.px = fcmp reassoc nsz arcp contract afn ogt float %i.pw, 1.000000e+00
  br i1 %i.px, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.reass.5.i = fdiv reassoc nnan nsz arcp contract afn float 6.450000e+01, %i.oi
  %i.py = fadd reassoc nnan nsz arcp contract afn float %.reass.5.i, -5.000000e-01
  %i.pz = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.py)
  %i.qa = fadd reassoc nsz arcp contract afn float %i.pz, -5.000000e-01
  %i.qb = fmul reassoc nsz arcp contract afn float %i.oy, %i.qa
  %i.qc = fcmp reassoc nsz arcp contract afn ogt float %i.qb, 1.000000e+00
  br i1 %i.qc, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.reass.6.i = fdiv reassoc nnan nsz arcp contract afn float 1.285000e+02, %i.oi
  %i.qd = fadd reassoc nnan nsz arcp contract afn float %.reass.6.i, -5.000000e-01
  %i.qe = tail call reassoc nsz arcp contract afn noundef float @llvm.log2.f32(float %i.qd)
  %i.qf = fadd reassoc nsz arcp contract afn float %i.qe, -5.000000e-01
  %i.qg = fmul reassoc nsz arcp contract afn float %i.oy, %i.qf
  %i.qh = fcmp reassoc nsz arcp contract afn ogt float %i.qg, 1.000000e+00
  br i1 %i.qh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.0178.lcssa.i = phi i32 [ 0, %bb.q ], [ 7, %bb.x ], [ 1, %bb.r ], [ 6, %bb.w ], [ 2, %bb.s ], [ 4, %bb.u ], [ 3, %bb.t ], [ 5, %bb.v ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !193 ; 9 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !194 ; 9 uses
  %i.qm = sext i32 %i.qj to i64                   ; 6 uses
  %i.qn = sext i32 %i.ql to i64                   ; 6 uses
  %i.qo = mul nsw i64 %i.qn, %i.qm                ; 4 uses
  %i.qp = shl nuw nsw i32 1, %.0178.lcssa.i       ; 2 uses
  %i.qq = icmp slt i32 %i.qj, %i.qp
  %i.qr = icmp slt i32 %i.ql, %i.qp
  %or.cond.i = select i1 %i.qq, i1 true, i1 %i.qr
  br i1 %or.cond.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.qs = shl i64 %i.qo, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr align 4 %2, i64 %i.qs, i1 false)
  br label %process_nlmeans.exit

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr null, ptr %i.f, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store ptr null, ptr %i.g, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr null, ptr %i.h, align 8, !tbaa !188
  %i.qt = call i32 (ptr, ptr, ptr, ...) @dt_iop_alloc_image_buffers(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %5, i32 noundef 4, ptr noundef nonnull %i.g, i32 noundef 4, ptr noundef nonnull %i.h, i32 noundef 4, ptr noundef nonnull %i.f, i32 noundef 0, ptr noundef null) #18
  %.not.i23 = icmp eq i32 %i.qt, 0
  br i1 %.not.i23, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !133
  %i.qw = sext i32 %i.qv to i64
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef %i.qw, ptr noundef nonnull %4, ptr noundef %5) #18
  br label %bb.ay

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.qx = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.val.i24 = load ptr, ptr %i.qx, align 8, !tbaa !138 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.val.i24, i64 256
  %i.qz = load <2 x float>, ptr %i.qy, align 16, !tbaa !16 ; 3 uses
  %i.ra = extractelement <2 x float> %i.qz, i64 1 ; 2 uses
  %i.rb = extractelement <2 x float> %i.qz, i64 0 ; 2 uses
  %i.rc = fadd reassoc nsz arcp contract afn float %i.ra, %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %.val.i24, i64 264
  %i.re = load float, ptr %i.rd, align 8, !tbaa !16 ; 2 uses
  %i.rf = fadd reassoc nsz arcp contract afn float %i.rc, %i.re
  %i.rg = fmul reassoc nsz arcp contract afn float %i.rf, f0x3EAAAAAB ; 6 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.w, i64 288
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !186
  %.not.i.i25 = icmp eq i32 %i.ri, 0
  br i1 %.not.i.i25, label %.preheader.i.i, label %bb.ad

.preheader.i.i:                                   ; preds = %bb.ac
  %i.rj = getelementptr inbounds nuw i8, ptr %.val.i24, i64 272
  %i.rk = getelementptr inbounds nuw i8, ptr %.val.i24, i64 276
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !16
  %i.rm = load <2 x float>, ptr %i.rj, align 16, !tbaa !16
  %i.rn = fmul reassoc nsz arcp contract afn <2 x float> %i.rm, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %.val.i24, i64 280
  %i.rp = load <2 x float>, ptr %i.ro, align 8, !tbaa !16
  %i.rq = fmul reassoc nsz arcp contract afn <2 x float> %i.rp, <float 2.000000e+00, float 0.000000e+00>
  %i.rr = extractelement <2 x float> %i.rn, i64 0
  br label %compute_wb_factors.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.rs = fcmp reassoc nsz arcp contract afn une float %i.rg, 0.000000e+00
  br i1 %i.rs, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.rt = getelementptr inbounds nuw i8, ptr %i.w, i64 284
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !189
  %.not31.i.i = icmp eq i32 %i.ru, 0
  %i.rv = insertelement <2 x float> poison, float %i.re, i64 0
  %i.rw = insertelement <2 x float> %i.rv, float %i.rg, i64 1
  br i1 %.not31.i.i, label %bb.af, label %compute_wb_factors.exit.i

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.rx = fcmp reassoc nsz arcp contract afn oeq float %i.rg, 0.000000e+00
  %i.ry = insertelement <2 x float> poison, float %i.rg, i64 0
  %i.rz = shufflevector <2 x float> %i.ry, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %i.rx, label %.preheader1.preheader.i.i, label %compute_wb_factors.exit.i

.preheader1.preheader.i.i:                        ; preds = %bb.af
  br label %compute_wb_factors.exit.i

compute_wb_factors.exit.i:                        ; preds = %.preheader1.preheader.i.i, %bb.af, %bb.ae, %.preheader.i.i
  %i.sa = phi float [ %i.rl, %.preheader.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i ], [ %i.rg, %bb.af ], [ %i.ra, %bb.ae ] ; 4 uses
  %i.sb = phi float [ %i.rr, %.preheader.i.i ], [ 1.000000e+00, %.preheader1.preheader.i.i ], [ %i.rg, %bb.af ], [ %i.rb, %bb.ae ] ; 4 uses
  %i.sc = phi <2 x float> [ %i.rn, %.preheader.i.i ], [ splat (float 1.000000e+00), %.preheader1.preheader.i.i ], [ %i.rz, %bb.af ], [ %i.qz, %bb.ae ] ; 2 uses
  %i.sd = phi <2 x float> [ %i.rq, %.preheader.i.i ], [ splat (float 1.000000e+00), %.preheader1.preheader.i.i ], [ %i.rz, %bb.af ], [ %i.rw, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.se = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.sf = load float, ptr %i.se, align 4, !tbaa !190 ; 2 uses
  %i.sg = fpext reassoc nsz arcp contract afn float %i.sf to double ; 2 uses
  %i.sh = insertelement <2 x float> poison, float %i.oi, i64 0
  %i.si = shufflevector <2 x float> %i.sh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sj = fdiv reassoc nsz arcp contract afn <2 x float> %i.si, %i.sc
  %i.sk = call reassoc nsz arcp contract afn <2 x float> @llvm.log.v2f32(<2 x float> %i.sj)
  %i.sl = fpext <2 x float> %i.sk to <2 x double>
  %i.sm = fmul reassoc nsz arcp contract afn <2 x double> %i.sl, splat (double 1.000000e-01)
  %i.sn = insertelement <2 x double> poison, double %i.sg, i64 0
  %i.so = shufflevector <2 x double> %i.sn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sp = fadd reassoc nsz arcp contract afn <2 x double> %i.sm, %i.so ; 2 uses
  %i.sq = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.sp, zeroinitializer
  %i.sr = fptrunc <2 x double> %i.sp to <2 x float>
  %i.ss = select <2 x i1> %i.sq, <2 x float> %i.sr, <2 x float> zeroinitializer ; 6 uses
  store <2 x float> %i.ss, ptr %i.j, align 16, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.st = extractelement <2 x float> %i.sd, i64 0 ; 2 uses
  %i.su = fdiv reassoc nsz arcp contract afn float %i.oi, %i.st
  %i.sv = call reassoc nsz arcp contract afn float @llvm.log.f32(float %i.su)
  %i.sw = fpext reassoc nsz arcp contract afn float %i.sv to double
  %i.sx = fmul reassoc nsz arcp contract afn double %i.sw, 1.000000e-01
  %i.sy = fadd reassoc nsz arcp contract afn double %i.sx, %i.sg ; 2 uses
  %i.sz = fcmp reassoc nsz arcp contract afn ogt double %i.sy, 0.000000e+00
  %i.ta = fptrunc reassoc nsz arcp contract afn double %i.sy to float
  %i.tb = select i1 %i.sz, float %i.ta, float 0.000000e+00 ; 6 uses
  %13 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tb, i64 0
  store <2 x float> %13, ptr %12, align 8, !tbaa !16
  %i.tc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.sf
  %i.td = call reassoc nsz arcp contract afn float @llvm.pow.f32(float 5.000000e-02, float %i.tc) ; 3 uses
  %i.te = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sb
  %i.tf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.sa
  %i.tg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.st
  %i.th = fadd reassoc nsz arcp contract afn float %i.tf, %i.tg
  %i.ti = fadd reassoc nsz arcp contract afn float %i.th, %i.te
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, f0x3FDDB3D7 ; 2 uses
  %i.tk = fmul reassoc nsz arcp contract afn float %i.sb, %i.sb
  %foldExtExtBinop265 = fmul reassoc nsz arcp contract afn <2 x float> %i.sd, %i.sd
  %i.tl = extractelement <2 x float> %foldExtExtBinop265, i64 0
  %i.tm = fmul reassoc nsz arcp contract afn float %i.sa, %i.sa ; 2 uses
  %i.tn = insertelement <2 x float> poison, float %i.tj, i64 0
  %i.to = shufflevector <2 x float> %i.tn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tp = insertelement <2 x float> poison, float %i.sa, i64 0
  %i.tq = insertelement <2 x float> %i.tp, float %i.sb, i64 1
  %i.tr = fdiv reassoc nsz arcp contract afn <2 x float> %i.to, %i.tq ; 6 uses
  %i.ts = fadd reassoc nsz arcp contract afn float %i.tk, %i.tl ; 3 uses
  %i.tt = fmul reassoc nsz arcp contract afn float %i.tm, 2.500000e-01
  %reass.mul.i.i = fmul reassoc nsz arcp contract afn float %i.ts, 6.250000e-02
  %i.tu = fmul reassoc nsz arcp contract afn float %i.ts, 2.500000e-01
  %i.tv = fadd reassoc nsz arcp contract afn float %reass.mul.i.i, %i.tt
  %i.tw = insertelement <2 x float> poison, float %i.tv, i64 0
  %i.tx = insertelement <2 x float> %i.tw, float %i.tu, i64 1
  %i.ty = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.tx) ; 3 uses
  %i.tz = insertelement <2 x float> <float -5.000000e-01, float poison>, float %i.tj, i64 1
  %i.ua = shufflevector <2 x float> %i.ty, <2 x float> %i.sd, <2 x i32> <i32 1, i32 2>
  %i.ub = fdiv reassoc nsz arcp contract afn <2 x float> %i.tz, %i.ua ; 6 uses
  %i.uc = fdiv reassoc nsz arcp contract afn <2 x float> <float 2.500000e-01, float 0.000000e+00>, %i.ty ; 7 uses
  %i.ud = fdiv reassoc nsz arcp contract afn <2 x float> <float -5.000000e-01, float 5.000000e-01>, %i.ty ; 7 uses
  %i.ue = extractelement <2 x float> %i.uc, i64 0 ; 3 uses
  %shift267 = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop268 = fmul reassoc nsz arcp contract afn <2 x float> %i.uc, %shift267 ; 2 uses
  %i.uf = extractelement <2 x float> %foldExtExtBinop268, i64 0
  %i.ug = extractelement <2 x float> %i.ud, i64 0 ; 3 uses
  %i.uh = extractelement <2 x float> %i.ub, i64 0 ; 2 uses
  %foldExtExtBinop270 = fmul reassoc nsz arcp contract afn <2 x float> %i.ud, %i.ub
  %foldExtExtBinop272 = fsub reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop268, %foldExtExtBinop270
  %i.ui = extractelement <2 x float> %foldExtExtBinop272, i64 0 ; 4 uses
  %i.uj = extractelement <2 x float> %i.ud, i64 1 ; 2 uses
  %i.uk = fsub reassoc nsz arcp contract afn float %i.uh, %i.uj
  %i.ul = fmul reassoc nsz arcp contract afn float %i.uk, %i.ue ; 4 uses
  %i.um = fmul reassoc nsz arcp contract afn float %i.ug, %i.uj
  %i.un = fsub reassoc nsz arcp contract afn float %i.um, %i.uf ; 4 uses
  %i.uo = extractelement <2 x float> %i.tr, i64 1 ; 3 uses
  %i.up = fmul reassoc nsz arcp contract afn float %i.ui, %i.uo
  %i.uq = extractelement <2 x float> %i.tr, i64 0 ; 2 uses
  %i.ur = fmul reassoc nsz arcp contract afn float %i.ul, %i.uq
  %i.us = extractelement <2 x float> %i.ub, i64 1 ; 4 uses
  %i.ut = fmul reassoc nsz arcp contract afn float %i.un, %i.us
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.ur
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, %i.up ; 2 uses
  %i.uw = fcmp reassoc nsz arcp contract afn oeq float %i.uv, 0.000000e+00
  br i1 %i.uw, label %bb.ag, label %invert_matrix.exit218.i

invert_matrix.exit218.i:                          ; preds = %compute_wb_factors.exit.i
  %i.ux = fmul reassoc nsz arcp contract afn <2 x float> %i.uc, %i.tr ; 2 uses
  %i.uy = shufflevector <2 x float> %i.tr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uz = fmul reassoc nsz arcp contract afn <2 x float> %i.ud, %i.uy
  %i.va = fsub reassoc nsz arcp contract afn <2 x float> %i.ux, %i.uz
  %i.vb = fsub reassoc nsz arcp contract afn float %i.uo, %i.us
  %i.vc = fmul reassoc nsz arcp contract afn float %i.vb, %i.ue
  %i.vd = fmul reassoc nsz arcp contract afn float %i.ug, %i.us
  %i.ve = extractelement <2 x float> %i.ux, i64 0
  %i.vf = fsub reassoc nsz arcp contract afn float %i.vd, %i.ve
  %i.vg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.uv ; 5 uses
  %i.vh = fmul reassoc nsz arcp contract afn float %i.vg, %i.ui
  %i.vi = fmul reassoc nsz arcp contract afn float %i.vg, %i.vf
  %i.vj = fmul reassoc nsz arcp contract afn float %i.vg, %i.ul
  %i.vk = shufflevector <2 x float> %i.tr, <2 x float> %i.ud, <2 x i32> <i32 0, i32 3>
  %i.vl = fmul reassoc nsz arcp contract afn <2 x float> %i.ub, %i.vk
  %i.vm = shufflevector <2 x float> %i.tr, <2 x float> %i.uc, <2 x i32> <i32 3, i32 1>
  %i.vn = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vo = fmul reassoc nsz arcp contract afn <2 x float> %i.vm, %i.vn
  %i.vp = fsub reassoc nsz arcp contract afn <2 x float> %i.vl, %i.vo
  %i.vq = insertelement <2 x float> poison, float %i.vg, i64 0
  %i.vr = shufflevector <2 x float> %i.vq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vs = fmul reassoc nsz arcp contract afn <2 x float> %i.vr, %i.vp
  %i.vt = insertelement <4 x float> poison, float %i.vg, i64 0
  %i.vu = shufflevector <4 x float> %i.vt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vv = insertelement <4 x float> poison, float %i.vc, i64 0
  %i.vw = insertelement <4 x float> %i.vv, float %i.un, i64 1
  %i.vx = shufflevector <2 x float> %i.va, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vy = shufflevector <4 x float> %i.vw, <4 x float> %i.vx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.vz = fmul reassoc nsz arcp contract afn <4 x float> %i.vu, %i.vy
  br label %set_up_conversion_matrices.exit.i

bb.ag:                                            ; preds = %compute_wb_factors.exit.i
  %i.wa = fadd reassoc nsz arcp contract afn float %i.ts, %i.tm
  %i.wb = fmul reassoc nsz arcp contract afn float %i.wa, f0x3DE38E39
  %i.wc = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.wb)
  %i.wd = fdiv reassoc nsz arcp contract afn float f0x3EAAAAAB, %i.wc ; 9 uses
  %i.we = fadd reassoc nsz arcp contract afn float %i.un, %i.ul
  %i.wf = fadd reassoc nsz arcp contract afn float %i.we, %i.ui
  %i.wg = fmul reassoc nsz arcp contract afn float %i.wf, %i.wd ; 2 uses
  %i.wh = fcmp reassoc nsz arcp contract afn oeq float %i.wg, 0.000000e+00
  br i1 %i.wh, label %set_up_conversion_matrices.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.wi = fmul reassoc nsz arcp contract afn float %i.wd, %i.uh ; 2 uses
  %i.wj = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.wk = shufflevector <2 x float> %i.wj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wl = fmul reassoc nsz arcp contract afn <2 x float> %i.ud, %i.wk ; 3 uses
  %i.wm = extractelement <2 x float> %i.wl, i64 1
  %i.wn = fsub reassoc nsz arcp contract afn float %i.wm, %i.wi
  %i.wo = fmul reassoc nsz arcp contract afn <2 x float> %i.uc, %i.wk ; 5 uses
  %i.wp = extractelement <2 x float> %i.wo, i64 1
  %i.wq = fsub reassoc nsz arcp contract afn float %i.wi, %i.wp
  %i.wr = fsub reassoc nsz arcp contract afn <2 x float> %i.wo, %i.wl
  %foldExtExtBinop274 = fsub reassoc nsz arcp contract afn <2 x float> %i.wo, %i.wo
  %i.ws = extractelement <2 x float> %foldExtExtBinop274, i64 0
  %foldExtExtBinop276 = fsub reassoc nsz arcp contract afn <2 x float> %i.wl, %i.wo
  %i.wt = extractelement <2 x float> %foldExtExtBinop276, i64 0
  %i.wu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.wg ; 6 uses
  %i.wv = fmul reassoc nsz arcp contract afn float %i.wu, %i.ui
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wu, %i.wt
  %i.wx = fmul reassoc nsz arcp contract afn float %i.wu, %i.wq
  %i.wy = fmul reassoc nsz arcp contract afn float %i.wu, %i.ul
  %i.wz = fmul reassoc nsz arcp contract afn float %i.wu, %i.wn
  %i.xa = insertelement <4 x float> poison, float %i.wu, i64 0
  %i.xb = shufflevector <4 x float> %i.xa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xc = insertelement <4 x float> poison, float %i.ws, i64 0
  %i.xd = insertelement <4 x float> %i.xc, float %i.un, i64 1
  %i.xe = shufflevector <2 x float> %i.wr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xf = shufflevector <4 x float> %i.xd, <4 x float> %i.xe, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.xg = fmul reassoc nsz arcp contract afn <4 x float> %i.xb, %i.xf
  %i.xh = insertelement <2 x float> poison, float %i.wx, i64 0
  %i.xi = insertelement <2 x float> %i.xh, float %i.wz, i64 1
  br label %set_up_conversion_matrices.exit.i

set_up_conversion_matrices.exit.i:                ; preds = %bb.ah, %bb.ag, %invert_matrix.exit218.i
  %.sroa.1362.0.i = phi nsz float [ %i.wd, %bb.ag ], [ %i.wd, %bb.ah ], [ %i.us, %invert_matrix.exit218.i ]
  %.sroa.860.0.i = phi nsz float [ %i.wd, %bb.ag ], [ %i.wd, %bb.ah ], [ %i.uq, %invert_matrix.exit218.i ]
  %.sroa.058.0.i = phi nsz float [ %i.wd, %bb.ag ], [ %i.wd, %bb.ah ], [ %i.uo, %invert_matrix.exit218.i ]
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %bb.ag ], [ %i.wv, %bb.ah ], [ %i.vh, %invert_matrix.exit218.i ]
  %.sroa.8.0.i = phi nsz float [ 0.000000e+00, %bb.ag ], [ %i.ww, %bb.ah ], [ %i.vi, %invert_matrix.exit218.i ]
  %.sroa.22.0.i = phi nsz float [ 0.000000e+00, %bb.ag ], [ %i.wy, %bb.ah ], [ %i.vj, %invert_matrix.exit218.i ]
  %i.xj = phi <2 x float> [ zeroinitializer, %bb.ag ], [ %i.xi, %bb.ah ], [ %i.vs, %invert_matrix.exit218.i ]
  %i.xk = phi <4 x float> [ zeroinitializer, %bb.ag ], [ %i.xg, %bb.ah ], [ %i.vz, %invert_matrix.exit218.i ] ; 4 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.w, i64 296 ; 3 uses
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !220
  %i.xn = icmp eq i32 %i.xm, 0                    ; 2 uses
  %i.xo = select reassoc nsz arcp contract afn i1 %i.xn, float 1.000000e+00, float 2.500000e+00
  %i.xp = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.xq = load float, ptr %i.xp, align 8, !tbaa !191
  %i.xr = fmul reassoc nsz arcp contract afn float %i.xq, %i.oi
  %i.xs = fmul reassoc nsz arcp contract afn float %i.xr, %i.xo ; 6 uses
  %i.xt = insertelement <2 x float> poison, float %i.xs, i64 0
  %i.xu = shufflevector <2 x float> %i.xt, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.xv = fmul reassoc nsz arcp contract afn <2 x float> %i.xu, %i.sc ; 7 uses
  %i.xw = extractelement <2 x float> %i.xv, i64 0
  %i.xx = extractelement <2 x float> %i.xv, i64 1 ; 2 uses
  %i.xy = fmul reassoc nsz arcp contract afn <2 x float> %i.xu, %i.sd ; 5 uses
  %i.xz = extractelement <2 x float> %i.xy, i64 0 ; 2 uses
  %i.ya = shufflevector <2 x float> %i.xv, <2 x float> %i.xy, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  store <4 x float> %i.ya, ptr %i.i, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.yb = getelementptr inbounds nuw i8, ptr %i.w, i64 36 ; 2 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !16 ; 4 uses
  %i.yd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.yc, i64 0
  %i.ye = shufflevector <4 x float> %i.yd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yf = insertelement <4 x float> %i.ya, float 1.000000e+00, i64 3
  %i.yg = fmul reassoc nsz arcp contract afn <4 x float> %i.ye, %i.yf ; 6 uses
  %i.yh = fmul reassoc nsz arcp contract afn float %i.yc, %i.xx ; 2 uses
  store <4 x float> %i.yg, ptr %i.k, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.yi = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.yj = load float, ptr %i.yi, align 8, !tbaa !16 ; 6 uses
  %i.yk = fmul reassoc nsz arcp contract afn float %i.yj, %i.xw ; 2 uses
  store float %i.yk, ptr %i.l, align 16, !tbaa !16
  %i.yl = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ym = fmul reassoc nsz arcp contract afn float %i.yj, %i.xx ; 2 uses
  store float %i.ym, ptr %i.yl, align 4, !tbaa !16
  %i.yn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.yo = fmul reassoc nsz arcp contract afn float %i.yj, %i.xz ; 2 uses
  store float %i.yo, ptr %i.yn, align 8, !tbaa !16
  %i.yp = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store float 0.000000e+00, ptr %i.yp, align 4, !tbaa !16
  %i.yq = getelementptr inbounds nuw i8, ptr %i.w, i64 292 ; 2 uses
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !192
  %.not196.i = icmp eq i32 %i.yr, 0
  %i.ys = load ptr, ptr %i.g, align 8, !tbaa !188 ; 14 uses
  br i1 %.not196.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %set_up_conversion_matrices.exit.i
  %i.yt = extractelement <4 x float> %i.yg, i64 0 ; 2 uses
  %i.yu = fdiv reassoc nsz arcp contract afn float %i.yk, %i.yt ; 2 uses
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, %i.yu
  %i.yw = fadd reassoc nsz arcp contract afn float %i.yv, 3.750000e-01 ; 2 uses
  %i.yx = fdiv reassoc nsz arcp contract afn float %i.ym, %i.yh ; 2 uses
  %i.yy = fmul reassoc nsz arcp contract afn float %i.yx, %i.yx
  %i.yz = fadd reassoc nsz arcp contract afn float %i.yy, 3.750000e-01 ; 2 uses
  %i.za = extractelement <4 x float> %i.yg, i64 2 ; 2 uses
  %i.zb = fdiv reassoc nsz arcp contract afn float %i.yo, %i.za ; 2 uses
  %i.zc = fmul reassoc nsz arcp contract afn float %i.zb, %i.zb
  %i.zd = fadd reassoc nsz arcp contract afn float %i.zc, 3.750000e-01 ; 2 uses
  %i.ze = shl nsw i64 %i.qm, 2
  %i.zf = mul i64 %i.ze, %i.qn                    ; 4 uses
  %.not.i201.i = icmp eq i64 %i.zf, 0
  br i1 %.not.i201.i, label %precondition.exit.i, label %.preheader.i202.i.preheader

.preheader.i202.i.preheader:                      ; preds = %bb.ai
  %i.zg = add i64 %i.zf, -4                       ; 2 uses
  %i.zh = lshr exact i64 %i.zg, 2
  %i.zi = add nuw nsw i64 %i.zh, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.zg, 28
  br i1 %min.iters.check, label %.preheader.i202.i.preheader283, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.i202.i.preheader
  %i.zj = shl i64 %i.zf, 2                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ys, i64 %i.zj
  %scevgep128 = getelementptr i8, ptr %2, i64 %i.zj
  %bound0 = icmp ult ptr %i.ys, %scevgep128
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i202.i.preheader283, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.zi, 9223372036854775800     ; 3 uses
  %i.zk = shl i64 %n.vec, 2
  %broadcast.splat = shufflevector <4 x float> %i.yg, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <8 x float> poison, float %i.yw, i64 0
  %broadcast.splat132 = shufflevector <4 x float> %i.yg, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert133 = insertelement <8 x float> poison, float %i.yz, i64 0
  %broadcast.splat136 = shufflevector <4 x float> %i.yg, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert137 = insertelement <8 x float> poison, float %i.zd, i64 0
  %broadcast.splat138 = shufflevector <8 x float> %broadcast.splatinsert137, <8 x float> poison, <8 x i32> zeroinitializer
  %i.zl = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  %i.zm = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat132
  %i.zn = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat136
  %i.zo = shufflevector <8 x float> %broadcast.splatinsert129, <8 x float> %broadcast.splatinsert133, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zp = shl nuw i64 %index, 2                   ; 2 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zp
  %wide.vec = load <32 x float>, ptr %i.zq, align 4, !tbaa !16, !alias.scope !221 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec139 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec140 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec141 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.zr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, %i.zl
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %i.zp
  %i.zt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec139, %i.zm
  %i.zu = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec140, %i.zn
  %i.zv = fadd reassoc nsz arcp contract afn <8 x float> %broadcast.splat138, %i.zu
  %i.zw = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec141, splat (float +inf)
  %i.zx = shufflevector <8 x float> %i.zr, <8 x float> %i.zt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zy = fadd reassoc nsz arcp contract afn <16 x float> %i.zo, %i.zx
  %i.zz = shufflevector <8 x float> %i.zv, <8 x float> %i.zw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aaa = shufflevector <16 x float> %i.zy, <16 x float> %i.zz, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  %i.aab = call reassoc nsz arcp contract afn <32 x float> @llvm.maxnum.v32f32(<32 x float> %i.aaa, <32 x float> zeroinitializer)
  %i.aac = call reassoc nnan nsz arcp contract afn <32 x float> @llvm.sqrt.v32f32(<32 x float> %i.aab)
  %interleaved.vec = fmul reassoc nnan nsz arcp contract afn <32 x float> %i.aac, splat (float 2.000000e+00)
  store <32 x float> %interleaved.vec, ptr %i.zs, align 4, !tbaa !16, !alias.scope !224, !noalias !221
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aad = icmp eq i64 %index.next, %n.vec
  br i1 %i.aad, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zi, %n.vec
  br i1 %cmp.n, label %precondition.exit.i, label %.preheader.i202.i.preheader283

.preheader.i202.i.preheader283:                   ; preds = %vector.memcheck, %.preheader.i202.i.preheader, %middle.block
  %.02830.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.i202.i.preheader ], [ %i.zk, %middle.block ]
  %i.aae = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yt
  %i.aaf = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yh
  %i.aag = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.za
  br label %.preheader.i202.i

.preheader.i202.i:                                ; preds = %.preheader.i202.i.preheader283, %.preheader.i202.i
  %.02830.i.i = phi i64 [ %i.abp, %.preheader.i202.i ], [ %.02830.i.i.ph, %.preheader.i202.i.preheader283 ] ; 6 uses
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02830.i.i
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !16
  %i.aaj = fmul reassoc nsz arcp contract afn float %i.aai, %i.aae
  %i.aak = fadd reassoc nsz arcp contract afn float %i.yw, %i.aaj
  %i.aal = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aak, float 0.000000e+00)
  %i.aam = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.aal)
  %i.aan = fmul reassoc nnan nsz arcp contract afn float %i.aam, 2.000000e+00
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %.02830.i.i
  store float %i.aan, ptr %i.aao, align 4, !tbaa !16
  %i.aap = or disjoint i64 %.02830.i.i, 1         ; 2 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aap
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !16
  %i.aas = fmul reassoc nsz arcp contract afn float %i.aar, %i.aaf
  %i.aat = fadd reassoc nsz arcp contract afn float %i.yz, %i.aas
  %i.aau = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aat, float 0.000000e+00)
  %i.aav = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.aau)
  %i.aaw = fmul reassoc nnan nsz arcp contract afn float %i.aav, 2.000000e+00
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %i.aap
  store float %i.aaw, ptr %i.aax, align 4, !tbaa !16
  %i.aay = or disjoint i64 %.02830.i.i, 2         ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aay
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !16
  %i.abb = fmul reassoc nsz arcp contract afn float %i.aba, %i.aag
  %i.abc = fadd reassoc nsz arcp contract afn float %i.zd, %i.abb
  %i.abd = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abc, float 0.000000e+00)
  %i.abe = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.abd)
  %i.abf = fmul reassoc nnan nsz arcp contract afn float %i.abe, 2.000000e+00
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %i.aay
  store float %i.abf, ptr %i.abg, align 4, !tbaa !16
  %i.abh = or disjoint i64 %.02830.i.i, 3         ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.abh
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !16
  %i.abk = fmul reassoc nsz arcp contract afn float %i.abj, +inf
  %i.abl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.abk, float 0.000000e+00)
  %i.abm = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.abl)
  %i.abn = fmul reassoc nnan nsz arcp contract afn float %i.abm, 2.000000e+00
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %i.abh
  store float %i.abn, ptr %i.abo, align 4, !tbaa !16
  %i.abp = add nuw i64 %.02830.i.i, 4             ; 2 uses
  %i.abq = icmp ult i64 %i.abp, %i.zf
  br i1 %i.abq, label %.preheader.i202.i, label %precondition.exit.i, !llvm.loop !227

bb.aj:                                            ; preds = %set_up_conversion_matrices.exit.i
  %i.abr = fmul reassoc nsz arcp contract afn <2 x float> %i.ss, splat (float 5.000000e-01)
  %i.abs = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.abr ; 4 uses
  %i.abt = fmul reassoc nsz arcp contract afn float %i.tb, 5.000000e-01
  %i.abu = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.abt ; 4 uses
  %i.abv = shl nsw i64 %i.qm, 2
  %i.abw = mul i64 %i.abv, %i.qn                  ; 3 uses
  %.not.i203.i = icmp eq i64 %i.abw, 0            ; 2 uses
  br i1 %i.xn, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ak
  %i.abx = fmul reassoc nsz arcp contract afn float %i.yc, %i.td
  %i.aby = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.abx)
  %14 = shufflevector <2 x float> %i.ss, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = insertelement <4 x float> %14, float 0.000000e+00, i64 3
  %16 = insertelement <4 x float> %15, float %i.tb, i64 2
  %i.abz = fsub reassoc nsz arcp contract afn <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 1.000000e+00>, %16
  %i.aca = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.aby, i64 0
  %i.acb = shufflevector <4 x float> %i.aca, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.acc = fmul reassoc nsz arcp contract afn <4 x float> %i.acb, %i.abz ; 3 uses
  %i.acd = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.ace = shufflevector <2 x float> %i.acd, <2 x float> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.acf = add i64 %i.abw, -4                     ; 3 uses
  %i.acg = lshr exact i64 %i.acf, 2
  %i.ach = add nuw nsw i64 %i.acg, 1              ; 2 uses
  %i.aci = icmp eq i64 %i.acf, 0
  br i1 %i.aci, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.ach, 9223372036854775806
  %i.acj = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xy
  %i.ack = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xv
  %i.acl = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.acc
  %i.acm = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xy
  %i.acn = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.xv
  %i.aco = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.acc
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.04247.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.aek, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i ; 2 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acr = load <2 x float>, ptr %i.acq, align 4, !tbaa !16
  %i.acs = fmul reassoc nsz arcp contract afn <2 x float> %i.acr, %i.acj
  %i.act = fadd reassoc nsz arcp contract afn <2 x float> %i.acs, %i.ace ; 2 uses
  %i.acu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.act, zeroinitializer
  %i.acv = select <2 x i1> %i.acu, <2 x float> %i.act, <2 x float> zeroinitializer ; 2 uses
  %i.acw = extractelement <2 x float> %i.acv, i64 0
  %i.acx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.acw, float %i.abu)
  %i.acy = load <2 x float>, ptr %i.acp, align 4, !tbaa !16
  %i.acz = fmul reassoc nsz arcp contract afn <2 x float> %i.acy, %i.ack
  %i.ada = fadd reassoc nsz arcp contract afn <2 x float> %i.acz, %i.ace ; 2 uses
  %i.adb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ada, zeroinitializer
  %i.adc = select <2 x i1> %i.adb, <2 x float> %i.ada, <2 x float> zeroinitializer
  %i.add = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.adc, <2 x float> %i.abs)
  %i.ade = insertelement <4 x float> poison, float %i.acx, i64 2
  %i.adf = shufflevector <2 x float> %i.acv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.adg = shufflevector <4 x float> %i.ade, <4 x float> %i.adf, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.adh = shufflevector <2 x float> %i.add, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.adi = shufflevector <4 x float> %i.adh, <4 x float> %i.adg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.adj = fmul reassoc nsz arcp contract afn <4 x float> %i.adi, splat (float 2.000000e+00)
  %i.adk = fmul reassoc nsz arcp contract afn <4 x float> %i.adj, %i.acl
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %.04247.i.i
  store <4 x float> %i.adk, ptr %i.adl, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  %i.adm = or disjoint i64 %.04247.i.i, 4         ; 2 uses
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.adm ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adn, i64 8
  %i.adp = load <2 x float>, ptr %i.ado, align 4, !tbaa !16
  %i.adq = fmul reassoc nsz arcp contract afn <2 x float> %i.adp, %i.acm
  %i.adr = fadd reassoc nsz arcp contract afn <2 x float> %i.adq, %i.ace ; 2 uses
  %i.ads = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.adr, zeroinitializer
  %i.adt = select <2 x i1> %i.ads, <2 x float> %i.adr, <2 x float> zeroinitializer ; 2 uses
  %i.adu = extractelement <2 x float> %i.adt, i64 0
  %i.adv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.adu, float %i.abu)
  %i.adw = load <2 x float>, ptr %i.adn, align 4, !tbaa !16
  %i.adx = fmul reassoc nsz arcp contract afn <2 x float> %i.adw, %i.acn
  %i.ady = fadd reassoc nsz arcp contract afn <2 x float> %i.adx, %i.ace ; 2 uses
  %i.adz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ady, zeroinitializer
  %i.aea = select <2 x i1> %i.adz, <2 x float> %i.ady, <2 x float> zeroinitializer
  %i.aeb = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.aea, <2 x float> %i.abs)
  %i.aec = insertelement <4 x float> poison, float %i.adv, i64 2
  %i.aed = shufflevector <2 x float> %i.adt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.aee = shufflevector <4 x float> %i.aec, <4 x float> %i.aed, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.aef = shufflevector <2 x float> %i.aeb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aeg = shufflevector <4 x float> %i.aef, <4 x float> %i.aee, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aeh = fmul reassoc nsz arcp contract afn <4 x float> %i.aeg, splat (float 2.000000e+00)
  %i.aei = fmul reassoc nsz arcp contract afn <4 x float> %i.aeh, %i.aco
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %i.adm
  store <4 x float> %i.aei, ptr %i.aej, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  %i.aek = add nuw i64 %.04247.i.i, 8             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %precondition.exit.sink.split.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.al:                                            ; preds = %bb.aj
  br i1 %.not.i203.i, label %precondition.exit.sink.split.i, label %.lr.ph.i205.i

.lr.ph.i205.i:                                    ; preds = %bb.al
  %i.ael = fmul reassoc nsz arcp contract afn float %i.yc, %i.td
  %i.aem = fsub reassoc nsz arcp contract afn float 2.000000e+00, %i.tb
  %i.aen = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ael) ; 2 uses
  %i.aeo = fmul reassoc nsz arcp contract afn float %i.aen, %i.aem
  %i.aep = fsub reassoc nsz arcp contract afn <2 x float> splat (float 2.000000e+00), %i.ss
  %i.aeq = insertelement <2 x float> poison, float %i.aen, i64 0
  %i.aer = shufflevector <2 x float> %i.aeq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aes = fmul reassoc nsz arcp contract afn <2 x float> %i.aer, %i.aep
  %i.aet = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xs
  %i.aeu = shufflevector <2 x float> %i.ub, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aev = insertelement <2 x float> %i.aeu, float %.sroa.1362.0.i, i64 0
  %i.aew = insertelement <2 x float> poison, float %i.aet, i64 0 ; 2 uses
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aey = insertelement <2 x float> %i.ud, float %.sroa.860.0.i, i64 0
  %i.aez = fmul reassoc nsz arcp contract afn <2 x float> %i.aey, %i.aex
  %i.afa = insertelement <2 x float> %i.uc, float %.sroa.058.0.i, i64 0
  %i.afb = fmul reassoc nsz arcp contract afn <2 x float> %i.afa, %i.aex
  %i.afc = insertelement <2 x float> poison, float %i.yj, i64 0
  %i.afd = shufflevector <2 x float> %i.afc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afe = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aeo
  %i.aff = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.aes
  %i.afg = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xs
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i205.i
  %.02832.i.i = phi i64 [ 0, %.lr.ph.i205.i ], [ %i.agr, %bb.am ] ; 3 uses
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.02832.i.i ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 8
  %i.afj = load float, ptr %i.afi, align 4, !tbaa !16
  %i.afk = fadd reassoc nsz arcp contract afn float %i.afj, %i.yj ; 2 uses
  %i.afl = fcmp reassoc nsz arcp contract afn ogt float %i.afk, 0.000000e+00
  %i.afm = select reassoc nsz arcp contract afn i1 %i.afl, float %i.afk, float 0.000000e+00
  %i.afn = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.afm, float %i.abu)
  %i.afo = fmul reassoc nsz arcp contract afn float %i.afn, 2.000000e+00
  %i.afp = fmul reassoc nsz arcp contract afn float %i.afo, %i.afe ; 3 uses
  %i.afq = load <2 x float>, ptr %i.afh, align 4, !tbaa !16
  %i.afr = fadd reassoc nsz arcp contract afn <2 x float> %i.afq, %i.afd ; 2 uses
  %i.afs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afr, zeroinitializer
  %i.aft = select <2 x i1> %i.afs, <2 x float> %i.afr, <2 x float> zeroinitializer
  %i.afu = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.aft, <2 x float> %i.abs)
  %i.afv = fmul reassoc nsz arcp contract afn <2 x float> %i.afu, splat (float 2.000000e+00)
  %i.afw = fmul reassoc nsz arcp contract afn <2 x float> %i.afv, %i.aff ; 4 uses
  %i.afx = shufflevector <2 x float> %i.afw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afy = fmul reassoc nsz arcp contract afn <2 x float> %i.afx, %i.aez
  %i.afz = fmul reassoc nsz arcp contract afn <2 x float> %i.afw, %i.afb
  %i.aga = fadd reassoc nsz arcp contract afn <2 x float> %i.afz, %i.afy
  %i.agb = insertelement <2 x float> poison, float %i.afp, i64 0
  %i.agc = fmul reassoc nsz arcp contract afn <2 x float> %i.agb, %i.aew
  %i.agd = shufflevector <2 x float> %i.agc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.age = fmul reassoc nsz arcp contract afn <2 x float> %i.agd, %i.aev
  %i.agf = fadd reassoc nsz arcp contract afn <2 x float> %i.aga, %i.age
  %i.agg = shufflevector <2 x float> %i.agf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.agh = extractelement <2 x float> %i.afw, i64 1 ; 2 uses
  %i.agi = fmul reassoc nsz arcp contract afn float %i.ug, %i.agh
  %i.agj = extractelement <2 x float> %i.afw, i64 0 ; 2 uses
  %reass.add = fadd reassoc nsz arcp contract afn float %i.afp, %i.agj
  %i.agk = fmul reassoc nsz arcp contract afn float %i.ue, %reass.add
  %i.agl = fadd reassoc nsz arcp contract afn float %i.agk, %i.agi
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, %i.afg
  %.sroa.0.8.vec.insert.i.i = insertelement <4 x float> %i.agg, float %i.agm, i64 2
  %i.agn = fadd reassoc nsz arcp contract afn float %i.agh, %i.agj
  %i.ago = fadd reassoc nsz arcp contract afn float %i.agn, %i.afp
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, 0.000000e+00
  %.sroa.0.12.vec.insert.i.i = insertelement <4 x float> %.sroa.0.8.vec.insert.i.i, float %i.agp, i64 3
  %i.agq = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %.02832.i.i
  store <4 x float> %.sroa.0.12.vec.insert.i.i, ptr %i.agq, align 16, !tbaa !42, !alias.scope !231, !nontemporal !207
  %i.agr = add nuw i64 %.02832.i.i, 4             ; 2 uses
  %i.ags = icmp ult i64 %i.agr, %i.abw
  br i1 %i.ags, label %bb.am, label %precondition.exit.sink.split.i

precondition.exit.sink.split.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %i.agt = and i64 %i.acf, 4
  %lcmp.mod.not.not = icmp eq i64 %i.agt, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %precondition.exit.sink.split.i

.lr.ph.i.i.epil.preheader:                        ; preds = %precondition.exit.sink.split.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.04247.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.aek, %precondition.exit.sink.split.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod285 = trunc i64 %i.ach to i1
  call void @llvm.assume(i1 %lcmp.mod285)
  %i.agu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.04247.i.i.epil.init ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  %i.agw = load <2 x float>, ptr %i.agv, align 4, !tbaa !16
  %i.agx = fdiv reassoc nsz arcp contract afn <2 x float> %i.agw, %i.xy
  %i.agy = fadd reassoc nsz arcp contract afn <2 x float> %i.agx, %i.ace ; 2 uses
  %i.agz = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.agy, zeroinitializer
  %i.aha = select <2 x i1> %i.agz, <2 x float> %i.agy, <2 x float> zeroinitializer ; 2 uses
  %i.ahb = extractelement <2 x float> %i.aha, i64 0
  %i.ahc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ahb, float %i.abu)
  %i.ahd = load <2 x float>, ptr %i.agu, align 4, !tbaa !16
  %i.ahe = fdiv reassoc nsz arcp contract afn <2 x float> %i.ahd, %i.xv
  %i.ahf = fadd reassoc nsz arcp contract afn <2 x float> %i.ahe, %i.ace ; 2 uses
  %i.ahg = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ahf, zeroinitializer
  %i.ahh = select <2 x i1> %i.ahg, <2 x float> %i.ahf, <2 x float> zeroinitializer
  %i.ahi = call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.ahh, <2 x float> %i.abs)
  %i.ahj = insertelement <4 x float> poison, float %i.ahc, i64 2
  %i.ahk = shufflevector <2 x float> %i.aha, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ahl = shufflevector <4 x float> %i.ahj, <4 x float> %i.ahk, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.ahm = shufflevector <2 x float> %i.ahi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ahn = shufflevector <4 x float> %i.ahm, <4 x float> %i.ahl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aho = fmul reassoc nsz arcp contract afn <4 x float> %i.ahn, splat (float 2.000000e+00)
  %i.ahp = fdiv reassoc nsz arcp contract afn <4 x float> %i.aho, %i.acc
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %.04247.i.i.epil.init
  store <4 x float> %i.ahp, ptr %i.ahq, align 16, !tbaa !42, !alias.scope !228, !nontemporal !207
  br label %precondition.exit.sink.split.i

precondition.exit.sink.split.i:                   ; preds = %bb.am, %.lr.ph.i.i.epil.preheader, %precondition.exit.sink.split.i.loopexit.unr-lcssa, %bb.al, %bb.ak
  call void @llvm.x86.sse.sfence()
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !188
  br label %precondition.exit.i

precondition.exit.i:                              ; preds = %.preheader.i202.i, %middle.block, %precondition.exit.sink.split.i, %bb.ai
  %i.ahr = phi ptr [ %i.ys, %bb.ai ], [ %.pre, %precondition.exit.sink.split.i ], [ %i.ys, %middle.block ], [ %i.ys, %.preheader.i202.i ] ; 3 uses
  %i.ahs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3096), align 8, !tbaa !234, !noalias !235
  %.not.i206.i = icmp eq ptr %i.ahs, null
  br i1 %.not.i206.i, label %debug_dump_PFM.exit.i, label %bb.an

bb.an:                                            ; preds = %precondition.exit.i
  %i.aht = load ptr, ptr %i.qx, align 8, !tbaa !138, !noalias !235
end_hunk_0
