Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_draw_list_fill_rect_multi_color:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !160
  %i.bf = sub i64 %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !161
  %i.bj = add i32 %i.bi, -1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr inbounds [32 x i8], ptr %i.bg, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !158
  %i.bp = add i32 %i.bo, 6
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !158
  %i.bq = load i32, ptr %i.bm, align 8, !tbaa !167
  %i.br = add i32 %i.bq, 6
  store i32 %i.br, ptr %i.bm, align 8, !tbaa !167
  br i1 %.not.i, label %nk_draw_list_alloc_elements.exit.thread, label %bb.d

bb.d:                                             ; preds = %nk_draw_list_alloc_elements.exit
  %i.bs = trunc i32 %i.aj to i16                  ; 5 uses
  store i16 %i.bs, ptr %i.aw, align 2, !tbaa !106
  %i.bt = add i16 %i.bs, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !106
  %i.bv = add i16 %i.bs, 2                        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !106
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 6
  store i16 %i.bs, ptr %i.bx, align 2, !tbaa !106
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i16 %i.bv, ptr %i.by, align 2, !tbaa !106
  %i.bz = add i16 %i.bs, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 10
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !106
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.cc = load <2 x float>, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %0, i64 152       ; 4 uses
  %.val63 = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val64 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.ce = tail call fastcc ptr @nk_draw_vertex(ptr noundef nonnull %i.ar, ptr %.val63, i64 %.val64, <2 x float> %1, <2 x float> %i.cc, <2 x float> %i.d, <2 x float> %i.h)
  %i.cf = load <2 x float>, ptr %i.cb, align 8
  %.val61 = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val62 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.cg = fadd <2 x float> %1, %2                 ; 3 uses
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> %1, <2 x i32> <i32 0, i32 3>
  %i.ci = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.ce, ptr %.val61, i64 %.val62, <2 x float> %i.ch, <2 x float> %i.cf, <2 x float> %i.t, <2 x float> %i.x)
  %i.cj = load <2 x float>, ptr %i.cb, align 8
  %.val59 = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val60 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.ck = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.ci, ptr %.val59, i64 %.val60, <2 x float> %i.cg, <2 x float> %i.cj, <2 x float> %i.l, <2 x float> %i.p)
  %i.cl = shufflevector <2 x float> %1, <2 x float> %i.cg, <2 x i32> <i32 0, i32 3>
  %i.cm = load <2 x float>, ptr %i.cb, align 8
  %.val = load ptr, ptr %i.cd, align 8, !tbaa !168
  %.val58 = load i64, ptr %i.am, align 8, !tbaa !169
  %i.cn = tail call fastcc ptr @nk_draw_vertex(ptr noundef %i.ck, ptr %.val, i64 %.val58, <2 x float> %i.cl, <2 x float> %i.cm, <2 x float> %i.ab, <2 x float> %i.af) ; 0 uses
  br label %nk_draw_list_alloc_elements.exit.thread

nk_draw_list_alloc_elements.exit.thread:          ; preds = %nk_draw_list_alloc_vertices.exit, %nk_draw_list_alloc_elements.exit, %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_fill_triangle(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %4, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %2)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load i32, ptr %i.i, align 8, !tbaa !171
  tail call void @nk_draw_list_fill_poly_convex(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.h, i32 %4, i32 noundef %i.j)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_fill.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i.i = sub i64 %i.o, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = add i64 %.neg.i.i.i, %i.q
  store i64 %i.r, ptr %i.p, align 8, !tbaa !76
  %i.s = load i8, ptr %i.k, align 8, !tbaa !86, !range !88, !noundef !89
  %i.t = trunc nuw i8 %i.s to i1
  %spec.select.i.i.i = select i1 %i.t, i64 %i.o, i64 0
  store i64 %spec.select.i.i.i, ptr %i.l, align 8, !tbaa !77
  store i8 0, ptr %i.k, align 8, !tbaa !86
  br label %nk_draw_list_path_fill.exit

nk_draw_list_path_fill.exit:                      ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.u, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_draw_list_path_fill.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_stroke_triangle(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, <2 x float> %2, <2 x float> %3, i32 %4, float noundef %5) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ugt i32 %4, 16777215
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %1)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %2)
  tail call void @nk_draw_list_path_line_to(ptr noundef nonnull %0, <2 x float> %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !162
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.j = load i32, ptr %i.i, align 4, !tbaa !172
  tail call void @nk_draw_list_stroke_poly_line(ptr noundef nonnull %0, ptr noundef %.0.i.i, i32 noundef %i.h, i32 %4, i32 noundef 1, float noundef %5, i32 noundef %i.j)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !151  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %nk_draw_list_path_stroke.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !87   ; 2 uses
  %.neg.i.i.i = sub i64 %i.o, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = add i64 %.neg.i.i.i, %i.q
  store i64 %i.r, ptr %i.p, align 8, !tbaa !76
  %i.s = load i8, ptr %i.k, align 8, !tbaa !86, !range !88, !noundef !89
  %i.t = trunc nuw i8 %i.s to i1
  %spec.select.i.i.i = select i1 %i.t, i64 %i.o, i64 0
  store i64 %spec.select.i.i.i, ptr %i.l, align 8, !tbaa !77
  store i8 0, ptr %i.k, align 8, !tbaa !86
  br label %nk_draw_list_path_stroke.exit

nk_draw_list_path_stroke.exit:                    ; preds = %bb.d, %bb.e
  store i32 0, ptr %i.g, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.u, align 4, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %nk_draw_list_path_stroke.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @nk_draw_list_fill_circle(ptr nofree noundef captures(address_is_null) %0, <2 x float> %1, float noundef %2, i32 %3, i32 noundef %4) local_unnamed_addr #20 {
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
end_hunk_0
begin_hunk_1_@stbtt_Rasterize:bb.a
.lr.ph467.i.i.i:                                  ; preds = %bb.cb
  %i.us = fmul float %i.uq, 5.000000e-01          ; 3 uses
  %i.ut = add nuw nsw i64 %i.uh, 1                ; 2 uses
  %i.uu = add nsw i32 %.pre-phi474.i.i.i, -2
  %i.uv = sub nsw i32 %.pre-phi.i.i.i, %.pre-phi474.i.i.i
  %i.uw = and i32 %i.uv, 1
  %lcmp.mod.not.not = icmp eq i32 %i.uw, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph467.i.i.i
  %i.ux = fadd float %i.us, %i.ud
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.ut ; 2 uses
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !54
  %i.va = fadd float %i.ux, %i.uz
  store float %i.va, ptr %i.uy, align 4, !tbaa !54
  %i.vb = fadd float %i.uq, %i.ud                 ; 2 uses
  %indvars.iv.next472.i.i.i.prol = add nuw nsw i64 %i.uh, 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph467.i.i.i
  %indvars.iv471.i.i.i.unr = phi i64 [ %i.ut, %.lr.ph467.i.i.i ], [ %indvars.iv.next472.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.0294466.i.i.i.unr = phi float [ %i.ud, %.lr.ph467.i.i.i ], [ %i.vb, %.prol.loopexit.unr-lcssa ]
  %.lcssa177.unr = phi float [ poison, %.lr.ph467.i.i.i ], [ %i.vb, %.prol.loopexit.unr-lcssa ]
  %i.vc = icmp eq i32 %i.uu, %.pre-phi.i.i.i
  br i1 %i.vc, label %._crit_edge.i.i.i, label %.lr.ph467.i.i.i.new

.lr.ph467.i.i.i.new:                              ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new
  %indvars.iv471.i.i.i = phi i64 [ %indvars.iv.next472.i.i.i.1, %.lr.ph467.i.i.i.new ], [ %indvars.iv471.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0294466.i.i.i = phi float [ %i.vn, %.lr.ph467.i.i.i.new ], [ %.0294466.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.vd = fadd float %i.us, %.0294466.i.i.i
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i ; 2 uses
  %i.vf = load float, ptr %i.ve, align 4, !tbaa !54
  %i.vg = fadd float %i.vd, %i.vf
  store float %i.vg, ptr %i.ve, align 4, !tbaa !54
  %i.vh = fadd float %i.uq, %.0294466.i.i.i       ; 2 uses
  %i.vi = fadd float %i.us, %i.vh
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv471.i.i.i
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 4 ; 2 uses
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !54
  %i.vm = fadd float %i.vi, %i.vl
  store float %i.vm, ptr %i.vk, align 4, !tbaa !54
  %i.vn = fadd float %i.uq, %i.vh                 ; 2 uses
  %indvars.iv.next472.i.i.i.1 = add nuw nsw i64 %indvars.iv471.i.i.i, 2 ; 2 uses
  %i.vo = trunc nuw i64 %indvars.iv.next472.i.i.i.1 to i32
  %i.vp = icmp sgt i32 %.pre-phi474.i.i.i, %i.vo
  br i1 %i.vp, label %.lr.ph467.i.i.i.new, label %._crit_edge.i.i.i, !llvm.loop !840

._crit_edge.i.i.i:                                ; preds = %.prol.loopexit, %.lr.ph467.i.i.i.new, %bb.cb
  %.0294.lcssa.i.i.i = phi float [ %i.ud, %bb.cb ], [ %.lcssa177.unr, %.prol.loopexit ], [ %i.vn, %.lr.ph467.i.i.i.new ]
  %i.vq = fsub float %.1300.i.i.i, %.0295.i.i.i
  %i.vr = fadd float %i.tw, 1.000000e+00          ; 2 uses
  %i.vs = fsub nnan float %i.vr, %i.tw
  %i.vt = fsub float %i.vr, %.1304.i.i.i
  %i.vu = fadd float %i.vs, %i.vt
  %i.vv = fmul float %i.vu, 5.000000e-01
  %i.vw = fmul float %i.vv, %i.vq
  %i.vx = tail call float @llvm.fmuladd.f32(float %i.ub, float %i.vw, float %.0294.lcssa.i.i.i)
  %i.vy = zext nneg i32 %.pre-phi474.i.i.i to i64 ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %i.vy ; 2 uses
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !54
  %i.wb = fadd float %i.vx, %i.wa
  store float %i.wb, ptr %i.vz, align 4, !tbaa !54
  %i.wc = fsub float %.1300.i.i.i, %.1302.i.i.i
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.vy ; 2 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !54
  %i.wf = tail call float @llvm.fmuladd.f32(float %i.ub, float %i.wc, float %i.we)
  store float %i.wf, ptr %i.wd, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit351.i.i.i

bb.cc:                                            ; preds = %bb.bw, %bb.bv
  br i1 %i.mq, label %.lr.ph.i.i98.i, label %stbtt__handle_clipped_edge.exit351.i.i.i

.lr.ph.i.i98.i:                                   ; preds = %bb.cc
  %i.wg = fsub float %i.sa, %i.mx
  %i.wh = getelementptr inbounds nuw i8, ptr %.0293468.i.i.i, i64 20 ; 30 uses
  %i.wi = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.wj = shufflevector <2 x float> %i.wi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wk = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.wl = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.cd

bb.cd:                                            ; preds = %stbtt__handle_clipped_edge.exit379.i.i.i, %.lr.ph.i.i98.i
  %indvars.iv.i.i99.i = phi i64 [ 0, %.lr.ph.i.i98.i ], [ %indvars.iv.next.i.i100.i, %stbtt__handle_clipped_edge.exit379.i.i.i ] ; 32 uses
  %indvars.iv.next.i.i100.i = add nuw nsw i64 %indvars.iv.i.i99.i, 1 ; 3 uses
  %i.wm = trunc nuw nsw i64 %indvars.iv.i.i99.i to i32
  %i.wn = uitofp nneg i32 %i.wm to float          ; 90 uses
  %i.wo = trunc nuw nsw i64 %indvars.iv.next.i.i100.i to i32
  %i.wp = uitofp nneg i32 %i.wo to float          ; 60 uses
  %i.wq = insertelement <2 x float> poison, float %i.wn, i64 0
  %i.wr = insertelement <2 x float> %i.wq, float %i.wp, i64 1
  %i.ws = fsub <2 x float> %i.wr, %i.wj           ; 7 uses
  %i.wt = fdiv <2 x float> %i.ws, %i.wl           ; 2 uses
  %i.wu = extractelement <2 x float> %i.wt, i64 0
  %i.wv = fadd float %i.wu, %i.kf                 ; 52 uses
  %i.ww = extractelement <2 x float> %i.wt, i64 1
  %i.wx = fadd float %i.ww, %i.kf                 ; 52 uses
  %i.wy = fcmp olt float %i.mx, %i.wn             ; 2 uses
  %i.wz = fcmp ogt float %i.sa, %i.wp             ; 2 uses
  %or.cond339.i.i.i = select i1 %i.wy, i1 %i.wz, i1 false
  br i1 %or.cond339.i.i.i, label %bb.ce, label %bb.dj

bb.ce:                                            ; preds = %bb.cd
  %i.xa = fcmp oeq float %i.wv, %i.kf
  br i1 %i.xa, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.xb = load float, ptr %i.si, align 4, !tbaa !855 ; 4 uses
  %i.xc = fcmp olt float %i.xb, %i.kf
  br i1 %i.xc, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.xd = load float, ptr %i.sd, align 8, !tbaa !867 ; 4 uses
  %i.xe = fcmp olt float %i.wv, %i.xd
  br i1 %i.xe, label %stbtt__handle_clipped_edge.exit365.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.xf = fcmp ogt float %i.xd, %i.kf
  br i1 %i.xf, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.xg = fsub float %i.xd, %i.kf
  %i.xh = extractelement <2 x float> %i.ws, i64 0
  %i.xi = fmul float %i.xh, %i.xg
  %i.xj = fsub float %i.wv, %i.kf
  %i.xk = fdiv float %i.xi, %i.xj
  %i.xl = fadd float %i.mx, %i.xk
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.055.i359.i.i.i = phi float [ %i.xl, %bb.ci ], [ %i.mx, %bb.ch ] ; 4 uses
  %.054.i360.i.i.i = phi float [ %i.xd, %bb.ci ], [ %i.kf, %bb.ch ] ; 3 uses
  %i.xm = fcmp ogt float %i.wv, %i.xb
  br i1 %i.xm, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.xn = fsub float %i.wn, %.055.i359.i.i.i
  %i.xo = fsub float %i.xb, %i.wv
  %i.xp = fmul float %i.xo, %i.xn
  %i.xq = fsub float %i.wv, %.054.i360.i.i.i
  %i.xr = fdiv float %i.xp, %i.xq
  %i.xs = fadd float %i.xr, %i.wn
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.053.i361.i.i.i = phi float [ %i.xs, %bb.ck ], [ %i.wn, %bb.cj ] ; 3 uses
  %.0.i362.i.i.i = phi float [ %i.xb, %bb.ck ], [ %i.wv, %bb.cj ] ; 2 uses
  %i.xt = fcmp ugt float %.055.i359.i.i.i, %i.wn
  %i.xu = fcmp ugt float %.053.i361.i.i.i, %i.wn
  %or.cond.i363.i.i.i = select i1 %i.xt, i1 true, i1 %i.xu
  br i1 %or.cond.i363.i.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.xv = load float, ptr %i.wh, align 4, !tbaa !857
  %i.xw = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !54
  %i.xz = tail call float @llvm.fmuladd.f32(float %i.xv, float %i.xw, float %i.xy)
  store float %i.xz, ptr %i.xx, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.ya = fcmp ult float %.055.i359.i.i.i, %i.wp
  %i.yb = fcmp ult float %.053.i361.i.i.i, %i.wp
  %or.cond62.i364.i.i.i = select i1 %i.ya, i1 true, i1 %i.yb
  br i1 %or.cond62.i364.i.i.i, label %bb.co, label %stbtt__handle_clipped_edge.exit365.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.yc = load float, ptr %i.wh, align 4, !tbaa !857
  %i.yd = fsub float %.0.i362.i.i.i, %.054.i360.i.i.i
  %i.ye = fmul float %i.yd, %i.yc
  %i.yf = fsub float %.055.i359.i.i.i, %i.wn
  %i.yg = fsub float %.053.i361.i.i.i, %i.wn
  %i.yh = fadd float %i.yf, %i.yg
  %i.yi = fmul float %i.yh, 5.000000e-01
  %i.yj = fsub float 1.000000e+00, %i.yi
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !54
  %i.ym = tail call float @llvm.fmuladd.f32(float %i.ye, float %i.yj, float %i.yl)
  store float %i.ym, ptr %i.yk, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit365.i.i.i

stbtt__handle_clipped_edge.exit365.i.i.i:         ; preds = %bb.co, %bb.cn, %bb.cm, %bb.cg, %bb.cf, %bb.ce
  %i.yn = fcmp oeq float %i.wv, %i.wx
  br i1 %i.yn, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.yo = load float, ptr %i.si, align 4, !tbaa !855 ; 4 uses
  %i.yp = fcmp ogt float %i.wv, %i.yo
  br i1 %i.yp, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.yq = load float, ptr %i.sd, align 8, !tbaa !867 ; 4 uses
  %i.yr = fcmp olt float %i.wx, %i.yq
  br i1 %i.yr, label %stbtt__handle_clipped_edge.exit372.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ys = fcmp olt float %i.wv, %i.yq
  br i1 %i.ys, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.yt = fsub nnan float %i.wp, %i.wn
  %i.yu = fsub float %i.yq, %i.wv
  %i.yv = fmul float %i.yt, %i.yu
  %i.yw = fsub float %i.wx, %i.wv
  %i.yx = fdiv float %i.yv, %i.yw
  %i.yy = fadd float %i.yx, %i.wn
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.055.i366.i.i.i = phi float [ %i.yy, %bb.cs ], [ %i.wn, %bb.cr ] ; 4 uses
  %.054.i367.i.i.i = phi float [ %i.yq, %bb.cs ], [ %i.wv, %bb.cr ] ; 3 uses
  %i.yz = fcmp ogt float %i.wx, %i.yo
  br i1 %i.yz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.za = fsub float %i.wp, %.055.i366.i.i.i
  %i.zb = fsub float %i.yo, %i.wx
  %i.zc = fmul float %i.zb, %i.za
  %i.zd = fsub float %i.wx, %.054.i367.i.i.i
  %i.ze = fdiv float %i.zc, %i.zd
  %i.zf = fadd float %i.ze, %i.wp
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.053.i368.i.i.i = phi float [ %i.zf, %bb.cu ], [ %i.wp, %bb.ct ] ; 3 uses
  %.0.i369.i.i.i = phi float [ %i.yo, %bb.cu ], [ %i.wx, %bb.ct ] ; 2 uses
  %i.zg = fcmp ugt float %.055.i366.i.i.i, %i.wn
  %i.zh = fcmp ugt float %.053.i368.i.i.i, %i.wn
  %or.cond.i370.i.i.i = select i1 %i.zg, i1 true, i1 %i.zh
  br i1 %or.cond.i370.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.zi = load float, ptr %i.wh, align 4, !tbaa !857
  %i.zj = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !54
  %i.zm = tail call float @llvm.fmuladd.f32(float %i.zi, float %i.zj, float %i.zl)
  store float %i.zm, ptr %i.zk, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.zn = fcmp ult float %.055.i366.i.i.i, %i.wp
  %i.zo = fcmp ult float %.053.i368.i.i.i, %i.wp
  %or.cond62.i371.i.i.i = select i1 %i.zn, i1 true, i1 %i.zo
  br i1 %or.cond62.i371.i.i.i, label %bb.cy, label %stbtt__handle_clipped_edge.exit372.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %i.zp = load float, ptr %i.wh, align 4, !tbaa !857
  %i.zq = fsub float %.0.i369.i.i.i, %.054.i367.i.i.i
  %i.zr = fmul float %i.zq, %i.zp
  %i.zs = fsub float %.055.i366.i.i.i, %i.wn
  %i.zt = fsub float %.053.i368.i.i.i, %i.wn
  %i.zu = fadd float %i.zs, %i.zt
  %i.zv = fmul float %i.zu, 5.000000e-01
  %i.zw = fsub float 1.000000e+00, %i.zv
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !54
  %i.zz = tail call float @llvm.fmuladd.f32(float %i.zr, float %i.zw, float %i.zy)
  store float %i.zz, ptr %i.zx, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit372.i.i.i

stbtt__handle_clipped_edge.exit372.i.i.i:         ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cq, %bb.cp, %stbtt__handle_clipped_edge.exit365.i.i.i
  %i.aaa = fcmp oeq float %i.wx, %i.kg
  br i1 %i.aaa, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbtt__handle_clipped_edge.exit372.i.i.i
  %i.aab = load float, ptr %i.si, align 4, !tbaa !855 ; 4 uses
  %i.aac = fcmp ogt float %i.wx, %i.aab
  br i1 %i.aac, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.aad = load float, ptr %i.sd, align 8, !tbaa !867 ; 4 uses
  %i.aae = fcmp olt float %i.kg, %i.aad
  br i1 %i.aae, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.aaf = fcmp olt float %i.wx, %i.aad
  br i1 %i.aaf, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.aag = fsub float %i.sa, %i.wp
  %i.aah = fsub float %i.aad, %i.wx
  %i.aai = fmul float %i.aag, %i.aah
  %i.aaj = fsub float %i.kg, %i.wx
  %i.aak = fdiv float %i.aai, %i.aaj
  %i.aal = fadd float %i.aak, %i.wp
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.055.i373.i.i.i = phi float [ %i.aal, %bb.dc ], [ %i.wp, %bb.db ] ; 4 uses
  %.054.i374.i.i.i = phi float [ %i.aad, %bb.dc ], [ %i.wx, %bb.db ] ; 3 uses
  %i.aam = fcmp ogt float %i.kg, %i.aab
  br i1 %i.aam, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.aan = fsub float %i.sa, %.055.i373.i.i.i
  %i.aao = fsub float %i.aab, %i.kg
  %i.aap = fmul float %i.aao, %i.aan
  %i.aaq = fsub float %i.kg, %.054.i374.i.i.i
  %i.aar = fdiv float %i.aap, %i.aaq
  %i.aas = fadd float %i.sa, %i.aar
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.053.i375.i.i.i = phi float [ %i.aas, %bb.de ], [ %i.sa, %bb.dd ] ; 3 uses
  %.0.i376.i.i.i = phi float [ %i.aab, %bb.de ], [ %i.kg, %bb.dd ] ; 2 uses
  %i.aat = fcmp ugt float %.055.i373.i.i.i, %i.wn
  %i.aau = fcmp ugt float %.053.i375.i.i.i, %i.wn
  %or.cond.i377.i.i.i = select i1 %i.aat, i1 true, i1 %i.aau
  br i1 %or.cond.i377.i.i.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aav = load float, ptr %i.wh, align 4, !tbaa !857
  %i.aaw = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aay = load float, ptr %i.aax, align 4, !tbaa !54
  %i.aaz = tail call float @llvm.fmuladd.f32(float %i.aav, float %i.aaw, float %i.aay)
  store float %i.aaz, ptr %i.aax, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.aba = fcmp ult float %.055.i373.i.i.i, %i.wp
  %i.abb = fcmp ult float %.053.i375.i.i.i, %i.wp
  %or.cond62.i378.i.i.i = select i1 %i.aba, i1 true, i1 %i.abb
  br i1 %or.cond62.i378.i.i.i, label %bb.di, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.abc = load float, ptr %i.wh, align 4, !tbaa !857
  %i.abd = fsub float %.0.i376.i.i.i, %.054.i374.i.i.i
  %i.abe = fmul float %i.abd, %i.abc
  %i.abf = fsub float %.055.i373.i.i.i, %i.wn
  %i.abg = fsub float %.053.i375.i.i.i, %i.wn
  %i.abh = fadd float %i.abf, %i.abg
  %i.abi = fmul float %i.abh, 5.000000e-01
  %i.abj = fsub float 1.000000e+00, %i.abi
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !54
  %i.abm = tail call float @llvm.fmuladd.f32(float %i.abe, float %i.abj, float %i.abl)
  store float %i.abm, ptr %i.abk, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.dj:                                            ; preds = %bb.cd
  %i.abn = fcmp olt float %i.sa, %i.wn            ; 2 uses
  %i.abo = fcmp ogt float %i.mx, %i.wp            ; 2 uses
  %or.cond340.i.i.i = select i1 %i.abn, i1 %i.abo, i1 false
  br i1 %or.cond340.i.i.i, label %bb.dk, label %bb.ep

bb.dk:                                            ; preds = %bb.dj
  %i.abp = fcmp oeq float %i.wx, %i.kf
  br i1 %i.abp, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.abq = load float, ptr %i.si, align 4, !tbaa !855 ; 4 uses
  %i.abr = fcmp olt float %i.abq, %i.kf
  br i1 %i.abr, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.abs = load float, ptr %i.sd, align 8, !tbaa !867 ; 4 uses
  %i.abt = fcmp olt float %i.wx, %i.abs
  br i1 %i.abt, label %stbtt__handle_clipped_edge.exit386.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.abu = fcmp ogt float %i.abs, %i.kf
  br i1 %i.abu, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.abv = fsub float %i.abs, %i.kf
  %i.abw = extractelement <2 x float> %i.ws, i64 1
  %i.abx = fmul float %i.abw, %i.abv
  %i.aby = fsub float %i.wx, %i.kf
  %i.abz = fdiv float %i.abx, %i.aby
  %i.aca = fadd float %i.mx, %i.abz
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.055.i380.i.i.i = phi float [ %i.aca, %bb.do ], [ %i.mx, %bb.dn ] ; 4 uses
  %.054.i381.i.i.i = phi float [ %i.abs, %bb.do ], [ %i.kf, %bb.dn ] ; 3 uses
  %i.acb = fcmp ogt float %i.wx, %i.abq
  br i1 %i.acb, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.acc = fsub float %i.wp, %.055.i380.i.i.i
  %i.acd = fsub float %i.abq, %i.wx
  %i.ace = fmul float %i.acd, %i.acc
  %i.acf = fsub float %i.wx, %.054.i381.i.i.i
  %i.acg = fdiv float %i.ace, %i.acf
  %i.ach = fadd float %i.acg, %i.wp
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.053.i382.i.i.i = phi float [ %i.ach, %bb.dq ], [ %i.wp, %bb.dp ] ; 3 uses
  %.0.i383.i.i.i = phi float [ %i.abq, %bb.dq ], [ %i.wx, %bb.dp ] ; 2 uses
  %i.aci = fcmp ugt float %.055.i380.i.i.i, %i.wn
  %i.acj = fcmp ugt float %.053.i382.i.i.i, %i.wn
  %or.cond.i384.i.i.i = select i1 %i.aci, i1 true, i1 %i.acj
  br i1 %or.cond.i384.i.i.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ack = load float, ptr %i.wh, align 4, !tbaa !857
  %i.acl = fsub float %.0.i383.i.i.i, %.054.i381.i.i.i
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.acn = load float, ptr %i.acm, align 4, !tbaa !54
  %i.aco = tail call float @llvm.fmuladd.f32(float %i.ack, float %i.acl, float %i.acn)
  store float %i.aco, ptr %i.acm, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit386.i.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.acp = fcmp ult float %.055.i380.i.i.i, %i.wp
  %i.acq = fcmp ult float %.053.i382.i.i.i, %i.wp
  %or.cond62.i385.i.i.i = select i1 %i.acp, i1 true, i1 %i.acq
  br i1 %or.cond62.i385.i.i.i, label %bb.du, label %stbtt__handle_clipped_edge.exit386.i.i.i

bb.du:                                            ; preds = %bb.dt
  %i.acr = load float, ptr %i.wh, align 4, !tbaa !857
  %i.acs = fsub float %.0.i383.i.i.i, %.054.i381.i.i.i
  %i.act = fmul float %i.acs, %i.acr
  %i.acu = fsub float %.055.i380.i.i.i, %i.wn
  %i.acv = fsub float %.053.i382.i.i.i, %i.wn
  %i.acw = fadd float %i.acu, %i.acv
  %i.acx = fmul float %i.acw, 5.000000e-01
  %i.acy = fsub float 1.000000e+00, %i.acx
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.ada = load float, ptr %i.acz, align 4, !tbaa !54
  %i.adb = tail call float @llvm.fmuladd.f32(float %i.act, float %i.acy, float %i.ada)
  store float %i.adb, ptr %i.acz, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit386.i.i.i

stbtt__handle_clipped_edge.exit386.i.i.i:         ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dm, %bb.dl, %bb.dk
  %i.adc = fcmp oeq float %i.wx, %i.wv
  br i1 %i.adc, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %stbtt__handle_clipped_edge.exit386.i.i.i
  %i.add = load float, ptr %i.si, align 4, !tbaa !855 ; 4 uses
  %i.ade = fcmp ogt float %i.wx, %i.add
  br i1 %i.ade, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.adf = load float, ptr %i.sd, align 8, !tbaa !867 ; 4 uses
  %i.adg = fcmp olt float %i.wv, %i.adf
  br i1 %i.adg, label %stbtt__handle_clipped_edge.exit393.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.adh = fcmp olt float %i.wx, %i.adf
  br i1 %i.adh, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.adi = fsub nnan float %i.wn, %i.wp
  %i.adj = fsub float %i.adf, %i.wx
  %i.adk = fmul float %i.adi, %i.adj
  %i.adl = fsub float %i.wv, %i.wx
  %i.adm = fdiv float %i.adk, %i.adl
  %i.adn = fadd float %i.adm, %i.wp
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.055.i387.i.i.i = phi float [ %i.adn, %bb.dy ], [ %i.wp, %bb.dx ] ; 4 uses
  %.054.i388.i.i.i = phi float [ %i.adf, %bb.dy ], [ %i.wx, %bb.dx ] ; 3 uses
  %i.ado = fcmp ogt float %i.wv, %i.add
  br i1 %i.ado, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.adp = fsub float %i.wn, %.055.i387.i.i.i
  %i.adq = fsub float %i.add, %i.wv
  %i.adr = fmul float %i.adq, %i.adp
  %i.ads = fsub float %i.wv, %.054.i388.i.i.i
  %i.adt = fdiv float %i.adr, %i.ads
  %i.adu = fadd float %i.adt, %i.wn
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.053.i389.i.i.i = phi float [ %i.adu, %bb.ea ], [ %i.wn, %bb.dz ] ; 3 uses
  %.0.i390.i.i.i = phi float [ %i.add, %bb.ea ], [ %i.wv, %bb.dz ] ; 2 uses
  %i.adv = fcmp ugt float %.055.i387.i.i.i, %i.wn
  %i.adw = fcmp ugt float %.053.i389.i.i.i, %i.wn
  %or.cond.i391.i.i.i = select i1 %i.adv, i1 true, i1 %i.adw
  br i1 %or.cond.i391.i.i.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.adx = load float, ptr %i.wh, align 4, !tbaa !857
  %i.ady = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !54
  %i.aeb = tail call float @llvm.fmuladd.f32(float %i.adx, float %i.ady, float %i.aea)
  store float %i.aeb, ptr %i.adz, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit393.i.i.i

bb.ed:                                            ; preds = %bb.eb
  %i.aec = fcmp ult float %.055.i387.i.i.i, %i.wp
  %i.aed = fcmp ult float %.053.i389.i.i.i, %i.wp
  %or.cond62.i392.i.i.i = select i1 %i.aec, i1 true, i1 %i.aed
  br i1 %or.cond62.i392.i.i.i, label %bb.ee, label %stbtt__handle_clipped_edge.exit393.i.i.i

bb.ee:                                            ; preds = %bb.ed
  %i.aee = load float, ptr %i.wh, align 4, !tbaa !857
  %i.aef = fsub float %.0.i390.i.i.i, %.054.i388.i.i.i
  %i.aeg = fmul float %i.aef, %i.aee
  %i.aeh = fsub float %.055.i387.i.i.i, %i.wn
  %i.aei = fsub float %.053.i389.i.i.i, %i.wn
  %i.aej = fadd float %i.aeh, %i.aei
  %i.aek = fmul float %i.aej, 5.000000e-01
  %i.ael = fsub float 1.000000e+00, %i.aek
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !54
  %i.aeo = tail call float @llvm.fmuladd.f32(float %i.aeg, float %i.ael, float %i.aen)
  store float %i.aeo, ptr %i.aem, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit393.i.i.i

stbtt__handle_clipped_edge.exit393.i.i.i:         ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.dw, %bb.dv, %stbtt__handle_clipped_edge.exit386.i.i.i
  %i.aep = fcmp oeq float %i.wv, %i.kg
  br i1 %i.aep, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %stbtt__handle_clipped_edge.exit393.i.i.i
  %i.aeq = load float, ptr %i.si, align 4, !tbaa !855 ; 4 uses
  %i.aer = fcmp ogt float %i.wv, %i.aeq
  br i1 %i.aer, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.aes = load float, ptr %i.sd, align 8, !tbaa !867 ; 4 uses
  %i.aet = fcmp olt float %i.kg, %i.aes
  br i1 %i.aet, label %stbtt__handle_clipped_edge.exit379.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aeu = fcmp olt float %i.wv, %i.aes
  br i1 %i.aeu, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.aev = fsub float %i.sa, %i.wn
  %i.aew = fsub float %i.aes, %i.wv
  %i.aex = fmul float %i.aev, %i.aew
  %i.aey = fsub float %i.kg, %i.wv
  %i.aez = fdiv float %i.aex, %i.aey
  %i.afa = fadd float %i.aez, %i.wn
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.055.i394.i.i.i = phi float [ %i.afa, %bb.ei ], [ %i.wn, %bb.eh ] ; 4 uses
  %.054.i395.i.i.i = phi float [ %i.aes, %bb.ei ], [ %i.wv, %bb.eh ] ; 3 uses
  %i.afb = fcmp ogt float %i.kg, %i.aeq
  br i1 %i.afb, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.afc = fsub float %i.sa, %.055.i394.i.i.i
  %i.afd = fsub float %i.aeq, %i.kg
  %i.afe = fmul float %i.afd, %i.afc
  %i.aff = fsub float %i.kg, %.054.i395.i.i.i
  %i.afg = fdiv float %i.afe, %i.aff
  %i.afh = fadd float %i.sa, %i.afg
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %.053.i396.i.i.i = phi float [ %i.afh, %bb.ek ], [ %i.sa, %bb.ej ] ; 3 uses
  %.0.i397.i.i.i = phi float [ %i.aeq, %bb.ek ], [ %i.kg, %bb.ej ] ; 2 uses
  %i.afi = fcmp ugt float %.055.i394.i.i.i, %i.wn
  %i.afj = fcmp ugt float %.053.i396.i.i.i, %i.wn
  %or.cond.i398.i.i.i = select i1 %i.afi, i1 true, i1 %i.afj
  br i1 %or.cond.i398.i.i.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.afk = load float, ptr %i.wh, align 4, !tbaa !857
  %i.afl = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.afn = load float, ptr %i.afm, align 4, !tbaa !54
  %i.afo = tail call float @llvm.fmuladd.f32(float %i.afk, float %i.afl, float %i.afn)
  store float %i.afo, ptr %i.afm, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.en:                                            ; preds = %bb.el
  %i.afp = fcmp ult float %.055.i394.i.i.i, %i.wp
  %i.afq = fcmp ult float %.053.i396.i.i.i, %i.wp
  %or.cond62.i399.i.i.i = select i1 %i.afp, i1 true, i1 %i.afq
  br i1 %or.cond62.i399.i.i.i, label %bb.eo, label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.eo:                                            ; preds = %bb.en
  %i.afr = load float, ptr %i.wh, align 4, !tbaa !857
  %i.afs = fsub float %.0.i397.i.i.i, %.054.i395.i.i.i
  %i.aft = fmul float %i.afs, %i.afr
  %i.afu = fsub float %.055.i394.i.i.i, %i.wn
  %i.afv = fsub float %.053.i396.i.i.i, %i.wn
  %i.afw = fadd float %i.afu, %i.afv
  %i.afx = fmul float %i.afw, 5.000000e-01
  %i.afy = fsub float 1.000000e+00, %i.afx
  %i.afz = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.aga = load float, ptr %i.afz, align 4, !tbaa !54
  %i.agb = tail call float @llvm.fmuladd.f32(float %i.aft, float %i.afy, float %i.aga)
  store float %i.agb, ptr %i.afz, align 4, !tbaa !54
  br label %stbtt__handle_clipped_edge.exit379.i.i.i

bb.ep:                                            ; preds = %bb.dj
  %i.agc = fcmp ogt float %i.sa, %i.wn
  %or.cond341.i.i.i = and i1 %i.wy, %i.agc
  br i1 %or.cond341.i.i.i, label %bb.eq, label %bb.fl

bb.eq:                                            ; preds = %bb.ep
  %i.agd = fcmp oeq float %i.wv, %i.kf
  br i1 %i.agd, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.age = load float, ptr %i.si, align 4, !tbaa !855 ; 4 uses
  %i.agf = fcmp olt float %i.age, %i.kf
  br i1 %i.agf, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.agg = load float, ptr %i.sd, align 8, !tbaa !867 ; 4 uses
  %i.agh = fcmp olt float %i.wv, %i.agg
  br i1 %i.agh, label %stbtt__handle_clipped_edge.exit407.i.i.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.agi = fcmp ogt float %i.agg, %i.kf
  br i1 %i.agi, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.agj = fsub float %i.agg, %i.kf
  %i.agk = extractelement <2 x float> %i.ws, i64 0
  %i.agl = fmul float %i.agk, %i.agj
  %i.agm = fsub float %i.wv, %i.kf
  %i.agn = fdiv float %i.agl, %i.agm
  %i.ago = fadd float %i.mx, %i.agn
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.055.i401.i.i.i = phi float [ %i.ago, %bb.eu ], [ %i.mx, %bb.et ] ; 4 uses
  %.054.i402.i.i.i = phi float [ %i.agg, %bb.eu ], [ %i.kf, %bb.et ] ; 3 uses
  %i.agp = fcmp ogt float %i.wv, %i.age
  br i1 %i.agp, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.agq = fsub float %i.wn, %.055.i401.i.i.i
  %i.agr = fsub float %i.age, %i.wv
  %i.ags = fmul float %i.agr, %i.agq
  %i.agt = fsub float %i.wv, %.054.i402.i.i.i
  %i.agu = fdiv float %i.ags, %i.agt
  %i.agv = fadd float %i.agu, %i.wn
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %.053.i403.i.i.i = phi float [ %i.agv, %bb.ew ], [ %i.wn, %bb.ev ] ; 3 uses
  %.0.i404.i.i.i = phi float [ %i.age, %bb.ew ], [ %i.wv, %bb.ev ] ; 2 uses
  %i.agw = fcmp ugt float %.055.i401.i.i.i, %i.wn
  %i.agx = fcmp ugt float %.053.i403.i.i.i, %i.wn
  %or.cond.i405.i.i.i = select i1 %i.agw, i1 true, i1 %i.agx
  br i1 %or.cond.i405.i.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.agy = load float, ptr %i.wh, align 4, !tbaa !857
  %i.agz = fsub float %.0.i404.i.i.i, %.054.i402.i.i.i
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %.082.i.i, i64 %indvars.iv.i.i99.i ; 2 uses
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !54
end_hunk_1
begin_hunk_2_@stbtt_GetGlyphSDF:bb.a
.lr.ph.i:                                         ; preds = %bb.t
  %i.dz = fmul float %i.dv, 0.000000e+00
  %i.ea = fmul float %.0150.i, 0.000000e+00
  %i.eb = fadd float %i.dv, %i.ea
  %i.ec = fsub float %i.dz, %.0150.i
  br label %bb.u

bb.u:                                             ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 2 uses
  %.0197.i = phi i32 [ 0, %.lr.ph.i ], [ %.9.i.fr, %.thread.i ] ; 11 uses
  %i.ed = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv.i ; 11 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 12
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !273
  switch i8 %i.ef, label %.thread.i [
    i8 2, label %bb.v
    i8 3, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.eg = getelementptr i8, ptr %i.ed, i64 -14
  %i.eh = load <2 x i16>, ptr %i.eg, align 2, !tbaa !106 ; 3 uses
  %i.ei = extractelement <2 x i16> %i.eh, i64 1   ; 4 uses
  %i.ej = extractelement <2 x i16> %i.eh, i64 0
  %i.ek = sext i16 %i.ej to i32                   ; 2 uses
  %i.el = sext i16 %i.ei to i32
  %i.em = load i16, ptr %i.ed, align 2, !tbaa !274
  %i.en = sext i16 %i.em to i32                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !275 ; 4 uses
  %i.eq = sext i16 %i.ep to i32
  %i.er = icmp slt i16 %i.ei, %i.ep
  %i.es = call i16 @llvm.smin.i16(i16 %i.ei, i16 %i.ep)
  %i.et = sitofp i16 %i.es to float
  %i.eu = fcmp ogt float %.0150.i, %i.et
  br i1 %i.eu, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.ev = call i16 @llvm.smax.i16(i16 %i.ei, i16 %i.ep)
  %i.ew = sitofp i16 %i.ev to float
  %i.ex = fcmp olt float %.0150.i, %i.ew
  br i1 %i.ex, label %bb.x, label %.thread.i

bb.x:                                             ; preds = %bb.w
  %i.ey = call i32 @llvm.smin.i32(i32 %i.ek, i32 %i.en)
  %i.ez = sitofp i32 %i.ey to float
  %i.fa = fcmp ogt float %i.dv, %i.ez
  br i1 %i.fa, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %bb.x
  %i.fb = sitofp <2 x i16> %i.eh to <2 x float>   ; 2 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 1
  %i.fd = fsub float %.0150.i, %i.fc
  %i.fe = sub nsw i32 %i.eq, %i.el
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fdiv float %i.fd, %i.ff
  %i.fh = sub nsw i32 %i.en, %i.ek
  %i.fi = sitofp i32 %i.fh to float
  %i.fj = extractelement <2 x float> %i.fb, i64 0
  %i.fk = call float @llvm.fmuladd.f32(float %i.fg, float %i.fi, float %i.fj)
  %i.fl = fcmp olt float %i.fk, %i.dv
  %i.fm = select i1 %i.er, i32 1, i32 -1
  %i.fn = select i1 %i.fl, i32 %i.fm, i32 0
  %.1.i = add nsw i32 %i.fn, %.0197.i
  br label %.thread.i

bb.z:                                             ; preds = %bb.u
  %i.fo = getelementptr i8, ptr %i.ed, i64 -14    ; 2 uses
  %i.fp = getelementptr i8, ptr %i.ed, i64 -12
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !276 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !277 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.fv = load i16, ptr %i.fp, align 2, !tbaa !275 ; 6 uses
  %i.fw = load i16, ptr %i.fo, align 2, !tbaa !274 ; 2 uses
  %i.fx = sext i16 %i.fv to i32
  %i.fy = load i16, ptr %i.fu, align 2, !tbaa !275 ; 6 uses
  %i.fz = load i16, ptr %i.ed, align 2, !tbaa !274 ; 2 uses
  %i.ga = call i16 @llvm.smin.i16(i16 %i.fr, i16 %i.fz)
  %..i = call i16 @llvm.smin.i16(i16 %i.ga, i16 %i.fw)
  %i.gb = call i16 @llvm.smin.i16(i16 %i.ft, i16 %i.fy)
  %i.gc = call i16 @llvm.smin.i16(i16 %i.fv, i16 %i.gb)
  %i.gd = call i16 @llvm.smax.i16(i16 %i.ft, i16 %i.fy)
  %i.ge = call i16 @llvm.smax.i16(i16 %i.fv, i16 %i.gd)
  %i.gf = sitofp i16 %i.gc to float
  %i.gg = fcmp ogt float %.0150.i, %i.gf
  %i.gh = sitofp i16 %i.ge to float
  %i.gi = fcmp olt float %.0150.i, %i.gh
  %or.cond162.i = and i1 %i.gg, %i.gi
  %i.gj = sitofp i16 %..i to float
  %i.gk = fcmp ogt float %i.dv, %i.gj
  %or.cond164.i = select i1 %or.cond162.i, i1 %i.gk, i1 false
  br i1 %or.cond164.i, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.gl = load <2 x i16>, ptr %i.ed, align 2, !tbaa !106 ; 2 uses
  %i.gm = load <2 x i16>, ptr %i.fo, align 2, !tbaa !106 ; 2 uses
  %i.gn = shufflevector <2 x i16> %i.gl, <2 x i16> %i.gm, <2 x i32> <i32 0, i32 2>
  %i.go = sitofp <2 x i16> %i.gn to <2 x float>   ; 3 uses
  %i.gp = shufflevector <2 x i16> %i.gl, <2 x i16> %i.gm, <2 x i32> <i32 1, i32 3>
  %i.gq = sitofp <2 x i16> %i.gp to <2 x float>   ; 3 uses
  %i.gr = sitofp i16 %i.fr to float               ; 4 uses
  %i.gs = sitofp i16 %i.ft to float               ; 4 uses
  %i.gt = extractelement <2 x float> %i.go, i64 1 ; 3 uses
  %i.gu = fcmp une float %i.gt, %i.gr
  %i.gv = extractelement <2 x float> %i.gq, i64 1 ; 3 uses
  %i.gw = fcmp une float %i.gv, %i.gs
  %narrow.i.not.i = or i1 %i.gu, %i.gw
  br i1 %narrow.i.not.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gx = extractelement <2 x float> %i.go, i64 0 ; 2 uses
  %i.gy = fcmp une float %i.gx, %i.gr
  %i.gz = extractelement <2 x float> %i.gq, i64 0 ; 2 uses
  %i.ha = fcmp une float %i.gz, %i.gs
  %narrow.i182.not.i = or i1 %i.gy, %i.ha
  br i1 %narrow.i182.not.i, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.hb = sext i16 %i.fw to i32                   ; 2 uses
  %i.hc = sext i16 %i.fz to i32                   ; 2 uses
  %i.hd = sext i16 %i.fy to i32
  %i.he = icmp slt i16 %i.fv, %i.fy
  %i.hf = call i16 @llvm.smin.i16(i16 %i.fv, i16 %i.fy)
  %i.hg = sitofp i16 %i.hf to float
  %i.hh = fcmp ogt float %.0150.i, %i.hg
  br i1 %i.hh, label %bb.ad, label %.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.hi = call i16 @llvm.smax.i16(i16 %i.fv, i16 %i.fy)
  %i.hj = sitofp i16 %i.hi to float
  %i.hk = fcmp olt float %.0150.i, %i.hj
  br i1 %i.hk, label %bb.ae, label %.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.hl = call i32 @llvm.smin.i32(i32 %i.hb, i32 %i.hc)
  %i.hm = sitofp i32 %i.hl to float
  %i.hn = fcmp ogt float %i.dv, %i.hm
  br i1 %i.hn, label %bb.af, label %.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.ho = fsub float %.0150.i, %i.gv
  %i.hp = sub nsw i32 %i.hd, %i.fx
  %i.hq = sitofp i32 %i.hp to float
  %i.hr = fdiv float %i.ho, %i.hq
  %i.hs = sub nsw i32 %i.hc, %i.hb
  %i.ht = sitofp i32 %i.hs to float
  %i.hu = call float @llvm.fmuladd.f32(float %i.hr, float %i.ht, float %i.gt)
  %i.hv = fcmp olt float %i.hu, %i.dv
  %i.hw = select i1 %i.he, i32 1, i32 -1
  %i.hx = select i1 %i.hv, i32 %i.hw, i32 0
  %.4.i = add nsw i32 %i.hx, %.0197.i
  br label %.thread.i

bb.ag:                                            ; preds = %bb.ab
  %i.hy = fneg float %i.gt
  %i.hz = call float @llvm.copysign.f32(float 0.000000e+00, float %i.hy)
  %i.ia = fadd float %i.hz, %i.gv                 ; 3 uses
  %i.ib = fneg float %i.gr
  %i.ic = call float @llvm.copysign.f32(float 0.000000e+00, float %i.ib)
  %i.id = fadd float %i.ic, %i.gs                 ; 2 uses
  %i.ie = fneg float %i.gx
  %i.if = call float @llvm.copysign.f32(float 0.000000e+00, float %i.ie)
  %i.ig = fadd float %i.if, %i.gz
  %i.ih = call float @llvm.fmuladd.f32(float %i.id, float -2.000000e+00, float %i.ia)
  %i.ii = fadd float %i.ih, %i.ig                 ; 5 uses
  %i.ij = fsub float %i.id, %i.ia                 ; 7 uses
  %i.ik = fadd float %i.ec, %i.ia                 ; 2 uses
  %i.il = fcmp une float %i.ii, 0.000000e+00
  br i1 %i.il, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.im = fneg float %i.ik
  %i.in = fmul float %i.ii, %i.im
  %i.io = call float @llvm.fmuladd.f32(float %i.ij, float %i.ij, float %i.in) ; 2 uses
  %i.ip = fcmp ogt float %i.io, 0.000000e+00
  br i1 %i.ip, label %bb.ai, label %stbtt__ray_intersect_bezier.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.iq = fdiv float -1.000000e+00, %i.ii         ; 2 uses
  %sqrtf.i.i = call float @sqrtf(float noundef %i.io) #50 ; 3 uses
  %i.ir = fadd float %i.ij, %sqrtf.i.i
  %i.is = fmul float %i.iq, %i.ir                 ; 4 uses
  %i.it = fsub float %i.ij, %sqrtf.i.i
  %i.iu = fmul float %i.iq, %i.it                 ; 5 uses
  %i.iv = fcmp oge float %i.is, 0.000000e+00
  %i.iw = fcmp ole float %i.is, 1.000000e+00
  %or.cond.not.not.not.i.i = and i1 %i.iv, %i.iw  ; 3 uses
  %i.ix = fcmp ule float %sqrtf.i.i, 0.000000e+00
  %i.iy = fcmp ult float %i.iu, 0.000000e+00
  %or.cond117.i.i = or i1 %i.ix, %i.iy
  %i.iz = fcmp ugt float %i.iu, 1.000000e+00
  %or.cond118.i.i = or i1 %i.iz, %or.cond117.i.i
  br i1 %or.cond118.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.0107.i.i = select i1 %or.cond.not.not.not.i.i, float %i.is, float %i.iu
  br label %.thread21.i.i

bb.ak:                                            ; preds = %bb.ag
  %i.ja = fmul float %i.ij, -2.000000e+00
  %i.jb = fdiv float %i.ik, %i.ja                 ; 3 uses
  %i.jc = fcmp ult float %i.jb, 0.000000e+00
  %i.jd = fcmp ugt float %i.jb, 1.000000e+00
  %or.cond119.i.i = or i1 %i.jc, %i.jd
  br i1 %or.cond119.i.i, label %stbtt__ray_intersect_bezier.exit.i, label %.thread21.i.i

bb.al:                                            ; preds = %bb.ai
  br i1 %or.cond.not.not.not.i.i, label %.thread21.i.i, label %stbtt__ray_intersect_bezier.exit.i

.thread21.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.aj
  %.327.i.i = phi i1 [ false, %bb.al ], [ %or.cond.not.not.not.i.i, %bb.aj ], [ false, %bb.ak ]
  %.110626.i.i = phi float [ %i.iu, %bb.al ], [ %i.iu, %bb.aj ], [ 0.000000e+00, %bb.ak ] ; 5 uses
  %.311025.i.i = phi float [ %i.is, %bb.al ], [ %.0107.i.i, %bb.aj ], [ %i.jb, %bb.ak ] ; 5 uses
  %i.je = call <2 x float> @llvm.copysign.v2f32(<2 x float> zeroinitializer, <2 x float> %i.gq)
  %i.jf = call float @llvm.copysign.f32(float 0.000000e+00, float %i.gs)
  %i.jg = fadd float %i.jf, %i.gr
  %i.jh = fadd <2 x float> %i.je, %i.go           ; 2 uses
  %i.ji = extractelement <2 x float> %i.jh, i64 1 ; 3 uses
  %i.jj = fsub float %i.jg, %i.ji                 ; 2 uses
  %i.jk = extractelement <2 x float> %i.jh, i64 0
  %i.jl = fsub float %i.jk, %i.ji                 ; 2 uses
  %i.jm = fsub float %i.ji, %i.eb                 ; 2 uses
  %i.jn = call float @llvm.fmuladd.f32(float %.311025.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.jo = fmul float %.311025.i.i, %i.jn
  %i.jp = call float @llvm.fmuladd.f32(float %i.jo, float %i.jj, float %i.jm)
  %i.jq = fmul float %.311025.i.i, %.311025.i.i
  %i.jr = call float @llvm.fmuladd.f32(float %i.jq, float %i.jl, float %i.jp) ; 2 uses
  %i.js = call float @llvm.fmuladd.f32(float %i.ii, float %.311025.i.i, float %i.ij) ; 2 uses
  br i1 %.327.i.i, label %bb.am, label %stbtt__ray_intersect_bezier.exit.i

bb.am:                                            ; preds = %.thread21.i.i
  %i.jt = call float @llvm.fmuladd.f32(float %.110626.i.i, float -2.000000e+00, float 2.000000e+00)
  %i.ju = fmul float %.110626.i.i, %i.jt
  %i.jv = call float @llvm.fmuladd.f32(float %i.ju, float %i.jj, float %i.jm)
  %i.jw = fmul float %.110626.i.i, %.110626.i.i
  %i.jx = call float @llvm.fmuladd.f32(float %i.jw, float %i.jl, float %i.jv)
  %i.jy = call float @llvm.fmuladd.f32(float %i.ii, float %.110626.i.i, float %i.ij)
  %i.jz = fcmp olt float %i.jx, 0.000000e+00
  %i.ka = fcmp olt float %i.jy, 0.000000e+00
  %i.kb = select i1 %i.ka, i32 -1, i32 1
  %i.kc = select i1 %i.jz, i32 %i.kb, i32 0
  br label %stbtt__ray_intersect_bezier.exit.i

stbtt__ray_intersect_bezier.exit.i:               ; preds = %bb.am, %.thread21.i.i, %bb.al, %bb.ak, %bb.ah
  %.sroa.4.0.i = phi float [ %i.js, %bb.am ], [ %i.js, %.thread21.i.i ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %.sroa.0.0.i = phi float [ %i.jr, %bb.am ], [ %i.jr, %.thread21.i.i ], [ undef, %bb.al ], [ undef, %bb.ah ], [ undef, %bb.ak ]
  %i.kd = phi i1 [ true, %bb.am ], [ true, %.thread21.i.i ], [ false, %bb.al ], [ false, %bb.ah ], [ false, %bb.ak ]
  %or.cond7.i = phi i32 [ %i.kc, %bb.am ], [ 0, %.thread21.i.i ], [ 0, %bb.al ], [ 0, %bb.ah ], [ 0, %bb.ak ]
  %i.ke = fcmp olt float %.sroa.0.0.i, 0.000000e+00
  %or.cond.i = select i1 %i.kd, i1 %i.ke, i1 false
  %i.kf = fcmp olt float %.sroa.4.0.i, 0.000000e+00
  %i.kg = select i1 %i.kf, i32 -1, i32 1
  %i.kh = select i1 %or.cond.i, i32 %i.kg, i32 0
  %.5.i = add i32 %or.cond7.i, %.0197.i
  %.6.i = add i32 %.5.i, %i.kh
  br label %.thread.i

.thread.i:                                        ; preds = %stbtt__ray_intersect_bezier.exit.i, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.9.i = phi i32 [ %.0197.i, %bb.u ], [ %.6.i, %stbtt__ray_intersect_bezier.exit.i ], [ %.0197.i, %bb.z ], [ %.4.i, %bb.af ], [ %.0197.i, %bb.ae ], [ %.0197.i, %bb.ad ], [ %.0197.i, %bb.ac ], [ %.0197.i, %bb.v ], [ %.0197.i, %bb.w ], [ %.0197.i, %bb.x ], [ %.1.i, %bb.y ]
  %.9.i.fr = freeze i32 %.9.i                     ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__compute_crossings_x.exit, label %bb.u, !llvm.loop !898

stbtt__compute_crossings_x.exit:                  ; preds = %.thread.i
  %i.ki = icmp eq i32 %.9.i.fr, 0
  br label %.lr.ph530

.lr.ph530:                                        ; preds = %stbtt__compute_crossings_x.exit, %.thread
  %indvars.iv537 = phi i64 [ %indvars.iv.next538, %.thread ], [ 0, %stbtt__compute_crossings_x.exit ] ; 4 uses
  %.0435529 = phi float [ %.9, %.thread ], [ 9.999990e+05, %stbtt__compute_crossings_x.exit ] ; 10 uses
  %i.kj = getelementptr inbounds nuw [14 x i8], ptr %.pre.pre, i64 %indvars.iv537 ; 5 uses
  %i.kk = load <2 x i16>, ptr %i.kj, align 2, !tbaa !106
  %i.kl = sitofp <2 x i16> %i.kk to <2 x float>
  %i.km = fmul <2 x float> %i.bi, %i.kl           ; 10 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 12
  %i.ko = load i8, ptr %i.kn, align 2, !tbaa !273
  switch i8 %i.ko, label %.thread [
    i8 2, label %bb.an
    i8 3, label %bb.aq
  ]

bb.an:                                            ; preds = %.lr.ph530
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv537
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !54 ; 2 uses
  %i.kr = fcmp une float %i.kq, 0.000000e+00
  br i1 %i.kr, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.ks = getelementptr i8, ptr %i.kj, i64 -14
  %i.kt = load <2 x i16>, ptr %i.ks, align 2, !tbaa !106
  %i.ku = sitofp <2 x i16> %i.kt to <2 x float>   ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  %i.kw = fmul float %1, %i.kv
  %i.kx = extractelement <2 x float> %i.ku, i64 1
  %i.ky = fmul float %i.kx, %i.ao
  %i.kz = fmul float %.0435529, %.0435529
  %i.la = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lb = insertelement <2 x float> %i.la, float %i.ky, i64 1
  %i.lc = insertelement <2 x float> %i.km, float %i.dk, i64 0
  %i.ld = fsub <2 x float> %i.lb, %i.lc           ; 5 uses
  %i.le = insertelement <2 x float> %i.km, float %i.kw, i64 1
  %i.lf = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lg = insertelement <2 x float> %i.lf, float %i.du, i64 0
  %i.lh = fsub <2 x float> %i.le, %i.lg           ; 5 uses
  %i.li = fneg <2 x float> %i.lh
  %i.lj = shufflevector <2 x float> %i.ld, <2 x float> %i.li, <2 x i32> <i32 0, i32 2>
  %i.lk = fmul <2 x float> %i.ld, %i.lj
  %i.ll = shufflevector <2 x float> %i.lh, <2 x float> %i.ld, <2 x i32> <i32 0, i32 2>
  %i.lm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.ll, <2 x float> %i.lk) ; 2 uses
  %i.ln = extractelement <2 x float> %i.lm, i64 0 ; 2 uses
  %i.lo = fcmp olt float %i.ln, %i.kz
  %sqrt520 = call float @llvm.sqrt.f32(float %i.ln)
  %.1436 = select i1 %i.lo, float %sqrt520, float %.0435529 ; 3 uses
  %i.lp = extractelement <2 x float> %i.lm, i64 1
  %i.lq = call float @llvm.fabs.f32(float %i.lp)
  %i.lr = fmul float %i.kq, %i.lq                 ; 2 uses
  %i.ls = fcmp olt float %i.lr, %.1436
  br i1 %i.ls, label %bb.ap, label %.thread

bb.ap:                                            ; preds = %bb.ao
  %i.lt = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lu = fmul <2 x float> %i.lt, %i.ld
  %i.lv = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lh, <2 x float> %i.lu) ; 2 uses
  %i.lx = extractelement <2 x float> %i.lw, i64 0
  %i.ly = fneg float %i.lx
  %i.lz = extractelement <2 x float> %i.lw, i64 1
  %i.ma = fdiv float %i.ly, %i.lz                 ; 2 uses
  %i.mb = fcmp oge float %i.ma, 0.000000e+00
  %i.mc = fcmp ole float %i.ma, 1.000000e+00
  %or.cond = and i1 %i.mb, %i.mc
  %.2437 = select i1 %or.cond, float %i.lr, float %.1436
  br label %.thread

bb.aq:                                            ; preds = %.lr.ph530
  %i.md = getelementptr i8, ptr %i.kj, i64 -14
  %i.me = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.mf = load <2 x i16>, ptr %i.md, align 2, !tbaa !106
  %i.mg = sitofp <2 x i16> %i.mf to <2 x float>
  %i.mh = fmul <2 x float> %i.bi, %i.mg           ; 4 uses
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.mj = load <2 x i16>, ptr %i.me, align 2, !tbaa !106
  %i.mk = sitofp <2 x i16> %i.mj to <2 x float>
  %i.ml = fmul <2 x float> %i.bi, %i.mk           ; 6 uses
  %i.mm = fcmp olt <2 x float> %i.km, %i.ml
  %i.mn = shufflevector <2 x i1> %i.mm, <2 x i1> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.mo = shufflevector <2 x float> %i.ml, <2 x float> %i.km, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.mp = shufflevector <2 x float> %i.km, <2 x float> %i.ml, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.mq = select <4 x i1> %i.mn, <4 x float> %i.mo, <4 x float> %i.mp ; 3 uses
  %i.mr = fcmp olt <4 x float> %i.mq, %i.mi
  %i.ms = shufflevector <4 x float> %i.mi, <4 x float> %i.mq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.mt = shufflevector <2 x float> %i.mh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mu = shufflevector <4 x float> %i.mq, <4 x float> %i.mt, <4 x i32> <i32 0, i32 1, i32 5, i32 4>
  %i.mv = select <4 x i1> %i.mr, <4 x float> %i.ms, <4 x float> %i.mu ; 2 uses
  %i.mw = shufflevector <4 x float> %i.mv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.mx = insertelement <2 x float> poison, float %.0435529, i64 0
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mz = fsub <2 x float> %i.mw, %i.my           ; 2 uses
  %i.na = extractelement <2 x float> %i.mz, i64 1
  %i.nb = fcmp ogt float %i.du, %i.na
  %i.nc = extractelement <2 x float> %i.mz, i64 0
  %i.nd = fcmp ogt float %i.dk, %i.nc
  %i.ne = shufflevector <4 x float> %i.mv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.nf = fadd <2 x float> %i.my, %i.ne           ; 2 uses
  %i.ng = extractelement <2 x float> %i.nf, i64 1
  %i.nh = fcmp olt float %i.du, %i.ng
  %or.cond484 = select i1 %i.nb, i1 %i.nh, i1 false
  %or.cond486 = select i1 %or.cond484, i1 %i.nd, i1 false
  %i.ni = extractelement <2 x float> %i.nf, i64 0
  %i.nj = fcmp olt float %i.dk, %i.ni
  %or.cond488 = select i1 %or.cond486, i1 %i.nj, i1 false
  br i1 %or.cond488, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.nk = extractelement <2 x float> %i.km, i64 0 ; 5 uses
  %i.nl = extractelement <2 x float> %i.ml, i64 0 ; 4 uses
  %foldExtExtBinop = fsub <2 x float> %i.ml, %i.km ; 2 uses
  %i.nm = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 6 uses
  %i.nn = extractelement <2 x float> %i.km, i64 1 ; 6 uses
  %i.no = extractelement <2 x float> %i.ml, i64 1 ; 5 uses
  %i.np = fsub float %i.no, %i.nn                 ; 7 uses
  %i.nq = call float @llvm.fmuladd.f32(float %i.nl, float -2.000000e+00, float %i.nk)
  %i.nr = extractelement <2 x float> %i.mh, i64 0 ; 4 uses
  %i.ns = fadd float %i.nr, %i.nq                 ; 3 uses
  %i.nt = call float @llvm.fmuladd.f32(float %i.no, float -2.000000e+00, float %i.nn)
  %i.nu = extractelement <2 x float> %i.mh, i64 1 ; 4 uses
  %i.nv = fadd float %i.nu, %i.nt                 ; 3 uses
  %i.nw = fsub float %i.nk, %i.du                 ; 6 uses
  %i.nx = fsub float %i.nn, %i.dk                 ; 6 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv537
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !54 ; 4 uses
  %i.oa = fcmp oeq float %i.nz, 0.000000e+00
  %i.ob = fmul float %i.np, %i.nv
  %i.oc = call float @llvm.fmuladd.f32(float %i.nm, float %i.ns, float %i.ob)
  %i.od = fmul float %i.oc, 3.000000e+00          ; 4 uses
  br i1 %i.oa, label %bb.as, label %bb.ax

bb.as:                                            ; preds = %bb.ar
  %i.oe = fmul float %i.np, %i.np
  %i.of = call float @llvm.fmuladd.f32(float %i.nm, float %i.nm, float %i.oe)
  %i.og = fmul float %i.nx, %i.nv
  %i.oh = call float @llvm.fmuladd.f32(float %i.nw, float %i.ns, float %i.og)
  %i.oi = call float @llvm.fmuladd.f32(float %i.of, float 2.000000e+00, float %i.oh) ; 6 uses
  %i.oj = fmul float %i.nx, %i.np
  %i.ok = call float @llvm.fmuladd.f32(float %i.nw, float %i.nm, float %i.oj) ; 2 uses
  %i.ol = fcmp oeq float %i.od, 0.000000e+00
  br i1 %i.ol, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.om = fcmp une float %i.oi, 0.000000e+00
  br i1 %i.om, label %bb.au, label %stbtt__solve_cubic.exit

bb.au:                                            ; preds = %bb.at
  %i.on = fneg float %i.ok
  %i.oo = fdiv float %i.on, %i.oi
  br label %stbtt__solve_cubic.exit

bb.av:                                            ; preds = %bb.as
  %i.op = fmul float %i.od, 4.000000e+00
  %i.oq = fneg float %i.ok
  %i.or = fmul float %i.op, %i.oq
  %i.os = call float @llvm.fmuladd.f32(float %i.oi, float %i.oi, float %i.or) ; 2 uses
  %i.ot = fcmp olt float %i.os, 0.000000e+00
  br i1 %i.ot, label %stbtt__solve_cubic.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %sqrtf = call float @sqrtf(float noundef %i.os) #50 ; 2 uses
  %i.ou = fneg float %i.oi
  %i.ov = fmul float %i.od, 2.000000e+00
  %i.ow = fsub float %i.ou, %sqrtf
  %i.ox = fsub float %sqrtf, %i.oi
  %i.oy = insertelement <2 x float> poison, float %i.ov, i64 0
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pa = insertelement <2 x float> poison, float %i.ow, i64 0
  %i.pb = insertelement <2 x float> %i.pa, float %i.ox, i64 1
  %i.pc = fdiv <2 x float> %i.pb, %i.oz           ; 2 uses
  %i.pd = extractelement <2 x float> %i.pc, i64 0
  %i.pe = extractelement <2 x float> %i.pc, i64 1
  br label %stbtt__solve_cubic.exit

bb.ax:                                            ; preds = %bb.ar
  %i.pf = fmul float %i.od, %i.nz                 ; 5 uses
  %i.pg = fmul float %i.np, %i.np
  %i.ph = call float @llvm.fmuladd.f32(float %i.nm, float %i.nm, float %i.pg)
  %i.pi = fmul float %i.nx, %i.nv
  %i.pj = call float @llvm.fmuladd.f32(float %i.nw, float %i.ns, float %i.pi)
  %i.pk = call float @llvm.fmuladd.f32(float %i.ph, float 2.000000e+00, float %i.pj)
  %i.pl = fmul float %i.pk, %i.nz                 ; 2 uses
  %i.pm = fdiv float %i.pf, -3.000000e+00         ; 4 uses
  %i.pn = fmul float %i.pf, %i.pf
  %i.po = fdiv float %i.pn, 3.000000e+00
  %i.pp = fsub float %i.pl, %i.po                 ; 4 uses
  %i.pq = fmul float %i.pf, 2.000000e+00
  %i.pr = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.ps = insertelement <2 x float> %i.pr, float %i.pl, i64 1
  %i.pt = insertelement <2 x float> <float poison, float -9.000000e+00>, float %i.np, i64 0
  %i.pu = fmul <2 x float> %i.ps, %i.pt
  %i.pv = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.pw = insertelement <2 x float> %i.pv, float %i.pq, i64 1
  %i.px = insertelement <2 x float> %foldExtExtBinop, float %i.pf, i64 1 ; 2 uses
  %i.py = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pw, <2 x float> %i.px, <2 x float> %i.pu)
  %i.pz = insertelement <2 x float> %i.px, float %i.nz, i64 0
  %i.qa = fmul <2 x float> %i.py, %i.pz           ; 2 uses
  %i.qb = extractelement <2 x float> %i.qa, i64 1
  %i.qc = fdiv float %i.qb, 2.700000e+01
  %i.qd = extractelement <2 x float> %i.qa, i64 0
  %i.qe = fadd float %i.qd, %i.qc                 ; 5 uses
  %i.qf = fmul float %i.pp, %i.pp
  %i.qg = fmul float %i.pp, %i.qf                 ; 2 uses
  %i.qh = fmul float %i.qg, 4.000000e+00
  %i.qi = fdiv float %i.qh, 2.700000e+01
  %i.qj = call float @llvm.fmuladd.f32(float %i.qe, float %i.qe, float %i.qi) ; 2 uses
  %i.qk = fcmp ult float %i.qj, 0.000000e+00
  br i1 %i.qk, label %bb.bd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %sqrtf47.i = call float @sqrtf(float noundef %i.qj) #50 ; 2 uses
  %i.ql = fneg float %i.qe
  %i.qm = fsub float %sqrtf47.i, %i.qe
  %i.qn = fmul float %i.qm, 5.000000e-01          ; 3 uses
  %i.qo = fsub float %i.ql, %sqrtf47.i
  %i.qp = fmul float %i.qo, 5.000000e-01          ; 3 uses
  %i.qq = fcmp olt float %i.qn, 0.000000e+00
  br i1 %i.qq, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.qr = fneg float %i.qn
  %i.qs = fpext float %i.qr to double
  %i.qt = call double @pow(double noundef %i.qs, double noundef f0x3FD5555560000000) #50
  %i.qu = fptrunc double %i.qt to float
  %i.qv = fneg float %i.qu
  br label %stbtt__cuberoot.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.qw = fpext float %i.qn to double
  %i.qx = call double @pow(double noundef %i.qw, double noundef f0x3FD5555560000000) #50
  %i.qy = fptrunc double %i.qx to float
  br label %stbtt__cuberoot.exit.i

stbtt__cuberoot.exit.i:                           ; preds = %bb.ba, %bb.az
  %.0.i.i = phi float [ %i.qv, %bb.az ], [ %i.qy, %bb.ba ]
  %i.qz = fcmp olt float %i.qp, 0.000000e+00
  br i1 %i.qz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %stbtt__cuberoot.exit.i
  %i.ra = fneg float %i.qp
  %i.rb = fpext float %i.ra to double
  %i.rc = call double @pow(double noundef %i.rb, double noundef f0x3FD5555560000000) #50
  %i.rd = fptrunc double %i.rc to float
  %i.re = fneg float %i.rd
  br label %stbtt__cuberoot.exit49.i

bb.bc:                                            ; preds = %stbtt__cuberoot.exit.i
  %i.rf = fpext float %i.qp to double
  %i.rg = call double @pow(double noundef %i.rf, double noundef f0x3FD5555560000000) #50
  %i.rh = fptrunc double %i.rg to float
  br label %stbtt__cuberoot.exit49.i

stbtt__cuberoot.exit49.i:                         ; preds = %bb.bc, %bb.bb
  %.0.i48.i = phi float [ %i.re, %bb.bb ], [ %i.rh, %bb.bc ]
  %i.ri = fadd float %i.pm, %.0.i.i
  %i.rj = fadd float %i.ri, %.0.i48.i
  br label %stbtt__solve_cubic.exit

bb.bd:                                            ; preds = %bb.ax
  %i.rk = fdiv float %i.pp, -3.000000e+00
  %sqrtf.i = call float @sqrtf(float noundef %i.rk) #50 ; 2 uses
  %i.rl = fdiv float -2.700000e+01, %i.qg
  %i.rm = fpext float %i.rl to double
  %i.rn = call double @sqrt(double noundef %i.rm) #50
  %i.ro = fneg double %i.rn
  %i.rp = fpext float %i.qe to double
  %i.rq = fmul double %i.rp, %i.ro
  %i.rr = fmul double %i.rq, 5.000000e-01
  %i.rs = call double @acos(double noundef %i.rr) #50
  %i.rt = fptrunc double %i.rs to float
  %i.ru = fdiv float %i.rt, 3.000000e+00
  %i.rv = fpext float %i.ru to double             ; 2 uses
  %i.rw = call double @cos(double noundef %i.rv) #50
  %i.rx = fptrunc double %i.rw to float           ; 3 uses
  %i.ry = fadd double %i.rv, f0xBFF921FAFC8B007A
  %i.rz = call double @cos(double noundef %i.ry) #50
  %i.sa = fptrunc double %i.rz to float
  %i.sb = fmul float %i.sa, f0x3FDDB3D7           ; 2 uses
  %i.sc = fmul float %sqrtf.i, 2.000000e+00
  %i.sd = call float @llvm.fmuladd.f32(float %i.sc, float %i.rx, float %i.pm)
  %i.se = fadd float %i.sb, %i.rx
  %i.sf = fneg float %sqrtf.i                     ; 2 uses
  %i.sg = call float @llvm.fmuladd.f32(float %i.sf, float %i.se, float %i.pm)
  %i.sh = fsub float %i.rx, %i.sb
  %i.si = call float @llvm.fmuladd.f32(float %i.sf, float %i.sh, float %i.pm)
  br label %stbtt__solve_cubic.exit

stbtt__solve_cubic.exit:                          ; preds = %bb.bd, %stbtt__cuberoot.exit49.i, %bb.au, %bb.at, %bb.av, %bb.aw
  %.sroa.0.0 = phi float [ %i.oo, %bb.au ], [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.av ], [ %i.pd, %bb.aw ], [ %i.sd, %bb.bd ], [ %i.rj, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %.sroa.8.0 = phi float [ 0.000000e+00, %bb.au ], [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.av ], [ %i.pe, %bb.aw ], [ %i.sg, %bb.bd ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.au ], [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.av ], [ 0.000000e+00, %bb.aw ], [ %i.si, %bb.bd ], [ 0.000000e+00, %stbtt__cuberoot.exit49.i ] ; 6 uses
  %i.sj = phi i1 [ true, %bb.au ], [ false, %bb.at ], [ false, %bb.av ], [ true, %bb.aw ], [ true, %bb.bd ], [ true, %stbtt__cuberoot.exit49.i ]
  %i.sk = phi i1 [ false, %bb.au ], [ false, %bb.at ], [ false, %bb.av ], [ true, %bb.aw ], [ true, %bb.bd ], [ false, %stbtt__cuberoot.exit49.i ]
  %i.sl = phi i1 [ false, %bb.au ], [ false, %bb.at ], [ false, %bb.av ], [ false, %bb.aw ], [ true, %bb.bd ], [ false, %stbtt__cuberoot.exit49.i ]
  %i.sm = fmul float %i.nx, %i.nx
  %i.sn = call float @llvm.fmuladd.f32(float %i.nw, float %i.nw, float %i.sm) ; 2 uses
  %i.so = fmul float %.0435529, %.0435529
  %i.sp = fcmp olt float %i.sn, %i.so
  %sqrt521 = call float @llvm.sqrt.f32(float %i.sn)
  %.4 = select i1 %i.sp, float %sqrt521, float %.0435529 ; 4 uses
  %i.sq = fcmp oge float %.sroa.0.0, 0.000000e+00
  %i.sr = fcmp ole float %.sroa.0.0, 1.000000e+00
  %i.ss = and i1 %i.sq, %i.sr
  %or.cond7 = select i1 %i.sj, i1 %i.ss, i1 false
  br i1 %or.cond7, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %stbtt__solve_cubic.exit
  %i.st = fsub float 1.000000e+00, %.sroa.0.0     ; 3 uses
  %i.su = fmul float %i.st, %i.st                 ; 2 uses
  %i.sv = fmul nnan float %.sroa.0.0, 2.000000e+00
  %i.sw = fmul float %i.sv, %i.st                 ; 2 uses
  %i.sx = fmul float %i.nl, %i.sw
  %i.sy = call float @llvm.fmuladd.f32(float %i.su, float %i.nk, float %i.sx)
  %i.sz = fmul nnan float %.sroa.0.0, %.sroa.0.0  ; 2 uses
  %i.ta = call float @llvm.fmuladd.f32(float %i.sz, float %i.nr, float %i.sy)
  %i.tb = fmul float %i.no, %i.sw
  %i.tc = call float @llvm.fmuladd.f32(float %i.su, float %i.nn, float %i.tb)
  %i.td = call float @llvm.fmuladd.f32(float %i.sz, float %i.nu, float %i.tc)
  %i.te = fsub float %i.ta, %i.du                 ; 2 uses
  %i.tf = fsub float %i.td, %i.dk                 ; 2 uses
  %i.tg = fmul float %i.tf, %i.tf
  %i.th = call float @llvm.fmuladd.f32(float %i.te, float %i.te, float %i.tg) ; 2 uses
  %i.ti = fmul float %.4, %.4
  %i.tj = fcmp olt float %i.th, %i.ti
  br i1 %i.tj, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %sqrt522 = call float @llvm.sqrt.f32(float %i.th)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %stbtt__solve_cubic.exit
  %.5 = phi float [ %sqrt522, %bb.bf ], [ %.4, %bb.be ], [ %.4, %stbtt__solve_cubic.exit ] ; 4 uses
  %i.tk = fcmp oge float %.sroa.8.0, 0.000000e+00
  %i.tl = fcmp ole float %.sroa.8.0, 1.000000e+00
  %i.tm = and i1 %i.tk, %i.tl
  %or.cond13 = select i1 %i.sk, i1 %i.tm, i1 false
  br i1 %or.cond13, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.tn = fsub float 1.000000e+00, %.sroa.8.0     ; 3 uses
  %i.to = fmul float %i.tn, %i.tn                 ; 2 uses
  %i.tp = fmul nnan float %.sroa.8.0, 2.000000e+00
  %i.tq = fmul float %i.tp, %i.tn                 ; 2 uses
  %i.tr = fmul float %i.nl, %i.tq
  %i.ts = call float @llvm.fmuladd.f32(float %i.to, float %i.nk, float %i.tr)
  %i.tt = fmul nnan float %.sroa.8.0, %.sroa.8.0  ; 2 uses
  %i.tu = call float @llvm.fmuladd.f32(float %i.tt, float %i.nr, float %i.ts)
  %i.tv = fmul float %i.no, %i.tq
  %i.tw = call float @llvm.fmuladd.f32(float %i.to, float %i.nn, float %i.tv)
  %i.tx = call float @llvm.fmuladd.f32(float %i.tt, float %i.nu, float %i.tw)
  %i.ty = fsub float %i.tu, %i.du                 ; 2 uses
  %i.tz = fsub float %i.tx, %i.dk                 ; 2 uses
  %i.ua = fmul float %i.tz, %i.tz
  %i.ub = call float @llvm.fmuladd.f32(float %i.ty, float %i.ty, float %i.ua) ; 2 uses
  %i.uc = fmul float %.5, %.5
  %i.ud = fcmp olt float %i.ub, %i.uc
  br i1 %i.ud, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %sqrt523 = call float @llvm.sqrt.f32(float %i.ub)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi, %bb.bg
  %.6 = phi float [ %sqrt523, %bb.bi ], [ %.5, %bb.bh ], [ %.5, %bb.bg ] ; 4 uses
  %i.ue = fcmp oge float %.sroa.11.0, 0.000000e+00
  %i.uf = fcmp ole float %.sroa.11.0, 1.000000e+00
  %i.ug = and i1 %i.ue, %i.uf
  %or.cond19 = select i1 %i.sl, i1 %i.ug, i1 false
  br i1 %or.cond19, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  %i.uh = fsub float 1.000000e+00, %.sroa.11.0    ; 3 uses
  %i.ui = fmul float %i.uh, %i.uh                 ; 2 uses
  %i.uj = fmul nnan float %.sroa.11.0, 2.000000e+00
  %i.uk = fmul float %i.uj, %i.uh                 ; 2 uses
  %i.ul = fmul float %i.nl, %i.uk
  %i.um = call float @llvm.fmuladd.f32(float %i.ui, float %i.nk, float %i.ul)
  %i.un = fmul nnan float %.sroa.11.0, %.sroa.11.0 ; 2 uses
  %i.uo = call float @llvm.fmuladd.f32(float %i.un, float %i.nr, float %i.um)
  %i.up = fmul float %i.no, %i.uk
  %i.uq = call float @llvm.fmuladd.f32(float %i.ui, float %i.nn, float %i.up)
  %i.ur = call float @llvm.fmuladd.f32(float %i.un, float %i.nu, float %i.uq)
  %i.us = fsub float %i.uo, %i.du                 ; 2 uses
  %i.ut = fsub float %i.ur, %i.dk                 ; 2 uses
  %i.uu = fmul float %i.ut, %i.ut
  %i.uv = call float @llvm.fmuladd.f32(float %i.us, float %i.us, float %i.uu) ; 2 uses
  %i.uw = fmul float %.6, %.6
  %i.ux = fcmp olt float %i.uv, %i.uw
  br i1 %i.ux, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  %sqrt524 = call float @llvm.sqrt.f32(float %i.uv)
  br label %.thread

.thread:                                          ; preds = %.lr.ph530, %bb.an, %bb.bj, %bb.bl, %bb.bk, %bb.aq, %bb.ao, %bb.ap
  %.9 = phi float [ %.0435529, %.lr.ph530 ], [ %.1436, %bb.ao ], [ %.2437, %bb.ap ], [ %.6, %bb.bj ], [ %.0435529, %bb.aq ], [ %sqrt524, %bb.bl ], [ %.6, %bb.bk ], [ %.0435529, %bb.an ] ; 3 uses
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %exitcond541.not = icmp eq i64 %indvars.iv.next538, %wide.trip.count.i
  br i1 %exitcond541.not, label %._crit_edge, label %.lr.ph530, !llvm.loop !899

._crit_edge:                                      ; preds = %.thread
  br i1 %i.ki, label %bb.bm, label %._crit_edge.thread

bb.bm:                                            ; preds = %._crit_edge
  %i.uy = fneg float %.9
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.t, %._crit_edge, %bb.bm
  %i.uz = phi float [ %.9, %._crit_edge ], [ %i.uy, %bb.bm ], [ -9.999990e+05, %bb.t ]
  %i.va = call float @llvm.fmuladd.f32(float %5, float %i.uz, float %i.bf) ; 3 uses
  %i.vb = fcmp olt float %i.va, 0.000000e+00
  br i1 %i.vb, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge.thread
  %i.vc = fcmp ogt float %i.va, 2.550000e+02
  %spec.store.select = select i1 %i.vc, float 2.550000e+02, float %i.va
  %i.vd = fptoui float %spec.store.select to i8
  br label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.thread, %bb.bn
  %.0438 = phi i8 [ %i.vd, %bb.bn ], [ 0, %._crit_edge.thread ]
  %i.ve = add i32 %i.dr, %i.ds
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds i8, ptr %i.au, i64 %i.vf
  store i8 %.0438, ptr %i.vg, align 1, !tbaa !56
  %indvars.iv.next543 = add nsw i64 %indvars.iv542, 1 ; 2 uses
  %i.vh = icmp slt i64 %indvars.iv.next543, %i.bh
  br i1 %i.vh, label %bb.q, label %._crit_edge533, !llvm.loop !900

._crit_edge533:                                   ; preds = %bb.bo
  %i.vi = add nsw i32 %.0440534, 1                ; 2 uses
  %i.vj = icmp slt i32 %i.vi, %i.al
  br i1 %i.vj, label %.preheader, label %._crit_edge535.split, !llvm.loop !901

._crit_edge535.split:                             ; preds = %._crit_edge533, %.preheader.lr.ph, %.preheader525
  %i.vk = load ptr, ptr %0, align 8, !tbaa !271   ; 2 uses
  %.val494 = load ptr, ptr %i.vk, align 8
  %i.vl = getelementptr i8, ptr %i.vk, i64 16
  %.val495 = load ptr, ptr %i.vl, align 8, !tbaa !278
  call void %.val495(ptr %.val494, ptr noundef %i.az) #50, !inline_history !16
  %i.vm = load ptr, ptr %0, align 8, !tbaa !271   ; 2 uses
  %.val492 = load ptr, ptr %i.vm, align 8
  %i.vn = getelementptr i8, ptr %i.vm, i64 16
  %.val493 = load ptr, ptr %i.vn, align 8, !tbaa !278
  call void %.val493(ptr %.val492, ptr noundef %.pre.pre) #50, !inline_history !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #50
  br label %bb.bp

bb.bp:                                            ; preds = %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread, %stbtt_GetGlyphBitmapBoxSubpixel.exit, %bb.a, %._crit_edge535.split
  %.0 = phi ptr [ %i.au, %._crit_edge535.split ], [ null, %bb.a ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit.thread ], [ null, %stbtt_GetGlyphBitmapBoxSubpixel.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind uwtable
define ptr @stbtt_GetCodepointSDF(ptr nofree noundef readonly captures(none) %0, float noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef writeonly captures(address_is_null) %9) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call i32 @stbtt_FindGlyphIndex(ptr noundef %0, i32 noundef %2)
  %i.b = tail call ptr @stbtt_GetGlyphSDF(ptr noundef %0, float noundef %1, i32 noundef %i.a, i32 noundef %3, i8 noundef zeroext %4, float noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @stbtt_FreeSDF(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %.val = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %1, i64 16
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !278
  tail call void %.val2(ptr %.val, ptr noundef %0) #50, !inline_history !16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define ptr @stbtt_GetFontNameString(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !286  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.val.i = load i8, ptr %i.g, align 1, !tbaa !56
  %i.h = getelementptr i8, ptr %i.f, i64 5
  %.val25.i = load i8, ptr %i.h, align 1, !tbaa !56
  %i.i = zext i8 %.val.i to i32
  %i.j = shl nuw nsw i32 %i.i, 8
  %i.k = zext i8 %.val25.i to i32
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = add i32 %i.d, 12
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %stbtt__find_table.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.n = shl nuw nsw i32 %indvars.iv.tr.i, 4
  %i.o = add i32 %i.m, %i.n
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.p ; 5 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !56
  %i.s = icmp eq i8 %i.r, 110
  br i1 %i.s, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !56
  %i.v = icmp eq i8 %i.u, 97
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.x = load i8, ptr %i.w, align 1, !tbaa !56
  %i.y = icmp eq i8 %i.x, 109
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !56
  %i.ab = icmp eq i8 %i.aa, 101
  br i1 %i.ab, label %stbtt__find_table.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbtt__find_table.exit.thread, label %bb.b, !llvm.loop !15

stbtt__find_table.exit:                           ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i32, ptr %i.ac, align 1            ; 2 uses
  %i.ae = tail call i32 @llvm.bswap.i32(i32 %i.ad) ; 3 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %stbtt__find_table.exit.thread, label %bb.g

bb.g:                                             ; preds = %stbtt__find_table.exit
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.af ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %.val51 = load i8, ptr %i.ah, align 1, !tbaa !56
  %i.ai = getelementptr i8, ptr %i.ag, i64 3
  %.val52 = load i8, ptr %i.ai, align 1, !tbaa !56
  %i.aj = zext i8 %.val51 to i32
  %i.ak = shl nuw nsw i32 %i.aj, 8
  %i.al = zext i8 %.val52 to i32
  %i.am = or disjoint i32 %i.ak, %i.al            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %.val49 = load i8, ptr %i.an, align 1, !tbaa !56
  %i.ao = getelementptr i8, ptr %i.ag, i64 5
  %.val50 = load i8, ptr %i.ao, align 1, !tbaa !56
  %i.ap = zext i8 %.val49 to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = zext i8 %.val50 to i32
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = add i32 %i.as, %i.ae
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %stbtt__find_table.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.au = add i32 %i.ae, 6
  %wide.trip.count = zext nneg i32 %i.am to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
end_hunk_2
