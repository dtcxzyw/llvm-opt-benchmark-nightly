Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-raster-paint?download=true
inline.NumInlined: 583
inline.NumDeleted: 258
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL34hb_raster_paint_finalize_path_clipP17hb_raster_paint_tP16hb_raster_draw_tP17hb_raster_image_tjj:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !84, !noalias !316
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, i8 0, i64 16, i1 false), !noalias !316
  %.sroa.19.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7.0..sroa_idx, i64 3, i1 false), !noalias !315
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !80, !noalias !316
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !85, !noalias !316
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [64 x i8], ptr %i.ac, i64 %i.af ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !83, !noalias !316
  %i.ai = add i32 %i.ah, -1
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.ai, -2
  br i1 %spec.select.i.i.i.i.i.i, label %bb.f, label %_ZN16hb_raster_clip_tD2Ev.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 0, ptr %i.aj, align 4, !tbaa !86, !noalias !316
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !84, !noalias !316
  call void @hb_free(ptr noundef %i.al) #17, !noalias !316
  %.pre.i.i = load i32, ptr %i.q, align 4, !tbaa !85, !noalias !316
  %.pre3.i.i = add i32 %.pre.i.i, -1
  br label %_ZN16hb_raster_clip_tD2Ev.exit.i

_ZN16hb_raster_clip_tD2Ev.exit.i:                 ; preds = %bb.f, %bb.e
  %.pre-phi.i.i = phi i32 [ %i.ae, %bb.e ], [ %.pre3.i.i, %bb.f ]
  store i32 %.pre-phi.i.i, ptr %i.q, align 4, !tbaa !85, !noalias !316
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.36, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.19.i.sroa.7, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i.sroa.7)
  br label %_ZN17hb_raster_paint_t12acquire_clipEjj.exit

_ZN17hb_raster_paint_t12acquire_clipEjj.exit:     ; preds = %bb.d, %_ZN16hb_raster_clip_tD2Ev.exit.i
  %.sroa.0.4 = phi i32 [ 0, %bb.d ], [ %i.x, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 8 uses
  %.sroa.11.0 = phi i32 [ 0, %bb.d ], [ %i.z, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 5 uses
  %.sroa.17.4 = phi ptr [ null, %bb.d ], [ %i.ab, %_ZN16hb_raster_clip_tD2Ev.exit.i ] ; 5 uses
  %i.am = add i32 %3, 3
  %i.an = and i32 %i.am, -4                       ; 4 uses
  %.sroa.36.3..sroa_idx375 = getelementptr inbounds nuw i8, ptr %.sroa.36, i64 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.36.3..sroa_idx375, i8 0, i64 16, i1 false), !alias.scope !315
  %i.ao = zext i32 %i.an to i64
  %i.ap = mul nuw i64 %i.ao, %i.g                 ; 4 uses
  %i.aq = icmp ugt i64 %i.ap, 1073741824
  br i1 %i.aq, label %.critedge, label %bb.g, !prof !13

bb.g:                                             ; preds = %_ZN17hb_raster_paint_t12acquire_clipEjj.exit
  %i.ar = trunc nuw nsw i64 %i.ap to i32          ; 5 uses
  %i.as = icmp slt i32 %.sroa.0.4, 0
  br i1 %i.as, label %.critedge, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp samesign ult i32 %.sroa.0.4, %i.ar
  br i1 %.not.i.i, label %.preheader.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, !prof !13

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.053.i.i = phi i32 [ %i.av, %.preheader.i.i ], [ %.sroa.0.4, %bb.h ] ; 2 uses
  %i.at = lshr i32 %.053.i.i, 1
  %i.au = add nuw nsw i32 %.053.i.i, 8
  %i.av = add nuw nsw i32 %i.au, %i.at            ; 7 uses
  %i.aw = icmp samesign ult i32 %i.av, %i.ar
  br i1 %i.aw, label %.preheader.i.i, label %.thread39.i.i, !llvm.loop !3

.thread39.i.i:                                    ; preds = %.preheader.i.i
  %.not8.i.i.i.i = icmp eq i32 %.sroa.0.4, 0
  br i1 %.not8.i.i.i.i, label %bb.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i

bb.i:                                             ; preds = %.thread39.i.i
  %.not9.i.i.i.i = icmp eq ptr %.sroa.17.4, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = call ptr @hb_malloc(i64 noundef %i.ax) #17 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, label %bb.k, !prof !13

bb.k:                                             ; preds = %bb.j
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.11.0, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.az = zext i32 %.sroa.11.0 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull readonly align 1 %.sroa.17.4, i64 range(i64 0, 103079215081) %i.az, i1 false), !alias.scope !317
  br label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i

_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.i, %.thread39.i.i
  %i.ba = phi ptr [ null, %bb.i ], [ %.sroa.17.4, %.thread39.i.i ]
  %i.bb = zext nneg i32 %i.av to i64
  %i.bc = call ptr @hb_realloc(ptr noundef %i.ba, i64 noundef %i.bb) #17 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.bc, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, label %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i, !prof !114

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i:          ; preds = %bb.j, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i
  %i.bd = xor i32 %.sroa.0.4, -1
  br label %.critedge

_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i:   ; preds = %bb.k, %bb.l, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i, %bb.h
  %.sroa.0.5 = phi i32 [ %i.av, %bb.k ], [ %.sroa.0.4, %bb.h ], [ %i.av, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %i.av, %bb.l ] ; 4 uses
  %.sroa.17.5 = phi ptr [ %i.ay, %bb.k ], [ %.sroa.17.4, %bb.h ], [ %i.bc, %_ZN11hb_vector_tIhLb0EE14realloc_vectorIhTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPhj11hb_priorityILj0EE.exit.i.i ], [ %i.ay, %bb.l ] ; 8 uses
  %i.be = icmp ult i32 %.sroa.11.0, %i.ar
  br i1 %i.be, label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit.thread236, label %_ZN11hb_vector_tIhLb0EE6resizeEi.exit

_ZN11hb_vector_tIhLb0EE6resizeEi.exit.thread236:  ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i
  %i.bf = sub nuw nsw i32 %i.ar, %.sroa.11.0
  %i.bg = zext nneg i32 %.sroa.11.0 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.17.5, i64 %i.bg
  %i.bi = zext nneg i32 %i.bf to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bh, i8 0, i64 %i.bi, i1 false)
  br label %bb.m

.critedge:                                        ; preds = %bb.g, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i, %_ZN17hb_raster_paint_t12acquire_clipEjj.exit
  %.sroa.0.0 = phi i32 [ %.sroa.0.4, %_ZN17hb_raster_paint_t12acquire_clipEjj.exit ], [ %i.bd, %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.i ], [ %.sroa.0.4, %bb.g ]
  call void @hb_raster_draw_recycle_image(ptr noundef %1, ptr noundef nonnull %i.e) #17
  call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4)
  br label %bb.ab

_ZN11hb_vector_tIhLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIhLb0EE5allocEjb.exit.thread.i
  %.not.i89 = icmp eq i64 %i.ap, 0
  br i1 %.not.i89, label %_ZL9hb_memsetPvij.exit, label %bb.m, !prof !318

bb.m:                                             ; preds = %_ZN11hb_vector_tIhLb0EE6resizeEi.exit.thread236, %_ZN11hb_vector_tIhLb0EE6resizeEi.exit
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.17.5, i8 0, i64 %i.ap, i1 false)
  br label %_ZL9hb_memsetPvij.exit

_ZL9hb_memsetPvij.exit:                           ; preds = %_ZN11hb_vector_tIhLb0EE6resizeEi.exit, %bb.m
  %i.bj = call ptr @hb_raster_image_get_buffer(ptr noundef nonnull %i.e) #17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @hb_raster_image_get_extents(ptr noundef nonnull %i.e, ptr noundef nonnull %6) #17
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.not.i.i, label %bb.n, label %bb.o, !prof !13

bb.n:                                             ; preds = %_ZL9hb_memsetPvij.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br label %_ZN17hb_raster_paint_t12current_clipEv.exit

bb.o:                                             ; preds = %_ZL9hb_memsetPvij.exit
  %i.bm = add i32 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !80
  %i.bp = zext i32 %i.bm to i64
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %i.bo, i64 %i.bp
  br label %_ZN17hb_raster_paint_t12current_clipEv.exit

_ZN17hb_raster_paint_t12current_clipEv.exit:      ; preds = %bb.n, %bb.o
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.n ], [ %i.bq, %bb.o ] ; 12 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 28
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !90, !range !71, !noundef !72
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  br i1 %i.bt, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread249, label %bb.p

bb.p:                                             ; preds = %_ZN17hb_raster_paint_t12current_clipEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !107
  %.not.i90 = icmp eq ptr %i.bv, null
  br i1 %.not.i90, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, label %bb.q, !prof !108

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !109 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !110
  %i.ca = icmp ult i32 %i.bx, %i.bz
  br i1 %i.ca, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit, !prof !108

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit: ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !111
  %i.cd = zext i32 %i.bx to i64
  %i.ce = zext i32 %i.cc to i64
  %i.cf = mul nuw i64 %i.ce, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !112
  %i.ci = zext i32 %i.ch to i64
  %.not268 = icmp ugt i64 %i.cf, %i.ci
  br i1 %.not268, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, label %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread249, !prof !100

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread: ; preds = %bb.p, %bb.q, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit
  call void @hb_raster_draw_recycle_image(ptr noundef %1, ptr noundef nonnull %i.e) #17
  br label %.sink.split

_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread249: ; preds = %_ZN17hb_raster_paint_t12current_clipEv.exit, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit
  %i.cj = getelementptr i8, ptr %2, i64 32
  %.val = load i32, ptr %i.cj, align 8, !tbaa !131
  %i.ck = getelementptr i8, ptr %2, i64 36
  %.val88 = load i32, ptr %i.ck, align 4, !tbaa !132
  %i.cl = load i32, ptr %6, align 4, !tbaa !133
  %i.cm = sext i32 %i.cl to i64
  %i.cn = sext i32 %.val to i64
  %i.co = sub nsw i64 %i.cm, %i.cn                ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !134
  %i.cr = sext i32 %i.cq to i64
  %i.cs = sext i32 %.val88 to i64
  %i.ct = sub nsw i64 %i.cr, %i.cs                ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 48
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !124
  %i.cw = zext i32 %i.cv to i64
  %.sroa.speculated37.i = call i64 @llvm.smax.i64(i64 %i.co, i64 0)
  %.sroa.speculated20.i = call i64 @llvm.umax.i64(i64 %.sroa.speculated37.i, i64 %i.cw) ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 52
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !122
  %i.cz = zext i32 %i.cy to i64
  %.sroa.speculated27.i = call i64 @llvm.smax.i64(i64 %i.ct, i64 0)
  %.sroa.speculated14.i = call i64 @llvm.umax.i64(i64 %.sroa.speculated27.i, i64 %i.cz) ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 56
  %i.db = load i32, ptr %i.da, align 8, !tbaa !123
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !104
  %i.df = zext i32 %i.de to i64
  %i.dg = add nsw i64 %i.co, %i.df
  %i.dh = call i64 @llvm.smin.i64(i64 %i.dg, i64 %i.f)
  %.sroa.speculated8.i = call i64 @llvm.smin.i64(i64 %i.dh, i64 %i.dc) ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 60
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !121
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !105
  %i.dn = zext i32 %i.dm to i64
  %i.do = add nsw i64 %i.ct, %i.dn
  %i.dp = call i64 @llvm.smin.i64(i64 %i.do, i64 %i.g)
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.dp, i64 %i.dk) ; 3 uses
  %.not.i91 = icmp slt i64 %.sroa.speculated20.i, %.sroa.speculated8.i
  %.not30.i = icmp slt i64 %.sroa.speculated14.i, %.sroa.speculated.i
  %or.cond.i = select i1 %.not.i91, i1 %.not30.i, i1 false
  br i1 %or.cond.i, label %bb.r, label %_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit

_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit: ; preds = %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread249
  call void @hb_raster_draw_recycle_image(ptr noundef %1, ptr noundef nonnull %i.e) #17
  br label %.sink.split

bb.r:                                             ; preds = %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread249
  %i.dq = trunc nuw i64 %.sroa.speculated20.i to i32 ; 3 uses
  %i.dr = trunc nuw i64 %.sroa.speculated8.i to i32 ; 3 uses
  br i1 %i.bt, label %.lr.ph301, label %.lr.ph284

.lr.ph284:                                        ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.du = trunc i64 %i.ct to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %.lr.ph.preheader

.lr.ph301:                                        ; preds = %bb.r
  %i.dw = trunc i64 %i.ct to i32
  %i.dx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dy = trunc i64 %i.co to i32
  %i.dz = sub i32 %i.dq, %i.dy
  br label %.critedge87.lr.ph.us

.critedge87.lr.ph.us:                             ; preds = %.lr.ph301, %bb.t
  %indvars.iv341 = phi i64 [ %indvars.iv.next342.pre-phi, %bb.t ], [ %.sroa.speculated14.i, %.lr.ph301 ] ; 3 uses
  %.sroa.58.0299.us = phi i32 [ %.sroa.58.1.us, %bb.t ], [ 0, %.lr.ph301 ] ; 2 uses
  %.sroa.51.0298.us = phi i32 [ %.sroa.51.1.us, %bb.t ], [ 0, %.lr.ph301 ] ; 2 uses
  %.sroa.44.0297.us = phi i32 [ %.sroa.44.1.us, %bb.t ], [ %4, %.lr.ph301 ] ; 2 uses
  %.sroa.37.0296.us = phi i32 [ %.sroa.37.1.us, %bb.t ], [ %3, %.lr.ph301 ] ; 2 uses
  %i.ea = trunc nuw i64 %indvars.iv341 to i32     ; 3 uses
  %i.eb = sub i32 %i.ea, %i.dw
  %i.ec = load i32, ptr %i.dx, align 4, !tbaa !135
  %i.ed = mul i32 %i.ec, %i.eb
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ee
  %i.eg = mul i32 %i.an, %i.ea
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.17.5, i64 %i.eh
  br label %.critedge87.us

.critedge87.us:                                   ; preds = %.critedge87.lr.ph.us, %.critedge87.us
  %indvars.iv338 = phi i64 [ %.sroa.speculated20.i, %.critedge87.lr.ph.us ], [ %indvars.iv.next339.a, %.critedge87.us ] ; 3 uses
  %.077291.us = phi i32 [ %i.dz, %.critedge87.lr.ph.us ], [ %i.ej, %.critedge87.us ] ; 2 uses
  %.0222290.us = phi i32 [ %i.dq, %.critedge87.lr.ph.us ], [ %.1223.us.a, %.critedge87.us ]
  %.0224289.us = phi i32 [ %i.dr, %.critedge87.lr.ph.us ], [ %.1225.us.a, %.critedge87.us ] ; 2 uses
  %i.ej = add i32 %.077291.us, 1
  %i.ek = zext i32 %.077291.us to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !115 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %indvars.iv338
  store i8 %i.em, ptr %i.en, align 1, !tbaa !115
  %.not85.us.a = icmp eq i8 %i.em, 0              ; 2 uses
  %i.eo = icmp ne i32 %.0224289.us, %i.dr
  %indvars.iv.next339.a = add nuw nsw i64 %indvars.iv338, 1 ; 3 uses
  %i.ep = select i1 %.not85.us.a, i1 true, i1 %i.eo
  %i.eq = trunc nuw i64 %indvars.iv338 to i32
  %.1225.us.a = select i1 %i.ep, i32 %.0224289.us, i32 %i.eq ; 3 uses
  %i.er = trunc nuw i64 %indvars.iv.next339.a to i32
  %.1223.us.a = select i1 %.not85.us.a, i32 %.0222290.us, i32 %i.er ; 3 uses
  %i.es = icmp samesign ult i64 %indvars.iv.next339.a, %.sroa.speculated8.i
  br i1 %i.es, label %.critedge87.us, label %._crit_edge293.us, !llvm.loop !311

bb.s:                                             ; preds = %._crit_edge293.us
  %.sroa.speculated149.us = call i32 @llvm.umin.i32(i32 %.sroa.37.0296.us, i32 %.1225.us.a)
  %.sroa.speculated157.us = call i32 @llvm.umin.i32(i32 %.sroa.44.0297.us, i32 %i.ea)
  %.sroa.speculated142.us = call i32 @llvm.umax.i32(i32 %.sroa.51.0298.us, i32 %.1223.us.a)
  %i.et = add nuw nsw i64 %indvars.iv341, 1       ; 2 uses
  %i.eu = trunc nuw i64 %i.et to i32
  %.sroa.speculated137.us = call i32 @llvm.umax.i32(i32 %.sroa.58.0299.us, i32 %i.eu)
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge293.us._crit_edge, %bb.s
  %indvars.iv.next342.pre-phi = phi i64 [ %.pre, %._crit_edge293.us._crit_edge ], [ %i.et, %bb.s ] ; 2 uses
  %.sroa.37.1.us = phi i32 [ %.sroa.37.0296.us, %._crit_edge293.us._crit_edge ], [ %.sroa.speculated149.us, %bb.s ] ; 2 uses
  %.sroa.44.1.us = phi i32 [ %.sroa.44.0297.us, %._crit_edge293.us._crit_edge ], [ %.sroa.speculated157.us, %bb.s ] ; 2 uses
  %.sroa.51.1.us = phi i32 [ %.sroa.51.0298.us, %._crit_edge293.us._crit_edge ], [ %.sroa.speculated142.us, %bb.s ] ; 2 uses
  %.sroa.58.1.us = phi i32 [ %.sroa.58.0299.us, %._crit_edge293.us._crit_edge ], [ %.sroa.speculated137.us, %bb.s ] ; 2 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.next342.pre-phi, %.sroa.speculated.i
  br i1 %i.ev, label %.critedge87.lr.ph.us, label %.loopexit, !llvm.loop !312

._crit_edge293.us:                                ; preds = %.critedge87.us
  %i.ew = icmp ult i32 %.1225.us.a, %.1223.us.a
  br i1 %i.ew, label %bb.s, label %._crit_edge293.us._crit_edge

._crit_edge293.us._crit_edge:                     ; preds = %._crit_edge293.us
  %.pre = add nuw nsw i64 %indvars.iv341, 1
  br label %bb.t

.lr.ph.preheader:                                 ; preds = %.lr.ph284, %bb.v
  %indvars.iv335 = phi i64 [ %.sroa.speculated14.i, %.lr.ph284 ], [ %indvars.iv.next336.pre-phi, %bb.v ] ; 3 uses
  %.sroa.58.2282 = phi i32 [ 0, %.lr.ph284 ], [ %.sroa.58.3, %bb.v ] ; 2 uses
  %.sroa.51.2281 = phi i32 [ 0, %.lr.ph284 ], [ %.sroa.51.3, %bb.v ] ; 2 uses
  %.sroa.44.2280 = phi i32 [ %4, %.lr.ph284 ], [ %.sroa.44.3, %bb.v ] ; 2 uses
  %.sroa.37.2279 = phi i32 [ %3, %.lr.ph284 ], [ %.sroa.37.3, %bb.v ] ; 2 uses
  %i.ex = load ptr, ptr %i.ds, align 8, !tbaa !107
  %i.ey = load i32, ptr %i.dt, align 8, !tbaa !109
  %i.ez = trunc nuw i64 %indvars.iv335 to i32     ; 4 uses
  %i.fa = mul i32 %i.ey, %i.ez
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fb
  %i.fd = sub i32 %i.ez, %i.du
  %i.fe = load i32, ptr %i.dv, align 4, !tbaa !135
  %i.ff = mul i32 %i.fe, %i.fd
  %i.fg = zext i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.fg
  %i.fi = mul i32 %i.an, %i.ez
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.17.5, i64 %i.fj
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.fl = icmp ult i32 %.1221, %.1
  br i1 %i.fl, label %bb.u, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre344 = add nuw nsw i64 %indvars.iv335, 1
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %.sroa.speculated20.i, %.lr.ph.preheader ] ; 5 uses
  %.0219276 = phi i32 [ %.1, %.lr.ph ], [ %i.dq, %.lr.ph.preheader ]
  %.0220275 = phi i32 [ %.1221, %.lr.ph ], [ %i.dr, %.lr.ph.preheader ] ; 2 uses
  %i.fm = trunc nuw i64 %indvars.iv to i32
  %i.fn = sub i64 %indvars.iv, %i.co
  %i.fo = and i64 %i.fn, 4294967295
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !115
  %i.fr = zext i8 %i.fq to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 %indvars.iv
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !115
  %i.fu = zext i8 %i.ft to i16
  %i.fv = mul nuw i16 %i.fu, %i.fr
  %i.fw = add nuw i16 %i.fv, 255
  %i.fx = lshr i16 %i.fw, 8                       ; 2 uses
  %i.fy = trunc nuw i16 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv
  store i8 %i.fy, ptr %i.fz, align 1, !tbaa !115
  %.not83 = icmp eq i16 %i.fx, 0                  ; 2 uses
  %.sroa.speculated107 = call i32 @llvm.umin.i32(i32 %.0220275, i32 %i.fm)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %.1221 = select i1 %.not83, i32 %.0220275, i32 %.sroa.speculated107 ; 3 uses
  %i.ga = trunc nuw i64 %indvars.iv.next to i32
  %.1 = select i1 %.not83, i32 %.0219276, i32 %i.ga ; 3 uses
  %i.gb = icmp samesign ult i64 %indvars.iv.next, %.sroa.speculated8.i
  br i1 %i.gb, label %.lr.ph, label %._crit_edge, !llvm.loop !313

bb.u:                                             ; preds = %._crit_edge
  %.sroa.speculated122 = call i32 @llvm.umin.i32(i32 %.sroa.37.2279, i32 %.1221)
  %.sroa.speculated131 = call i32 @llvm.umin.i32(i32 %.sroa.44.2280, i32 %i.ez)
  %.sroa.speculated115 = call i32 @llvm.umax.i32(i32 %.sroa.51.2281, i32 %.1)
  %i.gc = add nuw nsw i64 %indvars.iv335, 1       ; 2 uses
  %i.gd = trunc nuw i64 %i.gc to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.sroa.58.2282, i32 %i.gd)
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge._crit_edge, %bb.u
  %indvars.iv.next336.pre-phi = phi i64 [ %.pre344, %._crit_edge._crit_edge ], [ %i.gc, %bb.u ] ; 2 uses
  %.sroa.37.3 = phi i32 [ %.sroa.37.2279, %._crit_edge._crit_edge ], [ %.sroa.speculated122, %bb.u ] ; 2 uses
  %.sroa.44.3 = phi i32 [ %.sroa.44.2280, %._crit_edge._crit_edge ], [ %.sroa.speculated131, %bb.u ] ; 2 uses
  %.sroa.51.3 = phi i32 [ %.sroa.51.2281, %._crit_edge._crit_edge ], [ %.sroa.speculated115, %bb.u ] ; 2 uses
  %.sroa.58.3 = phi i32 [ %.sroa.58.2282, %._crit_edge._crit_edge ], [ %.sroa.speculated, %bb.u ] ; 2 uses
  %i.ge = icmp samesign ult i64 %indvars.iv.next336.pre-phi, %.sroa.speculated.i
  br i1 %i.ge, label %.lr.ph.preheader, label %.loopexit, !llvm.loop !314

.loopexit:                                        ; preds = %bb.v, %bb.t
  %.sroa.37.4 = phi i32 [ %.sroa.37.1.us, %bb.t ], [ %.sroa.37.3, %bb.v ]
  %.sroa.44.4 = phi i32 [ %.sroa.44.1.us, %bb.t ], [ %.sroa.44.3, %bb.v ]
  %.sroa.51.4 = phi i32 [ %.sroa.51.1.us, %bb.t ], [ %.sroa.51.3, %bb.v ]
  %.sroa.58.4 = phi i32 [ %.sroa.58.1.us, %bb.t ], [ %.sroa.58.3, %bb.v ]
  call void @hb_raster_draw_recycle_image(ptr noundef %1, ptr noundef nonnull %i.e) #17
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.gg = load i32, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %i.gh = load i32, ptr %i.gf, align 8, !tbaa !87 ; 5 uses
  %.not.i.i101 = icmp slt i32 %i.gg, %i.gh
  br i1 %.not.i.i101, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %.loopexit
  %i.gi = add i32 %i.gg, 1                        ; 2 uses
  %i.gj = icmp slt i32 %i.gh, 0
  br i1 %i.gj, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread, label %bb.x, !prof !13

bb.x:                                             ; preds = %bb.w
  %.not.i.i.i = icmp ugt i32 %i.gi, %i.gh
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit, !prof !13

.preheader.i.i.i:                                 ; preds = %bb.x, %.preheader.i.i.i
  %.039.i.i.i = phi i32 [ %i.gm, %.preheader.i.i.i ], [ %i.gh, %bb.x ] ; 2 uses
  %i.gk = lshr i32 %.039.i.i.i, 1
  %i.gl = add i32 %.039.i.i.i, 8
  %i.gm = add i32 %i.gl, %i.gk                    ; 6 uses
  %i.gn = icmp ugt i32 %i.gi, %i.gm
  br i1 %i.gn, label %.preheader.i.i.i, label %.thread.i.i.i, !llvm.loop !1

.thread.i.i.i:                                    ; preds = %.preheader.i.i.i
  %i.go = icmp ugt i32 %i.gm, 67108863
  br i1 %i.go, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i, label %bb.y, !prof !13

bb.y:                                             ; preds = %.thread.i.i.i
  %i.gp = call noundef ptr @_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, i32 noundef %i.gm) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not22.i.i.i, label %bb.z, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.i.i, !prof !13

bb.z:                                             ; preds = %bb.y
  %i.gq = load i32, ptr %i.gf, align 8, !tbaa !87 ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.gm, %i.gq
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i, label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i: ; preds = %bb.z, %.thread.i.i.i
  %.sink.i.ph.in.i.i = phi i32 [ %i.gh, %.thread.i.i.i ], [ %i.gq, %bb.z ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %i.gf, align 8, !tbaa !87
  br label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.i.i: ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !80
  store i32 %i.gm, ptr %i.gf, align 8, !tbaa !87
  br label %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread: ; preds = %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.thread8.i.i, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br label %.sink.split

_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit: ; preds = %.loopexit, %bb.x, %bb.z, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE5allocEjb.exit.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !80
  %i.gu = load i32, ptr %i.bk, align 4, !tbaa !85 ; 2 uses
  %i.gv = add i32 %i.gu, 1
  store i32 %i.gv, ptr %i.bk, align 4, !tbaa !85
  %i.gw = zext i32 %i.gu to i64
  %i.gx = getelementptr inbounds nuw [64 x i8], ptr %i.gt, i64 %i.gw ; 13 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store i32 %.sroa.0.5, ptr %i.gx, align 8, !tbaa !83
  store i32 %i.ar, ptr %i.gy, align 4, !tbaa !86
  store ptr %.sroa.17.5, ptr %i.gz, align 8, !tbaa !84
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i32 %3, ptr %i.ha, align 8
  %.sroa.30.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 20
  store i32 %4, ptr %.sroa.30.16..sroa_idx, align 4
  %.sroa.31.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store i32 %i.an, ptr %.sroa.31.16..sroa_idx, align 8
  %.sroa.35.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 28
  store i8 0, ptr %.sroa.35.16..sroa_idx, align 4
  %.sroa.36.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.36.16..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.36, i64 19, i1 false)
  %.sroa.37.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 48
  store i32 %.sroa.37.4, ptr %.sroa.37.16..sroa_idx, align 8
  %.sroa.44.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 52
  store i32 %.sroa.44.4, ptr %.sroa.44.16..sroa_idx, align 4
  %.sroa.51.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 56
  store i32 %.sroa.51.4, ptr %.sroa.51.16..sroa_idx, align 8
  %.sroa.58.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gx, i64 60
  store i32 %.sroa.58.4, ptr %.sroa.58.16..sroa_idx, align 4
  %.not269 = icmp eq ptr %i.gx, @_hb_CrapPool
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(64) @_hb_NullPool, i64 64, i1 false)
  br i1 %.not269, label %.sink.split, label %bb.aa, !prof !116

.sink.split:                                      ; preds = %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread, %_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit
  %.sroa.0.2.ph = phi i32 [ %.sroa.0.5, %_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit ], [ %.sroa.0.5, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread ], [ %.sroa.0.5, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread ], [ 0, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ]
  %.sroa.17.2.ph = phi ptr [ %.sroa.17.5, %_ZL30hb_raster_paint_intersect_maskPK17hb_raster_image_tRK19hb_raster_extents_tRK16hb_raster_clip_tjjPlS8_PjS9_S9_S9_.exit ], [ %.sroa.17.5, %_ZNK16hb_raster_clip_t20has_valid_alpha_maskEv.exit.thread ], [ %.sroa.17.5, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit.thread ], [ null, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ]
  call fastcc void @_ZL31hb_raster_paint_push_empty_clipP17hb_raster_paint_tjj(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4)
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit
  %.sroa.0.2 = phi i32 [ 0, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ], [ %.sroa.0.2.ph, %.sink.split ]
  %.sroa.17.2 = phi ptr [ null, %_ZN11hb_vector_tI16hb_raster_clip_tLb0EE12push_or_failIJS0_EEEbDpOT_.exit ], [ %.sroa.17.2.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.critedge
  %.sroa.0.3 = phi i32 [ %.sroa.0.0, %.critedge ], [ %.sroa.0.2, %bb.aa ]
  %.sroa.17.3 = phi ptr [ %.sroa.17.4, %.critedge ], [ %.sroa.17.2, %bb.aa ]
  %i.hb = add i32 %.sroa.0.3, -1
  %spec.select.i.i.i.i = icmp ult i32 %i.hb, -2
  br i1 %spec.select.i.i.i.i, label %bb.ac, label %_ZN16hb_raster_clip_tD2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  call void @hb_free(ptr noundef %.sroa.17.3) #17
  br label %_ZN16hb_raster_clip_tD2Ev.exit

_ZN16hb_raster_clip_tD2Ev.exit:                   ; preds = %bb.ab, %bb.ac
end_hunk_0
