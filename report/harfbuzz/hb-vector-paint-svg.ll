Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-vector-paint-svg?download=true
inline.NumInlined: 356
inline.NumDeleted: 118
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL35hb_vector_paint_push_clip_rectangleP16hb_paint_funcs_tPvffffS1_:bb.a

bb.l:                                             ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit
  %i.bn = add i32 %i.bm, -1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !249
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bq
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit

_ZN17hb_vector_paint_t12current_bodyEv.exit:      ; preds = %bb.k, %bb.l
  %.0.i.i.i = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.br, %bb.l ]
  %i.bs = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i, ptr noundef nonnull @.str.31) ; 0 uses
  %i.bt = load i32, ptr %i.bl, align 4, !tbaa !251 ; 2 uses
  %.not.i.not.i.i38 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.not.i.i38, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit40

bb.n:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit
  %i.bu = add i32 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !249
  %i.bx = zext i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bx
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit40

_ZN17hb_vector_paint_t12current_bodyEv.exit40:    ; preds = %bb.m, %bb.n
  %.0.i.i.i39 = phi ptr [ @_hb_CrapPool, %bb.m ], [ %i.by, %bb.n ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i.i39, i64 4 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !50 ; 2 uses
  %i.cb = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.ca, i32 %i.e) ; 2 uses
  %i.cc = extractvalue { i32, i1 } %i.cb, 1
  %i.cd = extractvalue { i32, i1 } %i.cb, 0       ; 4 uses
  %i.ce = icmp slt i32 %i.cd, 0
  %or.cond.i41 = or i1 %i.cc, %i.ce
  br i1 %or.cond.i41, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit59, label %bb.o, !prof !78

bb.o:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit40
  %i.cf = load i32, ptr %.0.i.i.i39, align 8, !tbaa !51 ; 4 uses
  %i.cg = icmp slt i32 %i.cf, 0
  br i1 %i.cg, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit59, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i42 = icmp samesign ugt i32 %i.cd, %i.cf
  br i1 %.not.i.i.i42, label %.preheader.i.i.i45, label %bb.u, !prof !10

.preheader.i.i.i45:                               ; preds = %bb.p, %.preheader.i.i.i45
  %.053.i.i.i46 = phi i32 [ %i.cj, %.preheader.i.i.i45 ], [ %i.cf, %bb.p ] ; 2 uses
  %i.ch = lshr i32 %.053.i.i.i46, 1
  %i.ci = add nuw i32 %.053.i.i.i46, 8
  %i.cj = add nuw i32 %i.ci, %i.ch                ; 6 uses
  %i.ck = icmp ugt i32 %i.cd, %i.cj
  br i1 %i.ck, label %.preheader.i.i.i45, label %.thread39.i.i.i47, !llvm.loop !54

.thread39.i.i.i47:                                ; preds = %.preheader.i.i.i45
  %.not8.i.i.i.i.i48 = icmp eq i32 %i.cf, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i.i39, i64 8 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !49 ; 2 uses
  br i1 %.not8.i.i.i.i.i48, label %bb.q, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i49

bb.q:                                             ; preds = %.thread39.i.i.i47
  %.not9.i.i.i.i.i56 = icmp eq ptr %i.cm, null
  br i1 %.not9.i.i.i.i.i56, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i49, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cn = zext i32 %i.cj to i64
  %i.co = tail call ptr @hb_malloc(i64 noundef %i.cn) #12 ; 4 uses
  %.not10.i.i.i.i.i57 = icmp eq ptr %i.co, null
  br i1 %.not10.i.i.i.i.i57, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i53, label %bb.s, !prof !10

bb.s:                                             ; preds = %bb.r
  %i.cp = load i32, ptr %i.bz, align 4, !tbaa !50 ; 2 uses
  %.not.i.i.i.i.i.i58 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i58, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i51, label %bb.t, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.cq = zext i32 %i.cp to i64
  %i.cr = load ptr, ptr %i.cl, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.co, ptr readonly align 1 %i.cr, i64 range(i64 0, 103079215081) %i.cq, i1 false), !alias.scope !372
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i51

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i49: ; preds = %bb.q, %.thread39.i.i.i47
  %i.cs = phi ptr [ null, %bb.q ], [ %i.cm, %.thread39.i.i.i47 ]
  %i.ct = zext i32 %i.cj to i64
  %i.cu = tail call ptr @hb_realloc(ptr noundef %i.cs, i64 noundef %i.ct) #12 ; 2 uses
  %.not22.i.i.i50 = icmp eq ptr %i.cu, null
  br i1 %.not22.i.i.i50, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i53, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i51, !prof !56

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i53: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i49, %bb.r
  %i.cv = load i32, ptr %.0.i.i.i39, align 8, !tbaa !51 ; 2 uses
  %.not23.i.i.i54 = icmp ugt i32 %i.cj, %i.cv
  br i1 %.not23.i.i.i54, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i55, label %bb.u

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i51: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i49, %bb.t, %bb.s
  %.1.i.i52.i.i.i52 = phi ptr [ %i.cu, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i49 ], [ %i.co, %bb.s ], [ %i.co, %bb.t ]
  store ptr %.1.i.i52.i.i.i52, ptr %i.cl, align 8, !tbaa !49
  store i32 %i.cj, ptr %.0.i.i.i39, align 8, !tbaa !51
  br label %bb.u

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i55:      ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i53
  %i.cw = xor i32 %i.cv, -1
  store i32 %i.cw, ptr %.0.i.i.i39, align 8, !tbaa !51
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit59

bb.u:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i51, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i53, %bb.p
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !50
  %.not.i.i43 = icmp eq i32 %i.e, 0
  br i1 %.not.i.i43, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit59, label %bb.v, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.cx = zext i32 %i.e to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i39, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !49
  %i.da = zext i32 %i.ca to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.da
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.db, ptr readonly align 1 %i.c, i64 range(i64 0, 103079215081) %i.cx, i1 false), !alias.scope !376
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit59

_ZN15hb_vector_buf_t10append_lenEPKcj.exit59:     ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit40, %bb.o, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i55, %bb.u, %bb.v
  %i.dc = load i32, ptr %i.bl, align 4, !tbaa !251 ; 2 uses
  %.not.i.not.i.i60 = icmp eq i32 %i.dc, 0
  br i1 %.not.i.not.i.i60, label %bb.w, label %bb.x, !prof !10

bb.w:                                             ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit59
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit62

bb.x:                                             ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit59
  %i.dd = add i32 %i.dc, -1
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !249
  %i.dg = zext i32 %i.dd to i64
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dg
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit62

_ZN17hb_vector_paint_t12current_bodyEv.exit62:    ; preds = %bb.w, %bb.x
  %.0.i.i.i61 = phi ptr [ @_hb_CrapPool, %bb.w ], [ %i.dh, %bb.x ]
  %i.di = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t8append_cEc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i61, i8 noundef signext 99) ; 0 uses
  %i.dj = load i32, ptr %i.bl, align 4, !tbaa !251 ; 2 uses
  %.not.i.not.i.i63 = icmp eq i32 %i.dj, 0
  br i1 %.not.i.not.i.i63, label %bb.y, label %bb.z, !prof !10

bb.y:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit65

bb.z:                                             ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit62
  %i.dk = add i32 %i.dj, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !249
  %i.dn = zext i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit65

_ZN17hb_vector_paint_t12current_bodyEv.exit65:    ; preds = %bb.y, %bb.z
  %.0.i.i.i64 = phi ptr [ @_hb_CrapPool, %bb.y ], [ %i.do, %bb.z ]
  %i.dp = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i64, i32 noundef %i.g) ; 0 uses
  %i.dq = load i32, ptr %i.bl, align 4, !tbaa !251 ; 2 uses
  %.not.i.not.i.i66 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.not.i.i66, label %bb.aa, label %bb.ab, !prof !10

bb.aa:                                            ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(24) @_hb_NullPool, i64 24, i1 false)
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit68

bb.ab:                                            ; preds = %_ZN17hb_vector_paint_t12current_bodyEv.exit65
  %i.dr = add i32 %i.dq, -1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !249
  %i.du = zext i32 %i.dr to i64
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.dt, i64 %i.du
  br label %_ZN17hb_vector_paint_t12current_bodyEv.exit68

_ZN17hb_vector_paint_t12current_bodyEv.exit68:    ; preds = %bb.aa, %bb.ab
  %.0.i.i.i67 = phi ptr [ @_hb_CrapPool, %bb.aa ], [ %i.dv, %bb.ab ]
  %i.dw = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i67, ptr noundef nonnull @.str.19) ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %_ZN17hb_vector_paint_t12current_bodyEv.exit68
  ret void
}

declare void @hb_paint_funcs_set_push_clip_path_start_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL36hb_vector_paint_push_clip_path_startP16hb_paint_funcs_tPvPS1_S1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !380
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 0, ptr %i.c, align 4, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.e = load i32, ptr %i.d, align 8, !tbaa !309
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  store ptr %i.b, ptr %i.g, align 8, !tbaa !381
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i32 %i.e, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !295
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 260
  %4 = load <2 x float>, ptr %i.f, align 4, !tbaa !311
  store <2 x float> %4, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !311
  store ptr %i.g, ptr %2, align 8, !tbaa !380
  %i.h = tail call noundef ptr @_Z33hb_vector_svg_path_draw_funcs_getv() #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.h, %bb.c ]
  ret ptr %.0
}

declare void @hb_paint_funcs_set_push_clip_path_end_func(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL34hb_vector_paint_push_clip_path_endP16hb_paint_funcs_tPvS1_(ptr nofree readnone captures(none) %0, ptr noundef nonnull %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN17hb_vector_paint_t18ensure_initializedEv(ptr noundef nonnull align 8 dereferenceable(344) %1)
  br i1 %i.a, label %bb.b, label %bb.ak, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !320  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.e = load i32, ptr %i.d, align 8, !tbaa !321  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 236 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !382  ; 3 uses
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !382
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 13 uses
  %i.j = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull @.str.27) ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 156 ; 6 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !50   ; 2 uses
  %i.m = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.l, i32 %i.e) ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  %i.o = extractvalue { i32, i1 } %i.m, 0         ; 4 uses
  %i.p = icmp slt i32 %i.o, 0
  %or.cond.i = or i1 %i.n, %i.p
  br i1 %or.cond.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.c, !prof !78

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.i, align 8, !tbaa !51   ; 4 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp samesign ugt i32 %i.o, %i.q
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %bb.i, !prof !10

.preheader.i.i.i:                                 ; preds = %bb.d, %.preheader.i.i.i
  %.053.i.i.i = phi i32 [ %i.u, %.preheader.i.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %i.s = lshr i32 %.053.i.i.i, 1
  %i.t = add nuw i32 %.053.i.i.i, 8
  %i.u = add nuw i32 %i.t, %i.s                   ; 6 uses
  %i.v = icmp ugt i32 %i.o, %i.u
  br i1 %i.v, label %.preheader.i.i.i, label %.thread39.i.i.i, !llvm.loop !54

.thread39.i.i.i:                                  ; preds = %.preheader.i.i.i
  %.not8.i.i.i.i.i = icmp eq i32 %i.q, 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49   ; 2 uses
  br i1 %.not8.i.i.i.i.i, label %bb.e, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i

bb.e:                                             ; preds = %.thread39.i.i.i
  %.not9.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = zext i32 %i.u to i64
  %i.z = tail call ptr @hb_malloc(i64 noundef %i.y) #12 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.aa = load i32, ptr %i.k, align 4, !tbaa !50  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, label %bb.h, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ab = zext i32 %i.aa to i64
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr readonly align 1 %i.ac, i64 range(i64 0, 103079215081) %i.ab, i1 false), !alias.scope !383
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.e, %.thread39.i.i.i
  %i.ad = phi ptr [ null, %bb.e ], [ %i.x, %.thread39.i.i.i ]
  %i.ae = zext i32 %i.u to i64
  %i.af = tail call ptr @hb_realloc(ptr noundef %i.ad, i64 noundef %i.ae) #12 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, !prof !56

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.f
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.u, %i.ag
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, label %bb.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i, %bb.h, %bb.g
  %.1.i.i52.i.i.i = phi ptr [ %i.af, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i ], [ %i.z, %bb.g ], [ %i.z, %bb.h ]
  store ptr %.1.i.i52.i.i.i, ptr %i.w, align 8, !tbaa !49
  store i32 %i.u, ptr %i.i, align 8, !tbaa !51
  br label %bb.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i
  %i.ah = xor i32 %i.ag, -1
  store i32 %i.ah, ptr %i.i, align 8, !tbaa !51
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

bb.i:                                             ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i, %bb.d
  store i32 %i.o, ptr %i.k, align 4, !tbaa !50
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit, label %bb.j, !prof !10

bb.j:                                             ; preds = %bb.i
  %i.ai = zext i32 %i.e to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = zext i32 %i.l to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr readonly align 1 %i.c, i64 range(i64 0, 103079215081) %i.ai, i1 false), !alias.scope !387
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit

_ZN15hb_vector_buf_t10append_lenEPKcj.exit:       ; preds = %bb.b, %bb.c, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i, %bb.i, %bb.j
  %i.an = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull @.str.33) ; 0 uses
  %i.ao = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t15append_unsignedEj(ptr noundef nonnull align 8 dereferenceable(20) %i.i, i32 noundef %i.g) ; 0 uses
  %i.ap = tail call noundef zeroext i1 @_ZN15hb_vector_buf_t10append_strEPKc(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull @.str.34) ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.at = load i32, ptr %i.as, align 4, !tbaa !50 ; 3 uses
  %i.au = load i32, ptr %i.k, align 4, !tbaa !50  ; 2 uses
  %i.av = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.au, i32 %i.at) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1
  %i.ax = extractvalue { i32, i1 } %i.av, 0       ; 4 uses
  %i.ay = icmp slt i32 %i.ax, 0
  %or.cond.i24 = or i1 %i.aw, %i.ay
  br i1 %or.cond.i24, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit42, label %bb.k, !prof !78

bb.k:                                             ; preds = %_ZN15hb_vector_buf_t10append_lenEPKcj.exit
  %i.az = load i32, ptr %i.i, align 8, !tbaa !51  ; 4 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit42, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i25 = icmp samesign ugt i32 %i.ax, %i.az
  br i1 %.not.i.i.i25, label %.preheader.i.i.i28, label %bb.q, !prof !10

.preheader.i.i.i28:                               ; preds = %bb.l, %.preheader.i.i.i28
  %.053.i.i.i29 = phi i32 [ %i.bd, %.preheader.i.i.i28 ], [ %i.az, %bb.l ] ; 2 uses
  %i.bb = lshr i32 %.053.i.i.i29, 1
  %i.bc = add nuw i32 %.053.i.i.i29, 8
  %i.bd = add nuw i32 %i.bc, %i.bb                ; 6 uses
  %i.be = icmp ugt i32 %i.ax, %i.bd
  br i1 %i.be, label %.preheader.i.i.i28, label %.thread39.i.i.i30, !llvm.loop !54

.thread39.i.i.i30:                                ; preds = %.preheader.i.i.i28
  %.not8.i.i.i.i.i31 = icmp eq i32 %i.az, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !49 ; 2 uses
  br i1 %.not8.i.i.i.i.i31, label %bb.m, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i32

bb.m:                                             ; preds = %.thread39.i.i.i30
  %.not9.i.i.i.i.i39 = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i.i.i.i39, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i32, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = zext i32 %i.bd to i64
  %i.bi = tail call ptr @hb_malloc(i64 noundef %i.bh) #12 ; 4 uses
  %.not10.i.i.i.i.i40 = icmp eq ptr %i.bi, null
  br i1 %.not10.i.i.i.i.i40, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i36, label %bb.o, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %i.k, align 4, !tbaa !50  ; 2 uses
  %.not.i.i.i.i.i.i41 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i41, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i34, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.bk = zext i32 %i.bj to i64
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bi, ptr readonly align 1 %i.bl, i64 range(i64 0, 103079215081) %i.bk, i1 false), !alias.scope !391
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i34

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i32: ; preds = %bb.m, %.thread39.i.i.i30
  %i.bm = phi ptr [ null, %bb.m ], [ %i.bg, %.thread39.i.i.i30 ]
  %i.bn = zext i32 %i.bd to i64
  %i.bo = tail call ptr @hb_realloc(ptr noundef %i.bm, i64 noundef %i.bn) #12 ; 2 uses
  %.not22.i.i.i33 = icmp eq ptr %i.bo, null
  br i1 %.not22.i.i.i33, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i36, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i34, !prof !56

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i36: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i32, %bb.n
  %i.bp = load i32, ptr %i.i, align 8, !tbaa !51  ; 2 uses
  %.not23.i.i.i37 = icmp ugt i32 %i.bd, %i.bp
  br i1 %.not23.i.i.i37, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i38, label %bb.q

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread4.i.i34: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i32, %bb.p, %bb.o
  %.1.i.i52.i.i.i35 = phi ptr [ %i.bo, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i.i32 ], [ %i.bi, %bb.o ], [ %i.bi, %bb.p ]
  store ptr %.1.i.i52.i.i.i35, ptr %i.bf, align 8, !tbaa !49
  store i32 %i.bd, ptr %i.i, align 8, !tbaa !51
  br label %bb.q

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i.i38:      ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i.i36
  %i.bq = xor i32 %i.bp, -1
  store i32 %i.bq, ptr %i.i, align 8, !tbaa !51
  br label %_ZN15hb_vector_buf_t10append_lenEPKcj.exit42
end_hunk_0
