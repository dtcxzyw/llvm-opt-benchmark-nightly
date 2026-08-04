inline.NumInlined: 32
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@process:bb.a
  %i.bg = add i64 %i.bf, 12                       ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !11
  %reass.add.3 = fadd reassoc nsz arcp contract afn float %i.bi, -5.000000e+01
  %reass.mul.3 = fmul reassoc nsz arcp contract afn float %reass.add.3, %i.j
  %i.bj = fadd reassoc nsz arcp contract afn float %reass.mul.3, %i.f
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bg ; 3 uses
  %.sroa.4.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store <2 x float> %i.h, ptr %.sroa.4.0..sroa_idx.3, align 4, !tbaa !11, !alias.scope !47
  %.sroa.6.0..sroa_idx.3 = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store float 0.000000e+00, ptr %.sroa.6.0..sroa_idx.3, align 4, !tbaa !11, !alias.scope !47
  store float %i.bj, ptr %i.bk, align 4, !tbaa !11
  %i.bl = add nuw i64 %.030, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bl, %i.q
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
  %i.am = shufflevector <4 x float> %i.ag, <4 x float> <float poison, float poison, float f0x3E6A7CB9, float poison>, <4 x i32> <i32 1, i32 0, i32 6, i32 poison>
  %i.an = insertelement <4 x float> %i.am, float %i.ai, i64 3 ; 2 uses
  %i.ao = shufflevector <4 x float> %i.ag, <4 x float> <float f0x3FCEF57D, float f0x3F719831, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 1> ; 2 uses
  %i.ap = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %i.ao
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.an, %i.ao
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.as = fsub reassoc nsz arcp contract afn <4 x float> %i.aj, %i.ar
  %i.at = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.ar
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.av = fadd reassoc nsz arcp contract afn <4 x float> %i.au, %i.al ; 4 uses
  %i.aw = fmul reassoc nsz arcp contract afn <4 x float> %i.au, %i.al
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.ay = bitcast <4 x float> %i.ax to <4 x i32>  ; 2 uses
  %i.az = and <4 x i32> %i.ay, splat (i32 8388607)
  %i.ba = or disjoint <4 x i32> %i.az, splat (i32 1065353216)
  %i.bb = bitcast <4 x i32> %i.ba to <4 x float>  ; 5 uses
  %i.bc = lshr <4 x i32> %i.ay, splat (i32 23)
  %i.bd = and <4 x i32> %i.bc, splat (i32 255)
  %i.be = add nsw <4 x i32> %i.bd, splat (i32 -127)
  %i.bf = sitofp <4 x i32> %i.be to <4 x float>
  %i.bg = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bb, splat (float f0x3D74552F)
  %i.bh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bg, splat (float f0xBEEE7397)
  %i.bi = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bh, %i.bb
  %i.bj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bi, splat (float f0x3FBD96DD)
  %i.bk = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bj, %i.bb
  %i.bl = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bk, splat (float f0xC02153F6)
  %i.bm = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.bl, %i.bb
  %i.bn = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bm, splat (float f0x4038D96C)
  %i.bo = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.bb, splat (float -1.000000e+00)
  %i.bp = fmul reassoc nsz arcp contract afn <4 x float> %i.bn, %i.bo
  %i.bq = fadd reassoc nsz arcp contract afn <4 x float> %i.bp, %i.bf
  %i.br = fmul reassoc nsz arcp contract afn <4 x float> %i.bq, splat (float f0x3ED55555)
  %i.bs = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.br, <4 x float> splat (float 1.290000e+02))
  %i.bt = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.bs, <4 x float> splat (float f0xC2FDFFFF)) ; 4 uses
  %i.bu = fadd reassoc nsz arcp contract afn <4 x float> %i.bt, splat (float -5.000000e-01)
  %i.bv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.bu)
  %i.bw = sitofp reassoc nsz arcp contract afn <4 x i32> %i.bv to <4 x float> ; 5 uses
  %i.bx = extractelement <4 x float> %i.av, i64 0 ; 2 uses
  %i.by = fcmp reassoc nsz arcp contract afn ugt float %i.bx, 3.130800e-03
  br i1 %i.by, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bz = fmul reassoc nnan nsz arcp contract afn float %i.bx, 1.292000e+01
  br label %dt_XYZ_to_sRGB.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.014.0.vec.extract.i.i.i = extractelement <4 x float> %i.bw, i64 0
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bw
  %i.ca = extractelement <4 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.ca, f0x3C5DBE69
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, f0x3D5509F9
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, %i.ca
  %i.ce = fadd reassoc nsz arcp contract afn float %i.cd, f0x3E773CC5
  %i.cf = fmul reassoc nsz arcp contract afn float %i.ce, %i.ca
  %i.cg = fadd reassoc nsz arcp contract afn float %i.cf, f0x3F3168B3
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.ca
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, f0x3F800016
  %i.cj = fptosi float %.sroa.014.0.vec.extract.i.i.i to i32
  %i.ck = shl i32 %i.cj, 23
  %i.cl = add i32 %i.ck, 1065353216
  %i.cm = bitcast i32 %i.cl to float
  %i.cn = fmul reassoc nnan nsz arcp contract afn float %i.cm, 1.055000e+00
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.ci
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, -5.500000e-02
  br label %dt_XYZ_to_sRGB.exit

dt_XYZ_to_sRGB.exit:                              ; preds = %bb.b, %bb.c
  %i.cq = phi reassoc nsz arcp contract afn float [ %i.bz, %bb.b ], [ %i.cp, %bb.c ] ; 5 uses
  %foldExtExtBinop34 = fsub reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bw
  %i.cr = extractelement <4 x float> %foldExtExtBinop34, i64 2 ; 4 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, f0x3C5DBE69
  %i.ct = fadd reassoc nsz arcp contract afn float %i.cs, f0x3D5509F9
  %i.cu = fmul reassoc nsz arcp contract afn float %i.ct, %i.cr
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, f0x3E773CC5
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cv, %i.cr
  %i.cx = fadd reassoc nsz arcp contract afn float %i.cw, f0x3F3168B3
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cx, %i.cr
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, f0x3F800016
  %foldExtExtBinop36 = fsub reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bw
  %i.da = extractelement <4 x float> %foldExtExtBinop36, i64 1 ; 4 uses
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, f0x3C5DBE69
  %i.dc = fadd reassoc nsz arcp contract afn float %i.db, f0x3D5509F9
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.da
  %i.de = fadd reassoc nsz arcp contract afn float %i.dd, f0x3E773CC5
  %i.df = fmul reassoc nsz arcp contract afn float %i.de, %i.da
  %i.dg = fadd reassoc nsz arcp contract afn float %i.df, f0x3F3168B3
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dg, %i.da
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, f0x3F800016
  %3 = shufflevector <4 x float> %i.bw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %4 = fptosi <2 x float> %3 to <2 x i32>
  %5 = shl <2 x i32> %4, splat (i32 23)
  %6 = add <2 x i32> %5, splat (i32 1065353216)
  %7 = bitcast <2 x i32> %6 to <2 x float>        ; 2 uses
  %i.dj = extractelement <4 x float> %i.av, i64 2 ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, 1.292000e+01
  %i.dl = extractelement <4 x float> %i.av, i64 1 ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, 1.292000e+01
  %i.dn = fcmp reassoc nsz arcp contract afn ugt float %i.dl, 3.130800e-03
  %8 = extractelement <2 x float> %7, i64 0
  %i.do = fmul reassoc nnan nsz arcp contract afn float %8, 1.055000e+00
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.di
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dp, -5.500000e-02
  %i.dr = select reassoc nsz arcp contract afn i1 %i.dn, float %i.dq, float %i.dm ; 5 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ugt float %i.dj, 3.130800e-03
  %9 = extractelement <2 x float> %7, i64 1
  %i.dt = fmul reassoc nnan nsz arcp contract afn float %9, 1.055000e+00
  %i.du = fmul reassoc nsz arcp contract afn float %i.dt, %i.cz
  %i.dv = fadd reassoc nsz arcp contract afn float %i.du, -5.500000e-02
  %i.dw = select reassoc nsz arcp contract afn i1 %i.ds, float %i.dv, float %i.dk ; 5 uses
  %i.dx = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cq, float %i.dr)
  %i.dy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dx, float %i.dw) ; 6 uses
  %i.dz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cq, float %i.dr)
  %i.ea = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.dz, float %i.dw) ; 3 uses
  %i.eb = fsub reassoc nsz arcp contract afn float %i.dy, %i.ea ; 5 uses
  %i.ec = fcmp reassoc nsz arcp contract afn une float %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.d, label %rgb2hsl.exit

bb.d:                                             ; preds = %dt_XYZ_to_sRGB.exit
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ea, %i.dy ; 2 uses
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, 5.000000e-01
  %i.ef = fcmp reassoc nsz arcp contract afn olt float %i.ee, 5.000000e-01
  br i1 %i.ef, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.eg = fpext reassoc nsz arcp contract afn float %i.dy to double
  %i.eh = fpext reassoc nsz arcp contract afn float %i.ea to double
  %i.ei = fadd reassoc nsz arcp contract afn double %i.eg, %i.eh
  %i.ej = fsub reassoc nsz arcp contract afn double 2.000000e+00, %i.ei
  %i.ek = fptrunc reassoc nsz arcp contract afn double %i.ej to float
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi float [ %i.ek, %bb.e ], [ %i.ed, %bb.d ]
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sink.i, float f0x37800000)
  %i.em = fdiv reassoc nsz arcp contract afn float %i.eb, %i.el ; 3 uses
  %i.en = fcmp reassoc nsz arcp contract afn oeq float %i.dy, %i.cq
  br i1 %i.en, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.eo = fsub reassoc nsz arcp contract afn float %i.dr, %i.dw
  %i.ep = fdiv reassoc nsz arcp contract afn float %i.eo, %i.eb
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.eq = fcmp reassoc nsz arcp contract afn oeq float %i.dy, %i.dr
  br i1 %i.eq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.er = fsub reassoc nsz arcp contract afn float %i.dw, %i.cq
  %i.es = fdiv reassoc nsz arcp contract afn float %i.er, %i.eb
  %i.et = fadd reassoc nsz arcp contract afn float %i.es, 2.000000e+00
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.eu = fcmp reassoc nsz arcp contract afn oeq float %i.dy, %i.dw
  br i1 %i.eu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ev = fsub reassoc nsz arcp contract afn float %i.cq, %i.dr
  %i.ew = fdiv reassoc nsz arcp contract afn float %i.ev, %i.eb
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, 4.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g
  %.0.i = phi nsz float [ %i.ep, %bb.g ], [ %i.et, %bb.i ], [ %i.ex, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.ey = fpext reassoc nsz arcp contract afn float %.0.i to double
  %i.ez = fmul reassoc nsz arcp contract afn double %i.ey, f0x3FC5555555555555 ; 3 uses
  %i.fa = fptrunc reassoc nsz arcp contract afn double %i.ez to float ; 3 uses
  %i.fb = fcmp reassoc nsz arcp contract afn olt double %i.ez, f0xB690000000000000
  br i1 %i.fb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fc = fadd reassoc nsz arcp contract afn float %i.fa, 1.000000e+00
  br label %rgb2hsl.exit

bb.n:                                             ; preds = %bb.l
  %i.fd = fcmp reassoc nsz arcp contract afn ogt double %i.ez, f0x3FF0000010000000
  br i1 %i.fd, label %bb.o, label %rgb2hsl.exit

bb.o:                                             ; preds = %bb.n
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fa, -1.000000e+00
  br label %rgb2hsl.exit

rgb2hsl.exit:                                     ; preds = %dt_XYZ_to_sRGB.exit, %bb.m, %bb.n, %bb.o
  %.043.i = phi nsz float [ %i.em, %bb.m ], [ %i.em, %bb.o ], [ %i.em, %bb.n ], [ 0.000000e+00, %dt_XYZ_to_sRGB.exit ] ; 2 uses
  %.1.i = phi nsz float [ %i.fc, %bb.m ], [ %i.fe, %bb.o ], [ %i.fa, %bb.n ], [ 0.000000e+00, %dt_XYZ_to_sRGB.exit ] ; 2 uses
  %i.ff = load float, ptr %i.d, align 4, !tbaa !77
  %i.fg = fsub reassoc nsz arcp contract afn float %i.ff, %.1.i
  %i.fh = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fg)
  %i.fi = fcmp reassoc nsz arcp contract afn olt float %i.fh, f0x38D1B717
  br i1 %i.fi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rgb2hsl.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !79
  %i.fl = fsub reassoc nsz arcp contract afn float %i.fk, %.043.i
  %i.fm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.fl)
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.fm, f0x38D1B717
  br i1 %i.fn, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p, %rgb2hsl.exit
  store float %.1.i, ptr %i.d, align 4, !tbaa !77
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store float %.043.i, ptr %i.fo, align 4, !tbaa !79
  %i.fp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !80
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 104
  %i.fr = atomicrmw add ptr %i.fq, i32 1 seq_cst, align 4 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !73
  %i.fu = load float, ptr %i.d, align 4, !tbaa !77
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ft, float noundef %i.fu) #20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !76
  %i.fx = load float, ptr %i.fo, align 4, !tbaa !79
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.fw, float noundef %i.fx) #20
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !76
  %i.fz = load float, ptr %i.d, align 4, !tbaa !77
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fz, 6.000000e+00 ; 8 uses
  %i.gb = fcmp reassoc nsz arcp contract afn olt float %i.ga, 4.000000e+00 ; 2 uses
  %.v.i.i = select i1 %i.gb, float 2.000000e+00, float -4.000000e+00
  %i.gc = fadd reassoc nsz arcp contract afn float %.v.i.i, %i.ga ; 5 uses
  %i.gd = fcmp reassoc nsz arcp contract afn olt float %i.gc, 1.000000e+00
  br i1 %i.gd, label %hue2rgb.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ge = fcmp reassoc nsz arcp contract afn olt float %i.gc, 3.000000e+00
  br i1 %i.ge, label %hue2rgb.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gf = fcmp reassoc nsz arcp contract afn olt float %i.gc, 4.000000e+00
  %i.gg = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gc
  %i.gh = select reassoc nsz arcp contract afn i1 %i.gf, float %i.gg, float 0.000000e+00
  br label %hue2rgb.exit.i.i

hue2rgb.exit.i.i:                                 ; preds = %bb.s, %bb.r, %bb.q
  %.0.i.i.i = phi nsz float [ 1.000000e+00, %bb.r ], [ %i.gh, %bb.s ], [ %i.gc, %bb.q ]
  %i.gi = fcmp reassoc nsz arcp contract afn olt float %i.ga, 1.000000e+00
  br i1 %i.gi, label %hue2rgb.exit36.i.i, label %bb.t

bb.t:                                             ; preds = %hue2rgb.exit.i.i
  %i.gj = fcmp reassoc nsz arcp contract afn olt float %i.ga, 3.000000e+00
  br i1 %i.gj, label %hue2rgb.exit36.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gk = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.ga
  %i.gl = select reassoc nsz arcp contract afn i1 %i.gb, float %i.gk, float 0.000000e+00
  br label %hue2rgb.exit36.i.i

hue2rgb.exit36.i.i:                               ; preds = %bb.u, %bb.t, %hue2rgb.exit.i.i
  %.0.i35.i.i = phi nsz float [ 1.000000e+00, %bb.t ], [ %i.gl, %bb.u ], [ %i.ga, %hue2rgb.exit.i.i ]
  %i.gm = fcmp reassoc nsz arcp contract afn ogt float %i.ga, 2.000000e+00
  %.v34.i.i = select i1 %i.gm, float -2.000000e+00, float 4.000000e+00
  %i.gn = fadd reassoc nsz arcp contract afn float %.v34.i.i, %i.ga ; 5 uses
  %i.go = fcmp reassoc nsz arcp contract afn olt float %i.gn, 1.000000e+00
  br i1 %i.go, label %update_saturation_slider_end_color.exit, label %bb.v

bb.v:                                             ; preds = %hue2rgb.exit36.i.i
  %i.gp = fcmp reassoc nsz arcp contract afn olt float %i.gn, 3.000000e+00
  br i1 %i.gp, label %update_saturation_slider_end_color.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gq = fcmp reassoc nsz arcp contract afn olt float %i.gn, 4.000000e+00
  %i.gr = fsub reassoc nnan nsz arcp contract afn float 4.000000e+00, %i.gn
  %i.gs = select reassoc nsz arcp contract afn i1 %i.gq, float %i.gr, float 0.000000e+00
  br label %update_saturation_slider_end_color.exit

update_saturation_slider_end_color.exit:          ; preds = %hue2rgb.exit36.i.i, %bb.v, %bb.w
  %.0.i37.i.i = phi nsz float [ 1.000000e+00, %bb.v ], [ %i.gs, %bb.w ], [ %i.gn, %hue2rgb.exit36.i.i ]
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.fy, float noundef 1.000000e+00, float noundef %.0.i.i.i, float noundef %.0.i35.i.i, float noundef %.0.i37.i.i) #20
  %i.gt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !80
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 104
  %i.gv = atomicrmw sub ptr %i.gu, i32 1 seq_cst, align 4 ; 0 uses
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !120
  tail call void @dt_dev_add_history_item(ptr noundef %i.gw, ptr noundef nonnull %0, i32 noundef 1) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %update_saturation_slider_end_color.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #3

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @gui_reset(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  tail call void @dt_iop_color_picker_reset(ptr noundef %0, i32 noundef 1) #20
  ret void
}

declare void @dt_iop_color_picker_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @commit_params(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !35
  %i.c = load float, ptr %1, align 4, !tbaa !77
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !79 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !121
end_hunk_0
