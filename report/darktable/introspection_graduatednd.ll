Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_graduatednd?download=true
inline.NumInlined: 49
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@mouse_moved:bb.a
  br i1 %or.cond74, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %i.aa
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %1, %i.av
  %i.ax = fadd reassoc nsz arcp contract afn float %i.au, %i.aa
  %i.ay = fcmp reassoc nsz arcp contract afn olt float %1, %i.ax
  %or.cond76 = and i1 %i.aw, %i.ay
  br i1 %or.cond76, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  store i32 2, ptr %i.t, align 8, !tbaa !92
  br label %bb.s

._crit_edge:                                      ; preds = %bb.i, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ba = load float, ptr %i.az, align 4, !tbaa !88 ; 4 uses
  %i.bb = fcmp reassoc nsz arcp contract afn oeq float %i.ba, %i.au
  %i.bc = fcmp reassoc nsz arcp contract afn oeq float %i.ac, %i.ao
  %or.cond.i = and i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bd = fsub reassoc nsz arcp contract afn float %1, %i.ba ; 2 uses
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.bd
  %i.bf = fsub reassoc nsz arcp contract afn float %2, %i.ac ; 2 uses
  %i.bg = fmul reassoc nsz arcp contract afn float %i.bf, %i.bf
  %i.bh = fadd reassoc nsz arcp contract afn float %i.be, %i.bg
  br label %_dist_seg.exit

bb.m:                                             ; preds = %._crit_edge
  %i.bi = fsub reassoc nsz arcp contract afn float %i.au, %i.ba ; 3 uses
  %i.bj = fsub reassoc nsz arcp contract afn float %i.ao, %i.ac ; 3 uses
  %i.bk = fsub reassoc nsz arcp contract afn float %1, %i.ba ; 5 uses
  %i.bl = fsub reassoc nsz arcp contract afn float %2, %i.ac ; 5 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bi, %i.bk
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bj, %i.bl
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn ; 4 uses
  %i.bp = fcmp reassoc nsz arcp contract afn olt float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bk, %i.bk
  %i.br = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl
  %i.bs = fadd reassoc nsz arcp contract afn float %i.bq, %i.br
  br label %_dist_seg.exit

bb.o:                                             ; preds = %bb.m
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bi, %i.bi
  %i.bu = fmul reassoc nsz arcp contract afn float %i.bj, %i.bj
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bt, %i.bu ; 2 uses
  %i.bw = fcmp reassoc nsz arcp contract afn ogt float %i.bo, %i.bv
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = fsub reassoc nsz arcp contract afn float %1, %i.au ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, %i.bx
  %i.bz = fsub reassoc nsz arcp contract afn float %2, %i.ao ; 2 uses
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bz
  %i.cb = fadd reassoc nsz arcp contract afn float %i.by, %i.ca
  br label %_dist_seg.exit

bb.q:                                             ; preds = %bb.o
  %i.cc = fmul reassoc nsz arcp contract afn float %i.bk, %i.bk
  %i.cd = fmul reassoc nsz arcp contract afn float %i.bl, %i.bl
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cc, %i.cd
  %i.cf = fneg reassoc nsz arcp contract afn float %i.bo
  %i.cg = fmul reassoc nsz arcp contract afn float %i.bo, %i.cf
  %.neg.i = fdiv reassoc nsz arcp contract afn float %i.cg, %i.bv
  %i.ch = fadd reassoc nsz arcp contract afn float %i.ce, %.neg.i
  br label %_dist_seg.exit

_dist_seg.exit:                                   ; preds = %bb.l, %bb.n, %bb.p, %bb.q
  %.2.i = phi nsz float [ %i.bh, %bb.l ], [ %i.bs, %bb.n ], [ %i.cb, %bb.p ], [ %i.ch, %bb.q ]
  %i.ci = fpext reassoc nsz arcp contract afn float %.2.i to double
  %i.cj = fmul reassoc nsz arcp contract afn float %i.aa, %i.aa
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fmul reassoc nsz arcp contract afn double %i.ck, 5.000000e-01
  %i.cm = fcmp reassoc nsz arcp contract afn ogt double %i.cl, %i.ci
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_dist_seg.exit
  store i32 3, ptr %i.t, align 8, !tbaa !92
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %_dist_seg.exit, %bb.r, %bb.k, %bb.c, %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.e ], [ 0, %bb.k ], [ 0, %bb.r ], [ 0, %_dist_seg.exit ], [ 0, %bb.h ]
  tail call void @dt_control_queue_redraw_center() #19
  ret i32 %.0
}

declare void @dt_control_queue_redraw_center() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @button_pressed(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !65  ; 8 uses
  %i.c = icmp eq i32 %4, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 2, ptr %i.d, align 4, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.f = insertelement <4 x float> poison, float %1, i64 0
  %i.g = insertelement <4 x float> %i.f, float %2, i64 1
  %i.h = shufflevector <4 x float> %i.g, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x float> %i.h, ptr %i.e, align 4, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store float %1, ptr %i.i, align 4, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store float %2, ptr %i.j, align 8, !tbaa !135
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = icmp eq i32 %4, 1
  %or.cond = and i1 %i.n, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 2 uses
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 %i.l, ptr %i.o, align 4, !tbaa !93
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store float %1, ptr %i.p, align 4, !tbaa !134
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store float %2, ptr %i.q, align 8, !tbaa !135
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 4, !tbaa !93
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef i32 @button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !65  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !104
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.s = load <4 x float>, ptr %i.k, align 4, !tbaa !63
  %i.t = call i32 @dt_dev_get_preview_size(ptr noundef %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #19 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.u = load float, ptr %i.a, align 4, !tbaa !63
  %i.v = load float, ptr %i.b, align 4, !tbaa !63
  %i.w = insertelement <4 x float> poison, float %i.u, i64 0
  %i.x = insertelement <4 x float> %i.w, float %i.v, i64 1
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.z = fmul reassoc nsz arcp contract afn <4 x float> %i.y, %i.s
  store <4 x float> %i.z, ptr %i.c, align 16, !tbaa !63
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !104 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 96
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !105
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ae = load i32, ptr %i.ad, align 16, !tbaa !133
  %i.af = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  %i.ag = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.aa, ptr noundef %i.ac, double noundef %i.af, i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef 2) #19 ; 0 uses
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !104 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !105
  %i.ak = call ptr @dt_dev_distort_get_iop_pipe(ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef nonnull %0) #19 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 164
  %i.am = load i32, ptr %i.al, align 4, !tbaa !136
  %i.an = sitofp reassoc nsz arcp contract afn i32 %i.am to float
  %i.ao = load <3 x float>, ptr %i.c, align 16, !tbaa !63
  %i.ap = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.aq = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fdiv reassoc nsz arcp contract afn <2 x float> %i.ap, %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 168
  %i.au = load i32, ptr %i.at, align 4, !tbaa !143
  %i.av = sitofp reassoc nsz arcp contract afn i32 %i.au to float ; 2 uses
  %i.aw = load float, ptr %i.q, align 4, !tbaa !63
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.aw, %i.av ; 4 uses
  %i.ay = load float, ptr %i.r, align 4, !tbaa !63
  %i.az = fdiv reassoc nsz arcp contract afn float %i.ay, %i.av ; 2 uses
  %reass.add.i = fsub reassoc nsz arcp contract afn float %i.az, %i.ax ; 2 uses
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, f0x3F7B14BE
  %i.ba = extractelement <2 x float> %i.as, i64 0 ; 5 uses
  %i.bb = extractelement <2 x float> %i.as, i64 1 ; 4 uses
  %reass.add = fsub reassoc nsz arcp contract afn float %i.ba, %i.bb
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, f0x3E47C5CD
  %i.bc = fadd reassoc nsz arcp contract afn float %reass.mul.i, %reass.mul
  %factor.op.fmul.i = fneg reassoc nsz arcp contract afn float %i.az ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.088.i = phi nsz float [ f0xC0490FDB, %bb.b ], [ %..088.i.1, %bb.f ] ; 2 uses
  %.186.i = phi nsz float [ f0x4055A0D9, %bb.b ], [ %.186..i.1, %bb.f ] ; 2 uses
  %.083.i = phi nsz float [ %i.bc, %bb.b ], [ %.083..i.1, %bb.f ] ; 2 uses
  %.079.i = phi i32 [ 0, %bb.b ], [ %i.br, %bb.f ] ; 4 uses
  %i.bd = fadd reassoc nsz arcp contract afn float %.186.i, %.088.i
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 5.000000e-01 ; 4 uses
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.be) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %6 = fmul reassoc nsz arcp contract afn float %cos.i, %i.ax
  %7 = fmul reassoc nsz arcp contract afn float %sin.i, %i.bb
  %.neg102.reass.i = fmul reassoc nsz arcp contract afn float %cos.i, %factor.op.fmul.i
  %.neg103.i = fadd reassoc nsz arcp contract afn float %6, %7
  %i.bf = fmul reassoc nsz arcp contract afn float %sin.i, %i.ba
  %reass.add104.i = fsub reassoc nsz arcp contract afn float %.neg102.reass.i, %i.bf
  %i.bg = fadd reassoc nsz arcp contract afn float %.neg103.i, %reass.add104.i ; 3 uses
  %i.bh = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bg)
  %or.cond3.i = fcmp reassoc nsz arcp contract afn olt float %i.bh, f0x38D1B717
  br i1 %or.cond3.i, label %.split.loop.exit37, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = fmul reassoc nsz arcp contract afn float %i.bg, %.083.i
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %i.bi, 0.000000e+00 ; 3 uses
  %..088.i = select nsz i1 %i.bj, float %i.be, float %.088.i ; 2 uses
  %.186..i = select nsz i1 %i.bj, float %.186.i, float %i.be ; 2 uses
  %.083..i = select nsz i1 %i.bj, float %.083.i, float %i.bg ; 2 uses
  %exitcond.not.i = icmp eq i32 %.079.i, 1000
  br i1 %exitcond.not.i, label %_set_grad_from_points.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = fadd reassoc nsz arcp contract afn float %.186..i, %..088.i
  %i.bl = fmul reassoc nsz arcp contract afn float %i.bk, 5.000000e-01 ; 4 uses
  %sincos.i.1 = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bl) ; 2 uses
  %sin.i.1 = extractvalue { float, float } %sincos.i.1, 0 ; 2 uses
  %cos.i.1 = extractvalue { float, float } %sincos.i.1, 1 ; 2 uses
  %8 = fmul reassoc nsz arcp contract afn float %cos.i.1, %i.ax
  %9 = fmul reassoc nsz arcp contract afn float %sin.i.1, %i.bb
  %.neg102.reass.i.1 = fmul reassoc nsz arcp contract afn float %cos.i.1, %factor.op.fmul.i
  %.neg103.i.1 = fadd reassoc nsz arcp contract afn float %8, %9
  %i.bm = fmul reassoc nsz arcp contract afn float %sin.i.1, %i.ba
  %reass.add104.i.1 = fsub reassoc nsz arcp contract afn float %.neg102.reass.i.1, %i.bm
  %i.bn = fadd reassoc nsz arcp contract afn float %.neg103.i.1, %reass.add104.i.1 ; 3 uses
  %i.bo = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bn)
  %or.cond3.i.1 = fcmp reassoc nsz arcp contract afn olt float %i.bo, f0x38D1B717
  br i1 %or.cond3.i.1, label %.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bp = fmul reassoc nsz arcp contract afn float %i.bn, %.083..i
  %i.bq = fcmp reassoc nsz arcp contract afn olt float %i.bp, 0.000000e+00 ; 3 uses
  %..088.i.1 = select nsz i1 %i.bq, float %i.bl, float %..088.i
  %.186..i.1 = select nsz i1 %i.bq, float %.186..i, float %i.bl
  %.083..i.1 = select nsz i1 %i.bq, float %.083..i, float %i.bn
  %i.br = add nuw nsw i32 %.079.i, 2
  br label %bb.c

.split.loop.exit:                                 ; preds = %bb.e
  %i.bs = or disjoint i32 %.079.i, 1
  br label %.split.loop.exit37

.split.loop.exit37:                               ; preds = %bb.c, %.split.loop.exit
  %.079.i.lcssa = phi i32 [ %i.bs, %.split.loop.exit ], [ %.079.i, %bb.c ]
  %.lcssa = phi float [ %i.bl, %.split.loop.exit ], [ %i.be, %bb.c ] ; 7 uses
  %i.bt = icmp samesign ugt i32 %.079.i.lcssa, 999
  br i1 %i.bt, label %_set_grad_from_points.exit, label %bb.g

bb.g:                                             ; preds = %.split.loop.exit37
  %10 = fsub reassoc nsz arcp contract afn float %i.bb, %i.ba ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %10, f0x38D1B717
  br i1 %i.bu, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bv = fcmp reassoc nsz arcp contract afn ult float %.lcssa, f0x3FC90FDB
  %i.bw = fadd reassoc nsz arcp contract afn float %.lcssa, f0xC0490FDB
  %.081.i = select nsz i1 %i.bv, float %.lcssa, float %i.bw ; 3 uses
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %.081.i, f0xBFC90FDB
  br i1 %i.bx, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.by = fadd reassoc nsz arcp contract afn float %.081.i, f0x40490FDB
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.bz = fcmp reassoc nsz arcp contract afn olt float %10, f0xB8D1B717
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = fcmp reassoc nsz arcp contract afn olt float %.lcssa, f0x3FC90FDB
  %i.cb = fcmp reassoc nsz arcp contract afn oge float %.lcssa, 0.000000e+00
  %or.cond5.i = and i1 %i.ca, %i.cb
  %i.cc = fadd reassoc nsz arcp contract afn float %.lcssa, f0xC0490FDB
  %spec.select.i = select i1 %or.cond5.i, float %i.cc, float %.lcssa ; 4 uses
  %i.cd = fcmp reassoc nsz arcp contract afn ogt float %spec.select.i, f0xBFC90FDB
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, 0.000000e+00
  %or.cond7.i = and i1 %i.cd, %i.ce
  %i.cf = fadd reassoc nsz arcp contract afn float %spec.select.i, f0x40490FDB
  %spec.select98.i = select i1 %or.cond7.i, float %i.cf, float %spec.select.i
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.cg = fcmp reassoc nsz arcp contract afn ugt float %reass.add.i, 0.000000e+00
  %..i = select nsz i1 %i.cg, float f0x3FC90FDB, float f0xBFC90FDB
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.3.i = phi nsz float [ %i.by, %bb.i ], [ %.081.i, %bb.h ], [ %..i, %bb.l ], [ %spec.select98.i, %bb.k ] ; 2 uses
  %sincos95.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.3.i) ; 2 uses
  %sin96.i = extractvalue { float, float } %sincos95.i, 0 ; 2 uses
  %cos97.i = extractvalue { float, float } %sincos95.i, 1 ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn float %.3.i, f0xC2652EE0
  %i.ci = fmul reassoc nsz arcp contract afn float %cos97.i, %i.ax
  %i.cj = fmul reassoc nsz arcp contract afn float %sin96.i, %i.ba
  %reass.add107.i = fsub reassoc nsz arcp contract afn float %i.ci, %i.cj
  %reass.mul108.i = fmul reassoc nsz arcp contract afn float %reass.add107.i, 2.000000e+00
  %i.ck = fadd reassoc nsz arcp contract afn float %sin96.i, 1.000000e+00
  %i.cl = fsub reassoc nsz arcp contract afn float %i.ck, %cos97.i
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, %reass.mul108.i
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, 5.000000e+01
  br label %_set_grad_from_points.exit

_set_grad_from_points.exit:                       ; preds = %bb.d, %.split.loop.exit37, %bb.m
  %.1 = phi nsz float [ 0.000000e+00, %.split.loop.exit37 ], [ %i.ch, %bb.m ], [ 0.000000e+00, %bb.d ]
  %.0 = phi nsz float [ 0.000000e+00, %.split.loop.exit37 ], [ %i.cn, %bb.m ], [ 0.000000e+00, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.co = load i32, ptr %i.h, align 4, !tbaa !93
  %i.cp = icmp eq i32 %i.co, 3
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_set_grad_from_points.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !86 ; 2 uses
  %i.cs = call fastcc i32 @_set_points_from_grad(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, float noundef %i.cr, float noundef %.0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_set_grad_from_points.exit
  %.024 = phi nsz float [ %i.cr, %bb.n ], [ %.1, %_set_grad_from_points.exit ] ; 2 uses
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !80
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 104
  %i.cv = atomicrmw add ptr %i.cu, i32 1 seq_cst, align 4 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !144
  call void @dt_bauhaus_slider_set(ptr noundef %i.cx, float noundef %.024) #19
  %i.cy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !80
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  %i.da = atomicrmw sub ptr %i.cz, i32 1 seq_cst, align 4 ; 0 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %.024, ptr %i.db, align 4, !tbaa !86
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store float %.0, ptr %i.dc, align 4, !tbaa !87
  store i32 0, ptr %i.h, align 4, !tbaa !93
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84
  call void @dt_dev_add_history_item(ptr noundef %i.dd, ptr noundef nonnull %0, i32 noundef 1) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  store i32 0, ptr %i.h, align 4, !tbaa !93
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @scrolled(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !65  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 2 uses
  %i.e = tail call i32 @gtk_accelerator_get_default_mod_mask() #19
  %i.f = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !132
  %i.g = or i32 %i.f, %4
  %i.h = and i32 %i.g, %i.e
  %.not = icmp eq i32 %i.h, 4
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not22 = icmp eq i32 %3, 0
  %i.i = load float, ptr %i.d, align 4, !tbaa !145 ; 3 uses
  br i1 %.not22, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, 1.000000e-01
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.j, float 8.000000e+00)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = fadd reassoc nsz arcp contract afn float %i.i, -1.000000e-01
  %i.m = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.l, float -8.000000e+00)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.018 = phi nsz float [ %i.k, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = fcmp reassoc nsz arcp contract afn une float %.018, %i.i
  br i1 %i.n, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !146
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.o, float noundef %.018) #19
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.p = tail call i32 @gtk_accelerator_get_default_mod_mask() #19
  %i.q = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !132
  %i.r = or i32 %i.q, %4
  %i.s = and i32 %i.r, %i.p
  %.not23 = icmp eq i32 %i.s, 1
  br i1 %.not23, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %.not21 = icmp eq i32 %3, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !147 ; 3 uses
  br i1 %.not21, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, 1.000000e+00
  %i.w = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.v, float 1.000000e+02)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.x = fadd reassoc nsz arcp contract afn float %i.u, -1.000000e+00
  %i.y = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.x, float 0.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi nsz float [ %i.w, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %i.z = fcmp reassoc nsz arcp contract afn une float %.0, %i.u
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !148
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ab, float noundef %.0) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.k, %bb.l, %bb.e, %bb.f
  %.019 = phi i32 [ 1, %bb.k ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.l ], [ 0, %bb.g ]
  ret i32 %.019
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.b = load i32, ptr %i.a, align 4, !tbaa !149
  %i.c = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.b, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %dt_iop_alpha_copy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !150 ; 6 uses
  %i.f = load i32, ptr %4, align 4, !tbaa !151
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !152  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.j = load i32, ptr %i.i, align 16, !tbaa !153
  %i.k = sitofp reassoc nsz arcp contract afn i32 %i.j to float
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !154 ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.k ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.p = load i32, ptr %i.o, align 4, !tbaa !155
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fmul reassoc nsz arcp contract afn float %i.m, %i.q ; 3 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.n, 5.000000e-01
  %i.t = fmul reassoc nsz arcp contract afn float %i.r, 5.000000e-01
  %i.u = fdiv reassoc nsz arcp contract afn float 2.000000e+00, %i.n ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load float, ptr %i.v, align 8, !tbaa !156
  %i.x = fmul reassoc nsz arcp contract afn float %i.w, f0xBC8EFA36
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.x) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %cos, 2.000000e+00
  %i.z = fdiv reassoc nsz arcp contract afn float %i.y, %i.r ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.t, float noundef %i.s) #23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 12
end_hunk_0
