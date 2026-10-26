Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-gpu-paint?download=true
inline.NumInlined: 457
inline.NumDeleted: 238
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL23emit_all_clip_sub_blobsP14hb_gpu_paint_tPi:.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 5 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %indvars.iv ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !194 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread21, label %bb.b

_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread21: ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  %i.af = load <2 x i32>, ptr %i.v, align 4, !tbaa !37
  %i.ag = load <2 x i32>, ptr %i.ad, align 4, !tbaa !37
  %i.ah = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.af, <2 x i32> %i.ag)
  store <2 x i32> %i.ah, ptr %i.v, align 8, !tbaa !37
  %i.ai = load <2 x i32>, ptr %i.w, align 8, !tbaa !37
  %i.aj = load <2 x i32>, ptr %i.ae, align 4, !tbaa !37
  %i.ak = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ai, <2 x i32> %i.aj)
  store <2 x i32> %i.ak, ptr %i.w, align 8, !tbaa !37
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.ab, ptr %i.al, align 4, !tbaa !37
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.am = load i32, ptr %i.h, align 4, !tbaa !77
  %i.an = icmp ugt i32 %i.am, 1023
  br i1 %i.an, label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread.sink.split, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %i.i, align 8, !tbaa !36
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread.sink.split, label %bb.d, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  %.not.i18 = icmp eq ptr %i.aq, null
  br i1 %.not.i18, label %bb.e, label %bb.f, !prof !12

bb.e:                                             ; preds = %bb.d
  %i.ar = call ptr @hb_gpu_draw_create_or_fail() #13 ; 3 uses
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !41
  %.not57.i = icmp eq ptr %i.ar, null
  br i1 %.not57.i, label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread.sink.split, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = phi ptr [ %i.ar, %bb.e ], [ %i.aq, %bb.d ]
  call void @hb_gpu_draw_clear(ptr noundef nonnull %i.as) #13
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.au = load <4 x float>, ptr %i.at, align 8
  %.fr = freeze <4 x float> %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.aw = load float, ptr %i.av, align 8
  %i.ax = fcmp oeq float %i.aw, 0.000000e+00
  %i.ay = fcmp une <4 x float> %.fr, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.az = bitcast <4 x i1> %i.ay to i4
  %i.ba = icmp eq i4 %i.az, 0
  %op.rdx = select i1 %i.ba, i1 %i.ax, i1 false
  br i1 %op.rdx, label %_ZNK14hb_transform_tIfE11is_identityEv.exit.i, label %_ZNK14hb_transform_tIfE11is_identityEv.exit.thread.i

_ZNK14hb_transform_tIfE11is_identityEv.exit.i:    ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.z, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !195
  %i.bd = fcmp oeq float %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.g, label %_ZNK14hb_transform_tIfE11is_identityEv.exit.thread.i

bb.g:                                             ; preds = %_ZNK14hb_transform_tIfE11is_identityEv.exit.i
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !196
  %i.bh = load i32, ptr %i.z, align 8, !tbaa !197
  %i.bi = call i32 @hb_gpu_draw_glyph_or_fail(ptr noundef %i.be, ptr noundef %i.bg, i32 noundef %i.bh) #13
  br label %bb.o

_ZNK14hb_transform_tIfE11is_identityEv.exit.thread.i: ; preds = %_ZNK14hb_transform_tIfE11is_identityEv.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !196
  call void @hb_font_get_scale(ptr noundef %i.bk, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bm = load i32, ptr %i.a, align 4, !tbaa !37
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !37
  call void @hb_gpu_draw_set_scale(ptr noundef %i.bl, i32 noundef %i.bm, i32 noundef %i.bn) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !97
  %i.bo = load ptr, ptr %i.j, align 8, !tbaa !41
  %i.bp = call ptr @hb_gpu_draw_get_funcs(ptr noundef %i.bo) #13
  store ptr %i.bp, ptr %i.k, align 8, !tbaa !120
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !41
  store ptr %i.bq, ptr %i.l, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !196
  %i.bs = load i32, ptr %i.z, align 8, !tbaa !197
  %i.bt = load atomic ptr, ptr @_ZL26static_gpu_paint_pen_funcs acquire, align 8 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not14.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit.i, !prof !54

.lr.ph.i.i.i:                                     ; preds = %_ZNK14hb_transform_tIfE11is_identityEv.exit.thread.i, %bb.j
  %i.bu = call noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) @_ZL26static_gpu_paint_pen_funcs) ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not10.i.i.i, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bv = call noundef ptr @hb_draw_funcs_get_empty() #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.bv, %bb.h ], [ %i.bu, %.lr.ph.i.i.i ] ; 3 uses
  %i.bw = cmpxchg weak ptr @_ZL26static_gpu_paint_pen_funcs, ptr null, ptr %.07.i.i.i acq_rel monotonic, align 8
  %i.bx = extractvalue { ptr, i1 } %i.bw, 1
  br i1 %i.bx, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit.i, label %bb.j, !prof !55

bb.j:                                             ; preds = %bb.i
  call void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %.07.i.i.i)
  %i.by = load atomic ptr, ptr @_ZL26static_gpu_paint_pen_funcs acquire, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit.i, !prof !56

_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit.i: ; preds = %bb.j, %bb.i, %_ZNK14hb_transform_tIfE11is_identityEv.exit.thread.i
  %.19.ph.i.i.i = phi ptr [ %i.bt, %_ZNK14hb_transform_tIfE11is_identityEv.exit.thread.i ], [ %.07.i.i.i, %bb.i ], [ %i.by, %bb.j ]
  %i.bz = call i32 @hb_font_draw_glyph_or_fail(ptr noundef %i.br, i32 noundef %i.bs, ptr noundef %.19.ph.i.i.i, ptr noundef nonnull %2) #13
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !120 ; 6 uses
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !121 ; 2 uses
  %i.cc = load i32, ptr %i.m, align 8, !tbaa !122
  %.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, label %bb.k, !prof !12

bb.k:                                             ; preds = %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit.i
  %i.cd = load float, ptr %i.n, align 4, !tbaa !123 ; 2 uses
  %i.ce = load float, ptr %i.o, align 4, !tbaa !124
  %i.cf = fcmp une float %i.cd, %i.ce
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 8, !tbaa !125 ; 2 uses
  %i.cg = load float, ptr %i.p, align 8
  %i.ch = fcmp une float %.pre.i, %i.cg
  %or.cond.i = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond.i, label %._crit_edge.i, label %bb.m

._crit_edge.i:                                    ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !128
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !129 ; 2 uses
  %.not.i63.i = icmp eq ptr %i.cl, null
  br i1 %.not.i63.i, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !131
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i: ; preds = %bb.l, %._crit_edge.i
  %i.co = phi ptr [ %i.cn, %bb.l ], [ null, %._crit_edge.i ]
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(48) %i.m, float noundef %i.cd, float noundef %.pre.i, ptr noundef %i.co) #13, !inline_history !190
  br label %bb.m

bb.m:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit.i, %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !132
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !129 ; 2 uses
  %.not.i64.i = icmp eq ptr %i.cs, null
  br i1 %.not.i64.i, label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !133
  br label %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.n, %bb.m
  %i.cv = phi ptr [ %i.cu, %bb.n ], [ null, %bb.m ]
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr noundef %i.cb, ptr noundef nonnull align 4 dereferenceable(48) %i.m, ptr noundef %i.cv) #13, !inline_history !191
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %_ZN15hb_draw_funcs_t15emit_close_pathEPvR15hb_draw_state_t.exit.i, %_ZNK16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E11get_unconstEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.o

bb.o:                                             ; preds = %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, %bb.g
  %.056.in.in.i = phi i32 [ %i.bi, %bb.g ], [ %i.bz, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i ]
  %.056.in.not.i = icmp eq i32 %.056.in.in.i, 0
  %i.cw = load ptr, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !110
  %i.cz = zext i32 %i.cy to i64
  %.neg.i = xor i64 %i.cz, -1
  %i.da = load i64, ptr %i.i, align 8, !tbaa !36
  %i.db = add i64 %i.da, %.neg.i
  store i64 %i.db, ptr %i.i, align 8, !tbaa !36
  br i1 %.056.in.not.i, label %.loopexit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.dc = call ptr @hb_gpu_draw_encode(ptr noundef nonnull %i.cw, ptr noundef nonnull %3) #13 ; 3 uses
  %.not58.i = icmp eq ptr %i.dc, null
  br i1 %.not58.i, label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread23, label %bb.q, !prof !12

bb.q:                                             ; preds = %bb.p
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !40  ; 3 uses
  %i.de = load i32, ptr %i.g, align 8, !tbaa !46
  %.not.i.i65.i = icmp slt i32 %i.dd, %i.de
  br i1 %.not.i.i65.i, label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = add i32 %i.dd, 1
  %i.dg = call noundef zeroext i1 @_ZN11hb_vector_tIP9hb_blob_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.df, i1 noundef zeroext false)
  br i1 %i.dg, label %..critedge_crit_edge.i.i.i, label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread.i, !prof !55

_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread.i: ; preds = %bb.r
  %i.dh = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.dh, ptr @_hb_CrapPool, align 16
  br label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread23

..critedge_crit_edge.i.i.i:                       ; preds = %bb.r
  %.pre.i.i.i = load i32, ptr %i.h, align 4, !tbaa !40
  br label %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i

_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i: ; preds = %..critedge_crit_edge.i.i.i, %bb.q
  %i.di = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.dd, %bb.q ] ; 5 uses
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !39
  %i.dk = add i32 %i.di, 1
  store i32 %i.dk, ptr %i.h, align 4, !tbaa !40
  %i.dl = zext i32 %i.di to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dl ; 2 uses
  store ptr %i.dc, ptr %i.dm, align 8, !tbaa !53
  %.not96.i = icmp eq ptr %i.dm, @_hb_CrapPool
  store i64 %i.r, ptr @_hb_CrapPool, align 16
  br i1 %.not96.i, label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread23, label %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit, !prof !116

_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread23: ; preds = %bb.p, %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i, %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.thread.i
  call void @hb_blob_destroy(ptr noundef %i.dc) #13
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 357
  store i8 1, ptr %i.dn, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.loopexit.sink.split

_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread.sink.split: ; preds = %bb.e, %bb.c, %bb.b
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 357
  store i8 1, ptr %i.do, align 1, !tbaa !69
  br label %.loopexit.sink.split

_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit: ; preds = %_ZN11hb_vector_tIP9hb_blob_tLb0EE12push_or_failIJRS1_EEEbDpOT_.exit.i
  %i.dp = load i32, ptr %3, align 4, !tbaa !84    ; 3 uses
  %i.dq = load i32, ptr %i.s, align 4, !tbaa !88
  %i.dr = add i32 %i.dq, %i.dp                    ; 2 uses
  %i.ds = load i32, ptr %i.t, align 4, !tbaa !86  ; 3 uses
  %i.dt = load i32, ptr %i.u, align 4, !tbaa !90
  %i.du = add i32 %i.dt, %i.ds                    ; 2 uses
  %i.dv = load i32, ptr %i.v, align 8, !tbaa !37
  %i.dw = call i32 @llvm.smin.i32(i32 %i.dp, i32 %i.dr) ; 2 uses
  %i.dx = call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.dw)
  store i32 %i.dx, ptr %i.v, align 8, !tbaa !82
  %i.dy = load i32, ptr %i.w, align 8, !tbaa !37
  %i.dz = call i32 @llvm.smax.i32(i32 %i.dp, i32 %i.dr) ; 2 uses
  %i.ea = call i32 @llvm.smax.i32(i32 %i.dy, i32 %i.dz)
  store i32 %i.ea, ptr %i.w, align 8, !tbaa !87
  %i.eb = load i32, ptr %i.x, align 4, !tbaa !37
  %i.ec = call i32 @llvm.smin.i32(i32 %i.ds, i32 %i.du) ; 2 uses
  %i.ed = call i32 @llvm.smin.i32(i32 %i.eb, i32 %i.ec)
  store i32 %i.ed, ptr %i.x, align 4, !tbaa !89
  %i.ee = load i32, ptr %i.y, align 4, !tbaa !37
  %i.ef = call i32 @llvm.smax.i32(i32 %i.ds, i32 %i.du) ; 2 uses
  %i.eg = call i32 @llvm.smax.i32(i32 %i.ee, i32 %i.ef)
  store i32 %i.eg, ptr %i.y, align 4, !tbaa !85
  store i32 %i.di, ptr %i.aa, align 8, !tbaa !194
  %i.eh = getelementptr inbounds nuw i8, ptr %i.z, i64 44
  store i32 %i.dw, ptr %i.eh, align 4, !tbaa !198
  %i.ei = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i32 %i.ec, ptr %i.ei, align 8, !tbaa !199
  %i.ej = getelementptr inbounds nuw i8, ptr %i.z, i64 52
  store i32 %i.dz, ptr %i.ej, align 4, !tbaa !200
  %i.ek = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i32 %i.ef, ptr %i.ek, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.di, ptr %i.el, align 4, !tbaa !37
  %i.em = icmp slt i32 %i.di, 0
  br i1 %i.em, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread21, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.en = load i32, ptr %i.c, align 4, !tbaa !37
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.en, i32 3)
  %i.eo = zext nneg i32 %.sroa.speculated to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.eo
  br i1 %.not, label %bb.a, label %.loopexit, !llvm.loop !192

.loopexit.sink.split:                             ; preds = %bb.o, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread.sink.split, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit.thread23
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 -1, ptr %i.ep, align 4, !tbaa !37
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit, %.loopexit.sink.split, %.preheader
  %i.eq = phi i1 [ true, %.preheader ], [ false, %.loopexit.sink.split ], [ true, %bb.s ], [ false, %_ZL18emit_clip_sub_blobP14hb_gpu_paint_tRNS_14pending_clip_tE.exit ]
  ret i1 %i.eq
}

declare i32 @hb_gpu_draw_glyph_or_fail(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hb_font_draw_glyph_or_fail(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tIvLj0EE11call_createI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_draw_funcs_create() #13 ; 7 uses
  tail call void @hb_draw_funcs_set_move_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL24hb_gpu_paint_pen_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_line_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL24hb_gpu_paint_pen_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_quadratic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL29hb_gpu_paint_pen_quadratic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_cubic_to_func(ptr noundef %i.a, ptr noundef nonnull @_ZL25hb_gpu_paint_pen_cubic_toP15hb_draw_funcs_tPvP15hb_draw_state_tffffffS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_set_close_path_func(ptr noundef %i.a, ptr noundef nonnull @_ZL27hb_gpu_paint_pen_close_pathP15hb_draw_funcs_tPvP15hb_draw_state_tS1_, ptr noundef null, ptr noundef null) #13
  tail call void @hb_draw_funcs_make_immutable(ptr noundef %i.a) #13
  %i.b = tail call i32 @atexit(ptr noundef nonnull @_ZL31free_static_gpu_paint_pen_funcsv) #13 ; 0 uses
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tI15hb_draw_funcs_t36hb_gpu_paint_pen_funcs_lazy_loader_tvLj0ES0_E10do_destroyEPS0_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_draw_funcs_get_empty() #13
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_draw_funcs_destroy(ptr noundef nonnull %0) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare ptr @hb_draw_funcs_get_empty() local_unnamed_addr #2

declare ptr @hb_draw_funcs_create() local_unnamed_addr #2

declare void @hb_draw_funcs_set_move_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL24hb_gpu_paint_pen_move_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !93
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !93
  %i.e = load <2 x float>, ptr %i.b, align 4, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !120  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !121  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !122
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = load float, ptr %i.l, align 4, !tbaa !123 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.o = load float, ptr %i.n, align 4, !tbaa !124
  %i.p = fcmp une float %i.m, %i.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !125 ; 2 uses
  br i1 %i.p, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load float, ptr %i.q, align 8, !tbaa !134
  %i.s = fcmp une float %.pre, %i.r
  br i1 %i.s, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !129  ; 2 uses
  %.not.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i5, label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !131
  br label %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit: ; preds = %._crit_edge, %bb.d
  %i.z = phi ptr [ %i.y, %bb.d ], [ null, %._crit_edge ]
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j, float noundef %i.m, float noundef %.pre, ptr noundef %i.z) #13, !inline_history !2
  br label %bb.e

bb.e:                                             ; preds = %_ZN15hb_draw_funcs_t12emit_line_toEPvR15hb_draw_state_tff.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !132
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  %.not.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i6, label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !133
  br label %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i

_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i: ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.af, %bb.f ], [ null, %bb.e ]
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef %i.i, ptr noundef nonnull align 4 dereferenceable(48) %i.j, ptr noundef %i.ag) #13, !inline_history !3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.j, i8 0, i64 12, i1 false)
  br label %_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit

_ZN15hb_draw_funcs_t7move_toEPvR15hb_draw_state_tff.exit: ; preds = %bb.a, %_ZN15hb_draw_funcs_t10close_pathEPvR15hb_draw_state_t.exit.i
  %i.ah = insertelement <2 x float> poison, float %3, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ai, <2 x float> %i.c)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.al = insertelement <2 x float> poison, float %4, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.e, <2 x float> %i.am, <2 x float> %i.aj)
  store <2 x float> %i.an, ptr %i.ak, align 4, !tbaa !93
  ret void
}

declare void @hb_draw_funcs_set_line_to_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL24hb_gpu_paint_pen_line_toP15hb_draw_funcs_tPvP15hb_draw_state_tffS1_(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2, float noundef %3, float noundef %4, ptr nofree readnone captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !93
  %i.d = load <2 x float>, ptr %1, align 4, !tbaa !93
end_hunk_0
