Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-pdf?download=true
inline.NumInlined: 708
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@llvm.lifetime.end.p0

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z29hb_vector_paint_pdf_funcs_getv() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @_ZL22static_pdf_paint_funcs acquire, align 8 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.a, null
  br i1 %.not14.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI16hb_paint_funcs_t32hb_pdf_paint_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !21

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %i.b = tail call noundef ptr @_ZN32hb_pdf_paint_funcs_lazy_loader_t6createEv() ; 2 uses
  %.not10.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.c = tail call noundef ptr @hb_paint_funcs_get_empty() #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.c, %bb.b ], [ %i.b, %.lr.ph.i.i ] ; 3 uses
  %i.d = cmpxchg weak ptr @_ZL22static_pdf_paint_funcs, ptr null, ptr %.07.i.i acq_rel monotonic, align 8
  %i.e = extractvalue { ptr, i1 } %i.d, 1
  br i1 %i.e, label %_ZNK16hb_lazy_loader_tI16hb_paint_funcs_t32hb_pdf_paint_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN16hb_lazy_loader_tI16hb_paint_funcs_t32hb_pdf_paint_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i)
  %i.f = load atomic ptr, ptr @_ZL22static_pdf_paint_funcs acquire, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %.lr.ph.i.i, label %_ZNK16hb_lazy_loader_tI16hb_paint_funcs_t32hb_pdf_paint_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit, !prof !24

_ZNK16hb_lazy_loader_tI16hb_paint_funcs_t32hb_pdf_paint_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit: ; preds = %bb.c, %bb.d, %bb.a
  %.19.ph.i.i = phi ptr [ %i.a, %bb.a ], [ %i.f, %bb.d ], [ %.07.i.i, %bb.c ]
  ret ptr %.19.ph.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z26hb_vector_paint_render_pdfP17hb_vector_paint_t(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.hb_vector_buf_t, align 8    ; 214 uses
  %2 = alloca %struct.hb_vector_buf_t, align 8    ; 71 uses
  %i.a = alloca [21 x i8], align 16               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i8, ptr %i.b, align 4, !tbaa !25, !range !49, !noundef !50
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.lx

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.lx, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %.not83 = icmp eq i32 %i.j, 0
  br i1 %.not83, label %bb.lx, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call fastcc noundef ptr @_ZL20hb_pdf_get_resourcesP17hb_vector_paint_t(ptr noundef nonnull %0) ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load float, ptr %i.l, align 4, !tbaa !53 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load float, ptr %i.n, align 8, !tbaa !54 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.q = load float, ptr %i.p, align 4, !tbaa !55 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load float, ptr %i.r, align 8, !tbaa !56 ; 2 uses
  %i.t = icmp ne ptr %i.k, null                   ; 3 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi i32 [ %i.v, %bb.e ], [ 0, %bb.d ]    ; 5 uses
  %i.x = add i32 %i.w, 4                          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, i8 0, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store i32 2, ptr %i.y, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60  ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = tail call ptr @hb_blob_get_user_data(ptr noundef nonnull %i.aa, ptr noundef nonnull @_ZL33hb_vector_blob_meta_user_data_key) #12 ; 5 uses
  %.not13.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i, label %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !61, !range !49, !noundef !50
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !63 ; 3 uses
  %.not14.i = icmp eq ptr %i.af, null
  br i1 %.not14.i, label %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit, label %_ZN11hb_vector_tIcLb0EE14recycle_bufferEPcji.exit.i

_ZN11hb_vector_tIcLb0EE14recycle_bufferEPcji.exit.i: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !8
  store i32 %i.ah, ptr %1, align 8, !tbaa !13
  store ptr null, ptr %i.ab, align 8, !tbaa !63
  store i32 0, ptr %i.ag, align 8, !tbaa !64
  store i8 1, ptr %i.ac, align 4, !tbaa !61
  br label %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit

_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %_ZN11hb_vector_tIcLb0EE14recycle_bufferEPcji.exit.i
  %i.ak = phi ptr [ %i.af, %_ZN11hb_vector_tIcLb0EE14recycle_bufferEPcji.exit.i ], [ null, %bb.i ], [ null, %bb.h ], [ null, %bb.g ], [ null, %bb.f ] ; 5 uses
  %i.al = phi i32 [ %i.ah, %_ZN11hb_vector_tIcLb0EE14recycle_bufferEPcji.exit.i ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ] ; 8 uses
  %i.am = load i32, ptr %i.i, align 4, !tbaa !8
  %i.an = shl i32 %i.w, 7
  %i.ao = add i32 %i.an, 1024
  %i.ap = add i32 %i.ao, %i.am                    ; 2 uses
  %i.aq = icmp sgt i32 %i.al, -1
  %.not.i92 = icmp ugt i32 %i.ap, %i.al
  %or.cond933 = select i1 %i.aq, i1 %.not.i92, i1 false, !prof !65
  br i1 %or.cond933, label %.preheader.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit, !prof !65

.preheader.i:                                     ; preds = %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit, %.preheader.i
  %.053.i = phi i32 [ %i.at, %.preheader.i ], [ %i.al, %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit ] ; 2 uses
  %i.ar = lshr i32 %.053.i, 1
  %i.as = add i32 %.053.i, 8
  %i.at = add i32 %i.as, %i.ar                    ; 5 uses
  %i.au = icmp ugt i32 %i.ap, %i.at
  br i1 %i.au, label %.preheader.i, label %.thread39.i, !llvm.loop !66

.thread39.i:                                      ; preds = %.preheader.i
  %.not8.i.i.i = icmp ne i32 %i.al, 0
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not9.i.i.i = icmp eq ptr %i.ak, null
  %or.cond1415.a = or i1 %.not8.i.i.i, %.not9.i.i.i
  %i.aw = zext i32 %i.at to i64                   ; 2 uses
  br i1 %or.cond1415.a, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, label %bb.j

bb.j:                                             ; preds = %.thread39.i
  %i.ax = tail call ptr @hb_malloc(i64 noundef %i.aw) #12 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i, !prof !22

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i: ; preds = %.thread39.i
  %i.ay = tail call ptr @hb_realloc(ptr noundef %i.ak, i64 noundef %i.aw) #12 ; 2 uses
  %.not22.i = icmp eq ptr %i.ay, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, %bb.j
  %.not23.i = icmp ugt i32 %i.at, %i.al
  br i1 %.not23.i, label %bb.k, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

bb.k:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i
  %i.az = xor i32 %i.al, -1
  br label %.sink.split.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i: ; preds = %bb.j, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i
  %.1.i.i52.i = phi ptr [ %i.ay, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i ], [ %i.ax, %bb.j ] ; 2 uses
  store ptr %.1.i.i52.i, ptr %i.av, align 8, !tbaa !12
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i, %bb.k
  %i.ba = phi ptr [ %i.ak, %bb.k ], [ %.1.i.i52.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i ]
  %.sink.i = phi i32 [ %i.az, %bb.k ], [ %i.at, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i ] ; 2 uses
  store i32 %.sink.i, ptr %1, align 8, !tbaa !13
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit

_ZN11hb_vector_tIcLb0EE5allocEjb.exit:            ; preds = %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i, %.sink.split.i
  %i.bb = phi ptr [ %i.ak, %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit ], [ %i.ak, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i ], [ %i.ba, %.sink.split.i ] ; 5 uses
  %i.bc = phi i32 [ %i.al, %_ZL23hb_buf_recover_recycledP9hb_blob_tP15hb_vector_buf_t.exit ], [ %i.al, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i ], [ %.sink.i, %.sink.split.i ] ; 5 uses
  %i.bd = icmp slt i32 %i.x, 0
  br i1 %i.bd, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %bb.l, !prof !22

bb.l:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit
  %.not.i878.not = icmp eq i32 %i.x, 0            ; 3 uses
  br i1 %.not.i878.not, label %bb.n, label %.preheader.i880, !prof !23

.preheader.i880:                                  ; preds = %bb.l, %.preheader.i880
  %.043.i = phi i32 [ %i.bg, %.preheader.i880 ], [ 0, %bb.l ] ; 2 uses
  %i.be = lshr i32 %.043.i, 1
  %i.bf = add nuw i32 %.043.i, 8
  %i.bg = add nuw i32 %i.bf, %i.be                ; 4 uses
  %i.bh = icmp ugt i32 %i.x, %i.bg
  br i1 %i.bh, label %.preheader.i880, label %.thread.i881, !llvm.loop !68

.thread.i881:                                     ; preds = %.preheader.i880
  %i.bi = icmp ugt i32 %i.bg, 1073741823
  br i1 %i.bi, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !22

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i881
  %i.bj = shl nuw i32 %i.bg, 2
  %i.bk = zext i32 %i.bj to i64
  %i.bl = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bk) #12 ; 3 uses
  %.not22.i884 = icmp eq ptr %i.bl, null
  br i1 %.not22.i884, label %_ZN11hb_vector_tIjLb0EED2Ev.exit, label %bb.m, !prof !69

bb.m:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %3 = shl nuw i32 %i.x, 2
  %i.bm = zext i32 %3 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bl, i8 0, i64 %i.bm, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.11.0.ph = phi ptr [ null, %bb.l ], [ %i.bl, %bb.m ] ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 101 uses
  %i.bo = icmp slt i32 %i.bc, 0
  br i1 %i.bo, label %_ZN15hb_vector_buf_t10append_strEPKc.exit, label %bb.o, !prof !22

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i94 = icmp samesign ult i32 %i.bc, 15
  br i1 %.not.i.i.i.i94, label %.preheader.i.i.i.i, label %bb.q, !prof !22

.preheader.i.i.i.i:                               ; preds = %bb.o, %.preheader.i.i.i.i
  %.053.i.i.i.i = phi i32 [ %i.br, %.preheader.i.i.i.i ], [ %i.bc, %bb.o ] ; 2 uses
  %i.bp = lshr i32 %.053.i.i.i.i, 1
  %i.bq = add nuw nsw i32 %.053.i.i.i.i, 8
  %i.br = add nuw nsw i32 %i.bq, %i.bp            ; 4 uses
  %i.bs = icmp samesign ult i32 %i.br, 15
  br i1 %i.bs, label %.preheader.i.i.i.i, label %.thread39.i.i.i.i, !llvm.loop !66

.thread39.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %.not8.i.i.i.i.i.i = icmp ne i32 %i.bc, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not9.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  %or.cond1416.a = or i1 %.not8.i.i.i.i.i.i, %.not9.i.i.i.i.i.i
  %i.bu = zext nneg i32 %i.br to i64              ; 2 uses
  br i1 %or.cond1416.a, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.thread39.i.i.i.i
  %i.bv = tail call ptr @hb_malloc(i64 noundef %i.bu) #12 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, !prof !22

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i: ; preds = %.thread39.i.i.i.i
  %i.bw = tail call ptr @hb_realloc(ptr noundef %i.bb, i64 noundef %i.bu) #12 ; 2 uses
  %.not22.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not22.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, !prof !67

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i: ; preds = %bb.p, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %.1.i.i52.i.i.i.i = phi ptr [ %i.bw, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i ], [ %i.bv, %bb.p ] ; 2 uses
  store ptr %.1.i.i52.i.i.i.i, ptr %i.bt, align 8, !tbaa !12
  store i32 %i.br, ptr %1, align 8, !tbaa !13
  br label %bb.q

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i:      ; preds = %bb.p, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i
  %i.bx = xor i32 %i.bc, -1
  store i32 %i.bx, ptr %1, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

bb.q:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i, %bb.o
  %i.by = phi ptr [ %.1.i.i52.i.i.i.i, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i ], [ %i.bb, %bb.o ] ; 2 uses
  store i32 15, ptr %i.bn, align 4, !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.by, ptr noundef nonnull readonly align 1 dereferenceable(15) @.str, i64 range(i64 0, 103079215081) 15, i1 false), !alias.scope !70
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit

_ZN15hb_vector_buf_t10append_strEPKc.exit:        ; preds = %bb.n, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i, %bb.q
  %i.bz = phi ptr [ %i.by, %bb.q ], [ %i.bb, %bb.n ], [ %i.bb, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ] ; 8 uses
  %i.ca = phi i32 [ 15, %bb.q ], [ 0, %bb.n ], [ 0, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i ]
  store i32 %i.ca, ptr %.sroa.11.0.ph, align 4, !tbaa !74
  %i.cb = load i32, ptr %i.bn, align 4, !tbaa !8  ; 7 uses
  %i.cc = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.cb, i32 49) ; 2 uses
  %i.cd = extractvalue { i32, i1 } %i.cc, 1
  %i.ce = extractvalue { i32, i1 } %i.cc, 0       ; 5 uses
  %i.cf = icmp slt i32 %i.ce, 0
  %or.cond.i.i95 = or i1 %i.cd, %i.cf
  br i1 %or.cond.i.i95, label %_ZN15hb_vector_buf_t10append_strEPKc.exit113, label %bb.r, !prof !75

bb.r:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit
  %i.cg = load i32, ptr %1, align 8, !tbaa !13    ; 6 uses
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %_ZN15hb_vector_buf_t10append_strEPKc.exit113, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  %.not.i.i.i.i96 = icmp samesign ugt i32 %i.ce, %i.cg
  br i1 %.not.i.i.i.i96, label %.preheader.i.i.i.i99, label %bb.w, !prof !22

.preheader.i.i.i.i99:                             ; preds = %bb.s, %.preheader.i.i.i.i99
  %.053.i.i.i.i100 = phi i32 [ %i.ck, %.preheader.i.i.i.i99 ], [ %i.cg, %bb.s ] ; 2 uses
  %i.ci = lshr i32 %.053.i.i.i.i100, 1
  %i.cj = add nuw i32 %.053.i.i.i.i100, 8
  %i.ck = add nuw i32 %i.cj, %i.ci                ; 5 uses
  %i.cl = icmp ugt i32 %i.ce, %i.ck
  br i1 %i.cl, label %.preheader.i.i.i.i99, label %.thread39.i.i.i.i101, !llvm.loop !66

.thread39.i.i.i.i101:                             ; preds = %.preheader.i.i.i.i99
  %.not8.i.i.i.i.i.i102 = icmp ne i32 %i.cg, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not9.i.i.i.i.i.i110 = icmp eq ptr %i.bz, null
  %or.cond1417.a = or i1 %.not8.i.i.i.i.i.i102, %.not9.i.i.i.i.i.i110
  %i.cn = zext i32 %i.ck to i64                   ; 2 uses
  br i1 %or.cond1417.a, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i103, label %bb.t

bb.t:                                             ; preds = %.thread39.i.i.i.i101
  %i.co = tail call ptr @hb_malloc(i64 noundef %i.cn) #12 ; 4 uses
  %.not10.i.i.i.i.i.i111 = icmp eq ptr %i.co, null
  br i1 %.not10.i.i.i.i.i.i111, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i107, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i.i.i112 = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i.i.i.i.i.i112, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i105, label %bb.v, !prof !22

bb.v:                                             ; preds = %bb.u
  %i.cp = zext i32 %i.cb to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr nonnull readonly align 1 %i.bz, i64 range(i64 0, 103079215081) %i.cp, i1 false), !alias.scope !76
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i105

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i103: ; preds = %.thread39.i.i.i.i101
  %i.cq = tail call ptr @hb_realloc(ptr noundef %i.bz, i64 noundef %i.cn) #12 ; 2 uses
  %.not22.i.i.i.i104 = icmp eq ptr %i.cq, null
  br i1 %.not22.i.i.i.i104, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i107, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i105, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i107: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i103, %bb.t
  %.not23.i.i.i.i108 = icmp ugt i32 %i.ck, %i.cg
  br i1 %.not23.i.i.i.i108, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i109, label %bb.w

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i105: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i103, %bb.v, %bb.u
  %.1.i.i52.i.i.i.i106 = phi ptr [ %i.cq, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i103 ], [ %i.co, %bb.u ], [ %i.co, %bb.v ] ; 2 uses
  store ptr %.1.i.i52.i.i.i.i106, ptr %i.cm, align 8, !tbaa !12
  store i32 %i.ck, ptr %1, align 8, !tbaa !13
  br label %bb.w

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i109:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i107
  %i.cr = xor i32 %i.cg, -1
  store i32 %i.cr, ptr %1, align 8, !tbaa !13
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit113

bb.w:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i105, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i107, %bb.s
  %i.cs = phi ptr [ %.1.i.i52.i.i.i.i106, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i105 ], [ %i.bz, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i107 ], [ %i.bz, %bb.s ] ; 2 uses
  store i32 %i.ce, ptr %i.bn, align 4, !tbaa !8
  %i.ct = zext i32 %i.cb to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.cu, ptr noundef nonnull readonly align 1 dereferenceable(49) @.str.1, i64 range(i64 0, 103079215081) 49, i1 false), !alias.scope !80
  br label %_ZN15hb_vector_buf_t10append_strEPKc.exit113

_ZN15hb_vector_buf_t10append_strEPKc.exit113:     ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit, %bb.r, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i109, %bb.w
  %i.cv = phi ptr [ %i.bz, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %i.bz, %bb.r ], [ %i.bz, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i109 ], [ %i.cs, %bb.w ] ; 8 uses
  %i.cw = phi i32 [ %i.cb, %_ZN15hb_vector_buf_t10append_strEPKc.exit ], [ %i.cb, %bb.r ], [ %i.cb, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i109 ], [ %i.ce, %bb.w ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.11.0.ph, i64 4
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !74
  %i.cy = load i32, ptr %i.bn, align 4, !tbaa !8  ; 7 uses
  %i.cz = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.cy, i32 57) ; 2 uses
  %i.da = extractvalue { i32, i1 } %i.cz, 1
  %i.db = extractvalue { i32, i1 } %i.cz, 0       ; 5 uses
  %i.dc = icmp slt i32 %i.db, 0
  %or.cond.i.i114 = or i1 %i.da, %i.dc
  br i1 %or.cond.i.i114, label %_ZN15hb_vector_buf_t10append_strEPKc.exit132, label %bb.x, !prof !75

bb.x:                                             ; preds = %_ZN15hb_vector_buf_t10append_strEPKc.exit113
  %i.dd = load i32, ptr %1, align 8, !tbaa !13    ; 6 uses
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZN15hb_vector_buf_t10append_strEPKc.exit132, label %bb.y, !prof !22

bb.y:                                             ; preds = %bb.x
  %.not.i.i.i.i115 = icmp samesign ugt i32 %i.db, %i.dd
  br i1 %.not.i.i.i.i115, label %.preheader.i.i.i.i118, label %bb.ac, !prof !22

.preheader.i.i.i.i118:                            ; preds = %bb.y, %.preheader.i.i.i.i118
  %.053.i.i.i.i119 = phi i32 [ %i.dh, %.preheader.i.i.i.i118 ], [ %i.dd, %bb.y ] ; 2 uses
  %i.df = lshr i32 %.053.i.i.i.i119, 1
  %i.dg = add nuw i32 %.053.i.i.i.i119, 8
  %i.dh = add nuw i32 %i.dg, %i.df                ; 5 uses
  %i.di = icmp ugt i32 %i.db, %i.dh
  br i1 %i.di, label %.preheader.i.i.i.i118, label %.thread39.i.i.i.i120, !llvm.loop !66

.thread39.i.i.i.i120:                             ; preds = %.preheader.i.i.i.i118
  %.not8.i.i.i.i.i.i121 = icmp ne i32 %i.dd, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not9.i.i.i.i.i.i129 = icmp eq ptr %i.cv, null
  %or.cond1418 = or i1 %.not8.i.i.i.i.i.i121, %.not9.i.i.i.i.i.i129
  %i.dk = zext i32 %i.dh to i64                   ; 2 uses
  br i1 %or.cond1418, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i122, label %bb.z

bb.z:                                             ; preds = %.thread39.i.i.i.i120
  %i.dl = tail call ptr @hb_malloc(i64 noundef %i.dk) #12 ; 4 uses
  %.not10.i.i.i.i.i.i130 = icmp eq ptr %i.dl, null
  br i1 %.not10.i.i.i.i.i.i130, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i126, label %bb.aa, !prof !22

bb.aa:                                            ; preds = %bb.z
  %.not.i.i.i.i.i.i.i131 = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i.i.i.i131, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i124, label %bb.ab, !prof !22

bb.ab:                                            ; preds = %bb.aa
  %i.dm = zext i32 %i.cy to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull readonly align 1 %i.cv, i64 range(i64 0, 103079215081) %i.dm, i1 false), !alias.scope !84
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i124

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i122: ; preds = %.thread39.i.i.i.i120
  %i.dn = tail call ptr @hb_realloc(ptr noundef %i.cv, i64 noundef %i.dk) #12 ; 2 uses
  %.not22.i.i.i.i123 = icmp eq ptr %i.dn, null
  br i1 %.not22.i.i.i.i123, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i126, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i124, !prof !67

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i126: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i122, %bb.z
  %.not23.i.i.i.i127 = icmp ugt i32 %i.dh, %i.dd
  br i1 %.not23.i.i.i.i127, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i128, label %bb.ac

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i.i124: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i122, %bb.ab, %bb.aa
  %.1.i.i52.i.i.i.i125 = phi ptr [ %i.dn, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i.i122 ], [ %i.dl, %bb.aa ], [ %i.dl, %bb.ab ] ; 2 uses
  store ptr %.1.i.i52.i.i.i.i125, ptr %i.dj, align 8, !tbaa !12
  store i32 %i.dh, ptr %1, align 8, !tbaa !13
  br label %bb.ac

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i.i128:   ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i.i126
  %i.do = xor i32 %i.dd, -1
  store i32 %i.do, ptr %1, align 8, !tbaa !13
end_hunk_0
