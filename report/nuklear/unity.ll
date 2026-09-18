Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_select_image_text:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_selectable_image_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !415  ; 3 uses
  %.not30.i = icmp eq ptr %i.d, null
  br i1 %.not30.i, label %nk_selectable_image_text.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !416  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %nk_selectable_image_text.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = call i32 @nk_widget(ptr noundef nonnull %6, ptr noundef nonnull %0)
  switch i32 %i.h, label %bb.f [
    i32 0, label %nk_selectable_image_text.exit
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !488
  %i.k = and i32 %i.j, 4096
  %.not32.i = icmp eq i32 %i.k, 0
  %spec.select.i = select i1 %.not32.i, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ null, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1720
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !414
  %i.q = load <2 x float>, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load <2 x float>, ptr %i.r, align 8
  %i.t = call fastcc zeroext i1 @nk_do_selectable_image(ptr noundef %i.m, ptr noundef %i.n, <2 x float> %i.q, <2 x float> %i.s, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull readonly align 8 %7, ptr noundef %i.o, ptr noundef %i.l, ptr noundef %i.p) ; 0 uses
  %.pre = load i8, ptr %i.a, align 1, !tbaa !557, !range !88
  %i.u = trunc nuw i8 %.pre to i1
  br label %nk_selectable_image_text.exit

nk_selectable_image_text.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.f
  %i.v = phi i1 [ %5, %bb.a ], [ %5, %bb.b ], [ %5, %bb.c ], [ %5, %bb.d ], [ %i.u, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret i1 %i.v
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_symbol_text(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = zext i1 %5 to i8
  store i8 %i.b, ptr %i.a, align 1, !tbaa !557
  %i.c = call zeroext i1 @nk_selectable_symbol_text(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i8, ptr %i.a, align 1, !tbaa !557, !range !88, !noundef !89
  %i.e = trunc nuw i8 %i.d to i1
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_select_symbol_label(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #17 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.not5.i = icmp eq ptr %2, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !56
  %.not4.i5 = icmp eq i8 %i.b, 0
  br i1 %.not4.i5, label %nk_strlen.exit, label %.lr.ph.i.preheader8

.lr.ph.i.preheader8:                              ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %2, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.c = trunc i64 %strlen to i32
  %i.d = add i32 %i.c, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader8, %.lr.ph.i.preheader, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ 0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.preheader8 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = zext i1 %4 to i8
  store i8 %i.e, ptr %i.a, align 1, !tbaa !557
  %i.f = call zeroext i1 @nk_selectable_symbol_text(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %.0.lcssa.i, i32 noundef %3, ptr noundef nonnull %i.a) ; 0 uses
  %i.g = load i8, ptr %i.a, align 1, !tbaa !557, !range !88, !noundef !89
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nounwind uwtable
define zeroext i1 @nk_slider_float(ptr nofree noundef %0, float noundef %1, ptr nofree noundef captures(address_is_null) %2, float noundef %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.nk_rect, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !415  ; 3 uses
  %.not37 = icmp eq ptr %i.c, null
  br i1 %.not37, label %bb.ai, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !416  ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  br i1 %or.cond, label %bb.d, label %bb.ai

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.i = call i32 @nk_widget(ptr noundef nonnull %5, ptr noundef nonnull %0)
  switch i32 %i.i, label %bb.e [
    i32 0, label %bb.ai
    i32 3, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !488
  %i.l = and i32 %i.k, 4096
  %.not39 = icmp eq i32 %i.l, 0
  %spec.select = select i1 %.not39, ptr %0, ptr null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ null, %bb.d ], [ %spec.select, %bb.e ] ; 13 uses
  %i.n = load float, ptr %2, align 4, !tbaa !54   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9880 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2056 ; 3 uses
  %i.r = load <2 x float>, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load <2 x float>, ptr %i.s, align 8      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2332
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2348 ; 2 uses
  %i.w = load float, ptr %i.v, align 4, !tbaa !1129 ; 2 uses
  %i.x = load <2 x float>, ptr %i.u, align 4, !tbaa !54 ; 4 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = extractelement <2 x float> %i.x, i64 1
  %i.aa = fadd <2 x float> %i.r, %i.x             ; 6 uses
  %i.ab = fmul float %i.z, 2.000000e+00
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.y, float 2.000000e+00, float %i.w)
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.ab, i64 1 ; 2 uses
  %i.af = fcmp olt <2 x float> %i.t, %i.ae
  %i.ag = select <2 x i1> %i.af, <2 x float> %i.ae, <2 x float> %i.t
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> splat (float -2.000000e+00), <2 x float> %i.ag) ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2364
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !403
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !414 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %.sroa.7.12.vec.insert.i = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2804
  %i.am = load i32, ptr %i.al, align 4, !tbaa !402
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2584
  %i.ao = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %i.p, <2 x float> %i.aa, <2 x float> %.sroa.7.12.vec.insert.i, i32 noundef %i.am, i32 noundef 0, ptr noundef nonnull readonly %i.an, ptr noundef %i.m, ptr noundef %i.ak)
  %i.ap = fsub float %i.n, %4
  %.093.i = select i1 %i.ao, float %i.ap, float %i.n ; 2 uses
  %i.aq = extractelement <2 x float> %i.ah, i64 0
  %i.ar = extractelement <2 x float> %i.aa, i64 0
  %foldExtExtBinop = fadd <2 x float> %i.aa, %i.ah
  %i.as = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.at = extractelement <2 x float> %i.ah, i64 1 ; 3 uses
  %i.au = fsub float %i.as, %i.at
  %.sroa.0.0.vec.insert5.i = insertelement <2 x float> %i.aa, float %i.au, i64 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2800
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !401
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2368
  %i.ay = call fastcc zeroext i1 @nk_do_button_symbol(ptr noundef %i.a, ptr noundef nonnull %i.p, <2 x float> %.sroa.0.0.vec.insert5.i, <2 x float> %.sroa.7.12.vec.insert.i, i32 noundef %i.aw, i32 noundef 0, ptr noundef nonnull readonly %i.ax, ptr noundef %i.m, ptr noundef %i.ak)
  %i.az = fadd float %4, %.093.i
  %.1.i = select i1 %i.ay, float %i.az, float %.093.i
  %i.ba = fadd float %i.ar, %i.at
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2340
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !1130 ; 2 uses
  %i.bd = fadd float %i.ba, %i.bc
  %.sroa.0125.0.vec.insert139.i = insertelement <2 x float> %i.aa, float %i.bd, i64 0
  %i.be = fmul float %i.bc, 2.000000e+00
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.at, float 2.000000e+00, float %i.be)
  %i.bg = fsub float %i.aq, %i.bf
  %.sroa.20.8.vec.insert.i = insertelement <2 x float> %i.ah, float %i.bg, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  %.pre.i = load float, ptr %i.v, align 4, !tbaa !1129
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bh = phi float [ %i.w, %bb.f ], [ %.pre.i, %bb.g ] ; 4 uses
  %.sroa.20.0.i = phi <2 x float> [ %i.ah, %bb.f ], [ %.sroa.20.8.vec.insert.i, %bb.g ] ; 9 uses
  %.sroa.0125.0.i = phi <2 x float> [ %i.aa, %bb.f ], [ %.sroa.0125.0.vec.insert139.i, %bb.g ] ; 9 uses
  %.2.i = phi float [ %i.n, %bb.f ], [ %.1.i, %bb.g ] ; 2 uses
  %i.bi = fcmp olt float %1, %3                   ; 2 uses
  %i.bj = select i1 %i.bi, float %3, float %1     ; 5 uses
  %i.bk = select i1 %i.bi, float %1, float %3     ; 7 uses
  %i.bl = fcmp olt float %.2.i, %i.bj
  %i.bm = select i1 %i.bl, float %.2.i, float %i.bj ; 2 uses
  %i.bn = fcmp olt float %i.bm, %i.bk
  %..i = select i1 %i.bn, float %i.bk, float %i.bm ; 6 uses
  %i.bo = fsub float %i.bj, %i.bk
  %i.bp = fdiv float %i.bo, %4
  %i.bq = fsub float %..i, %i.bk
  %i.br = fdiv float %i.bq, %4
  %.sroa.20.8.vec.extract.i = extractelement <2 x float> %.sroa.20.0.i, i64 0
  %i.bs = fdiv float %.sroa.20.8.vec.extract.i, %i.bp ; 4 uses
  %.sroa.0125.0.vec.extract141.i = extractelement <2 x float> %.sroa.0125.0.i, i64 0 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2352
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !1131 ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bh, i64 0
  %.sroa.9115.8.vec.insert.i = insertelement <2 x float> %i.bv, float %i.bu, i64 1 ; 3 uses
  %.sroa.0125.4.vec.extract.i = extractelement <2 x float> %.sroa.0125.0.i, i64 1 ; 5 uses
  %.sroa.20.12.vec.extract.i = extractelement <2 x float> %.sroa.20.0.i, i64 1 ; 2 uses
  %6 = insertelement <2 x float> %.sroa.20.0.i, float %i.bs, i64 0
  %7 = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.br, i64 0
  %8 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %6, <2 x float> %7, <2 x float> %.sroa.0125.0.i) ; 3 uses
  %9 = fneg <2 x float> %.sroa.9115.8.vec.insert.i ; 2 uses
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> splat (float 5.000000e-01), <2 x float> %8) ; 3 uses
  %i.bw = load i32, ptr %i.o, align 8, !tbaa !55
  %i.bx = and i32 %i.bw, 2
  %..i.i = or disjoint i32 %i.bx, 4               ; 4 uses
  store i32 %..i.i, ptr %i.o, align 8, !tbaa !55
  %.not67.i.i = icmp eq ptr %i.m, null
  %11 = extractelement <2 x float> %8, i64 0      ; 4 uses
  br i1 %.not67.i.i, label %nk_slider_behavior.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 268 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !389 ; 2 uses
  %12 = extractelement <2 x float> %10, i64 0     ; 3 uses
  %i.ca = fcmp ole float %12, %i.bz
  %i.cb = fadd float %i.bh, %12
  %i.cc = fcmp olt float %i.bz, %i.cb
  %or.cond.i.i.i.i = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond.i.i.i.i, label %nk_input_has_mouse_click_in_rect.exit.i.i.i, label %.thread87.i.i

nk_input_has_mouse_click_in_rect.exit.i.i.i:      ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.m, i64 260
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !388, !range !88, !noundef !89
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !390 ; 2 uses
  %13 = extractelement <2 x float> %10, i64 1     ; 2 uses
  %i.ci = fcmp ole float %13, %i.ch
  %i.cj = fadd float %i.bu, %13
  %i.ck = fcmp olt float %i.ch, %i.cj
  %or.cond16.i.i.not127.not129.i.i = select i1 %i.ci, i1 %i.ck, i1 false
  %brmerge.not.i.i = and i1 %or.cond16.i.i.not127.not129.i.i, %i.cf
  br i1 %brmerge.not.i.i, label %bb.j, label %.thread87.i.i

bb.j:                                             ; preds = %nk_input_has_mouse_click_in_rect.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.m, i64 356
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !391
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.bh, float 5.000000e-01, float %12)
  %i.co = fsub float %i.cm, %i.cn                 ; 4 uses
  store i32 34, ptr %i.o, align 8, !tbaa !55
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  %i.cq = fneg float %i.co
  %i.cr = select i1 %i.cp, float %i.cq, float %i.co ; 2 uses
  %i.cs = fcmp ult float %i.cr, %i.bs
  br i1 %i.cs, label %.thread87.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ct = fdiv float %i.cr, %i.bs
  %i.cu = fptosi float %i.ct to i32
  %i.cv = sitofp i32 %i.cu to float               ; 2 uses
  %i.cw = fcmp ogt float %i.co, 0.000000e+00
  %i.cx = fneg float %i.cv
  %.pn.i.i = select i1 %i.cw, float %i.cv, float %i.cx
  %i.cy = fmul float %4, %.pn.i.i
  %i.cz = fadd float %..i, %i.cy                  ; 2 uses
  %i.da = fcmp olt float %i.cz, %i.bj
  %i.db = select i1 %i.da, float %i.cz, float %i.bj ; 2 uses
  %i.dc = fcmp olt float %i.db, %i.bk
  %i.dd = select i1 %i.dc, float %i.bk, float %i.db ; 2 uses
  %i.de = fsub float %i.dd, %i.bk
  %i.df = fdiv float %i.de, %4
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.df, float %.sroa.0125.0.vec.extract141.i) ; 2 uses
  store float %i.dg, ptr %i.by, align 4, !tbaa !389
  br label %.thread87.i.i

.thread87.i.i:                                    ; preds = %bb.k, %bb.j, %nk_input_has_mouse_click_in_rect.exit.i.i.i, %bb.i
  %.sroa.0.0.i = phi float [ %11, %bb.j ], [ %i.dg, %bb.k ], [ %11, %nk_input_has_mouse_click_in_rect.exit.i.i.i ], [ %11, %bb.i ] ; 3 uses
  %i.dh = phi i32 [ 34, %bb.j ], [ 34, %bb.k ], [ %..i.i, %nk_input_has_mouse_click_in_rect.exit.i.i.i ], [ %..i.i, %bb.i ] ; 2 uses
  %.189.i.i = phi float [ %..i, %bb.j ], [ %i.dd, %bb.k ], [ %..i, %nk_input_has_mouse_click_in_rect.exit.i.i.i ], [ %..i, %bb.i ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.m, i64 356
  %i.dj = load float, ptr %i.di, align 4, !tbaa !391 ; 2 uses
  %i.dk = fcmp ole float %.sroa.0125.0.vec.extract141.i, %i.dj
  %foldExtExtBinop60 = fadd <2 x float> %.sroa.20.0.i, %.sroa.0125.0.i
  %i.dl = extractelement <2 x float> %foldExtExtBinop60, i64 0 ; 3 uses
  %i.dm = fcmp olt float %i.dj, %i.dl
  %or.cond.i.i.i = select i1 %i.dk, i1 %i.dm, i1 false
  br i1 %or.cond.i.i.i, label %bb.l, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

bb.l:                                             ; preds = %.thread87.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %i.do = load float, ptr %i.dn, align 4, !tbaa !392 ; 2 uses
  %i.dp = fcmp ole float %.sroa.0125.4.vec.extract.i, %i.do
  %i.dq = fadd float %.sroa.20.12.vec.extract.i, %.sroa.0125.4.vec.extract.i ; 2 uses
  %i.dr = fcmp olt float %i.do, %i.dq
  %or.cond113.i.i = select i1 %i.dp, i1 %i.dr, i1 false
  br i1 %or.cond113.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.thread123.i.i, label %nk_input_is_mouse_hovering_rect.exit.thread.i.i

nk_input_is_mouse_hovering_rect.exit.thread.thread123.i.i: ; preds = %bb.l
  store i32 18, ptr %i.o, align 8, !tbaa !55
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 364
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !393 ; 3 uses
  %i.du = fcmp ole float %.sroa.0125.0.vec.extract141.i, %i.dt
  %i.dv = fcmp olt float %i.dt, %i.dl
  %or.cond.i74.i.i = select i1 %i.du, i1 %i.dv, i1 false
  br i1 %or.cond.i74.i.i, label %bb.m, label %nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i

nk_input_is_mouse_hovering_rect.exit.thread.i.i:  ; preds = %bb.l, %.thread87.i.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 364
  %.pre.i.i = load float, ptr %.phi.trans.insert.i.i, align 4, !tbaa !393
  %i.dw = or i32 %i.dh, 64
  br label %.thread97.i.i

bb.m:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.thread123.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !394 ; 2 uses
  %i.dz = fcmp ole float %.sroa.0125.4.vec.extract.i, %i.dy
  %i.ea = fcmp olt float %i.dy, %i.dq
  %or.cond115.i.i = select i1 %i.dz, i1 %i.ea, i1 false
  br i1 %or.cond115.i.i, label %.thread97.i.i, label %nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i

.thread97.i.i:                                    ; preds = %bb.m, %nk_input_is_mouse_hovering_rect.exit.thread.i.i
  %i.eb = phi i32 [ %i.dh, %nk_input_is_mouse_hovering_rect.exit.thread.i.i ], [ 18, %bb.m ] ; 2 uses
  %i.ec = phi i32 [ %i.dw, %nk_input_is_mouse_hovering_rect.exit.thread.i.i ], [ 82, %bb.m ]
  %i.ed = phi float [ %.pre.i.i, %nk_input_is_mouse_hovering_rect.exit.thread.i.i ], [ %i.dt, %bb.m ] ; 2 uses
  %i.ee = fcmp ole float %.sroa.0125.0.vec.extract141.i, %i.ed
  %i.ef = fcmp olt float %i.ed, %i.dl
  %or.cond.i81.i.i = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %or.cond.i81.i.i, label %bb.n, label %nk_slider_behavior.exit.i

bb.n:                                             ; preds = %.thread97.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 368
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !394 ; 2 uses
  %i.ei = fcmp ole float %.sroa.0125.4.vec.extract.i, %i.eh
  %i.ej = fadd float %.sroa.20.12.vec.extract.i, %.sroa.0125.4.vec.extract.i
  %i.ek = fcmp olt float %i.eh, %i.ej
  %or.cond117.i.i = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %or.cond117.i.i, label %nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i, label %nk_slider_behavior.exit.i

nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i: ; preds = %bb.n, %bb.m, %nk_input_is_mouse_hovering_rect.exit.thread.thread123.i.i
  %.sink.i.i = phi i32 [ 26, %nk_input_is_mouse_hovering_rect.exit.thread.thread123.i.i ], [ 26, %bb.m ], [ %i.ec, %bb.n ] ; 2 uses
  store i32 %.sink.i.i, ptr %i.o, align 8, !tbaa !55
  br label %nk_slider_behavior.exit.i

nk_slider_behavior.exit.i:                        ; preds = %nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i, %bb.n, %.thread97.i.i, %bb.h
  %i.el = phi i32 [ %..i.i, %bb.h ], [ %.sink.i.i, %nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i ], [ %i.eb, %bb.n ], [ %i.eb, %.thread97.i.i ]
  %.sroa.0.1.i = phi float [ %11, %bb.h ], [ %.sroa.0.0.i, %nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i ], [ %.sroa.0.0.i, %bb.n ], [ %.sroa.0.0.i, %.thread97.i.i ]
  %.19095101.i.i = phi float [ %..i, %bb.h ], [ %.189.i.i, %nk_input_is_mouse_prev_hovering_rect.exit85.thread.sink.split.i.i ], [ %.189.i.i, %bb.n ], [ %.189.i.i, %.thread97.i.i ] ; 2 uses
  %14 = extractelement <2 x float> %9, i64 0
  %15 = tail call float @llvm.fmuladd.f32(float %14, float 5.000000e-01, float %.sroa.0.1.i) ; 2 uses
  %.sroa.0108.0.vec.insert113.i = insertelement <2 x float> %10, float %15, i64 0 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 2816
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1132 ; 2 uses
  %.not104.i = icmp eq ptr %i.en, null
  br i1 %.not104.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %nk_slider_behavior.exit.i
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 2808
  %i.ep = load ptr, ptr %i.eo, align 8
  tail call void %i.en(ptr noundef nonnull %i.p, ptr %i.ep) #50, !inline_history !1128
  %.pre184.i = load i32, ptr %i.o, align 8, !tbaa !55
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %nk_slider_behavior.exit.i
  %i.eq = phi i32 [ %.pre184.i, %bb.o ], [ %i.el, %nk_slider_behavior.exit.i ] ; 2 uses
  %i.er = and i32 %i.eq, 32
  %.not.i.i = icmp eq i32 %i.er, 0
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 2136
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.et = and i32 %i.eq, 16
  %.not76.i.i = icmp eq i32 %i.et, 0
  br i1 %.not76.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 2096
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.sink190.i.i = phi i64 [ 128, %bb.s ], [ 132, %bb.q ], [ 124, %bb.r ]
  %.sink.i106.i = phi i64 [ 184, %bb.s ], [ 224, %bb.q ], [ 144, %bb.r ]
  %.0.i.i = phi ptr [ %i.eu, %bb.s ], [ %i.es, %bb.q ], [ %i.q, %bb.r ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink190.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sink.i106.i ; 2 uses
  %.sroa.010.0.i.i = load i32, ptr %i.ev, align 4 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !1133 ; 3 uses
  %i.ez = fneg float %i.ey
  %16 = extractelement <2 x float> %8, i64 1
  %i.fa = tail call float @llvm.fmuladd.f32(float %i.ez, float 5.000000e-01, float %16)
  %.sroa.017.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0125.0.i, float %i.fa, i64 1 ; 2 uses
  %.sroa.8.12.vec.insert.i.i = insertelement <2 x float> %.sroa.20.0.i, float %i.ey, i64 1
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.bh, float 5.000000e-01, float %15)
  %i.fc = fsub float %i.fb, %.sroa.0125.0.vec.extract141.i
  %.sroa.5.8.vec.insert.i.i = insertelement <2 x float> poison, float %i.fc, i64 0
  %.sroa.5.12.vec.insert.i.i = insertelement <2 x float> %.sroa.5.8.vec.insert.i.i, float %i.ey, i64 1
  %i.fd = load i32, ptr %.0.i.i, align 8, !tbaa !413
  switch i32 %i.fd, label %bb.z [
    i32 1, label %nk_rgb_factor.exit.i.i
    i32 2, label %nk_rgb_factor.exit88.i.i
    i32 0, label %bb.u
  ]

nk_rgb_factor.exit.i.i:                           ; preds = %bb.t
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2356
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !1134 ; 2 uses
  %i.fh = fcmp oeq float %i.fg, 1.000000e+00
  %i.fi = fmul float %i.fg, 2.550000e+02
  %i.fj = fptoui float %i.fi to i8
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nuw nsw i32 %i.fk, 65793
  %i.fm = or disjoint i32 %i.fl, -16777216
  %.sroa.011.0.insert.insert.i.i.i = select i1 %i.fh, i32 -1, i32 %i.fm
  tail call void @nk_draw_image(ptr noundef nonnull %i.p, <2 x float> %.sroa.0125.0.i, <2 x float> %.sroa.20.0.i, ptr noundef nonnull %i.fe, i32 %.sroa.011.0.insert.insert.i.i.i)
  br label %bb.z

nk_rgb_factor.exit88.i.i:                         ; preds = %bb.t
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 2356
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !1134 ; 2 uses
  %i.fq = fcmp oeq float %i.fp, 1.000000e+00
  %i.fr = fmul float %i.fp, 2.550000e+02
  %i.fs = fptoui float %i.fr to i8
  %i.ft = zext i8 %i.fs to i32
  %i.fu = mul nuw nsw i32 %i.ft, 65793
  %i.fv = or disjoint i32 %i.fu, -16777216
  %.sroa.011.0.insert.insert.i87.i.i = select i1 %i.fq, i32 -1, i32 %i.fv
  tail call void @nk_draw_nine_slice(ptr noundef nonnull %i.p, <2 x float> %.sroa.0125.0.i, <2 x float> %.sroa.20.0.i, ptr noundef nonnull %i.fn, i32 %.sroa.011.0.insert.insert.i87.i.i)
  br label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2324 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !1135
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !1134 ; 4 uses
  %i.gb = load i32, ptr %i.fy, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i.i.i = lshr i32 %i.gb, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i.i.i = lshr i32 %i.gb, 16 ; 2 uses
  %i.gc = fcmp oeq float %i.ga, 1.000000e+00
  br i1 %i.gc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.7.0.extract.trunc.i.i.i = trunc i32 %.sroa.7.0.extract.shift.i.i.i to i8
  %.sroa.5.0.extract.trunc.i.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i.i to i8
  %.sroa.0.0.extract.trunc.i.i.i = trunc i32 %i.gb to i8
  br label %nk_rgb_factor.exit100.i.i

bb.w:                                             ; preds = %bb.u
  %i.gd = and i32 %i.gb, 255
  %i.ge = uitofp nneg i32 %i.gd to float
  %i.gf = fmul float %i.ga, %i.ge
  %i.gg = fptoui float %i.gf to i8
  %i.gh = and i32 %.sroa.5.0.extract.shift.i.i.i, 255
  %i.gi = uitofp nneg i32 %i.gh to float
  %i.gj = fmul float %i.ga, %i.gi
  %i.gk = fptoui float %i.gj to i8
  %i.gl = and i32 %.sroa.7.0.extract.shift.i.i.i, 255
  %i.gm = uitofp nneg i32 %i.gl to float
  %i.gn = fmul float %i.ga, %i.gm
  %i.go = fptoui float %i.gn to i8
  br label %nk_rgb_factor.exit100.i.i

nk_rgb_factor.exit100.i.i:                        ; preds = %bb.w, %bb.v
  %.sroa.3.0.i89.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i.i.i, %bb.v ], [ %i.gk, %bb.w ]
  %.sroa.011.0.i90.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i.i.i, %bb.v ], [ %i.gg, %bb.w ]
  %.sroa.512.0.i91.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i.i.i, %bb.v ], [ %i.go, %bb.w ]
  %.sroa.9.0.extract.shift.i.i.i = and i32 %i.gb, -16777216
  %.sroa.512.0.insert.ext.i92.i.i = zext i8 %.sroa.512.0.i91.i.i to i32
  %.sroa.512.0.insert.shift.i93.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i92.i.i, 16
  %.sroa.512.0.insert.insert.i94.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i93.i.i, %.sroa.9.0.extract.shift.i.i.i
  %.sroa.3.0.insert.ext.i95.i.i = zext i8 %.sroa.3.0.i89.i.i to i32
  %.sroa.3.0.insert.shift.i96.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i95.i.i, 8
  %.sroa.3.0.insert.insert.i97.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i94.i.i, %.sroa.3.0.insert.shift.i96.i.i
  %.sroa.011.0.insert.ext.i98.i.i = zext i8 %.sroa.011.0.i90.i.i to i32
  %.sroa.011.0.insert.insert.i99.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i97.i.i, %.sroa.011.0.insert.ext.i98.i.i
  tail call void @nk_fill_rect(ptr noundef nonnull %i.p, <2 x float> %.sroa.0125.0.i, <2 x float> %.sroa.20.0.i, float noundef %i.fx, i32 %.sroa.011.0.insert.insert.i99.i.i)
  %i.gp = load float, ptr %i.fw, align 4, !tbaa !1135
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.gr = load float, ptr %i.gq, align 8, !tbaa !1136
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 2176
  %i.gt = load float, ptr %i.fz, align 4, !tbaa !1134 ; 4 uses
  %i.gu = load i32, ptr %i.gs, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i101.i.i = lshr i32 %i.gu, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i102.i.i = lshr i32 %i.gu, 16 ; 2 uses
  %i.gv = fcmp oeq float %i.gt, 1.000000e+00
  br i1 %i.gv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %nk_rgb_factor.exit100.i.i
  %.sroa.7.0.extract.trunc.i115.i.i = trunc i32 %.sroa.7.0.extract.shift.i102.i.i to i8
  %.sroa.5.0.extract.trunc.i116.i.i = trunc i32 %.sroa.5.0.extract.shift.i101.i.i to i8
  %.sroa.0.0.extract.trunc.i117.i.i = trunc i32 %i.gu to i8
  br label %nk_rgb_factor.exit118.i.i

bb.y:                                             ; preds = %nk_rgb_factor.exit100.i.i
  %i.gw = and i32 %i.gu, 255
  %i.gx = uitofp nneg i32 %i.gw to float
  %i.gy = fmul float %i.gt, %i.gx
  %i.gz = fptoui float %i.gy to i8
  %i.ha = and i32 %.sroa.5.0.extract.shift.i101.i.i, 255
  %i.hb = uitofp nneg i32 %i.ha to float
  %i.hc = fmul float %i.gt, %i.hb
  %i.hd = fptoui float %i.hc to i8
  %i.he = and i32 %.sroa.7.0.extract.shift.i102.i.i, 255
  %i.hf = uitofp nneg i32 %i.he to float
  %i.hg = fmul float %i.gt, %i.hf
  %i.hh = fptoui float %i.hg to i8
  br label %nk_rgb_factor.exit118.i.i

nk_rgb_factor.exit118.i.i:                        ; preds = %bb.y, %bb.x
  %.sroa.3.0.i103.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i116.i.i, %bb.x ], [ %i.hd, %bb.y ]
  %.sroa.011.0.i104.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i117.i.i, %bb.x ], [ %i.gz, %bb.y ]
  %.sroa.512.0.i105.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i115.i.i, %bb.x ], [ %i.hh, %bb.y ]
  %.sroa.9.0.extract.shift.i106.i.i = and i32 %i.gu, -16777216
  %.sroa.512.0.insert.ext.i107.i.i = zext i8 %.sroa.512.0.i105.i.i to i32
  %.sroa.512.0.insert.shift.i108.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i107.i.i, 16
  %.sroa.512.0.insert.insert.i109.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i108.i.i, %.sroa.9.0.extract.shift.i106.i.i
  %.sroa.3.0.insert.ext.i110.i.i = zext i8 %.sroa.3.0.i103.i.i to i32
  %.sroa.3.0.insert.shift.i111.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i110.i.i, 8
  %.sroa.3.0.insert.insert.i112.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i109.i.i, %.sroa.3.0.insert.shift.i111.i.i
  %.sroa.011.0.insert.ext.i113.i.i = zext i8 %.sroa.011.0.i104.i.i to i32
  %.sroa.011.0.insert.insert.i114.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i112.i.i, %.sroa.011.0.insert.ext.i113.i.i
  tail call void @nk_stroke_rect(ptr noundef nonnull %i.p, <2 x float> %.sroa.0125.0.i, <2 x float> %.sroa.20.0.i, float noundef %i.gp, float noundef %i.gr, i32 %.sroa.011.0.insert.insert.i114.i.i)
  br label %bb.z

bb.z:                                             ; preds = %nk_rgb_factor.exit118.i.i, %nk_rgb_factor.exit88.i.i, %nk_rgb_factor.exit.i.i, %bb.t
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 2324 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !1135
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 3 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !1134 ; 4 uses
  %.sroa.5.0.extract.shift.i119.i.i = lshr i32 %.sroa.010.0.i.i, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i120.i.i = lshr i32 %.sroa.010.0.i.i, 16 ; 2 uses
  %i.hm = fcmp oeq float %i.hl, 1.000000e+00
  br i1 %i.hm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.7.0.extract.trunc.i133.i.i = trunc i32 %.sroa.7.0.extract.shift.i120.i.i to i8
  %.sroa.5.0.extract.trunc.i134.i.i = trunc i32 %.sroa.5.0.extract.shift.i119.i.i to i8
  %.sroa.0.0.extract.trunc.i135.i.i = trunc i32 %.sroa.010.0.i.i to i8
  br label %nk_rgb_factor.exit136.i.i

bb.ab:                                            ; preds = %bb.z
  %i.hn = and i32 %.sroa.010.0.i.i, 255
  %i.ho = uitofp nneg i32 %i.hn to float
  %i.hp = fmul float %i.hl, %i.ho
  %i.hq = fptoui float %i.hp to i8
  %i.hr = and i32 %.sroa.5.0.extract.shift.i119.i.i, 255
  %i.hs = uitofp nneg i32 %i.hr to float
  %i.ht = fmul float %i.hl, %i.hs
  %i.hu = fptoui float %i.ht to i8
  %i.hv = and i32 %.sroa.7.0.extract.shift.i120.i.i, 255
  %i.hw = uitofp nneg i32 %i.hv to float
  %i.hx = fmul float %i.hl, %i.hw
  %i.hy = fptoui float %i.hx to i8
  br label %nk_rgb_factor.exit136.i.i

nk_rgb_factor.exit136.i.i:                        ; preds = %bb.ab, %bb.aa
  %.sroa.3.0.i121.i.i = phi i8 [ %.sroa.5.0.extract.trunc.i134.i.i, %bb.aa ], [ %i.hu, %bb.ab ]
  %.sroa.011.0.i122.i.i = phi i8 [ %.sroa.0.0.extract.trunc.i135.i.i, %bb.aa ], [ %i.hq, %bb.ab ]
  %.sroa.512.0.i123.i.i = phi i8 [ %.sroa.7.0.extract.trunc.i133.i.i, %bb.aa ], [ %i.hy, %bb.ab ]
  %.sroa.9.0.extract.shift.i124.i.i = and i32 %.sroa.010.0.i.i, -16777216
  %.sroa.512.0.insert.ext.i125.i.i = zext i8 %.sroa.512.0.i123.i.i to i32
  %.sroa.512.0.insert.shift.i126.i.i = shl nuw nsw i32 %.sroa.512.0.insert.ext.i125.i.i, 16
  %.sroa.512.0.insert.insert.i127.i.i = or disjoint i32 %.sroa.512.0.insert.shift.i126.i.i, %.sroa.9.0.extract.shift.i124.i.i
  %.sroa.3.0.insert.ext.i128.i.i = zext i8 %.sroa.3.0.i121.i.i to i32
  %.sroa.3.0.insert.shift.i129.i.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i128.i.i, 8
  %.sroa.3.0.insert.insert.i130.i.i = or disjoint i32 %.sroa.512.0.insert.insert.i127.i.i, %.sroa.3.0.insert.shift.i129.i.i
  %.sroa.011.0.insert.ext.i131.i.i = zext i8 %.sroa.011.0.i122.i.i to i32
  %.sroa.011.0.insert.insert.i132.i.i = or disjoint i32 %.sroa.3.0.insert.insert.i130.i.i, %.sroa.011.0.insert.ext.i131.i.i
  tail call void @nk_fill_rect(ptr noundef nonnull %i.p, <2 x float> %.sroa.017.4.vec.insert.i.i, <2 x float> %.sroa.8.12.vec.insert.i.i, float noundef %i.hj, i32 %.sroa.011.0.insert.insert.i132.i.i)
  %i.hz = load float, ptr %i.hi, align 4, !tbaa !1135
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.ib = load float, ptr %i.hk, align 4, !tbaa !1134 ; 4 uses
  %i.ic = load i32, ptr %i.ia, align 8            ; 5 uses
  %.sroa.5.0.extract.shift.i137.i.i = lshr i32 %i.ic, 8 ; 2 uses
  %.sroa.7.0.extract.shift.i138.i.i = lshr i32 %i.ic, 16 ; 2 uses
  %i.id = fcmp oeq float %i.ib, 1.000000e+00
  br i1 %i.id, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %nk_rgb_factor.exit136.i.i
  %.sroa.7.0.extract.trunc.i151.i.i = trunc i32 %.sroa.7.0.extract.shift.i138.i.i to i8
  %.sroa.5.0.extract.trunc.i152.i.i = trunc i32 %.sroa.5.0.extract.shift.i137.i.i to i8
  %.sroa.0.0.extract.trunc.i153.i.i = trunc i32 %i.ic to i8
  br label %nk_rgb_factor.exit154.i.i

bb.ad:                                            ; preds = %nk_rgb_factor.exit136.i.i
  %i.ie = and i32 %i.ic, 255
  %i.if = uitofp nneg i32 %i.ie to float
  %i.ig = fmul float %i.ib, %i.if
  %i.ih = fptoui float %i.ig to i8
  %i.ii = and i32 %.sroa.5.0.extract.shift.i137.i.i, 255
  %i.ij = uitofp nneg i32 %i.ii to float
end_hunk_0
