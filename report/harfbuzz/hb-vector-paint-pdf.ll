Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-pdf?download=true
inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN18hb_pdf_resources_t21add_xobject_png_imageEPKcjjjjbPKhjS3_j:_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %i.aha = load ptr, ptr %i.f, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.aha) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit603

_ZN11hb_vector_tIcLb0EED2Ev.exit603:              ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit601, %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  ret i32 %i.b
}

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

declare void @hb_paint_normalize_color_line(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_t(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hb_color_stop_t, align 4    ; 4 uses
  %3 = alloca %struct.hb_vector_buf_t, align 8    ; 11 uses
  %4 = alloca %struct.hb_vector_buf_t, align 8    ; 11 uses
  %5 = alloca %struct.hb_vector_buf_t, align 8    ; 11 uses
  %6 = alloca %struct.hb_vector_buf_t, align 8    ; 58 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 300
  %i.b = load i32, ptr %i.a, align 4, !tbaa !92   ; 7 uses
  %i.c = icmp ult i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %.preheader.preheader.i.i

bb.b:                                             ; preds = %bb.a
  %.not44 = icmp eq i32 %i.b, 0
  br i1 %.not44, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 255, %bb.b ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 2, ptr %i.i, align 8, !tbaa !53
  call fastcc void @_ZL35hb_pdf_build_interpolation_functionP15hb_vector_buf_tjj(ptr noundef %3, i32 noundef %i.h, i32 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !52   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.m = load <2 x i32>, ptr %3, align 8, !tbaa !61
  %i.n = load i32, ptr %3, align 8, !tbaa !61
  store i32 0, ptr %3, align 8, !tbaa !61
  store i32 0, ptr %i.l, align 4, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68   ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !68
  %i.q = load i32, ptr %i.i, align 8, !tbaa !53
  %i.r = load i32, ptr %0, align 8, !tbaa !19     ; 5 uses
  %.not.i.i = icmp slt i32 %i.k, %i.r
  br i1 %.not.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add i32 %i.k, 1                          ; 2 uses
  %i.t = icmp slt i32 %i.r, 0
  br i1 %i.t, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp ugt i32 %i.s, %i.r
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, !prof !23

.preheader.i.i.i:                                 ; preds = %bb.f, %.preheader.i.i.i
  %.039.i.i.i = phi i32 [ %i.w, %.preheader.i.i.i ], [ %i.r, %bb.f ] ; 2 uses
  %i.u = lshr i32 %.039.i.i.i, 1
  %i.v = add i32 %.039.i.i.i, 8
  %i.w = add i32 %i.v, %i.u                       ; 6 uses
  %i.x = icmp ugt i32 %i.s, %i.w
  br i1 %i.x, label %.preheader.i.i.i, label %.thread.i.i.i, !llvm.loop !2

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.y = icmp ugt i32 %i.w, 178956970
  br i1 %i.y, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %.thread.i.i.i
  %i.z = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.w) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not22.i.i.i, label %bb.h, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.w, %i.aa
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i: ; preds = %bb.h, %.thread.i.i.i
  %.sink.i.ph.in.i.i = phi i32 [ %i.r, %.thread.i.i.i ], [ %i.aa, %bb.h ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !21
  store i32 %i.w, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i, %bb.h, %bb.f, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = load i32, ptr %i.j, align 4, !tbaa !20  ; 2 uses
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.j, align 4, !tbaa !20
  %i.ag = zext i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.ag ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store <2 x i32> %i.m, ptr %i.ah, align 8, !tbaa !61
  store ptr %i.p, ptr %i.ai, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i32 %i.q, ptr %i.aj, align 8, !tbaa !53
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.ak = add i32 %i.n, -1
  %spec.select.i.i.i.i.i = icmp ult i32 %i.ak, -2
  br i1 %spec.select.i.i.i.i.i, label %bb.i, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

bb.i:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i
  call void @hb_free(ptr noundef %i.p) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i, %bb.i
  %i.al = load i32, ptr %3, align 8, !tbaa !16
  %i.am = add i32 %i.al, -1
  %spec.select.i.i.i = icmp ult i32 %i.am, -2
  br i1 %spec.select.i.i.i, label %bb.j, label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.j:                                             ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit
  store i32 0, ptr %i.l, align 4, !tbaa !14
  %i.an = load ptr, ptr %i.o, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.an) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EED2Ev.exit:                 ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

.preheader.preheader.i.i:                         ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !76 ; 4 uses
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.b to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopI15hb_color_stop_tZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EvPT_mT0_"(ptr noundef %i.ap, i64 noundef range(i64 1, 4294967296) %.sroa.2.8.insert.ext.i.i)
  %.idx.i.i = mul nuw nsw i64 %.sroa.2.8.insert.ext.i.i, 12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i
  %.01518.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.loopexit.i, %.preheader.preheader.i.i
  %.01519.i.i = phi ptr [ %.015.i.i, %.critedge.i.loopexit.i ], [ %.01518.i.i, %.preheader.preheader.i.i ] ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %.preheader.i.i
  %.016.i.i = phi ptr [ %i.ar, %bb.k ], [ %.01519.i.i, %.preheader.i.i ] ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.016.i.i, i64 -12 ; 5 uses
  %.val.i.i = load float, ptr %i.ar, align 4, !tbaa !82
  %.0.val.i.i = load float, ptr %.016.i.i, align 4, !tbaa !82
  %i.as = fcmp ogt float %.val.i.i, %.0.val.i.i
  br i1 %i.as, label %bb.k, label %.critedge.i.loopexit.i

.critedge.i.loopexit.i:                           ; preds = %bb.k, %.lr.ph.i.i
  %.015.i.i = getelementptr inbounds nuw i8, ptr %.01519.i.i, i64 12 ; 2 uses
  %i.at = icmp ult ptr %.015.i.i, %i.aq
  br i1 %i.at, label %.preheader.i.i, label %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit", !llvm.loop !969

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.au = icmp ugt ptr %i.ar, %i.ap
  br i1 %i.au, label %.lr.ph.i.i, label %.critedge.i.loopexit.i, !llvm.loop !970

"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit": ; preds = %.critedge.i.loopexit.i
  %i.av = icmp eq i32 %i.b, 2
  br i1 %i.av, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit"
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bb = load i32, ptr @_hb_NullPool, align 16
  %umax = tail call i32 @llvm.umax.i32(i32 %i.b, i32 2)
  %i.bc = add i32 %umax, -1
  %wide.trip.count = zext i32 %i.bc to i64
  br label %bb.v

bb.l:                                             ; preds = %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 16, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 2, ptr %i.bd, align 8, !tbaa !53
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !77 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !79
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !79
  call fastcc void @_ZL35hb_pdf_build_interpolation_functionP15hb_vector_buf_tjj(ptr noundef %4, i32 noundef %i.bg, i32 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !52 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bm = load <2 x i32>, ptr %4, align 8, !tbaa !61
  %i.bn = load i32, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %4, align 8, !tbaa !61
  store i32 0, ptr %i.bl, align 4, !tbaa !61
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !68 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !68
  %i.bq = load i32, ptr %i.bd, align 8, !tbaa !53
  %i.br = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i45 = icmp slt i32 %i.bk, %i.br
  br i1 %.not.i.i45, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = add i32 %i.bk, 1                        ; 2 uses
  %i.bt = icmp slt i32 %i.br, 0
  br i1 %i.bt, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57, label %bb.n, !prof !23

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i46 = icmp ugt i32 %i.bs, %i.br
  br i1 %.not.i.i.i46, label %.preheader.i.i.i48, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, !prof !23

.preheader.i.i.i48:                               ; preds = %bb.n, %.preheader.i.i.i48
  %.039.i.i.i49 = phi i32 [ %i.bw, %.preheader.i.i.i48 ], [ %i.br, %bb.n ] ; 2 uses
  %i.bu = lshr i32 %.039.i.i.i49, 1
  %i.bv = add i32 %.039.i.i.i49, 8
  %i.bw = add i32 %i.bv, %i.bu                    ; 6 uses
  %i.bx = icmp ugt i32 %i.bs, %i.bw
  br i1 %i.bx, label %.preheader.i.i.i48, label %.thread.i.i.i50, !llvm.loop !2

.thread.i.i.i50:                                  ; preds = %.preheader.i.i.i48
  %i.by = icmp ugt i32 %i.bw, 178956970
  br i1 %i.by, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, label %bb.o, !prof !23

bb.o:                                             ; preds = %.thread.i.i.i50
  %i.bz = call noundef ptr @_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %i.bw) ; 2 uses
  %.not22.i.i.i51 = icmp eq ptr %i.bz, null
  br i1 %.not22.i.i.i51, label %bb.p, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52, !prof !23

bb.p:                                             ; preds = %bb.o
  %i.ca = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not23.i.i.i53 = icmp ugt i32 %i.bw, %i.ca
  br i1 %.not23.i.i.i53, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54: ; preds = %bb.p, %.thread.i.i.i50
  %.sink.i.ph.in.i.i55 = phi i32 [ %i.br, %.thread.i.i.i50 ], [ %i.ca, %bb.p ]
  %.sink.i.ph.i.i56 = xor i32 %.sink.i.ph.in.i.i55, -1
  store i32 %.sink.i.ph.i.i56, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52: ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !21
  store i32 %i.bw, ptr %0, align 8, !tbaa !19
  br label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.i.i52, %bb.p, %bb.n, %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  %i.ce = load i32, ptr %i.bj, align 4, !tbaa !20 ; 2 uses
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bj, align 4, !tbaa !20
  %i.cg = zext i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <2 x i32> %i.bm, ptr %i.ch, align 8, !tbaa !61
  store ptr %i.bp, ptr %i.ci, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 %i.bq, ptr %i.cj, align 8, !tbaa !53
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i54, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.ck = add i32 %i.bn, -1
  %spec.select.i.i.i.i.i58 = icmp ult i32 %i.ck, -2
  br i1 %spec.select.i.i.i.i.i58, label %bb.q, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

bb.q:                                             ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57
  call void @hb_free(ptr noundef %i.bp) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i47, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i57, %bb.q
  %i.cl = load i32, ptr %4, align 8, !tbaa !16
  %i.cm = add i32 %i.cl, -1
  %spec.select.i.i.i60 = icmp ult i32 %i.cm, -2
  br i1 %spec.select.i.i.i60, label %bb.r, label %_ZN11hb_vector_tIcLb0EED2Ev.exit61

bb.r:                                             ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59
  store i32 0, ptr %i.bl, align 4, !tbaa !14
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.cn) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit61

_ZN11hb_vector_tIcLb0EED2Ev.exit61:               ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit59, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EED2Ev.exit99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 16, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store i32 2, ptr %i.co, align 8, !tbaa !53
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 38 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 48 uses
  %i.cr = call ptr @hb_realloc(ptr noundef null, i64 noundef 38) #12 ; 3 uses
  %.not22.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not22.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %.pre = load i32, ptr %6, align 8, !tbaa !16    ; 3 uses
  %.not23.i.i.i.i = icmp ult i32 %.pre, 38
  br i1 %.not23.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %.pre393.a = load ptr, ptr %i.cq, align 8, !tbaa !15
  br label %bb.s

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !15
  store i32 38, ptr %6, align 8, !tbaa !16
  br label %bb.s

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i:      ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i
  %i.cs = xor i32 %.pre, -1                       ; 2 uses
  store i32 %i.cs, ptr %6, align 8, !tbaa !16
  %.pre394.a = load i32, ptr %i.cp, align 4, !tbaa !14
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

bb.s:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i
  %i.ct = phi i32 [ %.pre, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ 38, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  %i.cu = phi ptr [ %.pre393.a, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i._crit_edge ], [ %i.cr, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ]
  store i32 33, ptr %i.cp, align 4, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.cu, ptr noundef nonnull readonly align 1 dereferenceable(33) @.str.71, i64 range(i64 0, 103079215081) 33, i1 false), !alias.scope !1035
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

_ZN15hb_vector_buf_t10append_strEPKc.exit:        ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, %bb.s
  %i.cv = phi i32 [ %i.cs, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ %i.ct, %bb.s ] ; 3 uses
  %i.cw = phi i32 [ %.pre394.a, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ], [ 33, %bb.s ] ; 2 uses
  %i.cx = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.cw, i32 12) ; 2 uses
  %i.cy = extractvalue { i32, i1 } %i.cx, 1
  %i.cz = extractvalue { i32, i1 } %i.cx, 0       ; 4 uses
  %i.da = or i32 %i.cv, %i.cz
  %i.db = icmp slt i32 %i.da, 0
  %or.cond = or i1 %i.cy, %i.db
  br i1 %or.cond, label %_ZN15hb_vector_buf_t10append_strEPKc.exit81, label %bb.t, !prof !64

bb.t:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit
  %.not.i.i.i.i64 = icmp samesign ugt i32 %i.cz, %i.cv
  br i1 %.not.i.i.i.i64, label %.preheader.i.i.i.i67, label %bb.u, !prof !23

.preheader.i.i.i.i67:                             ; preds = %bb.t, %.preheader.i.i.i.i67
  %.053.i.i.i.i68 = phi i32 [ %i.de, %.preheader.i.i.i.i67 ], [ %i.cv, %bb.t ] ; 2 uses
  %i.dc = lshr i32 %.053.i.i.i.i68, 1
  %i.dd = add nuw i32 %.053.i.i.i.i68, 8
  %i.de = add nuw i32 %i.dd, %i.dc                ; 5 uses
  %i.df = icmp ugt i32 %i.cz, %i.de
  br i1 %i.df, label %.preheader.i.i.i.i67, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71, !llvm.loop !0

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71: ; preds = %.preheader.i.i.i.i67
  %i.dg = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.dh = zext i32 %i.de to i64
  %i.di = call ptr @hb_realloc(ptr noundef %i.dg, i64 noundef %i.dh) #12 ; 2 uses
  %.not22.i.i.i.i72 = icmp eq ptr %i.di, null
  br i1 %.not22.i.i.i.i72, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i73, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71
  %i.dj = load i32, ptr %6, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i76 = icmp ugt i32 %i.de, %i.dj
  br i1 %.not23.i.i.i.i76, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i77, label %bb.u

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i73: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i71
  store ptr %i.di, ptr %i.cq, align 8, !tbaa !15
  store i32 %i.de, ptr %6, align 8, !tbaa !16
  br label %bb.u

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i77:    ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75
  %i.dk = xor i32 %i.dj, -1
  store i32 %i.dk, ptr %6, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit81

bb.u:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i73, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i75, %bb.t
  store i32 %i.cz, ptr %i.cp, align 4, !tbaa !14
  %i.dl = load ptr, ptr %i.cq, align 8, !tbaa !15
  %i.dm = zext i32 %i.cw to i64
end_hunk_0
begin_hunk_1_@_ZL47hb_pdf_build_alpha_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_t:bb.a

_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE5allocEjb.exit.thread8.i.i90, %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  %i.ml = add i32 %i.lr, -1
  %spec.select.i.i.i.i.i94 = icmp ult i32 %i.ml, -2
  br i1 %spec.select.i.i.i.i.i94, label %bb.br, label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95

bb.br:                                            ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93
  call void @hb_free(ptr noundef %i.ls) #12
  br label %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i83, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i93, %bb.br
  %i.mm = add i32 %i.lp, 5
  %.not.i = icmp slt i32 %.sroa.8.0535, %.sroa.0.0534
  %.pre607 = add i32 %.sroa.8.0535, 1             ; 6 uses
  br i1 %.not.i, label %.critedge.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95
  %i.mn = icmp slt i32 %.sroa.0.0534, 0
  br i1 %i.mn, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %bb.bt, !prof !23

bb.bt:                                            ; preds = %bb.bs
  %.not.i483 = icmp ugt i32 %.pre607, %.sroa.0.0534
  br i1 %.not.i483, label %.preheader.i, label %.critedge.i, !prof !23

.preheader.i:                                     ; preds = %bb.bt, %.preheader.i
  %.043.i = phi i32 [ %i.mq, %.preheader.i ], [ %.sroa.0.0534, %bb.bt ] ; 2 uses
  %i.mo = lshr i32 %.043.i, 1
  %i.mp = add i32 %.043.i, 8
  %i.mq = add i32 %i.mp, %i.mo                    ; 8 uses
  %i.mr = icmp ugt i32 %.pre607, %i.mq
  br i1 %i.mr, label %.preheader.i, label %.thread.i, !llvm.loop !1

.thread.i:                                        ; preds = %.preheader.i
  %i.ms = icmp ugt i32 %i.mq, 1073741823
  br i1 %i.ms, label %.critedge.i486, label %bb.bu, !prof !23

.critedge.i486:                                   ; preds = %.thread.i
  %i.mt = xor i32 %.sroa.0.0534, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

bb.bu:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %.sroa.0.0534, 0
  br i1 %.not49.i, label %bb.bv, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.bv:                                            ; preds = %bb.bu
  %.not9.i.i.i = icmp eq ptr %.sroa.14.0537, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mu = shl nuw i32 %i.mq, 2
  %i.mv = zext i32 %i.mu to i64
  %i.mw = call ptr @hb_malloc(i64 noundef %i.mv) #12 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.mw, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.bx, !prof !23

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i.i485 = icmp eq i32 %.sroa.8.0535, 0
  br i1 %.not.i.i.i.i485, label %.critedge.i, label %bb.by, !prof !23

bb.by:                                            ; preds = %bb.bx
  %i.mx = zext i32 %.sroa.8.0535 to i64
  %i.my = shl nuw nsw i64 %i.mx, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mw, ptr nonnull readonly align 1 %.sroa.14.0537, i64 range(i64 0, 103079215081) %i.my, i1 false), !alias.scope !1181
  br label %.critedge.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.bv, %bb.bu
  %i.mz = phi ptr [ null, %bb.bv ], [ %.sroa.14.0537, %bb.bu ]
  %i.na = shl nuw i32 %i.mq, 2
  %i.nb = zext i32 %i.na to i64
  %i.nc = call ptr @hb_realloc(ptr noundef %i.mz, i64 noundef %i.nb) #12 ; 2 uses
  %.not22.i = icmp eq ptr %i.nc, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %.critedge.i, !prof !60

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.bw
  %i.nd = xor i32 %.sroa.0.0534, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.bs, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.critedge.i486
  %.sroa.0.3 = phi i32 [ %.sroa.0.0534, %bb.bs ], [ %i.nd, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.mt, %.critedge.i486 ]
  store i32 %i.cz, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95, %bb.bx, %bb.by, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.bt
  %.pre-phi = phi i32 [ %.pre607, %bb.bt ], [ 1, %bb.bx ], [ %.pre607, %bb.by ], [ %.pre607, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.pre607, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95 ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0534, %bb.bt ], [ %i.mq, %bb.bx ], [ %i.mq, %bb.by ], [ %i.mq, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.0.0534, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95 ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.0537, %bb.bt ], [ %i.mw, %bb.bx ], [ %i.mw, %bb.by ], [ %i.nc, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %.sroa.14.0537, %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit95 ] ; 2 uses
  %i.ne = zext i32 %.sroa.8.0535 to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.1, i64 %i.ne
  store i32 %i.mm, ptr %i.nf, align 4, !tbaa !61
  br label %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit:   ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, %.critedge.i
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %.critedge.i ], [ %.sroa.0.3, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %.pre-phi, %.critedge.i ], [ %.sroa.8.0535, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.1, %.critedge.i ], [ %.sroa.14.0537, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ] ; 3 uses
  %i.ng = load i32, ptr %4, align 8, !tbaa !16
  %i.nh = add i32 %i.ng, -1
  %spec.select.i.i.i96 = icmp ult i32 %i.nh, -2
  br i1 %spec.select.i.i.i96, label %bb.bz, label %_ZN11hb_vector_tIcLb0EED2Ev.exit97

bb.bz:                                            ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit
  store i32 0, ptr %i.cv, align 4, !tbaa !14
  %i.ni = load ptr, ptr %i.cw, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.ni) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit97

_ZN11hb_vector_tIcLb0EED2Ev.exit97:               ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJjEEEPjDpOT_.exit, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next578 = add nuw nsw i64 %indvars.iv577, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next578, %wide.trip.count
  br i1 %exitcond.not, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i, label %.preheader.i.i.i.i468.preheader, !llvm.loop !1118

._crit_edge543:                                   ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit141, %_ZN15hb_vector_buf_t10append_strEPKc.exit80
  %i.nj = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.nk = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.nj, i32 11) ; 2 uses
  %i.nl = extractvalue { i32, i1 } %i.nk, 1
  %i.nm = extractvalue { i32, i1 } %i.nk, 0       ; 4 uses
  %i.nn = icmp slt i32 %i.nm, 0
  %or.cond.i.i98 = or i1 %i.nl, %i.nn
  br i1 %or.cond.i.i98, label %.lr.ph545, label %bb.ca, !prof !62

bb.ca:                                            ; preds = %._crit_edge543
  %i.no = load i32, ptr %5, align 8, !tbaa !16    ; 4 uses
  %i.np = icmp slt i32 %i.no, 0
  br i1 %i.np, label %.lr.ph545, label %bb.cb, !prof !23

bb.cb:                                            ; preds = %bb.ca
  %.not.i.i.i.i99 = icmp samesign ugt i32 %i.nm, %i.no
  br i1 %.not.i.i.i.i99, label %.preheader.i.i.i.i102, label %bb.cg, !prof !23

.preheader.i.i.i.i102:                            ; preds = %bb.cb, %.preheader.i.i.i.i102
  %.053.i.i.i.i103 = phi i32 [ %i.ns, %.preheader.i.i.i.i102 ], [ %i.no, %bb.cb ] ; 2 uses
  %i.nq = lshr i32 %.053.i.i.i.i103, 1
  %i.nr = add nuw i32 %.053.i.i.i.i103, 8
  %i.ns = add nuw i32 %i.nr, %i.nq                ; 6 uses
  %i.nt = icmp ugt i32 %i.nm, %i.ns
  br i1 %i.nt, label %.preheader.i.i.i.i102, label %.thread39.i.i.i.i104, !llvm.loop !0

.thread39.i.i.i.i104:                             ; preds = %.preheader.i.i.i.i102
  %.not8.i.i.i.i.i.i105 = icmp eq i32 %i.no, 0
  %i.nu = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i105, label %bb.cc, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106

bb.cc:                                            ; preds = %.thread39.i.i.i.i104
  %.not9.i.i.i.i.i.i113 = icmp eq ptr %i.nu, null
  br i1 %.not9.i.i.i.i.i.i113, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nv = zext i32 %i.ns to i64
  %i.nw = call ptr @hb_malloc(i64 noundef %i.nv) #12 ; 4 uses
  %.not10.i.i.i.i.i.i114 = icmp eq ptr %i.nw, null
  br i1 %.not10.i.i.i.i.i.i114, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110, label %bb.ce, !prof !23

bb.ce:                                            ; preds = %bb.cd
  %i.nx = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i115 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.i.i.i.i.i.i115, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108, label %bb.cf, !prof !23

bb.cf:                                            ; preds = %bb.ce
  %i.ny = zext i32 %i.nx to i64
  %i.nz = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nw, ptr readonly align 1 %i.nz, i64 range(i64 0, 103079215081) %i.ny, i1 false), !alias.scope !1182
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106: ; preds = %bb.cc, %.thread39.i.i.i.i104
  %i.oa = phi ptr [ null, %bb.cc ], [ %i.nu, %.thread39.i.i.i.i104 ]
  %i.ob = zext i32 %i.ns to i64
  %i.oc = call ptr @hb_realloc(ptr noundef %i.oa, i64 noundef %i.ob) #12 ; 2 uses
  %.not22.i.i.i.i107 = icmp eq ptr %i.oc, null
  br i1 %.not22.i.i.i.i107, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106, %bb.cd
  %i.od = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i111 = icmp ugt i32 %i.ns, %i.od
  br i1 %.not23.i.i.i.i111, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i112, label %bb.cg

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106, %bb.cf, %bb.ce
  %.1.i.i52.i.i.i.i109 = phi ptr [ %i.oc, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i106 ], [ %i.nw, %bb.ce ], [ %i.nw, %bb.cf ]
  store ptr %.1.i.i52.i.i.i.i109, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.ns, ptr %5, align 8, !tbaa !16
  br label %bb.cg

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i112:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110
  %i.oe = xor i32 %i.od, -1
  store i32 %i.oe, ptr %5, align 8, !tbaa !16
  br label %.lr.ph545

bb.cg:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i108, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i110, %bb.cb
  store i32 %i.nm, ptr %i.he, align 4, !tbaa !14
  %i.of = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.og = zext i32 %i.nj to i64
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 %i.og
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.oh, ptr noundef nonnull readonly align 1 dereferenceable(11) @.str.82, i64 range(i64 0, 103079215081) 11, i1 false), !alias.scope !1183
  br label %.lr.ph545

.lr.ph545:                                        ; preds = %bb.cg, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i112, %bb.ca, %._crit_edge543
  %i.oi = load i8, ptr @_hb_NullPool, align 16
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 304
  %umax = call i32 @llvm.umax.i32(i32 %i.b, i32 3)
  %i.ok = add i32 %umax, -1
  %wide.trip.count594 = zext i32 %i.ok to i64
  br label %bb.de

bb.ch:                                            ; preds = %.lr.ph542, %_ZN15hb_vector_buf_t10append_strEPKc.exit141
  %indvars.iv582 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next583, %_ZN15hb_vector_buf_t10append_strEPKc.exit141 ] ; 3 uses
  %.not42 = icmp eq i64 %indvars.iv582, 0
  br i1 %.not42, label %bb.cp, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ol = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.om = load i32, ptr %5, align 8, !tbaa !16    ; 5 uses
  %.not.i.i117 = icmp slt i32 %i.ol, %i.om
  br i1 %.not.i.i117, label %.critedge.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.on = add i32 %i.ol, 1                        ; 2 uses
  %i.oo = icmp slt i32 %i.om, 0
  br i1 %i.oo, label %_ZN15hb_vector_buf_t8append_cEc.exit, label %bb.ck, !prof !23

bb.ck:                                            ; preds = %bb.cj
  %.not.i.i.i118 = icmp ugt i32 %i.on, %i.om
  br i1 %.not.i.i.i118, label %.preheader.i.i.i120, label %.critedge.i.i, !prof !23

.preheader.i.i.i120:                              ; preds = %bb.ck, %.preheader.i.i.i120
  %.053.i.i.i = phi i32 [ %i.or, %.preheader.i.i.i120 ], [ %i.om, %bb.ck ] ; 2 uses
  %i.op = lshr i32 %.053.i.i.i, 1
  %i.oq = add i32 %.053.i.i.i, 8
  %i.or = add i32 %i.oq, %i.op                    ; 6 uses
  %i.os = icmp ugt i32 %i.on, %i.or
  br i1 %i.os, label %.preheader.i.i.i120, label %.thread39.i.i.i, !llvm.loop !0

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i120
  %.not8.i.i.i.i.i = icmp eq i32 %i.om, 0
  %i.ot = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.cl, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.cl:                                            ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.ot, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ou = zext i32 %i.or to i64
  %i.ov = call ptr @hb_malloc(i64 noundef %i.ou) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.cn, !prof !23

bb.cn:                                            ; preds = %bb.cm
  %i.ow = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ow, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.co, !prof !23

bb.co:                                            ; preds = %bb.cn
  %i.ox = zext i32 %i.ow to i64
  %i.oy = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ov, ptr readonly align 1 %i.oy, i64 range(i64 0, 103079215081) %i.ox, i1 false), !alias.scope !1184
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.cl, %.thread39.i.i.i
  %i.oz = phi ptr [ null, %bb.cl ], [ %i.ot, %.thread39.i.i.i ]
  %i.pa = zext i32 %i.or to i64
  %i.pb = call ptr @hb_realloc(ptr noundef %i.oz, i64 noundef %i.pa) #12 ; 2 uses
  %.not22.i.i.i121 = icmp eq ptr %i.pb, null
  br i1 %.not22.i.i.i121, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.cm
  %i.pc = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i122 = icmp ugt i32 %i.or, %i.pc
  br i1 %.not23.i.i.i122, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i, label %.critedge.i.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.pd = xor i32 %i.pc, -1
  store i32 %i.pd, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t8append_cEc.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.co, %bb.cn
  %.1.i.i52.i.i.i = phi ptr [ %i.pb, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.ov, %bb.cn ], [ %i.ov, %bb.co ]
  store ptr %.1.i.i52.i.i.i, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.or, ptr %5, align 8, !tbaa !16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.ck, %bb.ci
  %i.pe = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.pf = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.pg = add i32 %i.pf, 1
  store i32 %i.pg, ptr %i.he, align 4, !tbaa !14
  %i.ph = zext i32 %i.pf to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 %i.ph
  store i8 32, ptr %i.pi, align 1, !tbaa !63
  br label %_ZN15hb_vector_buf_t8append_cEc.exit

_ZN15hb_vector_buf_t8append_cEc.exit:             ; preds = %bb.cj, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i, %.critedge.i.i
  store i8 %i.id, ptr @_hb_CrapPool, align 16
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN15hb_vector_buf_t8append_cEc.exit, %bb.ch
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.14.2, i64 %indvars.iv582
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !61
  %i.pl = call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %5, i32 noundef %i.pk) ; 0 uses
  %i.pm = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.pn = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.pm, i32 4) ; 2 uses
  %i.po = extractvalue { i32, i1 } %i.pn, 1
  %i.pp = extractvalue { i32, i1 } %i.pn, 0       ; 4 uses
  %i.pq = icmp slt i32 %i.pp, 0
  %or.cond.i.i123 = or i1 %i.po, %i.pq
  br i1 %or.cond.i.i123, label %_ZN15hb_vector_buf_t10append_strEPKc.exit141, label %bb.cq, !prof !62

bb.cq:                                            ; preds = %bb.cp
  %i.pr = load i32, ptr %5, align 8, !tbaa !16    ; 4 uses
  %i.ps = icmp slt i32 %i.pr, 0
  br i1 %i.ps, label %_ZN15hb_vector_buf_t10append_strEPKc.exit141, label %bb.cr, !prof !23

bb.cr:                                            ; preds = %bb.cq
  %.not.i.i.i.i124 = icmp samesign ugt i32 %i.pp, %i.pr
  br i1 %.not.i.i.i.i124, label %.preheader.i.i.i.i127, label %bb.cw, !prof !23

.preheader.i.i.i.i127:                            ; preds = %bb.cr, %.preheader.i.i.i.i127
  %.053.i.i.i.i128 = phi i32 [ %i.pv, %.preheader.i.i.i.i127 ], [ %i.pr, %bb.cr ] ; 2 uses
  %i.pt = lshr i32 %.053.i.i.i.i128, 1
  %i.pu = add nuw i32 %.053.i.i.i.i128, 8
  %i.pv = add nuw i32 %i.pu, %i.pt                ; 6 uses
  %i.pw = icmp ugt i32 %i.pp, %i.pv
  br i1 %i.pw, label %.preheader.i.i.i.i127, label %.thread39.i.i.i.i129, !llvm.loop !0

.thread39.i.i.i.i129:                             ; preds = %.preheader.i.i.i.i127
  %.not8.i.i.i.i.i.i130 = icmp eq i32 %i.pr, 0
  %i.px = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i130, label %bb.cs, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i131

bb.cs:                                            ; preds = %.thread39.i.i.i.i129
  %.not9.i.i.i.i.i.i138 = icmp eq ptr %i.px, null
  br i1 %.not9.i.i.i.i.i.i138, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i131, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.py = zext i32 %i.pv to i64
  %i.pz = call ptr @hb_malloc(i64 noundef %i.py) #12 ; 4 uses
  %.not10.i.i.i.i.i.i139 = icmp eq ptr %i.pz, null
  br i1 %.not10.i.i.i.i.i.i139, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i135, label %bb.cu, !prof !23

bb.cu:                                            ; preds = %bb.ct
  %i.qa = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i140 = icmp eq i32 %i.qa, 0
  br i1 %.not.i.i.i.i.i.i.i140, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i133, label %bb.cv, !prof !23

bb.cv:                                            ; preds = %bb.cu
  %i.qb = zext i32 %i.qa to i64
  %i.qc = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pz, ptr readonly align 1 %i.qc, i64 range(i64 0, 103079215081) %i.qb, i1 false), !alias.scope !1185
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i133

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i131: ; preds = %bb.cs, %.thread39.i.i.i.i129
  %i.qd = phi ptr [ null, %bb.cs ], [ %i.px, %.thread39.i.i.i.i129 ]
  %i.qe = zext i32 %i.pv to i64
  %i.qf = call ptr @hb_realloc(ptr noundef %i.qd, i64 noundef %i.qe) #12 ; 2 uses
  %.not22.i.i.i.i132 = icmp eq ptr %i.qf, null
  br i1 %.not22.i.i.i.i132, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i135, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i133, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i135: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i131, %bb.ct
  %i.qg = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i136 = icmp ugt i32 %i.pv, %i.qg
  br i1 %.not23.i.i.i.i136, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i137, label %bb.cw

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i133: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i131, %bb.cv, %bb.cu
  %.1.i.i52.i.i.i.i134 = phi ptr [ %i.qf, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i131 ], [ %i.pz, %bb.cu ], [ %i.pz, %bb.cv ]
  store ptr %.1.i.i52.i.i.i.i134, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.pv, ptr %5, align 8, !tbaa !16
  br label %bb.cw

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i137:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i135
  %i.qh = xor i32 %i.qg, -1
  store i32 %i.qh, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit141

bb.cw:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i133, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i135, %bb.cr
  store i32 %i.pp, ptr %i.he, align 4, !tbaa !14
  %i.qi = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.qj = zext i32 %i.pm to i64
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qj
  store i32 1377841184, ptr %i.qk, align 1, !alias.scope !1186
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit141

_ZN15hb_vector_buf_t10append_strEPKc.exit141:     ; preds = %bb.cp, %bb.cq, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i137, %bb.cw
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge543, label %bb.ch, !llvm.loop !1134

._crit_edge546:                                   ; preds = %bb.dm
  %i.ql = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.qm = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ql, i32 11) ; 2 uses
  %i.qn = extractvalue { i32, i1 } %i.qm, 1
  %i.qo = extractvalue { i32, i1 } %i.qm, 0       ; 4 uses
  %i.qp = icmp slt i32 %i.qo, 0
  %or.cond.i.i142 = or i1 %i.qn, %i.qp
  br i1 %or.cond.i.i142, label %.lr.ph548, label %bb.cx, !prof !62

bb.cx:                                            ; preds = %._crit_edge546
  %i.qq = load i32, ptr %5, align 8, !tbaa !16    ; 4 uses
  %i.qr = icmp slt i32 %i.qq, 0
  br i1 %i.qr, label %.lr.ph548, label %bb.cy, !prof !23

bb.cy:                                            ; preds = %bb.cx
end_hunk_1
