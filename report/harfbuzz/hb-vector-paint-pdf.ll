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
  br i1 %i.at, label %.preheader.i.i, label %"_ZN10hb_array_tI15hb_color_stop_tE5qsortIZL41hb_pdf_build_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_tE3$_0EE17hb_sorted_array_tIS0_ET_.exit", !llvm.loop !972

bb.k:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ar, ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.016.i.i, ptr noundef nonnull align 4 dereferenceable(12) %2, i64 12, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.au = icmp ugt ptr %i.ar, %i.ap
  br i1 %i.au, label %.lr.ph.i.i, label %.critedge.i.loopexit.i, !llvm.loop !973

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
  %i.bc = add i32 %i.b, -1
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.cu, ptr noundef nonnull readonly align 1 dereferenceable(33) @.str.71, i64 range(i64 0, 103079215081) 33, i1 false), !alias.scope !1038
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
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pz, ptr readonly align 1 %i.qc, i64 range(i64 0, 103079215081) %i.qb, i1 false), !alias.scope !1188
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
  store i32 1377841184, ptr %i.qk, align 1, !alias.scope !1189
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit141

_ZN15hb_vector_buf_t10append_strEPKc.exit141:     ; preds = %bb.cp, %bb.cq, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i137, %bb.cw
  %indvars.iv.next583 = add nuw nsw i64 %indvars.iv582, 1 ; 2 uses
  %exitcond586.not = icmp eq i64 %indvars.iv.next583, %wide.trip.count585
  br i1 %exitcond586.not, label %._crit_edge543, label %bb.ch, !llvm.loop !1137

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
  %.not.i.i.i.i143 = icmp samesign ugt i32 %i.qo, %i.qq
  br i1 %.not.i.i.i.i143, label %.preheader.i.i.i.i146, label %bb.dd, !prof !23

.preheader.i.i.i.i146:                            ; preds = %bb.cy, %.preheader.i.i.i.i146
  %.053.i.i.i.i147 = phi i32 [ %i.qu, %.preheader.i.i.i.i146 ], [ %i.qq, %bb.cy ] ; 2 uses
  %i.qs = lshr i32 %.053.i.i.i.i147, 1
  %i.qt = add nuw i32 %.053.i.i.i.i147, 8
  %i.qu = add nuw i32 %i.qt, %i.qs                ; 6 uses
  %i.qv = icmp ugt i32 %i.qo, %i.qu
  br i1 %i.qv, label %.preheader.i.i.i.i146, label %.thread39.i.i.i.i148, !llvm.loop !0

.thread39.i.i.i.i148:                             ; preds = %.preheader.i.i.i.i146
  %.not8.i.i.i.i.i.i149 = icmp eq i32 %i.qq, 0
  %i.qw = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i149, label %bb.cz, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i150

bb.cz:                                            ; preds = %.thread39.i.i.i.i148
  %.not9.i.i.i.i.i.i157 = icmp eq ptr %i.qw, null
  br i1 %.not9.i.i.i.i.i.i157, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i150, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qx = zext i32 %i.qu to i64
  %i.qy = call ptr @hb_malloc(i64 noundef %i.qx) #12 ; 4 uses
  %.not10.i.i.i.i.i.i158 = icmp eq ptr %i.qy, null
  br i1 %.not10.i.i.i.i.i.i158, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i154, label %bb.db, !prof !23

bb.db:                                            ; preds = %bb.da
  %i.qz = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i159 = icmp eq i32 %i.qz, 0
  br i1 %.not.i.i.i.i.i.i.i159, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i152, label %bb.dc, !prof !23

bb.dc:                                            ; preds = %bb.db
  %i.ra = zext i32 %i.qz to i64
  %i.rb = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qy, ptr readonly align 1 %i.rb, i64 range(i64 0, 103079215081) %i.ra, i1 false), !alias.scope !1190
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i152

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i150: ; preds = %bb.cz, %.thread39.i.i.i.i148
  %i.rc = phi ptr [ null, %bb.cz ], [ %i.qw, %.thread39.i.i.i.i148 ]
  %i.rd = zext i32 %i.qu to i64
  %i.re = call ptr @hb_realloc(ptr noundef %i.rc, i64 noundef %i.rd) #12 ; 2 uses
  %.not22.i.i.i.i151 = icmp eq ptr %i.re, null
  br i1 %.not22.i.i.i.i151, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i154, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i152, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i154: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i150, %bb.da
  %i.rf = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i155 = icmp ugt i32 %i.qu, %i.rf
  br i1 %.not23.i.i.i.i155, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i156, label %bb.dd

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i152: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i150, %bb.dc, %bb.db
  %.1.i.i52.i.i.i.i153 = phi ptr [ %i.re, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i150 ], [ %i.qy, %bb.db ], [ %i.qy, %bb.dc ]
  store ptr %.1.i.i52.i.i.i.i153, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.qu, ptr %5, align 8, !tbaa !16
  br label %bb.dd

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i156:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i154
  %i.rg = xor i32 %i.rf, -1
  store i32 %i.rg, ptr %5, align 8, !tbaa !16
  br label %.lr.ph548

bb.dd:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i152, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i154, %bb.cy
  store i32 %i.qo, ptr %i.he, align 4, !tbaa !14
  %i.rh = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.ri = zext i32 %i.ql to i64
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.ri
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.rj, ptr noundef nonnull readonly align 1 dereferenceable(11) @.str.83, i64 range(i64 0, 103079215081) 11, i1 false), !alias.scope !1191
  br label %.lr.ph548

.lr.ph548:                                        ; preds = %bb.dd, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i156, %bb.cx, %._crit_edge546
  %i.rk = load i8, ptr @_hb_NullPool, align 16
  br label %bb.eb

bb.de:                                            ; preds = %.lr.ph545, %bb.dm
  %indvars.iv589 = phi i64 [ 1, %.lr.ph545 ], [ %indvars.iv.next590, %bb.dm ] ; 3 uses
  %i.rl = icmp samesign ugt i64 %indvars.iv589, 1
  br i1 %i.rl, label %bb.df, label %bb.dm

bb.df:                                            ; preds = %bb.de
  %i.rm = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.rn = load i32, ptr %5, align 8, !tbaa !16    ; 5 uses
  %.not.i.i161 = icmp slt i32 %i.rm, %i.rn
  br i1 %.not.i.i161, label %.critedge.i.i163, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ro = add i32 %i.rm, 1                        ; 2 uses
  %i.rp = icmp slt i32 %i.rn, 0
  br i1 %i.rp, label %_ZN15hb_vector_buf_t8append_cEc.exit179, label %bb.dh, !prof !23

bb.dh:                                            ; preds = %bb.dg
  %.not.i.i.i162 = icmp ugt i32 %i.ro, %i.rn
  br i1 %.not.i.i.i162, label %.preheader.i.i.i165, label %.critedge.i.i163, !prof !23

.preheader.i.i.i165:                              ; preds = %bb.dh, %.preheader.i.i.i165
  %.053.i.i.i166 = phi i32 [ %i.rs, %.preheader.i.i.i165 ], [ %i.rn, %bb.dh ] ; 2 uses
  %i.rq = lshr i32 %.053.i.i.i166, 1
  %i.rr = add i32 %.053.i.i.i166, 8
  %i.rs = add i32 %i.rr, %i.rq                    ; 6 uses
  %i.rt = icmp ugt i32 %i.ro, %i.rs
  br i1 %i.rt, label %.preheader.i.i.i165, label %.thread39.i.i.i167, !llvm.loop !0

.thread39.i.i.i167:                               ; preds = %.preheader.i.i.i165
  %.not8.i.i.i.i.i168 = icmp eq i32 %i.rn, 0
  %i.ru = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i168, label %bb.di, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i169

bb.di:                                            ; preds = %.thread39.i.i.i167
  %.not9.i.i.i.i.i176 = icmp eq ptr %i.ru, null
  br i1 %.not9.i.i.i.i.i176, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i169, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rv = zext i32 %i.rs to i64
  %i.rw = call ptr @hb_malloc(i64 noundef %i.rv) #12 ; 4 uses
  %.not10.i.i.i.i.i177 = icmp eq ptr %i.rw, null
  br i1 %.not10.i.i.i.i.i177, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i173, label %bb.dk, !prof !23

bb.dk:                                            ; preds = %bb.dj
  %i.rx = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i178 = icmp eq i32 %i.rx, 0
  br i1 %.not.i.i.i.i.i.i178, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i171, label %bb.dl, !prof !23

bb.dl:                                            ; preds = %bb.dk
  %i.ry = zext i32 %i.rx to i64
  %i.rz = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rw, ptr readonly align 1 %i.rz, i64 range(i64 0, 103079215081) %i.ry, i1 false), !alias.scope !1192
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i171

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i169: ; preds = %bb.di, %.thread39.i.i.i167
  %i.sa = phi ptr [ null, %bb.di ], [ %i.ru, %.thread39.i.i.i167 ]
  %i.sb = zext i32 %i.rs to i64
  %i.sc = call ptr @hb_realloc(ptr noundef %i.sa, i64 noundef %i.sb) #12 ; 2 uses
  %.not22.i.i.i170 = icmp eq ptr %i.sc, null
  br i1 %.not22.i.i.i170, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i173, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i171, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i173: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i169, %bb.dj
  %i.sd = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i174 = icmp ugt i32 %i.rs, %i.sd
  br i1 %.not23.i.i.i174, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i175, label %.critedge.i.i163

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i175: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i173
  %i.se = xor i32 %i.sd, -1
  store i32 %i.se, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t8append_cEc.exit179

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i171:     ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i169, %bb.dl, %bb.dk
  %.1.i.i52.i.i.i172 = phi ptr [ %i.sc, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i169 ], [ %i.rw, %bb.dk ], [ %i.rw, %bb.dl ]
  store ptr %.1.i.i52.i.i.i172, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.rs, ptr %5, align 8, !tbaa !16
  br label %.critedge.i.i163

.critedge.i.i163:                                 ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i171, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i173, %bb.dh, %bb.df
  %i.sf = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.sg = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.sh = add i32 %i.sg, 1
  store i32 %i.sh, ptr %i.he, align 4, !tbaa !14
  %i.si = zext i32 %i.sg to i64
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.si
  store i8 32, ptr %i.sj, align 1, !tbaa !63
  br label %_ZN15hb_vector_buf_t8append_cEc.exit179

_ZN15hb_vector_buf_t8append_cEc.exit179:          ; preds = %bb.dg, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i175, %.critedge.i.i163
  store i8 %i.oi, ptr @_hb_CrapPool, align 16
  br label %bb.dm

bb.dm:                                            ; preds = %_ZN15hb_vector_buf_t8append_cEc.exit179, %bb.de
  %i.sk = load ptr, ptr %i.oj, align 8, !tbaa !77
  %i.sl = getelementptr inbounds nuw [12 x i8], ptr %i.sk, i64 %indvars.iv589
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !82
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %5, float noundef %i.sm, i32 noundef 4)
  %indvars.iv.next590 = add nuw nsw i64 %indvars.iv589, 1 ; 2 uses
  %exitcond595.not = icmp eq i64 %indvars.iv.next590, %wide.trip.count594
  br i1 %exitcond595.not, label %._crit_edge546, label %bb.de, !llvm.loop !1147

._crit_edge549:                                   ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit254
  %i.sn = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.so = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.sn, i32 4) ; 2 uses
  %i.sp = extractvalue { i32, i1 } %i.so, 1
  %i.sq = extractvalue { i32, i1 } %i.so, 0       ; 4 uses
  %i.sr = icmp slt i32 %i.sq, 0
  %or.cond.i.i180 = or i1 %i.sp, %i.sr
  br i1 %or.cond.i.i180, label %_ZN15hb_vector_buf_t10append_strEPKc.exit198, label %bb.dn, !prof !62

bb.dn:                                            ; preds = %._crit_edge549
  %i.ss = load i32, ptr %5, align 8, !tbaa !16    ; 4 uses
  %i.st = icmp slt i32 %i.ss, 0
  br i1 %i.st, label %_ZN15hb_vector_buf_t10append_strEPKc.exit198, label %bb.do, !prof !23

bb.do:                                            ; preds = %bb.dn
  %.not.i.i.i.i181 = icmp samesign ugt i32 %i.sq, %i.ss
  br i1 %.not.i.i.i.i181, label %.preheader.i.i.i.i184, label %bb.dt, !prof !23

.preheader.i.i.i.i184:                            ; preds = %bb.do, %.preheader.i.i.i.i184
  %.053.i.i.i.i185 = phi i32 [ %i.sw, %.preheader.i.i.i.i184 ], [ %i.ss, %bb.do ] ; 2 uses
  %i.su = lshr i32 %.053.i.i.i.i185, 1
  %i.sv = add nuw i32 %.053.i.i.i.i185, 8
  %i.sw = add nuw i32 %i.sv, %i.su                ; 6 uses
  %i.sx = icmp ugt i32 %i.sq, %i.sw
  br i1 %i.sx, label %.preheader.i.i.i.i184, label %.thread39.i.i.i.i186, !llvm.loop !0

.thread39.i.i.i.i186:                             ; preds = %.preheader.i.i.i.i184
  %.not8.i.i.i.i.i.i187 = icmp eq i32 %i.ss, 0
  %i.sy = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i187, label %bb.dp, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i188

bb.dp:                                            ; preds = %.thread39.i.i.i.i186
  %.not9.i.i.i.i.i.i195 = icmp eq ptr %i.sy, null
  br i1 %.not9.i.i.i.i.i.i195, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i188, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.sz = zext i32 %i.sw to i64
  %i.ta = call ptr @hb_malloc(i64 noundef %i.sz) #12 ; 4 uses
  %.not10.i.i.i.i.i.i196 = icmp eq ptr %i.ta, null
  br i1 %.not10.i.i.i.i.i.i196, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i192, label %bb.dr, !prof !23

bb.dr:                                            ; preds = %bb.dq
  %i.tb = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i197 = icmp eq i32 %i.tb, 0
  br i1 %.not.i.i.i.i.i.i.i197, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i190, label %bb.ds, !prof !23

bb.ds:                                            ; preds = %bb.dr
  %i.tc = zext i32 %i.tb to i64
  %i.td = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ta, ptr readonly align 1 %i.td, i64 range(i64 0, 103079215081) %i.tc, i1 false), !alias.scope !1193
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i190

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i188: ; preds = %bb.dp, %.thread39.i.i.i.i186
  %i.te = phi ptr [ null, %bb.dp ], [ %i.sy, %.thread39.i.i.i.i186 ]
  %i.tf = zext i32 %i.sw to i64
  %i.tg = call ptr @hb_realloc(ptr noundef %i.te, i64 noundef %i.tf) #12 ; 2 uses
  %.not22.i.i.i.i189 = icmp eq ptr %i.tg, null
  br i1 %.not22.i.i.i.i189, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i192, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i190, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i192: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i188, %bb.dq
  %i.th = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i193 = icmp ugt i32 %i.sw, %i.th
  br i1 %.not23.i.i.i.i193, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i194, label %bb.dt

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i190: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i188, %bb.ds, %bb.dr
  %.1.i.i52.i.i.i.i191 = phi ptr [ %i.tg, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i188 ], [ %i.ta, %bb.dr ], [ %i.ta, %bb.ds ]
  store ptr %.1.i.i52.i.i.i.i191, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.sw, ptr %5, align 8, !tbaa !16
  br label %bb.dt

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i194:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i192
  %i.ti = xor i32 %i.th, -1
  store i32 %i.ti, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit198

bb.dt:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i190, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i192, %bb.do
  store i32 %i.sq, ptr %i.he, align 4, !tbaa !14
  %i.tj = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.tk = zext i32 %i.sn to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tk
  store i32 1044258909, ptr %i.tl, align 1, !alias.scope !1194
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit198

_ZN15hb_vector_buf_t10append_strEPKc.exit198:     ; preds = %._crit_edge549, %bb.dn, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i194, %bb.dt
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.tn = load i32, ptr %i.tm, align 4, !tbaa !52 ; 4 uses
  %i.to = load <2 x i32>, ptr %5, align 8, !tbaa !61
  %i.tp = load i32, ptr %5, align 8, !tbaa !61
  store i32 0, ptr %5, align 8, !tbaa !61
  store i32 0, ptr %i.he, align 4, !tbaa !61
  %i.tq = load ptr, ptr %i.hf, align 8, !tbaa !68 ; 2 uses
  store ptr null, ptr %i.hf, align 8, !tbaa !68
  %i.tr = load i32, ptr %i.hd, align 8, !tbaa !53
  %i.ts = load i32, ptr %0, align 8, !tbaa !19    ; 5 uses
  %.not.i.i199 = icmp slt i32 %i.tn, %i.ts
  br i1 %.not.i.i199, label %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i201, label %bb.du

bb.du:                                            ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit198
end_hunk_1
begin_hunk_2_@_ZL47hb_pdf_build_alpha_gradient_function_from_stopsP18hb_pdf_resources_tP17hb_vector_paint_t:bb.a

_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit213: ; preds = %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.thread.i201, %_ZN11hb_vector_tI12hb_pdf_obj_tLb0EE4pushIJS0_EEEPS0_DpOT_.exit.i211, %bb.dy
  %i.um = load i32, ptr %5, align 8, !tbaa !16
  %i.un = add i32 %i.um, -1
  %spec.select.i.i.i214 = icmp ult i32 %i.un, -2
  br i1 %spec.select.i.i.i214, label %bb.dz, label %_ZN11hb_vector_tIcLb0EED2Ev.exit215

bb.dz:                                            ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit213
  store i32 0, ptr %i.he, align 4, !tbaa !14
  %i.uo = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @hb_free(ptr noundef %i.uo) #12
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit215

_ZN11hb_vector_tIcLb0EED2Ev.exit215:              ; preds = %_ZN18hb_pdf_resources_t10add_objectEO15hb_vector_buf_t.exit213, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.up = add i32 %.sroa.0.2, -1
  %spec.select.i.i.i216 = icmp ult i32 %i.up, -2
  br i1 %spec.select.i.i.i216, label %bb.ea, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.ea:                                            ; preds = %_ZN11hb_vector_tIcLb0EED2Ev.exit215
  call void @hb_free(ptr noundef %.sroa.14.2) #12
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.eb:                                            ; preds = %.lr.ph548, %_ZN15hb_vector_buf_t10append_strEPKc.exit254
  %i.uq = phi i32 [ 1, %.lr.ph548 ], [ %i.wn, %_ZN15hb_vector_buf_t10append_strEPKc.exit254 ]
  %.not = phi i1 [ true, %.lr.ph548 ], [ false, %_ZN15hb_vector_buf_t10append_strEPKc.exit254 ]
  %.pre605 = load i32, ptr %i.he, align 4, !tbaa !14 ; 3 uses
  br i1 %.not, label %bb.ej, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ur = load i32, ptr %5, align 8, !tbaa !16    ; 5 uses
  %.not.i.i217 = icmp slt i32 %.pre605, %i.ur
  br i1 %.not.i.i217, label %.critedge.i.i219, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.us = add i32 %.pre605, 1                     ; 2 uses
  %i.ut = icmp slt i32 %i.ur, 0
  br i1 %i.ut, label %_ZN15hb_vector_buf_t8append_cEc.exit235, label %bb.ee, !prof !23

bb.ee:                                            ; preds = %bb.ed
  %.not.i.i.i218 = icmp ugt i32 %i.us, %i.ur
  br i1 %.not.i.i.i218, label %.preheader.i.i.i221, label %.critedge.i.i219, !prof !23

.preheader.i.i.i221:                              ; preds = %bb.ee, %.preheader.i.i.i221
  %.053.i.i.i222 = phi i32 [ %i.uw, %.preheader.i.i.i221 ], [ %i.ur, %bb.ee ] ; 2 uses
  %i.uu = lshr i32 %.053.i.i.i222, 1
  %i.uv = add i32 %.053.i.i.i222, 8
  %i.uw = add i32 %i.uv, %i.uu                    ; 6 uses
  %i.ux = icmp ugt i32 %i.us, %i.uw
  br i1 %i.ux, label %.preheader.i.i.i221, label %.thread39.i.i.i223, !llvm.loop !0

.thread39.i.i.i223:                               ; preds = %.preheader.i.i.i221
  %.not8.i.i.i.i.i224 = icmp eq i32 %i.ur, 0
  %i.uy = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i224, label %bb.ef, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i225

bb.ef:                                            ; preds = %.thread39.i.i.i223
  %.not9.i.i.i.i.i232 = icmp eq ptr %i.uy, null
  br i1 %.not9.i.i.i.i.i232, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i225, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.uz = zext i32 %i.uw to i64
  %i.va = call ptr @hb_malloc(i64 noundef %i.uz) #12 ; 4 uses
  %.not10.i.i.i.i.i233 = icmp eq ptr %i.va, null
  br i1 %.not10.i.i.i.i.i233, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i229, label %bb.eh, !prof !23

bb.eh:                                            ; preds = %bb.eg
  %i.vb = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i234 = icmp eq i32 %i.vb, 0
  br i1 %.not.i.i.i.i.i.i234, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i227, label %bb.ei, !prof !23

bb.ei:                                            ; preds = %bb.eh
  %i.vc = zext i32 %i.vb to i64
  %i.vd = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.va, ptr readonly align 1 %i.vd, i64 range(i64 0, 103079215081) %i.vc, i1 false), !alias.scope !1195
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i227

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i225: ; preds = %bb.ef, %.thread39.i.i.i223
  %i.ve = phi ptr [ null, %bb.ef ], [ %i.uy, %.thread39.i.i.i223 ]
  %i.vf = zext i32 %i.uw to i64
  %i.vg = call ptr @hb_realloc(ptr noundef %i.ve, i64 noundef %i.vf) #12 ; 2 uses
  %.not22.i.i.i226 = icmp eq ptr %i.vg, null
  br i1 %.not22.i.i.i226, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i229, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i227, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i229: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i225, %bb.eg
  %i.vh = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i230 = icmp ugt i32 %i.uw, %i.vh
  br i1 %.not23.i.i.i230, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i231, label %.critedge.i.i219

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i231: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i229
  %i.vi = xor i32 %i.vh, -1
  store i32 %i.vi, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t8append_cEc.exit235

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i227:     ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i225, %bb.ei, %bb.eh
  %.1.i.i52.i.i.i228 = phi ptr [ %i.vg, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i225 ], [ %i.va, %bb.eh ], [ %i.va, %bb.ei ]
  store ptr %.1.i.i52.i.i.i228, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.uw, ptr %5, align 8, !tbaa !16
  br label %.critedge.i.i219

.critedge.i.i219:                                 ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i227, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i229, %bb.ee, %bb.ec
  %i.vj = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.vk = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %i.vl = add i32 %i.vk, 1
  store i32 %i.vl, ptr %i.he, align 4, !tbaa !14
  %i.vm = zext i32 %i.vk to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vm
  store i8 32, ptr %i.vn, align 1, !tbaa !63
  br label %_ZN15hb_vector_buf_t8append_cEc.exit235

_ZN15hb_vector_buf_t8append_cEc.exit235:          ; preds = %bb.ed, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i231, %.critedge.i.i219
  store i8 %i.rk, ptr @_hb_CrapPool, align 16
  %.pre604 = load i32, ptr %i.he, align 4, !tbaa !14
  br label %bb.ej

bb.ej:                                            ; preds = %_ZN15hb_vector_buf_t8append_cEc.exit235, %bb.eb
  %i.vo = phi i32 [ %.pre604, %_ZN15hb_vector_buf_t8append_cEc.exit235 ], [ %.pre605, %bb.eb ] ; 2 uses
  %i.vp = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.vo, i32 3) ; 2 uses
  %i.vq = extractvalue { i32, i1 } %i.vp, 1
  %i.vr = extractvalue { i32, i1 } %i.vp, 0       ; 4 uses
  %i.vs = icmp slt i32 %i.vr, 0
  %or.cond.i.i236 = or i1 %i.vq, %i.vs
  br i1 %or.cond.i.i236, label %_ZN15hb_vector_buf_t10append_strEPKc.exit254, label %bb.ek, !prof !62

bb.ek:                                            ; preds = %bb.ej
  %i.vt = load i32, ptr %5, align 8, !tbaa !16    ; 4 uses
  %i.vu = icmp slt i32 %i.vt, 0
  br i1 %i.vu, label %_ZN15hb_vector_buf_t10append_strEPKc.exit254, label %bb.el, !prof !23

bb.el:                                            ; preds = %bb.ek
  %.not.i.i.i.i237 = icmp samesign ugt i32 %i.vr, %i.vt
  br i1 %.not.i.i.i.i237, label %.preheader.i.i.i.i240, label %bb.eq, !prof !23

.preheader.i.i.i.i240:                            ; preds = %bb.el, %.preheader.i.i.i.i240
  %.053.i.i.i.i241 = phi i32 [ %i.vx, %.preheader.i.i.i.i240 ], [ %i.vt, %bb.el ] ; 2 uses
  %i.vv = lshr i32 %.053.i.i.i.i241, 1
  %i.vw = add nuw i32 %.053.i.i.i.i241, 8
  %i.vx = add nuw i32 %i.vw, %i.vv                ; 6 uses
  %i.vy = icmp ugt i32 %i.vr, %i.vx
  br i1 %i.vy, label %.preheader.i.i.i.i240, label %.thread39.i.i.i.i242, !llvm.loop !0

.thread39.i.i.i.i242:                             ; preds = %.preheader.i.i.i.i240
  %.not8.i.i.i.i.i.i243 = icmp eq i32 %i.vt, 0
  %i.vz = load ptr, ptr %i.hf, align 8, !tbaa !15 ; 2 uses
  br i1 %.not8.i.i.i.i.i.i243, label %bb.em, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i244

bb.em:                                            ; preds = %.thread39.i.i.i.i242
  %.not9.i.i.i.i.i.i251 = icmp eq ptr %i.vz, null
  br i1 %.not9.i.i.i.i.i.i251, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i244, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.wa = zext i32 %i.vx to i64
  %i.wb = call ptr @hb_malloc(i64 noundef %i.wa) #12 ; 4 uses
  %.not10.i.i.i.i.i.i252 = icmp eq ptr %i.wb, null
  br i1 %.not10.i.i.i.i.i.i252, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i248, label %bb.eo, !prof !23

bb.eo:                                            ; preds = %bb.en
  %i.wc = load i32, ptr %i.he, align 4, !tbaa !14 ; 2 uses
  %.not.i.i.i.i.i.i.i253 = icmp eq i32 %i.wc, 0
  br i1 %.not.i.i.i.i.i.i.i253, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i246, label %bb.ep, !prof !23

bb.ep:                                            ; preds = %bb.eo
  %i.wd = zext i32 %i.wc to i64
  %i.we = load ptr, ptr %i.hf, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.wb, ptr readonly align 1 %i.we, i64 range(i64 0, 103079215081) %i.wd, i1 false), !alias.scope !1196
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i246

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i244: ; preds = %bb.em, %.thread39.i.i.i.i242
  %i.wf = phi ptr [ null, %bb.em ], [ %i.vz, %.thread39.i.i.i.i242 ]
  %i.wg = zext i32 %i.vx to i64
  %i.wh = call ptr @hb_realloc(ptr noundef %i.wf, i64 noundef %i.wg) #12 ; 2 uses
  %.not22.i.i.i.i245 = icmp eq ptr %i.wh, null
  br i1 %.not22.i.i.i.i245, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i248, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i246, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i248: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i244, %bb.en
  %i.wi = load i32, ptr %5, align 8, !tbaa !16    ; 2 uses
  %.not23.i.i.i.i249 = icmp ugt i32 %i.vx, %i.wi
  br i1 %.not23.i.i.i.i249, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i250, label %bb.eq

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i246: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i244, %bb.ep, %bb.eo
  %.1.i.i52.i.i.i.i247 = phi ptr [ %i.wh, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i244 ], [ %i.wb, %bb.eo ], [ %i.wb, %bb.ep ]
  store ptr %.1.i.i52.i.i.i.i247, ptr %i.hf, align 8, !tbaa !15
  store i32 %i.vx, ptr %5, align 8, !tbaa !16
  br label %bb.eq

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i250:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i248
  %i.wj = xor i32 %i.wi, -1
  store i32 %i.wj, ptr %5, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit254

bb.eq:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i246, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i248, %bb.el
  store i32 %i.vr, ptr %i.he, align 4, !tbaa !14
  %i.wk = load ptr, ptr %i.hf, align 8, !tbaa !15
  %i.wl = zext i32 %i.vo to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wk, i64 %i.wl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wm, ptr noundef nonnull readonly align 1 dereferenceable(3) @.str.77, i64 range(i64 0, 103079215081) 3, i1 false), !alias.scope !1197
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit254

_ZN15hb_vector_buf_t10append_strEPKc.exit254:     ; preds = %bb.ej, %bb.ek, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i250, %bb.eq
  %i.wn = add nuw i32 %i.uq, 1                    ; 2 uses
  %exitcond597.not = icmp eq i32 %i.wn, %i.b
  br i1 %exitcond597.not, label %._crit_edge549, label %bb.eb, !llvm.loop !1163

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %bb.ea, %_ZN11hb_vector_tIcLb0EED2Ev.exit215, %_ZN11hb_vector_tIcLb0EED2Ev.exit60, %_ZN11hb_vector_tIcLb0EED2Ev.exit
  %.037.in = phi i32 [ %i.bq, %_ZN11hb_vector_tIcLb0EED2Ev.exit ], [ %i.ga, %_ZN11hb_vector_tIcLb0EED2Ev.exit60 ], [ %i.tn, %_ZN11hb_vector_tIcLb0EED2Ev.exit215 ], [ %i.tn, %bb.ea ]
  %.037 = add i32 %.037.in, 5
  ret i32 %.037
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN18hb_pdf_resources_t19add_extgstate_smaskEjffffj(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #0 comdat align 2 {
.preheader.i.i.i.i:
  %7 = alloca %struct.hb_vector_buf_t, align 8    ; 59 uses
  %8 = alloca %struct.hb_vector_buf_t, align 8    ; 22 uses
  %i.a = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 8) #12 ; 4 uses
  %.not22.i.i.i.i.not = icmp eq ptr %i.a, null    ; 3 uses
  br i1 %.not22.i.i.i.i.not, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i23, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i: ; preds = %.preheader.i.i.i.i
  store i64 749975920865465135, ptr %i.a, align 1, !alias.scope !1273
  br label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i23

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i23: ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, %.preheader.i.i.i.i
  %.sroa.8.0 = phi i32 [ 0, %.preheader.i.i.i.i ], [ 8, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i32 2, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 37 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 45 uses
  %i.e = tail call ptr @hb_realloc(ptr noundef null, i64 noundef 38) #12 ; 4 uses
  %.not22.i.i.i.i24 = icmp eq ptr %i.e, null
  br i1 %.not22.i.i.i.i24, label %.thread, label %.preheader.i.i.i.i38.preheader, !prof !59

.thread:                                          ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i23
  store i32 -1, ptr %7, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit52

.preheader.i.i.i.i38.preheader:                   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i23
  store ptr %i.e, ptr %i.d, align 8, !tbaa !15
  store i32 33, ptr %i.c, align 4, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(33) @.str.85, i64 range(i64 0, 103079215081) 33, i1 false), !alias.scope !1274
  %i.f = tail call ptr @hb_realloc(ptr noundef nonnull %i.e, i64 noundef 65) #12 ; 3 uses
  %.not22.i.i.i.i43 = icmp eq ptr %i.f, null
  br i1 %.not22.i.i.i.i43, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i48, label %bb.a, !prof !59

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i48:    ; preds = %.preheader.i.i.i.i38.preheader
  store i32 -39, ptr %7, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit52

bb.a:                                             ; preds = %.preheader.i.i.i.i38.preheader
  store ptr %i.f, ptr %i.d, align 8, !tbaa !15
  store i32 65, ptr %7, align 8, !tbaa !16
  store i32 40, ptr %i.c, align 4, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.g, ptr noundef nonnull readonly align 1 dereferenceable(7) @.str.86, i64 range(i64 0, 103079215081) 7, i1 false), !alias.scope !1275
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit52

_ZN15hb_vector_buf_t10append_strEPKc.exit52:      ; preds = %.thread, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i48, %bb.a
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %7, float noundef %2, i32 noundef %6)
  %i.h = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %i.i = load i32, ptr %7, align 8, !tbaa !16     ; 5 uses
  %.not.i.i = icmp slt i32 %i.h, %i.i
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit52
  %i.j = add i32 %i.h, 1                          ; 2 uses
  %i.k = icmp slt i32 %i.i, 0
  br i1 %i.k, label %_ZN15hb_vector_buf_t8append_cEc.exit, label %bb.c, !prof !23

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i53 = icmp ugt i32 %i.j, %i.i
  br i1 %.not.i.i.i53, label %.preheader.i.i.i, label %.critedge.i.i, !prof !23

.preheader.i.i.i:                                 ; preds = %bb.c, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.n, %.preheader.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.l = lshr i32 %.053.i.i.i, 1
  %i.m = add i32 %.053.i.i.i, 8
  %i.n = add i32 %i.m, %i.l                       ; 6 uses
  %i.o = icmp ugt i32 %i.j, %i.n
  br i1 %i.o, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !0

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.i, 0
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.d, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.d:                                             ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = zext i32 %i.n to i64
  %i.r = call ptr @hb_malloc(i64 noundef %i.q) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.f, !prof !23

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.c, align 4, !tbaa !14   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr readonly align 1 %i.u, i64 range(i64 0, 103079215081) %i.t, i1 false), !alias.scope !1276
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.d, %.thread39.i.i.i
  %i.v = phi ptr [ null, %bb.d ], [ %i.p, %.thread39.i.i.i ]
  %i.w = zext i32 %i.n to i64
  %i.x = call ptr @hb_realloc(ptr noundef %i.v, i64 noundef %i.w) #12 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.e
  %i.y = load i32, ptr %7, align 8, !tbaa !16     ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.n, %i.y
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i, label %.critedge.i.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.z = xor i32 %i.y, -1
  store i32 %i.z, ptr %7, align 8, !tbaa !16
  br label %_ZN15hb_vector_buf_t8append_cEc.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.g, %bb.f
  %.1.i.i52.i.i.i = phi ptr [ %i.x, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.g ]
  store ptr %.1.i.i52.i.i.i, ptr %i.d, align 8, !tbaa !15
  store i32 %i.n, ptr %7, align 8, !tbaa !16
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.c, %_ZN15hb_vector_buf_t10append_strEPKc.exit52
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.c, align 4, !tbaa !14
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  store i8 32, ptr %i.ae, align 1, !tbaa !63
  br label %_ZN15hb_vector_buf_t8append_cEc.exit

_ZN15hb_vector_buf_t8append_cEc.exit:             ; preds = %bb.b, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread7.i.i, %.critedge.i.i
  %i.af = load i8, ptr @_hb_NullPool, align 16    ; 3 uses
  store i8 %i.af, ptr @_hb_CrapPool, align 16
  call void @_ZN15hb_vector_buf_t10append_numEfj(ptr noundef nonnull align 8 dereferenceable(20) %7, float noundef %3, i32 noundef %6)
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  %i.ah = load i32, ptr %7, align 8, !tbaa !16    ; 5 uses
  %.not.i.i55 = icmp slt i32 %i.ag, %i.ah
  br i1 %.not.i.i55, label %.critedge.i.i57, label %bb.h

bb.h:                                             ; preds = %_ZN15hb_vector_buf_t8append_cEc.exit
  %i.ai = add i32 %i.ag, 1                        ; 2 uses
  %i.aj = icmp slt i32 %i.ah, 0
  br i1 %i.aj, label %_ZN15hb_vector_buf_t8append_cEc.exit73, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i56 = icmp ugt i32 %i.ai, %i.ah
  br i1 %.not.i.i.i56, label %.preheader.i.i.i59, label %.critedge.i.i57, !prof !23

.preheader.i.i.i59:                               ; preds = %bb.i, %.preheader.i.i.i59
  %.053.i.i.i60 = phi i32 [ %i.am, %.preheader.i.i.i59 ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ak = lshr i32 %.053.i.i.i60, 1
  %i.al = add i32 %.053.i.i.i60, 8
  %i.am = add i32 %i.al, %i.ak                    ; 6 uses
  %i.an = icmp ugt i32 %i.ai, %i.am
  br i1 %i.an, label %.preheader.i.i.i59, label %.thread39.i.i.i61, !llvm.loop !0

.thread39.i.i.i61:                                ; preds = %.preheader.i.i.i59
  %.not8.i.i.i.i.i62 = icmp eq i32 %i.ah, 0
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  br i1 %.not8.i.i.i.i.i62, label %bb.j, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i63

bb.j:                                             ; preds = %.thread39.i.i.i61
  %.not9.i.i.i.i.i70 = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i.i70, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i63, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = zext i32 %i.am to i64
  %i.aq = call ptr @hb_malloc(i64 noundef %i.ap) #12 ; 4 uses
  %.not10.i.i.i.i.i71 = icmp eq ptr %i.aq, null
  br i1 %.not10.i.i.i.i.i71, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i67, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !14  ; 2 uses
  %.not.i.i.i.i.i.i72 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i.i72, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i65, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr readonly align 1 %i.at, i64 range(i64 0, 103079215081) %i.as, i1 false), !alias.scope !1277
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i65

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i63: ; preds = %bb.j, %.thread39.i.i.i61
  %i.au = phi ptr [ null, %bb.j ], [ %i.ao, %.thread39.i.i.i61 ]
  %i.av = zext i32 %i.am to i64
  %i.aw = call ptr @hb_realloc(ptr noundef %i.au, i64 noundef %i.av) #12 ; 2 uses
  %.not22.i.i.i64 = icmp eq ptr %i.aw, null
  br i1 %.not22.i.i.i64, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i67, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i65, !prof !59

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i67: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i63, %bb.k
end_hunk_2
