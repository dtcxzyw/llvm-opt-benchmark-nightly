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
  %reass.add102.i = fsub reassoc nsz arcp contract afn float %i.ba, %i.bb
  %reass.mul103.i = fmul reassoc nsz arcp contract afn float %reass.add102.i, f0x3E47C5CD
  %i.bc = fadd reassoc nsz arcp contract afn float %reass.mul.i, %reass.mul103.i
  %factor.op.fmul.i = fneg reassoc nsz arcp contract afn float %i.az ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.088.i = phi nsz float [ f0xC0490FDB, %bb.b ], [ %..088.i.1, %bb.f ] ; 2 uses
  %.186.i = phi nsz float [ f0x4055A0D9, %bb.b ], [ %.186..i.1, %bb.f ] ; 2 uses
  %.083.i = phi nsz float [ %i.bc, %bb.b ], [ %.083..i.1, %bb.f ] ; 2 uses
  %.079.i = phi i32 [ 0, %bb.b ], [ %i.bp, %bb.f ] ; 4 uses
  %i.bd = fadd reassoc nsz arcp contract afn float %.186.i, %.088.i
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, 5.000000e-01 ; 4 uses
  %sincos.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.be) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0 ; 2 uses
  %cos.i = extractvalue { float, float } %sincos.i, 1 ; 2 uses
  %6 = fmul reassoc nsz arcp contract afn float %cos.i, %i.ax
  %7 = fmul reassoc nsz arcp contract afn float %sin.i, %i.bb
  %reass.mul107.i = fmul reassoc nsz arcp contract afn float %cos.i, %factor.op.fmul.i
  %.neg103.i = fadd reassoc nsz arcp contract afn float %6, %7
  %reass.mul109.i = fmul reassoc nsz arcp contract afn float %sin.i, %i.ba
  %reass.add104.i = fsub reassoc nsz arcp contract afn float %reass.mul107.i, %reass.mul109.i
  %i.bf = fadd reassoc nsz arcp contract afn float %.neg103.i, %reass.add104.i ; 3 uses
  %i.bg = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bf)
  %or.cond3.i = fcmp reassoc nsz arcp contract afn olt float %i.bg, f0x38D1B717
  br i1 %or.cond3.i, label %.split.loop.exit36, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = fmul reassoc nsz arcp contract afn float %i.bf, %.083.i
  %i.bi = fcmp reassoc nsz arcp contract afn olt float %i.bh, 0.000000e+00 ; 3 uses
  %..088.i = select nsz i1 %i.bi, float %i.be, float %.088.i ; 2 uses
  %.186..i = select nsz i1 %i.bi, float %.186.i, float %i.be ; 2 uses
  %.083..i = select nsz i1 %i.bi, float %.083.i, float %i.bf ; 2 uses
  %exitcond.not.i = icmp eq i32 %.079.i, 1000
  br i1 %exitcond.not.i, label %_set_grad_from_points.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = fadd reassoc nsz arcp contract afn float %.186..i, %..088.i
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, 5.000000e-01 ; 4 uses
  %sincos.i.1 = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bk) ; 2 uses
  %sin.i.1 = extractvalue { float, float } %sincos.i.1, 0 ; 2 uses
  %cos.i.1 = extractvalue { float, float } %sincos.i.1, 1 ; 2 uses
  %8 = fmul reassoc nsz arcp contract afn float %cos.i.1, %i.ax
  %9 = fmul reassoc nsz arcp contract afn float %sin.i.1, %i.bb
  %reass.mul107.i.1 = fmul reassoc nsz arcp contract afn float %cos.i.1, %factor.op.fmul.i
  %.neg103.i.1 = fadd reassoc nsz arcp contract afn float %8, %9
  %reass.mul109.i.1 = fmul reassoc nsz arcp contract afn float %sin.i.1, %i.ba
  %reass.add104.i.1 = fsub reassoc nsz arcp contract afn float %reass.mul107.i.1, %reass.mul109.i.1
  %i.bl = fadd reassoc nsz arcp contract afn float %.neg103.i.1, %reass.add104.i.1 ; 3 uses
  %i.bm = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bl)
  %or.cond3.i.1 = fcmp reassoc nsz arcp contract afn olt float %i.bm, f0x38D1B717
  br i1 %or.cond3.i.1, label %.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bl, %.083..i
  %i.bo = fcmp reassoc nsz arcp contract afn olt float %i.bn, 0.000000e+00 ; 3 uses
  %..088.i.1 = select nsz i1 %i.bo, float %i.bk, float %..088.i
  %.186..i.1 = select nsz i1 %i.bo, float %.186..i, float %i.bk
  %.083..i.1 = select nsz i1 %i.bo, float %.083..i, float %i.bl
  %i.bp = add nuw nsw i32 %.079.i, 2
  br label %bb.c

.split.loop.exit:                                 ; preds = %bb.e
  %i.bq = or disjoint i32 %.079.i, 1
  br label %.split.loop.exit36

.split.loop.exit36:                               ; preds = %bb.c, %.split.loop.exit
  %.079.i.lcssa = phi i32 [ %i.bq, %.split.loop.exit ], [ %.079.i, %bb.c ]
  %.lcssa = phi float [ %i.bk, %.split.loop.exit ], [ %i.be, %bb.c ] ; 7 uses
  %i.br = icmp samesign ugt i32 %.079.i.lcssa, 999
  br i1 %i.br, label %_set_grad_from_points.exit, label %bb.g

bb.g:                                             ; preds = %.split.loop.exit36
  %10 = fsub reassoc nsz arcp contract afn float %i.bb, %i.ba ; 2 uses
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %10, f0x38D1B717
  br i1 %i.bs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bt = fcmp reassoc nsz arcp contract afn ult float %.lcssa, f0x3FC90FDB
  %i.bu = fadd reassoc nsz arcp contract afn float %.lcssa, f0xC0490FDB
  %.081.i = select nsz i1 %i.bt, float %.lcssa, float %i.bu ; 3 uses
  %i.bv = fcmp reassoc nsz arcp contract afn olt float %.081.i, f0xBFC90FDB
  br i1 %i.bv, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bw = fadd reassoc nsz arcp contract afn float %.081.i, f0x40490FDB
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.bx = fcmp reassoc nsz arcp contract afn olt float %10, f0xB8D1B717
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = fcmp reassoc nsz arcp contract afn olt float %.lcssa, f0x3FC90FDB
  %i.bz = fcmp reassoc nsz arcp contract afn oge float %.lcssa, 0.000000e+00
  %or.cond5.i = and i1 %i.by, %i.bz
  %i.ca = fadd reassoc nsz arcp contract afn float %.lcssa, f0xC0490FDB
  %spec.select.i = select i1 %or.cond5.i, float %i.ca, float %.lcssa ; 4 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %spec.select.i, f0xBFC90FDB
  %i.cc = fcmp reassoc nsz arcp contract afn olt float %spec.select.i, 0.000000e+00
  %or.cond7.i = and i1 %i.cb, %i.cc
  %i.cd = fadd reassoc nsz arcp contract afn float %spec.select.i, f0x40490FDB
  %spec.select98.i = select i1 %or.cond7.i, float %i.cd, float %spec.select.i
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ce = fcmp reassoc nsz arcp contract afn ugt float %reass.add.i, 0.000000e+00
  %..i = select nsz i1 %i.ce, float f0x3FC90FDB, float f0xBFC90FDB
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h
  %.3.i = phi nsz float [ %i.bw, %bb.i ], [ %.081.i, %bb.h ], [ %..i, %bb.l ], [ %spec.select98.i, %bb.k ] ; 2 uses
  %sincos95.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %.3.i) ; 2 uses
  %sin96.i = extractvalue { float, float } %sincos95.i, 0 ; 2 uses
  %cos97.i = extractvalue { float, float } %sincos95.i, 1 ; 2 uses
  %i.cf = fmul reassoc nsz arcp contract afn float %.3.i, f0xC2652EE0
  %i.cg = fmul reassoc nsz arcp contract afn float %cos97.i, %i.ax
  %i.ch = fmul reassoc nsz arcp contract afn float %sin96.i, %i.ba
  %reass.add111.i = fsub reassoc nsz arcp contract afn float %i.cg, %i.ch
  %reass.mul112.i = fmul reassoc nsz arcp contract afn float %reass.add111.i, 2.000000e+00
  %i.ci = fadd reassoc nsz arcp contract afn float %sin96.i, 1.000000e+00
  %i.cj = fsub reassoc nsz arcp contract afn float %i.ci, %cos97.i
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, %reass.mul112.i
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, 5.000000e+01
  br label %_set_grad_from_points.exit

_set_grad_from_points.exit:                       ; preds = %bb.d, %.split.loop.exit36, %bb.m
  %.1 = phi nsz float [ 0.000000e+00, %.split.loop.exit36 ], [ %i.cf, %bb.m ], [ 0.000000e+00, %bb.d ]
  %.0 = phi nsz float [ 0.000000e+00, %.split.loop.exit36 ], [ %i.cl, %bb.m ], [ 0.000000e+00, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cm = load i32, ptr %i.h, align 4, !tbaa !93
  %i.cn = icmp eq i32 %i.cm, 3
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_set_grad_from_points.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cp = load float, ptr %i.co, align 4, !tbaa !86 ; 2 uses
  %i.cq = call fastcc i32 @_set_points_from_grad(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, float noundef %i.cp, float noundef %.0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_set_grad_from_points.exit
  %.024 = phi nsz float [ %i.cp, %bb.n ], [ %.1, %_set_grad_from_points.exit ] ; 2 uses
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 104
  %i.ct = atomicrmw add ptr %i.cs, i32 1 seq_cst, align 4 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !144
  call void @dt_bauhaus_slider_set(ptr noundef %i.cv, float noundef %.024) #19
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !80
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.cy = atomicrmw sub ptr %i.cx, i32 1 seq_cst, align 4 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store float %.024, ptr %i.cz, align 4, !tbaa !86
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store float %.0, ptr %i.da, align 4, !tbaa !87
  store i32 0, ptr %i.h, align 4, !tbaa !93
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !84
  call void @dt_dev_add_history_item(ptr noundef %i.db, ptr noundef nonnull %0, i32 noundef 1) #19
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
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !158
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, 2.000000e-02
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !159
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, 4.500000e-03
  %i.ah = fsub reassoc nsz arcp contract afn float 5.000000e-01, %i.ag
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.aa
  %i.aj = fmul reassoc nsz arcp contract afn float %i.r, 2.500000e-01
  %i.ak = fdiv reassoc nsz arcp contract afn float %i.aj, %i.ai ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !160 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !161 ; 3 uses
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.aq = fmul reassoc nsz arcp contract afn float %i.u, %i.ap
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, -1.000000e+00
  %i.as = fmul reassoc nsz arcp contract afn float %sin, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn float %cos, %i.as
  %i.au = fadd reassoc nsz arcp contract afn float %i.ad, -1.000000e+00
  %i.av = fadd reassoc nsz arcp contract afn float %i.au, %i.at ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %sin, %i.u
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, %i.ak ; 9 uses
  %i.ay = load float, ptr %i.e, align 16, !tbaa !162 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bb = load <4 x float>, ptr %i.az, align 16, !tbaa !63 ; 10 uses
  %i.bc = load <4 x float>, ptr %i.ba, align 16, !tbaa !63 ; 10 uses
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.ay, 0.000000e+00
  %i.be = icmp sgt i32 %i.ao, 0                   ; 2 uses
  br i1 %i.bd, label %.preheader201, label %.preheader203

.preheader203:                                    ; preds = %bb.b
  br i1 %i.be, label %.lr.ph218, label %._crit_edge241

.lr.ph218:                                        ; preds = %.preheader203
  %i.bf = sext i32 %i.am to i64                   ; 3 uses
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = icmp sgt i32 %i.am, 3
  %i.bi = fneg reassoc nsz arcp contract afn float %i.ay ; 2 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.ax, 4.000000e+00
  %i.bk = and i32 %i.am, -4                       ; 2 uses
  %.not242 = icmp eq i32 %i.bk, %i.am
  %i.bl = sext i32 %i.bk to i64
  %wide.trip.count = zext nneg i32 %i.ao to i64
  %i.bm = insertelement <4 x float> poison, float %i.ax, i64 0
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = fmul reassoc nsz arcp contract afn <4 x float> %i.bn, <float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %invariant.op.a = add nsw i64 %i.bf, -3
  %i.bp = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  br label %bb.d

.preheader201:                                    ; preds = %bb.b
  br i1 %i.be, label %.lr.ph240, label %._crit_edge241

.lr.ph240:                                        ; preds = %.preheader201
  %i.br = sext i32 %i.am to i64                   ; 3 uses
  %i.bs = shl nsw i64 %i.br, 2
  %i.bt = icmp sgt i32 %i.am, 3
  %i.bu = fmul reassoc nsz arcp contract afn float %i.ax, 4.000000e+00
  %i.bv = and i32 %i.am, -4                       ; 2 uses
  %.not243 = icmp eq i32 %i.bv, %i.am
  %i.bw = sext i32 %i.bv to i64
  %wide.trip.count269 = zext nneg i32 %i.ao to i64
  %6 = fmul reassoc nsz arcp contract afn float %i.ax, 0.000000e+00
  %7 = fmul reassoc nsz arcp contract afn float %i.ax, 2.000000e+00
  %8 = fmul reassoc nsz arcp contract afn float %i.ax, 3.000000e+00
  %invariant.op418 = add nsw i64 %i.br, -3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph240, %._crit_edge238
  %indvars.iv266 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next267, %._crit_edge238 ] ; 3 uses
  %i.bx = mul i64 %i.bs, %indvars.iv266           ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx ; 5 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bx ; 5 uses
  %i.ca = trunc i64 %indvars.iv266 to i32
  %i.cb = add i32 %i.h, %i.ca
  %i.cc = sitofp reassoc nsz arcp contract afn i32 %i.cb to float
  %i.cd = fmul reassoc nsz arcp contract afn float %i.z, %i.cc
  %i.ce = fsub reassoc nsz arcp contract afn float %i.av, %i.cd
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.ak ; 2 uses
  br i1 %i.bt, label %.lr.ph228, label %._crit_edge229

._crit_edge229:                                   ; preds = %.lr.ph228, %bb.c
  %.0189.lcssa = phi float [ %i.cf, %bb.c ], [ %i.dt, %.lr.ph228 ]
  br i1 %.not243, label %._crit_edge238, label %.lr.ph237

.lr.ph228:                                        ; preds = %bb.c, %.lr.ph228
  %indvars.iv259 = phi i64 [ %indvars.iv.next260, %.lr.ph228 ], [ 0, %bb.c ] ; 5 uses
  %.0189225 = phi float [ %i.dt, %.lr.ph228 ], [ %i.cf, %bb.c ] ; 2 uses
  %invariant.op = fadd reassoc nsz arcp contract afn float %.0189225, 5.000000e-01 ; 4 uses
  %i.cg = fadd reassoc nsz arcp contract afn float %6, %invariant.op ; 3 uses
  %9 = fcmp reassoc nsz arcp contract afn ult float %i.cg, 0.000000e+00
  %10 = fcmp reassoc nsz arcp contract afn ole float %i.cg, 1.000000e+00
  %11 = select reassoc nsz arcp contract afn i1 %10, float %i.cg, float 1.000000e+00
  %12 = select reassoc nsz arcp contract afn i1 %9, float 0.000000e+00, float %11
  %13 = fmul reassoc nsz arcp contract afn float %12, %i.ay
  %14 = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %13)
  %.reass220.1 = fadd reassoc nsz arcp contract afn float %i.ax, %invariant.op ; 3 uses
  %15 = fcmp reassoc nsz arcp contract afn ult float %.reass220.1, 0.000000e+00
  %16 = fcmp reassoc nsz arcp contract afn ole float %.reass220.1, 1.000000e+00
  %17 = select reassoc nsz arcp contract afn i1 %16, float %.reass220.1, float 1.000000e+00
  %18 = select reassoc nsz arcp contract afn i1 %15, float 0.000000e+00, float %17
  %19 = fmul reassoc nsz arcp contract afn float %18, %i.ay
  %i.ch = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %19)
  %.reass220.2 = fadd reassoc nsz arcp contract afn float %7, %invariant.op ; 3 uses
  %20 = fcmp reassoc nsz arcp contract afn ult float %.reass220.2, 0.000000e+00
  %21 = fcmp reassoc nsz arcp contract afn ole float %.reass220.2, 1.000000e+00
  %22 = select reassoc nsz arcp contract afn i1 %21, float %.reass220.2, float 1.000000e+00
  %23 = select reassoc nsz arcp contract afn i1 %20, float 0.000000e+00, float %22
  %24 = fmul reassoc nsz arcp contract afn float %23, %i.ay
  %i.ci = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %24)
  %.reass220.3 = fadd reassoc nsz arcp contract afn float %8, %invariant.op ; 3 uses
  %25 = fcmp reassoc nsz arcp contract afn ult float %.reass220.3, 0.000000e+00
  %26 = fcmp reassoc nsz arcp contract afn ole float %.reass220.3, 1.000000e+00
  %27 = select reassoc nsz arcp contract afn i1 %26, float %.reass220.3, float 1.000000e+00
  %28 = select reassoc nsz arcp contract afn i1 %25, float 0.000000e+00, float %27
  %29 = fmul reassoc nsz arcp contract afn float %28, %i.ay
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %29)
  %i.ck = shl nuw nsw i64 %indvars.iv259, 2       ; 2 uses
  %invariant.gep221 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ck
  %i.cl = load <4 x float>, ptr %invariant.gep221, align 4, !tbaa !63
  %i.cm = insertelement <4 x float> poison, float %14, i64 0
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %i.cn, %i.bc
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.bb
  %i.cq = fdiv reassoc nsz arcp contract afn <4 x float> %i.cl, %i.cp
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ck
  store <4 x float> %i.cq, ptr %i.cr, align 16, !tbaa !163, !alias.scope !164, !nontemporal !167
  %i.cs = shl i64 %indvars.iv259, 2
  %i.ct = or disjoint i64 %i.cs, 4                ; 2 uses
  %invariant.gep221.1 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.ct
  %i.cu = load <4 x float>, ptr %invariant.gep221.1, align 4, !tbaa !63
  %i.cv = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %i.cw, %i.bc
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %i.cx, %i.bb
  %i.cz = fdiv reassoc nsz arcp contract afn <4 x float> %i.cu, %i.cy
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ct
  store <4 x float> %i.cz, ptr %i.da, align 16, !tbaa !163, !alias.scope !164, !nontemporal !167
  %i.db = shl i64 %indvars.iv259, 2
  %i.dc = or disjoint i64 %i.db, 8                ; 2 uses
  %invariant.gep221.2 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dc
  %i.dd = load <4 x float>, ptr %invariant.gep221.2, align 4, !tbaa !63
  %i.de = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.bc
  %i.dh = fadd reassoc nsz arcp contract afn <4 x float> %i.dg, %i.bb
  %i.di = fdiv reassoc nsz arcp contract afn <4 x float> %i.dd, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dc
  store <4 x float> %i.di, ptr %i.dj, align 16, !tbaa !163, !alias.scope !164, !nontemporal !167
  %i.dk = shl i64 %indvars.iv259, 2
  %i.dl = or disjoint i64 %i.dk, 12               ; 2 uses
  %invariant.gep221.3 = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.dl
  %i.dm = load <4 x float>, ptr %invariant.gep221.3, align 4, !tbaa !63
  %i.dn = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul reassoc nsz arcp contract afn <4 x float> %i.do, %i.bc
  %i.dq = fadd reassoc nsz arcp contract afn <4 x float> %i.dp, %i.bb
  %i.dr = fdiv reassoc nsz arcp contract afn <4 x float> %i.dm, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dl
  store <4 x float> %i.dr, ptr %i.ds, align 16, !tbaa !163, !alias.scope !164, !nontemporal !167
  %i.dt = fadd reassoc nsz arcp contract afn float %.0189225, %i.bu ; 2 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 4 ; 2 uses
  %i.du = icmp slt i64 %indvars.iv.next260, %invariant.op418
  br i1 %i.du, label %.lr.ph228, label %._crit_edge229

._crit_edge238:                                   ; preds = %.lr.ph237, %._crit_edge229
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge241, label %bb.c

.lr.ph237:                                        ; preds = %._crit_edge229, %.lr.ph237
  %indvars.iv263 = phi i64 [ %indvars.iv.next264, %.lr.ph237 ], [ %i.bw, %._crit_edge229 ] ; 2 uses
  %.1190234 = phi float [ %i.ek, %.lr.ph237 ], [ %.0189.lcssa, %._crit_edge229 ] ; 2 uses
  %i.dv = fadd reassoc nsz arcp contract afn float %.1190234, 5.000000e-01 ; 3 uses
  %i.dw = fcmp reassoc nsz arcp contract afn ult float %i.dv, 0.000000e+00
  %i.dx = fcmp reassoc nsz arcp contract afn ole float %i.dv, 1.000000e+00
  %i.dy = select reassoc nsz arcp contract afn i1 %i.dx, float %i.dv, float 1.000000e+00
  %i.dz = select reassoc nsz arcp contract afn i1 %i.dw, float 0.000000e+00, float %i.dy
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.ay
  %i.eb = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.ea)
  %i.ec = shl nsw i64 %indvars.iv263, 2           ; 2 uses
  %invariant.gep231 = getelementptr [4 x i8], ptr %i.by, i64 %i.ec
  %i.ed = load <4 x float>, ptr %invariant.gep231, align 4, !tbaa !63
  %i.ee = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.ef
  %i.eh = fadd reassoc nsz arcp contract afn <4 x float> %i.eg, %i.bb
  %i.ei = fdiv reassoc nsz arcp contract afn <4 x float> %i.ed, %i.eh
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ec
  store <4 x float> %i.ei, ptr %i.ej, align 16, !tbaa !163, !alias.scope !168, !nontemporal !167
  %i.ek = fadd reassoc nsz arcp contract afn float %.1190234, %i.ax
  %indvars.iv.next264 = add nsw i64 %indvars.iv263, 1 ; 2 uses
  %i.el = icmp slt i64 %indvars.iv.next264, %i.br
  br i1 %i.el, label %.lr.ph237, label %._crit_edge238

bb.d:                                             ; preds = %.lr.ph218, %._crit_edge216
  %indvars.iv250 = phi i64 [ 0, %.lr.ph218 ], [ %indvars.iv.next251, %._crit_edge216 ] ; 3 uses
  %i.em = mul i64 %i.bg, %indvars.iv250           ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.em ; 5 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.em ; 5 uses
  %i.ep = trunc i64 %indvars.iv250 to i32
  %i.eq = add i32 %i.h, %i.ep
  %i.er = sitofp reassoc nsz arcp contract afn i32 %i.eq to float
  %i.es = fmul reassoc nsz arcp contract afn float %i.z, %i.er
  %i.et = fsub reassoc nsz arcp contract afn float %i.av, %i.es
  %i.eu = fmul reassoc nsz arcp contract afn float %i.et, %i.ak ; 2 uses
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.0181.lcssa = phi float [ %i.eu, %bb.d ], [ %i.gv, %.lr.ph ]
  br i1 %.not242, label %._crit_edge216, label %.lr.ph215

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 5 uses
  %.0181207 = phi float [ %i.gv, %.lr.ph ], [ %i.eu, %bb.d ] ; 2 uses
  %i.ev = insertelement <4 x float> poison, float %.0181207, i64 0
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ex = fadd reassoc nsz arcp contract afn <4 x float> %i.ew, %i.bo
  %i.ey = fsub reassoc nsz arcp contract afn <4 x float> splat (float 5.000000e-01), %i.ex ; 3 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ole <4 x float> %i.ey, splat (float 1.000000e+00)
  %i.fa = select <4 x i1> %i.ez, <4 x float> %i.ey, <4 x float> splat (float 1.000000e+00)
  %i.fb = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ey, zeroinitializer
  %i.fc = select <4 x i1> %i.fb, <4 x float> zeroinitializer, <4 x float> %i.fa
  %i.fd = fmul reassoc nsz arcp contract afn <4 x float> %i.fc, %i.bq ; 4 uses
  %i.fe = extractelement <4 x float> %i.fd, i64 3
  %i.ff = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fe)
  %i.fg = extractelement <4 x float> %i.fd, i64 2
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fg)
  %i.fi = extractelement <4 x float> %i.fd, i64 1
  %i.fj = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fi)
  %i.fk = extractelement <4 x float> %i.fd, i64 0
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.fk)
  %i.fm = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.fm
  %i.fn = load <4 x float>, ptr %invariant.gep, align 4, !tbaa !63
  %i.fo = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fq = fmul reassoc nsz arcp contract afn <4 x float> %i.fp, %i.bc
  %i.fr = fadd reassoc nsz arcp contract afn <4 x float> %i.fq, %i.bb
  %i.fs = fmul reassoc nsz arcp contract afn <4 x float> %i.fr, %i.fn
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fm
  store <4 x float> %i.fs, ptr %i.ft, align 16, !tbaa !163, !alias.scope !171, !nontemporal !167
  %i.fu = shl i64 %indvars.iv, 2
  %i.fv = or disjoint i64 %i.fu, 4                ; 2 uses
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.fv
  %i.fw = load <4 x float>, ptr %invariant.gep.1, align 4, !tbaa !63
  %i.fx = insertelement <4 x float> poison, float %i.fh, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = fmul reassoc nsz arcp contract afn <4 x float> %i.fy, %i.bc
  %i.ga = fadd reassoc nsz arcp contract afn <4 x float> %i.fz, %i.bb
  %i.gb = fmul reassoc nsz arcp contract afn <4 x float> %i.ga, %i.fw
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.fv
  store <4 x float> %i.gb, ptr %i.gc, align 16, !tbaa !163, !alias.scope !171, !nontemporal !167
  %i.gd = shl i64 %indvars.iv, 2
  %i.ge = or disjoint i64 %i.gd, 8                ; 2 uses
  %invariant.gep.2 = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.ge
  %i.gf = load <4 x float>, ptr %invariant.gep.2, align 4, !tbaa !63
  %i.gg = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.gh = shufflevector <4 x float> %i.gg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gi = fmul reassoc nsz arcp contract afn <4 x float> %i.gh, %i.bc
  %i.gj = fadd reassoc nsz arcp contract afn <4 x float> %i.gi, %i.bb
  %i.gk = fmul reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gf
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.ge
  store <4 x float> %i.gk, ptr %i.gl, align 16, !tbaa !163, !alias.scope !171, !nontemporal !167
  %i.gm = shl i64 %indvars.iv, 2
  %i.gn = or disjoint i64 %i.gm, 12               ; 2 uses
  %invariant.gep.3 = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.gn
  %i.go = load <4 x float>, ptr %invariant.gep.3, align 4, !tbaa !63
  %i.gp = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %i.gq, %i.bc
  %i.gs = fadd reassoc nsz arcp contract afn <4 x float> %i.gr, %i.bb
  %i.gt = fmul reassoc nsz arcp contract afn <4 x float> %i.gs, %i.go
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.gn
  store <4 x float> %i.gt, ptr %i.gu, align 16, !tbaa !163, !alias.scope !171, !nontemporal !167
  %i.gv = fadd reassoc nsz arcp contract afn float %.0181207, %i.bj ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.gw = icmp slt i64 %indvars.iv.next, %invariant.op.a
  br i1 %i.gw, label %.lr.ph, label %._crit_edge

._crit_edge216:                                   ; preds = %.lr.ph215, %._crit_edge
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next251, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge241, label %bb.d

.lr.ph215:                                        ; preds = %._crit_edge, %.lr.ph215
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %.lr.ph215 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.1212 = phi float [ %i.hm, %.lr.ph215 ], [ %.0181.lcssa, %._crit_edge ] ; 2 uses
  %i.gx = fsub reassoc nsz arcp contract afn float 5.000000e-01, %.1212 ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ult float %i.gx, 0.000000e+00
  %i.gz = fcmp reassoc nsz arcp contract afn ole float %i.gx, 1.000000e+00
  %i.ha = select reassoc nsz arcp contract afn i1 %i.gz, float %i.gx, float 1.000000e+00
  %i.hb = select reassoc nsz arcp contract afn i1 %i.gy, float 0.000000e+00, float %i.ha
  %i.hc = fmul reassoc nsz arcp contract afn float %i.hb, %i.bi
  %i.hd = tail call reassoc nsz arcp contract afn float @llvm.exp2.f32(float %i.hc)
  %i.he = shl nsw i64 %indvars.iv247, 2           ; 2 uses
  %invariant.gep209 = getelementptr [4 x i8], ptr %i.en, i64 %i.he
  %i.hf = load <4 x float>, ptr %invariant.gep209, align 4, !tbaa !63
  %i.hg = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.hh = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hi = fmul reassoc nsz arcp contract afn <4 x float> %i.bc, %i.hh
  %i.hj = fadd reassoc nsz arcp contract afn <4 x float> %i.hi, %i.bb
  %i.hk = fmul reassoc nsz arcp contract afn <4 x float> %i.hj, %i.hf
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.he
  store <4 x float> %i.hk, ptr %i.hl, align 16, !tbaa !163, !alias.scope !174, !nontemporal !167
  %i.hm = fadd reassoc nsz arcp contract afn float %.1212, %i.ax
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, 1 ; 2 uses
  %i.hn = icmp slt i64 %indvars.iv.next248, %i.bf
  br i1 %i.hn, label %.lr.ph215, label %._crit_edge216

._crit_edge241:                                   ; preds = %._crit_edge216, %._crit_edge238, %.preheader203, %.preheader201
  tail call void @llvm.x86.sse.sfence()
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !177
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 628
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !178
  %i.hs = and i32 %i.hr, 1
  %.not196 = icmp eq i32 %i.hs, 0
  br i1 %.not196, label %dt_iop_alpha_copy.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge241
  %i.ht = load i32, ptr %i.al, align 4, !tbaa !160
  %i.hu = sext i32 %i.ht to i64
  %i.hv = load i32, ptr %i.an, align 4, !tbaa !161
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hu, 2
  %i.hy = mul i64 %i.hx, %i.hw                    ; 4 uses
  %.not.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i, label %dt_iop_alpha_copy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.hz = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 7)
  %i.ia = add i64 %i.hz, -4                       ; 2 uses
  %i.ib = lshr i64 %i.ia, 2
  %i.ic = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ia, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader424, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %3, i64 12
  %umax = tail call i64 @llvm.umax.i64(i64 %i.hy, i64 7)
  %i.id = shl i64 %umax, 2
  %i.ie = and i64 %i.id, -16                      ; 2 uses
end_hunk_0
