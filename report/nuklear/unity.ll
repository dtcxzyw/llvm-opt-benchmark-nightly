Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_list_path_arc_to:bb.a
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
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.n, align 4, !tbaa !54
  %i.o = uitofp i32 %i.c to float
  %i.p = fdiv nnan float 1.000000e+00, %i.o
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %.042 = phi i32 [ 1, %bb.c ], [ %i.ao, %bb.d ]  ; 2 uses
  %i.q = uitofp i32 %.042 to float
  %i.r = fmul float %i.p, %i.q                    ; 7 uses
  %i.s = fsub float 1.000000e+00, %i.r            ; 5 uses
  %i.t = fmul float %i.s, %i.s
  %i.u = fmul float %i.s, %i.t
  %i.v = fmul float %i.s, 3.000000e+00            ; 2 uses
  %i.w = fmul float %i.s, %i.v
  %i.x = fmul float %i.r, %i.w
  %i.y = fmul float %i.r, %i.v
  %i.z = fmul float %i.r, %i.y
  %i.aa = fmul float %i.r, %i.r
  %i.ab = fmul float %i.r, %i.aa
  %i.ac = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %1, %i.ad
  %i.af = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ag = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.ae)
  %i.ai = insertelement <2 x float> poison, float %i.z, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %2, <2 x float> %i.ah)
  %i.al = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %3, <2 x float> %i.ak)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.an)
  %i.ao = add i32 %.042, 1                        ; 2 uses
  %.not41 = icmp ugt i32 %i.ao, %i.c
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
end_hunk_0
begin_hunk_1_@nk_draw_list_fill_circle:bb.a
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
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.p, align 4, !tbaa !54
  %i.q = uitofp i32 %i.e to float
  %i.r = fdiv nnan float 1.000000e+00, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.042.i = phi i32 [ 1, %bb.c ], [ %i.aq, %bb.d ] ; 2 uses
  %i.s = uitofp i32 %.042.i to float
  %i.t = fmul float %i.r, %i.s                    ; 7 uses
  %i.u = fsub float 1.000000e+00, %i.t            ; 5 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = fmul float %i.u, %i.v
  %i.x = fmul float %i.u, 3.000000e+00            ; 2 uses
  %i.y = fmul float %i.u, %i.x
  %i.z = fmul float %i.t, %i.y
  %i.aa = fmul float %i.t, %i.x
  %i.ab = fmul float %i.t, %i.aa
  %i.ac = fmul float %i.t, %i.t
  %i.ad = fmul float %i.t, %i.ac
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x float> %2, %i.af
  %i.ah = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %i.ag)
  %i.ak = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %3, <2 x float> %i.aj)
  %i.an = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ao, <2 x float> %4, <2 x float> %i.am)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %i.ap)
  %i.aq = add i32 %.042.i, 1                      ; 2 uses
  %.not41.i = icmp ugt i32 %i.aq, %i.e
  br i1 %.not41.i, label %nk_draw_list_path_curve_to.exit, label %bb.d, !llvm.loop !13

nk_draw_list_path_curve_to.exit:                  ; preds = %bb.d, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nk_draw_list_path_curve_to.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %nk_draw_list_path_curve_to.exit
  %.0.i.i = phi ptr [ %i.au, %bb.e ], [ null, %nk_draw_list_path_curve_to.exit ]
  %i.av = load i32, ptr %i.c, align 8, !tbaa !162
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.av, i32 %5, i32 noundef 0, float noundef %7, i32 noundef %i.ax)
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 88 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i = sub i64 %i.bc, %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 96 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !76
  %i.bf = add i64 %.neg.i.i.i, %i.be
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !76
  %i.bg = load i8, ptr %i.ay, align 8, !tbaa !86, !range !88, !noundef !89
  %i.bh = trunc nuw i8 %i.bg to i1
  %spec.select.i.i.i = select i1 %i.bh, i64 %i.bc, i64 0
  store i64 %spec.select.i.i.i, ptr %i.az, align 8, !tbaa !77
  store i8 0, ptr %i.ay, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.f, %bb.g
  store i32 0, ptr %i.c, align 8, !tbaa !162
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.bi, align 4, !tbaa !170
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
  %i.a = trunc i32 %5 to i8
  %i.b = insertelement <2 x i8> poison, i8 %i.a, i64 0
  %i.c = trunc i32 %.sroa.2.0.extract.shift.i.i to i8
  %i.d = insertelement <2 x i8> %i.b, i8 %i.c, i64 1
  %i.e = uitofp <2 x i8> %i.d to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float f0x3B808081) ; 4 uses
  %i.g = bitcast i32 %5 to <4 x i8>
  %i.h = shufflevector <4 x i8> %i.g, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
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
end_hunk_1
begin_hunk_2_@nk_convert:bb.a

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
  %.0249425 = phi ptr [ %i.x, %.lr.ph426 ], [ %i.vy, %nk__next.exit ] ; 87 uses
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
  %i.cm = load i32, ptr %i.ad, align 4, !tbaa !761
  %i.cn = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !763
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
  %.sroa.0.0.copyload.i.i.i = load <2 x float>, ptr %i.df, align 4, !tbaa !54
  %i.dg = uitofp i32 %i.cw to float
  %i.dh = fdiv nnan float 1.000000e+00, %i.dg
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.042.i.i = phi i32 [ 1, %bb.o ], [ %i.eg, %bb.p ] ; 2 uses
  %i.di = uitofp i32 %.042.i.i to float
  %i.dj = fmul float %i.dh, %i.di                 ; 7 uses
  %i.dk = fsub float 1.000000e+00, %i.dj          ; 5 uses
  %i.dl = fmul float %i.dk, %i.dk
  %i.dm = fmul float %i.dk, %i.dl
  %i.dn = fmul float %i.dk, 3.000000e+00          ; 2 uses
  %i.do = fmul float %i.dk, %i.dn
  %i.dp = fmul float %i.dj, %i.do
  %i.dq = fmul float %i.dj, %i.dn
  %i.dr = fmul float %i.dj, %i.dq
  %i.ds = fmul float %i.dj, %i.dj
  %i.dt = fmul float %i.dj, %i.ds
  %i.du = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x float> %i.dv, %i.cg
  %i.dx = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %.sroa.0.0.copyload.i.i.i, <2 x float> %i.dw)
  %i.ea = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ci, <2 x float> %i.dz)
  %i.ed = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ck, <2 x float> %i.ec)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %i.k, <2 x float> %i.ef)
  %i.eg = add i32 %.042.i.i, 1                    ; 2 uses
  %.not41.i.i = icmp ugt i32 %i.eg, %i.cw
  br i1 %.not41.i.i, label %nk_draw_list_path_curve_to.exit.i, label %bb.p, !llvm.loop !13

nk_draw_list_path_curve_to.exit.i:                ; preds = %bb.p, %bb.n
  %i.eh = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i270 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i270, label %bb.r, label %bb.q

bb.q:                                             ; preds = %nk_draw_list_path_curve_to.exit.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 64
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !69
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %nk_draw_list_path_curve_to.exit.i
  %.0.i.i.i271 = phi ptr [ %i.ej, %bb.q ], [ null, %nk_draw_list_path_curve_to.exit.i ]
  %i.ek = load i32, ptr %i.w, align 8, !tbaa !162
  %i.el = load i32, ptr %i.y, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %i.k, ptr noundef %.0.i.i.i271, i32 noundef %i.ek, i32 %i.cq, i32 noundef 0, float noundef %i.cp, i32 noundef %i.el)
  %i.em = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i272 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i272, label %nk_draw_list_path_stroke.exit.i275, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 88 ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !77
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i.i273 = sub i64 %i.eq, %i.eo
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 96 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !76
  %i.et = add i64 %.neg.i.i.i.i273, %i.es
  store i64 %i.et, ptr %i.er, align 8, !tbaa !76
  %i.eu = load i8, ptr %i.em, align 8, !tbaa !86, !range !88, !noundef !89
  %i.ev = trunc nuw i8 %i.eu to i1
  %spec.select.i.i.i.i274 = select i1 %i.ev, i64 %i.eq, i64 0
  store i64 %spec.select.i.i.i.i274, ptr %i.en, align 8, !tbaa !77
  store i8 0, ptr %i.em, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit.i275

nk_draw_list_path_stroke.exit.i275:               ; preds = %bb.s, %bb.r
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.t:                                             ; preds = %bb.c
  %i.ew = getelementptr inbounds nuw i8, ptr %.0249425, i64 28
  %i.ex = getelementptr inbounds nuw i8, ptr %.0249425, i64 18
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !765
  %i.ez = uitofp i16 %i.ey to float
  %i.fa = load i32, ptr %i.ew, align 4            ; 2 uses
  %i.fb = icmp ugt i32 %i.fa, 16777215
  br i1 %i.fb, label %bb.u, label %nk_draw_list_stroke_line.exit

bb.u:                                             ; preds = %bb.t
  %i.fc = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.fd = load i16, ptr %i.fc, align 8, !tbaa !766
  %i.fe = uitofp i16 %i.fd to float
  %i.ff = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.fg = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  %i.fh = load i32, ptr %i.q, align 8, !tbaa !156
  %i.fi = icmp eq i32 %i.fh, 1
  %i.fj = load <2 x i16>, ptr %i.ff, align 4, !tbaa !106
  %i.fk = sitofp <2 x i16> %i.fj to <2 x float>   ; 3 uses
  %i.fl = load <2 x i16>, ptr %i.fg, align 8, !tbaa !106
  %i.fm = uitofp <2 x i16> %i.fl to <2 x float>
  %i.fn = fadd <2 x float> %i.fk, splat (float -5.000000e-01)
  %.sink.i282 = select i1 %i.fi, <2 x float> %i.fk, <2 x float> %i.fn
  %i.fo = fadd <2 x float> %i.fk, %i.fm
  tail call void @nk_draw_list_path_rect_to(ptr noundef nonnull %i.k, <2 x float> %.sink.i282, <2 x float> %i.fo, float noundef %i.fe)
  %i.fp = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i283 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i283, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 64
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i.i.i284 = phi ptr [ %i.fr, %bb.v ], [ null, %bb.u ]
  %i.fs = load i32, ptr %i.w, align 8, !tbaa !162
  %i.ft = load i32, ptr %i.y, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %i.k, ptr noundef %.0.i.i.i284, i32 noundef %i.fs, i32 %i.fa, i32 noundef 1, float noundef %i.ez, i32 noundef %i.ft)
  %i.fu = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i285 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i.i285, label %nk_draw_list_path_stroke.exit.i288, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 88 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !77
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i.i286 = sub i64 %i.fy, %i.fw
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 96 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !76
  %i.gb = add i64 %.neg.i.i.i.i286, %i.ga
  store i64 %i.gb, ptr %i.fz, align 8, !tbaa !76
  %i.gc = load i8, ptr %i.fu, align 8, !tbaa !86, !range !88, !noundef !89
  %i.gd = trunc nuw i8 %i.gc to i1
  %spec.select.i.i.i.i287 = select i1 %i.gd, i64 %i.fy, i64 0
  store i64 %spec.select.i.i.i.i287, ptr %i.fv, align 8, !tbaa !77
  store i8 0, ptr %i.fu, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit.i288

nk_draw_list_path_stroke.exit.i288:               ; preds = %bb.x, %bb.w
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.y:                                             ; preds = %bb.c
  %i.ge = getelementptr inbounds nuw i8, ptr %.0249425, i64 26
  %i.gf = load i32, ptr %i.ge, align 2            ; 2 uses
  %i.gg = icmp ugt i32 %i.gf, 16777215
  br i1 %i.gg, label %bb.z, label %nk_draw_list_stroke_line.exit

bb.z:                                             ; preds = %bb.y
  %i.gh = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.gi = load i16, ptr %i.gh, align 8, !tbaa !767
  %i.gj = uitofp i16 %i.gi to float
  %i.gk = getelementptr inbounds nuw i8, ptr %.0249425, i64 18
  %i.gl = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  %i.gm = load i32, ptr %i.q, align 8, !tbaa !156
  %i.gn = icmp eq i32 %i.gm, 1
  %i.go = load <2 x i16>, ptr %i.gk, align 2, !tbaa !106
  %i.gp = sitofp <2 x i16> %i.go to <2 x float>   ; 3 uses
  %i.gq = load <2 x i16>, ptr %i.gl, align 2, !tbaa !106
  %i.gr = uitofp <2 x i16> %i.gq to <2 x float>
  %i.gs = fadd <2 x float> %i.gp, splat (float -5.000000e-01)
  %.sink.i295 = select i1 %i.gn, <2 x float> %i.gp, <2 x float> %i.gs
  %i.gt = fadd <2 x float> %i.gp, %i.gr
  tail call void @nk_draw_list_path_rect_to(ptr noundef nonnull %i.k, <2 x float> %.sink.i295, <2 x float> %i.gt, float noundef %i.gj)
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !151 ; 2 uses
  %.not.i.i.i298 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i298, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !69
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0.i.i.i299 = phi ptr [ %i.gw, %bb.aa ], [ null, %bb.z ]
  %i.gx = load i32, ptr %i.w, align 8, !tbaa !162
  %i.gy = load i32, ptr %i.aa, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %i.k, ptr noundef %.0.i.i.i299, i32 noundef %i.gx, i32 %i.gf, i32 noundef %i.gy)
  %i.gz = load ptr, ptr %i.m, align 8, !tbaa !151 ; 6 uses
  %.not.i.i.i.i300 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i300, label %nk_draw_list_path_fill.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 88 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !77
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !87 ; 2 uses
  %.neg.i.i.i.i301 = sub i64 %i.hd, %i.hb
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 96 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !76
  %i.hg = add i64 %.neg.i.i.i.i301, %i.hf
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !76
  %i.hh = load i8, ptr %i.gz, align 8, !tbaa !86, !range !88, !noundef !89
  %i.hi = trunc nuw i8 %i.hh to i1
  %spec.select.i.i.i.i302 = select i1 %i.hi, i64 %i.hd, i64 0
  store i64 %spec.select.i.i.i.i302, ptr %i.ha, align 8, !tbaa !77
  store i8 0, ptr %i.gz, align 8, !tbaa !86
  br label %nk_draw_list_path_fill.exit.i

nk_draw_list_path_fill.exit.i:                    ; preds = %bb.ac, %bb.ab
  store i32 0, ptr %i.w, align 8, !tbaa !162
  store i32 0, ptr %i.z, align 4, !tbaa !170
  br label %nk_draw_list_stroke_line.exit

bb.ad:                                            ; preds = %bb.c
  %i.hj = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.hk = load <2 x i16>, ptr %i.hj, align 8, !tbaa !106
  %i.hl = sitofp <2 x i16> %i.hk to <2 x float>
  %i.hm = getelementptr inbounds nuw i8, ptr %.0249425, i64 20
  %i.hn = load <2 x i16>, ptr %i.hm, align 4, !tbaa !106
  %i.ho = uitofp <2 x i16> %i.hn to <2 x float>
  %i.hp = getelementptr inbounds nuw i8, ptr %.0249425, i64 24
  %i.hq = getelementptr inbounds nuw i8, ptr %.0249425, i64 28
  %i.hr = getelementptr inbounds nuw i8, ptr %.0249425, i64 36
  %i.hs = getelementptr inbounds nuw i8, ptr %.0249425, i64 32
  %i.ht = load i32, ptr %i.hp, align 8
  %i.hu = load i32, ptr %i.hq, align 4
  %i.hv = load i32, ptr %i.hr, align 4
  %i.hw = load i32, ptr %i.hs, align 8
  tail call void @nk_draw_list_fill_rect_multi_color(ptr noundef nonnull %i.k, <2 x float> %i.hl, <2 x float> %i.ho, i32 %i.ht, i32 %i.hu, i32 %i.hv, i32 %i.hw)
  br label %nk_draw_list_stroke_line.exit

bb.ae:                                            ; preds = %bb.c
  %i.hx = getelementptr inbounds nuw i8, ptr %.0249425, i64 16
  %i.hy = getelementptr inbounds nuw i8, ptr %.0249425, i64 22
  %i.hz = load <2 x i16>, ptr %i.hx, align 8, !tbaa !106
end_hunk_2
