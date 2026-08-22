Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorequal?download=true
inline.NumInlined: 278
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 67
begin_hunk_0_@dt_bauhaus_slider_set
declare void @dt_bauhaus_slider_set(ptr noundef, float noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @gui_changed(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x [4 x float]], align 64       ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !70  ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !536
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !513
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2760
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !543
  %i.j = tail call ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef %i.i) #32 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 552 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !544
  %.not = icmp eq ptr %i.j, %i.l
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 560 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !545
  tail call void @free(ptr noundef %i.n) #32
  %i.o = tail call fastcc ptr @D65_adapt_iccprofile(ptr noundef %i.j) ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !545
  store ptr %i.j, ptr %i.k, align 8, !tbaa !544
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store i32 0, ptr %i.p, align 8, !tbaa !546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, ptr noundef nonnull align 64 dereferenceable(64) @__const.gui_init.input_matrix, i64 64, i1 false)
  %.not38 = icmp eq ptr %i.o, null
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(64) %i.a, ptr noundef nonnull align 64 dereferenceable(64) %i.q, i64 64, i1 false)
  br label %vector.ph

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !370
  %i.s = and i32 %i.r, 33554432
  %.not39 = icmp eq i32 %i.s, 0
  br i1 %.not39, label %vector.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.27) #32
  br label %vector.ph

vector.ph:                                        ; preds = %bb.d, %bb.e, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 632 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !547
  call fastcc void @dt_UCS_22_build_gamut_LUT(ptr noundef %i.a, ptr noundef %i.u)
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !547  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.aa, %vector.body ] ; 2 uses
  %vec.phi43 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ab, %vector.body ] ; 2 uses
  %vec.phi44 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ac, %vector.body ] ; 2 uses
  %vec.phi45 = phi <8 x float> [ splat (float f0x7F7FFFFF), %vector.ph ], [ %i.ad, %vector.body ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %wide.load = load <8 x float>, ptr %i.w, align 4, !tbaa !11 ; 2 uses
  %wide.load46 = load <8 x float>, ptr %i.x, align 4, !tbaa !11 ; 2 uses
  %wide.load47 = load <8 x float>, ptr %i.y, align 4, !tbaa !11 ; 2 uses
  %wide.load48 = load <8 x float>, ptr %i.z, align 4, !tbaa !11 ; 2 uses
  %i.aa = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %wide.load, <8 x float> %vec.phi) ; 2 uses
  %i.ab = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %wide.load46, <8 x float> %vec.phi43) ; 2 uses
  %i.ac = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %wide.load47, <8 x float> %vec.phi44) ; 2 uses
  %i.ad = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %wide.load48, <8 x float> %vec.phi45) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = fcmp uno <8 x float> %wide.load, %wide.load46
  %i.af = fcmp uno <8 x float> %wide.load47, %wide.load48
  %i.ag = freeze <8 x i1> %i.ae
  %i.ah = freeze <8 x i1> %i.af
  %i.ai = or <8 x i1> %i.ag, %i.ah
  %i.aj = bitcast <8 x i1> %i.ai to i8
  %i.ak = icmp ne i8 %i.aj, 0                     ; 6 uses
  %i.al = icmp eq i64 %index.next, 512
  %i.am = or i1 %i.ak, %i.al
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !548

middle.block:                                     ; preds = %vector.body
  %i.an = select i1 %i.ak, <8 x float> %vec.phi, <8 x float> %i.aa
  %i.ao = select i1 %i.ak, <8 x float> %vec.phi43, <8 x float> %i.ab
  %i.ap = select i1 %i.ak, <8 x float> %vec.phi44, <8 x float> %i.ac
  %i.aq = select i1 %i.ak, <8 x float> %vec.phi45, <8 x float> %i.ad
  %rdx.minmax = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %i.an, <8 x float> %i.ao)
  %rdx.minmax49 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax, <8 x float> %i.ap)
  %rdx.minmax50 = tail call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %rdx.minmax49, <8 x float> %i.aq)
  %i.ar = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fmin.v8f32(<8 x float> %rdx.minmax50) ; 2 uses
  br i1 %i.ak, label %scalar.ph, label %get_minimum_saturation.exit

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %.015.i = phi float [ %i.au, %scalar.ph ], [ %i.ar, %middle.block ]
  %.01014.i = phi i64 [ %i.av, %scalar.ph ], [ %index, %middle.block ] ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.01014.i
  %i.at = load float, ptr %i.as, align 4, !tbaa !11
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.at, float %.015.i) ; 2 uses
  %i.av = add nuw nsw i64 %.01014.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.av, 512
  br i1 %exitcond.not.i, label %get_minimum_saturation.exit, label %scalar.ph, !llvm.loop !549

get_minimum_saturation.exit:                      ; preds = %scalar.ph, %middle.block
  %.lcssa = phi float [ %i.ar, %middle.block ], [ %i.au, %scalar.ph ]
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.lcssa, float f0x3F19CB20)
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, f0x40B26B18 ; 2 uses
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ax, float f0x3FAB13D1)
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, 2.000000e-01
  %i.ba = fadd reassoc nsz arcp contract afn float %i.az, 2.000000e-01 ; 2 uses
  %i.bb = fcmp reassoc nsz arcp contract afn ogt float %i.ba, 0.000000e+00
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.ax, %i.ba
  %i.bd = select reassoc nsz arcp contract afn i1 %i.bb, float %i.bc, float 0.000000e+00
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 620
  store float %i.bd, ptr %i.be, align 4, !tbaa !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  br label %bb.f

bb.f:                                             ; preds = %get_minimum_saturation.exit, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !337 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !532
  tail call void @gtk_widget_set_visible(ptr noundef %i.bi, i32 noundef %i.bg) #32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !551
  tail call void @gtk_widget_set_visible(ptr noundef %i.bk, i32 noundef %i.bg) #32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !552
  tail call void @gtk_widget_set_visible(ptr noundef %i.bm, i32 noundef %i.bg) #32
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !531
  tail call void @gtk_widget_set_visible(ptr noundef %i.bo, i32 noundef %i.bg) #32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !553
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 544
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !554
  %i.bt = icmp eq i32 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  tail call void @gtk_widget_set_visible(ptr noundef %i.bq, i32 noundef %i.bu) #32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !555
  %i.bx = icmp ne ptr %1, %i.bw
  %i.by = icmp ne i32 %i.bg, 0
  %or.cond = or i1 %i.by, %i.bx
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 640
  store i32 0, ptr %i.bz, align 8, !tbaa !96
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !544
  %.not40 = icmp eq ptr %i.j, %i.ca
  br i1 %.not40, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !534
  %i.cd = icmp eq ptr %1, %i.cc
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val = load ptr, ptr %i.d, align 8, !tbaa !536
  %.val41 = load ptr, ptr %i.b, align 16, !tbaa !70
  tail call fastcc void @_init_sliders(ptr %.val, ptr %.val41)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !542
  tail call void @gtk_widget_queue_draw(ptr noundef %i.cf) #32
  ret void
}

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @gtk_widget_queue_draw(ptr noundef) local_unnamed_addr #6

declare ptr @dt_ioppr_get_pipe_output_profile_info(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef ptr @D65_adapt_iccprofile(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #16 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @dt_alloc_aligned(i64 noundef 1088) #32 ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1088) %i.a, ptr noundef nonnull align 64 dereferenceable(1088) %0, i64 1088, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 576
  %gep.2.i = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 644
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.f = load float, ptr %i.e, align 4, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.j = load float, ptr %i.i, align 4, !tbaa !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 640
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 672
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.o = load <8 x float>, ptr %i.b, align 4, !tbaa !11 ; 4 uses
  %i.p = load <4 x float>, ptr %gep.2.i, align 4, !tbaa !11 ; 2 uses
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.r = fmul reassoc nsz arcp contract afn <8 x float> %i.o, <float f0x3BB11DFF, float f0x3BB11DFF, float f0x3BB11DFF, float f0xBBB11DFF, float f0x3D23F6FB, float f0x3D23F6FB, float f0x3D23F6FB, float f0xBD23F6FB>
  %i.s = shufflevector <8 x float> %i.r, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn <8 x float> %i.o, <float f0x3F7D4DA9, float f0x3F7D4DA9, float f0x3F7D4DA9, float f0x3F7D4DA9, float f0x3F80DA42, float f0x3F80DA42, float f0x3F80DA42, float f0x3F80DA42> ; 2 uses
  %i.u = fsub reassoc nsz arcp contract afn <8 x float> %i.t, %i.s
  %i.v = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %i.s
  %i.w = shufflevector <8 x float> %i.u, <8 x float> %i.v, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 4, i32 5, i32 6, i32 15>
  %i.x = fmul reassoc nsz arcp contract afn <8 x float> %i.q, <float f0x3D3470F4, float f0x3D3470F4, float f0x3D3470F4, float f0x3D3470F4, float f0xBAE61976, float f0xBAE61976, float f0xBAE61976, float f0xBAE61976>
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %i.w, %i.x ; 4 uses
  %i.z = load <2 x float>, ptr %i.c, align 4, !tbaa !11 ; 5 uses
  %i.aa = load float, ptr %i.d, align 4, !tbaa !11
  %i.ab = extractelement <2 x float> %i.z, i64 0
  %i.ac = fadd reassoc nsz arcp contract afn float %i.aa, %i.ab
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, %i.f
  %i.ae = load <2 x float>, ptr %i.g, align 4, !tbaa !11 ; 5 uses
  %i.af = load float, ptr %i.h, align 4, !tbaa !11
  %i.ag = shufflevector <2 x float> %i.z, <2 x float> %i.ae, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ah = fmul reassoc nsz arcp contract afn <4 x float> %i.ag, <float f0x3BB1DE8E, float f0x3D26BE12, float f0x3BB1DE8E, float f0x3D26BE12>
  %i.ai = shufflevector <2 x float> %i.z, <2 x float> %i.ae, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aj = fmul reassoc nsz arcp contract afn <4 x float> %i.ai, <float f0x3F8163AD, float f0x3F7E5B63, float f0x3F8163AD, float f0x3F7E5B63>
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.aj, %i.ah
  %i.al = shufflevector <2 x float> %i.z, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.am = fmul reassoc nsz arcp contract afn <2 x float> %i.al, splat (float f0x3D0BDB31)
  %i.an = shufflevector <2 x float> %i.z, <2 x float> %i.ae, <2 x i32> <i32 1, i32 3>
  %i.ao = fmul reassoc nsz arcp contract afn <2 x float> %i.an, splat (float f0x3A978241)
  %i.ap = fsub reassoc nsz arcp contract afn <2 x float> %i.ao, %i.am
  %i.aq = extractelement <2 x float> %i.ae, i64 0
  %i.ar = fadd reassoc nsz arcp contract afn float %i.af, %i.aq
  %i.as = fadd reassoc nsz arcp contract afn float %i.ar, %i.j
  %i.at = insertelement <8 x float> poison, float %i.f, i64 0
  %i.au = insertelement <8 x float> %i.at, float %i.ad, i64 1
  %i.av = insertelement <8 x float> %i.au, float %i.j, i64 2
  %i.aw = insertelement <8 x float> %i.av, float %i.as, i64 3
  %i.ax = shufflevector <8 x float> %i.aw, <8 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 2, i32 2, i32 2, i32 3>
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, <float f0x39837366, float f0xBC3C486C, float f0x3F44995A, float 0.000000e+00, float f0x39837366, float f0xBC3C486C, float f0x3F44995A, float 0.000000e+00>
  %i.az = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ba = shufflevector <4 x float> %i.ak, <4 x float> %i.az, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %i.bb = shufflevector <8 x float> %i.ba, <8 x float> <float poison, float poison, float poison, float -0.000000e+00, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 4, i32 11, i32 2, i32 3, i32 5, i32 15>
  %i.bc = fadd reassoc nsz arcp contract afn <8 x float> %i.ay, %i.bb ; 4 uses
  %i.bd = load <2 x float>, ptr %i.k, align 4, !tbaa !11 ; 4 uses
  %i.be = load float, ptr %i.l, align 4, !tbaa !11 ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, <float f0x3D26BE12, float f0x3BB1DE8E>
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = fmul reassoc nsz arcp contract afn <2 x float> %i.bd, <float f0x3F8163AD, float f0x3F7E5B63>
  %i.bi = fadd reassoc nsz arcp contract afn <2 x float> %i.bh, %i.bg
  %i.bj = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, f0x3D0BDB31
  %i.bl = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, f0x3A978241
  %i.bn = fsub reassoc nsz arcp contract afn float %i.bm, %i.bk
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bl, %i.bj
  %i.bp = fadd reassoc nsz arcp contract afn float %i.bo, %i.be
  %i.bq = insertelement <4 x float> poison, float %i.be, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bp, i64 1
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bt = fmul reassoc nsz arcp contract afn <4 x float> %i.bs, <float f0x39837366, float f0xBC3C486C, float f0x3F44995A, float 0.000000e+00>
  %i.bu = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.bn, i64 2
  %i.bv = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bx = fadd reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bw ; 3 uses
  store <8 x float> %i.bc, ptr %i.m, align 64
  store <4 x float> %i.bx, ptr %.sroa.11.0..sroa_idx, align 32
  store <8 x float> %i.y, ptr %i.n, align 64
  %.sroa.1122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.by = shufflevector <8 x float> %i.o, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = fmul reassoc nsz arcp contract afn <4 x float> %i.by, <float 4.039210e-04, float 4.039210e-04, float 4.039210e-04, float -4.039210e-04> ; 2 uses
  %i.ca = shufflevector <8 x float> %i.o, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cb = fmul reassoc nsz arcp contract afn <4 x float> %i.ca, splat (float f0x3C7704B2) ; 2 uses
  %i.cc = fsub reassoc nsz arcp contract afn <4 x float> %i.cb, %i.bz
  %i.cd = fadd reassoc nsz arcp contract afn <4 x float> %i.cb, %i.bz
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cf = fmul reassoc nsz arcp contract afn <4 x float> %i.p, splat (float f0x3FA6AB48)
  %i.cg = fadd reassoc nsz arcp contract afn <4 x float> %i.ce, %i.cf ; 3 uses
  store <4 x float> %i.cg, ptr %.sroa.1122.0..sroa_idx, align 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  %i.ci = shufflevector <4 x float> %i.bx, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cj = shufflevector <8 x float> %i.bc, <8 x float> %i.ci, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.ck = insertelement <4 x float> %i.cj, float 0.000000e+00, i64 3
  store <4 x float> %i.ck, ptr %i.ch, align 64, !tbaa !11
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  %i.cm = shufflevector <8 x float> %i.bc, <8 x float> %i.ci, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float 0.000000e+00, i64 3
  store <4 x float> %i.cn, ptr %i.cl, align 16, !tbaa !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.cp = shufflevector <8 x float> %i.bc, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.cp, ptr %i.co, align 32, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  %i.cr = extractelement <4 x float> %i.bx, i64 2
  store float %i.cr, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 1004
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.cs, i8 0, i64 20, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.cu = shufflevector <4 x float> %i.cg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cv = shufflevector <8 x float> %i.y, <8 x float> %i.cu, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float 0.000000e+00, i64 3
  store <4 x float> %i.cw, ptr %i.ct, align 64, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  %i.cy = shufflevector <8 x float> %i.y, <8 x float> %i.cu, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.cz = insertelement <4 x float> %i.cy, float 0.000000e+00, i64 3
  store <4 x float> %i.cz, ptr %i.cx, align 16, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  %i.db = shufflevector <8 x float> %i.y, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  store <2 x float> %i.db, ptr %i.da, align 32, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 936
  %i.dd = extractelement <4 x float> %i.cg, i64 2
  store float %i.dd, ptr %i.dc, align 8, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 940
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.de, i8 0, i64 20, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #6

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @_init_sliders(ptr nofree readonly captures(none) %.680.val, ptr nofree readonly captures(none) %.704.val) unnamed_addr #16 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 6 uses
  %i.e = alloca [4 x float], align 16             ; 7 uses
  %i.f = alloca [4 x float], align 16             ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.704.val, i64 256
  %i.h = getelementptr inbounds nuw i8, ptr %.704.val, i64 620 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.680.val, i64 124 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.704.val, i64 560 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.704.val, i64 632 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %bb.b

.preheader1:                                      ; preds = %_draw_sliders_saturation_gradient.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.704.val, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a, %_draw_sliders_saturation_gradient.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_draw_sliders_saturation_gradient.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !556  ; 5 uses
  %i.w = load float, ptr %i.h, align 4, !tbaa !550
  %i.x = load float, ptr %i.i, align 4, !tbaa !61
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  %i.z = uitofp nneg i32 %i.y to float
  %i.aa = fmul reassoc nnan nsz arcp contract afn float %i.z, 4.500000e+01
  %i.ab = fadd reassoc nsz arcp contract afn float %i.x, %i.aa
  %i.ac = fmul reassoc nsz arcp contract afn float %i.ab, f0x3C8EFA36
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ac, f0x3EB2B8C4
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !545
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %i.w, f0x3D579436
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.014.i = phi i32 [ 0, %bb.b ], [ %i.al, %bb.c ] ; 2 uses
  %i.ag = uitofp nneg i32 %.014.i to float        ; 2 uses
  %i.ah = fmul reassoc nnan nsz arcp contract afn float %i.ag, f0x3D579436
  %.reass.i = fmul reassoc nsz arcp contract afn float %invariant.op.i, %i.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, ptr noundef nonnull align 16 dereferenceable(16) @__const._draw_sliders_brightness_gradient.RGB, i64 16, i1 false)
  store float %i.ad, ptr %i.f, align 16, !tbaa !11
  store float %.reass.i, ptr %i.l, align 4, !tbaa !11
  store <2 x float> <float 6.500000e-01, float 0.000000e+00>, ptr %i.m, align 8, !tbaa !11
  call fastcc void @_build_dt_UCS_HSB_gradients(ptr noundef %i.f, ptr noundef %i.e, ptr noundef readonly %i.ae, ptr noundef readonly %i.af)
  %i.ai = load float, ptr %i.e, align 16, !tbaa !11
  %i.aj = load float, ptr %i.n, align 4, !tbaa !11
  %i.ak = load float, ptr %i.o, align 8, !tbaa !11
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.v, float noundef %i.ah, float noundef %i.ai, float noundef %i.aj, float noundef %i.ak) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.al = add nuw nsw i32 %.014.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.al, 20
  br i1 %exitcond.not.i, label %_draw_sliders_saturation_gradient.exit, label %bb.c

_draw_sliders_saturation_gradient.exit:           ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  tail call void @dt_bauhaus_slider_set_format(ptr noundef %i.v, ptr noundef nonnull @.str.96) #32
  tail call void @dt_bauhaus_slider_set_offset(ptr noundef %i.v, float noundef -1.000000e+02) #32
  tail call void @dt_bauhaus_slider_set_digits(ptr noundef %i.v, i32 noundef 2) #32
  tail call void @gtk_widget_queue_draw(ptr noundef %i.v) #32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.preheader1, label %bb.b

.preheader:                                       ; preds = %_draw_sliders_hue_gradient.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.704.val, i64 384
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

bb.d:                                             ; preds = %.preheader1, %_draw_sliders_hue_gradient.exit
  %indvars.iv6 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next7, %_draw_sliders_hue_gradient.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv6
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !556 ; 4 uses
  %i.ar = load float, ptr %i.h, align 4, !tbaa !550
  %i.as = load float, ptr %i.i, align 4, !tbaa !61
  %i.at = trunc nuw nsw i64 %indvars.iv6 to i32
  %i.au = uitofp nneg i32 %i.at to float
  %i.av = fmul reassoc nnan nsz arcp contract afn float %i.au, 4.500000e+01
  %i.aw = fadd reassoc nsz arcp contract afn float %i.as, %i.av
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, f0x3C8EFA36
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !545
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ba = fadd reassoc nsz arcp contract afn float %i.ax, f0xC032B8C2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.012.i = phi i32 [ 0, %bb.d ], [ %i.bi, %bb.e ] ; 2 uses
  %i.bb = uitofp nneg i32 %.012.i to float        ; 2 uses
  %i.bc = fmul reassoc nnan nsz arcp contract afn float %i.bb, f0x3D579436
  %i.bd = fmul reassoc nnan nsz arcp contract afn float %i.bb, 3.306940e-01
  %i.be = fadd reassoc nsz arcp contract afn float %i.ba, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._draw_sliders_brightness_gradient.RGB, i64 16, i1 false)
  store float %i.be, ptr %i.d, align 16, !tbaa !11
  store float %i.ar, ptr %i.q, align 4, !tbaa !11
  store <2 x float> <float 6.500000e-01, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !11
  call fastcc void @_build_dt_UCS_HSB_gradients(ptr noundef %i.d, ptr noundef %i.c, ptr noundef readonly %i.ay, ptr noundef readonly %i.az)
  %i.bf = load float, ptr %i.c, align 16, !tbaa !11
  %i.bg = load float, ptr %i.s, align 4, !tbaa !11
  %i.bh = load float, ptr %i.t, align 8, !tbaa !11
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.aq, float noundef %i.bc, float noundef %i.bf, float noundef %i.bg, float noundef %i.bh) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.bi = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %exitcond.not.i44 = icmp eq i32 %i.bi, 20
  br i1 %exitcond.not.i44, label %_draw_sliders_hue_gradient.exit, label %bb.e

_draw_sliders_hue_gradient.exit:                  ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
