inline.NumInlined: 32
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  %reass.add = fadd reassoc nsz arcp contract afn float %i.ar, -5.000000e+01
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.j
  %i.as = fadd reassoc nsz arcp contract afn float %reass.mul, %i.f
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !11, !alias.scope !47
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !11, !alias.scope !47
  store float %i.as, ptr %i.at, align 4, !tbaa !11
  %i.au = shl i64 %.030, 2
  %i.av = add i64 %i.au, 4                        ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !11
  %reass.add.1 = fadd reassoc nsz arcp contract afn float %i.ax, -5.000000e+01
  %reass.mul.1 = fmul reassoc nsz arcp contract afn float %reass.add.1, %i.j
  %i.ay = fadd reassoc nsz arcp contract afn float %reass.mul.1, %i.f
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.av ; 3 uses
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !11, !alias.scope !47
  %.sroa.6.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.1, align 4, !tbaa !11, !alias.scope !47
  store float %i.ay, ptr %i.az, align 4, !tbaa !11
  %i.ba = shl i64 %.030, 2
  %i.bb = add i64 %i.ba, 8                        ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !11
  %reass.add.2 = fadd reassoc nsz arcp contract afn float %i.bd, -5.000000e+01
  %reass.mul.2 = fmul reassoc nsz arcp contract afn float %reass.add.2, %i.j
  %i.be = fadd reassoc nsz arcp contract afn float %reass.mul.2, %i.f
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bb ; 3 uses
  %.sroa.4.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.2, align 4, !tbaa !11, !alias.scope !47
  %.sroa.6.0..sroa_idx.2 = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.2, align 4, !tbaa !11, !alias.scope !47
  store float %i.be, ptr %i.bf, align 4, !tbaa !11
  %i.bg = shl i64 %.030, 2
  %i.bh = add i64 %i.bg, 12                       ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !11
  %reass.add.3 = fadd reassoc nsz arcp contract afn float %i.bj, -5.000000e+01
  %reass.mul.3 = fmul reassoc nsz arcp contract afn float %reass.add.3, %i.j
  %i.bk = fadd reassoc nsz arcp contract afn float %reass.mul.3, %i.f
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bh ; 3 uses
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.3, align 4, !tbaa !11, !alias.scope !47
  %.sroa.6.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.3, align 4, !tbaa !11, !alias.scope !47
  store float %i.bk, ptr %i.bl, align 4, !tbaa !11
  %i.bm = add nuw i64 %.030, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bm, %i.q
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !53

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !54
  store i32 -999, ptr %i.a, align 4, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.b) #20
  store ptr null, ptr %i.a, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = icmp eq ptr %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76
  %i.j = load float, ptr %i.g, align 4, !tbaa !77
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, 6.000000e+00 ; 8 uses
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.k, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.l, float 2.000000e+00, float -4.000000e+00
  %i.m = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.k ; 5 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, 1.000000e+00
  br i1 %i.n, label %hue2rgb.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = fcmp reassoc nsz arcp contract afn olt float %i.m, 3.000000e+00
  br i1 %i.o, label %hue2rgb.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fcmp reassoc nsz arcp contract afn olt float %i.m, 4.000000e+00
  %i.q = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.m
  %i.r = select reassoc nsz arcp contract afn i1 %i.p, float %i.q, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.c ], [ %i.r, %bb.d ], [ %i.m, %bb.b ]
  %i.s = fcmp reassoc nsz arcp contract afn olt float %i.k, 1.000000e+00
  br i1 %i.s, label %hue2rgb.exit36.i.i, label %bb.e

bb.e:                                             ; preds = %hue2rgb.exit.i.i
  %i.t = fcmp reassoc nsz arcp contract afn olt float %i.k, 3.000000e+00
  br i1 %i.t, label %hue2rgb.exit36.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.k
  %i.v = select reassoc nsz arcp contract afn i1 %i.l, float %i.u, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.f, %bb.e, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.e ], [ %i.v, %bb.f ], [ %i.k, %hue2rgb.exit.i.i ]
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.k, 2.000000e+00
  %.v34.i.i = select i1 %i.w, float -2.000000e+00, float 4.000000e+00
  %i.x = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.k ; 5 uses
  %i.y = fcmp reassoc nsz arcp contract afn olt float %i.x, 1.000000e+00
  br i1 %i.y, label %update_saturation_slider_end_color.exit, label %bb.g

bb.g:                                             ; preds = %hue2rgb.exit36.i.i
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.x, 3.000000e+00
  br i1 %i.z, label %update_saturation_slider_end_color.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = fcmp reassoc nsz arcp contract afn olt float %i.x, 4.000000e+00
  %i.ab = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.x
  %i.ac = select reassoc nsz arcp contract afn i1 %i.aa, float %i.ab, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i, %bb.g, %bb.h
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.g ], [ %i.ac, %bb.h ], [ %i.x, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.i, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #20
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !76
  tail call void @gtk_widget_queue_draw(ptr noundef %i.ad) #20
  br label %bb.i

bb.i:                                             ; preds = %update_saturation_slider_end_color.exit, %bb.a
  ret void
}

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @color_picker_apply(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.g = load float, ptr %i.f, align 4, !tbaa !11
  %i.h = load float, ptr %i.e, align 16, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.j = load float, ptr %i.i, align 8, !tbaa !11
  %i.k = fmul reassoc nsz arcp contract afn float %i.g, 2.000000e-03
  %i.l = fmul reassoc nsz arcp contract afn float %i.h, 8.620690e-03
  %i.m = fmul reassoc nsz arcp contract afn float %i.j, 5.000000e-03
  %i.n = fadd reassoc nsz arcp contract afn float %i.l, f0x3E0D3DCB ; 5 uses
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.k ; 4 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %i.o ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %i.n, %i.n
  %i.r = fsub reassoc nsz arcp contract afn float %i.n, %i.m ; 3 uses
  %i.s = insertelement <4 x float> poison, float %i.o, i64 0
  %i.t = insertelement <4 x float> %i.s, float %i.n, i64 1
  %i.u = insertelement <4 x float> %i.t, float %i.r, i64 3 ; 2 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3> ; 2 uses
  %i.w = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.v, splat (float f0x3E53DCB1)
  %i.x = fmul reassoc nsz arcp contract afn float %i.r, %i.r
  %i.y = insertelement <4 x float> poison, float %i.p, i64 0
  %i.z = insertelement <4 x float> %i.y, float %i.q, i64 1
  %i.aa = insertelement <4 x float> %i.z, float %i.o, i64 2
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 3
  %i.ac = insertelement <4 x float> %i.u, float %i.p, i64 2
  %i.ad = fmul reassoc nsz arcp contract afn <4 x float> %i.ab, %i.ac
  %i.ae = fmul reassoc nsz arcp contract afn <4 x float> %i.v, splat (float f0x3E038026)
  %i.af = fadd reassoc nsz arcp contract afn <4 x float> %i.ae, splat (float f0xBC911AA6)
  %i.ag = select <4 x i1> %i.w, <4 x float> %i.ad, <4 x float> %i.af ; 5 uses
  %i.ah = extractelement <4 x float> %i.ag, i64 0
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, 9.642000e-01
  %i.aj = fmul reassoc nsz arcp contract afn <4 x float> %i.ag, <float f0x404162F2, float f0x3FF54420, float f0x3D8E11AE, float f0x3F532CA5> ; 2 uses
  %i.ak = shufflevector <4 x float> %i.ag, <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 3, i32 3, i32 3, i32 5>
  %i.al = fmul reassoc nsz arcp contract afn <4 x float> %i.ak, <float f0xBECF35E2, float f0x3CE2116F, float f0x3F94602A, float 0.000000e+00> ; 2 uses
  %3 = shufflevector <4 x float> %i.ag, <4 x float> <float f0x3FCEF57D, float f0x3F719831, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 1> ; 2 uses
  %4 = shufflevector <4 x float> %i.ag, <4 x float> <float poison, float poison, float f0x3E6A7CB9, float poison>, <4 x i32> <i32 1, i32 0, i32 6, i32 poison>
  %5 = insertelement <4 x float> %4, float %i.ai, i64 3 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn <4 x float> %3, %5
  %i.an = fadd reassoc nsz arcp contract afn <4 x float> %3, %5
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ap = fsub reassoc nsz arcp contract afn <4 x float> %i.aj, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.ao
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.as = fadd reassoc nsz arcp contract afn <4 x float> %i.ar, %i.al ; 4 uses
  %i.at = fmul reassoc nsz arcp contract afn <4 x float> %i.ar, %i.al
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.av = bitcast <4 x float> %i.au to <4 x i32>  ; 2 uses
  %i.aw = and <4 x i32> %i.av, splat (i32 8388607)
  %i.ax = or disjoint <4 x i32> %i.aw, splat (i32 1065353216)
  %i.ay = bitcast <4 x i32> %i.ax to <4 x float>  ; 5 uses
  %i.az = lshr <4 x i32> %i.av, splat (i32 23)
  %i.ba = and <4 x i32> %i.az, splat (i32 255)
  %i.bb = add nsw <4 x i32> %i.ba, splat (i32 -127)
  %i.bc = sitofp <4 x i32> %i.bb to <4 x float>
  %i.bd = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ay, splat (float f0x3D74552F)
  %i.be = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bd, splat (float f0xBEEE7397)
  %i.bf = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.be, %i.ay
  %i.bg = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bf, splat (float f0x3FBD96DD)
  %i.bh = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bg, %i.ay
  %i.bi = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bh, splat (float f0xC02153F6)
  %i.bj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bi, %i.ay
  %i.bk = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bj, splat (float f0x4038D96C)
  %i.bl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ay, splat (float -1.000000e+00)
  %i.bm = fmul reassoc nsz arcp contract afn <4 x float> %i.bk, %i.bl
  %i.bn = fadd reassoc nsz arcp contract afn <4 x float> %i.bm, %i.bc
  %i.bo = fmul reassoc nsz arcp contract afn <4 x float> %i.bn, splat (float f0x3ED55555)
  %i.bp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.bo, <4 x float> splat (float 1.290000e+02))
  %i.bq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bp, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.br = fadd reassoc nsz arcp contract afn <4 x float> %i.bq, splat (float -5.000000e-01)
  %i.bs = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.br)
  %i.bt = sitofp reassoc nsz arcp contract afn <4 x i32> %i.bs to <4 x float> ; 5 uses
  %i.bu = extractelement <4 x float> %i.as, i64 0 ; 2 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ugt float %i.bu, 3.130800e-03
  br i1 %i.bv, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.bu, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.bt, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.bq, %i.bt
  %i.bx = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, f0x3C5DBE69
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, f0x3D5509F9
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %i.bx
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, f0x3E773CC5
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, %i.bx
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, f0x3F3168B3
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, %i.bx
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, f0x3F800016
  %i.cg = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.ch = shl i32 %i.cg, 23
  %i.ci = add i32 %i.ch, 1065353216
  %i.cj = bitcast i32 %i.ci to float
  %i.ck = fmul reassoc nnan nsz arcp contract afn float %i.cj, 1.055000e+00
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ck, %i.cf
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.b, %bb.c
  %i.cn = phi reassoc nsz arcp contract afn float [ %i.bw, %bb.b ], [ %i.cm, %bb.c ] ; 5 uses
  %foldExtExtBinop34 = fsub reassoc nsz arcp contract afn <4 x float> %i.bq, %i.bt
  %i.co = extractelement <4 x float> %foldExtExtBinop34, i64 2 ; 4 uses
  %i.cp = fmul reassoc nsz arcp contract afn float %i.co, f0x3C5DBE69
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, f0x3D5509F9
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.co
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, f0x3E773CC5
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, %i.co
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, f0x3F3168B3
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, %i.co
  %i.cw = fadd reassoc nsz arcp contract afn float %i.cv, f0x3F800016
  %foldExtExtBinop36 = fsub reassoc nsz arcp contract afn <4 x float> %i.bq, %i.bt
  %i.cx = extractelement <4 x float> %foldExtExtBinop36, i64 1 ; 4 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, f0x3C5DBE69
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, f0x3D5509F9
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.cx
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, f0x3E773CC5
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.cx
  %i.dd = fadd reassoc nsz arcp contract afn float %i.dc, f0x3F3168B3
  %i.de = fmul reassoc nsz arcp contract afn float %i.dd, %i.cx
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, f0x3F800016
  %i.dg = shufflevector <4 x float> %i.bt, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>
  %i.di = shl <2 x i32> %i.dh, splat (i32 23)
  %i.dj = add <2 x i32> %i.di, splat (i32 1065353216)
  %i.dk = bitcast <2 x i32> %i.dj to <2 x float>  ; 2 uses
  %i.dl = extractelement <4 x float> %i.as, i64 2 ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, 1.292000e+01
  %i.dn = extractelement <4 x float> %i.as, i64 1 ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, 1.292000e+01
  %i.dp = fcmp reassoc nsz arcp contract afn ugt float %i.dn, 3.130800e-03
  %i.dq = extractelement <2 x float> %i.dk, i64 0
  %i.dr = fmul reassoc nnan nsz arcp contract afn float %i.dq, 1.055000e+00
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, %i.df
  %i.dt = fadd reassoc nsz arcp contract afn float %i.ds, -5.500000e-02
  %i.du = select reassoc nsz arcp contract afn i1 %i.dp, float %i.dt, float %i.do ; 5 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ugt float %i.dl, 3.130800e-03
  %i.dw = extractelement <2 x float> %i.dk, i64 1
  %i.dx = fmul reassoc nnan nsz arcp contract afn float %i.dw, 1.055000e+00
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dx, %i.cw
  %i.dz = fadd reassoc nsz arcp contract afn float %i.dy, -5.500000e-02
  %i.ea = select reassoc nsz arcp contract afn i1 %i.dv, float %i.dz, float %i.dm ; 5 uses
  %i.eb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cn, float %i.du)
  %i.ec = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.eb, float %i.ea) ; 6 uses
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cn, float %i.du)
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ed, float %i.ea) ; 3 uses
  %i.ef = fsub reassoc nsz arcp contract afn float %i.ec, %i.ee ; 5 uses
  %i.eg = fcmp reassoc nsz arcp contract afn une float %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.d, label %rgb2hsl.exit

bb.d:                                             ; preds = %dt_XYZ_to_sRGB.exit
  %i.eh = fadd reassoc nsz arcp contract afn float %i.ee, %i.ec ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, 5.000000e-01
  %i.ej = fcmp reassoc nsz arcp contract afn olt float %i.ei, 5.000000e-01
  br i1 %i.ej, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ek = fpext reassoc nsz arcp contract afn float %i.ec to double
  %i.el = fpext reassoc nsz arcp contract afn float %i.ee to double
  %i.em = fadd reassoc nsz arcp contract afn double %i.ek, %i.el
  %i.en = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.em
  %i.eo = fptrunc reassoc nsz arcp contract afn double %i.en to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi float [ %i.eo, %bb.e ], [ %i.eh, %bb.d ]
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.eq = fdiv reassoc nsz arcp contract afn float %i.ef, %i.ep ; 3 uses
  %i.er = fcmp reassoc nsz arcp contract afn oeq float %i.ec, %i.cn
  br i1 %i.er, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.es = fsub reassoc nsz arcp contract afn float %i.du, %i.ea
  %i.et = fdiv reassoc nsz arcp contract afn float %i.es, %i.ef
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.eu = fcmp reassoc nsz arcp contract afn oeq float %i.ec, %i.du
  br i1 %i.eu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ev = fsub reassoc nsz arcp contract afn float %i.ea, %i.cn
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.ev, %i.ef
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, 2.000000e+00
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ey = fcmp reassoc nsz arcp contract afn oeq float %i.ec, %i.ea
  br i1 %i.ey, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ez = fsub reassoc nsz arcp contract afn float %i.cn, %i.du
  %i.fa = fdiv reassoc nsz arcp contract afn float %i.ez, %i.ef
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, 4.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.0.i = phi nsz float [ %i.et, %bb.g ], [ %i.ex, %bb.i ], [ %i.fb, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.fc = fpext reassoc nsz arcp contract afn float %.0.i to double
  %i.fd = fmul reassoc nsz arcp contract afn double %i.fc, f0x3FC5555555555555 ; 3 uses
  %i.fe = fptrunc reassoc nsz arcp contract afn double %i.fd to float ; 3 uses
  %i.ff = fcmp reassoc nsz arcp contract afn olt double %i.fd, f0xB690000000000000
  br i1 %i.ff, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fg = fadd reassoc nsz arcp contract afn float %i.fe, 1.000000e+00
  br label %rgb2hsl.exit

bb.n:                                             ; preds = %bb.l
  %i.fh = fcmp reassoc nsz arcp contract afn ogt double %i.fd, f0x3FF0000010000000
  br i1 %i.fh, label %bb.o, label %rgb2hsl.exit

bb.o:                                             ; preds = %bb.n
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fe, -1.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %dt_XYZ_to_sRGB.exit, %bb.m, %bb.n, %bb.o
  %.043.i = phi nsz float [ %i.eq, %bb.m ], [ %i.eq, %bb.o ], [ %i.eq, %bb.n ], [ 0.000000e+00, %dt_XYZ_to_sRGB.exit ] ; 2 uses
  %.1.i = phi nsz float [ %i.fg, %bb.m ], [ %i.fi, %bb.o ], [ %i.fe, %bb.n ], [ 0.000000e+00, %dt_XYZ_to_sRGB.exit ] ; 2 uses
  %i.fj = load float, ptr %i.d, align 4, !tbaa !77
  %i.fk = fsub reassoc nsz arcp contract afn float %i.fj, %.1.i
  %i.fl = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fk)
  %i.fm = fcmp reassoc nsz arcp contract afn olt float %i.fl, f0x38D1B717
  br i1 %i.fm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rgb2hsl.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !79
  %i.fp = fsub reassoc nsz arcp contract afn float %i.fo, %.043.i
  %i.fq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fp)
  %i.fr = fcmp reassoc nsz arcp contract afn olt float %i.fq, f0x38D1B717
  br i1 %i.fr, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p, %rgb2hsl.exit
  store float %.1.i, ptr %i.d, align 4, !tbaa !77
  %i.fs = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store float %.043.i, ptr %i.fs, align 4, !tbaa !79
  %i.ft = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !80
end_hunk_0
