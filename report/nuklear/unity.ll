Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_list_path_arc_to:bb.a
  %or.cond = or i1 %.not, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fsub float %4, %3
  %i.c = uitofp i32 %5 to float
  %i.d = fdiv float %i.b, %i.c                    ; 15 uses
  %i.e = tail call float @llvm.fmuladd.f32(float %i.d, float f0x3910F359, float f0xBB473A13)
  %i.f = tail call float @llvm.fmuladd.f32(float %i.d, float %i.e, float f0x3CAA6A57)
  %i.g = tail call float @llvm.fmuladd.f32(float %i.d, float %i.f, float f0xBCDB0412)
  %i.h = tail call float @llvm.fmuladd.f32(float %i.d, float %i.g, float f0xBE0D6486)
  %i.i = tail call float @llvm.fmuladd.f32(float %i.d, float %i.h, float f0xBC46B2E5)
  %i.j = tail call float @llvm.fmuladd.f32(float %i.d, float %i.i, float f0x3F801C6E)
  %i.k = tail call float @llvm.fmuladd.f32(float %i.d, float %i.j, float f0x0C780258) ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.d, float f0xB79D821B, float f0x39F77236)
  %i.m = tail call float @llvm.fmuladd.f32(float %i.d, float %i.l, float f0xBB7C6287)
  %i.n = tail call float @llvm.fmuladd.f32(float %i.d, float %i.m, float f0x3BF19642)
  %i.o = tail call float @llvm.fmuladd.f32(float %i.d, float %i.n, float f0x3CEAD9F6)
  %i.p = tail call float @llvm.fmuladd.f32(float %i.d, float %i.o, float f0x3C540BB7)
  %i.q = tail call float @llvm.fmuladd.f32(float %i.d, float %i.p, float f0xBF01A908)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.d, float %i.q, float f0x3AA47B71)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.d, float %i.r, float 9.999600e-01)
  %i.t = insertelement <2 x float> <float poison, float -0.000000e+00>, float %3, i64 0 ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> <float f0xB79D821B, float 0.000000e+00>, <2 x float> <float f0x39F77236, float f0x3910F359>)
  %i.v = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.u, <2 x float> <float f0xBB7C6287, float f0xBB473A13>)
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.w, <2 x float> <float f0x3BF19642, float f0x3CAA6A57>)
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.x, <2 x float> <float f0x3CEAD9F6, float f0xBCDB0412>)
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.y, <2 x float> <float f0x3C540BB7, float f0xBE0D6486>)
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.z, <2 x float> <float f0xBF01A908, float f0xBC46B2E5>)
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.aa, <2 x float> <float f0x3AA47B71, float f0x3F801C6E>)
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.ab, <2 x float> <float 9.999600e-01, float f0x0C780258>)
  %i.ad = insertelement <2 x float> poison, float %2, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x float> %i.ae, %i.ac
  %i.ag = fneg float %i.k
  %i.ah = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ag, i64 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.036 = phi i32 [ 0, %bb.b ], [ %i.aq, %bb.c ]
  %i.al = phi <2 x float> [ %i.af, %bb.b ], [ %i.ap, %bb.c ] ; 3 uses
  %i.am = fadd <2 x float> %1, %i.al
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.am)
  %i.an = fmul <2 x float> %i.ak, %i.al
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ai, <2 x float> %i.ao)
  %i.aq = add i32 %.036, 1                        ; 2 uses
  %.not33 = icmp ugt i32 %i.aq, %5
  br i1 %.not33, label %.loopexit, label %bb.c, !llvm.loop !12

.loopexit:                                        ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_rect_to(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, float noundef %3) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_draw_list_path_arc_to_fast.exit157, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = fsub <2 x float> %2, %1                  ; 5 uses
  %i.b = extractelement <2 x float> %i.a, i64 0
  %i.c = tail call float @llvm.fabs.f32(float %i.b)
  %i.d = fcmp olt float %3, %i.c
  %i.e = fcmp uge <2 x float> %i.a, zeroinitializer
  %i.f = extractelement <2 x float> %i.a, i64 1
  %i.g = tail call float @llvm.fabs.f32(float %i.f)
  %i.h = fneg <2 x float> %i.a
  %i.i = select <2 x i1> %i.e, <2 x float> %i.a, <2 x float> %i.h ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = select i1 %i.d, float %3, float %i.j     ; 2 uses
  %i.l = fcmp olt float %i.k, %i.g
  %i.m = extractelement <2 x float> %i.i, i64 1
  %i.n = select i1 %i.l, float %i.k, float %i.m   ; 2 uses
  %i.o = fcmp oeq float %i.n, 0.000000e+00
  br i1 %i.o, label %bb.c, label %.preheader.i

bb.c:                                             ; preds = %bb.b
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 0, i32 3>
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %.sroa.0.4.vec.insert.i)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %2)
  %.sroa.0.4.vec.insert.i113 = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  br label %nk_draw_list_path_arc_to_fast.exit157.sink.split

.preheader.i:                                     ; preds = %bb.b
  %i.p = insertelement <2 x float> poison, float %i.n, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 18 uses
  %i.r = fadd <2 x float> %1, %i.q                ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load <2 x float>, ptr %i.t, align 8, !tbaa !54
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load <2 x float>, ptr %i.w, align 8, !tbaa !54
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aa = load <2 x float>, ptr %i.z, align 8, !tbaa !54
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !54
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.q, <2 x float> %i.r)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ae)
  %i.af = fsub <2 x float> %2, %i.q               ; 6 uses
  %i.ag = load <2 x float>, ptr %i.ac, align 8, !tbaa !54
  %i.ah = shufflevector <2 x float> %i.af, <2 x float> %i.r, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load <2 x float>, ptr %i.aj, align 8, !tbaa !54
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.al)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.an = load <2 x float>, ptr %i.am, align 8, !tbaa !54
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ao)
  %i.ap = load <2 x float>, ptr %i.s, align 8, !tbaa !54
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.q, <2 x float> %i.ah)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.aq)
  %i.ar = load <2 x float>, ptr %i.s, align 8, !tbaa !54
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ar, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load <2 x float>, ptr %i.at, align 8, !tbaa !54
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load <2 x float>, ptr %i.aw, align 8, !tbaa !54
  %i.ay = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ax, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load <2 x float>, ptr %i.az, align 8, !tbaa !54
  %i.bb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> %i.q, <2 x float> %i.af)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.bb)
  %i.bc = load <2 x float>, ptr %i.az, align 8, !tbaa !54
  %i.bd = shufflevector <2 x float> %i.r, <2 x float> %i.af, <2 x i32> <i32 0, i32 3> ; 4 uses
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.q, <2 x float> %i.bd)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load <2 x float>, ptr %i.bf, align 8, !tbaa !54
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.q, <2 x float> %i.bd)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load <2 x float>, ptr %i.bi, align 8, !tbaa !54
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bj, <2 x float> %i.q, <2 x float> %i.bd)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.bk)
  %i.bl = load <2 x float>, ptr %i.t, align 8, !tbaa !54
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.q, <2 x float> %i.bd)
  br label %nk_draw_list_path_arc_to_fast.exit157.sink.split

nk_draw_list_path_arc_to_fast.exit157.sink.split: ; preds = %bb.c, %.preheader.i
  %.sroa.0.4.vec.insert.i.i153.3.sink = phi <2 x float> [ %i.bm, %.preheader.i ], [ %.sroa.0.4.vec.insert.i113, %bb.c ]
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %.sroa.0.4.vec.insert.i.i153.3.sink)
  br label %nk_draw_list_path_arc_to_fast.exit157

nk_draw_list_path_arc_to_fast.exit157:            ; preds = %nk_draw_list_path_arc_to_fast.exit157.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_curve_to(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 noundef %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !162  ; 2 uses
  %.not40 = icmp eq i32 %i.b, 0
  br i1 %.not40, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @llvm.umax.i32(i32 %4, i32 1) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !151, !nonnull !89, !noundef !89
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.i = load i32, ptr %i.h, align 4, !tbaa !170
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.j
  %i.l = add i32 %i.b, -1
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.n, align 4
  %i.o = uitofp i32 %i.c to float
  %i.p = fdiv nnan float 1.000000e+00, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.042 = phi i32 [ 1, %bb.c ], [ %i.aa, %bb.d ]  ; 2 uses
  %i.q = uitofp i32 %.042 to float
  %i.r = fmul float %i.p, %i.q                    ; 7 uses
  %i.s = fsub float 1.000000e+00, %i.r            ; 5 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = fmul float %i.s, 3.000000e+00            ; 2 uses
  %i.v = fmul float %i.s, %i.u
  %i.w = fmul float %i.r, %i.u
  %i.x = fmul float %i.r, %i.r
  %5 = fmul float %i.r, %i.v
  %6 = fmul float %i.s, %i.t
  %7 = fmul float %i.r, %i.w
  %8 = fmul float %i.r, %i.x
  %9 = insertelement <2 x float> poison, float %5, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %1, %10
  %12 = insertelement <2 x float> poison, float %6, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %.sroa.0.0.copyload.i, <2 x float> %11)
  %15 = insertelement <2 x float> poison, float %7, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %2, <2 x float> %14)
  %18 = insertelement <2 x float> poison, float %8, i64 0
  %i.y = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %3, <2 x float> %17)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.z)
  %i.aa = add i32 %.042, 1                        ; 2 uses
  %.not41 = icmp ugt i32 %i.aa, %i.c
  br i1 %.not41, label %.loopexit, label %bb.d, !llvm.loop !13

.loopexit:                                        ; preds = %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_fill(ptr nofree noundef captures(address_is_null) %0, i32 %1) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %0, ptr noundef %.0.i, i32 noundef %i.f, i32 %1, i32 noundef %i.h)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !151  ; 6 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %nk_draw_list_path_clear.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i = sub i64 %i.m, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !76
  %i.p = add i64 %.neg.i.i, %i.o
  store i64 %i.p, ptr %i.n, align 8, !tbaa !76
  %i.q = load i8, ptr %i.i, align 8, !tbaa !86, !range !88, !noundef !89
  %i.r = trunc nuw i8 %i.q to i1
  %spec.select.i.i = select i1 %i.r, i64 %i.m, i64 0
  store i64 %spec.select.i.i, ptr %i.j, align 8, !tbaa !77
  store i8 0, ptr %i.i, align 8, !tbaa !86
  br label %nk_draw_list_path_clear.exit

nk_draw_list_path_clear.exit:                     ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.e, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.s, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_draw_list_path_clear.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_path_stroke(ptr nofree noundef captures(address_is_null) %0, i32 %1, i32 noundef %2, float noundef %3) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !151  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.h = load i32, ptr %i.g, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i, i32 noundef %i.f, i32 %1, i32 noundef %2, float noundef %3, i32 noundef %i.h)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !151  ; 6 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %nk_draw_list_path_clear.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i = sub i64 %i.m, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !76
  %i.p = add i64 %.neg.i.i, %i.o
  store i64 %i.p, ptr %i.n, align 8, !tbaa !76
  %i.q = load i8, ptr %i.i, align 8, !tbaa !86, !range !88, !noundef !89
  %i.r = trunc nuw i8 %i.q to i1
  %spec.select.i.i = select i1 %i.r, i64 %i.m, i64 0
  store i64 %spec.select.i.i, ptr %i.j, align 8, !tbaa !77
  store i8 0, ptr %i.i, align 8, !tbaa !86
  br label %nk_draw_list_path_clear.exit

nk_draw_list_path_clear.exit:                     ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.e, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.s, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_draw_list_path_clear.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_line(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, i32 %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %3, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !156
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = fadd <2 x float> %1, splat (float -5.000000e-01)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.f)
  %i.g = fadd <2 x float> %2, splat (float -5.000000e-01)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink = phi <2 x float> [ %2, %bb.c ], [ %i.g, %bb.d ]
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %.sink)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi ptr [ %i.k, %bb.f ], [ null, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.o = load i32, ptr %i.n, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.m, i32 %3, i32 noundef 0, float noundef %4, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i.i = sub i64 %i.t, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 96 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !76
  %i.w = add i64 %.neg.i.i.i, %i.v
  store i64 %i.w, ptr %i.u, align 8, !tbaa !76
  %i.x = load i8, ptr %i.p, align 8, !tbaa !86, !range !88, !noundef !89
  %i.y = trunc nuw i8 %i.x to i1
  %spec.select.i.i.i = select i1 %i.y, i64 %i.t, i64 0
  store i64 %spec.select.i.i.i, ptr %i.q, align 8, !tbaa !77
  store i8 0, ptr %i.p, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.g, %bb.h
  store i32 0, ptr %i.l, align 8, !tbaa !162
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_fill_rect(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, i32 %3, float noundef %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %3, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
end_hunk_0
begin_hunk_1_@nk_draw_list_fill_circle:bb.a
  %.036.i = phi i32 [ 0, %bb.c ], [ %i.ak, %bb.d ]
  %i.af = phi <2 x float> [ %i.z, %bb.c ], [ %i.aj, %bb.d ] ; 3 uses
  %i.ag = fadd <2 x float> %1, %i.af
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ag)
  %i.ah = fmul <2 x float> %i.ae, %i.af
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ac, <2 x float> %i.ai)
  %i.ak = add i32 %.036.i, 1                      ; 2 uses
  %.not33.i = icmp ugt i32 %i.ak, %4
  br i1 %.not33.i, label %nk_draw_list_path_arc_to.exit, label %bb.d, !llvm.loop !12

nk_draw_list_path_arc_to.exit:                    ; preds = %bb.d, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_path_arc_to.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_draw_list_path_arc_to.exit
  %.0.i.i = phi ptr [ %i.ao, %bb.e ], [ null, %nk_draw_list_path_arc_to.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !162
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.aq, i32 %3, i32 noundef %i.as)
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_fill.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i = sub i64 %i.ax, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !76
  %i.ba = add i64 %.neg.i.i.i, %i.az
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !76
  %i.bb = load i8, ptr %i.at, align 8, !tbaa !86, !range !88, !noundef !89
  %i.bc = trunc nuw i8 %i.bb to i1
  %spec.select.i.i.i = select i1 %i.bc, i64 %i.ax, i64 0
  store i64 %spec.select.i.i.i, ptr %i.au, align 8, !tbaa !77
  store i8 0, ptr %i.at, align 8, !tbaa !86
  br label %nk_draw_list_path_fill.exit

nk_draw_list_path_fill.exit:                      ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.ap, align 8, !tbaa !162
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.bd, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %nk_draw_list_path_fill.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_circle(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, float noundef %2, i32 %3, i32 noundef %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %3, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp oeq float %2, 0.000000e+00
  br i1 %i.c, label %nk_draw_list_path_arc_to.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = uitofp i32 %4 to float                   ; 3 uses
  %i.e = fadd nnan float %i.d, -1.000000e+00
  %i.f = fmul nnan float %i.e, f0x40C90FDB
  %i.g = fdiv float %i.f, %i.d
  %i.h = fdiv float %i.g, %i.d                    ; 15 uses
  %i.i = tail call float @llvm.fmuladd.f32(float %i.h, float f0x3910F359, float f0xBB473A13)
  %i.j = tail call float @llvm.fmuladd.f32(float %i.h, float %i.i, float f0x3CAA6A57)
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.j, float f0xBCDB0412)
  %i.l = tail call float @llvm.fmuladd.f32(float %i.h, float %i.k, float f0xBE0D6486)
  %i.m = tail call float @llvm.fmuladd.f32(float %i.h, float %i.l, float f0xBC46B2E5)
  %i.n = tail call float @llvm.fmuladd.f32(float %i.h, float %i.m, float f0x3F801C6E)
  %i.o = tail call float @llvm.fmuladd.f32(float %i.h, float %i.n, float f0x0C780258) ; 2 uses
  %i.p = tail call float @llvm.fmuladd.f32(float %i.h, float f0xB79D821B, float f0x39F77236)
  %i.q = tail call float @llvm.fmuladd.f32(float %i.h, float %i.p, float f0xBB7C6287)
  %i.r = tail call float @llvm.fmuladd.f32(float %i.h, float %i.q, float f0x3BF19642)
  %i.s = tail call float @llvm.fmuladd.f32(float %i.h, float %i.r, float f0x3CEAD9F6)
  %i.t = tail call float @llvm.fmuladd.f32(float %i.h, float %i.s, float f0x3C540BB7)
  %i.u = tail call float @llvm.fmuladd.f32(float %i.h, float %i.t, float f0xBF01A908)
  %i.v = tail call float @llvm.fmuladd.f32(float %i.h, float %i.u, float f0x3AA47B71)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.h, float %i.v, float 9.999600e-01)
  %i.x = insertelement <2 x float> poison, float %2, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x float> %i.y, <float 9.999600e-01, float f0x0C780258>
  %i.aa = fneg float %i.o
  %i.ab = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.aa, i64 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.036.i = phi i32 [ 0, %bb.c ], [ %i.ak, %bb.d ]
  %i.af = phi <2 x float> [ %i.z, %bb.c ], [ %i.aj, %bb.d ] ; 3 uses
  %i.ag = fadd <2 x float> %1, %i.af
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ag)
  %i.ah = fmul <2 x float> %i.ae, %i.af
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ac, <2 x float> %i.ai)
  %i.ak = add i32 %.036.i, 1                      ; 2 uses
  %.not33.i = icmp ugt i32 %i.ak, %4
  br i1 %.not33.i, label %nk_draw_list_path_arc_to.exit, label %bb.d, !llvm.loop !12

nk_draw_list_path_arc_to.exit:                    ; preds = %bb.d, %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_path_arc_to.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_draw_list_path_arc_to.exit
  %.0.i.i = phi ptr [ %i.ao, %bb.e ], [ null, %nk_draw_list_path_arc_to.exit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !162
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.aq, i32 %3, i32 noundef 1, float noundef %5, i32 noundef %i.as)
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !77
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i = sub i64 %i.ax, %i.av
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 96 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !76
  %i.ba = add i64 %.neg.i.i.i, %i.az
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !76
  %i.bb = load i8, ptr %i.at, align 8, !tbaa !86, !range !88, !noundef !89
  %i.bc = trunc nuw i8 %i.bb to i1
  %spec.select.i.i.i = select i1 %i.bc, i64 %i.ax, i64 0
  store i64 %spec.select.i.i.i, ptr %i.au, align 8, !tbaa !77
  store i8 0, ptr %i.at, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.ap, align 8, !tbaa !162
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.bd, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_curve(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, i32 %5, i32 noundef %6, float noundef %7) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %5, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %.not40.i = icmp eq i32 %i.d, 0
  br i1 %.not40.i, label %nk_draw_list_path_curve_to.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @llvm.umax.i32(i32 %6, i32 1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !151, !nonnull !89, !noundef !89
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.k = load i32, ptr %i.j, align 4, !tbaa !170
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = add i32 %i.d, -1
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.p, align 4
  %i.q = uitofp i32 %i.e to float
  %i.r = fdiv nnan float 1.000000e+00, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.042.i = phi i32 [ 1, %bb.c ], [ %i.ac, %bb.d ] ; 2 uses
  %i.s = uitofp i32 %.042.i to float
  %i.t = fmul float %i.r, %i.s                    ; 7 uses
  %i.u = fsub float 1.000000e+00, %i.t            ; 5 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = fmul float %i.u, 3.000000e+00            ; 2 uses
  %i.x = fmul float %i.u, %i.w
  %i.y = fmul float %i.t, %i.w
  %i.z = fmul float %i.t, %i.t
  %8 = fmul float %i.t, %i.x
  %9 = fmul float %i.u, %i.v
  %10 = fmul float %i.t, %i.y
  %11 = fmul float %i.t, %i.z
  %12 = insertelement <2 x float> poison, float %8, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x float> %2, %13
  %15 = insertelement <2 x float> poison, float %9, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %14)
  %18 = insertelement <2 x float> poison, float %10, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %3, <2 x float> %17)
  %21 = insertelement <2 x float> poison, float %11, i64 0
  %i.aa = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %4, <2 x float> %20)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ab)
  %i.ac = add i32 %.042.i, 1                      ; 2 uses
  %.not41.i = icmp ugt i32 %i.ac, %i.e
  br i1 %.not41.i, label %nk_draw_list_path_curve_to.exit, label %bb.d, !llvm.loop !13

nk_draw_list_path_curve_to.exit:                  ; preds = %bb.d, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_path_curve_to.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_draw_list_path_curve_to.exit
  %.0.i.i = phi ptr [ %i.ag, %bb.e ], [ null, %nk_draw_list_path_curve_to.exit ]
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !162
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.ah, i32 %5, i32 noundef 0, float noundef %7, i32 noundef %i.aj)
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 88 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i = sub i64 %i.ao, %i.am
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 96 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !76
  %i.ar = add i64 %.neg.i.i.i, %i.aq
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !76
  %i.as = load i8, ptr %i.ak, align 8, !tbaa !86, !range !88, !noundef !89
  %i.at = trunc nuw i8 %i.as to i1
  %spec.select.i.i.i = select i1 %i.at, i64 %i.ao, i64 0
  store i64 %spec.select.i.i.i, ptr %i.al, align 8, !tbaa !77
  store i8 0, ptr %i.ak, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.c, align 8, !tbaa !162
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.au, align 4, !tbaa !170
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_add_image(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.nk_image) align 8 captures(none) %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8
  tail call fastcc void @nk_draw_list_push_image(ptr noundef %0, ptr %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x i16>, ptr %i.b, align 8        ; 2 uses
  %i.d = icmp ne <2 x i16> %i.c, zeroinitializer  ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %nk_image_is_subimage.exit.thread, label %bb.c

nk_image_is_subimage.exit.thread:                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = uitofp <2 x i16> %i.c to <2 x float>     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load <2 x i16>, ptr %i.g, align 4, !tbaa !106 ; 2 uses
  %i.k = uitofp <2 x i16> %i.j to <2 x float>
  %i.l = fdiv <2 x float> %i.k, %i.h
  %i.m = zext <2 x i16> %i.j to <2 x i32>
  %i.n = load <2 x i16>, ptr %i.i, align 8, !tbaa !106
  %i.o = zext <2 x i16> %i.n to <2 x i32>
  %i.p = add nuw nsw <2 x i32> %i.o, %i.m
  %i.q = uitofp nneg <2 x i32> %i.p to <2 x float>
  %i.r = fdiv <2 x float> %i.q, %i.h
  %i.s = fadd <2 x float> %2, %3
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef %0, <2 x float> %2, <2 x float> %i.s, <2 x float> %i.l, <2 x float> %i.r, i32 %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = fadd <2 x float> %2, %3
  tail call fastcc void @nk_draw_list_push_rect_uv(ptr noundef %0, <2 x float> %2, <2 x float> %i.t, <2 x float> zeroinitializer, <2 x float> splat (float 1.000000e+00), i32 %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %nk_image_is_subimage.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @nk_image_is_subimage(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !173
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !174
  %i.f = icmp ne i16 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nk_draw_list_push_rect_uv(ptr nofree noundef nonnull captures(none) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, <2 x float> %4, i32 %5) unnamed_addr #20 {
bb.a:
  %.sroa.2.0.extract.shift.i.i = lshr i32 %5, 8
  %.sroa.3.0.extract.shift.i.i = lshr i32 %5, 16
  %.sroa.4.0.extract.shift.i.i = lshr i32 %5, 24
  %i.a = trunc i32 %5 to i8
  %i.b = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.c = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.d = insertelement <2 x i8> %i.b, i8 %i.c, i64 1
  %i.e = uitofp <2 x i8> %i.d to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %.sroa.4.0.extract.trunc.i.i = trunc nuw i32 %.sroa.4.0.extract.shift.i.i to i8
  %.sroa.3.0.extract.trunc.i.i = trunc i32 %.sroa.3.0.extract.shift.i.i to i8
  %i.g = insertelement <2 x i8> poison, i8 %.sroa.3.0.extract.trunc.i.i, i64 0
  %i.h = insertelement <2 x i8> %i.g, i8 %.sroa.4.0.extract.trunc.i.i, i64 1
  %i.i = uitofp <2 x i8> %i.h to <2 x float>
  %i.j = fmul nnan <2 x float> %i.i, splat (float f0x3B808081) ; 4 uses
  %.sroa.0.4.vec.insert.i = shufflevector <2 x float> %4, <2 x float> %3, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i52 = shufflevector <2 x float> %3, <2 x float> %4, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i54 = shufflevector <2 x float> %2, <2 x float> %1, <2 x i32> <i32 0, i32 3>
  %.sroa.0.4.vec.insert.i56 = shufflevector <2 x float> %1, <2 x float> %2, <2 x i32> <i32 0, i32 3>
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !159
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !155
  %i.o = getelementptr i8, ptr %0, i64 160        ; 5 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !164
  %i.q = shl i64 %i.p, 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load i64, ptr %i.r, align 8, !tbaa !165
  %i.t = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.n, i32 noundef 0, i64 noundef %i.q, i64 noundef %i.s) ; 2 uses
  %.not.i = icmp eq ptr %i.t, null                ; 2 uses
  br i1 %.not.i, label %nk_draw_list_alloc_vertices.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.k, align 4, !tbaa !159
  %i.v = add i32 %i.u, 4
  store i32 %i.v, ptr %i.k, align 4, !tbaa !159
  br label %nk_draw_list_alloc_vertices.exit

nk_draw_list_alloc_vertices.exit:                 ; preds = %bb.a, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !154
  %i.y = tail call fastcc ptr @nk_buffer_alloc(ptr noundef %i.x, i32 noundef 0, i64 noundef 12, i64 noundef 2) ; 7 uses
  %.not.i57 = icmp eq ptr %i.y, null
  br i1 %.not.i57, label %nk_draw_list_alloc_elements.exit.thread, label %nk_draw_list_alloc_elements.exit

nk_draw_list_alloc_elements.exit:                 ; preds = %nk_draw_list_alloc_vertices.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !151, !nonnull !89, !noundef !89 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 72
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !160
  %i.ah = sub i64 %i.ae, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !161
  %i.al = add i32 %i.ak, -1
  %i.am = zext i32 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !158
  %i.ar = add i32 %i.aq, 6
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !158
  %i.as = load i32, ptr %i.ao, align 8, !tbaa !167
  %i.at = add i32 %i.as, 6
  store i32 %i.at, ptr %i.ao, align 8, !tbaa !167
  br i1 %.not.i, label %nk_draw_list_alloc_elements.exit.thread, label %bb.c

bb.c:                                             ; preds = %nk_draw_list_alloc_elements.exit
  %i.au = trunc i32 %i.l to i16                   ; 5 uses
  store i16 %i.au, ptr %i.y, align 2, !tbaa !106
  %i.av = add i16 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !106
  %i.ax = add i16 %i.au, 2                        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i16 %i.ax, ptr %i.ay, align 2, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  store i16 %i.au, ptr %i.az, align 2, !tbaa !106
end_hunk_1
begin_hunk_2_@nk_convert:bb.a
  %i.x = tail call ptr @nk__begin(ptr noundef nonnull %0) ; 2 uses
  %.not257424 = icmp eq ptr %i.x, null
  br i1 %.not257424, label %._crit_edge427, label %.lr.ph426

.lr.ph426:                                        ; preds = %nk_draw_list_setup.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12884 ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12996 ; 12 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12888 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 18576
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 9824
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9800
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph426, %nk__next.exit
  %.0249425 = phi ptr [ %i.x, %.lr.ph426 ], [ %i.vk, %nk__next.exit ] ; 87 uses
  %i.ah = load i32, ptr %.0249425, align 8, !tbaa !102
  switch i32 %i.ah, label %nk_draw_list_stroke_line.exit [
    i32 18, label %bb.br
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.m
    i32 4, label %bb.t
    i32 5, label %bb.y
    i32 6, label %bb.ad
    i32 7, label %bb.ae
    i32 8, label %bb.af
    i32 9, label %bb.ag
    i32 10, label %bb.am
    i32 11, label %bb.as
    i32 12, label %bb.ax
    i32 13, label %.preheader
    i32 14, label %.preheader415
    i32 15, label %.preheader416
    i32 16, label %bb.bo
    i32 17, label %bb.bp
  ]

.preheader416:                                    ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %.0249425, i64 22 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !127
  %.not428 = icmp eq i16 %i.aj, 0
  br i1 %.not428, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader416
  %i.ak = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  br label %bb.bk

.preheader415:                                    ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.0249425, i64 20 ; 2 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !125
  %.not429 = icmp eq i16 %i.am, 0
  br i1 %.not429, label %._crit_edge420, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader415
  %i.an = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  br label %bb.bg

.preheader:                                       ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.0249425, i64 22 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !123
  %.not430 = icmp eq i16 %i.ap, 0
  br i1 %.not430, label %._crit_edge423, label %.lr.ph422

.lr.ph422:                                        ; preds = %.preheader
  %i.aq = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  br label %bb.bc

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.as = load <2 x i16>, ptr %i.ar, align 8, !tbaa !106
  %i.at = sitofp <2 x i16> %i.as to <2 x float>
  %i.au = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.av = load <2 x i16>, ptr %i.au, align 4, !tbaa !106
  %i.aw = uitofp <2 x i16> %i.av to <2 x float>
  tail call fastcc void @nk_draw_list_add_clip(ptr noundef %i.k, <2 x float> %i.at, <2 x float> %i.aw)
  br label %nk_draw_list_stroke_line.exit

bb.e:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %.0249425, i64 18
  %i.ay = load <2 x i16>, ptr %i.ax, align 2, !tbaa !106
  %i.az = sitofp <2 x i16> %i.ay to <2 x float>   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  %i.bb = load <2 x i16>, ptr %i.ba, align 2, !tbaa !106
  %i.bc = sitofp <2 x i16> %i.bb to <2 x float>   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0249425, i64 26
  %i.be = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !177
  %i.bg = uitofp i16 %i.bf to float
  %i.bh = load i32, ptr %i.bd, align 2            ; 2 uses
  %i.bi = icmp ugt i32 %i.bh, 16777215
  br i1 %i.bi, label %bb.f, label %nk_draw_list_stroke_line.exit

bb.f:                                             ; preds = %bb.e
  %i.bj = load i32, ptr %i.q, align 8, !tbaa !156
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.az)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bl = fadd <2 x float> %i.az, splat (float -5.000000e-01)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.bl)
  %i.bm = fadd <2 x float> %i.bc, splat (float -5.000000e-01)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi <2 x float> [ %i.bc, %bb.g ], [ %i.bm, %bb.h ]
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %.sink.i)
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i.i.i = phi ptr [ %i.bp, %bb.j ], [ null, %bb.i ]
  %i.bq = load i32, ptr %i.w, align 8, !tbaa !162
  %i.br = load i32, ptr %i.y, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %i.k, ptr noundef %.0.i.i.i, i32 noundef %i.bq, i32 %i.bh, i32 noundef 0, float noundef %i.bg, i32 noundef %i.br)
  %i.bs = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i, label %nk_draw_list_path_stroke.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 88 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !77
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i.i = sub i64 %i.bw, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 96 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !76
  %i.bz = add i64 %.neg.i.i.i.i, %i.by
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !76
  %i.ca = load i8, ptr %i.bs, align 8, !tbaa !86, !range !88, !noundef !89
  %i.cb = trunc nuw i8 %i.ca to i1
  %spec.select.i.i.i.i = select i1 %i.cb, i64 %i.bw, i64 0
  store i64 %spec.select.i.i.i.i, ptr %i.bt, align 8, !tbaa !77
  store i8 0, ptr %i.bs, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit.i

nk_draw_list_path_stroke.exit.i:                  ; preds = %bb.l, %bb.k
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.m:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %.0249425, i64 26
  %i.cd = getelementptr inbounds nuw i8, ptr %.0249425, i64 30
  %i.ce = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  %i.cf = load <2 x i16>, ptr %i.cc, align 2, !tbaa !106
  %i.cg = sitofp <2 x i16> %i.cf to <2 x float>
  %i.ch = load <2 x i16>, ptr %i.cd, align 2, !tbaa !106
  %i.ci = sitofp <2 x i16> %i.ch to <2 x float>
  %i.cj = load <2 x i16>, ptr %i.ce, align 2, !tbaa !106
  %i.ck = sitofp <2 x i16> %i.cj to <2 x float>
  %i.cl = getelementptr inbounds nuw i8, ptr %.0249425, i64 34
  %i.cm = load i32, ptr %i.ad, align 4, !tbaa !760
  %i.cn = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !762
  %i.cp = uitofp i16 %i.co to float
  %i.cq = load i32, ptr %i.cl, align 2            ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, 16777215
  br i1 %i.cr, label %bb.n, label %nk_draw_list_stroke_line.exit

bb.n:                                             ; preds = %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %.0249425, i64 18
  %i.ct = load <2 x i16>, ptr %i.cs, align 2, !tbaa !106
  %i.cu = sitofp <2 x i16> %i.ct to <2 x float>
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.cu)
  %i.cv = load i32, ptr %i.w, align 8, !tbaa !162 ; 2 uses
  %.not40.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not40.i.i, label %nk_draw_list_path_curve_to.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = tail call i32 @llvm.umax.i32(i32 %i.cm, i32 1) ; 2 uses
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !151, !nonnull !89, !noundef !89
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !69
  %i.da = load i32, ptr %i.z, align 4, !tbaa !170
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.db
  %i.dd = add i32 %i.cv, -1
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.de
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %i.df, align 4
  %i.dg = uitofp i32 %i.cw to float
  %i.dh = fdiv nnan float 1.000000e+00, %i.dg
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.042.i.i = phi i32 [ 1, %bb.o ], [ %i.ds, %bb.p ] ; 2 uses
  %i.di = uitofp i32 %.042.i.i to float
  %i.dj = fmul float %i.dh, %i.di                 ; 7 uses
  %i.dk = fsub float 1.000000e+00, %i.dj          ; 5 uses
  %i.dl = fmul float %i.dk, %i.dk
  %i.dm = fmul float %i.dk, 3.000000e+00          ; 2 uses
  %i.dn = fmul float %i.dk, %i.dm
  %i.do = fmul float %i.dj, %i.dm
  %i.dp = fmul float %i.dj, %i.dj
  %5 = fmul float %i.dj, %i.dn
  %6 = fmul float %i.dk, %i.dl
  %7 = fmul float %i.dj, %i.do
  %8 = fmul float %i.dj, %i.dp
  %9 = insertelement <2 x float> poison, float %5, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = fmul <2 x float> %10, %i.cg
  %12 = insertelement <2 x float> poison, float %6, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %.sroa.0.0.copyload.i.i.i, <2 x float> %11)
  %15 = insertelement <2 x float> poison, float %7, i64 0
  %16 = shufflevector <2 x float> %15, <2 x float> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %16, <2 x float> %i.ci, <2 x float> %14)
  %18 = insertelement <2 x float> poison, float %8, i64 0
  %i.dq = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.ck, <2 x float> %17)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.dr)
  %i.ds = add i32 %.042.i.i, 1                    ; 2 uses
  %.not41.i.i = icmp ugt i32 %i.ds, %i.cw
  br i1 %.not41.i.i, label %nk_draw_list_path_curve_to.exit.i, label %bb.p, !llvm.loop !13

nk_draw_list_path_curve_to.exit.i:                ; preds = %bb.p, %bb.n
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i270, label %bb.r, label %bb.q

bb.q:                                             ; preds = %nk_draw_list_path_curve_to.exit.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !69
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %nk_draw_list_path_curve_to.exit.i
  %.0.i.i.i271 = phi ptr [ %i.dv, %bb.q ], [ null, %nk_draw_list_path_curve_to.exit.i ]
  %i.dw = load i32, ptr %i.w, align 8, !tbaa !162
  %i.dx = load i32, ptr %i.y, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %i.k, ptr noundef %.0.i.i.i271, i32 noundef %i.dw, i32 %i.cq, i32 noundef 0, float noundef %i.cp, i32 noundef %i.dx)
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i272 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i272, label %nk_draw_list_path_stroke.exit.i275, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 88 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !77
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i.i273 = sub i64 %i.ec, %i.ea
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 96 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !76
  %i.ef = add i64 %.neg.i.i.i.i273, %i.ee
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !76
  %i.eg = load i8, ptr %i.dy, align 8, !tbaa !86, !range !88, !noundef !89
  %i.eh = trunc nuw i8 %i.eg to i1
  %spec.select.i.i.i.i274 = select i1 %i.eh, i64 %i.ec, i64 0
  store i64 %spec.select.i.i.i.i274, ptr %i.dz, align 8, !tbaa !77
  store i8 0, ptr %i.dy, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit.i275

nk_draw_list_path_stroke.exit.i275:               ; preds = %bb.s, %bb.r
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.t:                                             ; preds = %bb.c
  %i.ei = getelementptr inbounds nuw i8, ptr %.0249425, i64 28
  %i.ej = getelementptr inbounds nuw i8, ptr %.0249425, i64 18
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !764
  %i.el = uitofp i16 %i.ek to float
  %i.em = load i32, ptr %i.ei, align 4            ; 2 uses
  %i.en = icmp ugt i32 %i.em, 16777215
  br i1 %i.en, label %bb.u, label %nk_draw_list_stroke_line.exit

bb.u:                                             ; preds = %bb.t
  %i.eo = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.ep = load i16, ptr %i.eo, align 8, !tbaa !765
  %i.eq = uitofp i16 %i.ep to float
  %i.er = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.es = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  %i.et = load i32, ptr %i.q, align 8, !tbaa !156
  %i.eu = icmp eq i32 %i.et, 1
  %i.ev = load <2 x i16>, ptr %i.er, align 4, !tbaa !106
  %i.ew = sitofp <2 x i16> %i.ev to <2 x float>   ; 3 uses
  %i.ex = load <2 x i16>, ptr %i.es, align 8, !tbaa !106
  %i.ey = uitofp <2 x i16> %i.ex to <2 x float>
  %i.ez = fadd <2 x float> %i.ew, splat (float -5.000000e-01)
  %.sink.i282 = select i1 %i.eu, <2 x float> %i.ew, <2 x float> %i.ez
  %i.fa = fadd <2 x float> %i.ew, %i.ey
  tail call void @nk_draw_list_path_rect_to(ptr noundef nonnull %i.k, <2 x float> %.sink.i282, <2 x float> %i.fa, float noundef %i.eq)
  %i.fb = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i283 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i283, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i.i284 = phi ptr [ %i.fd, %bb.v ], [ null, %bb.u ]
  %i.fe = load i32, ptr %i.w, align 8, !tbaa !162
  %i.ff = load i32, ptr %i.y, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %i.k, ptr noundef %.0.i.i.i284, i32 noundef %i.fe, i32 %i.em, i32 noundef 1, float noundef %i.el, i32 noundef %i.ff)
  %i.fg = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i285 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i.i285, label %nk_draw_list_path_stroke.exit.i288, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 88 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !77
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i.i286 = sub i64 %i.fk, %i.fi
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 96 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !76
  %i.fn = add i64 %.neg.i.i.i.i286, %i.fm
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !76
  %i.fo = load i8, ptr %i.fg, align 8, !tbaa !86, !range !88, !noundef !89
  %i.fp = trunc nuw i8 %i.fo to i1
  %spec.select.i.i.i.i287 = select i1 %i.fp, i64 %i.fk, i64 0
  store i64 %spec.select.i.i.i.i287, ptr %i.fh, align 8, !tbaa !77
  store i8 0, ptr %i.fg, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit.i288

nk_draw_list_path_stroke.exit.i288:               ; preds = %bb.x, %bb.w
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.y:                                             ; preds = %bb.c
  %i.fq = getelementptr inbounds nuw i8, ptr %.0249425, i64 26
  %i.fr = load i32, ptr %i.fq, align 2            ; 2 uses
  %i.fs = icmp ugt i32 %i.fr, 16777215
  br i1 %i.fs, label %bb.z, label %nk_draw_list_stroke_line.exit

bb.z:                                             ; preds = %bb.y
  %i.ft = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.fu = load i16, ptr %i.ft, align 8, !tbaa !766
  %i.fv = uitofp i16 %i.fu to float
  %i.fw = getelementptr inbounds nuw i8, ptr %.0249425, i64 18
  %i.fx = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  %i.fy = load i32, ptr %i.q, align 8, !tbaa !156
  %i.fz = icmp eq i32 %i.fy, 1
  %i.ga = load <2 x i16>, ptr %i.fw, align 2, !tbaa !106
  %i.gb = sitofp <2 x i16> %i.ga to <2 x float>   ; 3 uses
  %i.gc = load <2 x i16>, ptr %i.fx, align 2, !tbaa !106
  %i.gd = uitofp <2 x i16> %i.gc to <2 x float>
  %i.ge = fadd <2 x float> %i.gb, splat (float -5.000000e-01)
  %.sink.i295 = select i1 %i.fz, <2 x float> %i.gb, <2 x float> %i.ge
  %i.gf = fadd <2 x float> %i.gb, %i.gd
  tail call void @nk_draw_list_path_rect_to(ptr noundef nonnull %i.k, <2 x float> %.sink.i295, <2 x float> %i.gf, float noundef %i.fv)
  %i.gg = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i298 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i.i298, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 64
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !69
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i.i299 = phi ptr [ %i.gi, %bb.aa ], [ null, %bb.z ]
  %i.gj = load i32, ptr %i.w, align 8, !tbaa !162
  %i.gk = load i32, ptr %i.aa, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %i.k, ptr noundef %.0.i.i.i299, i32 noundef %i.gj, i32 %i.fr, i32 noundef %i.gk)
  %i.gl = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i300 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i300, label %nk_draw_list_path_fill.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 88 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !77
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i.i301 = sub i64 %i.gp, %i.gn
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 96 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !76
  %i.gs = add i64 %.neg.i.i.i.i301, %i.gr
  store i64 %i.gs, ptr %i.gq, align 8, !tbaa !76
  %i.gt = load i8, ptr %i.gl, align 8, !tbaa !86, !range !88, !noundef !89
  %i.gu = trunc nuw i8 %i.gt to i1
  %spec.select.i.i.i.i302 = select i1 %i.gu, i64 %i.gp, i64 0
  store i64 %spec.select.i.i.i.i302, ptr %i.gm, align 8, !tbaa !77
  store i8 0, ptr %i.gl, align 8, !tbaa !86
  br label %nk_draw_list_path_fill.exit.i

nk_draw_list_path_fill.exit.i:                    ; preds = %bb.ac, %bb.ab
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.ad:                                            ; preds = %bb.c
  %i.gv = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.gw = load <2 x i16>, ptr %i.gv, align 8, !tbaa !106
  %i.gx = sitofp <2 x i16> %i.gw to <2 x float>
  %i.gy = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.gz = load <2 x i16>, ptr %i.gy, align 4, !tbaa !106
  %i.ha = uitofp <2 x i16> %i.gz to <2 x float>
  %i.hb = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  %i.hc = getelementptr inbounds nuw i8, ptr %.0249425, i64 28
  %i.hd = getelementptr inbounds nuw i8, ptr %.0249425, i64 36
  %i.he = getelementptr inbounds nuw i8, ptr %.0249425, i64 32
  %i.hf = load i32, ptr %i.hb, align 8
  %i.hg = load i32, ptr %i.hc, align 4
  %i.hh = load i32, ptr %i.hd, align 4
  %i.hi = load i32, ptr %i.he, align 8
  tail call void @nk_draw_list_fill_rect_multi_color(ptr noundef nonnull %i.k, <2 x float> %i.gx, <2 x float> %i.ha, i32 %i.hf, i32 %i.hg, i32 %i.hh, i32 %i.hi)
  br label %nk_draw_list_stroke_line.exit

bb.ae:                                            ; preds = %bb.c
  %i.hj = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.hk = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  %i.hl = load <2 x i16>, ptr %i.hj, align 8, !tbaa !106
  %i.hm = sitofp <2 x i16> %i.hl to <2 x float>
  %i.hn = load <2 x i16>, ptr %i.hk, align 2, !tbaa !106
  %i.ho = uitofp <2 x i16> %i.hn to <2 x float>
  %i.hp = fmul nnan <2 x float> %i.ho, splat (float 5.000000e-01) ; 2 uses
  %i.hq = fadd <2 x float> %i.hp, %i.hm
end_hunk_2
begin_hunk_3_@stbtt_Rasterize:bb.a
  br i1 %or.cond.i349.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.px = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.py = load float, ptr %i.px, align 4, !tbaa !855
  %i.pz = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.qa = sext i32 %i.pb to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.qa ; 2 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !54
  %i.qd = tail call float @llvm.fmuladd.f32(float %i.py, float %i.pz, float %i.qc)
  store float %i.qd, ptr %i.qb, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.qe = add nsw i32 %i.ng, 2
  %i.qf = sitofp i32 %i.qe to float               ; 2 uses
  %i.qg = fcmp ult float %.055.i345.i.i.i, %i.qf
  %i.qh = fcmp ult float %.053.i347.i.i.i, %i.qf
  %or.cond62.i350.i.i.i = select i1 %i.qg, i1 true, i1 %i.qh
  br i1 %or.cond62.i350.i.i.i, label %bb.bj, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.qi = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !855
  %i.qk = fsub float %.0.i348.i.i.i, %.054.i346.i.i.i
  %i.ql = fmul float %i.qk, %i.qj
  %i.qm = fsub float %.055.i345.i.i.i, %i.pu
  %i.qn = fsub float %.053.i347.i.i.i, %i.pu
  %i.qo = fadd float %i.qm, %i.qn
  %i.qp = fmul float %i.qo, 5.000000e-01
  %i.qq = fsub float 1.000000e+00, %i.qp
  %i.qr = sext i32 %i.pb to i64
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.jt, i64 %i.qr ; 2 uses
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !54
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.ql, float %i.qq, float %i.qt)
  store float %i.qu, ptr %i.qs, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bk:                                            ; preds = %bb.ao
  br i1 %i.mv, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.qv = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !853 ; 4 uses
  %i.qx = fcmp olt float %i.qw, %i.kj
  br i1 %i.qx, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.qy = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24
  %i.qz = load float, ptr %i.qy, align 8, !tbaa !866 ; 4 uses
  %i.ra = fcmp olt float %i.kk, %i.qz
  br i1 %i.ra, label %stbtt__handle_clipped_edge.exit351.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.rb = fcmp ogt float %i.qz, %i.kj
  br i1 %i.rb, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %foldExtExtBinop180 = fsub <2 x float> %i.na, %i.na
  %i.rc = extractelement <2 x float> %foldExtExtBinop180, i64 0
  %i.rd = fsub float %i.qz, %i.kj
  %i.re = fmul float %i.rc, %i.rd
  %i.rf = fdiv float %i.re, %i.mw
  %i.rg = fadd float %i.nb, %i.rf
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.055.i352.i.i.i = phi float [ %i.rg, %bb.bo ], [ %i.nb, %bb.bn ] ; 4 uses
  %.054.i353.i.i.i = phi float [ %i.qz, %bb.bo ], [ %i.kj, %bb.bn ] ; 3 uses
  %i.rh = fcmp ogt float %i.kk, %i.qw
  br i1 %i.rh, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ri = fsub float %i.nb, %.055.i352.i.i.i
  %i.rj = fsub float %i.qw, %i.kk
  %i.rk = fmul float %i.rj, %i.ri
  %i.rl = fsub float %i.kk, %.054.i353.i.i.i
  %i.rm = fdiv float %i.rk, %i.rl
  %i.rn = fadd float %i.nb, %i.rm
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.053.i354.i.i.i = phi float [ %i.rn, %bb.bq ], [ %i.nb, %bb.bp ] ; 3 uses
  %.0.i355.i.i.i = phi float [ %i.qw, %bb.bq ], [ %i.kk, %bb.bp ] ; 2 uses
  %i.ro = fcmp ugt float %.055.i352.i.i.i, 0.000000e+00
  %i.rp = fcmp ugt float %.053.i354.i.i.i, 0.000000e+00
  %or.cond.i356.i.i.i = select i1 %i.ro, i1 true, i1 %i.rp
  br i1 %or.cond.i356.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.rq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !855
  %i.rs = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.rt = load float, ptr %i.jt, align 4, !tbaa !54
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rr, float %i.rs, float %i.rt)
  store float %i.ru, ptr %i.jt, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.rv = fcmp ult float %.055.i352.i.i.i, 1.000000e+00
  %i.rw = fcmp ult float %.053.i354.i.i.i, 1.000000e+00
  %or.cond62.i357.i.i.i = select i1 %i.rv, i1 true, i1 %i.rw
  br i1 %or.cond62.i357.i.i.i, label %bb.bu, label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.rx = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !855
  %i.rz = fsub float %.0.i355.i.i.i, %.054.i353.i.i.i
  %i.sa = fmul float %i.rz, %i.ry
  %i.sb = fadd float %.055.i352.i.i.i, %.053.i354.i.i.i
  %i.sc = fmul float %i.sb, 5.000000e-01
  %i.sd = fsub float 1.000000e+00, %i.sc
  %i.se = load float, ptr %i.jt, align 4, !tbaa !54
  %i.sf = tail call float @llvm.fmuladd.f32(float %i.sa, float %i.sd, float %i.se)
  store float %i.sf, ptr %i.jt, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bv:                                            ; preds = %bb.am
  %i.sg = fadd float %i.nc, %i.nb                 ; 34 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 16
  %i.si = load float, ptr %i.sh, align 8, !tbaa !863 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 24 ; 16 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 28 ; 15 uses
  %i.sl = load <2 x float>, ptr %i.sj, align 8, !tbaa !54 ; 3 uses
  %i.sm = extractelement <2 x float> %i.sl, i64 0 ; 2 uses
  %i.sn = fcmp ogt float %i.sm, %i.kj             ; 2 uses
  %i.so = fsub <2 x float> %i.sl, %i.my
  %i.sp = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.sq = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> %i.so, <2 x float> %i.sq) ; 2 uses
  %i.ss = extractelement <2 x float> %i.sr, i64 0
  %.0305.i.i.i = select i1 %i.sn, float %i.ss, float %i.nb ; 7 uses
  %.0301.i.i.i = select i1 %i.sn, float %i.sm, float %i.kj ; 3 uses
  %i.st = extractelement <2 x float> %i.sl, i64 1 ; 2 uses
  %i.su = fcmp olt float %i.st, %i.kk             ; 2 uses
  %i.sv = extractelement <2 x float> %i.sr, i64 1
  %.0303.i.i.i = select i1 %i.su, float %i.sv, float %i.sg ; 7 uses
  %.0299.i.i.i = select i1 %i.su, float %i.st, float %i.kk ; 3 uses
  %i.sw = fcmp oge float %.0305.i.i.i, 0.000000e+00
  %i.sx = fcmp oge float %.0303.i.i.i, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.sw, i1 %i.sx, i1 false
  br i1 %or.cond.i.i.i, label %bb.bw, label %bb.cc

bb.bw:                                            ; preds = %bb.bv
  %i.sy = fcmp olt float %.0305.i.i.i, %i.mt
  %i.sz = fcmp olt float %.0303.i.i.i, %i.mt
  %or.cond338.i.i.i = select i1 %i.sy, i1 %i.sz, i1 false
  br i1 %or.cond338.i.i.i, label %bb.bx, label %bb.cc

bb.bx:                                            ; preds = %bb.bw
  %i.ta = fptosi float %.0305.i.i.i to i32        ; 5 uses
  %i.tb = fptosi float %.0303.i.i.i to i32        ; 3 uses
  %i.tc = icmp eq i32 %i.ta, %i.tb
  br i1 %i.tc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.td = fsub float %.0299.i.i.i, %.0301.i.i.i
  %i.te = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.tf = load float, ptr %i.te, align 4, !tbaa !855
  %i.tg = fmul float %i.td, %i.tf                 ; 2 uses
  %i.th = sitofp i32 %i.ta to float
  %i.ti = fadd float %i.th, 1.000000e+00          ; 2 uses
  %i.tj = fsub float %i.ti, %.0305.i.i.i
  %i.tk = fsub float %i.ti, %.0303.i.i.i
  %i.tl = fadd float %i.tj, %i.tk
  %i.tm = fmul float %i.tl, 5.000000e-01
  %i.tn = fmul float %i.tm, %i.tg
  %i.to = sext i32 %i.ta to i64                   ; 2 uses
  %i.tp = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.to ; 2 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !54
  %i.tr = fadd float %i.tq, %i.tn
  store float %i.tr, ptr %i.tp, align 4, !tbaa !54
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.to ; 2 uses
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !54
  %i.tu = fadd float %i.tg, %i.tt
  store float %i.tu, ptr %i.ts, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.tv = fcmp ogt float %.0305.i.i.i, %.0303.i.i.i
  br i1 %i.tv, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.tw = fsub float %i.kj, %.0301.i.i.i
  %i.tx = fadd float %i.kk, %i.tw
  %i.ty = fsub float %i.kj, %.0299.i.i.i
  %i.tz = fadd float %i.kk, %i.ty
  %i.ua = fneg float %i.si
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pre-phi475.i.i.i = phi i32 [ %i.ta, %bb.ca ], [ %i.tb, %bb.bz ] ; 7 uses
  %.pre-phi.i.i.i = phi i32 [ %i.tb, %bb.ca ], [ %i.ta, %bb.bz ] ; 4 uses
  %.0307.i.i.i = phi float [ %i.sg, %bb.ca ], [ %i.nb, %bb.bz ]
  %.1306.i.i.i = phi float [ %.0303.i.i.i, %bb.ca ], [ %.0305.i.i.i, %bb.bz ]
  %.1304.i.i.i = phi float [ %.0305.i.i.i, %bb.ca ], [ %.0303.i.i.i, %bb.bz ]
  %.1302.i.i.i = phi float [ %i.tz, %bb.ca ], [ %.0301.i.i.i, %bb.bz ] ; 2 uses
  %.1300.i.i.i = phi float [ %i.tx, %bb.ca ], [ %.0299.i.i.i, %bb.bz ] ; 2 uses
  %.0298.i.i.i = phi float [ %i.ua, %bb.ca ], [ %i.si, %bb.bz ] ; 2 uses
  %i.ub = add nsw i32 %.pre-phi.i.i.i, 1          ; 3 uses
  %12 = insertelement <2 x i32> poison, i32 %.pre-phi475.i.i.i, i64 0
  %13 = insertelement <2 x i32> %12, i32 %i.ub, i64 1
  %14 = sitofp <2 x i32> %13 to <2 x float>       ; 3 uses
  %i.uc = insertelement <2 x float> poison, float %.0307.i.i.i, i64 0
  %i.ud = shufflevector <2 x float> %i.uc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ue = fsub <2 x float> %14, %i.ud
  %i.uf = insertelement <2 x float> poison, float %.0298.i.i.i, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ug, <2 x float> %i.ue, <2 x float> %i.my) ; 2 uses
  %i.ui = extractelement <2 x float> %i.uh, i64 1 ; 2 uses
  %i.uj = fcmp ogt float %i.ui, %i.kk
  %.0296.i.i.i = select i1 %i.uj, float %i.kk, float %i.ui ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20
  %i.ul = load float, ptr %i.uk, align 4, !tbaa !855 ; 4 uses
  %i.um = fsub float %.0296.i.i.i, %.1302.i.i.i
  %i.un = fmul float %i.ul, %i.um                 ; 5 uses
  %15 = extractelement <2 x float> %14, i64 1
  %i.uo = fsub nnan float %15, %.1306.i.i.i
  %i.up = fmul float %i.uo, %i.un
  %i.uq = fmul float %i.up, 5.000000e-01
  %i.ur = sext i32 %.pre-phi.i.i.i to i64         ; 3 uses
  %i.us = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.ur ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !54
  %i.uu = fadd float %i.ut, %i.uq
  store float %i.uu, ptr %i.us, align 4, !tbaa !54
  %i.uv = extractelement <2 x float> %i.uh, i64 0 ; 2 uses
  %i.uw = fcmp ogt float %i.uv, %i.kk             ; 2 uses
  %i.ux = fsub float %i.kk, %.0296.i.i.i
  %i.uy = sub nsw i32 %.pre-phi475.i.i.i, %i.ub
  %i.uz = sitofp i32 %i.uy to float
  %i.va = fdiv float %i.ux, %i.uz
  %.1.i.i.i = select i1 %i.uw, float %i.va, float %.0298.i.i.i
  %.0295.i.i.i = select i1 %i.uw, float %i.kk, float %i.uv
  %i.vb = fmul float %i.ul, %.1.i.i.i             ; 4 uses
  %i.vc = icmp slt i32 %i.ub, %.pre-phi475.i.i.i
  br i1 %i.vc, label %.lr.ph467.i.i.i, label %._crit_edge.i.i.i

.lr.ph467.i.i.i:                                  ; preds = %bb.cb
  %i.vd = fmul float %i.vb, 5.000000e-01          ; 3 uses
  %i.ve = add nsw i64 %i.ur, 1                    ; 2 uses
  %i.vf = add i32 %.pre-phi475.i.i.i, -2
  %i.vg = sub i32 %.pre-phi.i.i.i, %.pre-phi475.i.i.i
  %i.vh = and i32 %i.vg, 1
  %lcmp.mod.not.not = icmp eq i32 %i.vh, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.vi = fadd float %i.vd, %i.un
  %i.vj = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.ve ; 2 uses
  %i.vk = load float, ptr %i.vj, align 4, !tbaa !54
  %i.vl = fadd float %i.vi, %i.vk
  store float %i.vl, ptr %i.vj, align 4, !tbaa !54
  %i.vm = fadd float %i.vb, %i.un                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nsw i64 %i.ur, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %.lcssa182.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.vm, %.prol.loopexit.unr-lcssa ]
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.ve, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.un, %.lr.ph467.i.i.i ], [ %i.vm, %.prol.loopexit.unr-lcssa ]
  %i.vn = icmp eq i32 %i.vf, %.pre-phi.i.i.i
  br i1 %i.vn, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.vy, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.vo = fadd float %i.vd, %.0294466.i.i.i
  %i.vp = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.vq = load float, ptr %i.vp, align 4, !tbaa !54
  %i.vr = fadd float %i.vo, %i.vq
  store float %i.vr, ptr %i.vp, align 4, !tbaa !54
  %i.vs = fadd float %i.vb, %.0294466.i.i.i       ; 2 uses
  %i.vt = fadd float %i.vd, %i.vs
  %i.vu = getelementptr [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i
  %i.vv = getelementptr i8, ptr %i.vu, i64 4      ; 2 uses
  %i.vw = load float, ptr %i.vv, align 4, !tbaa !54
  %i.vx = fadd float %i.vt, %i.vw
  store float %i.vx, ptr %i.vv, align 4, !tbaa !54
  %i.vy = fadd float %i.vb, %i.vs                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %lftr.wideiv.i.i.i.1 = trunc i64 %indvars.iv.next472.i.i.i.1 to i32
  %exitcond474.not.i.i.i.1 = icmp eq i32 %.pre-phi475.i.i.i, %lftr.wideiv.i.i.i.1
  br i1 %exitcond474.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new, !llvm.loop !839

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cb
  %.0294.lcssa.i.i.i = phi float [ %i.un, %bb.cb ], [ %.lcssa182.unr, %.prol.loopexit ], [ %i.vy, %.lr.ph467.i.i.i.new ]
  %i.vz = fsub float %.1300.i.i.i, %.0295.i.i.i
  %16 = extractelement <2 x float> %14, i64 0     ; 2 uses
  %i.wa = fadd float %16, 1.000000e+00            ; 2 uses
  %i.wb = fsub nnan float %i.wa, %16
  %i.wc = fsub float %i.wa, %.1304.i.i.i
  %i.wd = fadd float %i.wb, %i.wc
  %i.we = fmul float %i.wd, 5.000000e-01
  %i.wf = fmul float %i.we, %i.vz
  %i.wg = tail call float @llvm.fmuladd.f32(float %i.ul, float %i.wf, float %.0294.lcssa.i.i.i)
  %i.wh = sext i32 %.pre-phi475.i.i.i to i64      ; 2 uses
  %i.wi = getelementptr inbounds [4 x i8], ptr %.082.i.i, i64 %i.wh ; 2 uses
  %i.wj = load float, ptr %i.wi, align 4, !tbaa !54
  %i.wk = fadd float %i.wg, %i.wj
  store float %i.wk, ptr %i.wi, align 4, !tbaa !54
  %i.wl = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.wm = getelementptr inbounds [4 x i8], ptr %i.kf, i64 %i.wh ; 2 uses
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !54
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.ul, float %i.wl, float %i.wn)
  store float %i.wo, ptr %i.wm, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cc:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.mu, label %.lr.ph.i.i98.i, label %stbtt__handle_clipped_edge.exit351.i.i.i

.lr.ph.i.i98.i:                                   ; preds = %bb.cc
  %i.wp = fsub float %i.sg, %i.nb
  %i.wq = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  br label %bb.cd

bb.cd:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %.lr.ph.i.i98.i
  %indvars.iv.i.i99.i = phi i64 [ 0, %.lr.ph.i.i98.i ], [ %indvars.iv.next.i.i100.i, %stbtt__handle_clipped_edge.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i100.i = add nuw nsw i64 %indvars.iv.i.i99.i, 1 ; 3 uses
  %i.wr = trunc nuw nsw i64 %indvars.iv.next.i.i100.i to i32
  %i.ws = trunc nuw nsw i64 %indvars.iv.i.i99.i to i32
  %i.wt = uitofp nneg i32 %i.wr to float          ; 60 uses
  %i.wu = uitofp nneg i32 %i.ws to float          ; 90 uses
  %i.wv = insertelement <2 x float> poison, float %i.wu, i64 0
  %i.ww = insertelement <2 x float> %i.wv, float %i.wt, i64 1
  %i.wx = fsub <2 x float> %i.ww, %i.sq           ; 7 uses
  %i.wy = fdiv <2 x float> %i.wx, %i.sp           ; 2 uses
  %i.wz = extractelement <2 x float> %i.wy, i64 0
  %i.xa = fadd float %i.wz, %i.kj                 ; 52 uses
  %i.xb = extractelement <2 x float> %i.wy, i64 1
  %i.xc = fadd float %i.xb, %i.kj                 ; 52 uses
  %i.xd = fcmp olt float %i.nb, %i.wu             ; 2 uses
  %i.xe = fcmp ogt float %i.sg, %i.wt             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.xd, i1 %i.xe, i1 false
  br i1 %or.cond339.i.i.i, label %bb.ce, label %bb.dj

bb.ce:                                            ; preds = %bb.cd
  %i.xf = fcmp oeq float %i.xa, %i.kj
  br i1 %i.xf, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xg = load float, ptr %i.sk, align 4, !tbaa !853 ; 4 uses
  %i.xh = fcmp olt float %i.xg, %i.kj
  br i1 %i.xh, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xi = load float, ptr %i.sj, align 8, !tbaa !866 ; 4 uses
  %i.xj = fcmp olt float %i.xa, %i.xi
  br i1 %i.xj, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xk = fcmp ogt float %i.xi, %i.kj
  br i1 %i.xk, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.xl = fsub float %i.xi, %i.kj
  %i.xm = extractelement <2 x float> %i.wx, i64 0
  %i.xn = fmul float %i.xm, %i.xl
  %i.xo = fsub float %i.xa, %i.kj
  %i.xp = fdiv float %i.xn, %i.xo
  %i.xq = fadd float %i.nb, %i.xp
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.055.i359.i.i.i = phi float [ %i.xq, %bb.ci ], [ %i.nb, %bb.ch ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.xi, %bb.ci ], [ %i.kj, %bb.ch ] ; 3 uses
  %i.xr = fcmp ogt float %i.xa, %i.xg
  br i1 %i.xr, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.xs = fsub float %i.wu, %.055.i359.i.i.i
  %i.xt = fsub float %i.xg, %i.xa
  %i.xu = fmul float %i.xt, %i.xs
  %i.xv = fsub float %i.xa, %.054.i360.i.i.i
  %i.xw = fdiv float %i.xu, %i.xv
  %i.xx = fadd float %i.xw, %i.wu
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.053.i361.i.i.i = phi float [ %i.xx, %bb.ck ], [ %i.wu, %bb.cj ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.xg, %bb.ck ], [ %i.xa, %bb.cj ] ; 2 uses
  %i.xy = fcmp ugt float %.055.i359.i.i.i, %i.wu
  %i.xz = fcmp ugt float %.053.i361.i.i.i, %i.wu
  %or.cond.i363.i.i.i = select i1 %i.xy, i1 true, i1 %i.xz
  br i1 %or.cond.i363.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ya = load float, ptr %i.wq, align 4, !tbaa !855
  %i.yb = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !54
  %i.ye = tail call float @llvm.fmuladd.f32(float %i.ya, float %i.yb, float %i.yd)
  store float %i.ye, ptr %i.yc, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.yf = fcmp ult float %.055.i359.i.i.i, %i.wt
  %i.yg = fcmp ult float %.053.i361.i.i.i, %i.wt
  %or.cond62.i364.i.i.i = select i1 %i.yf, i1 true, i1 %i.yg
  br i1 %or.cond62.i364.i.i.i, label %bb.co, label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.yh = load float, ptr %i.wq, align 4, !tbaa !855
  %i.yi = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.yj = fmul float %i.yi, %i.yh
  %i.yk = fsub float %.055.i359.i.i.i, %i.wu
  %i.yl = fsub float %.053.i361.i.i.i, %i.wu
  %i.ym = fadd float %i.yk, %i.yl
  %i.yn = fmul float %i.ym, 5.000000e-01
  %i.yo = fsub float 1.000000e+00, %i.yn
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.yq = load float, ptr %i.yp, align 4, !tbaa !54
  %i.yr = tail call float @llvm.fmuladd.f32(float %i.yj, float %i.yo, float %i.yq)
  store float %i.yr, ptr %i.yp, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i:         ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cg, %bb.cf, %bb.ce
  %i.ys = fcmp oeq float %i.xa, %i.xc
  br i1 %i.ys, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.yt = load float, ptr %i.sk, align 4, !tbaa !853 ; 4 uses
  %i.yu = fcmp ogt float %i.xa, %i.yt
  br i1 %i.yu, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yv = load float, ptr %i.sj, align 8, !tbaa !866 ; 4 uses
  %i.yw = fcmp olt float %i.xc, %i.yv
  br i1 %i.yw, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.yx = fcmp olt float %i.xa, %i.yv
  br i1 %i.yx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yy = fsub nnan float %i.wt, %i.wu
  %i.yz = fsub float %i.yv, %i.xa
  %i.za = fmul float %i.yy, %i.yz
  %i.zb = fsub float %i.xc, %i.xa
  %i.zc = fdiv float %i.za, %i.zb
  %i.zd = fadd float %i.zc, %i.wu
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i366.i.i.i = phi float [ %i.zd, %bb.cs ], [ %i.wu, %bb.cr ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.yv, %bb.cs ], [ %i.xa, %bb.cr ] ; 3 uses
  %i.ze = fcmp ogt float %i.xc, %i.yt
  br i1 %i.ze, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.zf = fsub float %i.wt, %.055.i366.i.i.i
  %i.zg = fsub float %i.yt, %i.xc
  %i.zh = fmul float %i.zg, %i.zf
  %i.zi = fsub float %i.xc, %.054.i367.i.i.i
  %i.zj = fdiv float %i.zh, %i.zi
  %i.zk = fadd float %i.zj, %i.wt
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i368.i.i.i = phi float [ %i.zk, %bb.cu ], [ %i.wt, %bb.ct ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.yt, %bb.cu ], [ %i.xc, %bb.ct ] ; 2 uses
  %i.zl = fcmp ugt float %.055.i366.i.i.i, %i.wu
  %i.zm = fcmp ugt float %.053.i368.i.i.i, %i.wu
  %or.cond.i370.i.i.i = select i1 %i.zl, i1 true, i1 %i.zm
  br i1 %or.cond.i370.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zn = load float, ptr %i.wq, align 4, !tbaa !855
  %i.zo = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.zq = load float, ptr %i.zp, align 4, !tbaa !54
  %i.zr = tail call float @llvm.fmuladd.f32(float %i.zn, float %i.zo, float %i.zq)
  store float %i.zr, ptr %i.zp, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zs = fcmp ult float %.055.i366.i.i.i, %i.wt
  %i.zt = fcmp ult float %.053.i368.i.i.i, %i.wt
  %or.cond62.i371.i.i.i = select i1 %i.zs, i1 true, i1 %i.zt
  br i1 %or.cond62.i371.i.i.i, label %bb.cy, label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zu = load float, ptr %i.wq, align 4, !tbaa !855
  %i.zv = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.zw = fmul float %i.zv, %i.zu
  %i.zx = fsub float %.055.i366.i.i.i, %i.wu
  %i.zy = fsub float %.053.i368.i.i.i, %i.wu
  %i.zz = fadd float %i.zx, %i.zy
  %i.aaa = fmul float %i.zz, 5.000000e-01
  %i.aab = fsub float 1.000000e+00, %i.aaa
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
end_hunk_3
