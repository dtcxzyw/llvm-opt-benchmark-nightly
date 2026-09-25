Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-paint?download=true
inline.NumInlined: 457
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL31free_static_gpu_paint_pen_funcsv:bb.a
_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E13free_instanceEv.exit: ; preds = %_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_.exit.i, %.critedge.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN15hb_draw_funcs_t10start_pathEPvR15hb_draw_state_t(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !124
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !134
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !129  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !210
  br label %_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_move_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(48) %2, float noundef %i.b, float noundef %i.d, ptr noundef %i.j) #13, !inline_history !208
  store i32 1, ptr %2, align 4, !tbaa !122
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = load <2 x float>, ptr %i.a, align 4, !tbaa !93
  store <2 x float> %i.l, ptr %i.k, align 4, !tbaa !93
  ret void
}

declare void @hb_draw_funcs_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @hb_color_line_get_extend(ptr noundef) local_unnamed_addr #2

declare void @hb_paint_reduce_linear_anchors(float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hb_paint_normalize_color_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18append_color_stopsR11hb_vector_tIsLb0EEPK15hb_color_stop_tj(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 2 uses
  %i.c = shl i32 %2, 3
  %i.d = add i32 %i.b, %i.c                       ; 5 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN11hb_vector_tIsLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.d, i1 noundef zeroext false)
  br i1 %i.f, label %bb.c, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, !prof !112

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4, !tbaa !48   ; 3 uses
  %i.h = icmp ugt i32 %i.d, %i.g
  br i1 %i.h, label %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.d

_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.c
  %i.i = sub nuw nsw i32 %i.d, %i.g
  %i.j = shl nuw i32 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = zext nneg i32 %i.g to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = zext i32 %i.j to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.o, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_ZN11hb_vector_tIsLb0EE11grow_vectorIsTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, %bb.c
  store i32 %i.d, ptr %i.a, align 4, !tbaa !48
  %.not32 = icmp eq i32 %2, 0
  br i1 %.not32, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = zext i32 %i.b to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %wide.trip.count = zext i32 %2 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 4 uses
  %i.t = shl nuw nsw i64 %n.vec, 4
  %i.u = getelementptr i8, ptr %i.s, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.v = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.v
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %index ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.ad = load float, ptr %i.w, align 4, !tbaa !214
  %i.ae = load float, ptr %i.y, align 4, !tbaa !214
  %i.af = load float, ptr %i.aa, align 4, !tbaa !214
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !214
  %i.ah = insertelement <4 x float> poison, float %i.ad, i64 0
  %i.ai = insertelement <4 x float> %i.ah, float %i.ae, i64 1
  %i.aj = insertelement <4 x float> %i.ai, float %i.af, i64 2
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 3 ; 3 uses
  %i.al = fcmp olt <4 x float> %i.ak, splat (float -1.000000e+00)
  %i.am = fcmp ogt <4 x float> %i.ak, splat (float 1.000000e+00)
  %i.an = select <4 x i1> %i.am, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ak
  %i.ao = fmul <4 x float> %i.an, splat (float 3.276700e+04)
  %i.ap = fptosi <4 x float> %i.ao to <4 x i16>
  %predphi = select <4 x i1> %i.al, <4 x i16> splat (i16 -32767), <4 x i16> %i.ap
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.au = load i32, ptr %i.aq, align 4, !tbaa !215
  %i.av = load i32, ptr %i.ar, align 4, !tbaa !215
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !215
  %i.ax = load i32, ptr %i.at, align 4, !tbaa !215
  %i.ay = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 1
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 2
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 3
  %i.bc = icmp ne <4 x i32> %i.bb, zeroinitializer
  %i.bd = zext <4 x i1> %i.bc to <4 x i16>
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 44
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !216
  %i.bj = load i32, ptr %i.bf, align 4, !tbaa !216
  %i.bk = load i32, ptr %i.bg, align 4, !tbaa !216
  %i.bl = load i32, ptr %i.bh, align 4, !tbaa !216
  %i.bm = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.bj, i64 1
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.bk, i64 2
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bl, i64 3 ; 4 uses
  %i.bq = lshr <4 x i32> %i.bp, splat (i32 8)
  %i.br = and <4 x i32> %i.bq, splat (i32 255)
  %i.bs = lshr <4 x i32> %i.bp, splat (i32 16)
  %i.bt = and <4 x i32> %i.bs, splat (i32 255)
  %i.bu = lshr <4 x i32> %i.bp, splat (i32 24)
  %i.bv = and <4 x i32> %i.bp, splat (i32 255)
  %i.bw = shufflevector <4 x i16> %predphi, <4 x i16> %i.bd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bx = shufflevector <8 x i16> %i.bw, <8 x i16> zeroinitializer, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.by = shufflevector <4 x i32> %i.br, <4 x i32> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bz = shufflevector <4 x i32> %i.bu, <4 x i32> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ca = shufflevector <8 x i32> %i.by, <8 x i32> %i.bz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cb = mul nuw nsw <16 x i32> %i.ca, splat (i32 32767)
  %i.cc = add nuw nsw <16 x i32> %i.cb, splat (i32 127)
  %i.cd = udiv <16 x i32> %i.cc, splat (i32 255)
  %i.ce = trunc nuw nsw <16 x i32> %i.cd to <16 x i16>
  %interleaved.vec = shufflevector <16 x i16> %i.bx, <16 x i16> %i.ce, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, label %.lr.ph.preheader39

.lr.ph.preheader39:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.02530.ph = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader39, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.ph, %.lr.ph.preheader39 ] ; 2 uses
  %.02530 = phi ptr [ %i.db, %bb.f ], [ %.02530.ph, %.lr.ph.preheader39 ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !214 ; 3 uses
  %i.ci = fcmp olt float %i.ch, -1.000000e+00
  br i1 %i.ci, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.cj = fcmp ogt float %i.ch, 1.000000e+00
  %spec.store.select = select i1 %i.cj, float 1.000000e+00, float %i.ch
  %i.ck = fmul float %spec.store.select, 3.276700e+04
  %i.cl = fptosi float %i.ck to i16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.0 = phi i16 [ %i.cl, %bb.e ], [ -32767, %.lr.ph ]
  store i16 %.0, ptr %.02530, align 2, !tbaa !80
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !215
  %.not = icmp ne i32 %i.cn, 0
  %i.co = zext i1 %.not to i16
  %i.cp = getelementptr inbounds nuw i8, ptr %.02530, i64 2
  store i16 %i.co, ptr %i.cp, align 2, !tbaa !80
  %i.cq = getelementptr inbounds nuw i8, ptr %.02530, i64 4
  store i16 0, ptr %i.cq, align 2, !tbaa !80
  %i.cr = getelementptr inbounds nuw i8, ptr %.02530, i64 6
  store i16 0, ptr %i.cr, align 2, !tbaa !80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %3 = load i32, ptr %i.cs, align 4, !tbaa !216   ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %4 = lshr i32 %3, 8
  %5 = and i32 %4, 255
  %i.cu = lshr i32 %3, 16
  %6 = and i32 %i.cu, 255
  %7 = and i32 %3, 255
  %i.cv = lshr i32 %3, 24
  %8 = mul nuw nsw i32 %7, 32767
  %9 = mul nuw nsw i32 %i.cv, 32767
  %10 = mul nuw nsw i32 %6, 32767
  %11 = mul nuw nsw i32 %5, 32767
  %i.cw = insertelement <4 x i32> poison, i32 %11, i64 0
  %i.cx = insertelement <4 x i32> %i.cw, i32 %10, i64 1
  %12 = insertelement <4 x i32> %i.cx, i32 %9, i64 2
  %13 = insertelement <4 x i32> %12, i32 %8, i64 3
  %i.cy = add nuw nsw <4 x i32> %13, splat (i32 127)
  %i.cz = udiv <4 x i32> %i.cy, splat (i32 255)
  %i.da = trunc <4 x i32> %i.cz to <4 x i16>
  store <4 x i16> %i.da, ptr %i.ct, align 2, !tbaa !80
  %i.db = getelementptr inbounds nuw i8, ptr %.02530, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread, label %.lr.ph, !llvm.loop !212

_ZN11hb_vector_tIsLb0EE6resizeEi.exit.thread:     ; preds = %bb.f, %middle.block, %bb.d, %bb.b, %bb.a
  %.1.i.i29 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ true, %bb.d ], [ true, %middle.block ], [ true, %bb.f ]
  ret i1 %.1.i.i29
}

declare i32 @hb_color_line_get_color_stops(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tI15hb_color_stop_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !43     ; 7 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.n, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.d) ; 3 uses
  %.not19 = icmp ugt i32 %.sroa.speculated, %i.a
  %i.e = lshr i32 %i.a, 2
  %.not20 = icmp ult i32 %.sroa.speculated, %i.e
  %or.cond = or i1 %.not19, %.not20
  br i1 %or.cond, label %.thread, label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not = icmp ugt i32 %1, %i.a
  br i1 %.not, label %.preheader, label %bb.n, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.043 = phi i32 [ %i.h, %.preheader ], [ %i.a, %bb.d ] ; 2 uses
  %i.f = lshr i32 %.043, 1
  %i.g = add i32 %.043, 8
  %i.h = add i32 %i.g, %i.f                       ; 3 uses
  %i.i = icmp ugt i32 %1, %i.h
  br i1 %i.i, label %.preheader, label %.thread, !llvm.loop !219

.thread:                                          ; preds = %.preheader, %bb.c
  %.138 = phi i32 [ %.sroa.speculated, %bb.c ], [ %i.h, %.preheader ] ; 6 uses
  %i.j = icmp ugt i32 %.138, 357913941
  br i1 %i.j, label %.critedge, label %bb.e, !prof !12

.critedge:                                        ; preds = %.thread
  %i.k = xor i32 %i.a, -1
  br label %.sink.split

bb.e:                                             ; preds = %.thread
  %.not.i.i = icmp eq i32 %.138, 0
  %.not49 = icmp eq i32 %i.a, 0                   ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  br i1 %.not49, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45
  tail call void @hb_free(ptr noundef %i.m) #13
  br label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

bb.h:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45   ; 2 uses
  br i1 %.not49, label %bb.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i.i = icmp eq ptr %i.o, null
  br i1 %.not9.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = zext nneg i32 %.138 to i64
  %i.q = mul nuw nsw i64 %i.p, 12
  %i.r = tail call ptr @hb_malloc(i64 noundef %i.q) #13 ; 4 uses
  %.not10.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %bb.k, !prof !12

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44   ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.w, i64 range(i64 0, 103079215081) %i.v, i1 false), !alias.scope !223
  br label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit: ; preds = %bb.h, %bb.i
  %i.x = phi ptr [ null, %bb.i ], [ %i.o, %bb.h ]
  %i.y = zext nneg i32 %.138 to i64
  %i.z = mul nuw nsw i64 %i.y, 12
  %i.aa = tail call ptr @hb_realloc(ptr noundef %i.x, i64 noundef %i.z) #13 ; 2 uses
  %.not22 = icmp eq ptr %i.aa, null
  br i1 %.not22, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, label %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, !prof !78

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53: ; preds = %bb.j, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %i.ab = load i32, ptr %0, align 8, !tbaa !43    ; 2 uses
  %.not23 = icmp ugt i32 %.138, %i.ab
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53
  %i.ac = xor i32 %i.ab, -1
  br label %.sink.split

_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread: ; preds = %bb.l, %bb.k, %bb.g, %bb.f, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit
  %.1.i.i42 = phi ptr [ %i.aa, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit ], [ null, %bb.f ], [ null, %bb.g ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.1.i.i42, ptr %i.ad, align 8, !tbaa !45
  br label %.sink.split

.sink.split:                                      ; preds = %.critedge, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread, %bb.m
  %.sink = phi i32 [ %i.ac, %bb.m ], [ %.138, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ %i.k, %.critedge ]
  %.3.ph = phi i1 [ false, %bb.m ], [ true, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread ], [ false, %.critedge ]
  store i32 %.sink, ptr %0, align 8, !tbaa !43
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.c, %bb.d, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ true, %_ZN11hb_vector_tI15hb_color_stop_tLb0EE14realloc_vectorIS0_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS0_j11hb_priorityILj0EE.exit.thread53 ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare i32 @hb_map_has(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hb_map_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @hb_paint_funcs_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !64}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
end_hunk_0
