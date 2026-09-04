Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-layout?download=true
inline.NumInlined: 23696
inline.NumDeleted: 10355
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_Z23_hb_subset_table_layoutP16hb_subset_plan_tR11hb_vector_tIcLb0EEjPb:bb.a
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !110
  %.not62.i19 = icmp eq ptr %i.gk, null
  br i1 %.not62.i19, label %.critedge.i52, label %bb.aq, !prof !112

.critedge.i52:                                    ; preds = %bb.ap, %bb.ao
  call void @hb_blob_destroy(ptr noundef %i.gd) #21
  br label %.sink.split

bb.aq:                                            ; preds = %bb.ap
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !111
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !167 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load atomic i32, ptr %i.gp monotonic, align 4
  %i.gr = icmp eq i32 %i.gq, -1
  br i1 %i.gr, label %bb.ar, label %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i20, !prof !112

bb.ar:                                            ; preds = %bb.aq
  %i.gs = call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.go) #21 ; 0 uses
  br label %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i20

_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i20:      ; preds = %bb.ar, %bb.aq
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.gu = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.gt) ; 0 uses
  %.026.i.i21 = add i32 %i.gm, 8192               ; 2 uses
  %i.gv = load i32, ptr %1, align 8, !tbaa !169   ; 5 uses
  %i.gw = icmp slt i32 %i.gv, 0
  br i1 %i.gw, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread83.i, label %bb.as, !prof !112

bb.as:                                            ; preds = %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i20
  %.not.i64.i22 = icmp ugt i32 %.026.i.i21, %i.gv
  br i1 %.not.i64.i22, label %.preheader.i.i39, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i23, !prof !112

.preheader.i.i39:                                 ; preds = %bb.as, %.preheader.i.i39
  %.053.i.i40 = phi i32 [ %i.gz, %.preheader.i.i39 ], [ %i.gv, %bb.as ] ; 2 uses
  %i.gx = lshr i32 %.053.i.i40, 1
  %i.gy = add i32 %.053.i.i40, 8
  %i.gz = add i32 %i.gy, %i.gx                    ; 7 uses
  %i.ha = icmp ugt i32 %.026.i.i21, %i.gz
  br i1 %i.ha, label %.preheader.i.i39, label %.thread39.i.i41, !llvm.loop !0

.thread39.i.i41:                                  ; preds = %.preheader.i.i39
  %.not8.i.i.i.i42 = icmp eq i32 %i.gv, 0
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !171 ; 2 uses
  br i1 %.not8.i.i.i.i42, label %bb.at, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i43

bb.at:                                            ; preds = %.thread39.i.i41
  %.not9.i.i.i.i49 = icmp eq ptr %i.hc, null
  br i1 %.not9.i.i.i.i49, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i43, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hd = zext i32 %i.gz to i64
  %i.he = call ptr @hb_malloc(i64 noundef %i.hd) #21 ; 4 uses
  %.not10.i.i.i.i50 = icmp eq ptr %i.he, null
  br i1 %.not10.i.i.i.i50, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i46, label %bb.av, !prof !112

bb.av:                                            ; preds = %bb.au
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i51 = icmp eq i32 %i.hg, 0
  br i1 %.not.i.i.i.i.i51, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i, label %bb.aw, !prof !112

bb.aw:                                            ; preds = %bb.av
  %i.hh = zext i32 %i.hg to i64
  %i.hi = load ptr, ptr %i.hb, align 8, !tbaa !171
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.he, ptr readonly align 1 %i.hi, i64 %i.hh, i1 false), !alias.scope !958
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i43: ; preds = %bb.at, %.thread39.i.i41
  %i.hj = phi ptr [ null, %bb.at ], [ %i.hc, %.thread39.i.i41 ]
  %i.hk = zext i32 %i.gz to i64
  %i.hl = call ptr @hb_realloc(ptr noundef %i.hj, i64 noundef %i.hk) #21 ; 2 uses
  %.not22.i.i44 = icmp eq ptr %i.hl, null
  br i1 %.not22.i.i44, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i46, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i, !prof !173

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i46: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i43, %bb.au
  %i.hm = load i32, ptr %1, align 8, !tbaa !169   ; 3 uses
  %.not23.i.i47 = icmp ugt i32 %i.gz, %i.hm
  br i1 %.not23.i.i47, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i48, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i23, !prof !174

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i43, %bb.aw, %bb.av
  %.1.i.i52.i.i45 = phi ptr [ %i.hl, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i43 ], [ %i.he, %bb.av ], [ %i.he, %bb.aw ]
  store ptr %.1.i.i52.i.i45, ptr %i.hb, align 8, !tbaa !171
  store i32 %i.gz, ptr %1, align 8, !tbaa !169
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i23

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i48:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i46
  %i.hn = xor i32 %i.hm, -1
  store i32 %i.hn, ptr %1, align 8, !tbaa !169
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread83.i

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread83.i: ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i48, %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i20
  call void @hb_blob_destroy(ptr noundef nonnull %i.gd) #21
  br label %.sink.split

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i23: ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i46, %bb.as
  %i.ho = phi i32 [ %i.hm, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i46 ], [ %i.gv, %bb.as ], [ %i.gz, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !171 ; 3 uses
  %i.hr = sext i32 %i.ho to i64
  store ptr %i.hq, ptr %14, align 8, !tbaa !186
  %i.hs = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hr ; 2 uses
  store ptr %i.ht, ptr %i.hs, align 8, !tbaa !187
  %i.hu = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.hv = getelementptr inbounds nuw i8, ptr %14, i64 80 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %14, i64 96 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %14, i64 100 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.hw monotonic, align 8
  store atomic i8 1, ptr %i.hx monotonic, align 4
  store atomic ptr null, ptr %i.hy monotonic, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 112 ; 2 uses
  store i8 1, ptr %i.hz, align 8, !tbaa !188
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 114 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 136 ; 2 uses
  store ptr null, ptr %i.ib, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ia, i8 0, i64 18, i1 false)
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 44 ; 2 uses
  store i32 0, ptr %i.ic, align 4, !tbaa !190
  %i.id = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.hq, ptr %i.id, align 8, !tbaa !191
  %i.ie = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ht, ptr %i.ie, align 8, !tbaa !192
  %i.if = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr null, ptr %i.if, align 8, !tbaa !193
  %i.ig = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 0, ptr %i.ig, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %14)
  %i.ih = getelementptr inbounds nuw i8, ptr %14, i64 84 ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !195 ; 3 uses
  %i.ij = load i32, ptr %i.hv, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i65.i24 = icmp slt i32 %i.ii, %i.ij
  br i1 %.not.i.i.i65.i24, label %.critedge.i.i.i.i27, label %bb.ax

bb.ax:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i23
  %i.ik = add i32 %i.ii, 1                        ; 2 uses
  %i.il = icmp slt i32 %i.ij, 0
  br i1 %i.il, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i, label %bb.ay, !prof !112

bb.ay:                                            ; preds = %bb.ax
  %.not.i66.i = icmp ugt i32 %i.ik, %i.ij
  br i1 %.not.i66.i, label %.preheader.i68.i, label %..critedge_crit_edge.i.i.i.i25, !prof !112

.preheader.i68.i:                                 ; preds = %bb.ay, %.preheader.i68.i
  %.043.i.i32 = phi i32 [ %i.io, %.preheader.i68.i ], [ %i.ij, %bb.ay ] ; 2 uses
  %i.im = lshr i32 %.043.i.i32, 1
  %i.in = add i32 %.043.i.i32, 8
  %i.io = add i32 %i.in, %i.im                    ; 7 uses
  %i.ip = icmp ugt i32 %i.ik, %i.io
  br i1 %i.ip, label %.preheader.i68.i, label %.thread.i.i33, !llvm.loop !1

.thread.i.i33:                                    ; preds = %.preheader.i68.i
  %i.iq = icmp ugt i32 %i.io, 536870911
  br i1 %i.iq, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i, label %bb.az, !prof !112

bb.az:                                            ; preds = %.thread.i.i33
  %.not49.i.i34 = icmp eq i32 %i.ij, 0
  %i.ir = getelementptr inbounds nuw i8, ptr %14, i64 88 ; 3 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i.i34, label %bb.ba, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i35

bb.ba:                                            ; preds = %bb.az
  %.not9.i.i.i75.i = icmp eq ptr %i.is, null
  br i1 %.not9.i.i.i75.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i35, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.it = shl nuw i32 %i.io, 3
  %i.iu = zext i32 %i.it to i64
  %i.iv = call ptr @hb_malloc(i64 noundef %i.iu) #21 ; 4 uses
  %.not10.i.i.i76.i = icmp eq ptr %i.iv, null
  br i1 %.not10.i.i.i76.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i38, label %bb.bc, !prof !112

bb.bc:                                            ; preds = %bb.bb
  %i.iw = load i32, ptr %i.ih, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i77.i = icmp eq i32 %i.iw, 0
  br i1 %.not.i.i.i.i77.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36, label %bb.bd, !prof !112

bb.bd:                                            ; preds = %bb.bc
  %i.ix = zext i32 %i.iw to i64
  %i.iy = shl nuw nsw i64 %i.ix, 3
  %i.iz = load ptr, ptr %i.ir, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iv, ptr readonly align 1 %i.iz, i64 %i.iy, i1 false), !alias.scope !959
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i35: ; preds = %bb.ba, %bb.az
  %i.ja = phi ptr [ null, %bb.ba ], [ %i.is, %bb.az ]
  %i.jb = shl nuw i32 %i.io, 3
  %i.jc = zext i32 %i.jb to i64
  %i.jd = call ptr @hb_realloc(ptr noundef %i.ja, i64 noundef %i.jc) #21 ; 2 uses
  %.not22.i70.i = icmp eq ptr %i.jd, null
  br i1 %.not22.i70.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i38, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i38: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i35, %bb.bb
  %i.je = load i32, ptr %i.hv, align 8, !tbaa !196 ; 2 uses
  %.not23.i74.i = icmp ugt i32 %i.io, %i.je
  br i1 %.not23.i74.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i, label %..critedge_crit_edge.i.i.i.i25, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i38, %.thread.i.i33
  %.sink.i72.ph.in.i = phi i32 [ %i.ij, %.thread.i.i33 ], [ %i.je, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i38 ]
  %.sink.i72.ph.i = xor i32 %.sink.i72.ph.in.i, -1
  store i32 %.sink.i72.ph.i, ptr %i.hv, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i35, %bb.bd, %bb.bc
  %.1.i.i42.i.i37 = phi ptr [ %i.jd, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i35 ], [ %i.iv, %bb.bd ], [ %i.iv, %bb.bc ]
  store ptr %.1.i.i42.i.i37, ptr %i.ir, align 8, !tbaa !197
  store i32 %i.io, ptr %i.hv, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i.i25

..critedge_crit_edge.i.i.i.i25:                   ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i36, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i38, %bb.ay
  %.pre.i.i.i.i26 = load i32, ptr %i.ih, align 4, !tbaa !195
  br label %.critedge.i.i.i.i27

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i, %bb.ax
  %i.jf = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.jf, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i28

.critedge.i.i.i.i27:                              ; preds = %..critedge_crit_edge.i.i.i.i25, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i23
  %i.jg = phi i32 [ %.pre.i.i.i.i26, %..critedge_crit_edge.i.i.i.i25 ], [ %i.ii, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i23 ] ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 88
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !197
  %i.jj = add i32 %i.jg, 1
  store i32 %i.jj, ptr %i.ih, align 4, !tbaa !195
  %i.jk = zext i32 %i.jg to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jk
  store ptr null, ptr %i.jl, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i28

_ZN22hb_serialize_context_tC2EPvm.exit.i28:       ; preds = %.critedge.i.i.i.i27, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i
  store atomic i32 1, ptr %i.hw monotonic, align 8
  store atomic i8 1, ptr %i.hx monotonic, align 4
  store atomic ptr null, ptr %i.hy monotonic, align 8
  store i8 1, ptr %i.hz, align 8, !tbaa !188
  store ptr null, ptr %i.ib, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ia, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store i32 0, ptr %15, align 8, !tbaa !955
  %i.jm = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.gd, ptr %i.jm, align 8, !tbaa !206
  %i.jn = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %0, ptr %i.jn, align 8, !tbaa !207
  %i.jo = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %14, ptr %i.jo, align 8, !tbaa !208
  %i.jp = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 1196643650, ptr %i.jp, align 8, !tbaa !209
  %i.jq = call fastcc noundef zeroext i1 @_ZL20_hb_subset_table_tryIN2OT6Layout4GSUBEEbPKT_P11hb_vector_tIcLb0EEP19hb_subset_context_t(ptr noundef %spec.select.i.i1.i.i18, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @hb_blob_destroy(ptr noundef nonnull %i.gd) #21
  %i.jr = load i32, ptr %i.ic, align 4, !tbaa !190
  switch i32 %i.jr, label %bb.bh [
    i32 0, label %bb.be
    i32 2, label %bb.be
  ]

bb.be:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i28, %_ZN22hb_serialize_context_tC2EPvm.exit.i28
  br i1 %i.jq, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.js = call fastcc noundef ptr @_ZL17_hb_subset_repackjRK22hb_serialize_context_t(i32 noundef 1196643650, ptr noundef nonnull align 8 dereferenceable(144) %14) ; 3 uses
  %.not63.i31 = icmp eq ptr %i.js, null
  br i1 %.not63.i31, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !957
  %i.jv = call i32 @hb_face_builder_add_table(ptr noundef %i.ju, i32 noundef 1196643650, ptr noundef nonnull %i.js) #21
  %i.jw = icmp ne i32 %i.jv, 0
  call void @hb_blob_destroy(ptr noundef nonnull %i.js) #21
  %i.jx = zext i1 %i.jw to i8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be, %_ZN22hb_serialize_context_tC2EPvm.exit.i28
  %.059.i29 = phi i8 [ 1, %bb.be ], [ 0, %_ZN22hb_serialize_context_tC2EPvm.exit.i28 ], [ %i.jx, %bb.bg ], [ 0, %bb.bf ]
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %14) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %.sink.split

bb.bi:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.jy = call ptr @_ZN16hb_subset_plan_t19source_table_loaderIKN2OT6Layout4GPOSEEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(3104) %0) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %.not.i.i.i.i53 = icmp eq ptr %i.jy, null       ; 2 uses
  %spec.select.i.i.i.i54 = select i1 %.not.i.i.i.i53, ptr @_hb_NullPool, ptr %i.jy ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i54, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !110
  %i.kb = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i54, i64 24
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !111
  %i.kd = icmp ult i32 %i.kc, 4
  %spec.select.i.i1.i.i55 = select i1 %i.kd, ptr @_hb_NullPool, ptr %i.ka
  br i1 %.not.i.i.i.i53, label %.critedge.i102, label %bb.bj, !prof !112

bb.bj:                                            ; preds = %bb.bi
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !110
  %.not62.i56 = icmp eq ptr %i.kf, null
  br i1 %.not62.i56, label %.critedge.i102, label %bb.bk, !prof !112

.critedge.i102:                                   ; preds = %bb.bj, %bb.bi
  call void @hb_blob_destroy(ptr noundef %i.jy) #21
  br label %.sink.split

bb.bk:                                            ; preds = %bb.bj
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.kh = load i32, ptr %i.kg, align 8, !tbaa !111
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !167 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load atomic i32, ptr %i.kk monotonic, align 4
  %i.km = icmp eq i32 %i.kl, -1
  br i1 %i.km, label %bb.bl, label %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i57, !prof !112

bb.bl:                                            ; preds = %bb.bk
  %i.kn = call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.kj) #21 ; 0 uses
  br label %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i57

_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i57:      ; preds = %bb.bl, %bb.bk
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.kp = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ko) ; 0 uses
  %.026.i.i58 = add i32 %i.kh, 8192               ; 2 uses
  %i.kq = load i32, ptr %1, align 8, !tbaa !169   ; 5 uses
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread83.i98, label %bb.bm, !prof !112

bb.bm:                                            ; preds = %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i57
  %.not.i64.i59 = icmp ugt i32 %.026.i.i58, %i.kq
  br i1 %.not.i64.i59, label %.preheader.i.i87, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i60, !prof !112

.preheader.i.i87:                                 ; preds = %bb.bm, %.preheader.i.i87
  %.053.i.i88 = phi i32 [ %i.ku, %.preheader.i.i87 ], [ %i.kq, %bb.bm ] ; 2 uses
  %i.ks = lshr i32 %.053.i.i88, 1
  %i.kt = add i32 %.053.i.i88, 8
  %i.ku = add i32 %i.kt, %i.ks                    ; 7 uses
  %i.kv = icmp ugt i32 %.026.i.i58, %i.ku
  br i1 %i.kv, label %.preheader.i.i87, label %.thread39.i.i89, !llvm.loop !0

.thread39.i.i89:                                  ; preds = %.preheader.i.i87
  %.not8.i.i.i.i90 = icmp eq i32 %i.kq, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !171 ; 2 uses
  br i1 %.not8.i.i.i.i90, label %bb.bn, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i91

bb.bn:                                            ; preds = %.thread39.i.i89
  %.not9.i.i.i.i99 = icmp eq ptr %i.kx, null
  br i1 %.not9.i.i.i.i99, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i91, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ky = zext i32 %i.ku to i64
  %i.kz = call ptr @hb_malloc(i64 noundef %i.ky) #21 ; 4 uses
  %.not10.i.i.i.i100 = icmp eq ptr %i.kz, null
  br i1 %.not10.i.i.i.i100, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i95, label %bb.bp, !prof !112

bb.bp:                                            ; preds = %bb.bo
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i101 = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i.i.i.i101, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i93, label %bb.bq, !prof !112

bb.bq:                                            ; preds = %bb.bp
  %i.lc = zext i32 %i.lb to i64
  %i.ld = load ptr, ptr %i.kw, align 8, !tbaa !171
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kz, ptr readonly align 1 %i.ld, i64 %i.lc, i1 false), !alias.scope !960
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i93

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i91: ; preds = %bb.bn, %.thread39.i.i89
  %i.le = phi ptr [ null, %bb.bn ], [ %i.kx, %.thread39.i.i89 ]
  %i.lf = zext i32 %i.ku to i64
  %i.lg = call ptr @hb_realloc(ptr noundef %i.le, i64 noundef %i.lf) #21 ; 2 uses
  %.not22.i.i92 = icmp eq ptr %i.lg, null
  br i1 %.not22.i.i92, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i95, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i93, !prof !173

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i95: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i91, %bb.bo
  %i.lh = load i32, ptr %1, align 8, !tbaa !169   ; 3 uses
  %.not23.i.i96 = icmp ugt i32 %i.ku, %i.lh
  br i1 %.not23.i.i96, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i97, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i60, !prof !174

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i93: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i91, %bb.bq, %bb.bp
  %.1.i.i52.i.i94 = phi ptr [ %i.lg, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i91 ], [ %i.kz, %bb.bp ], [ %i.kz, %bb.bq ]
  store ptr %.1.i.i52.i.i94, ptr %i.kw, align 8, !tbaa !171
  store i32 %i.ku, ptr %1, align 8, !tbaa !169
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i60

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i97:        ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i95
  %i.li = xor i32 %i.lh, -1
  store i32 %i.li, ptr %1, align 8, !tbaa !169
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread83.i98

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread83.i98: ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i97, %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i57
  call void @hb_blob_destroy(ptr noundef nonnull %i.jy) #21
  br label %.sink.split

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i60: ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i93, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i95, %bb.bm
  %i.lj = phi i32 [ %i.lh, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i95 ], [ %i.kq, %bb.bm ], [ %i.ku, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i93 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !171 ; 3 uses
  %i.lm = sext i32 %i.lj to i64
  store ptr %i.ll, ptr %11, align 8, !tbaa !186
  %i.ln = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.lm ; 2 uses
  store ptr %i.lo, ptr %i.ln, align 8, !tbaa !187
  %i.lp = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.lq = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %11, i64 96 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %11, i64 100 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %11, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lp, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.lr monotonic, align 8
  store atomic i8 1, ptr %i.ls monotonic, align 4
  store atomic ptr null, ptr %i.lt monotonic, align 8
  %i.lu = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  store i8 1, ptr %i.lu, align 8, !tbaa !188
  %i.lv = getelementptr inbounds nuw i8, ptr %11, i64 114 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  store ptr null, ptr %i.lw, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.lv, i8 0, i64 18, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  store i32 0, ptr %i.lx, align 4, !tbaa !190
  %i.ly = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ll, ptr %i.ly, align 8, !tbaa !191
  %i.lz = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.lo, ptr %i.lz, align 8, !tbaa !192
  %i.ma = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr null, ptr %i.ma, align 8, !tbaa !193
  %i.mb = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i32 0, ptr %i.mb, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %11)
  %i.mc = getelementptr inbounds nuw i8, ptr %11, i64 84 ; 4 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !195 ; 3 uses
  %i.me = load i32, ptr %i.lq, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i65.i61 = icmp slt i32 %i.md, %i.me
  br i1 %.not.i.i.i65.i61, label %.critedge.i.i.i.i65, label %bb.br

bb.br:                                            ; preds = %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i60
  %i.mf = add i32 %i.md, 1                        ; 2 uses
  %i.mg = icmp slt i32 %i.me, 0
  br i1 %i.mg, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i83, label %bb.bs, !prof !112

bb.bs:                                            ; preds = %bb.br
  %.not.i66.i62 = icmp ugt i32 %i.mf, %i.me
  br i1 %.not.i66.i62, label %.preheader.i68.i70, label %..critedge_crit_edge.i.i.i.i63, !prof !112

.preheader.i68.i70:                               ; preds = %bb.bs, %.preheader.i68.i70
  %.043.i.i71 = phi i32 [ %i.mj, %.preheader.i68.i70 ], [ %i.me, %bb.bs ] ; 2 uses
  %i.mh = lshr i32 %.043.i.i71, 1
  %i.mi = add i32 %.043.i.i71, 8
  %i.mj = add i32 %i.mi, %i.mh                    ; 7 uses
  %i.mk = icmp ugt i32 %i.mf, %i.mj
  br i1 %i.mk, label %.preheader.i68.i70, label %.thread.i.i72, !llvm.loop !1

.thread.i.i72:                                    ; preds = %.preheader.i68.i70
  %i.ml = icmp ugt i32 %i.mj, 536870911
  br i1 %i.ml, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i80, label %bb.bt, !prof !112

bb.bt:                                            ; preds = %.thread.i.i72
  %.not49.i.i73 = icmp eq i32 %i.me, 0
  %i.mm = getelementptr inbounds nuw i8, ptr %11, i64 88 ; 3 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i.i73, label %bb.bu, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i74

bb.bu:                                            ; preds = %bb.bt
  %.not9.i.i.i75.i84 = icmp eq ptr %i.mn, null
  br i1 %.not9.i.i.i75.i84, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i74, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mo = shl nuw i32 %i.mj, 3
  %i.mp = zext i32 %i.mo to i64
  %i.mq = call ptr @hb_malloc(i64 noundef %i.mp) #21 ; 4 uses
  %.not10.i.i.i76.i85 = icmp eq ptr %i.mq, null
  br i1 %.not10.i.i.i76.i85, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i78, label %bb.bw, !prof !112

bb.bw:                                            ; preds = %bb.bv
  %i.mr = load i32, ptr %i.mc, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i77.i86 = icmp eq i32 %i.mr, 0
  br i1 %.not.i.i.i.i77.i86, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i76, label %bb.bx, !prof !112

bb.bx:                                            ; preds = %bb.bw
  %i.ms = zext i32 %i.mr to i64
  %i.mt = shl nuw nsw i64 %i.ms, 3
  %i.mu = load ptr, ptr %i.mm, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mq, ptr readonly align 1 %i.mu, i64 %i.mt, i1 false), !alias.scope !961
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i76

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i74: ; preds = %bb.bu, %bb.bt
  %i.mv = phi ptr [ null, %bb.bu ], [ %i.mn, %bb.bt ]
  %i.mw = shl nuw i32 %i.mj, 3
  %i.mx = zext i32 %i.mw to i64
  %i.my = call ptr @hb_realloc(ptr noundef %i.mv, i64 noundef %i.mx) #21 ; 2 uses
  %.not22.i70.i75 = icmp eq ptr %i.my, null
  br i1 %.not22.i70.i75, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i78, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i76, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i78: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i74, %bb.bv
  %i.mz = load i32, ptr %i.lq, align 8, !tbaa !196 ; 2 uses
  %.not23.i74.i79 = icmp ugt i32 %i.mj, %i.mz
  br i1 %.not23.i74.i79, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i80, label %..critedge_crit_edge.i.i.i.i63, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i80: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i78, %.thread.i.i72
  %.sink.i72.ph.in.i81 = phi i32 [ %i.me, %.thread.i.i72 ], [ %i.mz, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i78 ]
  %.sink.i72.ph.i82 = xor i32 %.sink.i72.ph.in.i81, -1
  store i32 %.sink.i72.ph.i82, ptr %i.lq, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i83

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i76: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i74, %bb.bx, %bb.bw
  %.1.i.i42.i.i77 = phi ptr [ %i.my, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i74 ], [ %i.mq, %bb.bx ], [ %i.mq, %bb.bw ]
  store ptr %.1.i.i42.i.i77, ptr %i.mm, align 8, !tbaa !197
  store i32 %i.mj, ptr %i.lq, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i.i63

..critedge_crit_edge.i.i.i.i63:                   ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i76, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i78, %bb.bs
  %.pre.i.i.i.i64 = load i32, ptr %i.mc, align 4, !tbaa !195
  br label %.critedge.i.i.i.i65

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i83: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread92.i80, %bb.br
  %i.na = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.na, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i66

.critedge.i.i.i.i65:                              ; preds = %..critedge_crit_edge.i.i.i.i63, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i60
  %i.nb = phi i32 [ %.pre.i.i.i.i64, %..critedge_crit_edge.i.i.i.i63 ], [ %i.md, %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i60 ] ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !197
  %i.ne = add i32 %i.nb, 1
  store i32 %i.ne, ptr %i.mc, align 4, !tbaa !195
  %i.nf = zext i32 %i.nb to i64
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nd, i64 %i.nf
  store ptr null, ptr %i.ng, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i66

_ZN22hb_serialize_context_tC2EPvm.exit.i66:       ; preds = %.critedge.i.i.i.i65, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread89.i83
  store atomic i32 1, ptr %i.lr monotonic, align 8
  store atomic i8 1, ptr %i.ls monotonic, align 4
  store atomic ptr null, ptr %i.lt monotonic, align 8
  store i8 1, ptr %i.lu, align 8, !tbaa !188
  store ptr null, ptr %i.lw, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.lv, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store i32 0, ptr %12, align 8, !tbaa !955
  %i.nh = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.jy, ptr %i.nh, align 8, !tbaa !206
  %i.ni = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %0, ptr %i.ni, align 8, !tbaa !207
  %i.nj = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.nj, align 8, !tbaa !208
  %i.nk = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i32 1196445523, ptr %i.nk, align 8, !tbaa !209
  %i.nl = call fastcc noundef zeroext i1 @_ZL20_hb_subset_table_tryIN2OT6Layout4GPOSEEbPKT_P11hb_vector_tIcLb0EEP19hb_subset_context_t(ptr noundef %spec.select.i.i1.i.i55, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  call void @hb_blob_destroy(ptr noundef nonnull %i.jy) #21
  %i.nm = load i32, ptr %i.lx, align 4, !tbaa !190
  switch i32 %i.nm, label %bb.cb [
    i32 0, label %bb.by
    i32 2, label %bb.by
  ]

bb.by:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i66, %_ZN22hb_serialize_context_tC2EPvm.exit.i66
  br i1 %i.nl, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.nn = call fastcc noundef ptr @_ZL17_hb_subset_repackjRK22hb_serialize_context_t(i32 noundef 1196445523, ptr noundef nonnull align 8 dereferenceable(144) %11) ; 3 uses
  %.not63.i69 = icmp eq ptr %i.nn, null
  br i1 %.not63.i69, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !957
  %i.nq = call i32 @hb_face_builder_add_table(ptr noundef %i.np, i32 noundef 1196445523, ptr noundef nonnull %i.nn) #21
  %i.nr = icmp ne i32 %i.nq, 0
  call void @hb_blob_destroy(ptr noundef nonnull %i.nn) #21
  %i.ns = zext i1 %i.nr to i8
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %_ZN22hb_serialize_context_tC2EPvm.exit.i66
  %.059.i67 = phi i8 [ 1, %bb.by ], [ 0, %_ZN22hb_serialize_context_tC2EPvm.exit.i66 ], [ %i.ns, %bb.ca ], [ 0, %bb.bz ]
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.sink.split

bb.cc:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.nt = call ptr @_ZN16hb_subset_plan_t19source_table_loaderIKN2OT4BASEEEclEPS_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(3104) %0) ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %.not.i.i.i.i103 = icmp eq ptr %i.nt, null      ; 2 uses
  %spec.select.i.i.i.i104 = select i1 %.not.i.i.i.i103, ptr @_hb_NullPool, ptr %i.nt ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i104, i64 16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !110
  %i.nw = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i104, i64 24
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !111
  %i.ny = icmp ult i32 %i.nx, 8
  %spec.select.i.i1.i.i105 = select i1 %i.ny, ptr @_hb_NullPool, ptr %i.nv
  br i1 %.not.i.i.i.i103, label %.critedge.i175, label %bb.cd, !prof !112

bb.cd:                                            ; preds = %bb.cc
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !110
  %.not62.i106 = icmp eq ptr %i.oa, null
  br i1 %.not62.i106, label %.critedge.i175, label %bb.ce, !prof !112

.critedge.i175:                                   ; preds = %bb.cd, %bb.cc
  call void @hb_blob_destroy(ptr noundef %i.nt) #21
  br label %.sink.split

bb.ce:                                            ; preds = %bb.cd
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !111 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !167 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 24
  %i.og = load atomic i32, ptr %i.of monotonic, align 4 ; 2 uses
  %i.oh = icmp eq i32 %i.og, -1
  br i1 %i.oh, label %bb.cf, label %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i107, !prof !112

bb.cf:                                            ; preds = %bb.ce
  %i.oi = call noundef i32 @_ZNK9hb_face_t15load_num_glyphsEv(ptr noundef nonnull align 8 dereferenceable(448) %i.oe) #21
  br label %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i107

_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i107:     ; preds = %bb.cf, %bb.ce
  %.0.i.i.i = phi i32 [ %i.oi, %bb.cf ], [ %i.og, %bb.ce ] ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ok = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.oj)
  %.not28.i.i = icmp eq i32 %.0.i.i.i, 0
  br i1 %.not28.i.i, label %_ZL30_hb_subset_estimate_table_sizeP16hb_subset_plan_tjj.exit.i, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i107
  %i.ol = uitofp i32 %i.oc to double
  %i.om = uitofp i32 %i.ok to double
  %i.on = uitofp i32 %.0.i.i.i to double
  %i.oo = fdiv double %i.om, %i.on
  %sqrt.i.i = call double @llvm.sqrt.f64(double %i.oo)
  %i.op = fmul double %sqrt.i.i, %i.ol
  %i.oq = fptoui double %i.op to i32
  br label %_ZL30_hb_subset_estimate_table_sizeP16hb_subset_plan_tjj.exit.i

_ZL30_hb_subset_estimate_table_sizeP16hb_subset_plan_tjj.exit.i: ; preds = %switch.early.test.i.i, %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i107
  %.pn.i.i = phi i32 [ %i.oq, %switch.early.test.i.i ], [ %i.oc, %_ZNK9hb_face_t14get_num_glyphsEv.exit.i.i107 ]
  %.026.i.i108 = add i32 %.pn.i.i, 8192           ; 2 uses
  %i.or = load i32, ptr %1, align 8, !tbaa !169   ; 5 uses
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread85.i171, label %bb.cg, !prof !112

bb.cg:                                            ; preds = %_ZL30_hb_subset_estimate_table_sizeP16hb_subset_plan_tjj.exit.i
  %.not.i64.i109 = icmp ugt i32 %.026.i.i108, %i.or
  br i1 %.not.i64.i109, label %.preheader.i.i160, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i110, !prof !112

.preheader.i.i160:                                ; preds = %bb.cg, %.preheader.i.i160
  %.053.i.i161 = phi i32 [ %i.ov, %.preheader.i.i160 ], [ %i.or, %bb.cg ] ; 2 uses
  %i.ot = lshr i32 %.053.i.i161, 1
  %i.ou = add i32 %.053.i.i161, 8
  %i.ov = add i32 %i.ou, %i.ot                    ; 7 uses
  %i.ow = icmp ugt i32 %.026.i.i108, %i.ov
  br i1 %i.ow, label %.preheader.i.i160, label %.thread39.i.i162, !llvm.loop !0

.thread39.i.i162:                                 ; preds = %.preheader.i.i160
  %.not8.i.i.i.i163 = icmp eq i32 %i.or, 0
  %i.ox = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !171 ; 2 uses
  br i1 %.not8.i.i.i.i163, label %bb.ch, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i164

bb.ch:                                            ; preds = %.thread39.i.i162
  %.not9.i.i.i.i172 = icmp eq ptr %i.oy, null
  br i1 %.not9.i.i.i.i172, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i164, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.oz = zext i32 %i.ov to i64
  %i.pa = call ptr @hb_malloc(i64 noundef %i.oz) #21 ; 4 uses
  %.not10.i.i.i.i173 = icmp eq ptr %i.pa, null
  br i1 %.not10.i.i.i.i173, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i168, label %bb.cj, !prof !112

bb.cj:                                            ; preds = %bb.ci
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !172 ; 2 uses
  %.not.i.i.i.i.i174 = icmp eq i32 %i.pc, 0
  br i1 %.not.i.i.i.i.i174, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread87.i166, label %bb.ck, !prof !112

bb.ck:                                            ; preds = %bb.cj
  %i.pd = zext i32 %i.pc to i64
  %i.pe = load ptr, ptr %i.ox, align 8, !tbaa !171
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pa, ptr readonly align 1 %i.pe, i64 %i.pd, i1 false), !alias.scope !962
  br label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread87.i166

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i164: ; preds = %bb.ch, %.thread39.i.i162
  %i.pf = phi ptr [ null, %bb.ch ], [ %i.oy, %.thread39.i.i162 ]
  %i.pg = zext i32 %i.ov to i64
  %i.ph = call ptr @hb_realloc(ptr noundef %i.pf, i64 noundef %i.pg) #21 ; 2 uses
  %.not22.i.i165 = icmp eq ptr %i.ph, null
  br i1 %.not22.i.i165, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i168, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread87.i166, !prof !173

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread63.i.i168: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i164, %bb.ci
  %i.pi = load i32, ptr %1, align 8, !tbaa !169   ; 3 uses
  %.not23.i.i169 = icmp ugt i32 %i.ov, %i.pi
  br i1 %.not23.i.i169, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.i170, label %_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread.i110, !prof !174

_ZN11hb_vector_tIcLb0EE5allocEjb.exit.thread87.i166: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i164, %bb.ck, %bb.cj
  %.1.i.i52.i.i167 = phi ptr [ %i.ph, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i.i164 ], [ %i.pa, %bb.cj ], [ %i.pa, %bb.ck ]
  store ptr %.1.i.i52.i.i167, ptr %i.ox, align 8, !tbaa !171
  store i32 %i.ov, ptr %1, align 8, !tbaa !169
end_hunk_0
begin_hunk_1_@_ZN5graph9serializeERKNS_7graph_tE:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %i.e = getelementptr inbounds nuw [216 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw [216 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = getelementptr inbounds nuw [216 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.j = getelementptr inbounds nuw [216 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 648
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 440
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 656
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !494
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !494
  %i.r = insertelement <2 x ptr> poison, ptr %i.p, i64 0
  %i.s = insertelement <2 x ptr> %i.r, ptr %i.q, i64 1
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !494
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !494
  %i.v = insertelement <2 x ptr> poison, ptr %i.t, i64 0
  %i.w = insertelement <2 x ptr> %i.v, ptr %i.u, i64 1
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !315
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !315
  %i.z = insertelement <2 x ptr> poison, ptr %i.x, i64 0
  %i.aa = insertelement <2 x ptr> %i.z, ptr %i.y, i64 1
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !315
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !315
  %i.ad = insertelement <2 x ptr> poison, ptr %i.ab, i64 0
  %i.ae = insertelement <2 x ptr> %i.ad, ptr %i.ac, i64 1
  %i.af = ptrtoint <2 x ptr> %i.s to <2 x i64>
  %i.ag = ptrtoint <2 x ptr> %i.w to <2 x i64>
  %i.ah = ptrtoint <2 x ptr> %i.aa to <2 x i64>
  %i.ai = ptrtoint <2 x ptr> %i.ae to <2 x i64>
  %i.aj = add <2 x i64> %vec.phi, %i.af
  %i.ak = add <2 x i64> %vec.phi185, %i.ag
  %i.al = sub <2 x i64> %i.aj, %i.ah              ; 2 uses
  %i.am = sub <2 x i64> %i.ak, %i.ai              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1865

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.am, %i.al
  %i.ao = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZNK5graph7graph_t19total_size_in_bytesEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.011.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.011.i = phi i64 [ %i.aw, %scalar.ph ], [ %.011.i.ph, %scalar.ph.preheader ]
  %i.ap = getelementptr inbounds nuw [216 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !494
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !315
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = add i64 %.011.i, %i.at
  %i.aw = sub i64 %i.av, %i.au                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t19total_size_in_bytesEv.exit, label %scalar.ph, !llvm.loop !1866

_ZNK5graph7graph_t19total_size_in_bytesEv.exit:   ; preds = %scalar.ph, %middle.block
  %.lcssa184 = phi i64 [ %i.ao, %middle.block ], [ %i.aw, %scalar.ph ] ; 3 uses
  %.not = icmp eq i64 %.lcssa184, 0
  br i1 %.not, label %_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread, label %bb.b

_ZNK5graph7graph_t19total_size_in_bytesEv.exit.thread: ; preds = %bb.a, %_ZNK5graph7graph_t19total_size_in_bytesEv.exit
  %i.ax = tail call ptr @hb_blob_get_empty() #21
  br label %_ZN11hb_vector_tIcLb0EED2Ev.exit

bb.b:                                             ; preds = %_ZNK5graph7graph_t19total_size_in_bytesEv.exit
  %i.ay = trunc i64 %.lcssa184 to i32             ; 2 uses
  %.not.i42.not = icmp eq i32 %i.ay, 0
  br i1 %.not.i42.not, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i, label %.preheader.i, !prof !219

.preheader.i:                                     ; preds = %bb.b, %.preheader.i
  %.053.i = phi i32 [ %i.bb, %.preheader.i ], [ 0, %bb.b ] ; 2 uses
  %i.az = lshr i32 %.053.i, 1
  %i.ba = add i32 %.053.i, 8
  %i.bb = add i32 %i.ba, %i.az                    ; 4 uses
  %i.bc = icmp ult i32 %i.bb, %i.ay
  br i1 %i.bc, label %.preheader.i, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, !llvm.loop !0

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i: ; preds = %.preheader.i
  %i.bd = zext i32 %i.bb to i64
  %i.be = tail call ptr @hb_realloc(ptr noundef null, i64 noundef %i.bd) #21 ; 2 uses
  %.not22.i = icmp eq ptr %i.be, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIcLb0EED2Ev.exit, label %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i, !prof !173

_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i: ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i, %bb.b
  %.sroa.0.1.ph = phi i32 [ 0, %bb.b ], [ %i.bb, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i ]
  %.sroa.9.2.ph = phi ptr [ null, %bb.b ], [ %i.be, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  store ptr %.sroa.9.2.ph, ptr %1, align 8, !tbaa !186
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.9.2.ph, i64 %.lcssa184 ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !187
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.bj monotonic, align 8
  store atomic i8 1, ptr %i.bk monotonic, align 4
  store atomic ptr null, ptr %i.bl monotonic, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  store i8 1, ptr %i.bm, align 8, !tbaa !188
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 114 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  store ptr null, ptr %i.bo, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bn, i8 0, i64 18, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 7 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !190
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  store ptr %.sroa.9.2.ph, ptr %i.bq, align 8, !tbaa !191
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.bg, ptr %i.br, align 8, !tbaa !192
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr null, ptr %i.bs, align 8, !tbaa !193
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !195 ; 3 uses
  %i.bw = load i32, ptr %i.bi, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i = icmp slt i32 %i.bv, %i.bw
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.bx = add i32 %i.bv, 1                        ; 2 uses
  %i.by = icmp slt i32 %i.bw, 0
  br i1 %i.by, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, label %bb.d, !prof !112

bb.d:                                             ; preds = %bb.c
  %.not.i56 = icmp ugt i32 %i.bx, %i.bw
  br i1 %.not.i56, label %.preheader.i58, label %..critedge_crit_edge.i.i.i, !prof !112

.preheader.i58:                                   ; preds = %bb.d, %.preheader.i58
  %.043.i = phi i32 [ %i.cb, %.preheader.i58 ], [ %i.bw, %bb.d ] ; 2 uses
  %i.bz = lshr i32 %.043.i, 1
  %i.ca = add i32 %.043.i, 8
  %i.cb = add i32 %i.ca, %i.bz                    ; 7 uses
  %i.cc = icmp ugt i32 %i.bx, %i.cb
  br i1 %i.cc, label %.preheader.i58, label %.thread.i, !llvm.loop !1

.thread.i:                                        ; preds = %.preheader.i58
  %i.cd = icmp ugt i32 %i.cb, 536870911
  br i1 %i.cd, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %bb.e, !prof !112

bb.e:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.bw, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i, label %bb.f, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.f:                                             ; preds = %bb.e
  %.not9.i.i.i65 = icmp eq ptr %i.cf, null
  br i1 %.not9.i.i.i65, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cg = shl nuw i32 %i.cb, 3
  %i.ch = zext i32 %i.cg to i64
  %i.ci = call ptr @hb_malloc(i64 noundef %i.ch) #21 ; 4 uses
  %.not10.i.i.i66 = icmp eq ptr %i.ci, null
  br i1 %.not10.i.i.i66, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.h, !prof !112

bb.h:                                             ; preds = %bb.g
  %i.cj = load i32, ptr %i.bu, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i67 = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i.i67, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, label %bb.i, !prof !112

bb.i:                                             ; preds = %bb.h
  %i.ck = zext i32 %i.cj to i64
  %i.cl = shl nuw nsw i64 %i.ck, 3
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr readonly align 1 %i.cm, i64 %i.cl, i1 false), !alias.scope !1880
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.f, %bb.e
  %i.cn = phi ptr [ null, %bb.f ], [ %i.cf, %bb.e ]
  %i.co = shl nuw i32 %i.cb, 3
  %i.cp = zext i32 %i.co to i64
  %i.cq = call ptr @hb_realloc(ptr noundef %i.cn, i64 noundef %i.cp) #21 ; 2 uses
  %.not22.i60 = icmp eq ptr %i.cq, null
  br i1 %.not22.i60, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.g
  %i.cr = load i32, ptr %i.bi, align 8, !tbaa !196 ; 2 uses
  %.not23.i64 = icmp ugt i32 %i.cb, %i.cr
  br i1 %.not23.i64, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104, label %..critedge_crit_edge.i.i.i, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i62.ph.in = phi i32 [ %i.bw, %.thread.i ], [ %i.cr, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i62.ph = xor i32 %.sink.i62.ph.in, -1
  store i32 %.sink.i62.ph, ptr %i.bi, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit: ; preds = %bb.h, %bb.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.cq, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.ci, %bb.i ], [ %i.ci, %bb.h ]
  store ptr %.1.i.i42.i, ptr %i.ce, align 8, !tbaa !197
  store i32 %i.cb, ptr %i.bi, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i

..critedge_crit_edge.i.i.i:                       ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %bb.d, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit
  %.pre.i.i.i = load i32, ptr %i.bu, align 4, !tbaa !195
  br label %.critedge.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101: ; preds = %bb.c, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread104
  %i.cs = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cs, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i
  %i.ct = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.bv, %_ZN11hb_vector_tIcLb0EE14realloc_vectorIcTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPcj11hb_priorityILj0EE.exit.thread.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !197
  %i.cw = add i32 %i.ct, 1
  store i32 %i.cw, ptr %i.bu, align 4, !tbaa !195
  %i.cx = zext i32 %i.ct to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cx
  store ptr null, ptr %i.cy, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

_ZN22hb_serialize_context_tC2EPvm.exit:           ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread101, %.critedge.i.i.i
  store atomic i32 1, ptr %i.bj monotonic, align 8
  store atomic i8 1, ptr %i.bk monotonic, align 4
  store atomic ptr null, ptr %i.bl monotonic, align 8
  store i8 1, ptr %i.bm, align 8, !tbaa !188
  store ptr null, ptr %i.bo, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.bn, i8 0, i64 18, i1 false)
  %i.cz = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !1881 ; 6 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit, label %bb.j, !prof !112

bb.j:                                             ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit
  %.not.i69.not = icmp eq i32 %i.db, 0
  br i1 %.not.i69.not, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread, label %.preheader.i71, !prof !219

.preheader.i71:                                   ; preds = %bb.j, %.preheader.i71
  %.043.i72 = phi i32 [ %i.df, %.preheader.i71 ], [ 0, %bb.j ] ; 2 uses
  %i.dd = lshr i32 %.043.i72, 1
  %i.de = add nuw i32 %.043.i72, 8
  %i.df = add nuw i32 %i.de, %i.dd                ; 6 uses
  %i.dg = icmp ugt i32 %i.db, %i.df
  br i1 %i.dg, label %.preheader.i71, label %.thread.i73, !llvm.loop !18

.thread.i73:                                      ; preds = %.preheader.i71
  %i.dh = icmp ugt i32 %i.df, 1073741823
  br i1 %i.dh, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, !prof !112

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %.thread.i73
  %i.di = shl nuw i32 %i.df, 2
  %i.dj = zext i32 %i.di to i64
  %i.dk = call ptr @hb_realloc(ptr noundef null, i64 noundef %i.dj) #21 ; 2 uses
  %.not22.i76 = icmp eq ptr %i.dk, null
  br i1 %.not22.i76, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, !prof !198

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %2, align 8, !tbaa !344   ; 2 uses
  %.not23.i81 = icmp ugt i32 %i.df, %.pre
  br i1 %.not23.i81, label %bb.k, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

bb.k:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i
  %i.dl = xor i32 %.pre, -1
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109:  ; preds = %bb.k, %.thread.i73
  %.sink.i79.ph = phi i32 [ -1, %.thread.i73 ], [ %i.dl, %bb.k ]
  store i32 %.sink.i79.ph, ptr %2, align 8, !tbaa !344
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !346
  store i32 %i.df, ptr %2, align 8, !tbaa !344
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread:     ; preds = %bb.j, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !345 ; 3 uses
  %i.dp = icmp ugt i32 %i.db, %i.do
  br i1 %i.dp, label %bb.l, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

bb.l:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  %i.dq = sub nuw nsw i32 %i.db, %i.do
  %i.dr = shl i32 %i.dq, 2                        ; 2 uses
  %.not.i.i.i.i43 = icmp eq i32 %i.dr, 0
  br i1 %.not.i.i.i.i43, label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i, label %bb.m, !prof !112

bb.m:                                             ; preds = %bb.l
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !346
  %i.du = zext nneg i32 %i.do to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = zext i32 %i.dr to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.dv, i8 0, i64 %i.dw, i1 false)
  br label %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i

_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i: ; preds = %bb.m, %bb.l, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread
  store i32 %i.db, ptr %i.dn, align 4, !tbaa !345
  br label %_ZN11hb_vector_tIjLb0EE6resizeEi.exit

_ZN11hb_vector_tIjLb0EE6resizeEi.exit:            ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread109, %_ZN22hb_serialize_context_tC2EPvm.exit, %_ZN11hb_vector_tIjLb0EE11grow_vectorIjTnPN12hb_enable_ifIXsr3std26is_trivially_constructibleIT_EE5valueEvE4typeELPv0EEEvj11hb_priorityILj0EE.exit.i.i
  %i.dx = load i32, ptr %i.da, align 4, !tbaa !1881
  %.035138 = add i32 %i.dx, -1                    ; 2 uses
  %i.dy = icmp slt i32 %.035138, 0
  br i1 %i.dy, label %.critedge, label %.lr.ph140

.lr.ph140:                                        ; preds = %_ZN11hb_vector_tIjLb0EE6resizeEi.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.eb = load i32, ptr @_hb_NullPool, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph140, %bb.v
  %.035139 = phi i32 [ %.035138, %.lr.ph140 ], [ %.035, %bb.v ] ; 4 uses
  %i.ed = load i32, ptr %i.da, align 4, !tbaa !345
  %.not.i44 = icmp ult i32 %.035139, %i.ed
  %i.ee = load ptr, ptr %i.dz, align 8
  %i.ef = zext nneg i32 %.035139 to i64
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef
  %.0.i = select i1 %.not.i44, ptr %i.eg, ptr @_hb_NullPool, !prof !219
  %i.eh = load i32, ptr %.0.i, align 4, !tbaa !218 ; 3 uses
  %i.ei = call noundef nonnull ptr @_ZN22hb_serialize_context_t4pushIvEEPT_v(ptr noundef nonnull align 8 dereferenceable(144) %1) ; 0 uses
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !567
  %.not.i45 = icmp ult i32 %i.eh, %i.ej
  %i.ek = load ptr, ptr %i.c, align 8
  %i.el = zext i32 %i.eh to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw [216 x i8], ptr %i.ek, i64 %i.el
  %.0.i46 = select i1 %.not.i45, ptr %i.em, ptr @_hb_NullPool, !prof !219 ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i46, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !593 ; 2 uses
  %i.ep = load ptr, ptr %.0.i46, align 8, !tbaa !594 ; 2 uses
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 7 uses
  %i.et = load i32, ptr %i.bp, align 4, !tbaa !190
  %.not.i47 = icmp eq i32 %i.et, 0
  br i1 %.not.i47, label %bb.o, label %.thread122, !prof !219

bb.o:                                             ; preds = %bb.n
  %i.eu = icmp ugt i64 %i.es, 2147483647
  br i1 %i.eu, label %.critedge.i, label %bb.p, !prof !112

bb.p:                                             ; preds = %bb.o
  %i.ev = load ptr, ptr %i.br, align 8, !tbaa !192
  %i.ew = load ptr, ptr %i.bq, align 8, !tbaa !191 ; 5 uses
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp slt i64 %i.ez, %i.es
  br i1 %i.fa, label %.critedge.i, label %bb.q, !prof !112

.critedge.i:                                      ; preds = %bb.p, %bb.o
  store i32 4, ptr %i.bp, align 4, !tbaa !190
  br label %.thread122

bb.q:                                             ; preds = %bb.p
  %.not.i.i.not = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i.i.not, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, label %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit, !prof !252

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit: ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 1 %i.ew, i8 0, i64 %i.es, i1 false)
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !191 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.es
  store ptr %i.fb, ptr %i.bq, align 8, !tbaa !191
  %.not40.not = icmp eq ptr %.pre.i, null
  br i1 %.not40.not, label %.thread122, label %bb.r

_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116: ; preds = %bb.q
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.es
  store ptr %i.fc, ptr %i.bq, align 8, !tbaa !191
  %.not40.not117 = icmp eq ptr %i.ew, null
  br i1 %.not40.not117, label %.thread122, label %_ZL9hb_memcpyPvPKvm.exit

bb.r:                                             ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit
  %i.fd = load ptr, ptr %.0.i46, align 8, !tbaa !594
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.pre.i, ptr readonly align 1 %i.fd, i64 %i.es, i1 false), !alias.scope !1882
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116, %bb.r
  %i.fe = phi ptr [ %.pre.i, %bb.r ], [ %i.ew, %_ZN22hb_serialize_context_t13allocate_sizeIcEEPT_mb.exit.thread116 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i46, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !273 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.i46, i64 20
end_hunk_1
begin_hunk_2_@_ZN5graph14PairPosFormat215split_subtablesERNS_24gsubgpos_graph_context_tEj:bb.a
  %i.js = shl nuw nsw i64 %.sroa.2.8.insert.ext.i.i.i63, 2 ; 2 uses
  %i.jt = and i64 %i.js, 4294967292               ; 2 uses
  %.not.i.i.i64 = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i.i64, label %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66, label %bb.z, !prof !220

bb.z:                                             ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit124
  %i.ju = load ptr, ptr %i.et, align 8, !tbaa !346
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jr, ptr readonly align 1 %i.ju, i64 %i.jt, i1 false), !alias.scope !2045
  br label %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66

_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66:           ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit124, %bb.z
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.js
  %.not22.i68 = icmp eq i32 %.pre310, 0
  %i.jw = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  %or.cond291 = select i1 %.not22.i68, i1 true, i1 %i.jx
  br i1 %or.cond291, label %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89.thread, label %.lr.ph.split.i70

.lr.ph.splitthread-pre-split.i86:                 ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83
  %.pr.i87 = load ptr, ptr %i.dm, align 8, !tbaa !610
  br label %.lr.ph.split.i70

.lr.ph.split.i70:                                 ; preds = %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66, %.lr.ph.splitthread-pre-split.i86
  %i.jy = phi ptr [ %.pr.i87, %.lr.ph.splitthread-pre-split.i86 ], [ %i.jw, %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66 ] ; 4 uses
  %.01524.i71 = phi ptr [ %i.lh, %.lr.ph.splitthread-pre-split.i86 ], [ %i.jr, %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66 ] ; 2 uses
  %.01623.i72 = phi i32 [ %.1.i84, %.lr.ph.splitthread-pre-split.i86 ], [ 0, %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66 ] ; 5 uses
  %i.jz = load i32, ptr %.01524.i71, align 4, !tbaa !218
  %i.ka = add i32 %i.hn, %i.jz
  %.idx.i73 = shl i32 %i.ka, 1
  %i.kb = add i32 %.idx.i73, 16                   ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i74, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.i70
  %i.kc = mul i32 %i.kb, 506952113
  %i.kd = and i32 %i.kc, 1073741822
  %i.ke = load i32, ptr %i.eo, align 8, !tbaa !628
  %i.kf = urem i32 %i.kd, %i.ke                   ; 2 uses
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.jy, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.kj = load i32, ptr %i.ki, align 4            ; 2 uses
  %i.kk = and i32 %i.kj, 2
  %.not15.i.i.i.i75 = icmp eq i32 %i.kk, 0
  br i1 %.not15.i.i.i.i75, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83, label %.lr.ph.i.i.i.i76

.lr.ph.i.i.i.i76:                                 ; preds = %bb.aa
  %i.kl = load i32, ptr %i.ep, align 4
  %i.km = load i32, ptr %i.kh, align 4, !tbaa !218
  %i.kn = icmp eq i32 %i.km, %i.kb
  br i1 %i.kn, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i81, label %.lr.ph.i.i.i77

bb.ab:                                            ; preds = %.lr.ph.i.i.i77
  %i.ko = load i32, ptr %i.ku, align 4, !tbaa !218
  %i.kp = icmp eq i32 %i.ko, %i.kb
  br i1 %i.kp, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i81, label %.lr.ph.i.i.i77, !llvm.loop !51

.lr.ph.i.i.i77:                                   ; preds = %.lr.ph.i.i.i.i76, %bb.ab
  %.01016.i20.i.i.i78 = phi i32 [ %i.ks, %bb.ab ], [ %i.kf, %.lr.ph.i.i.i.i76 ]
  %.017.i19.i.i.i79 = phi i32 [ %i.kq, %bb.ab ], [ 0, %.lr.ph.i.i.i.i76 ]
  %i.kq = add i32 %.017.i19.i.i.i79, 1            ; 2 uses
  %i.kr = add i32 %i.kq, %.01016.i20.i.i.i78
  %i.ks = and i32 %i.kr, %i.kl                    ; 2 uses
  %i.kt = zext i32 %i.ks to i64                   ; 2 uses
  %i.ku = getelementptr inbounds nuw [12 x i8], ptr %i.jy, i64 %i.kt ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = load i32, ptr %i.kv, align 4            ; 2 uses
  %i.kx = and i32 %i.kw, 2
  %.not.i.i.i.i80 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i.i.i80, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83, label %bb.ab, !llvm.loop !51

_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i81: ; preds = %bb.ab, %.lr.ph.i.i.i.i76
  %.lcssa17.i.i.i82 = phi i32 [ %i.kj, %.lr.ph.i.i.i.i76 ], [ %i.kw, %bb.ab ]
  %i.ky = phi i64 [ %i.kg, %.lr.ph.i.i.i.i76 ], [ %i.kt, %bb.ab ]
  %i.kz = trunc i32 %.lcssa17.i.i.i82 to i1
  br i1 %i.kz, label %bb.ac, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83

bb.ac:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i81
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.jy, i64 %i.ky
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.g, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.ld = load i32, ptr %i.lb, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 -1, ptr %i.a, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !402
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %12, ptr %4, align 8, !tbaa !507
  store ptr %i.lc, ptr %i.eu, align 8, !tbaa !597
  store ptr %i.b, ptr %i.ev, align 8, !tbaa !598
  store ptr %i.a, ptr %i.ew, align 8, !tbaa !599
  call void @_ZN5graph7graph_t21traverse_directed_bfsIZNS0_18find_subgraph_sizeEjR8hb_set_tjEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_EEvjOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.lc, i32 noundef %i.ld, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.le = load i64, ptr %i.b, align 8, !tbaa !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.lf = trunc i64 %i.le to i32
  %i.lg = add i32 %.01623.i72, %i.lf
  br label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83

_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83: ; preds = %.lr.ph.i.i.i77, %bb.ac, %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i81, %bb.aa, %.lr.ph.split.i70
  %.1.i84 = phi i32 [ %i.lg, %bb.ac ], [ %.01623.i72, %.lr.ph.split.i70 ], [ %.01623.i72, %bb.aa ], [ %.01623.i72, %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i81 ], [ %.01623.i72, %.lr.ph.i.i.i77 ] ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.01524.i71, i64 4 ; 2 uses
  %.not.i85 = icmp eq ptr %i.lh, %i.jv
  br i1 %.not.i85, label %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89, label %.lr.ph.splitthread-pre-split.i86, !llvm.loop !2029

_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89: ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i83
  %i.li = add i32 %.1.i84, %i.jm                  ; 2 uses
  %i.lj = add nsw i32 %i.jn, -1
  %spec.select.i.i.i90 = icmp ult i32 %i.lj, -2
  br i1 %spec.select.i.i.i90, label %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89.thread, label %_ZN11hb_vector_tIjLb0EED2Ev.exit91

_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89.thread: ; preds = %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66, %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89
  %i.lk = phi i32 [ %i.li, %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89 ], [ %i.jm, %_ZN11hb_vector_tIjLb0EEC2ERKS0_.exit66 ]
  call void @hb_free(ptr noundef nonnull %i.jr) #21
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit91

_ZN11hb_vector_tIjLb0EED2Ev.exit91:               ; preds = %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit.thread, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i111, %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89, %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89.thread
  %i.ll = phi i32 [ %i.lk, %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89.thread ], [ %i.li, %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit89 ], [ %i.jm, %_ZN5graph14PairPosFormat229size_of_value_record_childrenERNS_24gsubgpos_graph_context_tERK12hb_hashmap_tIjjLb0EE11hb_vector_tIjLb0EEjR8hb_set_t.exit.thread ], [ %i.jm, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i111 ] ; 2 uses
  %i.lm = add nuw nsw i32 %.0274, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.lm, %umax
  br i1 %exitcond.not, label %.loopexit, label %bb.u, !llvm.loop !2033

.loopexit:                                        ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit91, %bb.t
  %.1 = phi i32 [ %i.cz, %bb.t ], [ %i.ll, %_ZN11hb_vector_tIjLb0EED2Ev.exit91 ] ; 2 uses
  %i.ln = add i32 %.1, %.040282                   ; 2 uses
  %i.lo = call i32 @llvm.umax.i32(i32 %.sroa.speculated.i, i32 %i.hd)
  %.sroa.speculated221 = call i32 @llvm.umax.i32(i32 %i.lo, i32 %i.al)
  %i.lp = add i32 %.sroa.speculated.i, %i.al
  %i.lq = add i32 %i.lp, %i.ln
  %i.lr = add i32 %i.lq, %i.hd
  %i.ls = sub i32 %i.lr, %.sroa.speculated221
  %i.lt = icmp ugt i32 %i.ls, 65535
  br i1 %i.lt, label %bb.ad, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit

bb.ad:                                            ; preds = %.loopexit
  %.not.i94 = icmp slt i32 %.pre.i, %i.hc
  %.pre312 = add i32 %.pre.i, 1                   ; 4 uses
  br i1 %.not.i94, label %.critedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lu = icmp slt i32 %i.hc, 0
  br i1 %i.lu, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258, label %bb.af, !prof !112

bb.af:                                            ; preds = %bb.ae
  %.not.i125 = icmp ugt i32 %.pre312, %i.hc
  br i1 %.not.i125, label %.preheader.i, label %.critedge.i, !prof !112

.preheader.i:                                     ; preds = %bb.af, %.preheader.i
  %.043.i = phi i32 [ %i.lx, %.preheader.i ], [ %i.hc, %bb.af ] ; 2 uses
  %i.lv = lshr i32 %.043.i, 1
  %i.lw = add i32 %.043.i, 8
  %i.lx = add i32 %i.lw, %i.lv                    ; 9 uses
  %i.ly = icmp ugt i32 %.pre312, %i.lx
  br i1 %i.ly, label %.preheader.i, label %.thread.i127, !llvm.loop !18

.thread.i127:                                     ; preds = %.preheader.i
  %i.lz = icmp ugt i32 %i.lx, 1073741823
  br i1 %i.lz, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread261, label %bb.ag, !prof !112

bb.ag:                                            ; preds = %.thread.i127
  %.not49.i129 = icmp eq i32 %i.hc, 0
  br i1 %.not49.i129, label %bb.ah, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i.i139 = icmp eq ptr %i.hb, null
  br i1 %.not9.i.i.i139, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ma = shl nuw i32 %i.lx, 2
  %i.mb = zext i32 %i.ma to i64
  %i.mc = call ptr @hb_malloc(i64 noundef %i.mb) #21 ; 4 uses
  %.not10.i.i.i140 = icmp eq ptr %i.mc, null
  br i1 %.not10.i.i.i140, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137, label %bb.aj, !prof !112

bb.aj:                                            ; preds = %bb.ai
  %.not.i.i.i.i141 = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i.i141, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143, label %bb.ak, !prof !112

bb.ak:                                            ; preds = %bb.aj
  %i.md = zext i32 %.pre.i to i64
  %i.me = shl nuw nsw i64 %i.md, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mc, ptr nonnull readonly align 1 %i.hb, i64 %i.me, i1 false), !alias.scope !2046
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130: ; preds = %bb.ah, %bb.ag
  %i.mf = phi ptr [ null, %bb.ah ], [ %i.hb, %bb.ag ]
  %i.mg = shl nuw i32 %i.lx, 2
  %i.mh = zext i32 %i.mg to i64
  %i.mi = call ptr @hb_realloc(ptr noundef %i.mf, i64 noundef %i.mh) #21 ; 2 uses
  %.not22.i131 = icmp eq ptr %i.mi, null
  br i1 %.not22.i131, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137_crit_edge, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143, !prof !198

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137_crit_edge: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130
  %.pre311 = load i32, ptr %8, align 8, !tbaa !344
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137_crit_edge, %bb.ai
  %i.mj = phi i32 [ %.pre311, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137_crit_edge ], [ %i.ha, %bb.ai ] ; 4 uses
  %.not23.i138 = icmp ugt i32 %i.lx, %i.mj
  br i1 %.not23.i138, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread261, label %.critedge.i, !prof !199

_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread261: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137, %.thread.i127
  %.sink.i135.ph.in = phi i32 [ %i.hc, %.thread.i127 ], [ %i.mj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137 ]
  %.sink.i135.ph = xor i32 %.sink.i135.ph.in, -1  ; 3 uses
  store i32 %.sink.i135.ph, ptr %8, align 8, !tbaa !344
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258

_ZN11hb_vector_tIjLb0EE5allocEjb.exit143:         ; preds = %bb.aj, %bb.ak, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130
  %.1.i.i42.i133 = phi ptr [ %i.mi, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i130 ], [ %i.mc, %bb.ak ], [ %i.mc, %bb.aj ] ; 2 uses
  store ptr %.1.i.i42.i133, ptr %i.ey, align 8, !tbaa !346
  store i32 %i.lx, ptr %8, align 8, !tbaa !344
  br label %.critedge.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258: ; preds = %bb.ae, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread261
  %i.mk = phi i32 [ %i.ha, %bb.ae ], [ %.sink.i135.ph, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread261 ]
  %i.ml = phi i32 [ %i.hc, %bb.ae ], [ %.sink.i135.ph, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread261 ]
  store i32 %i.ez, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %bb.ad, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143, %bb.af, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137
  %i.mm = phi ptr [ %.1.i.i42.i133, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143 ], [ %i.gz, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137 ], [ %i.gz, %bb.af ], [ %i.gz, %bb.ad ] ; 3 uses
  %i.mn = phi i32 [ %i.lx, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143 ], [ %i.mj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137 ], [ %i.ha, %bb.af ], [ %i.ha, %bb.ad ]
  %i.mo = phi i32 [ %i.lx, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143 ], [ %i.mj, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i137 ], [ %i.hc, %bb.af ], [ %i.hc, %bb.ad ]
  store i32 %.pre312, ptr %i.ex, align 4, !tbaa !345
  %i.mp = zext i32 %.pre.i to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mm, i64 %i.mp
  store i32 %storemerge281, ptr %i.mq, align 4, !tbaa !218
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258, %.critedge.i
  %i.mr = phi ptr [ %i.gz, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258 ], [ %i.mm, %.critedge.i ] ; 2 uses
  %i.ms = phi i32 [ %i.mk, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258 ], [ %i.mn, %.critedge.i ] ; 2 uses
  %i.mt = phi ptr [ %i.hb, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258 ], [ %i.mm, %.critedge.i ] ; 2 uses
  %i.mu = phi i32 [ %i.ml, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258 ], [ %i.mo, %.critedge.i ] ; 2 uses
  %i.mv = phi i32 [ %.pre.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit143.thread258 ], [ %.pre312, %.critedge.i ] ; 2 uses
  %i.mw = add i32 %.1, 16                         ; 2 uses
  store i32 6, ptr %i.fa, align 8, !tbaa !686
  store i32 4, ptr %i.fb, align 4, !tbaa !687
  %i.mx = load i32, ptr %i.fc, align 4, !tbaa !261
  %.not.i.i.i.i95 = icmp eq i32 %i.mx, 0
  %i.my = load i32, ptr %i.fd, align 4
  %.not1.i.i.i.i = icmp eq i32 %i.my, 0
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i95, i1 %.not1.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i.i, label %bb.al

bb.al:                                            ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  store i32 0, ptr %i.fc, align 4, !tbaa !416
  store i32 0, ptr %i.fe, align 4, !tbaa !419
  store i32 0, ptr %i.fd, align 4, !tbaa !260
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i.i

_ZN12hb_bit_set_t5clearEv.exit.i.i.i:             ; preds = %bb.al, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %i.mz = load i8, ptr %i.em, align 8, !tbaa !508, !range !213, !noundef !230
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.am, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i, !prof !219

bb.am:                                            ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i.i
  store i8 0, ptr %i.ff, align 8, !tbaa !259
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i: ; preds = %bb.am, %_ZN12hb_bit_set_t5clearEv.exit.i.i.i
  %i.nb = load i32, ptr %i.fh, align 4, !tbaa !261
  %.not.i.i.i1.i = icmp eq i32 %i.nb, 0
  %i.nc = load i32, ptr %i.fi, align 4
  %.not1.i.i.i2.i = icmp eq i32 %i.nc, 0
  %or.cond.i.i.i3.i = select i1 %.not.i.i.i1.i, i1 %.not1.i.i.i2.i, i1 false
  br i1 %or.cond.i.i.i3.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i4.i, label %bb.an

bb.an:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i
  store i32 0, ptr %i.fh, align 4, !tbaa !416
  store i32 0, ptr %i.fj, align 4, !tbaa !419
  store i32 0, ptr %i.fi, align 4, !tbaa !260
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i4.i

_ZN12hb_bit_set_t5clearEv.exit.i.i4.i:            ; preds = %bb.an, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit.i
  %i.nd = load i8, ptr %i.fg, align 8, !tbaa !508, !range !213, !noundef !230
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.ao, label %_ZN5graph26class_def_size_estimator_t5resetEv.exit, !prof !219

bb.ao:                                            ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i4.i
  store i8 0, ptr %i.fk, align 8, !tbaa !259
  br label %_ZN5graph26class_def_size_estimator_t5resetEv.exit

_ZN5graph26class_def_size_estimator_t5resetEv.exit: ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i4.i, %bb.ao
  %i.nf = call noundef i32 @_ZN5graph26class_def_size_estimator_t18add_class_def_sizeEj(ptr noundef nonnull align 8 dereferenceable(248) %6, i32 noundef %storemerge281) ; 0 uses
  %i.ng = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.em) ; 0 uses
  %i.nh = call noundef i32 @_ZNK5graph26class_def_size_estimator_t16num_glyph_rangesEv(ptr noundef nonnull align 8 dereferenceable(248) %6) ; 0 uses
  %i.ni = load i32, ptr %i.fl, align 4, !tbaa !261
  %.not.i.i.i97 = icmp eq i32 %i.ni, 0
  %i.nj = load i32, ptr %i.eh, align 4
  %.not1.i.i.i = icmp eq i32 %i.nj, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i97, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN5graph26class_def_size_estimator_t5resetEv.exit
  store i32 0, ptr %i.fl, align 4, !tbaa !416
  store i32 0, ptr %i.fm, align 4, !tbaa !419
  store i32 0, ptr %i.eh, align 4, !tbaa !260
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i

_ZN12hb_bit_set_t5clearEv.exit.i.i:               ; preds = %bb.ap, %_ZN5graph26class_def_size_estimator_t5resetEv.exit
  %i.nk = load i8, ptr %i.eg, align 8, !tbaa !508, !range !213, !noundef !230
  %i.nl = trunc nuw i8 %i.nk to i1
  br i1 %i.nl, label %bb.aq, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit, !prof !219

bb.aq:                                            ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i
  store i8 0, ptr %i.fn, align 8, !tbaa !259
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit: ; preds = %bb.aq, %_ZN12hb_bit_set_t5clearEv.exit.i.i, %.loopexit
  %i.nm = phi ptr [ %i.gz, %.loopexit ], [ %i.mr, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.mr, %bb.aq ]
  %i.nn = phi i32 [ %i.ha, %.loopexit ], [ %i.ms, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.ms, %bb.aq ]
  %i.no = phi ptr [ %i.hb, %.loopexit ], [ %i.mt, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.mt, %bb.aq ]
  %i.np = phi i32 [ %i.hc, %.loopexit ], [ %i.mu, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.mu, %bb.aq ]
  %i.nq = phi i32 [ %.pre.i, %.loopexit ], [ %i.mv, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.mv, %bb.aq ]
  %.141 = phi i32 [ %i.ln, %.loopexit ], [ %i.mw, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.mw, %bb.aq ]
  %i.nr = add nuw nsw i32 %storemerge281, 1       ; 2 uses
  %exitcond308.not = icmp eq i32 %i.nr, %i.bo
  br i1 %exitcond308.not, label %._crit_edge, label %bb.t, !llvm.loop !2037
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph22actuate_subtable_splitINS_14PairPosFormat115split_context_tEEE11hb_vector_tIjLb0EERT_RKS4_(ptr dead_on_unwind noalias writable sret(%struct.hb_vector_t.22) align 8 %0, ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !345  ; 2 uses
  %.not35 = icmp eq i32 %i.b, 0
  br i1 %.not35, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load i32, ptr @_hb_NullPool, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.i = phi i32 [ %i.b, %.lr.ph ], [ %i.ao, %bb.k ]
  %i.j = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !218
  %i.m = add i32 %i.i, -1
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !218
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !668
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !668  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i16, ptr %i.t, align 1, !tbaa !211
  %i.v = tail call noundef i16 @llvm.bswap.i16(i16 %i.u)
  %i.w = zext i16 %i.v to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = phi ptr [ %.pre, %bb.c ], [ %i.s, %bb.d ]
  %i.y = phi i32 [ %i.r, %bb.c ], [ %i.w, %bb.d ]
  %i.z = load ptr, ptr %1, align 8, !tbaa !2048, !nonnull !230, !align !592
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !669
  %i.ab = tail call noundef i32 @_ZNK5graph14PairPosFormat111clone_rangeERNS_24gsubgpos_graph_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(12) %i.x, ptr noundef nonnull align 8 dereferenceable(168) %i.z, i32 noundef %i.aa, i32 noundef %i.l, i32 noundef %i.y) ; 2 uses
  %.not = icmp eq i32 %i.ab, -1
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %0, align 8, !tbaa !344   ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %bb.n, !prof !112

bb.g:                                             ; preds = %bb.f
  %i.ae = xor i32 %i.ac, -1
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  %i.af = load i32, ptr %i.f, align 4, !tbaa !345 ; 3 uses
  %i.ag = load i32, ptr %0, align 8, !tbaa !344
  %.not.i27 = icmp slt i32 %i.af, %i.ag
  br i1 %.not.i27, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add i32 %i.af, 1
  %i.ai = tail call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ah, i1 noundef zeroext false)
  br i1 %i.ai, label %..critedge_crit_edge.i, label %bb.j, !prof !219

..critedge_crit_edge.i:                           ; preds = %bb.i
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !345
  br label %.critedge.i

bb.j:                                             ; preds = %bb.i
  store i32 %i.g, ptr @_hb_CrapPool, align 16
end_hunk_2
begin_hunk_3_@_ZN5graph14PairPosFormat16shrinkERNS_24gsubgpos_graph_context_tEjj:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.p, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, !prof !219

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i: ; preds = %bb.p, %bb.o
  br i1 %.not236, label %bb.q, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit"

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread: ; preds = %.lr.ph
  br i1 %.not236244, label %.thread, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit"

bb.q:                                             ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ct = add nuw nsw i32 %.sroa.13.0286, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.thread:                                          ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.cu = load i16, ptr %i.ck, align 1, !tbaa !211
  %i.cv = tail call noundef i16 @llvm.bswap.i16(i16 %i.cu)
  %i.cw = zext i16 %i.cv to i32
  %.not.i.i.i.i.i25 = icmp samesign ult i32 %.sroa.13.0286, %i.cw
  br i1 %.not.i.i.i.i.i25, label %bb.r, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !219

bb.r:                                             ; preds = %.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.cx = zext nneg i32 %.sroa.13.0286 to i64
  %i.cy = getelementptr inbounds nuw [6 x i8], ptr %i.cm, i64 %i.cx
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.r, %.thread
  %.0.i.i.i.i.i = phi ptr [ %i.cy, %bb.r ], [ @_hb_Null_OT_RangeRecord, %.thread ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.da = load i16, ptr %i.cz, align 1, !tbaa !211
  %i.db = tail call noundef i16 @llvm.bswap.i16(i16 %i.da)
  %i.dc = zext i16 %i.db to i32
  %.not.i.i.i.i26 = icmp ult i32 %.sroa.27.0284, %i.dc
  br i1 %.not.i.i.i.i26, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.dd = add nuw nsw i32 %.sroa.13.0286, 1       ; 4 uses
  %i.de = load i16, ptr %i.ck, align 1, !tbaa !211
  %i.df = tail call noundef i16 @llvm.bswap.i16(i16 %i.de)
  %i.dg = zext i16 %i.df to i32                   ; 2 uses
  %i.dh = icmp samesign ult i32 %i.dd, %i.dg
  br i1 %i.dh, label %bb.t, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.di = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw [6 x i8], ptr %i.cm, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 1, !tbaa !211
  %i.dl = tail call noundef i16 @llvm.bswap.i16(i16 %i.dk)
  %i.dm = zext i16 %i.dl to i32
  %i.dn = getelementptr inbounds nuw [6 x i8], ptr %i.af, i64 %i.di
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i16, ptr %i.do, align 1, !tbaa !211
  %i.dq = tail call noundef i16 @llvm.bswap.i16(i16 %i.dp)
  %i.dr = zext i16 %i.dq to i32                   ; 3 uses
  %i.ds = add i32 %.sroa.22.0285, 1
  %.not1.i.i.i.i = icmp eq i32 %i.ds, %i.dr
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !219

bb.u:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.dt = add i32 %.sroa.22.0285, 1
  %i.du = add nuw nsw i32 %.sroa.27.0284, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.t
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit: ; preds = %bb.s, %bb.u, %bb.q, %bb.t, %.sink.split.i.i.i.i
  %.sroa.27.1 = phi i32 [ 0, %.sink.split.i.i.i.i ], [ %.sroa.27.0284, %bb.q ], [ %i.dm, %bb.t ], [ 0, %bb.s ], [ %i.du, %bb.u ] ; 2 uses
  %.sroa.22.2 = phi i32 [ %i.dr, %.sink.split.i.i.i.i ], [ %.sroa.22.0285, %bb.q ], [ %i.dr, %bb.t ], [ %.sroa.22.0285, %bb.s ], [ %i.dt, %bb.u ] ; 2 uses
  %.sroa.13.2 = phi i32 [ %i.dg, %.sink.split.i.i.i.i ], [ %i.ct, %bb.q ], [ %i.dd, %bb.t ], [ %i.dd, %bb.s ], [ %.sroa.13.0286, %bb.u ] ; 3 uses
  %i.dv = add nuw i32 %.sroa.33.sroa.0.0283, 1    ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  %i.dw = load i16, ptr %i.ck, align 1, !tbaa !211
  %i.dx = tail call noundef i16 @llvm.bswap.i16(i16 %i.dw)
  %i.dy = zext i16 %i.dx to i32
  %i.dz = icmp uge i32 %.sroa.13.2, %i.dy
  %.not.i.i.i18 = icmp eq i32 %i.dv, -1
  %or.cond112 = select i1 %i.dz, i1 true, i1 %.not.i.i.i18
  br i1 %or.cond112, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit", label %.lr.ph, !llvm.loop !2174

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  %.sroa.33.sroa.0.0.lcssa.ph = phi i32 [ %.sroa.33.sroa.0.0283, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %i.dv, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.33.sroa.0.0283, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.27.0.lcssa.ph = phi i32 [ %.sroa.27.0284, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.27.1, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.27.0284, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.22.0.lcssa.ph = phi i32 [ %.sroa.22.0285, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.22.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.22.0285, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.13.0.lcssa.ph = phi i32 [ %.sroa.13.0286, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.13.2, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit ], [ %.sroa.13.0286, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %i.ea = zext i32 %.sroa.33.sroa.0.0.lcssa.ph to i64
  %i.eb = or disjoint i64 %i.ea, -4294967296
  br label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split": ; preds = %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit", %bb.i
  %.sroa.532.0242 = phi ptr [ null, %bb.i ], [ %i.af, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ], [ %i.af, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ]
  %.sroa.33.sroa.0.0.lcssa.split = phi i64 [ -4294967296, %bb.i ], [ -4294967296, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %i.eb, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.27.0.lcssa.split = phi i32 [ 0, %bb.i ], [ %.sroa.11.2.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.27.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.22.0.lcssa.split = phi i32 [ 0, %bb.i ], [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.22.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %.sroa.13.0.lcssa.split = phi i32 [ 0, %bb.i ], [ %.sroa.7.0.ph, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit.thread ], [ %.sroa.13.0.lcssa.ph, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.loopexit" ]
  %i.ec = and i64 %i.bm, 4294967295               ; 2 uses
  %i.ed = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.ec) #21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  store ptr %i.ed, ptr %10, align 8, !tbaa !186
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec ; 2 uses
  store ptr %i.ef, ptr %i.ee, align 8, !tbaa !187
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %10, i64 100 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.ei monotonic, align 8
  store atomic i8 1, ptr %i.ej monotonic, align 4
  store atomic ptr null, ptr %i.ek monotonic, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 3 uses
  store i8 1, ptr %i.el, align 8, !tbaa !188
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 114 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  store ptr null, ptr %i.en, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.em, i8 0, i64 18, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 19 uses
  store i32 0, ptr %i.eo, align 4, !tbaa !190
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 21 uses
  store ptr %i.ed, ptr %i.ep, align 8, !tbaa !191
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  store ptr %i.ef, ptr %i.eq, align 8, !tbaa !192
  %i.er = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.er, align 8, !tbaa !193
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.es, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %10)
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 84 ; 5 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !195 ; 3 uses
  %i.ev = load i32, ptr %i.eh, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i.i = icmp slt i32 %i.eu, %i.ev
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"
  %i.ew = add i32 %i.eu, 1                        ; 2 uses
  %i.ex = icmp slt i32 %i.ev, 0
  br i1 %i.ex, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i, label %bb.w, !prof !112

bb.w:                                             ; preds = %bb.v
  %.not.i24.i = icmp ugt i32 %i.ew, %i.ev
  br i1 %.not.i24.i, label %.preheader.i.i, label %..critedge_crit_edge.i.i.i.i, !prof !112

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.fa, %.preheader.i.i ], [ %i.ev, %bb.w ] ; 2 uses
  %i.ey = lshr i32 %.043.i.i, 1
  %i.ez = add i32 %.043.i.i, 8
  %i.fa = add i32 %i.ez, %i.ey                    ; 7 uses
  %i.fb = icmp ugt i32 %i.ew, %i.fa
  br i1 %i.fb, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !1

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.fc = icmp ugt i32 %i.fa, 536870911
  br i1 %i.fc, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %bb.x, !prof !112

bb.x:                                             ; preds = %.thread.i.i
  %.not49.i.i = icmp eq i32 %i.ev, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i.i, label %bb.y, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i

bb.y:                                             ; preds = %bb.x
  %.not9.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ff = shl nuw i32 %i.fa, 3
  %i.fg = zext i32 %i.ff to i64
  %i.fh = call ptr @hb_malloc(i64 noundef %i.fg) #21 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %bb.aa, !prof !112

bb.aa:                                            ; preds = %bb.z
  %i.fi = load i32, ptr %i.et, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, label %bb.ab, !prof !112

bb.ab:                                            ; preds = %bb.aa
  %i.fj = zext i32 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 3
  %i.fl = load ptr, ptr %i.fd, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr readonly align 1 %i.fl, i64 %i.fk, i1 false), !alias.scope !2230
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i: ; preds = %bb.y, %bb.x
  %i.fm = phi ptr [ null, %bb.y ], [ %i.fe, %bb.x ]
  %i.fn = shl nuw i32 %i.fa, 3
  %i.fo = zext i32 %i.fn to i64
  %i.fp = call ptr @hb_realloc(ptr noundef %i.fm, i64 noundef %i.fo) #21 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fp, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.z
  %i.fq = load i32, ptr %i.eh, align 8, !tbaa !196 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.fa, %i.fq
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %..critedge_crit_edge.i.i.i.i, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.ev, %.thread.i.i ], [ %i.fq, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %i.eh, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.ab, %bb.aa
  %.1.i.i42.i.i = phi ptr [ %i.fp, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i ], [ %i.fh, %bb.ab ], [ %i.fh, %bb.aa ]
  store ptr %.1.i.i42.i.i, ptr %i.fd, align 8, !tbaa !197
  store i32 %i.fa, ptr %i.eh, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i.i

..critedge_crit_edge.i.i.i.i:                     ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %bb.w
  %.pre.i.i.i.i = load i32, ptr %i.et, align 4, !tbaa !195
  br label %.critedge.i.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, %bb.v
  %i.fr = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.fr, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split"
  %i.fs = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.eu, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSM_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISM_Efp_EEEOSM_OSS_.exit.split" ] ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !197
  %i.fv = add i32 %i.fs, 1
  store i32 %i.fv, ptr %i.et, align 4, !tbaa !195
  %i.fw = zext i32 %i.fs to i64
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fw
  store ptr null, ptr %i.fx, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

_ZN22hb_serialize_context_tC2EPvm.exit.i:         ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i
  store atomic i32 1, ptr %i.ei monotonic, align 8
  store atomic i8 1, ptr %i.ej monotonic, align 4
  store atomic ptr null, ptr %i.ek monotonic, align 8
  store i8 1, ptr %i.el, align 8, !tbaa !188
  store ptr null, ptr %i.en, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.em, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i32 %i.bp, ptr %9, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %.sroa.493.0..sroa_idx, align 4
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.sroa.532.0242, ptr %.sroa.594.0..sroa_idx, align 8
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i32 %.sroa.13.0.lcssa.split, ptr %.sroa.695.0..sroa_idx, align 8
  %.sroa.796.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 20 ; 2 uses
  store i32 %.sroa.22.0.lcssa.split, ptr %.sroa.796.0..sroa_idx, align 4
  %.sroa.897.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  store i32 %.sroa.27.0.lcssa.split, ptr %.sroa.897.0..sroa_idx, align 8
  %.sroa.998.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 0, ptr %.sroa.998.0..sroa_idx, align 4
  %.sroa.1099.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  store i64 %.sroa.33.sroa.0.0.lcssa.split, ptr %.sroa.1099.0..sroa_idx, align 8
  %.sroa.11100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  store i32 1, ptr %.sroa.11100.0..sroa_idx, align 8
  %.sroa.13102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr %i.a, ptr %.sroa.13102.0..sroa_idx, align 8
  %.sroa.14103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr @_ZL11hb_identity, ptr %.sroa.14103.0..sroa_idx, align 8
  %.sroa.15104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 64
  store ptr @_ZL8hb_first, ptr %.sroa.15104.0..sroa_idx, align 8
  %i.fy = load ptr, ptr %i.ep, align 8, !tbaa !191 ; 7 uses
  %i.fz = load i32, ptr %i.eo, align 4, !tbaa !190 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.fz, 0
  br i1 %.not11.i.i.i.i.i, label %bb.ac, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.thread.i", !prof !219

bb.ac:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 2 ; 5 uses
  %i.gb = ptrtoint ptr %i.fy to i64
  %i.gc = load ptr, ptr %i.eq, align 8, !tbaa !192
  %i.gd = ptrtoint ptr %i.gc to i64
  %i.ge = sub i64 %i.gd, %i.gb
  %i.gf = icmp slt i64 %i.ge, 2
  br i1 %i.gf, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i", label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, !prof !112

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i:               ; preds = %bb.ac
  store i16 0, ptr %i.fy, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ep, align 8, !tbaa !191 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 2
  store ptr %i.gg, ptr %i.ep, align 8, !tbaa !191
  %i.gh = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %i.gh, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEEEvP22hb_serialize_context_tT_.exit.i", label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  %i.gi = call fastcc noundef i32 @"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSC_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSM_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_"(ptr noundef nonnull align 8 dereferenceable(72) %9)
  %.sroa.048.0.copyload.i.i.i = load i32, ptr %9, align 8 ; 5 uses
  %.sroa.853.0.copyload.i.i.i = load ptr, ptr %.sroa.594.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1358.0.copyload.i.i.i = load i32, ptr %.sroa.695.0..sroa_idx, align 8
  %.sroa.24.0.copyload.i.i.i = load i32, ptr %.sroa.796.0..sroa_idx, align 4
  %.sroa.28.0.copyload.i.i.i = load i32, ptr %.sroa.897.0..sroa_idx, align 8
  %.sroa.3470.0.copyload.i.i.i = load i32, ptr %.sroa.1099.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %.sroa.39.0.copyload.i.i.i = load i32, ptr %.sroa.39.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.40.0.copyload.i.i.i = load i32, ptr %.sroa.11100.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4173.0.copyload.i.i.i = load ptr, ptr %.sroa.13102.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21, !noalias !2231
  call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %8, ptr noundef nonnull align 8 dereferenceable(72) %9), !noalias !2231
  %i.gj = load i32, ptr %.sroa.39.0..sroa_idx.i.i.i, align 4, !tbaa !693, !noalias !2234 ; 4 uses
  %i.gk = load i32, ptr %.sroa.11100.0..sroa_idx, align 8, !tbaa !524, !noalias !2234
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.gj to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gl, align 8, !alias.scope !2235, !noalias !2231
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 %i.gk, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2235, !noalias !2231
  %.sroa.0.0.copyload3.i.i.i.i.i.i = load i32, ptr %8, align 8, !noalias !2236
  %.sroa.0.0.copyload3.fr.i.i.i.i.i.i = freeze i32 %.sroa.0.0.copyload3.i.i.i.i.i.i ; 2 uses
  %.sroa.11.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.11.0.copyload13.i.i.i.i.i.i = load i32, ptr %.sroa.11.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !2236 ; 2 uses
  %.sroa.23.0..sroa_idx21.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.23.0.copyload22.i.i.i.i.i.i = load i32, ptr %.sroa.23.0..sroa_idx21.i.i.i.i.i.i, align 8, !noalias !2236
  switch i32 %.sroa.0.0.copyload3.fr.i.i.i.i.i.i, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" [
    i32 1, label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i
    i32 2, label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i
  ]

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2236, !srcloc !212
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i"

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2236, !srcloc !212
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21, !noalias !2231
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.048.0.copyload.i.i.i, %.sroa.0.0.copyload3.fr.i.i.i.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.853.0.copyload.i.i.i, i64 2 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.853.0.copyload.i.i.i, i64 4 ; 3 uses
  %i.go = icmp eq i32 %.sroa.048.0.copyload.i.i.i, 1
  %.sroa.048.0.copyload.i.off.i.i = add i32 %.sroa.048.0.copyload.i.i.i, -1
  %switch.i.i = icmp ult i32 %.sroa.048.0.copyload.i.off.i.i, 2
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i.us.us.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.thread101.i.us.us.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.thread.i.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i"
  %.sroa.3470.0.i.i.i.ph = phi i32 [ %i.is, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.3470.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.sroa.28.0.i.i.i.ph = phi i32 [ %.sroa.28.2.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.28.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ] ; 3 uses
  %.sroa.24.0.i.i.i.ph = phi i32 [ %.sroa.24.3.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.24.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.sroa.1358.0.i.i.i.ph = phi i32 [ %.sroa.1358.3.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ %.sroa.1358.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.024.i.i.i.ph = phi i32 [ %.125.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.023.i.i.i.ph = phi i32 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ -2, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.021.i.i.i.ph = phi i32 [ %.122.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %.0.i.i.i.ph = phi i1 [ %.1.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit324" ], [ false, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjE3endEv.exit.i.i.i" ]
  %i.gp = icmp ne i32 %.sroa.28.0.i.i.i.ph, %.sroa.23.0.copyload22.i.i.i.i.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit"
  %.sroa.3470.0.i.i.i.ph326 = phi i32 [ %.sroa.3470.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %i.hi, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.sroa.1358.0.i.i.i.ph327 = phi i32 [ %.sroa.1358.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %i.hh, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ] ; 6 uses
  %.024.i.i.i.ph328 = phi i32 [ %.024.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.125.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.023.i.i.i.ph329 = phi i32 [ %.023.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.021.i.i.i.ph330 = phi i32 [ %.021.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.122.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.0.i.i.i.ph331 = phi i1 [ %.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer" ], [ %.1.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.1358.0.i.i.i.ph327, %.sroa.11.0.copyload13.i.i.i.i.i.i
  %i.gq = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.gp
  %.not.i.i.i.i.i.i = icmp ne i32 %.sroa.1358.0.i.i.i.ph327, %.sroa.11.0.copyload13.i.i.i.i.i.i
  %i.gr = zext nneg i32 %.sroa.1358.0.i.i.i.ph327 to i64
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.gn, i64 %i.gr
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325", %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i
  %.sroa.3470.0.i.i.i = phi i32 [ %i.ix, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.sroa.3470.0.i.i.i.ph326, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 6 uses
  %.024.i.i.i = phi i32 [ %.125.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.024.i.i.i.ph328, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 2 uses
  %.023.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.023.i.i.i.ph329, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 3 uses
  %.021.i.i.i = phi i32 [ %.122.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.021.i.i.i.ph330, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 2 uses
  %.0.i.i.i = phi i1 [ %.1.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.0.i.i.i.ph331, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i.outer325" ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.i.i.i", !prof !219

bb.ad:                                            ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i"
  switch i32 %.sroa.048.0.copyload.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i
    i32 2, label %.split.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i:                               ; preds = %bb.ad
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.gt = icmp ne i32 %.sroa.3470.0.i.i.i, %i.gj
  %or.cond109.i.i.i = select i1 %i.gq, i1 %i.gt, i1 false
  br i1 %or.cond109.i.i.i, label %.thread214.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.ad
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %.old.i.i.i = icmp ne i32 %.sroa.3470.0.i.i.i, %i.gj
  %or.cond110.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.old.i.i.i, i1 false
  br i1 %or.cond110.i.i.i, label %.thread.i.i.i24, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.thread.i.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSA_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSK_0EEneERKSQ_.exit.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph14PairPosFormat16shrinkERNSB_24gsubgpos_graph_context_tEjjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSL_0EEjEppEv.exit.i.i.i"
  %.old.old.not.i.i.i = icmp eq i32 %.sroa.3470.0.i.i.i, %i.gj
end_hunk_3
begin_hunk_4_@_ZNK5graph26class_def_size_estimator_t16num_glyph_rangesEv:bb.a
  %i.ba = lshr i32 %i.am, 6
  %i.bb = and i32 %i.ba, 7                        ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = or disjoint i32 %i.bb, 8
  %i.be = sub nuw nsw i32 %i.bd, %i.as
  %wide.trip.count.i.i = zext nneg i32 %i.be to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bc, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 2 uses
  %.027.i.i = phi ptr [ %i.a, %.lr.ph.preheader.i.i ], [ %i.bg, %bb.n ]
  %i.bf = load i64, ptr %.027.i.i, align 8, !tbaa !266 ; 2 uses
  %.not20.not.i.not.i = icmp eq i64 %i.bf, 0
  br i1 %.not20.not.i.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.next.i.i
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZNK13hb_bit_page_t4nextEPj.exit.i, label %.lr.ph.i.i, !llvm.loop !37

_ZNK13hb_bit_page_t4nextEPj.exit.i:               ; preds = %bb.n
  store i32 -1, ptr %i.b, align 4, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bh = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bi = shl nuw nsw i32 %i.bh, 6
  %i.bj = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bf, i1 true)
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  store i32 %i.bl, ptr %i.b, align 4, !tbaa !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bm = load i32, ptr %i.al, align 4, !tbaa !412
  %i.bn = shl i32 %i.bm, 9
  %i.bo = add i32 %i.bn, %i.bl                    ; 2 uses
  store i32 %i.bo, ptr %i.b, align 4, !tbaa !218
  br label %_ZNK12hb_bit_set_t4nextEPj.exit.thread

bb.p:                                             ; preds = %_ZNK13hb_bit_page_t4nextEPj.exit.i, %_ZNK13hb_bit_page_t4nextEPj.exit.thread.i
  %i.bp = add i32 %.078.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %i.bq = phi ptr [ %i.ak, %bb.p ], [ %i.aj, %bb.l ]
  %.1.i = phi i32 [ %i.bp, %bb.p ], [ %storemerge.i.i.ph.sink.i.i.i, %bb.l ] ; 2 uses
  %i.br = icmp ult i32 %.1.i, %i.t
  br i1 %i.br, label %.lr.ph.preheader.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit

.lr.ph.preheader.i:                               ; preds = %bb.q
  %i.bs = zext i32 %.1.i to i64
  %wide.trip.count.i = zext i32 %i.t to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge31.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bs, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.critedge31.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !414
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [72 x i8], ptr %i.bq, i64 %i.bw ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !266 ; 2 uses
  %.not.i32.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i32.i, label %bb.r, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

bb.r:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !266 ; 2 uses
  %.not.1.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.1.i.i, label %bb.s, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !266 ; 2 uses
  %.not.2.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.2.i.i, label %bb.t, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !266 ; 2 uses
  %.not.3.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.3.i.i, label %bb.u, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !266 ; 2 uses
  %.not.4.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.4.i.i, label %bb.v, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !266 ; 2 uses
  %.not.5.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.5.i.i, label %bb.w, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !266 ; 2 uses
  %.not.6.i.i = icmp eq i64 %i.cl, 0
  br i1 %.not.6.i.i, label %bb.x, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

bb.x:                                             ; preds = %bb.w
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !266 ; 2 uses
  %.not.7.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.7.i.i, label %.critedge31.i, label %_ZNK13hb_bit_page_t7get_minEv.exit.i

_ZNK13hb_bit_page_t7get_minEv.exit.i:             ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %.lr.ph.i
  %.0712.lcssa.wide.i.i = phi i32 [ 0, %.lr.ph.i ], [ 64, %bb.r ], [ 128, %bb.s ], [ 192, %bb.t ], [ 256, %bb.u ], [ 320, %bb.v ], [ 384, %bb.w ], [ 448, %bb.x ]
  %.lcssa.i.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %i.cb, %bb.r ], [ %i.cd, %bb.s ], [ %i.cf, %bb.t ], [ %i.ch, %bb.u ], [ %i.cj, %bb.v ], [ %i.cl, %bb.w ], [ %i.cn, %bb.x ]
  %i.co = trunc nuw i64 %indvars.iv.i to i32
  %i.cp = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.lcssa.i.i, i1 true)
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = or disjoint i32 %.0712.lcssa.wide.i.i, %i.cq
  %i.cs = load i32, ptr %i.bt, align 4, !tbaa !412
  %i.ct = shl i32 %i.cs, 9
  %i.cu = or disjoint i32 %i.cr, %i.ct            ; 2 uses
  store i32 %i.cu, ptr %i.b, align 4, !tbaa !218
  store atomic i32 %i.co, ptr %i.g monotonic, align 8
  br label %_ZNK12hb_bit_set_t4nextEPj.exit.thread

.critedge31.i:                                    ; preds = %bb.x
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit, label %.lr.ph.i, !llvm.loop !38

_ZNK12hb_bit_set_t4nextEPj.exit:                  ; preds = %bb.e
  %i.cv = call noundef i32 @_ZNK12hb_bit_set_t7get_minEv(ptr noundef nonnull align 8 dereferenceable(49) %i.d) ; 3 uses
  store i32 %i.cv, ptr %i.b, align 4, !tbaa !218
  %.not = icmp eq i32 %i.cv, -1
  br i1 %.not, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit, label %_ZNK12hb_bit_set_t4nextEPj.exit._ZNK12hb_bit_set_t4nextEPj.exit.thread_crit_edge

_ZNK12hb_bit_set_t4nextEPj.exit._ZNK12hb_bit_set_t4nextEPj.exit.thread_crit_edge: ; preds = %_ZNK12hb_bit_set_t4nextEPj.exit
  %.pre = load i32, ptr %i.c, align 4, !tbaa !218
  br label %_ZNK12hb_bit_set_t4nextEPj.exit.thread

_ZNK12hb_bit_set_t4nextEPj.exit.thread:           ; preds = %_ZNK12hb_bit_set_t4nextEPj.exit._ZNK12hb_bit_set_t4nextEPj.exit.thread_crit_edge, %_ZNK13hb_bit_page_t7get_minEv.exit.i, %bb.o
  %i.cw = phi i32 [ %i.o, %_ZNK13hb_bit_page_t7get_minEv.exit.i ], [ %i.o, %bb.o ], [ %.pre, %_ZNK12hb_bit_set_t4nextEPj.exit._ZNK12hb_bit_set_t4nextEPj.exit.thread_crit_edge ]
  %i.cx = phi i32 [ %i.cu, %_ZNK13hb_bit_page_t7get_minEv.exit.i ], [ %i.bo, %bb.o ], [ %i.cv, %_ZNK12hb_bit_set_t4nextEPj.exit._ZNK12hb_bit_set_t4nextEPj.exit.thread_crit_edge ] ; 2 uses
  %i.cy = add i32 %i.cw, 1
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.e, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit, !llvm.loop !39

bb.y:                                             ; preds = %bb.b
  %i.da = call noundef zeroext i1 @_ZNK23hb_bit_set_invertible_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.d, ptr noundef nonnull %i.c)
  br i1 %i.da, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit.thread, label %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit.thread7

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit.thread: ; preds = %bb.y
  %i.db = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.d, ptr noundef nonnull %i.c) ; 0 uses
  %i.dc = load i32, ptr %i.c, align 4, !tbaa !218
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr %i.c, align 4, !tbaa !218
  br label %bb.z

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit: ; preds = %_ZNK12hb_bit_set_t4nextEPj.exit, %_ZNK12hb_bit_set_t4nextEPj.exit.thread, %bb.q, %_ZNK11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE5bfindIjLb1ETnPN12hb_enable_ifIXT0_EvE4typeELPv0EEEbRKT_Pj14hb_not_found_tj.exit.i, %.critedge31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit.thread
  %i.de = add i32 %.0, 1
  br label %bb.b, !llvm.loop !2350

_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit.thread7: ; preds = %bb.y, %_ZNK14hb_sparseset_tI23hb_bit_set_invertible_tE10next_rangeEPjS2_.exit.thread9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5graph14PairPosFormat211clone_rangeERNS0_15split_context_tEjj(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_filter_iter_t.745, align 8 ; 5 uses
  %5 = alloca %struct.hb_filter_iter_t.745, align 8 ; 19 uses
  %6 = alloca %struct.hb_filter_iter_t.745, align 8 ; 7 uses
  %7 = alloca %struct.hb_filter_iter_t.745, align 8 ; 14 uses
  %8 = alloca %struct.hb_map_iter_t.749, align 8  ; 19 uses
  %9 = alloca %struct.hb_filter_iter_t.745, align 8 ; 4 uses
  %10 = alloca %struct.hb_filter_iter_t.745, align 8 ; 18 uses
  %11 = alloca %struct.hb_filter_iter_t.745, align 8 ; 6 uses
  %12 = alloca %struct.hb_filter_iter_t.745, align 8 ; 10 uses
  %13 = alloca %struct.hb_filter_iter_t.745, align 8 ; 18 uses
  %14 = alloca %struct.hb_filter_iter_t.745, align 8 ; 18 uses
  %15 = alloca %struct.hb_filter_iter_t.745, align 8 ; 6 uses
  %16 = alloca %struct.hb_serialize_context_t, align 8 ; 30 uses
  %17 = alloca %struct.hb_map_iter_t.732, align 8 ; 5 uses
  %.sroa.0.i.i.i44.i.i.i.i.i = alloca %struct.hb_filter_iter_t.728, align 8 ; 6 uses
  %18 = alloca %struct.hb_map_iter_t.732, align 8 ; 5 uses
  %.sroa.0.i.i.i.i.i.i.i.i = alloca %struct.hb_filter_iter_t.728, align 8 ; 6 uses
  %19 = alloca %struct.hb_map_iter_t.743, align 8 ; 8 uses
  %20 = alloca %struct.hb_map_iter_t.743, align 8 ; 8 uses
  %21 = alloca %struct.hb_map_iter_t.743, align 8 ; 11 uses
  %22 = alloca %struct.hb_filter_iter_t.728, align 8 ; 7 uses
  %23 = alloca %struct.hb_map_iter_t.743, align 8 ; 5 uses
  %24 = alloca %struct.hb_map_iter_t.732, align 8 ; 5 uses
  %.sroa.0.i.i.i.i.i.i.i = alloca %struct.hb_filter_iter_t.728, align 8 ; 6 uses
  %25 = alloca %struct.hb_filter_iter_t.728, align 8 ; 7 uses
  %26 = alloca %struct.hb_map_iter_t.743, align 8 ; 8 uses
  %27 = alloca %struct.hb_map_iter_t.743, align 8 ; 15 uses
  %28 = alloca %struct.hb_serialize_context_t, align 8 ; 30 uses
  %.sroa.0213 = alloca %struct.hb_filter_iter_t.728, align 8 ; 5 uses
  %29 = alloca %struct.hb_map_iter_t.732, align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %.sroa.0205 = alloca %struct.hb_filter_iter_t.728, align 8 ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !218
  store i32 %3, ptr %i.b, align 4, !tbaa !218
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !705, !nonnull !230, !align !592 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.h = sub i32 %3, %2                           ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !677
  %i.k = mul i32 %i.j, %i.h
  %i.l = add i32 %i.k, 16
  %i.m = tail call noundef i32 @_ZN5graph24gsubgpos_graph_context_t11create_nodeEj(ptr noundef nonnull align 8 dereferenceable(168) %i.e, i32 noundef %i.l) #21 ; 11 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.lw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 5 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !567
  %.not.i.i = icmp ult i32 %i.m, %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = zext i32 %i.m to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw [216 x i8], ptr %i.r, i64 %i.s
  %.0.i.i = select i1 %.not.i.i, ptr %i.t, ptr @_hb_NullPool, !prof !219
  %i.u = load ptr, ptr %.0.i.i, align 8, !tbaa !315 ; 5 uses
  %i.v = load i16, ptr %0, align 1, !tbaa !282
  store i16 %i.v, ptr %i.u, align 1, !tbaa !282
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.y = load i16, ptr %i.w, align 1
  store i16 %i.y, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.ab = load i16, ptr %i.z, align 1
  store i16 %i.ab, ptr %i.aa, align 1
  %i.ac = trunc i32 %i.h to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.ae = tail call i16 @llvm.bswap.i16(i16 %i.ac)
  store i16 %i.ae, ptr %i.ad, align 1, !tbaa !282
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.ah = load i16, ptr %i.af, align 1, !tbaa !282
  store i16 %i.ah, ptr %i.ag, align 1, !tbaa !282
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !218
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !218
  tail call void @_ZNK5graph14PairPosFormat220clone_class1_recordsERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.m, i32 noundef %i.ai, i32 noundef %i.aj)
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !676 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.am = load i32, ptr %i.o, align 4, !tbaa !567 ; 3 uses
  %.not.i.i.i = icmp ult i32 %i.ak, %i.am
  %i.an = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.ao = zext i32 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [216 x i8], ptr %i.an, i64 %i.ao
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.ap, ptr @_hb_NullPool, !prof !219 ; 6 uses
  %i.aq = load ptr, ptr %.0.i.i.i, align 8, !tbaa !315 ; 4 uses
  %i.ar = icmp uge ptr %i.al, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i = icmp ult ptr %i.al, %i.at
  %or.cond.i = select i1 %i.ar, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.c:                                             ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !279 ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.av, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !655
  %wide.trip.count.i = zext i32 %i.av to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.e, !llvm.loop !53

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !316
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bb
  %.not23.not.i = icmp eq ptr %i.al, %i.bc
  br i1 %.not23.not.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !304
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit:   ; preds = %bb.d, %bb.b, %bb.c, %.thread.i
  %.4.i = phi i32 [ -1, %bb.b ], [ %i.be, %.thread.i ], [ -1, %bb.c ], [ -1, %bb.d ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bg = icmp uge ptr %i.bf, %i.aq
  %.not.i64 = icmp ult ptr %i.bf, %i.at
  %or.cond.i65 = select i1 %i.bg, i1 %.not.i64, i1 false
  br i1 %or.cond.i65, label %bb.f, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit75

bb.f:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !279 ; 2 uses
  %.not2427.not.i67 = icmp eq i32 %i.bi, 0
  br i1 %.not2427.not.i67, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit75, label %.lr.ph.i68

.lr.ph.i68:                                       ; preds = %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !655
  %wide.trip.count.i69 = zext i32 %i.bi to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i69
  br i1 %exitcond.not.i73, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit75, label %bb.h, !llvm.loop !53

bb.h:                                             ; preds = %bb.g, %.lr.ph.i68
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.i68 ], [ %indvars.iv.next.i72, %bb.g ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %indvars.iv.i70 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !316
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bo
  %.not23.not.i71 = icmp eq ptr %i.bf, %i.bp
  br i1 %.not23.not.i71, label %.thread.i74, label %bb.g

.thread.i74:                                      ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !304
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit75

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit75: ; preds = %bb.g, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, %bb.f, %.thread.i74
  %.4.i66 = phi i32 [ -1, %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit ], [ %i.br, %.thread.i74 ], [ -1, %bb.f ], [ -1, %bb.g ] ; 2 uses
  %.not.i76 = icmp ult i32 %.4.i, %i.am
  br i1 %.not.i76, label %bb.j, label %bb.i, !prof !219

bb.i:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load i32, ptr %i.o, align 4, !tbaa !567
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

bb.j:                                             ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit75
  %i.bs = zext i32 %.4.i to i64
  %i.bt = getelementptr inbounds nuw [216 x i8], ptr %i.an, i64 %i.bs
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.i, %bb.j
  %i.bu = phi i32 [ %.pre, %bb.i ], [ %i.am, %bb.j ]
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.bt, %bb.j ] ; 5 uses
  %.not.i77 = icmp ult i32 %.4.i66, %i.bu
  br i1 %.not.i77, label %bb.l, label %bb.k, !prof !219

bb.k:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79

bb.l:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !573
  %i.bw = zext i32 %.4.i66 to i64
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %i.bv, i64 %i.bw
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79: ; preds = %bb.k, %bb.l
  %.0.i78 = phi ptr [ @_hb_CrapPool, %bb.k ], [ %i.bx, %bb.l ] ; 5 uses
  %i.by = load ptr, ptr %.0.i, align 8, !tbaa !594 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.bz = load ptr, ptr %.0.i78, align 8, !tbaa !594 ; 5 uses
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !671
  %.not = icmp eq ptr %i.by, null
  br i1 %.not, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !593
  %i.cc = load ptr, ptr %.0.i, align 8, !tbaa !594
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = icmp ult i64 %i.cf, 2
  br i1 %i.cg, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ch = load i16, ptr %i.by, align 1, !tbaa !211
  %i.ci = tail call noundef i16 @llvm.bswap.i16(i16 %i.ch)
  switch i16 %i.ci, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread [
    i16 1, label %bb.o
    i16 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %.val.i = load ptr, ptr %.0.i, align 8, !tbaa !594
  %.val6.i = load ptr, ptr %i.ca, align 8, !tbaa !593
  %i.cj = ptrtoint ptr %.val6.i to i64
  %i.ck = ptrtoint ptr %.val.i to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = icmp ult i64 %i.cl, 4
  br i1 %i.cm, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.cn = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.co = load i16, ptr %i.cn, align 1, !tbaa !211
  %i.cp = tail call noundef i16 @llvm.bswap.i16(i16 %i.co)
  %i.cq = zext i16 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 1
  br label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit

bb.q:                                             ; preds = %bb.n
  %.val7.i = load ptr, ptr %.0.i, align 8, !tbaa !594
  %.val8.i = load ptr, ptr %i.ca, align 8, !tbaa !593
  %i.cs = ptrtoint ptr %.val8.i to i64
  %i.ct = ptrtoint ptr %.val7.i to i64
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 4
  br i1 %i.cv, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.cw = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cx = load i16, ptr %i.cw, align 1, !tbaa !211
  %i.cy = tail call noundef i16 @llvm.bswap.i16(i16 %i.cx)
  %i.cz = zext i16 %i.cy to i64
  %i.da = mul nuw nsw i64 %i.cz, 6
  br label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %bb.p, %bb.r
  %.sink469 = phi i64 [ %i.cr, %bb.p ], [ %i.da, %bb.r ]
  %.sink = phi i64 [ %i.cl, %bb.p ], [ %i.cu, %bb.r ]
  %i.db = add nuw nsw i64 %.sink469, 4
  %i.dc = icmp uge i64 %.sink, %i.db
  %i.dd = icmp ne ptr %i.bz, null
  %or.cond = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %or.cond, label %bb.s, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread

bb.s:                                             ; preds = %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i78, i64 8 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !593
  %i.dg = load ptr, ptr %.0.i78, align 8, !tbaa !594
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp ult i64 %i.dj, 2
  br i1 %i.dk, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.dl = load i16, ptr %i.bz, align 1, !tbaa !211
  %i.dm = tail call noundef i16 @llvm.bswap.i16(i16 %i.dl)
  switch i16 %i.dm, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread [
    i16 1, label %bb.u
    i16 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !593
  %i.do = load ptr, ptr %.0.i78, align 8, !tbaa !594
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 6
  br i1 %i.ds, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit

bb.v:                                             ; preds = %bb.t
  %i.dt = load ptr, ptr %i.de, align 8, !tbaa !593
  %i.du = load ptr, ptr %.0.i78, align 8, !tbaa !594
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = icmp ult i64 %i.dx, 4
  br i1 %i.dy, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %.split

.split:                                           ; preds = %bb.v
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  %i.ea = load i16, ptr %i.dz, align 1, !tbaa !211
  %i.eb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ea)
  %i.ec = zext i16 %i.eb to i64
  %i.ed = mul nuw nsw i64 %i.ec, 6
  %i.ee = add nuw nsw i64 %i.ed, 4
  %.not225.a = icmp ult i64 %i.dx, %i.ee
  br i1 %.not225.a, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.w

_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit: ; preds = %bb.u
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.eg = load i16, ptr %i.ef, align 1, !tbaa !211
  %i.eh = tail call noundef i16 @llvm.bswap.i16(i16 %i.eg)
  %i.ei = zext i16 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 1
  %i.ek = add nuw nsw i64 %i.ej, 6
  %.not226 = icmp ult i64 %i.dr, %i.ek
  br i1 %.not226, label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread, label %bb.w

bb.w:                                             ; preds = %.split, %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0205)
  %i.el = load i16, ptr %i.by, align 1, !tbaa !211, !noalias !2439
  %i.em = tail call noundef i16 @llvm.bswap.i16(i16 %i.el) ; 2 uses
  %i.en = zext i16 %i.em to i32
  switch i16 %i.em, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit [
    i16 1, label %bb.x
    i16 2, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2439, !srcloc !212
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

bb.y:                                             ; preds = %bb.w
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2439, !srcloc !212
  %i.eo = getelementptr inbounds nuw i8, ptr %i.by, i64 2 ; 4 uses
  %i.ep = load i16, ptr %i.eo, align 1, !tbaa !211, !noalias !2439
  %.not.i.i.i82 = icmp eq i16 %i.ep, 0
  br i1 %.not.i.i.i82, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %bb.z, !prof !249

bb.z:                                             ; preds = %bb.y
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2439, !srcloc !212
  %i.eq = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 3 uses
  %i.er = load i16, ptr %i.eq, align 1, !tbaa !211, !noalias !2439
  %i.es = tail call noundef i16 @llvm.bswap.i16(i16 %i.er)
  %i.et = zext i16 %i.es to i32                   ; 3 uses
  %.pre8.i.i.i = load i16, ptr %i.eo, align 1, !tbaa !211, !noalias !2439
  %i.eu = icmp eq i16 %.pre8.i.i.i, 0
  br i1 %i.eu, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, !prof !220

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.y, %bb.z
  %.sroa.11.0 = phi i32 [ %i.et, %bb.z ], [ 0, %bb.y ]
  %i.ev = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !211, !noalias !2439
  %i.ew = tail call noundef i16 @llvm.bswap.i16(i16 %i.ev)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.z
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2439, !srcloc !212
  %.pre11.i.i.i = load i16, ptr %i.eo, align 1, !tbaa !211, !noalias !2439
  %i.ex = icmp eq i16 %.pre11.i.i.i, 0
  %i.ey = load i16, ptr %i.eq, align 1, !tbaa !211, !noalias !2439
  %i.ez = tail call noundef i16 @llvm.bswap.i16(i16 %i.ey) ; 2 uses
  br i1 %i.ex, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.aa, !prof !220

bb.aa:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2439, !srcloc !212
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.aa, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.et, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.et, %bb.aa ]
  %i.fa = phi i16 [ %i.ew, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.ez, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.ez, %bb.aa ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.eq, %bb.aa ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.fc = load i16, ptr %i.fb, align 1, !tbaa !211, !noalias !2439
  %i.fd = tail call noundef i16 @llvm.bswap.i16(i16 %i.fc)
  %i.fe = icmp ugt i16 %i.fa, %i.fd
  br i1 %i.fe, label %bb.ab, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit, !prof !112

bb.ab:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.ff = load i16, ptr %i.eo, align 1, !tbaa !211, !noalias !2439
  %i.fg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ff)
  %i.fh = zext i16 %i.fg to i32
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

_ZNK2OT6Layout6Common8Coverage4iterEv.exit:       ; preds = %bb.w, %bb.x, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, %bb.ab
  %.sroa.11.2 = phi i32 [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.ab ], [ %.sroa.11.1, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ]
  %.sroa.5192.0 = phi ptr [ null, %bb.w ], [ %i.by, %bb.x ], [ %i.by, %bb.ab ], [ %i.by, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ]
  %.sroa.7.0 = phi i32 [ 0, %bb.w ], [ 0, %bb.x ], [ %i.fh, %bb.ab ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %29), !noalias !2440
  store i32 %i.en, ptr %29, align 8, !noalias !2440
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 4
  store i32 0, ptr %.sroa.4199.0..sroa_idx, align 4, !noalias !2440
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr %.sroa.5192.0, ptr %.sroa.5200.0..sroa_idx, align 8, !noalias !2440
  %.sroa.6201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.6201.0..sroa_idx, align 8, !noalias !2440
  %.sroa.7202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 20
  store i32 0, ptr %.sroa.7202.0..sroa_idx, align 4, !noalias !2440
  %.sroa.8203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i32 %.sroa.11.2, ptr %.sroa.8203.0..sroa_idx, align 8, !noalias !2440
  %.sroa.9204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 28
  store i32 0, ptr %.sroa.9204.0..sroa_idx, align 4, !noalias !2440
  %.sroa.10205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %29, i64 32
  store ptr %i.c, ptr %.sroa.10205.0..sroa_idx, align 8, !noalias !2440
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEC2ERKSD_SE_SH_"(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0205, ptr noundef nonnull readonly align 8 dereferenceable(40) %29, ptr nonnull %i.a, ptr nonnull %i.b, ptr noundef nonnull align 1 dereferenceable(1) @_ZL9hb_second)
  call void @llvm.lifetime.end.p0(ptr nonnull %29), !noalias !2440
  %i.fi = load ptr, ptr %1, align 8, !tbaa !705, !nonnull !230, !align !592
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0213)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0213, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0205, i64 64, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !680
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 5 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !591, !nonnull !230, !align !592
  %i.fn = call noundef i32 @_ZN5graph7graph_t8new_nodeEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.fm, ptr noundef null, ptr noundef null) ; 5 uses
  %i.fo = load ptr, ptr %i.fl, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !567
  %.not.i.i84 = icmp ult i32 %i.fn, %i.fq
  br i1 %.not.i.i84, label %bb.ad, label %bb.ac, !prof !219

bb.ac:                                            ; preds = %_ZNK2OT6Layout6Common8Coverage4iterEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

bb.ad:                                            ; preds = %_ZNK2OT6Layout6Common8Coverage4iterEv.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !573
  %i.ft = zext i32 %i.fn to i64
  %i.fu = getelementptr inbounds nuw [216 x i8], ptr %i.fs, i64 %i.ft
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i85 = phi ptr [ @_hb_CrapPool, %bb.ac ], [ %i.fu, %bb.ad ] ; 2 uses
  %i.fv = zext i32 %i.fk to i64                   ; 2 uses
  %i.fw = call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.fv) #21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  store ptr %i.fw, ptr %28, align 8, !tbaa !186
  %i.fx = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv ; 2 uses
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !187
  %i.fz = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.ga = getelementptr inbounds nuw i8, ptr %28, i64 80 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %28, i64 96 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %28, i64 100 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %28, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fz, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.gb monotonic, align 8
  store atomic i8 1, ptr %i.gc monotonic, align 4
  store atomic ptr null, ptr %i.gd monotonic, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %28, i64 112 ; 3 uses
  store i8 1, ptr %i.ge, align 8, !tbaa !188
  %i.gf = getelementptr inbounds nuw i8, ptr %28, i64 114 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %28, i64 136 ; 2 uses
  store ptr null, ptr %i.gg, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.gf, i8 0, i64 18, i1 false)
  %i.gh = getelementptr inbounds nuw i8, ptr %28, i64 44 ; 17 uses
  store i32 0, ptr %i.gh, align 4, !tbaa !190
  %i.gi = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 21 uses
  store ptr %i.fw, ptr %i.gi, align 8, !tbaa !191
  %i.gj = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 9 uses
  store ptr %i.fy, ptr %i.gj, align 8, !tbaa !192
  %i.gk = getelementptr inbounds nuw i8, ptr %28, i64 32
  store ptr null, ptr %i.gk, align 8, !tbaa !193
  %i.gl = getelementptr inbounds nuw i8, ptr %28, i64 40
  store i32 0, ptr %i.gl, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %28)
  %i.gm = getelementptr inbounds nuw i8, ptr %28, i64 84 ; 5 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !195 ; 3 uses
  %i.go = load i32, ptr %i.ga, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.gn, %i.go
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.gp = add i32 %i.gn, 1                        ; 2 uses
  %i.gq = icmp slt i32 %i.go, 0
  br i1 %i.gq, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i.i, label %bb.af, !prof !112

bb.af:                                            ; preds = %bb.ae
  %.not.i26.i.i = icmp ugt i32 %i.gp, %i.go
  br i1 %.not.i26.i.i, label %.preheader.i.i.i, label %..critedge_crit_edge.i.i.i.i.i, !prof !112

.preheader.i.i.i:                                 ; preds = %bb.af, %.preheader.i.i.i
  %.043.i.i.i = phi i32 [ %i.gt, %.preheader.i.i.i ], [ %i.go, %bb.af ] ; 2 uses
  %i.gr = lshr i32 %.043.i.i.i, 1
  %i.gs = add i32 %.043.i.i.i, 8
  %i.gt = add i32 %i.gs, %i.gr                    ; 7 uses
  %i.gu = icmp ugt i32 %i.gp, %i.gt
  br i1 %i.gu, label %.preheader.i.i.i, label %.thread.i.i.i89, !llvm.loop !1

.thread.i.i.i89:                                  ; preds = %.preheader.i.i.i
  %i.gv = icmp ugt i32 %i.gt, 536870911
  br i1 %i.gv, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i.i, label %bb.ag, !prof !112

bb.ag:                                            ; preds = %.thread.i.i.i89
  %.not49.i.i.i = icmp eq i32 %i.go, 0
  %i.gw = getelementptr inbounds nuw i8, ptr %28, i64 88 ; 3 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i.i.i, label %bb.ah, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %.not9.i.i.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not9.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gy = shl nuw i32 %i.gt, 3
  %i.gz = zext i32 %i.gy to i64
  %i.ha = call ptr @hb_malloc(i64 noundef %i.gz) #21 ; 4 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not10.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i, label %bb.aj, !prof !112

bb.aj:                                            ; preds = %bb.ai
  %i.hb = load i32, ptr %i.gm, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i, label %bb.ak, !prof !112

bb.ak:                                            ; preds = %bb.aj
  %i.hc = zext i32 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 3
  %i.he = load ptr, ptr %i.gw, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr readonly align 1 %i.he, i64 %i.hd, i1 false), !alias.scope !2441
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i: ; preds = %bb.ah, %bb.ag
  %i.hf = phi ptr [ null, %bb.ah ], [ %i.gx, %bb.ag ]
  %i.hg = shl nuw i32 %i.gt, 3
  %i.hh = zext i32 %i.hg to i64
  %i.hi = call ptr @hb_realloc(ptr noundef %i.hf, i64 noundef %i.hh) #21 ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not22.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i, %bb.ai
  %i.hj = load i32, ptr %i.ga, align 8, !tbaa !196 ; 2 uses
  %.not23.i.i.i = icmp ugt i32 %i.gt, %i.hj
  br i1 %.not23.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i.i, label %..critedge_crit_edge.i.i.i.i.i, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i, %.thread.i.i.i89
  %.sink.i.ph.in.i.i = phi i32 [ %i.go, %.thread.i.i.i89 ], [ %i.hj, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i ]
  %.sink.i.ph.i.i = xor i32 %.sink.i.ph.in.i.i, -1
  store i32 %.sink.i.ph.i.i, ptr %i.ga, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i, %bb.ak, %bb.aj
  %.1.i.i42.i.i.i = phi ptr [ %i.hi, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i ], [ %i.ha, %bb.ak ], [ %i.ha, %bb.aj ]
  store ptr %.1.i.i42.i.i.i, ptr %i.gw, align 8, !tbaa !197
  store i32 %i.gt, ptr %i.ga, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i.i.i

..critedge_crit_edge.i.i.i.i.i:                   ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i, %bb.af
  %.pre.i.i.i.i.i = load i32, ptr %i.gm, align 4, !tbaa !195
  br label %.critedge.i.i.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i.i, %bb.ae
  %i.hk = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.hk, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i.i

.critedge.i.i.i.i.i:                              ; preds = %..critedge_crit_edge.i.i.i.i.i, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i
  %i.hl = phi i32 [ %.pre.i.i.i.i.i, %..critedge_crit_edge.i.i.i.i.i ], [ %i.gn, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %28, i64 88
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !197
  %i.ho = add i32 %i.hl, 1
  store i32 %i.ho, ptr %i.gm, align 4, !tbaa !195
  %i.hp = zext i32 %i.hl to i64
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hp
  store ptr null, ptr %i.hq, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i.i

_ZN22hb_serialize_context_tC2EPvm.exit.i.i:       ; preds = %.critedge.i.i.i.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i.i
  store atomic i32 1, ptr %i.gb monotonic, align 8
  store atomic i8 1, ptr %i.gc monotonic, align 4
  store atomic ptr null, ptr %i.gd monotonic, align 8
  store i8 1, ptr %i.ge, align 8, !tbaa !188
  store ptr null, ptr %i.gg, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.gf, i8 0, i64 18, i1 false)
  %i.hr = load ptr, ptr %i.gi, align 8, !tbaa !191 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %27, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0205, i64 64, i1 false)
  %.sroa.5215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 64
  store ptr %i.a, ptr %.sroa.5215.0..sroa_idx, align 8
  %.sroa.6216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 72
  store ptr @_ZL8hb_first, ptr %.sroa.6216.0..sroa_idx, align 8
  %i.hs = load i32, ptr %i.gh, align 4, !tbaa !190 ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.hs, 0
  br i1 %.not11.i.i.i.i.i.i, label %bb.al, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tIS3_I16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.i.i", !prof !219

bb.al:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 2 ; 5 uses
  %i.hu = ptrtoint ptr %i.hr to i64
  %i.hv = load ptr, ptr %i.gj, align 8, !tbaa !192
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = sub i64 %i.hw, %i.hu
  %i.hy = icmp slt i64 %i.hx, 2
  br i1 %i.hy, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tIS3_I16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i.i", label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i, !prof !112

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i:             ; preds = %bb.al
  store i16 0, ptr %i.hr, align 1
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.gi, align 8, !tbaa !191 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i, i64 2
  store ptr %i.hz, ptr %i.gi, align 8, !tbaa !191
  %i.ia = icmp eq ptr %.pre.i.i.i.i.i.i.i, null
  br i1 %i.ia, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tIS3_I16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.i.i", label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i.i, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0213, i64 64, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %25, i64 16
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i.i ], [ %i.im, %bb.ap ] ; 2 uses
  %i.id = load i32, ptr %25, align 8, !tbaa !527
  switch i32 %i.id, label %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i" [
    i32 1, label %bb.an
    i32 2, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.am
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ao, %bb.an
  %i.ie = load i32, ptr %i.ic, align 8, !tbaa !218
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !276
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 2
  %i.ih = load i16, ptr %i.ig, align 1, !tbaa !211
  %i.ii = call noundef i16 @llvm.bswap.i16(i16 %i.ih)
  %i.ij = zext i16 %i.ii to i32
  %i.ik = icmp ult i32 %i.ie, %i.ij
  br i1 %i.ik, label %bb.ap, label %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i"

bb.ap:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.il = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %25), !noalias !2442 ; 0 uses
  %i.im = add i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %bb.am, !llvm.loop !2360

"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef nonnull readonly align 8 dereferenceable(80) %27, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i), !noalias !2443
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #21, !noalias !2444
  call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %24, ptr noundef nonnull align 8 dereferenceable(80) %27), !noalias !2444
  %i.in = getelementptr inbounds nuw i8, ptr %27, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.in, align 8, !tbaa !697, !noalias !2447
  %i.io = getelementptr inbounds nuw i8, ptr %24, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.io, align 8, !tbaa !697, !alias.scope !2448, !noalias !2444
  %i.ip = getelementptr inbounds nuw i8, ptr %27, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ip, align 8, !tbaa !599, !noalias !2444
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 48
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !599, !noalias !2444
  %i.iq = getelementptr inbounds nuw i8, ptr %27, i64 56
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.iq, align 8, !tbaa !550, !noalias !2444
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEC2ERKSD_SE_SH_"(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i.i.i.i.i.i.i), !noalias !2443
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21, !noalias !2444
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.0.i.i.i.i.i.i.i, align 8 ; 2 uses
  %.sroa.441.0..sroa.0.i.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.i, i64 16
  %.sroa.441.0.copyload.i.i.i.i = load i32, ptr %.sroa.441.0..sroa.0.i.i.i.sroa_idx.i.i.i.i, align 8 ; 2 uses
  %.sroa.643.0..sroa.0.i.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i.i, i64 24
  %.sroa.643.0.copyload.i.i.i.i = load i32, ptr %.sroa.643.0..sroa.0.i.i.i.sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i), !noalias !2443
  %i.ir = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %26, i64 24
  br label %bb.aq

bb.aq:                                            ; preds = %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i", %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i"
  %.024.i.i.i.i = phi i32 [ 0, %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i" ], [ %.125.i.i.i.i, %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i" ] ; 2 uses
  %.023.i.i.i.i = phi i32 [ -2, %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i" ], [ %.sroa.0.0.extract.trunc.i.i.i.i.i.i, %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i" ] ; 3 uses
  %.021.i.i.i.i = phi i32 [ 0, %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i" ], [ %.122.i.i.i.i, %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i" ] ; 2 uses
  %.0.i.i.i.i = phi i1 [ false, %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i" ], [ %.1.i.i.i.i, %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i" ] ; 2 uses
  %i.it = load i32, ptr %26, align 8, !tbaa !527
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.it, %.sroa.0.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.ar, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i", !prof !219

bb.ar:                                            ; preds = %bb.aq
  switch i32 %.sroa.0.0.copyload.i.i.i.i, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread50.i.i.i.i" [
    i32 1, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.i.i.i.i"
    i32 2, label %.split.i.i.i.i
  ]

.split.i.i.i.i:                                   ; preds = %bb.ar
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.iu = load i32, ptr %i.ir, align 8, !tbaa !535
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i32 %i.iu, %.sroa.441.0.copyload.i.i.i.i
  %i.iv = load i32, ptr %i.is, align 8
  %i.iw = icmp ne i32 %i.iv, %.sroa.643.0.copyload.i.i.i.i
  %i.ix = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.iw
  br i1 %i.ix, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i", label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread50.i.i.i.i"

"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.i.i.i.i": ; preds = %bb.ar
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.iy = load i32, ptr %i.ir, align 8, !tbaa !530
  %.not.i.i.i.i = icmp eq i32 %i.iy, %.sroa.441.0.copyload.i.i.i.i
  br i1 %.not.i.i.i.i, label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread50.i.i.i.i", label %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i"

"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread50.i.i.i.i": ; preds = %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.i.i.i.i", %.split.i.i.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21
  %i.iz = mul i32 %.024.i.i.i.i, 3
  %i.ja = icmp ugt i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, %i.iz
  %.not30.i.i.i.i = select i1 %.0.i.i.i.i, i1 true, i1 %i.ja ; 2 uses
  %i.jb = select i1 %.not30.i.i.i.i, i16 512, i16 256
  store i16 %i.jb, ptr %i.hr, align 1, !tbaa !282
  %i.jc = icmp ugt i32 %.021.i.i.i.i, 65535
  br i1 %i.jc, label %bb.as, label %bb.at, !prof !112

"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread.i.i.i.i": ; preds = %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.i.i.i.i", %.split.i.i.i.i, %bb.aq
  %i.jd = call i64 @_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS6_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev(ptr noundef nonnull align 8 dereferenceable(80) %26)
  %.sroa.0.0.extract.trunc.i.i.i.i.i.i = trunc i64 %i.jd to i32 ; 4 uses
  %.not31.i.i.i.i = icmp ne i32 %.023.i.i.i.i, -2
  %i.je = icmp ugt i32 %.023.i.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %or.cond.i.i.i.i = and i1 %.not31.i.i.i.i, %i.je
  %.1.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 true, i1 %.0.i.i.i.i
  %i.jf = add i32 %.023.i.i.i.i, 1
  %.not32.i.i.i.i = icmp ne i32 %i.jf, %.sroa.0.0.extract.trunc.i.i.i.i.i.i
  %i.jg = zext i1 %.not32.i.i.i.i to i32
  %.125.i.i.i.i = add i32 %.024.i.i.i.i, %i.jg
  %.122.i.i.i.i = call i32 @llvm.umax.i32(i32 %.021.i.i.i.i, i32 %.sroa.0.0.extract.trunc.i.i.i.i.i.i)
  %i.jh = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 8 dereferenceable(80) %26) ; 0 uses
  br label %bb.aq

bb.as:                                            ; preds = %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread50.i.i.i.i"
  %i.ji = load i32, ptr %i.gh, align 4, !tbaa !190 ; 2 uses
  %.not.i.i.not.i.i.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.i.i.not.i.i.i.i, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tIS3_I16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i.i", label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tIS3_I16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.i.i"

bb.at:                                            ; preds = %"_ZNK13hb_map_iter_tIS_I16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EERK3$_6LSB_1ELSC_0EEneERKSQ_.exit.thread50.i.i.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  br i1 %.not30.i.i.i.i, label %bb.bg, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %23, ptr noundef nonnull align 8 dereferenceable(80) %27, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %22, ptr noundef nonnull align 8 dereferenceable(64) %27, i64 64, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %22, i64 16
  br label %bb.av

bb.av:                                            ; preds = %bb.ay, %bb.au
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.au ], [ %i.ju, %bb.ay ] ; 6 uses
  %i.jl = load i32, ptr %22, align 8, !tbaa !527
  switch i32 %i.jl, label %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i.i.i.i" [
    i32 1, label %bb.aw
    i32 2, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

bb.ax:                                            ; preds = %bb.av
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.ax, %bb.aw
  %i.jm = load i32, ptr %i.jk, align 8, !tbaa !218
  %i.jn = load ptr, ptr %i.jj, align 8, !tbaa !276
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 2
  %i.jp = load i16, ptr %i.jo, align 1, !tbaa !211
  %i.jq = call noundef i16 @llvm.bswap.i16(i16 %i.jp)
  %i.jr = zext i16 %i.jq to i32
  %i.js = icmp ult i32 %i.jm, %i.jr
  br i1 %i.js, label %bb.ay, label %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i.i.i.i"

bb.ay:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %i.jt = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %22), !noalias !2449 ; 0 uses
  %i.ju = add i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %bb.av, !llvm.loop !2360

"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i.i.i.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.jv = load i32, ptr %i.gh, align 4, !tbaa !190
  %.not11.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jv, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %"_ZN2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE9serializeI13hb_map_iter_tIS6_I16hb_filter_iter_tIS6_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNSB_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKSB_11clone_rangeESD_jjEUljE0_RK3$_7LSG_0EEZNKSB_11clone_rangeESD_jjEUl9hb_pair_tIjjEE_LSF_1ELSG_0EERK3$_6LSF_1ELSG_0EETnPN12hb_enable_ifIXaasr15hb_is_source_ofIT_jEE5valuesrSW_18is_sorted_iteratorEvE4typeELSG_0EEEbP22hb_serialize_context_tSW_.exit.i.i.i.i", !prof !219

bb.az:                                            ; preds = %"_ZNK4$_32clIR13hb_map_iter_tIS1_I16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSV_.exit.i.i.i.i.i.i.i"
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hr, i64 4 ; 3 uses
  %i.jx = load ptr, ptr %i.gi, align 8, !tbaa !191 ; 4 uses
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = ptrtoint ptr %i.jx to i64               ; 2 uses
  %i.ka = sub i64 %i.jy, %i.jz                    ; 4 uses
  %i.kb = icmp ugt i64 %i.ka, 2147483647
  br i1 %i.kb, label %select.unfold14.i.sink.split.i.i.i.i.i.i.i, label %bb.ba, !prof !112

bb.ba:                                            ; preds = %bb.az
  %i.kc = load ptr, ptr %i.gj, align 8, !tbaa !192
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.kd, %i.jz
  %i.kf = icmp slt i64 %i.ke, %i.ka
  br i1 %i.kf, label %select.unfold14.i.sink.split.i.i.i.i.i.i.i, label %bb.bb, !prof !112

bb.bb:                                            ; preds = %bb.ba
  %.not.i.i.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.jw, %i.jx
  br i1 %.not.i.i.i.not.i.i.i.i.i.i.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc, !prof !252

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.memset.p0.i64(ptr align 1 %i.jx, i8 0, i64 %i.ka, i1 false)
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.gi, align 8, !tbaa !191
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZNK5graph14PairPosFormat211clone_rangeERNS0_15split_context_tEjj:bb.a
  br label %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i

_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i: ; preds = %bb.ci, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i.i
  %.pr35.i.i = phi i32 [ %i.ov, %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i.i ], [ %.pr35.pre.i.i, %bb.ci ]
  %.not.i16.i = icmp eq i32 %.pr35.i.i, 0
  br i1 %.not.i16.i, label %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread80.i.i, label %.critedge.i

_ZN22hb_serialize_context_t13end_serializeEv.exit.thread.sink.split.i.i: ; preds = %bb.cg, %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tIS3_I16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.i.i"
  %.sink86.i.i = phi i32 [ %i.oz, %bb.cg ], [ 1, %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tIS3_I16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.i.i" ]
  store i32 %.sink86.i.i, ptr %i.gh, align 4, !tbaa !190
  br label %.critedge.i

_ZN22hb_serialize_context_t13end_serializeEv.exit.thread80.i.i: ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i, %bb.ch
  %i.pd = load ptr, ptr %i.gi, align 8, !tbaa !191
  %i.pe = load ptr, ptr %28, align 8, !tbaa !186
  %i.pf = ptrtoint ptr %i.pd to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = load ptr, ptr %i.fx, align 8, !tbaa !187
  %i.pi = load ptr, ptr %i.gj, align 8, !tbaa !192
  %i.pj = ptrtoint ptr %i.ph to i64
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = add i64 %i.pf, %i.pj
  %i.pm = add i64 %i.pg, %i.pk
  %i.pn = sub i64 %i.pl, %i.pm
  %i.po = and i64 %i.pn, 4294967295               ; 3 uses
  %.not.i18.i.i = icmp eq i64 %i.po, 0
  br i1 %.not.i18.i.i, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", label %bb.cj

bb.cj:                                            ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread80.i.i
  %i.pp = call ptr @hb_malloc(i64 noundef %i.po) #21 ; 7 uses
  %.not7.i19.i.i = icmp eq ptr %i.pp, null
  br i1 %.not7.i19.i.i, label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", label %bb.ck, !prof !112

bb.ck:                                            ; preds = %bb.cj
  %i.pq = load ptr, ptr %28, align 8, !tbaa !186  ; 3 uses
  %i.pr = load ptr, ptr %i.gi, align 8, !tbaa !191 ; 2 uses
  %.not.i.i20.i.i = icmp eq ptr %i.pr, %i.pq
  br i1 %.not.i.i20.i.i, label %_ZL9hb_memcpyPvPKvm.exit.i.i.i, label %bb.cl, !prof !112

bb.cl:                                            ; preds = %bb.ck
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.pt, %i.ps
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.pp, ptr readonly align 1 %i.pq, i64 %i.pu, i1 false), !alias.scope !2462
  br label %_ZL9hb_memcpyPvPKvm.exit.i.i.i

_ZL9hb_memcpyPvPKvm.exit.i.i.i:                   ; preds = %bb.cl, %bb.ck
  %i.pv = load ptr, ptr %i.gj, align 8, !tbaa !192 ; 3 uses
  %i.pw = load ptr, ptr %i.fx, align 8, !tbaa !187 ; 2 uses
  %.not.i8.i.i.i = icmp eq ptr %i.pw, %i.pv
  br i1 %.not.i8.i.i.i, label %bb.cn, label %bb.cm, !prof !112

bb.cm:                                            ; preds = %_ZL9hb_memcpyPvPKvm.exit.i.i.i
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.py, %i.px
  %i.qa = load ptr, ptr %i.gi, align 8, !tbaa !191
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = load ptr, ptr %28, align 8, !tbaa !186
  %i.qd = ptrtoint ptr %i.qc to i64
  %i.qe = sub i64 %i.qb, %i.qd
  %i.qf = getelementptr inbounds i8, ptr %i.pp, i64 %i.qe
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qf, ptr readonly align 1 %i.pv, i64 %i.pz, i1 false), !alias.scope !2463
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %_ZL9hb_memcpyPvPKvm.exit.i.i.i
  %i.qg = load ptr, ptr %i.fl, align 8, !tbaa !591, !nonnull !230, !align !592 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 72 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qg, i64 76 ; 3 uses
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !622 ; 3 uses
  %i.qk = load i32, ptr %i.qh, align 8, !tbaa !623
  %.not.i.i.i21.i.i = icmp slt i32 %i.qj, %i.qk
  br i1 %.not.i.i.i21.i.i, label %.critedge.i.i.i24.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ql = add i32 %i.qj, 1
  %i.qm = call noundef zeroext i1 @_ZN11hb_vector_tIPcLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.qh, i32 noundef %i.ql, i1 noundef zeroext false)
  br i1 %i.qm, label %..critedge_crit_edge.i.i.i22.i.i, label %bb.cp, !prof !219

..critedge_crit_edge.i.i.i22.i.i:                 ; preds = %bb.co
  %.pre.i.i.i23.i.i = load i32, ptr %i.qi, align 4, !tbaa !622
  br label %.critedge.i.i.i24.i.i

bb.cp:                                            ; preds = %bb.co
  %i.qn = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.qn, ptr @_hb_CrapPool, align 16
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i

.critedge.i.i.i24.i.i:                            ; preds = %..critedge_crit_edge.i.i.i22.i.i, %bb.cn
  %i.qo = phi i32 [ %.pre.i.i.i23.i.i, %..critedge_crit_edge.i.i.i22.i.i ], [ %i.qj, %bb.cn ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qg, i64 80
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !621
  %i.qr = add i32 %i.qo, 1
  store i32 %i.qr, ptr %i.qi, align 4, !tbaa !622
  %i.qs = zext i32 %i.qo to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qs
  store ptr %i.pp, ptr %i.qt, align 8, !tbaa !278
  br label %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i

_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i: ; preds = %.critedge.i.i.i24.i.i, %bb.cp
  %i.qu = load i32, ptr %i.qh, align 8, !tbaa !623
  %i.qv = icmp sgt i32 %i.qu, -1
  br i1 %i.qv, label %bb.cq, label %.critedge.i

bb.cq:                                            ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i
  %i.qw = load ptr, ptr %i.fl, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !567
  %.not.i25.i.i = icmp ult i32 %i.fn, %i.qy
  br i1 %.not.i25.i.i, label %bb.cs, label %bb.cr, !prof !219

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !573
  %i.rb = zext i32 %i.fn to i64
  %i.rc = getelementptr inbounds nuw [216 x i8], ptr %i.ra, i64 %i.rb
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i88 = phi ptr [ @_hb_CrapPool, %bb.cr ], [ %i.rc, %bb.cs ] ; 2 uses
  store ptr %i.pp, ptr %.0.i.i.i88, align 8, !tbaa !315
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.po
  %i.re = getelementptr inbounds nuw i8, ptr %.0.i.i.i88, i64 8
  store ptr %i.rd, ptr %i.re, align 8, !tbaa !494
  call void @hb_free(ptr noundef %i.fw) #21
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  %i.rf = load ptr, ptr %i.fl, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !567
  %.not.i17.i = icmp ult i32 %i.m, %i.rh
  br i1 %.not.i17.i, label %bb.cu, label %bb.ct, !prof !219

bb.ct:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19.i

bb.cu:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !573
  %i.rk = getelementptr inbounds nuw [216 x i8], ptr %i.rj, i64 %i.s
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19.i

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19.i: ; preds = %bb.cu, %bb.ct
  %.0.i18.i = phi ptr [ @_hb_CrapPool, %bb.ct ], [ %i.rk, %bb.cu ] ; 4 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 20 ; 3 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !272 ; 2 uses
  %i.rn = add i32 %i.rm, 1                        ; 5 uses
  %i.ro = icmp slt i32 %i.rn, 0
  br i1 %i.ro, label %bb.cz, label %bb.cv, !prof !112

bb.cv:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19.i
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 16
  %i.rq = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.rp, i32 noundef %i.rn, i1 noundef zeroext false)
  br i1 %i.rq, label %bb.cw, label %bb.cz, !prof !306

bb.cw:                                            ; preds = %bb.cv
  %i.rr = load i32, ptr %i.rl, align 4, !tbaa !272 ; 3 uses
  %i.rs = icmp ugt i32 %i.rn, %i.rr
  br i1 %i.rs, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.rt = sub nuw nsw i32 %i.rn, %i.rr
  %i.ru = mul i32 %i.rt, 12                       ; 2 uses
  %.not.i.i.i.i.i21.i = icmp eq i32 %i.ru, 0
  br i1 %.not.i.i.i.i.i21.i, label %bb.da, label %bb.cy, !prof !112

bb.cy:                                            ; preds = %bb.cx
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 24
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !273
  %i.rx = zext nneg i32 %i.rr to i64
  %i.ry = getelementptr inbounds nuw [12 x i8], ptr %i.rw, i64 %i.rx
  %i.rz = zext i32 %i.ru to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.ry, i8 0, i64 %i.rz, i1 false)
  br label %bb.da

bb.cz:                                            ; preds = %bb.cv, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit19.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit"

bb.da:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  store i32 %i.rn, ptr %i.rl, align 4, !tbaa !272
  %i.sa = getelementptr inbounds nuw i8, ptr %.0.i18.i, i64 24
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !273
  %i.sc = zext i32 %i.rm to i64
  %i.sd = getelementptr inbounds nuw [12 x i8], ptr %i.sb, i64 %i.sc
  br label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit"

.critedge.i:                                      ; preds = %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread.sink.split.i.i, %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i, %bb.cf
  %.sink87.i.ph.i = phi ptr [ %i.pp, %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i ], [ %i.fw, %bb.cf ], [ %i.fw, %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread.sink.split.i.i ], [ %i.fw, %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i ]
  call void @hb_free(ptr noundef %.sink87.i.ph.i) #21
  br label %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread"

"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread": ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread80.i.i, %bb.cj, %.critedge.i
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0213)
  br label %bb.lv

"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit": ; preds = %bb.cz, %bb.da
  %.0.i20.i = phi ptr [ @_hb_CrapPool, %bb.cz ], [ %i.sd, %bb.da ] ; 4 uses
  %i.se = load i32, ptr %.0.i20.i, align 4
  %i.sf = and i32 %i.se, -8
  %i.sg = or disjoint i32 %i.sf, 2
  store i32 %i.sg, ptr %.0.i20.i, align 4
  %i.sh = getelementptr inbounds nuw i8, ptr %.0.i20.i, i64 8
  store i32 %i.fn, ptr %i.sh, align 4, !tbaa !304
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i20.i, i64 4
  store i32 2, ptr %i.si, align 4, !tbaa !316
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i.i85, i32 noundef range(i32 0, -1) %i.m, i1 noundef zeroext false)
  %i.sj = load ptr, ptr %.0.i.i85, align 8, !tbaa !594
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0213)
  %.not55 = icmp eq ptr %i.sj, null
  br i1 %.not55, label %bb.lv, label %bb.db

bb.db:                                            ; preds = %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit"
  %i.sk = load ptr, ptr %1, align 8, !tbaa !705, !nonnull !230, !align !592
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !681
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sk, i64 8 ; 5 uses
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !591, !nonnull !230, !align !592
  %i.sp = call noundef i32 @_ZN5graph7graph_t8new_nodeEPcS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.so, ptr noundef null, ptr noundef null) ; 5 uses
  %i.sq = load ptr, ptr %i.sn, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !567
  %.not.i.i90 = icmp ult i32 %i.sp, %i.ss
  br i1 %.not.i.i90, label %bb.dd, label %bb.dc, !prof !219

bb.dc:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i91

bb.dd:                                            ; preds = %bb.db
  %i.st = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !573
  %i.sv = zext i32 %i.sp to i64
  %i.sw = getelementptr inbounds nuw [216 x i8], ptr %i.su, i64 %i.sv
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i91

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i91: ; preds = %bb.dd, %bb.dc
  %.0.i.i92 = phi ptr [ @_hb_CrapPool, %bb.dc ], [ %i.sw, %bb.dd ]
  %i.sx = zext i32 %i.sm to i64                   ; 2 uses
  %i.sy = call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.sx) #21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store ptr %i.sy, ptr %16, align 8, !tbaa !186
  %i.sz = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 %i.sx ; 2 uses
  store ptr %i.ta, ptr %i.sz, align 8, !tbaa !187
  %i.tb = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.tc = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 5 uses
  %i.td = getelementptr inbounds nuw i8, ptr %16, i64 96 ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %16, i64 100 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %16, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.tb, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.td monotonic, align 8
  store atomic i8 1, ptr %i.te monotonic, align 4
  store atomic ptr null, ptr %i.tf monotonic, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %16, i64 112 ; 3 uses
  store i8 1, ptr %i.tg, align 8, !tbaa !188
  %i.th = getelementptr inbounds nuw i8, ptr %16, i64 114 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %16, i64 136 ; 2 uses
  store ptr null, ptr %i.ti, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.th, i8 0, i64 18, i1 false)
  %i.tj = getelementptr inbounds nuw i8, ptr %16, i64 44 ; 22 uses
  store i32 0, ptr %i.tj, align 4, !tbaa !190
  %i.tk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 25 uses
  store ptr %i.sy, ptr %i.tk, align 8, !tbaa !191
  %i.tl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  store ptr %i.ta, ptr %i.tl, align 8, !tbaa !192
  %i.tm = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr null, ptr %i.tm, align 8, !tbaa !193
  %i.tn = getelementptr inbounds nuw i8, ptr %16, i64 40
  store i32 0, ptr %i.tn, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %16)
  %i.to = getelementptr inbounds nuw i8, ptr %16, i64 84 ; 5 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !195 ; 3 uses
  %i.tq = load i32, ptr %i.tc, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i.i.i93 = icmp slt i32 %i.tp, %i.tq
  br i1 %.not.i.i.i.i.i93, label %.critedge.i.i.i.i.i97, label %bb.de

bb.de:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i91
  %i.tr = add i32 %i.tp, 1                        ; 2 uses
  %i.ts = icmp slt i32 %i.tq, 0
  br i1 %i.ts, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i.i, label %bb.df, !prof !112

bb.df:                                            ; preds = %bb.de
  %.not.i26.i.i94 = icmp ugt i32 %i.tr, %i.tq
  br i1 %.not.i26.i.i94, label %.preheader.i.i.i147, label %..critedge_crit_edge.i.i.i.i.i95, !prof !112

.preheader.i.i.i147:                              ; preds = %bb.df, %.preheader.i.i.i147
  %.043.i.i.i148 = phi i32 [ %i.tv, %.preheader.i.i.i147 ], [ %i.tq, %bb.df ] ; 2 uses
  %i.tt = lshr i32 %.043.i.i.i148, 1
  %i.tu = add i32 %.043.i.i.i148, 8
  %i.tv = add i32 %i.tu, %i.tt                    ; 7 uses
  %i.tw = icmp ugt i32 %i.tr, %i.tv
  br i1 %i.tw, label %.preheader.i.i.i147, label %.thread.i.i.i149, !llvm.loop !1

.thread.i.i.i149:                                 ; preds = %.preheader.i.i.i147
  %i.tx = icmp ugt i32 %i.tv, 536870911
  br i1 %i.tx, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread33.i.i, label %bb.dg, !prof !112

bb.dg:                                            ; preds = %.thread.i.i.i149
  %.not49.i.i.i150 = icmp eq i32 %i.tq, 0
  %i.ty = getelementptr inbounds nuw i8, ptr %16, i64 88 ; 3 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i.i.i150, label %bb.dh, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i151

bb.dh:                                            ; preds = %bb.dg
  %.not9.i.i.i.i.i159 = icmp eq ptr %i.tz, null
  br i1 %.not9.i.i.i.i.i159, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i151, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.ua = shl nuw i32 %i.tv, 3
  %i.ub = zext i32 %i.ua to i64
  %i.uc = call ptr @hb_malloc(i64 noundef %i.ub) #21 ; 4 uses
  %.not10.i.i.i.i.i160 = icmp eq ptr %i.uc, null
  br i1 %.not10.i.i.i.i.i160, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i155, label %bb.dj, !prof !112

bb.dj:                                            ; preds = %bb.di
  %i.ud = load i32, ptr %i.to, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i28.i.i = icmp eq i32 %i.ud, 0
  br i1 %.not.i.i.i.i28.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i153, label %bb.dk, !prof !112

bb.dk:                                            ; preds = %bb.dj
  %i.ue = zext i32 %i.ud to i64
  %i.uf = shl nuw nsw i64 %i.ue, 3
  %i.ug = load ptr, ptr %i.ty, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uc, ptr readonly align 1 %i.ug, i64 %i.uf, i1 false), !alias.scope !2464
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i153

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i151: ; preds = %bb.dh, %bb.dg
  %i.uh = phi ptr [ null, %bb.dh ], [ %i.tz, %bb.dg ]
  %i.ui = shl nuw i32 %i.tv, 3
  %i.uj = zext i32 %i.ui to i64
  %i.uk = call ptr @hb_realloc(ptr noundef %i.uh, i64 noundef %i.uj) #21 ; 2 uses
  %.not22.i.i.i152 = icmp eq ptr %i.uk, null
  br i1 %.not22.i.i.i152, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i155, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i153, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i155: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i151, %bb.di
  %i.ul = load i32, ptr %i.tc, align 8, !tbaa !196 ; 2 uses
  %.not23.i.i.i156 = icmp ugt i32 %i.tv, %i.ul
  br i1 %.not23.i.i.i156, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread33.i.i, label %..critedge_crit_edge.i.i.i.i.i95, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread33.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i155, %.thread.i.i.i149
  %.sink.i.ph.in.i.i157 = phi i32 [ %i.tq, %.thread.i.i.i149 ], [ %i.ul, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i155 ]
  %.sink.i.ph.i.i158 = xor i32 %.sink.i.ph.in.i.i157, -1
  store i32 %.sink.i.ph.i.i158, ptr %i.tc, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i153: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i151, %bb.dk, %bb.dj
  %.1.i.i42.i.i.i154 = phi ptr [ %i.uk, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i.i151 ], [ %i.uc, %bb.dk ], [ %i.uc, %bb.dj ]
  store ptr %.1.i.i42.i.i.i154, ptr %i.ty, align 8, !tbaa !197
  store i32 %i.tv, ptr %i.tc, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i.i.i95

..critedge_crit_edge.i.i.i.i.i95:                 ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i.i153, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i.i155, %bb.df
  %.pre.i.i.i.i.i96 = load i32, ptr %i.to, align 4, !tbaa !195
  br label %.critedge.i.i.i.i.i97

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread33.i.i, %bb.de
  %i.um = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.um, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i.i98

.critedge.i.i.i.i.i97:                            ; preds = %..critedge_crit_edge.i.i.i.i.i95, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i91
  %i.un = phi i32 [ %.pre.i.i.i.i.i96, %..critedge_crit_edge.i.i.i.i.i95 ], [ %i.tp, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i91 ] ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !197
  %i.uq = add i32 %i.un, 1
  store i32 %i.uq, ptr %i.to, align 4, !tbaa !195
  %i.ur = zext i32 %i.un to i64
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.up, i64 %i.ur
  store ptr null, ptr %i.us, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i.i98

_ZN22hb_serialize_context_tC2EPvm.exit.i.i98:     ; preds = %.critedge.i.i.i.i.i97, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i.i
  store atomic i32 1, ptr %i.td monotonic, align 8
  store atomic i8 1, ptr %i.te monotonic, align 4
  store atomic ptr null, ptr %i.tf monotonic, align 8
  store i8 1, ptr %i.tg, align 8, !tbaa !188
  store ptr null, ptr %i.ti, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.th, i8 0, i64 18, i1 false)
  %i.ut = load ptr, ptr %i.tk, align 8, !tbaa !191 ; 11 uses
  %i.uu = load i32, ptr %i.tj, align 4, !tbaa !190 ; 2 uses
  %.not11.i.i.i.i.i.i99 = icmp eq i32 %i.uu, 0
  br i1 %.not11.i.i.i.i.i.i99, label %bb.dl, label %_ZN22hb_serialize_context_t15propagate_errorIR11hb_vector_tIPNS_8object_tELb0EEJR12hb_hashmap_tIPKS2_jLb0EEEEEbOT_DpOT0_.exit.i.i.i100, !prof !219

bb.dl:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i.i98
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 2 ; 4 uses
  %i.uw = ptrtoint ptr %i.ut to i64
  %i.ux = load ptr, ptr %i.tl, align 8, !tbaa !192
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = sub i64 %i.uy, %i.uw
  %i.va = icmp slt i64 %i.uz, 2
  br i1 %i.va, label %.critedge.sink.split.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i121, !prof !112

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i121:          ; preds = %bb.dl
  store i16 0, ptr %i.ut, align 1
  %.pre.i.i.i.i.i.i.i122 = load ptr, ptr %i.tk, align 8, !tbaa !191 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i122, i64 2
  store ptr %i.vb, ptr %i.tk, align 8, !tbaa !191
  %i.vc = icmp eq ptr %.pre.i.i.i.i.i.i.i122, null
  br i1 %i.vc, label %"_ZN2OTL18ClassDef_serializeI13hb_map_iter_tI16hb_filter_iter_tIS1_INS_6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EEEEbP22hb_serialize_context_tT_.exit.i.i", label %_ZN22hb_serialize_context_t10extend_minIN2OT8ClassDefEEEPT_S4_.exit.i.i.i.i, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT8ClassDefEEEPT_S4_.exit.i.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i121
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0205, i64 64, i1 false)
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  store ptr %i.a, ptr %.sroa.4218.0..sroa_idx, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %13, i64 72
  store ptr @_ZL9hb_second, ptr %i.vd, align 8, !tbaa !550, !alias.scope !2465
  %i.ve = getelementptr inbounds nuw i8, ptr %13, i64 80
  store ptr @_ZL11hb_identity, ptr %i.ve, align 8, !tbaa !544, !alias.scope !2465
  %i.vf = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dq, %_ZN22hb_serialize_context_t10extend_minIN2OT8ClassDefEEEPT_S4_.exit.i.i.i.i
  %i.vh = load i32, ptr %13, align 8, !tbaa !527  ; 2 uses
  switch i32 %i.vh, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit.i.i.i.i" [
    i32 1, label %bb.dn
    i32 2, label %bb.do
  ]

bb.dn:                                            ; preds = %bb.dm
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESL_EcvbEv.exit.i.i.i.i.i.i.i"

bb.do:                                            ; preds = %bb.dm
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESL_EcvbEv.exit.i.i.i.i.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESL_EcvbEv.exit.i.i.i.i.i.i.i": ; preds = %bb.do, %bb.dn
  %i.vi = load i32, ptr %i.vg, align 8, !tbaa !218, !alias.scope !2465
  %i.vj = load ptr, ptr %i.vf, align 8, !tbaa !276, !alias.scope !2465
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 2
  %i.vl = load i16, ptr %i.vk, align 1, !tbaa !211
  %i.vm = call noundef i16 @llvm.bswap.i16(i16 %i.vl)
  %i.vn = zext i16 %i.vm to i32
  %i.vo = icmp ult i32 %i.vi, %i.vn
  br i1 %i.vo, label %bb.dp, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exitthread-pre-split.i.i.i.i"

bb.dp:                                            ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESL_EcvbEv.exit.i.i.i.i.i.i.i"
  %i.vp = call i64 @_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS6_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev(ptr noundef nonnull align 8 dereferenceable(88) %13)
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4218.0..sroa_idx, align 8, !tbaa !707, !alias.scope !2465
  %.val.val.i.i.i.i.i.i.i.i.i = load i32, ptr %.val.i.i.i.i.i.i.i.i.i, align 4, !tbaa !218
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %i.vp, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  %.not.i.i.i.i.i.i.i146 = icmp eq i32 %.val.val.i.i.i.i.i.i.i.i.i, %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i146, label %bb.dq, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exitthread-pre-split.i.i.i.i"

bb.dq:                                            ; preds = %bb.dp
  %i.vq = call fastcc noundef nonnull align 8 dereferenceable(64) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 8 dereferenceable(88) %13) ; 0 uses
  br label %bb.dm, !llvm.loop !64

"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exitthread-pre-split.i.i.i.i": ; preds = %bb.dp, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESL_EcvbEv.exit.i.i.i.i.i.i.i"
  %.pr.i.i.i.i = load i32, ptr %13, align 8, !tbaa !527
  br label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit.i.i.i.i"

"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit.i.i.i.i": ; preds = %bb.dm, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exitthread-pre-split.i.i.i.i"
  %i.vr = phi i32 [ %.pr.i.i.i.i, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exitthread-pre-split.i.i.i.i" ], [ %i.vh, %bb.dm ]
  switch i32 %i.vr, label %.sink.split.i.i.i.i [
    i32 1, label %bb.dr
    i32 2, label %bb.ds
  ]

bb.dr:                                            ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit.i.i.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EcvbEv.exit.i.i.i.i"

bb.ds:                                            ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EE24hb_filter_iter_factory_tISI_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSU_6item_tEEE5valueEvE4typeELSD_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISU_Efp_EEEOSU_OSZ_.exit.i.i.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EcvbEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EcvbEv.exit.i.i.i.i": ; preds = %bb.ds, %bb.dr
  %i.vs = load i32, ptr %i.vg, align 8, !tbaa !218
  %i.vt = load ptr, ptr %i.vf, align 8, !tbaa !276
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  %i.vv = load i16, ptr %i.vu, align 1, !tbaa !211
  %i.vw = call noundef i16 @llvm.bswap.i16(i16 %i.vv)
  %i.vx = zext i16 %i.vw to i32
  %i.vy = icmp ult i32 %i.vs, %i.vx
  br i1 %i.vy, label %bb.dt, label %.sink.split.i.i.i.i, !prof !215

bb.dt:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EcvbEv.exit.i.i.i.i"
  %i.vz = call i64 @_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS6_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev(ptr noundef nonnull align 8 dereferenceable(88) %13)
  %.sroa.015.0.extract.trunc.i.i.i.i = trunc i64 %i.vz to i32 ; 4 uses
  %i.wa = call i64 @_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS6_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev(ptr noundef nonnull align 8 dereferenceable(88) %13)
  %.val.i.i.i.i51.i.i.i.i = load ptr, ptr %.sroa.4218.0..sroa_idx, align 8, !tbaa !707
  %.val.val.i.i.i.i52.i.i.i.i = load i32, ptr %.val.i.i.i.i51.i.i.i.i, align 4, !tbaa !218
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i53.i.i.i.i = lshr i64 %i.wa, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i54.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i53.i.i.i.i to i32
  %i.wb = sub i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i54.i.i.i.i, %.val.val.i.i.i.i52.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef nonnull readonly align 8 dereferenceable(88) %13, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call fastcc void @"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_E3endEv"(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 1 dereferenceable(1) %13)
  %i.wc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 12 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 7 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.wg = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.wj = getelementptr inbounds nuw i8, ptr %14, i64 20 ; 4 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.wl = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 2 uses
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i"

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i.loopexit": ; preds = %_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS6_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev.exit.i.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESL_EcvbEv.exit.i.i.i.i.i.i", %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv.exit.i.i.i.i"
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i"

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i.loopexit", %bb.dt
  %.042.i.i.i.i = phi i32 [ %.sroa.015.0.extract.trunc.i.i.i.i, %bb.dt ], [ %.244.i.i.i.i, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i.loopexit" ] ; 4 uses
  %.039.i.i.i.i = phi i32 [ 0, %bb.dt ], [ %i.wy, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i.loopexit" ] ; 2 uses
  %.037.i.i.i.i = phi i32 [ 1, %bb.dt ], [ %.2.i.i.i.i, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i.loopexit" ] ; 3 uses
  %.035.i.i.i.i = phi i32 [ %.sroa.015.0.extract.trunc.i.i.i.i, %bb.dt ], [ %.136.i.i.i.i, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i.loopexit" ] ; 2 uses
  %.033.i.i.i.i = phi i32 [ %i.wb, %bb.dt ], [ %.134.i.i.i.i, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i.loopexit" ] ; 2 uses
  %i.wm = load i32, ptr %14, align 8, !tbaa !527  ; 2 uses
  %i.wn = load i32, ptr %15, align 8, !tbaa !527
  %.not.i.i.i.i.i.i.i.i.i126 = icmp eq i32 %i.wm, %i.wn
  br i1 %.not.i.i.i.i.i.i.i.i.i126, label %bb.du, label %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i", !prof !219

bb.du:                                            ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i"
  switch i32 %i.wm, label %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread195.i.i.i.i" [
    i32 1, label %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.i.i.i.i"
    i32 2, label %.split.i.i.i.i129
  ]

.split.i.i.i.i129:                                ; preds = %bb.du
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.wo = load i32, ptr %i.wc, align 8, !tbaa !535
  %i.wp = load i32, ptr %i.wd, align 8, !tbaa !535
  %.not.i.i.i.i.i.i.i.i.i.i130 = icmp ne i32 %i.wo, %i.wp
  %i.wq = load i32, ptr %i.we, align 8
  %i.wr = load i32, ptr %i.wf, align 8
  %i.ws = icmp ne i32 %i.wq, %i.wr
  %i.wt = select i1 %.not.i.i.i.i.i.i.i.i.i.i130, i1 true, i1 %i.ws
  br i1 %i.wt, label %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i", label %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread195.i.i.i.i"

"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.i.i.i.i": ; preds = %bb.du
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.wu = load i32, ptr %i.wc, align 8, !tbaa !530
  %i.wv = load i32, ptr %i.wd, align 8, !tbaa !530
  %.not.i.i.i.i145 = icmp eq i32 %i.wu, %i.wv
  br i1 %.not.i.i.i.i145, label %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread195.i.i.i.i", label %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i"

"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread195.i.i.i.i": ; preds = %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.i.i.i.i", %.split.i.i.i.i129, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  %.not45.i.i.i.i = icmp eq i32 %.039.i.i.i.i, 0
  %i.ww = icmp ugt i32 %.042.i.i.i.i, 65535       ; 2 uses
  br i1 %.not45.i.i.i.i, label %.thread.i.i.i.i, label %bb.fa

"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i": ; preds = %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.i.i.i.i", %.split.i.i.i.i129, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIS0_IS1_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EESI_RK4$_19LSD_0EESL_EppEv.exit.i.i.i.i"
  %i.wx = call i64 @_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS6_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev(ptr noundef nonnull align 8 dereferenceable(88) %14) ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %i.wx to i32 ; 4 uses
  %i.wy = add i32 %.039.i.i.i.i, 1
  %i.wz = icmp eq i32 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.015.0.extract.trunc.i.i.i.i
  br i1 %i.wz, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i"
  %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i61.i.i.i.i = lshr i64 %i.wx, 32
  %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i62.i.i.i.i = trunc nuw i64 %.sroa.2.0.extract.shift.i.i.i.i.i.i.i.i.i61.i.i.i.i to i32
  %.val.i.i.i.i59.i.i.i.i = load ptr, ptr %i.wg, align 8, !tbaa !707
  %.val.val.i.i.i.i60.i.i.i.i = load i32, ptr %.val.i.i.i.i59.i.i.i.i, align 4, !tbaa !218
  %i.xa = sub i32 %.sroa.2.0.extract.trunc.i.i.i.i.i.i.i.i.i62.i.i.i.i, %.val.val.i.i.i.i60.i.i.i.i ; 2 uses
  %spec.select.i.i.i.i = call i32 @llvm.umax.i32(i32 %.042.i.i.i.i, i32 %.sroa.0.0.extract.trunc.i.i.i.i)
  %i.xb = add i32 %.035.i.i.i.i, 1
  %.not47.i.i.i.i = icmp ne i32 %i.xb, %.sroa.0.0.extract.trunc.i.i.i.i
  %.not48.i.i.i.i = icmp ne i32 %.033.i.i.i.i, %i.xa
  %or.cond.not.i.i.i.i = select i1 %.not47.i.i.i.i, i1 true, i1 %.not48.i.i.i.i
  %i.xc = zext i1 %or.cond.not.i.i.i.i to i32
  %.138.i.i.i.i = add i32 %.037.i.i.i.i, %i.xc
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i"
  %.244.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.dv ], [ %.042.i.i.i.i, %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i" ]
  %.2.i.i.i.i = phi i32 [ %.138.i.i.i.i, %bb.dv ], [ %.037.i.i.i.i, %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i" ]
  %.136.i.i.i.i = phi i32 [ %.sroa.0.0.extract.trunc.i.i.i.i, %bb.dv ], [ %.035.i.i.i.i, %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i" ]
  %.134.i.i.i.i = phi i32 [ %i.xa, %bb.dv ], [ %.033.i.i.i.i, %"_ZNK16hb_filter_iter_tI13hb_map_iter_tIS_IS0_IN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS7_11clone_rangeES9_jjEUljE0_RK3$_7LSC_0EEZNKS7_11clone_rangeES9_jjEUl9hb_pair_tIjjEE_LSB_1ELSC_0EESH_RK4$_19LSC_0EEneERKSQ_.exit.thread.i.i.i.i" ]
  br label %"_ZNK4$_23clIRZNK5graph14PairPosFormat211clone_rangeERNS2_15split_context_tEjjEUljE0_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS8_OS9_.exit.i.i.i.i.i.i"

"_ZNK4$_23clIRZNK5graph14PairPosFormat211clone_rangeERNS2_15split_context_tEjjEUljE0_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS8_OS9_.exit.i.i.i.i.i.i": ; preds = %"_ZNK4$_23clIRZNK5graph14PairPosFormat211clone_rangeERNS2_15split_context_tEjjEUljE0_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS8_OS9_.exit.i.i.i.i.i.i.backedge", %bb.dw
  %i.xd = load i32, ptr %14, align 8, !tbaa !527  ; 2 uses
  switch i32 %i.xd, label %_ZNR9hb_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE9hb_pair_tIjjEEppEv.exit.i.i.i.i.i.i [
    i32 1, label %bb.dx
    i32 2, label %bb.dy
  ]

bb.dx:                                            ; preds = %"_ZNK4$_23clIRZNK5graph14PairPosFormat211clone_rangeERNS2_15split_context_tEjjEUljE0_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS8_OS9_.exit.i.i.i.i.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.xe = load i32, ptr %i.wc, align 8, !tbaa !530
  %i.xf = add i32 %i.xe, 1
  store i32 %i.xf, ptr %i.wc, align 8, !tbaa !530
  br label %_ZNR9hb_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS7_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EE9hb_pair_tIjjEEppEv.exitthread-pre-split.i.i.i.i.i.i

bb.dy:                                            ; preds = %"_ZNK4$_23clIRZNK5graph14PairPosFormat211clone_rangeERNS2_15split_context_tEjjEUljE0_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS8_OS9_.exit.i.i.i.i.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.xg = load i32, ptr %i.we, align 8, !tbaa !533
  %i.xh = load ptr, ptr %i.wh, align 8, !tbaa !534 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xj = load i32, ptr %i.wc, align 8, !tbaa !535 ; 2 uses
  %i.xk = load i16, ptr %i.xi, align 1, !tbaa !211
  %i.xl = call noundef i16 @llvm.bswap.i16(i16 %i.xk)
  %i.xm = zext i16 %i.xl to i32
  %.not.i.i.i.i.i.i.i.i151.i.i.i.i = icmp ult i32 %i.xj, %i.xm
end_hunk_5
begin_hunk_6_@_ZNK5graph14PairPosFormat211clone_rangeERNS0_15split_context_tEjj:bb.a
bb.lb:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit18.i
  %i.bif = getelementptr inbounds nuw i8, ptr %.0.i17.i, i64 16
  %i.big = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bif, i32 noundef %i.bid, i1 noundef zeroext false)
  br i1 %i.big, label %bb.lc, label %bb.lf, !prof !306

bb.lc:                                            ; preds = %bb.lb
  %i.bih = load i32, ptr %i.bib, align 4, !tbaa !272 ; 3 uses
  %i.bii = icmp ugt i32 %i.bid, %i.bih
  br i1 %i.bii, label %bb.ld, label %bb.lg

bb.ld:                                            ; preds = %bb.lc
  %i.bij = sub nuw nsw i32 %i.bid, %i.bih
  %i.bik = mul i32 %i.bij, 12                     ; 2 uses
  %.not.i.i.i.i.i20.i = icmp eq i32 %i.bik, 0
  br i1 %.not.i.i.i.i.i20.i, label %bb.lg, label %bb.le, !prof !112

bb.le:                                            ; preds = %bb.ld
  %i.bil = getelementptr inbounds nuw i8, ptr %.0.i17.i, i64 24
  %i.bim = load ptr, ptr %i.bil, align 8, !tbaa !273
  %i.bin = zext nneg i32 %i.bih to i64
  %i.bio = getelementptr inbounds nuw [12 x i8], ptr %i.bim, i64 %i.bin
  %i.bip = zext i32 %i.bik to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bio, i8 0, i64 %i.bip, i1 false)
  br label %bb.lg

bb.lf:                                            ; preds = %bb.lb, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %bb.lh

bb.lg:                                            ; preds = %bb.le, %bb.ld, %bb.lc
  store i32 %i.bid, ptr %i.bib, align 4, !tbaa !272
  %i.biq = getelementptr inbounds nuw i8, ptr %.0.i17.i, i64 24
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !273
  %i.bis = zext i32 %i.bic to i64
  %i.bit = getelementptr inbounds nuw [12 x i8], ptr %i.bir, i64 %i.bis
  br label %bb.lh

.critedge.sink.split.i:                           ; preds = %bb.km, %"_ZN2OTL18ClassDef_serializeI13hb_map_iter_tI16hb_filter_iter_tIS1_INS_6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EEEEbP22hb_serialize_context_tT_.exit.i.i", %bb.dl
  %.sink.i = phi i32 [ 4, %bb.dl ], [ %i.bfp, %bb.km ], [ 1, %"_ZN2OTL18ClassDef_serializeI13hb_map_iter_tI16hb_filter_iter_tIS1_INS_6Layout6Common8Coverage6iter_tEZNK5graph14PairPosFormat211clone_rangeERNS8_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS8_11clone_rangeESA_jjEUljE0_RK3$_7LSD_0EEZNKS8_11clone_rangeESA_jjEUl9hb_pair_tIjjEE_LSC_1ELSD_0EEEEbP22hb_serialize_context_tT_.exit.i.i" ]
  store i32 %.sink.i, ptr %i.tj, align 4, !tbaa !190
  br label %.critedge.i104

.critedge.i104:                                   ; preds = %.critedge.sink.split.i, %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i112, %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i105, %bb.kl
  %.sink205.i.ph.i = phi ptr [ %i.sy, %_ZN22hb_serialize_context_t13end_serializeEv.exit.i.i105 ], [ %i.bgf, %_ZN5graph24gsubgpos_graph_context_t10add_bufferEPc.exit.i.i112 ], [ %i.sy, %bb.kl ], [ %i.sy, %.critedge.sink.split.i ]
  call void @hb_free(ptr noundef %.sink205.i.ph.i) #21
  br label %"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread"

"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread": ; preds = %_ZN22hb_serialize_context_t13end_serializeEv.exit.thread172.i.i, %bb.kp, %.critedge.i104
  call void @_ZN22hb_serialize_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.lv

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.0.i19.i = phi ptr [ @_hb_CrapPool, %bb.lf ], [ %i.bit, %bb.lg ] ; 4 uses
  %i.biu = load i32, ptr %.0.i19.i, align 4
  %i.biv = and i32 %i.biu, -8
  %i.biw = or disjoint i32 %i.biv, 2
  store i32 %i.biw, ptr %.0.i19.i, align 4
  %i.bix = getelementptr inbounds nuw i8, ptr %.0.i19.i, i64 8
  store i32 %i.sp, ptr %i.bix, align 4, !tbaa !304
  %i.biy = getelementptr inbounds nuw i8, ptr %.0.i19.i, i64 4
  store i32 8, ptr %i.biy, align 4, !tbaa !316
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i.i92, i32 noundef range(i32 0, -1) %i.m, i1 noundef zeroext false)
  %i.biz = load i32, ptr %i.d, align 8, !tbaa !676 ; 2 uses
  %i.bja = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.bjb = load i32, ptr %i.o, align 4, !tbaa !567 ; 2 uses
  %.not.i.i.i161 = icmp ult i32 %i.biz, %i.bjb
  %i.bjc = load ptr, ptr %i.q, align 8            ; 2 uses
  %i.bjd = zext i32 %i.biz to i64
  %i.bje = getelementptr inbounds nuw [216 x i8], ptr %i.bjc, i64 %i.bjd
  %.0.i.i.i162 = select i1 %.not.i.i.i161, ptr %i.bje, ptr @_hb_NullPool, !prof !219 ; 4 uses
  %i.bjf = load ptr, ptr %.0.i.i.i162, align 8, !tbaa !315 ; 2 uses
  %i.bjg = icmp uge ptr %i.bja, %i.bjf
  %i.bjh = getelementptr inbounds nuw i8, ptr %.0.i.i.i162, i64 8
  %i.bji = load ptr, ptr %i.bjh, align 8
  %.not.i163 = icmp ult ptr %i.bja, %i.bji
  %or.cond.i164 = select i1 %i.bjg, i1 %.not.i163, i1 false
  br i1 %or.cond.i164, label %bb.li, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174

bb.li:                                            ; preds = %bb.lh
  %i.bjj = getelementptr inbounds nuw i8, ptr %.0.i.i.i162, i64 20
  %i.bjk = load i32, ptr %i.bjj, align 4, !tbaa !279 ; 2 uses
  %.not2427.not.i166 = icmp eq i32 %i.bjk, 0
  br i1 %.not2427.not.i166, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174, label %.lr.ph.i167

.lr.ph.i167:                                      ; preds = %bb.li
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0.i.i.i162, i64 24
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !655
  %wide.trip.count.i168 = zext i32 %i.bjk to i64
  br label %bb.lk

bb.lj:                                            ; preds = %bb.lk
  %indvars.iv.next.i171 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count.i168
  br i1 %exitcond.not.i172, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174, label %bb.lk, !llvm.loop !53

bb.lk:                                            ; preds = %bb.lj, %.lr.ph.i167
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph.i167 ], [ %indvars.iv.next.i171, %bb.lj ] ; 2 uses
  %i.bjn = getelementptr inbounds nuw [12 x i8], ptr %i.bjm, i64 %indvars.iv.i169 ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 4
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !316
  %i.bjq = zext i32 %i.bjp to i64
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjf, i64 %i.bjq
  %.not23.not.i170 = icmp eq ptr %i.bja, %i.bjr
  br i1 %.not23.not.i170, label %.thread.i173, label %bb.lj

.thread.i173:                                     ; preds = %bb.lk
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjn, i64 8
  %i.bjt = load i32, ptr %i.bjs, align 4, !tbaa !304
  br label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174: ; preds = %bb.lj, %bb.lh, %bb.li, %.thread.i173
  %.4.i165 = phi i32 [ -1, %bb.lh ], [ %i.bjt, %.thread.i173 ], [ -1, %bb.li ], [ -1, %bb.lj ] ; 3 uses
  %.not.i175 = icmp ult i32 %i.m, %i.bjb
  br i1 %.not.i175, label %bb.lm, label %bb.ll, !prof !219

bb.ll:                                            ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177

bb.lm:                                            ; preds = %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit174
  %i.bju = getelementptr inbounds nuw [216 x i8], ptr %i.bjc, i64 %i.s
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177: ; preds = %bb.ll, %bb.lm
  %.0.i176 = phi ptr [ @_hb_CrapPool, %bb.ll ], [ %i.bju, %bb.lm ] ; 4 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %.0.i176, i64 20 ; 3 uses
  %i.bjw = load i32, ptr %i.bjv, align 4, !tbaa !272 ; 2 uses
  %i.bjx = add i32 %i.bjw, 1                      ; 5 uses
  %i.bjy = icmp slt i32 %i.bjx, 0
  br i1 %i.bjy, label %bb.lr, label %bb.ln, !prof !112

bb.ln:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177
  %i.bjz = getelementptr inbounds nuw i8, ptr %.0.i176, i64 16
  %i.bka = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.bjz, i32 noundef %i.bjx, i1 noundef zeroext false)
  br i1 %i.bka, label %bb.lo, label %bb.lr, !prof !306

bb.lo:                                            ; preds = %bb.ln
  %i.bkb = load i32, ptr %i.bjv, align 4, !tbaa !272 ; 3 uses
  %i.bkc = icmp ugt i32 %i.bjx, %i.bkb
  br i1 %i.bkc, label %bb.lp, label %bb.ls

bb.lp:                                            ; preds = %bb.lo
  %i.bkd = sub nuw nsw i32 %i.bjx, %i.bkb
  %i.bke = mul i32 %i.bkd, 12                     ; 2 uses
  %.not.i.i.i.i.i179 = icmp eq i32 %i.bke, 0
  br i1 %.not.i.i.i.i.i179, label %bb.ls, label %bb.lq, !prof !112

bb.lq:                                            ; preds = %bb.lp
  %i.bkf = getelementptr inbounds nuw i8, ptr %.0.i176, i64 24
  %i.bkg = load ptr, ptr %i.bkf, align 8, !tbaa !273
  %i.bkh = zext nneg i32 %i.bkb to i64
  %i.bki = getelementptr inbounds nuw [12 x i8], ptr %i.bkg, i64 %i.bkh
  %i.bkj = zext i32 %i.bke to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.bki, i8 0, i64 %i.bkj, i1 false)
  br label %bb.ls

bb.lr:                                            ; preds = %bb.ln, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

bb.ls:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  store i32 %i.bjx, ptr %i.bjv, align 4, !tbaa !272
  %i.bkk = getelementptr inbounds nuw i8, ptr %.0.i176, i64 24
  %i.bkl = load ptr, ptr %i.bkk, align 8, !tbaa !273
  %i.bkm = zext i32 %i.bjw to i64
  %i.bkn = getelementptr inbounds nuw [12 x i8], ptr %i.bkl, i64 %i.bkm
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit: ; preds = %bb.lr, %bb.ls
  %.0.i178 = phi ptr [ @_hb_CrapPool, %bb.lr ], [ %i.bkn, %bb.ls ] ; 4 uses
  %i.bko = load i32, ptr %.0.i178, align 4
  %i.bkp = and i32 %i.bko, -8
  %i.bkq = or disjoint i32 %i.bkp, 2
  store i32 %i.bkq, ptr %.0.i178, align 4
  %i.bkr = getelementptr inbounds nuw i8, ptr %.0.i178, i64 8
  store i32 %.4.i165, ptr %i.bkr, align 4, !tbaa !304
  %i.bks = getelementptr inbounds nuw i8, ptr %.0.i178, i64 4
  store i32 10, ptr %i.bks, align 4, !tbaa !316
  %i.bkt = load i32, ptr %i.o, align 4, !tbaa !567
  %.not.i180 = icmp ult i32 %.4.i165, %i.bkt
  br i1 %.not.i180, label %bb.lu, label %bb.lt, !prof !219

bb.lt:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182

bb.lu:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  %i.bku = load ptr, ptr %i.q, align 8, !tbaa !573
  %i.bkv = zext i32 %.4.i165 to i64
  %i.bkw = getelementptr inbounds nuw [216 x i8], ptr %i.bku, i64 %i.bkv
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182: ; preds = %bb.lt, %bb.lu
  %.0.i181 = phi ptr [ @_hb_CrapPool, %bb.lt ], [ %i.bkw, %bb.lu ]
  call void @_ZN5graph7graph_t8vertex_t10add_parentEjb(ptr noundef nonnull align 8 dereferenceable(216) %.0.i181, i32 noundef %i.m, i1 noundef zeroext false)
  br label %bb.lv

bb.lv:                                            ; preds = %"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread", %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit", %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182
  %.0 = phi i32 [ %i.m, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit182 ], [ -1, %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit" ], [ -1, %"_ZN5graph8ClassDef13add_class_defI13hb_map_iter_tI16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EEEEbRNS_24gsubgpos_graph_context_tEjjT_j.exit.thread" ], [ -1, %"_ZN5graph8Coverage12add_coverageI13hb_map_iter_tIS2_I16hb_filter_iter_tIS2_IN2OT6Layout6Common8Coverage6iter_tEZNKS_14PairPosFormat211clone_rangeERNS9_15split_context_tEjjEUljE_L24hb_function_sortedness_t1ELPv0EEZNKS9_11clone_rangeESB_jjEUljE0_RK3$_7LSE_0EEZNKS9_11clone_rangeESB_jjEUl9hb_pair_tIjjEE_LSD_1ELSE_0EERK3$_6LSD_1ELSE_0EEEEPS0_RNS_24gsubgpos_graph_context_tEjjT_j.exit.thread" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0205)
  br label %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread

_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread: ; preds = %bb.v, %bb.t, %bb.s, %bb.u, %bb.q, %bb.n, %bb.m, %bb.o, %.split, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit, %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit, %bb.lv
  %.1 = phi i32 [ %.0, %bb.lv ], [ -1, %_ZNK5graph8ClassDef8sanitizeERKNS_7graph_t8vertex_tE.exit ], [ -1, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit ], [ -1, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit79 ], [ -1, %.split ], [ -1, %bb.q ], [ -1, %bb.o ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.u ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.lw

bb.lw:                                            ; preds = %bb.a, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread
  %.2 = phi i32 [ %.1, %_ZNK5graph8Coverage8sanitizeERKNS_7graph_t8vertex_tE.exit.thread ], [ -1, %bb.a ]
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5graph14PairPosFormat220clone_class1_recordsERNS0_15split_context_tEjjj(ptr noundef nonnull align 1 dereferenceable(18) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = zext i32 %2 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !677  ; 2 uses
  %i.e = sub i32 %4, %3
  %i.f = mul i32 %i.d, %i.e                       ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.b, !prof !112

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %1, align 8, !tbaa !705, !nonnull !230, !align !592
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !567
  %.not.i.i = icmp ult i32 %2, %i.l
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %i.a
  %.0.i.i = select i1 %.not.i.i, ptr %i.o, ptr @_hb_NullPool, !prof !219
  %i.p = load ptr, ptr %.0.i.i, align 8, !tbaa !315
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = mul i32 %i.d, %3
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.t, i64 %i.g, i1 false), !alias.scope !2474
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2475, !nonnull !230, !align !592
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !345
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !2476, !nonnull !230, !align !592
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !345
  %.not66 = icmp eq i32 %i.ab, 0
  br i1 %.not66, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9hb_memcpyPvPKvm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !211 ; 2 uses
  %i.ae = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.af = zext i16 %i.ae to i32                   ; 3 uses
  %i.ag = icmp ult i32 %3, %4
  br i1 %i.ag, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.d
  %.not71 = icmp eq i16 %i.ad, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.04270 = phi i32 [ %i.ap, %._crit_edge ], [ %3, %.preheader.lr.ph ] ; 3 uses
  %i.am = mul i32 %.04270, %i.af
  %i.an = sub nuw i32 %.04270, %3
  %i.ao = mul i32 %i.an, %i.af
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65
  %i.ap = add nuw i32 %.04270, 1                  ; 2 uses
  %exitcond74.not = icmp eq i32 %i.ap, %4
  br i1 %exitcond74.not, label %.loopexit, label %.preheader, !llvm.loop !2471

bb.e:                                             ; preds = %.preheader, %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65
  %.069 = phi i32 [ 0, %.preheader ], [ %i.fu, %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit65 ] ; 3 uses
  %i.aq = load i32, ptr %i.ah, align 8, !tbaa !678 ; 2 uses
  %i.ar = add i32 %.069, %i.am
  %i.as = mul i32 %i.aq, %i.ar                    ; 2 uses
  %i.at = load i32, ptr %i.ai, align 4, !tbaa !679 ; 2 uses
  %i.au = add i32 %i.as, %i.at
  %i.av = add i32 %.069, %i.ao
  %i.aw = mul i32 %i.aq, %i.av                    ; 2 uses
  %i.ax = add i32 %i.aw, %i.at
  %i.ay = load ptr, ptr %i.u, align 8, !tbaa !2475, !nonnull !230, !align !592 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !346 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !345 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %.idx26.i = shl nuw nsw i64 %i.bd, 2
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.idx26.i
  %.not24.i = icmp eq i32 %i.bc, 0
  br i1 %.not24.i, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.bf = load ptr, ptr %1, align 8, !tbaa !705, !nonnull !230, !align !592
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !567
  %.not.i.i.i = icmp ult i32 %2, %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [216 x i8], ptr %i.bl, i64 %i.a
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.bm, ptr @_hb_NullPool, !prof !219
  %i.bn = load ptr, ptr %.0.i.i.i, align 8, !tbaa !315
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.aj, align 8, !tbaa !2477, !nonnull !230, !align !592
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !610
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZNK5graph14PairPosFormat222transfer_device_tablesERNS0_15split_context_tEjRK11hb_vector_tIjLb0EEjj.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i
  %.02125.i = phi ptr [ %i.di, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i ], [ %i.ba, %.lr.ph.i ] ; 2 uses
  %i.bt = load i32, ptr %.02125.i, align 4, !tbaa !218 ; 2 uses
  %i.bu = add i32 %i.bt, %i.as                    ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.bv
  %.idx.i = shl i32 %i.bu, 1
  %i.bx = add i32 %.idx.i, 16                     ; 3 uses
  %i.by = load ptr, ptr %i.aj, align 8, !tbaa !2477, !nonnull !230, !align !592 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !610 ; 3 uses
  %.not.i.i44 = icmp eq ptr %i.ca, null
  br i1 %.not.i.i44, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.i
  %i.cb = mul i32 %i.bx, 506952113
  %i.cc = and i32 %i.cb, 1073741822
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !628
  %i.cf = urem i32 %i.cc, %i.ce                   ; 2 uses
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4            ; 2 uses
  %i.ck = and i32 %i.cj, 2
  %.not15.i.i.i.i = icmp eq i32 %i.ck, 0
  br i1 %.not15.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = load i32, ptr %i.ch, align 4, !tbaa !218
  %i.co = icmp eq i32 %i.cn, %i.bx
  br i1 %i.co, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.cp = load i32, ptr %i.cv, align 4, !tbaa !218
  %i.cq = icmp eq i32 %i.cp, %i.bx
  br i1 %i.cq, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !51

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.01016.i20.i.i.i = phi i32 [ %i.ct, %bb.g ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.cr, %bb.g ], [ 0, %.lr.ph.i.i.i.i ]
  %i.cr = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.cs = add i32 %i.cr, %.01016.i20.i.i.i
  %i.ct = and i32 %i.cs, %i.cm                    ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = and i32 %i.cx, 2
  %.not.i.i.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i.i.i.i, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i, label %bb.g, !llvm.loop !51

_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i: ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.cx, %bb.g ]
  %i.cz = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.cz, label %bb.h, label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i

bb.h:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i
  %i.da = load ptr, ptr %1, align 8, !tbaa !705, !nonnull !230, !align !592
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !591, !nonnull !230, !align !592
  %i.dd = load i32, ptr %i.ak, align 8, !tbaa !676
  %i.de = add i32 %i.bt, %i.aw
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.df
  %i.dh = tail call noundef i32 @_ZN5graph7graph_t10move_childIN2OT6OffsetINS2_7NumTypeILb1EtLj2EEELb1EEEEEjjPKT_jS9_(ptr noundef nonnull align 8 dereferenceable(88) %i.dc, i32 noundef %i.dd, ptr noundef nonnull %i.bw, i32 noundef %2, ptr noundef nonnull %i.dg) ; 0 uses
  br label %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i

_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.thread.i: ; preds = %.lr.ph.i.i.i, %bb.h, %_ZNK12hb_hashmap_tIjjLb0EE3hasIjEEbRKjPPT_.exit.i, %bb.f, %.lr.ph.split.i
end_hunk_6
begin_hunk_7_@_ZN5graph14PairPosFormat26shrinkERNS0_15split_context_tEj:bb.a

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i: ; preds = %bb.p, %bb.q
  %.sroa.11.0 = phi i32 [ %i.dj, %bb.q ], [ 0, %bb.p ]
  %i.dl = load i16, ptr @_hb_Null_OT_RangeRecord, align 1, !tbaa !211, !noalias !2595
  %i.dm = tail call noundef i16 @llvm.bswap.i16(i16 %i.dl)
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i: ; preds = %bb.q
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2595, !srcloc !212
  %.pre11.i.i.i = load i16, ptr %i.de, align 1, !tbaa !211, !noalias !2595
  %i.dn = icmp eq i16 %.pre11.i.i.i, 0
  %i.do = load i16, ptr %i.dg, align 1, !tbaa !211, !noalias !2595
  %i.dp = tail call noundef i16 @llvm.bswap.i16(i16 %i.do) ; 2 uses
  br i1 %i.dn, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, label %bb.r, !prof !220

bb.r:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !2595, !srcloc !212
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i: ; preds = %bb.r, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i
  %.sroa.11.1 = phi i32 [ %.sroa.11.0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.dj, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.dj, %bb.r ]
  %i.dq = phi i16 [ %i.dm, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ %i.dp, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.dp, %bb.r ]
  %.0.i6.i.i.i = phi ptr [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.thread.i.i.i ], [ @_hb_Null_OT_RangeRecord, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit4.i.i.i ], [ %i.dg, %bb.r ]
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i6.i.i.i, i64 2
  %i.ds = load i16, ptr %i.dr, align 1, !tbaa !211, !noalias !2595
  %i.dt = tail call noundef i16 @llvm.bswap.i16(i16 %i.ds)
  %i.du = icmp ugt i16 %i.dq, %i.dt
  br i1 %i.du, label %bb.s, label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit, !prof !112

bb.s:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i
  %i.dv = load i16, ptr %i.de, align 1, !tbaa !211, !noalias !2595
  %i.dw = tail call noundef i16 @llvm.bswap.i16(i16 %i.dv)
  %i.dx = zext i16 %i.dw to i32
  br label %_ZNK2OT6Layout6Common8Coverage4iterEv.exit

_ZNK2OT6Layout6Common8Coverage4iterEv.exit:       ; preds = %bb.n, %bb.o, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i, %bb.s
  %.sroa.11.2 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.s ], [ %.sroa.11.1, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ]
  %.sroa.5118.0 = phi ptr [ null, %bb.n ], [ %i.aj, %bb.o ], [ %i.aj, %bb.s ], [ %i.aj, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ]
  %.sroa.7.0 = phi i32 [ 0, %bb.n ], [ 0, %bb.o ], [ %i.dx, %bb.s ], [ 0, %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit7.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33), !noalias !2596
  store i32 %i.dd, ptr %33, align 8, !noalias !2596
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 4
  store i32 0, ptr %.sroa.4124.0..sroa_idx, align 4, !noalias !2596
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %.sroa.5118.0, ptr %.sroa.5125.0..sroa_idx, align 8, !noalias !2596
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 16
  store i32 %.sroa.7.0, ptr %.sroa.6126.0..sroa_idx, align 8, !noalias !2596
  %.sroa.7127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 20
  store i32 0, ptr %.sroa.7127.0..sroa_idx, align 4, !noalias !2596
  %.sroa.8128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 24
  store i32 %.sroa.11.2, ptr %.sroa.8128.0..sroa_idx, align 8, !noalias !2596
  %.sroa.9129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 28
  store i32 0, ptr %.sroa.9129.0..sroa_idx, align 4, !noalias !2596
  %.sroa.10130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %34, ptr %.sroa.10130.0..sroa_idx, align 8, !noalias !2596
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EEC2ERKSD_SE_SH_"(ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull readonly align 8 dereferenceable(40) %33, ptr nonnull %i.a, ptr noundef nonnull align 1 dereferenceable(1) @_ZL9hb_second)
  call void @llvm.lifetime.end.p0(ptr nonnull %33), !noalias !2596
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull readonly align 8 dereferenceable(56) %35, i64 56, i1 false)
  %i.dy = load ptr, ptr %1, align 8, !tbaa !705, !nonnull !230, !align !592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0111, ptr noundef nonnull align 8 dereferenceable(56) %35, i64 56, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %32, i64 16
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit
  %.0.i.i.i.i = phi i32 [ 0, %_ZNK2OT6Layout6Common8Coverage4iterEv.exit ], [ %i.ek, %bb.w ] ; 2 uses
  %i.eb = load i32, ptr %32, align 8, !tbaa !527
  switch i32 %i.eb, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEjE3lenEv.exit" [
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i"

bb.v:                                             ; preds = %bb.t
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i": ; preds = %bb.v, %bb.u
  %i.ec = load i32, ptr %i.ea, align 8, !tbaa !218
  %i.ed = load ptr, ptr %i.dz, align 8, !tbaa !276
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ef = load i16, ptr %i.ee, align 1, !tbaa !211
  %i.eg = call noundef i16 @llvm.bswap.i16(i16 %i.ef)
  %i.eh = zext i16 %i.eg to i32
  %i.ei = icmp ult i32 %i.ec, %i.eh
  br i1 %i.ei, label %bb.w, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEjE3lenEv.exit"

bb.w:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i"
  %i.ej = call fastcc noundef nonnull align 8 dereferenceable(56) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %32), !noalias !2597 ; 0 uses
  %i.ek = add i32 %.0.i.i.i.i, 1
  br label %bb.t, !llvm.loop !2517

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEjE3lenEv.exit": ; preds = %bb.t, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #21
  %i.el = shl i32 %.0.i.i.i.i, 1
  %i.em = add i32 %i.el, 4
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.en) #21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  store ptr %i.eo, ptr %31, align 8, !tbaa !186
  %i.ep = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en ; 2 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !187
  %i.er = getelementptr inbounds nuw i8, ptr %31, i64 48
  %i.es = getelementptr inbounds nuw i8, ptr %31, i64 80 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %31, i64 96 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %31, i64 100 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %31, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.er, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.et monotonic, align 8
  store atomic i8 1, ptr %i.eu monotonic, align 4
  store atomic ptr null, ptr %i.ev monotonic, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %31, i64 112 ; 3 uses
  store i8 1, ptr %i.ew, align 8, !tbaa !188
  %i.ex = getelementptr inbounds nuw i8, ptr %31, i64 114 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %31, i64 136 ; 2 uses
  store ptr null, ptr %i.ey, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ex, i8 0, i64 18, i1 false)
  %i.ez = getelementptr inbounds nuw i8, ptr %31, i64 44 ; 17 uses
  store i32 0, ptr %i.ez, align 4, !tbaa !190
  %i.fa = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 21 uses
  store ptr %i.eo, ptr %i.fa, align 8, !tbaa !191
  %i.fb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 9 uses
  store ptr %i.eq, ptr %i.fb, align 8, !tbaa !192
  %i.fc = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr null, ptr %i.fc, align 8, !tbaa !193
  %i.fd = getelementptr inbounds nuw i8, ptr %31, i64 40
  store i32 0, ptr %i.fd, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %31)
  %i.fe = getelementptr inbounds nuw i8, ptr %31, i64 84 ; 5 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !195 ; 3 uses
  %i.fg = load i32, ptr %i.es, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i.i = icmp slt i32 %i.ff, %i.fg
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEjE3lenEv.exit"
  %i.fh = add i32 %i.ff, 1                        ; 2 uses
  %i.fi = icmp slt i32 %i.fg, 0
  br i1 %i.fi, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i, label %bb.y, !prof !112

bb.y:                                             ; preds = %bb.x
  %.not.i26.i = icmp ugt i32 %i.fh, %i.fg
  br i1 %.not.i26.i, label %.preheader.i.i, label %..critedge_crit_edge.i.i.i.i, !prof !112

.preheader.i.i:                                   ; preds = %bb.y, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.fl, %.preheader.i.i ], [ %i.fg, %bb.y ] ; 2 uses
  %i.fj = lshr i32 %.043.i.i, 1
  %i.fk = add i32 %.043.i.i, 8
  %i.fl = add i32 %i.fk, %i.fj                    ; 7 uses
  %i.fm = icmp ugt i32 %i.fh, %i.fl
  br i1 %i.fm, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !1

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.fn = icmp ugt i32 %i.fl, 536870911
  br i1 %i.fn, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i, label %bb.z, !prof !112

bb.z:                                             ; preds = %.thread.i.i
  %.not49.i.i = icmp eq i32 %i.fg, 0
  %i.fo = getelementptr inbounds nuw i8, ptr %31, i64 88 ; 3 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i.i, label %bb.aa, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %.not9.i.i.i.i = icmp eq ptr %i.fp, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fq = shl nuw i32 %i.fl, 3
  %i.fr = zext i32 %i.fq to i64
  %i.fs = call ptr @hb_malloc(i64 noundef %i.fr) #21 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %bb.ac, !prof !112

bb.ac:                                            ; preds = %bb.ab
  %i.ft = load i32, ptr %i.fe, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, label %bb.ad, !prof !112

bb.ad:                                            ; preds = %bb.ac
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw nsw i64 %i.fu, 3
  %i.fw = load ptr, ptr %i.fo, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr readonly align 1 %i.fw, i64 %i.fv, i1 false), !alias.scope !2598
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.fx = phi ptr [ null, %bb.aa ], [ %i.fp, %bb.z ]
  %i.fy = shl nuw i32 %i.fl, 3
  %i.fz = zext i32 %i.fy to i64
  %i.ga = call ptr @hb_realloc(ptr noundef %i.fx, i64 noundef %i.fz) #21 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ga, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.ab
  %i.gb = load i32, ptr %i.es, align 8, !tbaa !196 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.fl, %i.gb
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i, label %..critedge_crit_edge.i.i.i.i, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.fg, %.thread.i.i ], [ %i.gb, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %i.es, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.ad, %bb.ac
  %.1.i.i42.i.i = phi ptr [ %i.ga, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i ], [ %i.fs, %bb.ad ], [ %i.fs, %bb.ac ]
  store ptr %.1.i.i42.i.i, ptr %i.fo, align 8, !tbaa !197
  store i32 %i.fl, ptr %i.es, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i.i

..critedge_crit_edge.i.i.i.i:                     ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %bb.y
  %.pre.i.i.i.i = load i32, ptr %i.fe, align 4, !tbaa !195
  br label %.critedge.i.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32.i, %bb.x
  %i.gc = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.gc, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEjE3lenEv.exit"
  %i.gd = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.ff, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tIS0_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEjE3lenEv.exit" ] ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %31, i64 88
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !197
  %i.gg = add i32 %i.gd, 1
  store i32 %i.gg, ptr %i.fe, align 4, !tbaa !195
  %i.gh = zext i32 %i.gd to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.gh
  store ptr null, ptr %i.gi, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

_ZN22hb_serialize_context_tC2EPvm.exit.i:         ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29.i
  store atomic i32 1, ptr %i.et monotonic, align 8
  store atomic i8 1, ptr %i.eu monotonic, align 4
  store atomic ptr null, ptr %i.ev monotonic, align 8
  store i8 1, ptr %i.ew, align 8, !tbaa !188
  store ptr null, ptr %i.ey, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ex, i8 0, i64 18, i1 false)
  %i.gj = load ptr, ptr %i.fa, align 8, !tbaa !191 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0111, i64 56, i1 false)
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %30, i64 56
  store ptr @_ZL8hb_first, ptr %.sroa.5136.0..sroa_idx, align 8
  %i.gk = load i32, ptr %i.ez, align 4, !tbaa !190 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.gk, 0
  br i1 %.not11.i.i.i.i.i, label %bb.ae, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.i", !prof !219

bb.ae:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 2 ; 5 uses
  %i.gm = ptrtoint ptr %i.gj to i64
  %i.gn = load ptr, ptr %i.fb, align 8, !tbaa !192
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = sub i64 %i.go, %i.gm
  %i.gq = icmp slt i64 %i.gp, 2
  br i1 %i.gq, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i", label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, !prof !112

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i:               ; preds = %bb.ae
  store i16 0, ptr %i.gj, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !tbaa !191 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 2
  store ptr %i.gr, ptr %i.fa, align 8, !tbaa !191
  %i.gs = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %i.gs, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.i", label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %28, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0111, i64 56, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %28, i64 16
  br label %bb.af

bb.af:                                            ; preds = %bb.ai, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i ], [ %i.he, %bb.ai ] ; 2 uses
  %i.gv = load i32, ptr %28, align 8, !tbaa !527
  switch i32 %i.gv, label %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i" [
    i32 1, label %bb.ag
    i32 2, label %bb.ah
  ]

bb.ag:                                            ; preds = %bb.af
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i"

bb.ah:                                            ; preds = %bb.af
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.ah, %bb.ag
  %i.gw = load i32, ptr %i.gu, align 8, !tbaa !218
  %i.gx = load ptr, ptr %i.gt, align 8, !tbaa !276
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %i.gz = load i16, ptr %i.gy, align 1, !tbaa !211
  %i.ha = call noundef i16 @llvm.bswap.i16(i16 %i.gz)
  %i.hb = zext i16 %i.ha to i32
  %i.hc = icmp ult i32 %i.gw, %i.hb
  br i1 %i.hc, label %bb.ai, label %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i"

bb.ai:                                            ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i"
  %i.hd = call fastcc noundef nonnull align 8 dereferenceable(56) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %28), !noalias !2599 ; 0 uses
  %i.he = add i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br label %bb.af, !llvm.loop !2517

"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i.i", %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %29, ptr noundef nonnull readonly align 8 dereferenceable(64) %30, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #21, !noalias !2600
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #21, !noalias !2601
  call void @llvm.experimental.noalias.scope.decl(metadata !2602)
  call void @llvm.experimental.noalias.scope.decl(metadata !2603)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %26, ptr noundef nonnull align 8 dereferenceable(64) %30), !noalias !2601
  %i.hf = getelementptr inbounds nuw i8, ptr %30, i64 32
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hf, align 8, !tbaa !714, !noalias !2604
  %i.hg = getelementptr inbounds nuw i8, ptr %26, i64 32
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr %i.hg, align 8, !tbaa !714, !alias.scope !2605, !noalias !2601
  %i.hh = getelementptr inbounds nuw i8, ptr %30, i64 40
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.hh, align 8, !tbaa !599, !noalias !2601
  %i.hi = getelementptr inbounds nuw i8, ptr %30, i64 48
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.hi, align 8, !tbaa !550, !noalias !2601
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EEC2ERKSD_SE_SH_"(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(40) %26, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i.i.i.i), !noalias !2600
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #21, !noalias !2601
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %27, align 8 ; 2 uses
  %.sroa.440.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.sroa.440.0.copyload.i.i.i = load i32, ptr %.sroa.440.0..sroa_idx.i.i.i, align 8 ; 2 uses
  %.sroa.642.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 24
  %.sroa.642.0.copyload.i.i.i = load i32, ptr %.sroa.642.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21, !noalias !2600
  %i.hj = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %29, i64 24
  br label %bb.aj

bb.aj:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i", %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i"
  %.024.i.i.i = phi i32 [ 0, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i" ], [ %.125.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i" ] ; 2 uses
  %.023.i.i.i = phi i32 [ -2, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i" ], [ %.sroa.0.0.extract.trunc.i.i.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i" ] ; 3 uses
  %.021.i.i.i = phi i32 [ 0, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i" ], [ %.122.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i" ] ; 2 uses
  %.0.i.i.i = phi i1 [ false, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tIS1_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS9_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS9_6shrinkESB_jEUljE0_RK3$_7LSE_0EERK3$_6LSD_1ELSE_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSR_.exit.i.i.i" ], [ %.1.i.i.i, %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i" ] ; 2 uses
  %i.hl = load i32, ptr %29, align 8, !tbaa !527
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.hl, %.sroa.0.0.copyload.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ak, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i", !prof !219

bb.ak:                                            ; preds = %bb.aj
  switch i32 %.sroa.0.0.copyload.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread49.i.i.i" [
    i32 1, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.i.i.i"
    i32 2, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.ak
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.hm = load i32, ptr %i.hj, align 8, !tbaa !535
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %i.hm, %.sroa.440.0.copyload.i.i.i
  %i.hn = load i32, ptr %i.hk, align 8
  %i.ho = icmp ne i32 %i.hn, %.sroa.642.0.copyload.i.i.i
  %i.hp = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.ho
  br i1 %i.hp, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread49.i.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.i.i.i": ; preds = %bb.ak
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.hq = load i32, ptr %i.hj, align 8, !tbaa !530
  %.not.i.i.i34 = icmp eq i32 %i.hq, %.sroa.440.0.copyload.i.i.i
  br i1 %.not.i.i.i34, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread49.i.i.i", label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread49.i.i.i": ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.i.i.i", %.split.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #21
  %i.hr = mul i32 %.024.i.i.i, 3
  %i.hs = icmp ugt i32 %.0.i.i.i.i.i.i.i.i.i, %i.hr
  %.not30.i.i.i = select i1 %.0.i.i.i, i1 true, i1 %i.hs ; 2 uses
  %i.ht = select i1 %.not30.i.i.i, i16 512, i16 256
  store i16 %i.ht, ptr %i.gj, align 1, !tbaa !282
  %i.hu = icmp ugt i32 %.021.i.i.i, 65535
  br i1 %i.hu, label %bb.al, label %bb.am, !prof !112

"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread.i.i.i": ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.i.i.i", %.split.i.i.i, %bb.aj
  %i.hv = call i64 @_ZNK13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS6_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EE8__item__Ev(ptr noundef nonnull align 8 dereferenceable(64) %29)
  %.sroa.0.0.extract.trunc.i.i.i.i.i = trunc i64 %i.hv to i32 ; 4 uses
  %.not31.i.i.i = icmp ne i32 %.023.i.i.i, -2
  %i.hw = icmp ugt i32 %.023.i.i.i, %.sroa.0.0.extract.trunc.i.i.i.i.i
  %or.cond.i.i.i = and i1 %.not31.i.i.i, %i.hw
  %.1.i.i.i = select i1 %or.cond.i.i.i, i1 true, i1 %.0.i.i.i
  %i.hx = add i32 %.023.i.i.i, 1
  %.not32.i.i.i = icmp ne i32 %i.hx, %.sroa.0.0.extract.trunc.i.i.i.i.i
  %i.hy = zext i1 %.not32.i.i.i to i32
  %.125.i.i.i = add i32 %.024.i.i.i, %i.hy
  %.122.i.i.i = call i32 @llvm.umax.i32(i32 %.021.i.i.i, i32 %.sroa.0.0.extract.trunc.i.i.i.i.i)
  %i.hz = call fastcc noundef nonnull align 8 dereferenceable(56) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_map_iter_tIN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 8 dereferenceable(64) %29) ; 0 uses
  br label %bb.aj

bb.al:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread49.i.i.i"
  %i.ia = load i32, ptr %i.ez, align 4, !tbaa !190 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i.not.i.i.i, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i", label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tIS3_INS1_8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS8_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS8_6shrinkESA_jEUljE0_RK3$_7LSD_0EERK3$_6LSC_1ELSD_0EEEEvP22hb_serialize_context_tT_.exit.thread.i"

bb.am:                                            ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tIS_IN2OT6Layout6Common8Coverage6iter_tEZN5graph14PairPosFormat26shrinkERNS7_15split_context_tEjEUljE_L24hb_function_sortedness_t1ELPv0EEZNS7_6shrinkES9_jEUljE0_RK3$_7LSC_0EERK3$_6LSB_1ELSC_0EEneERKSM_.exit.thread49.i.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  br i1 %.not30.i.i.i, label %bb.az, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull align 8 dereferenceable(64) %30, i64 64, i1 false)
end_hunk_7
begin_hunk_8_@_ZN5graph18MarkBasePosFormat115split_subtablesERNS_24gsubgpos_graph_context_tEj:bb.a
  %i.dz = getelementptr inbounds nuw [216 x i8], ptr %i.dx, i64 %i.dy
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit62

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit62: ; preds = %bb.n, %bb.o
  %.0.i61 = phi ptr [ @_hb_CrapPool, %bb.n ], [ %i.dz, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2661)
  %i.ea = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 48
  store atomic i32 1, ptr %i.dv monotonic, align 8, !alias.scope !2661
  store atomic i8 1, ptr %i.ea monotonic, align 4, !alias.scope !2661
  store atomic ptr null, ptr %i.eb monotonic, align 8, !alias.scope !2661
  %i.ec = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 1, ptr %i.ec, align 8, !tbaa !624, !alias.scope !2661
  %i.ed = getelementptr inbounds nuw i8, ptr %8, i64 58
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr null, ptr %i.ee, align 8, !tbaa !610, !alias.scope !2661
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.ed, i8 0, i64 18, i1 false), !alias.scope !2661
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.i61, i64 20 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !614, !noalias !2661
  %i.eh = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE5allocEj(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, i32 noundef %i.eg) ; 0 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i61, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !273, !noalias !2661 ; 2 uses
  %i.ek = load i32, ptr %i.ef, align 4, !tbaa !272, !noalias !2661 ; 2 uses
  %i.el = zext i32 %i.ek to i64
  %.idx.i = mul nuw nsw i64 %i.el, 12
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 %.idx.i
  %.not10.i = icmp eq i32 %i.ek, 0
  br i1 %.not10.i, label %_ZNK5graph7graph_t8vertex_t21position_to_index_mapEv.exit, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit62, %.lr.ph.i63
  %.011.i = phi ptr [ %i.er, %.lr.ph.i63 ], [ %i.ej, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit62 ] ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.011.i, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %.val.i.i = load i32, ptr %i.en, align 4, !tbaa !218
  %i.ep = mul i32 %.val.i.i, -1640531535
  %i.eq = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjS3_EEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.dv, ptr noundef nonnull align 4 dereferenceable(4) %i.en, i32 noundef %i.ep, ptr noundef nonnull align 4 dereferenceable(4) %i.eo, i1 noundef zeroext true) ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.011.i, i64 12 ; 2 uses
  %.not.i64 = icmp eq ptr %i.er, %i.em
  br i1 %.not.i64, label %_ZNK5graph7graph_t8vertex_t21position_to_index_mapEv.exit, label %.lr.ph.i63

_ZNK5graph7graph_t8vertex_t21position_to_index_mapEv.exit: ; preds = %.lr.ph.i63, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit62
  call void @_ZN5graph22actuate_subtable_splitINS_18MarkBasePosFormat115split_context_tEEE11hb_vector_tIjLb0EERT_RKS4_(ptr dead_on_unwind writable sret(%struct.hb_vector_t.22) align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(16) %7)
  call void @_ZN5graph18MarkBasePosFormat115split_context_tD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.es = load i32, ptr %7, align 8, !tbaa !344
  %i.et = add i32 %i.es, -1
  %spec.select.i.i.i = icmp ult i32 %i.et, -2
  br i1 %spec.select.i.i.i, label %bb.p, label %_ZN11hb_vector_tIjLb0EED2Ev.exit

bb.p:                                             ; preds = %_ZNK5graph7graph_t8vertex_t21position_to_index_mapEv.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.eu, align 4, !tbaa !345
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !346
  call void @hb_free(ptr noundef %i.ew) #21
  br label %_ZN11hb_vector_tIjLb0EED2Ev.exit

_ZN11hb_vector_tIjLb0EED2Ev.exit:                 ; preds = %_ZNK5graph7graph_t8vertex_t21position_to_index_mapEv.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ad

bb.q:                                             ; preds = %.lr.ph105, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit
  %i.ex = phi ptr [ null, %.lr.ph105 ], [ %i.hm, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ] ; 5 uses
  %i.ey = phi i32 [ 0, %.lr.ph105 ], [ %i.hn, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ] ; 5 uses
  %i.ez = phi ptr [ null, %.lr.ph105 ], [ %i.ho, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ] ; 5 uses
  %i.fa = phi i32 [ 0, %.lr.ph105 ], [ %i.hp, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ] ; 10 uses
  %.pre.i = phi i32 [ 0, %.lr.ph105 ], [ %i.hq, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ] ; 4 uses
  %.040103 = phi i32 [ %i.ap, %.lr.ph105 ], [ %.1, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ]
  %.041102 = phi i32 [ 4, %.lr.ph105 ], [ %.142, %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit ]
  %i.fb = load i32, ptr %i.cg, align 4, !tbaa !728
  %i.fc = zext i32 %i.fb to i64
  %.not.i65 = icmp samesign ult i64 %indvars.iv, %i.fc
  br i1 %.not.i65, label %bb.s, label %bb.r, !prof !219

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(88) @_hb_NullPool, i64 88, i1 false)
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit

bb.s:                                             ; preds = %bb.q
  %i.fd = load ptr, ptr %i.ch, align 8, !tbaa !727
  %i.fe = getelementptr inbounds nuw [88 x i8], ptr %i.fd, i64 %indvars.iv
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit: ; preds = %bb.r, %bb.s
  %.0.i66 = phi ptr [ @_hb_CrapPool, %bb.r ], [ %i.fe, %bb.s ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i66, i64 16 ; 3 uses
  %i.fg = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ff)
  %i.fh = shl i32 %i.fg, 1
  %i.fi = add i32 %i.fh, %.041102                 ; 2 uses
  %i.fj = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ff)
  %i.fk = shl i32 %i.fj, 2
  %i.fl = add i32 %i.fk, %i.ci                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i66, i64 80
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !346 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i66, i64 76
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !345 ; 2 uses
  %i.fq = zext i32 %i.fp to i64
  %.idx = shl nuw nsw i64 %i.fq, 2
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx
  %.not98 = icmp eq i32 %i.fp, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit
  %.039.lcssa = phi i32 [ %i.fl, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit ], [ %i.fz, %.lr.ph ] ; 2 uses
  %i.fs = add i32 %.039.lcssa, %.040103           ; 2 uses
  %i.ft = add i32 %i.fs, %i.fi
  %i.fu = icmp ugt i32 %i.ft, 65535
  br i1 %i.fu, label %bb.t, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit

.lr.ph:                                           ; preds = %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit, %.lr.ph
  %.0100 = phi ptr [ %i.ga, %.lr.ph ], [ %i.fn, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit ] ; 2 uses
  %.03999 = phi i32 [ %i.fz, %.lr.ph ], [ %i.fl, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EEixEi.exit ]
  %i.fv = load i32, ptr %.0100, align 4, !tbaa !218
  %i.fw = load ptr, ptr %i.i, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 -1, ptr %i.a, align 4, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 0, ptr %i.b, align 8, !tbaa !402
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !507
  store ptr %i.fw, ptr %i.cj, align 8, !tbaa !597
  store ptr %i.b, ptr %i.ck, align 8, !tbaa !598
  store ptr %i.a, ptr %i.cl, align 8, !tbaa !599
  call void @_ZN5graph7graph_t21traverse_directed_bfsIZNS0_18find_subgraph_sizeEjR8hb_set_tjEUljPKN22hb_serialize_context_t8object_t6link_tEjjE_EEvjOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.fw, i32 noundef %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.fx = load i64, ptr %i.b, align 8, !tbaa !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = add i32 %.03999, %i.fy                  ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0100, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.ga, %i.fr
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.t:                                             ; preds = %._crit_edge
  %.not.i67 = icmp slt i32 %.pre.i, %i.fa
  %.pre116 = add i32 %.pre.i, 1                   ; 4 uses
  br i1 %.not.i67, label %.critedge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gb = icmp slt i32 %i.fa, 0
  br i1 %i.gb, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86, label %bb.v, !prof !112

bb.v:                                             ; preds = %bb.u
  %.not.i72 = icmp ugt i32 %.pre116, %i.fa
  br i1 %.not.i72, label %.preheader.i, label %.critedge.i, !prof !112

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  %.043.i = phi i32 [ %i.ge, %.preheader.i ], [ %i.fa, %bb.v ] ; 2 uses
  %i.gc = lshr i32 %.043.i, 1
  %i.gd = add i32 %.043.i, 8
  %i.ge = add i32 %i.gd, %i.gc                    ; 9 uses
  %i.gf = icmp ugt i32 %.pre116, %i.ge
  br i1 %i.gf, label %.preheader.i, label %.thread.i73, !llvm.loop !18

.thread.i73:                                      ; preds = %.preheader.i
  %i.gg = icmp ugt i32 %i.ge, 1073741823
  br i1 %i.gg, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread89, label %bb.w, !prof !112

bb.w:                                             ; preds = %.thread.i73
  %.not49.i = icmp eq i32 %i.fa, 0
  br i1 %.not49.i, label %bb.x, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.x:                                             ; preds = %bb.w
  %.not9.i.i.i = icmp eq ptr %i.ez, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gh = shl nuw i32 %i.ge, 2
  %i.gi = zext i32 %i.gh to i64
  %i.gj = call ptr @hb_malloc(i64 noundef %i.gi) #21 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.z, !prof !112

bb.z:                                             ; preds = %bb.y
  %.not.i.i.i.i75 = icmp eq i32 %.pre.i, 0
  br i1 %.not.i.i.i.i75, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, label %bb.aa, !prof !112

bb.aa:                                            ; preds = %bb.z
  %i.gk = zext i32 %.pre.i to i64
  %i.gl = shl nuw nsw i64 %i.gk, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr nonnull readonly align 1 %i.ez, i64 %i.gl, i1 false), !alias.scope !2662
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.x, %bb.w
  %i.gm = phi ptr [ null, %bb.x ], [ %i.ez, %bb.w ]
  %i.gn = shl nuw i32 %i.ge, 2
  %i.go = zext i32 %i.gn to i64
  %i.gp = call ptr @hb_realloc(ptr noundef %i.gm, i64 noundef %i.go) #21 ; 2 uses
  %.not22.i = icmp eq ptr %i.gp, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i_crit_edge, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, !prof !198

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i_crit_edge: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.pre = load i32, ptr %7, align 8, !tbaa !344
  br label %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i

_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i_crit_edge, %bb.y
  %i.gq = phi i32 [ %.pre, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i._ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i_crit_edge ], [ %i.ey, %bb.y ] ; 4 uses
  %.not23.i = icmp ugt i32 %i.ge, %i.gq
  br i1 %.not23.i, label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread89, label %.critedge.i, !prof !174

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread89:   ; preds = %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.thread.i73
  %.sink.i.ph.in = phi i32 [ %i.fa, %.thread.i73 ], [ %i.gq, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1        ; 3 uses
  store i32 %.sink.i.ph, ptr %7, align 8, !tbaa !344
  br label %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86

_ZN11hb_vector_tIjLb0EE5allocEjb.exit:            ; preds = %bb.z, %bb.aa, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.gp, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %i.gj, %bb.aa ], [ %i.gj, %bb.z ] ; 2 uses
  store ptr %.1.i.i42.i, ptr %i.cn, align 8, !tbaa !346
  store i32 %i.ge, ptr %7, align 8, !tbaa !344
  br label %.critedge.i

_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86:   ; preds = %bb.u, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread89
  %i.gr = phi i32 [ %i.ey, %bb.u ], [ %.sink.i.ph, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread89 ]
  %i.gs = phi i32 [ %i.fa, %bb.u ], [ %.sink.i.ph, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread89 ]
  store i32 %i.co, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %bb.t, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit, %bb.v, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i
  %i.gt = phi ptr [ %.1.i.i42.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ %i.ex, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.ex, %bb.v ], [ %i.ex, %bb.t ] ; 3 uses
  %i.gu = phi i32 [ %i.ge, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ %i.gq, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.ey, %bb.v ], [ %i.ey, %bb.t ]
  %i.gv = phi i32 [ %i.ge, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit ], [ %i.gq, %_ZN11hb_vector_tIjLb0EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ], [ %i.fa, %bb.v ], [ %i.fa, %bb.t ]
  store i32 %.pre116, ptr %i.cm, align 4, !tbaa !345
  %i.gw = zext i32 %.pre.i to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.gy, ptr %i.gx, align 4, !tbaa !218
  br label %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86, %.critedge.i
  %i.gz = phi ptr [ %i.ex, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86 ], [ %i.gt, %.critedge.i ] ; 2 uses
  %i.ha = phi i32 [ %i.gr, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86 ], [ %i.gu, %.critedge.i ] ; 2 uses
  %i.hb = phi ptr [ %i.ez, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86 ], [ %i.gt, %.critedge.i ] ; 2 uses
  %i.hc = phi i32 [ %i.gs, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86 ], [ %i.gv, %.critedge.i ] ; 2 uses
  %i.hd = phi i32 [ %.pre.i, %_ZN11hb_vector_tIjLb0EE5allocEjb.exit.thread86 ], [ %.pre116, %.critedge.i ] ; 2 uses
  %i.he = add i32 %.039.lcssa, %i.ap              ; 2 uses
  %i.hf = call noundef i32 @_ZNK23hb_bit_set_invertible_t14get_populationEv(ptr noundef nonnull align 8 dereferenceable(49) %i.ff)
  %i.hg = shl i32 %i.hf, 1
  %i.hh = add i32 %i.hg, 4                        ; 2 uses
  %i.hi = load i32, ptr %i.cp, align 4, !tbaa !261
  %.not.i.i.i69 = icmp eq i32 %i.hi, 0
  %i.hj = load i32, ptr %i.f, align 4
  %.not1.i.i.i = icmp eq i32 %i.hj, 0
  %or.cond.i.i.i = select i1 %.not.i.i.i69, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %_ZN12hb_bit_set_t5clearEv.exit.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  store i32 0, ptr %i.cp, align 4, !tbaa !416
  store i32 0, ptr %i.cq, align 4, !tbaa !419
  store i32 0, ptr %i.f, align 4, !tbaa !260
  br label %_ZN12hb_bit_set_t5clearEv.exit.i.i

_ZN12hb_bit_set_t5clearEv.exit.i.i:               ; preds = %bb.ab, %_ZN11hb_vector_tIjLb0EE4pushIJRjEEEPjDpOT_.exit
  %i.hk = load i8, ptr %i.e, align 8, !tbaa !508, !range !213, !noundef !230
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %bb.ac, label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit, !prof !219

bb.ac:                                            ; preds = %_ZN12hb_bit_set_t5clearEv.exit.i.i
  store i8 0, ptr %i.cr, align 8, !tbaa !259
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE5clearEv.exit: ; preds = %bb.ac, %_ZN12hb_bit_set_t5clearEv.exit.i.i, %._crit_edge
  %i.hm = phi ptr [ %i.ex, %._crit_edge ], [ %i.gz, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.gz, %bb.ac ]
  %i.hn = phi i32 [ %i.ey, %._crit_edge ], [ %i.ha, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.ha, %bb.ac ]
  %i.ho = phi ptr [ %i.ez, %._crit_edge ], [ %i.hb, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.hb, %bb.ac ]
  %i.hp = phi i32 [ %i.fa, %._crit_edge ], [ %i.hc, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.hc, %bb.ac ]
  %i.hq = phi i32 [ %.pre.i, %._crit_edge ], [ %i.hd, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.hd, %bb.ac ]
  %.142 = phi i32 [ %i.fi, %._crit_edge ], [ %i.hh, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.hh, %bb.ac ]
  %.1 = phi i32 [ %i.fs, %._crit_edge ], [ %i.he, %_ZN12hb_bit_set_t5clearEv.exit.i.i ], [ %i.he, %bb.ac ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge106, label %bb.q, !llvm.loop !2658

bb.ad:                                            ; preds = %_ZN11hb_vector_tIjLb0EED2Ev.exit, %_ZN5graph7graph_t8as_tableINS_12AnchorMatrixEJjEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread
  %i.hr = load i32, ptr %6, align 8, !tbaa !729
  %i.hs = add i32 %i.hr, -1
  %spec.select.i.i.i70 = icmp ult i32 %i.hs, -2
  br i1 %spec.select.i.i.i70, label %bb.ae, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ht = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !728 ; 3 uses
  %.not5.i.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not5.i.i.i, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.ae
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !727
  %i.hx = zext i32 %i.hu to i64
  %i.hy = getelementptr inbounds nuw [88 x i8], ptr %i.hw, i64 %i.hx
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.07.i.i.i = phi ptr [ %i.ia, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.hy, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.046.i.i.i = phi i32 [ %i.hz, %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i ], [ %i.hu, %.lr.ph.preheader.i.i.i ]
  %i.hz = add i32 %.046.i.i.i, -1                 ; 2 uses
  %i.ia = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -88 ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -16
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !344
  %i.id = add i32 %i.ic, -1
  %spec.select.i.i.i.i.i.i.i = icmp ult i32 %i.id, -2
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.af, label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.ie = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -12
  store i32 0, ptr %i.ie, align 4, !tbaa !345
  %i.if = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !346
  call void @hb_free(ptr noundef %i.ig) #21
  br label %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i

_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i: ; preds = %bb.af, %.lr.ph.i.i.i
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(88) %i.ia) #21
  %.not.i.i.i71 = icmp eq i32 %i.hz, 0
  br i1 %.not.i.i.i71, label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !68

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i: ; preds = %_ZN5graph18MarkBasePosFormat112class_info_tD2Ev.exit.i.i.i, %bb.ae
  store i32 0, ptr %i.ht, align 4, !tbaa !728
  %i.ih = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !727
  call void @hb_free(ptr noundef %i.ii) #21
  br label %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit

_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EED2Ev.exit: ; preds = %bb.ad, %_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE13shrink_vectorEj.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  call void @_ZN14hb_sparseset_tI23hb_bit_set_invertible_tED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5graph18MarkBasePosFormat114get_class_infoERNS_24gsubgpos_graph_context_tEj(ptr dead_on_unwind noalias writable sret(%struct.hb_vector_t.776) align 8 %0, ptr noundef nonnull align 1 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(168) %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %struct.hb_vector_t.776, align 8    ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = load i16, ptr %i.a, align 1, !tbaa !211  ; 2 uses
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 3 uses
  %i.d = zext i16 %i.c to i32                     ; 2 uses
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN5graph7graph_t8as_tableINS_9MarkArrayEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = call noundef zeroext i1 @_ZN11hb_vector_tIN5graph18MarkBasePosFormat112class_info_tELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.d, i1 noundef zeroext true, i1 noundef zeroext false)
  br i1 %i.e, label %bb.d, label %_ZN5graph7graph_t8as_tableINS_9MarkArrayEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !567, !noalias !2668 ; 2 uses
  %.not.i.i.i.i = icmp ult i32 %3, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !2668 ; 2 uses
  %i.m = zext i32 %3 to i64                       ; 2 uses
  %i.n = getelementptr inbounds nuw [216 x i8], ptr %i.l, i64 %i.m
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.n, ptr @_hb_NullPool, !prof !219 ; 4 uses
  %i.o = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !315, !noalias !2668 ; 2 uses
  %i.p = icmp uge ptr %i.h, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !2668
  %.not.i.i = icmp ult ptr %i.h, %i.r
  %or.cond.i.i = select i1 %i.p, i1 %.not.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN5graph7graph_t8as_tableINS_9MarkArrayEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !279, !noalias !2668 ; 2 uses
  %.not2427.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not2427.not.i.i, label %_ZN5graph7graph_t8as_tableINS_9MarkArrayEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !655, !noalias !2668
  %wide.trip.count.i.i = zext i32 %i.t to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN5graph7graph_t8as_tableINS_9MarkArrayEJEEEKNS0_18vertex_and_table_tIT_LNS0_19vertex_mutability_tE0EEEjPKvDpT0_.exit.thread, label %bb.g, !llvm.loop !53

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %indvars.iv.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !316, !noalias !2668
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  %.not23.not.i.i = icmp eq ptr %i.h, %i.aa
  br i1 %.not23.not.i.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i, label %bb.f

_ZNK5graph7graph_t16index_for_offsetEjPKv.exit.i: ; preds = %bb.g
end_hunk_8
begin_hunk_9_@_ZN13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEE8__next__Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !533
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !534  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !535  ; 2 uses
  %i.q = load i16, ptr %i.n, align 1, !tbaa !211
  %i.r = tail call noundef i16 @llvm.bswap.i16(i16 %i.q)
  %i.s = zext i16 %i.r to i32
  %.not.i.i.i.i = icmp ult i32 %i.p, %i.s
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i, !prof !219

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.u = zext nneg i32 %i.p to i64
  %i.v = getelementptr inbounds nuw [6 x i8], ptr %i.t, i64 %i.u
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ @_hb_Null_OT_RangeRecord, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 2
  %i.x = load i16, ptr %i.w, align 1, !tbaa !211
  %i.y = tail call noundef i16 @llvm.bswap.i16(i16 %i.x)
  %i.z = zext i16 %i.y to i32
  %.not.i.i.i = icmp ult i32 %i.l, %i.z
  br i1 %.not.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i
  %i.aa = load i32, ptr %i.o, align 8, !tbaa !535
  %i.ab = add i32 %i.aa, 1                        ; 3 uses
  store i32 %i.ab, ptr %i.o, align 8, !tbaa !535
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !534 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ae = load i16, ptr %i.ad, align 1, !tbaa !211
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = icmp ult i32 %i.ab, %i.ag
  br i1 %i.ah, label %bb.f, label %.sink.split.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !536
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.al = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.am = getelementptr inbounds nuw [6 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i16, ptr %i.am, align 1, !tbaa !211
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ap = zext i16 %i.ao to i32
  store i32 %i.ap, ptr %i.k, align 8, !tbaa !533
  %i.aq = getelementptr inbounds nuw [6 x i8], ptr %i.ac, i64 %i.al
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i16, ptr %i.ar, align 1, !tbaa !211
  %i.at = tail call noundef i16 @llvm.bswap.i16(i16 %i.as)
  %i.au = zext i16 %i.at to i32                   ; 2 uses
  store i32 %i.au, ptr %i.ai, align 4, !tbaa !536
  %i.av = add i32 %i.aj, 1
  %.not1.i.i.i = icmp eq i32 %i.av, %i.au
  br i1 %.not1.i.i.i, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit, label %bb.g, !prof !219

bb.g:                                             ; preds = %bb.f
  store i32 %i.ag, ptr %i.o, align 8, !tbaa !535
  br label %.sink.split.i.i.i

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !536
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !536
  %i.az = load i32, ptr %i.k, align 8, !tbaa !533
  %i.ba = add i32 %i.az, 1
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.h, %bb.g, %bb.e
  %.sink.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ba, %bb.h ], [ 0, %bb.e ]
  store i32 %.sink.i.i.i, ptr %i.k, align 8, !tbaa !533
  br label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit: ; preds = %bb.a, %bb.b, %bb.f, %.sink.split.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @"_ZN5graph8Coverage13make_coverageI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSI_0EEEEbRNS_24gsubgpos_graph_context_tET_jj"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %0, ptr nofree noundef readonly byval(%struct.hb_map_iter_t.786) align 8 captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.hb_zip_iter_t.792, align 8  ; 5 uses
  %5 = alloca %struct.hb_filter_iter_t.788, align 8 ; 6 uses
  %6 = alloca %struct.hb_zip_iter_t.792, align 8  ; 5 uses
  %7 = alloca %struct.hb_filter_iter_t.788, align 8 ; 6 uses
  %8 = alloca %struct.hb_map_iter_t.786, align 8  ; 8 uses
  %9 = alloca %struct.hb_map_iter_t.786, align 8  ; 8 uses
  %10 = alloca %struct.hb_map_iter_t.786, align 8 ; 10 uses
  %11 = alloca %struct.hb_filter_iter_t.788, align 8 ; 7 uses
  %12 = alloca %struct.hb_map_iter_t.786, align 8 ; 8 uses
  %13 = alloca %struct.hb_zip_iter_t.792, align 8 ; 5 uses
  %14 = alloca %struct.hb_filter_iter_t.788, align 8 ; 6 uses
  %15 = alloca %struct.hb_filter_iter_t.788, align 8 ; 7 uses
  %16 = alloca %struct.hb_map_iter_t.786, align 8 ; 8 uses
  %17 = alloca %struct.hb_map_iter_t.786, align 8 ; 12 uses
  %18 = alloca %struct.hb_serialize_context_t, align 8 ; 28 uses
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = tail call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.a) #21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  store ptr %i.b, ptr %18, align 8, !tbaa !186
  %i.c = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.a ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !187
  %i.e = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 100 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.g monotonic, align 8
  store atomic i8 1, ptr %i.h monotonic, align 4
  store atomic ptr null, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 112 ; 3 uses
  store i8 1, ptr %i.j, align 8, !tbaa !188
  %i.k = getelementptr inbounds nuw i8, ptr %18, i64 114 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.k, i8 0, i64 18, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 44 ; 17 uses
  store i32 0, ptr %i.m, align 4, !tbaa !190
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 21 uses
  store ptr %i.b, ptr %i.n, align 8, !tbaa !191
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  store ptr %i.d, ptr %i.o, align 8, !tbaa !192
  %i.p = getelementptr inbounds nuw i8, ptr %18, i64 32
  store ptr null, ptr %i.p, align 8, !tbaa !193
  %i.q = getelementptr inbounds nuw i8, ptr %18, i64 40
  store i32 0, ptr %i.q, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %18)
  %i.r = getelementptr inbounds nuw i8, ptr %18, i64 84 ; 5 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !195  ; 3 uses
  %i.t = load i32, ptr %i.f, align 8, !tbaa !196  ; 6 uses
  %.not.i.i.i = icmp slt i32 %i.s, %i.t
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = add i32 %i.s, 1                          ; 2 uses
  %i.v = icmp slt i32 %i.t, 0
  br i1 %i.v, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29, label %bb.c, !prof !112

bb.c:                                             ; preds = %bb.b
  %.not.i26 = icmp ugt i32 %i.u, %i.t
  br i1 %.not.i26, label %.preheader.i, label %..critedge_crit_edge.i.i.i, !prof !112

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %.043.i = phi i32 [ %i.y, %.preheader.i ], [ %i.t, %bb.c ] ; 2 uses
  %i.w = lshr i32 %.043.i, 1
  %i.x = add i32 %.043.i, 8
  %i.y = add i32 %i.x, %i.w                       ; 7 uses
  %i.z = icmp ugt i32 %i.u, %i.y
  br i1 %i.z, label %.preheader.i, label %.thread.i, !llvm.loop !1

.thread.i:                                        ; preds = %.preheader.i
  %i.aa = icmp ugt i32 %i.y, 536870911
  br i1 %i.aa, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32, label %bb.d, !prof !112

bb.d:                                             ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.t, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i, label %bb.e, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.e:                                             ; preds = %bb.d
  %.not9.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = shl nuw i32 %i.y, 3
  %i.ae = zext i32 %i.ad to i64
  %i.af = call ptr @hb_malloc(i64 noundef %i.ae) #21 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.g, !prof !112

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr %i.r, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, label %bb.h, !prof !112

bb.h:                                             ; preds = %bb.g
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr readonly align 1 %i.aj, i64 %i.ai, i1 false), !alias.scope !2762
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.e, %bb.d
  %i.ak = phi ptr [ null, %bb.e ], [ %i.ac, %bb.d ]
  %i.al = shl nuw i32 %i.y, 3
  %i.am = zext i32 %i.al to i64
  %i.an = call ptr @hb_realloc(ptr noundef %i.ak, i64 noundef %i.am) #21 ; 2 uses
  %.not22.i = icmp eq ptr %i.an, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.f
  %i.ao = load i32, ptr %i.f, align 8, !tbaa !196 ; 2 uses
  %.not23.i = icmp ugt i32 %i.y, %i.ao
  br i1 %.not23.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32, label %..critedge_crit_edge.i.i.i, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.t, %.thread.i ], [ %i.ao, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %i.f, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit: ; preds = %bb.g, %bb.h, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.an, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.af, %bb.h ], [ %i.af, %bb.g ]
  store ptr %.1.i.i42.i, ptr %i.ab, align 8, !tbaa !197
  store i32 %i.y, ptr %i.f, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i

..critedge_crit_edge.i.i.i:                       ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %bb.c, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit
  %.pre.i.i.i = load i32, ptr %i.r, align 4, !tbaa !195
  br label %.critedge.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29: ; preds = %bb.b, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread32
  %i.ap = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ap, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

.critedge.i.i.i:                                  ; preds = %..critedge_crit_edge.i.i.i, %bb.a
  %i.aq = phi i32 [ %.pre.i.i.i, %..critedge_crit_edge.i.i.i ], [ %i.s, %bb.a ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !197
  %i.at = add i32 %i.aq, 1
  store i32 %i.at, ptr %i.r, align 4, !tbaa !195
  %i.au = zext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.au
  store ptr null, ptr %i.av, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit

_ZN22hb_serialize_context_tC2EPvm.exit:           ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread29, %.critedge.i.i.i
  store atomic i32 1, ptr %i.g monotonic, align 8
  store atomic i8 1, ptr %i.h monotonic, align 4
  store atomic ptr null, ptr %i.i monotonic, align 8
  store i8 1, ptr %i.j, align 8, !tbaa !188
  store ptr null, ptr %i.l, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.k, i8 0, i64 18, i1 false)
  %i.aw = load ptr, ptr %i.n, align 8, !tbaa !191 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  %i.ax = load i32, ptr %i.m, align 4, !tbaa !190 ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i.i.i.i, label %bb.i, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjENS1_8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEEEvP22hb_serialize_context_tT_.exit.thread", !prof !219

bb.i:                                             ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 2 ; 5 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.az
  %i.bd = icmp slt i64 %i.bc, 2
  br i1 %i.bd, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjENS1_8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split", label %_ZL9hb_memsetPvij.exit.i.i.i.i.i, !prof !112

_ZL9hb_memsetPvij.exit.i.i.i.i.i:                 ; preds = %bb.i
  store i16 0, ptr %i.aw, align 1
  %.pre.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !191 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 2
  store ptr %i.be, ptr %i.n, align 8, !tbaa !191
  %i.bf = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %i.bf, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjENS1_8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEEEvP22hb_serialize_context_tT_.exit", label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %15, i64 24
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ 0, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i ], [ %i.bs, %bb.m ] ; 2 uses
  %i.bj = load i32, ptr %i.bg, align 8, !tbaa !527
  switch i32 %i.bj, label %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i" [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i"

bb.l:                                             ; preds = %bb.j
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i": ; preds = %bb.l, %bb.k
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !218
  %i.bl = load ptr, ptr %i.bh, align 8, !tbaa !276
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bn = load i16, ptr %i.bm, align 1, !tbaa !211
  %i.bo = call noundef i16 @llvm.bswap.i16(i16 %i.bn)
  %i.bp = zext i16 %i.bo to i32
  %i.bq = icmp ult i32 %i.bk, %i.bp
  br i1 %i.bq, label %bb.m, label %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i"

bb.m:                                             ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i"
  %i.br = call fastcc noundef nonnull align 8 dereferenceable(56) ptr @"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEppEv"(ptr noundef nonnull align 1 dereferenceable(1) %15), !noalias !2763 ; 0 uses
  %i.bs = add i32 %.0.i.i.i.i.i.i.i.i, 1
  br label %bb.j, !llvm.loop !2710

"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i": ; preds = %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EE9hb_pair_tIjjEEcvbEv.exit.i.i.i.i.i.i.i.i", %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull readonly align 8 dereferenceable(64) %17, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21, !noalias !2764
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21, !noalias !2765
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  call void @llvm.experimental.noalias.scope.decl(metadata !2767)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %17, align 8, !noalias !2768
  %i.bt = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.bt), !noalias !2765
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, ptr %13, align 8, !alias.scope !2769, !noalias !2765
  %i.bv = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !735, !noalias !2765
  %i.bx = getelementptr inbounds nuw i8, ptr %17, i64 48
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !737, !noalias !2765
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EEC2ERKS8_SA_SD_"(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(72) %i.bw, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i.i.i.i.i), !noalias !2764
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21, !noalias !2765
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.3.0.copyload.i.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 24
  %.sroa.442.0.copyload.i.i = load i32, ptr %.sroa.442.0..sroa_idx.i.i, align 8 ; 2 uses
  %.sroa.644.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %14, i64 32
  %.sroa.644.0.copyload.i.i = load i32, ptr %.sroa.644.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21, !noalias !2764
  %i.by = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.n

bb.n:                                             ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEjEdeEv.exit.i.i", %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i"
  %.024.i.i = phi i32 [ 0, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i" ], [ %.125.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEjEdeEv.exit.i.i" ] ; 2 uses
  %.023.i.i = phi i32 [ -2, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i" ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEjEdeEv.exit.i.i" ] ; 3 uses
  %.021.i.i = phi i32 [ 0, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i" ], [ %.122.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEjEdeEv.exit.i.i" ] ; 2 uses
  %.0.i.i = phi i1 [ false, %"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSH_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSQ_.exit.i.i" ], [ %.1.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEjEdeEv.exit.i.i" ] ; 2 uses
  %i.cc = load i32, ptr %i.by, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cc, %.sroa.3.0.copyload.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread.i.i", !prof !219

bb.o:                                             ; preds = %bb.n
  switch i32 %.sroa.3.0.copyload.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread51.i.i" [
    i32 1, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.i.i"
    i32 2, label %.split.i.i
  ]

.split.i.i:                                       ; preds = %bb.o
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.cd = load i32, ptr %i.bz, align 8, !tbaa !535
  %.not.i.i.i.i.i.i.i = icmp ne i32 %i.cd, %.sroa.442.0.copyload.i.i
  %i.ce = load i32, ptr %i.ca, align 8
  %i.cf = icmp ne i32 %i.ce, %.sroa.644.0.copyload.i.i
  %i.cg = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %i.cf
  br i1 %i.cg, label %thread-pre-split.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread51.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.i.i": ; preds = %bb.o
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ch = load i32, ptr %i.bz, align 8, !tbaa !530
  %.not.i.i = icmp eq i32 %i.ch, %.sroa.442.0.copyload.i.i
  br i1 %.not.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread51.i.i", label %thread-pre-split.i.i

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread51.i.i": ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.i.i", %.split.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.ci = mul i32 %.024.i.i, 3
  %i.cj = icmp ugt i32 %.0.i.i.i.i.i.i.i.i, %i.ci
  %.not30.i.i = select i1 %.0.i.i, i1 true, i1 %i.cj ; 2 uses
  %i.ck = select i1 %.not30.i.i, i16 512, i16 256
  store i16 %i.ck, ptr %i.aw, align 1, !tbaa !282
  %i.cl = icmp ugt i32 %.021.i.i, 65535
  br i1 %i.cl, label %bb.s, label %bb.t, !prof !112

thread-pre-split.i.i:                             ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.i.i", %.split.i.i
  %.pr.i.i = load i32, ptr %i.by, align 8, !tbaa !527
  br label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread.i.i": ; preds = %thread-pre-split.i.i, %bb.n
  %i.cm = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.cc, %bb.n ]
  switch i32 %i.cm, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSG_0EEjEdeEv.exit.i.i" [
    i32 1, label %bb.p
    i32 2, label %bb.r
  ]

bb.p:                                             ; preds = %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tI14hb_iota_iter_tIjjEN2OT6Layout6Common8Coverage6iter_tEER8hb_set_tRK3$_6LPv0EERK3$_7L24hb_function_sortedness_t1ELSF_0EEneERKSL_.exit.thread.i.i"
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.cn = load ptr, ptr %i.cb, align 8, !tbaa !551 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.cp = load i32, ptr %i.bz, align 8, !tbaa !530 ; 2 uses
  %i.cq = load i16, ptr %i.co, align 1, !tbaa !211
  %i.cr = call noundef i16 @llvm.bswap.i16(i16 %i.cq)
  %i.cs = zext i16 %i.cr to i32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.cp, %i.cs
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !219

bb.q:                                             ; preds = %bb.p
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
end_hunk_9
begin_hunk_10_@_ZNK5graph20LigatureSubstFormat111clone_rangeERNS_24gsubgpos_graph_context_tEj11hb_vector_tIjLb0EEjj:bb.a
  store i32 -1, ptr %i.po, align 4, !tbaa !260
  %i.pp = and i32 %i.nt, 63
  %i.pq = zext nneg i32 %i.pp to i64
  %i.pr = shl nuw i64 1, %i.pq
  %i.ps = xor i64 %i.pr, -1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pu = lshr i32 %i.nt, 6
  %i.pv = and i32 %i.pu, 7
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pt, i64 %i.pw ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !266
  %i.pz = and i64 %i.py, %i.ps
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !266
  store i32 -1, ptr %i.pn, align 8, !tbaa !264
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

bb.bv:                                            ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit9.i225
  call void @_ZN12hb_bit_set_t3addEj(ptr noundef nonnull align 8 dereferenceable(49) %i.oh, i32 noundef %i.nt)
  br label %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i

_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i: ; preds = %bb.bt, %bb.bu, %_ZN12hb_bit_set_t8page_forEjb.exit.i, %._crit_edge.i.i, %bb.bn, %bb.bv
  %i.qa = getelementptr inbounds nuw i8, ptr %.0.i8.i226, i64 80 ; 4 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !571
  %i.qc = icmp eq i32 %i.qb, 0
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i8.i226, i64 84 ; 4 uses
  br i1 %i.qc, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i
  store i32 %i.nt, ptr %i.qd, align 4, !tbaa !608
  br label %.sink.split.i241

bb.bx:                                            ; preds = %_ZN14hb_sparseset_tI23hb_bit_set_invertible_tE3addEj.exit.i
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !608 ; 2 uses
  %.not.i238 = icmp eq i32 %i.qe, -1
  br i1 %.not.i238, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i8.i226, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 1, ptr %i.b, align 4, !tbaa !218
  %i.qg = mul i32 %i.qe, -1640531535
  %i.qh = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.qf, ptr noundef nonnull align 4 dereferenceable(4) %i.qd, i32 noundef %i.qg, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br i1 %i.qh, label %bb.bz, label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit

bb.bz:                                            ; preds = %bb.by
  store i32 -1, ptr %i.qd, align 4, !tbaa !608
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bx
  %i.qi = getelementptr inbounds nuw i8, ptr %.0.i8.i226, i64 96
  %i.qj = getelementptr inbounds nuw i8, ptr %.0.i8.i226, i64 136
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !610 ; 4 uses
  %.not.i.i239 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i239, label %.loopexit.i.a, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ql = mul i32 %i.nt, 506952113
  %i.qm = and i32 %i.ql, 1073741823
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i8.i226, i64 128
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !628
  %i.qp = urem i32 %i.qm, %i.qo                   ; 2 uses
  %i.qq = zext nneg i32 %i.qp to i64              ; 2 uses
  %i.qr = getelementptr inbounds nuw [12 x i8], ptr %i.qk, i64 %i.qq ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qt = load i32, ptr %i.qs, align 4            ; 2 uses
  %i.qu = and i32 %i.qt, 2
  %.not15.i.i.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not15.i.i.i.i, label %.loopexit.i.a, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cb
  %i.qv = getelementptr inbounds nuw i8, ptr %.0.i8.i226, i64 124
  %i.qw = load i32, ptr %i.qv, align 4
  %i.qx = load i32, ptr %i.qr, align 4, !tbaa !218
  %i.qy = icmp eq i32 %i.qx, %i.nt
  br i1 %i.qy, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i, label %.lr.ph.i.i.i

bb.cc:                                            ; preds = %.lr.ph.i.i.i
  %i.qz = load i32, ptr %i.rf, align 4, !tbaa !218
  %i.ra = icmp eq i32 %i.qz, %i.nt
  br i1 %i.ra, label %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !51

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.i, %bb.cc
  %.01016.i20.i.i.i = phi i32 [ %i.rd, %bb.cc ], [ %i.qp, %.lr.ph.i.i.i.i ]
  %.017.i19.i.i.i = phi i32 [ %i.rb, %bb.cc ], [ 0, %.lr.ph.i.i.i.i ]
  %i.rb = add i32 %.017.i19.i.i.i, 1              ; 2 uses
  %i.rc = add i32 %i.rb, %.01016.i20.i.i.i
  %i.rd = and i32 %i.rc, %i.qw                    ; 2 uses
  %i.re = zext i32 %i.rd to i64                   ; 2 uses
  %i.rf = getelementptr inbounds nuw [12 x i8], ptr %i.qk, i64 %i.re ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rh = load i32, ptr %i.rg, align 4            ; 2 uses
  %i.ri = and i32 %i.rh, 2
  %.not.i.i.i.i240 = icmp eq i32 %i.ri, 0
  br i1 %.not.i.i.i.i240, label %.loopexit.i.a, label %bb.cc, !llvm.loop !51

_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i: ; preds = %bb.cc, %.lr.ph.i.i.i.i
  %.lcssa17.i.i.i = phi i32 [ %i.qt, %.lr.ph.i.i.i.i ], [ %i.rh, %bb.cc ]
  %i.rj = phi i64 [ %i.qq, %.lr.ph.i.i.i.i ], [ %i.re, %bb.cc ]
  %i.rk = trunc i32 %.lcssa17.i.i.i to i1
  br i1 %i.rk, label %bb.cd, label %.loopexit.i.a

bb.cd:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i
  %i.rl = getelementptr inbounds nuw [12 x i8], ptr %i.qk, i64 %i.rj
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8 ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !218
  %i.ro = add i32 %i.rn, 1
  store i32 %i.ro, ptr %i.rm, align 4, !tbaa !218
  %i.rp = load i32, ptr %i.qa, align 8, !tbaa !571
  %i.rq = add i32 %i.rp, 1
  br label %.sink.split.i241

.loopexit.i.a:                                    ; preds = %.lr.ph.i.i.i, %_ZNK12hb_hashmap_tIjjLb0EE10fetch_itemERKjj.exit.i.i.i, %bb.cb, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i32 1, ptr %i.c, align 4, !tbaa !218
  %i.rr = mul i32 %i.nt, -1640531535
  %i.rs = call noundef zeroext i1 @_ZN12hb_hashmap_tIjjLb0EE13set_with_hashIRKjiEEbOT_jOT0_b(ptr noundef nonnull align 8 dereferenceable(48) %i.qi, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %i.rr, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br i1 %i.rs, label %bb.ce, label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit

bb.ce:                                            ; preds = %.loopexit.i.a
  %i.rt = load i32, ptr %i.qa, align 8, !tbaa !571
  %i.ru = add i32 %i.rt, 1
  br label %.sink.split.i241

.sink.split.i241:                                 ; preds = %bb.ce, %bb.cd, %bb.bw
  %.sink.i242 = phi i32 [ %i.rq, %bb.cd ], [ %i.ru, %bb.ce ], [ 1, %bb.bw ]
  store i32 %.sink.i242, ptr %i.qa, align 8, !tbaa !571
  br label %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit

_ZN5graph7graph_t8vertex_t10add_parentEjb.exit:   ; preds = %bb.by, %.loopexit.i.a, %.sink.split.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rv = getelementptr inbounds nuw i8, ptr %.0.i.i223, i64 36 ; 4 uses
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !272 ; 2 uses
  %i.rx = add i32 %i.rw, 1                        ; 6 uses
  %i.ry = icmp slt i32 %i.rx, 0
  br i1 %i.ry, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread288, label %bb.cf, !prof !112

bb.cf:                                            ; preds = %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit
  %i.rz = getelementptr inbounds nuw i8, ptr %.0.i.i223, i64 32 ; 4 uses
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !271 ; 5 uses
  %i.sb = icmp slt i32 %i.sa, 0
  br i1 %i.sb, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread288, label %bb.cg, !prof !112

bb.cg:                                            ; preds = %bb.cf
  %.not.i234 = icmp samesign ugt i32 %i.rx, %i.sa
  br i1 %.not.i234, label %.preheader.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread, !prof !112

.preheader.i:                                     ; preds = %bb.cg, %.preheader.i
  %.043.i = phi i32 [ %i.se, %.preheader.i ], [ %i.sa, %bb.cg ] ; 2 uses
  %i.sc = lshr i32 %.043.i, 1
  %i.sd = add nuw i32 %.043.i, 8
  %i.se = add nuw i32 %i.sd, %i.sc                ; 7 uses
  %i.sf = icmp ugt i32 %i.rx, %i.se
  br i1 %i.sf, label %.preheader.i, label %.thread.i235, !llvm.loop !35

.thread.i235:                                     ; preds = %.preheader.i
  %i.sg = icmp ugt i32 %i.se, 357913941
  br i1 %i.sg, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread291, label %bb.ch, !prof !112

bb.ch:                                            ; preds = %.thread.i235
  %.not49.i = icmp eq i32 %i.sa, 0
  %i.sh = getelementptr inbounds nuw i8, ptr %.0.i.i223, i64 40 ; 3 uses
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !273 ; 2 uses
  br i1 %.not49.i, label %bb.ci, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i

bb.ci:                                            ; preds = %bb.ch
  %.not9.i.i.i = icmp eq ptr %i.si, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.sj = zext nneg i32 %i.se to i64
  %i.sk = mul nuw nsw i64 %i.sj, 12
  %i.sl = call ptr @hb_malloc(i64 noundef %i.sk) #21 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.sl, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %bb.ck, !prof !112

bb.ck:                                            ; preds = %bb.cj
  %i.sm = load i32, ptr %i.rv, align 4, !tbaa !272 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.sm, 0
  br i1 %.not.i.i.i.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, label %bb.cl, !prof !112

bb.cl:                                            ; preds = %bb.ck
  %i.sn = zext i32 %i.sm to i64
  %i.so = mul nuw nsw i64 %i.sn, 12
  %i.sp = load ptr, ptr %i.sh, align 8, !tbaa !273
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sl, ptr readonly align 1 %i.sp, i64 %i.so, i1 false), !alias.scope !2862
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i: ; preds = %bb.ci, %bb.ch
  %i.sq = phi ptr [ null, %bb.ci ], [ %i.si, %bb.ch ]
  %i.sr = zext nneg i32 %i.se to i64
  %i.ss = mul nuw nsw i64 %i.sr, 12
  %i.st = call ptr @hb_realloc(ptr noundef %i.sq, i64 noundef %i.ss) #21 ; 2 uses
  %.not22.i = icmp eq ptr %i.st, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit, !prof !198

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i, %bb.cj
  %i.su = load i32, ptr %i.rz, align 8, !tbaa !271 ; 2 uses
  %.not23.i237 = icmp ugt i32 %i.se, %i.su
  br i1 %.not23.i237, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread291, label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread, !prof !174

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread291: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %.thread.i235
  %.sink.i.ph.in = phi i32 [ %i.sa, %.thread.i235 ], [ %i.su, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %i.rz, align 8, !tbaa !271
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread288

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit: ; preds = %bb.ck, %bb.cl, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.st, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i ], [ %i.sl, %bb.cl ], [ %i.sl, %bb.ck ]
  store ptr %.1.i.i42.i, ptr %i.sh, align 8, !tbaa !273
  store i32 %i.se, ptr %i.rz, align 8, !tbaa !271
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i, %bb.cg, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit
  %i.sv = load i32, ptr %i.rv, align 4, !tbaa !272 ; 3 uses
  %i.sw = icmp ugt i32 %i.rx, %i.sv
  br i1 %i.sw, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread
  %i.sx = sub nuw nsw i32 %i.rx, %i.sv
  %i.sy = mul i32 %i.sx, 12                       ; 2 uses
  %.not.i.i.i.i.i.i229 = icmp eq i32 %i.sy, 0
  br i1 %.not.i.i.i.i.i.i229, label %bb.co, label %bb.cn, !prof !112

bb.cn:                                            ; preds = %bb.cm
  %i.sz = getelementptr inbounds nuw i8, ptr %.0.i.i223, i64 40
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !273
  %i.tb = zext nneg i32 %i.sv to i64
  %i.tc = getelementptr inbounds nuw [12 x i8], ptr %i.ta, i64 %i.tb
  %i.td = zext i32 %i.sy to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.tc, i8 0, i64 %i.td, i1 false)
  br label %bb.co

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread288: ; preds = %bb.cf, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread291, %_ZN5graph7graph_t8vertex_t10add_parentEjb.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit230

bb.co:                                            ; preds = %bb.cn, %bb.cm, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread
  store i32 %i.rx, ptr %i.rv, align 4, !tbaa !272
  %i.te = getelementptr inbounds nuw i8, ptr %.0.i.i223, i64 40
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !273
  %i.tg = zext i32 %i.rw to i64
  %i.th = getelementptr inbounds nuw [12 x i8], ptr %i.tf, i64 %i.tg
  br label %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit230

_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit230: ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread288, %bb.co
  %.0.i10.i228 = phi ptr [ @_hb_CrapPool, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb.exit.thread288 ], [ %i.th, %bb.co ]
  %i.ti = getelementptr inbounds nuw i8, ptr %.0.i10.i228, i64 8
  store i32 %i.au, ptr %i.ti, align 4, !tbaa !304
  %i.tj = getelementptr inbounds nuw i8, ptr %.0109324, i64 12 ; 2 uses
  %.not152 = icmp eq ptr %i.tj, %i.ms
  br i1 %.not152, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit230, %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit, %_ZN11hb_vector_tIjLb0EEixEi.exit
  %.5133 = phi i32 [ %.0128327, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.2130, %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit ], [ %.2130, %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit230 ] ; 2 uses
  %.7126 = phi i32 [ %.0119328, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %.4123, %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit ], [ %.4123, %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit230 ] ; 2 uses
  %.5117 = phi i32 [ %.0112329, %_ZN11hb_vector_tIjLb0EEixEi.exit ], [ %i.mt, %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit ], [ %i.mt, %_ZNK5graph20LigatureSubstFormat116add_virtual_linkERNS_24gsubgpos_graph_context_tEjj.exit230 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tk = load i32, ptr %i.cf, align 4, !tbaa !345
  %i.tl = zext i32 %i.tk to i64
  %.not153 = icmp samesign ult i64 %indvars.iv.next, %i.tl
  br i1 %.not153, label %_ZN11hb_vector_tIjLb0EEixEi.exit, label %.thread300.loopexit, !llvm.loop !2859

.thread300.loopexit:                              ; preds = %.loopexit
  %i.tm = add i32 %.5117, 1
  br label %.thread300

.thread300:                                       ; preds = %.thread300.loopexit, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit
  %.0128.lcssa = phi i32 [ 0, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit ], [ %.5133, %.thread300.loopexit ] ; 2 uses
  %.0119.lcssa = phi i32 [ -1, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit ], [ %.7126, %.thread300.loopexit ]
  %.0112.lcssa = phi i32 [ 1, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit ], [ %i.tm, %.thread300.loopexit ]
  %i.tn = load i16, ptr %i.v, align 1, !tbaa !211
  %i.to = call noundef i16 @llvm.bswap.i16(i16 %i.tn)
  %i.tp = zext i16 %i.to to i32
  %i.tq = sub i32 %i.tp, %.0128.lcssa
  %i.tr = shl i32 %i.tq, 1
  %i.ts = load ptr, ptr %i.l, align 8, !tbaa !591, !nonnull !230, !align !592 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !567
  %.not.i231 = icmp ult i32 %i.j, %i.tu
  br i1 %.not.i231, label %bb.cq, label %bb.cp, !prof !219

bb.cp:                                            ; preds = %.thread300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit233

bb.cq:                                            ; preds = %.thread300
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !573
  %i.tx = getelementptr inbounds nuw [216 x i8], ptr %i.tw, i64 %i.r
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit233

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit233: ; preds = %bb.cp, %bb.cq
  %.0.i232 = phi ptr [ @_hb_CrapPool, %bb.cp ], [ %i.tx, %bb.cq ]
  %i.ty = getelementptr inbounds nuw i8, ptr %.0.i232, i64 8 ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !593
  %i.ua = zext i32 %i.tr to i64
  %i.ub = sub nsw i64 0, %i.ua
  %i.uc = getelementptr inbounds i8, ptr %i.tz, i64 %i.ub
  store ptr %i.uc, ptr %i.ty, align 8, !tbaa !593
  %i.ud = trunc i32 %.0128.lcssa to i16
  %i.ue = call i16 @llvm.bswap.i16(i16 %i.ud)
  store i16 %i.ue, ptr %i.v, align 1, !tbaa !282
  %i.uf = call noundef zeroext i1 @_ZN5graph8Coverage15filter_coverageERNS_24gsubgpos_graph_context_tEjjj(ptr noundef nonnull align 8 dereferenceable(168) %1, i32 noundef %i.au, i32 noundef %.0119.lcssa, i32 noundef %.0112.lcssa)
  %. = select i1 %i.uf, i32 %i.j, i32 -1
  br label %.thread307

.thread307:                                       ; preds = %bb.ad, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i, %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i, %bb.r, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit233, %bb.a
  %.8 = phi i32 [ -1, %bb.a ], [ %., %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit233 ], [ -1, %bb.r ], [ -1, %_ZNK5graph11LigatureSet8sanitizeERKNS_7graph_t8vertex_tE.exit.i.i ], [ -1, %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit.i.i ], [ -1, %_ZNK2OT7ArrayOfINS_8OffsetToINS_6Layout9GSUB_impl11LigatureSetINS2_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEvLb1EEES8_EixEi.exit ], [ -1, %bb.ad ]
  ret i32 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN5graph7graph_t10move_childIN2OT8OffsetToINS2_6Layout9GSUB_impl11LigatureSetINS4_10SmallTypesEEENS2_7NumTypeILb1EtLj2EEEvLb1EEEEEjjPKT_jSE_(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 1, ptr %i.a, align 1, !tbaa !647
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 1, ptr %i.b, align 2, !tbaa !601
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !567  ; 2 uses
  %.not.i = icmp ult i32 %1, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !219

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !567
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !573
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [216 x i8], ptr %i.f, i64 %i.g
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit: ; preds = %bb.b, %bb.c
  %i.i = phi i32 [ %.pre, %bb.b ], [ %i.d, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ @_hb_CrapPool, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.not.i20 = icmp ult i32 %3, %i.i
  br i1 %.not.i20, label %bb.e, label %bb.d, !prof !219

bb.d:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(216) @_hb_NullPool, i64 216, i1 false)
  %.pre42 = load i32, ptr %i.c, align 4, !tbaa !567
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre43 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit22

bb.e:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !573  ; 2 uses
  %i.l = zext i32 %3 to i64
  %i.m = getelementptr inbounds nuw [216 x i8], ptr %i.k, i64 %i.l
  br label %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit22

_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit22: ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %.pre43, %bb.d ], [ %i.k, %bb.e ]
  %i.o = phi i32 [ %.pre42, %bb.d ], [ %i.i, %bb.e ]
  %.0.i21 = phi ptr [ @_hb_CrapPool, %bb.d ], [ %i.m, %bb.e ] ; 5 uses
  %.not.i.i.i = icmp ult i32 %1, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = zext i32 %1 to i64
  %i.r = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %i.q
  %.0.i.i.i = select i1 %.not.i.i.i, ptr %i.r, ptr @_hb_NullPool, !prof !219 ; 4 uses
  %i.s = load ptr, ptr %.0.i.i.i, align 8, !tbaa !315 ; 2 uses
  %i.t = icmp uge ptr %2, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %.not.i23 = icmp ult ptr %2, %i.v
  %or.cond.i = select i1 %i.t, i1 %.not.i23, i1 false
  br i1 %or.cond.i, label %bb.f, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit

bb.f:                                             ; preds = %_ZN11hb_vector_tIN5graph7graph_t8vertex_tELb0EEixEi.exit22
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !279  ; 2 uses
  %.not2427.not.i = icmp eq i32 %i.x, 0
  br i1 %.not2427.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !655
  %wide.trip.count.i = zext i32 %i.x to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5graph7graph_t16index_for_offsetEjPKv.exit, label %bb.h, !llvm.loop !53

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !316
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ad
  %.not23.not.i = icmp eq ptr %2, %i.ae
  br i1 %.not23.not.i, label %.thread.i, label %bb.g

end_hunk_10
begin_hunk_11_@_ZN5graph20LigatureSubstFormat16shrinkERNS_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEj:bb.a
  br i1 %or.cond, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %bb.bo

bb.bo:                                            ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  br i1 %i.kr, label %bb.bp, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread

bb.bp:                                            ; preds = %bb.bo
  %i.kx = load i16, ptr %i.kq, align 1, !tbaa !211
  %i.ky = call noundef i16 @llvm.bswap.i16(i16 %i.kx)
  %i.kz = zext i16 %i.ky to i32
  %.not.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i32 %.sroa.13.0, %i.kz
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.bq, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i, !prof !219

bb.bq:                                            ; preds = %bb.bp
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i: ; preds = %bb.bq, %bb.bp
  %.val.val.i.i.i = load i32, ptr %i.c, align 4, !tbaa !218
  %i.la = icmp ugt i32 %.val.val.i.i.i, %.sroa.33.sroa.0.0
  br i1 %i.la, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %bb.br

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread: ; preds = %bb.bo
  %.val.val.i.i.i490 = load i32, ptr %i.c, align 4, !tbaa !218
  %i.lb = icmp ugt i32 %.val.val.i.i.i490, %.sroa.33.sroa.0.0
  br i1 %i.lb, label %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit", label %.thread

bb.br:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.lc = add nuw nsw i32 %.sroa.13.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.thread:                                          ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ld = load i16, ptr %i.kq, align 1, !tbaa !211
  %i.le = call noundef i16 @llvm.bswap.i16(i16 %i.ld)
  %i.lf = zext i16 %i.le to i32
  %.not.i.i.i.i.i145 = icmp samesign ult i32 %.sroa.13.0, %i.lf
  br i1 %.not.i.i.i.i.i145, label %bb.bs, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !219

bb.bs:                                            ; preds = %.thread
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.lg = zext nneg i32 %.sroa.13.0 to i64
  %i.lh = getelementptr inbounds nuw [6 x i8], ptr %i.ks, i64 %i.lg
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.bs, %.thread
  %.0.i.i.i.i.i = phi ptr [ %i.lh, %bb.bs ], [ @_hb_Null_OT_RangeRecord, %.thread ]
  %i.li = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.lj = load i16, ptr %i.li, align 1, !tbaa !211
  %i.lk = call noundef i16 @llvm.bswap.i16(i16 %i.lj)
  %i.ll = zext i16 %i.lk to i32
  %.not.i.i.i.i146 = icmp ult i32 %.sroa.27.0, %i.ll
  br i1 %.not.i.i.i.i146, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.lm = add nuw nsw i32 %.sroa.13.0, 1          ; 4 uses
  %i.ln = load i16, ptr %i.kq, align 1, !tbaa !211
  %i.lo = call noundef i16 @llvm.bswap.i16(i16 %i.ln)
  %i.lp = zext i16 %i.lo to i32                   ; 2 uses
  %i.lq = icmp samesign ult i32 %i.lm, %i.lp
  br i1 %i.lq, label %bb.bu, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

bb.bu:                                            ; preds = %bb.bt
  %i.lr = zext nneg i32 %i.lm to i64              ; 2 uses
  %i.ls = getelementptr inbounds nuw [6 x i8], ptr %i.ks, i64 %i.lr
  %i.lt = load i16, ptr %i.ls, align 1, !tbaa !211
  %i.lu = call noundef i16 @llvm.bswap.i16(i16 %i.lt)
  %i.lv = zext i16 %i.lu to i32
  %i.lw = getelementptr inbounds nuw [6 x i8], ptr %.sroa.5152.0, i64 %i.lr
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ly = load i16, ptr %i.lx, align 1, !tbaa !211
  %i.lz = call noundef i16 @llvm.bswap.i16(i16 %i.ly)
  %i.ma = zext i16 %i.lz to i32                   ; 3 uses
  %i.mb = add i32 %.sroa.22.0, 1
  %.not1.i.i.i.i = icmp eq i32 %i.mb, %i.ma
  br i1 %.not1.i.i.i.i, label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit, label %.sink.split.i.i.i.i, !prof !219

bb.bv:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.mc = add i32 %.sroa.22.0, 1
  %i.md = add nuw nsw i32 %.sroa.27.0, 1
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

.sink.split.i.i.i.i:                              ; preds = %bb.bu
  br label %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit

_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit: ; preds = %bb.bt, %bb.bv, %bb.br, %bb.bu, %.sink.split.i.i.i.i
  %.sroa.27.1 = phi i32 [ 0, %.sink.split.i.i.i.i ], [ %.sroa.27.0, %bb.br ], [ %i.lv, %bb.bu ], [ 0, %bb.bt ], [ %i.md, %bb.bv ]
  %.sroa.22.2 = phi i32 [ %i.ma, %.sink.split.i.i.i.i ], [ %.sroa.22.0, %bb.br ], [ %i.ma, %bb.bu ], [ %.sroa.22.0, %bb.bt ], [ %i.mc, %bb.bv ]
  %.sroa.13.2 = phi i32 [ %i.lp, %.sink.split.i.i.i.i ], [ %i.lc, %bb.br ], [ %i.lm, %bb.bu ], [ %i.lm, %bb.bt ], [ %.sroa.13.0, %bb.bv ]
  %i.me = add nuw i32 %.sroa.33.sroa.0.0, 1
  br label %bb.bl, !llvm.loop !2962

"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread, %bb.bl, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i
  %.sroa.33.sroa.0.0.lcssa = phi i32 [ 0, %bb.bl ], [ %.sroa.33.sroa.0.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.33.sroa.0.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.27.0.lcssa = phi i32 [ %.sroa.11.2, %bb.bl ], [ %.sroa.27.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.27.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.22.0.lcssa = phi i32 [ 0, %bb.bl ], [ %.sroa.22.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.22.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.13.0.lcssa = phi i32 [ %.sroa.7.0, %bb.bl ], [ %.sroa.13.0, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i ], [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i ], [ %.sroa.13.0, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.thread ]
  %.sroa.33.sroa.0.0.insert.ext = zext i32 %.sroa.33.sroa.0.0.lcssa to i64
  %.sroa.33.sroa.0.0.insert.insert = or disjoint i64 %.sroa.33.sroa.0.0.insert.ext, -4294967296
  %i.mf = and i64 %i.jf, 4294967295               ; 2 uses
  %i.mg = call ptr @hb_calloc(i64 noundef 1, i64 noundef %i.mf) #21 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  store ptr %i.mg, ptr %12, align 8, !tbaa !186
  %i.mh = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mf ; 2 uses
  store ptr %i.mi, ptr %i.mh, align 8, !tbaa !187
  %i.mj = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.mk = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %12, i64 96 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %12, i64 100 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %12, i64 104 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.mj, i8 0, i64 48, i1 false)
  store atomic i32 1, ptr %i.ml monotonic, align 8
  store atomic i8 1, ptr %i.mm monotonic, align 4
  store atomic ptr null, ptr %i.mn monotonic, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 3 uses
  store i8 1, ptr %i.mo, align 8, !tbaa !188
  %i.mp = getelementptr inbounds nuw i8, ptr %12, i64 114 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %12, i64 136 ; 2 uses
  store ptr null, ptr %i.mq, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.mp, i8 0, i64 18, i1 false)
  %i.mr = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 19 uses
  store i32 0, ptr %i.mr, align 4, !tbaa !190
  %i.ms = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 21 uses
  store ptr %i.mg, ptr %i.ms, align 8, !tbaa !191
  %i.mt = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  store ptr %i.mi, ptr %i.mt, align 8, !tbaa !192
  %i.mu = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr null, ptr %i.mu, align 8, !tbaa !193
  %i.mv = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 0, ptr %i.mv, align 8, !tbaa !194
  call void @_ZN22hb_serialize_context_t4finiEv(ptr noundef nonnull align 8 dereferenceable(144) %12)
  %i.mw = getelementptr inbounds nuw i8, ptr %12, i64 84 ; 5 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !195 ; 3 uses
  %i.my = load i32, ptr %i.mk, align 8, !tbaa !196 ; 6 uses
  %.not.i.i.i.i = icmp slt i32 %i.mx, %i.my
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"
  %i.mz = add i32 %i.mx, 1                        ; 2 uses
  %i.na = icmp slt i32 %i.my, 0
  br i1 %i.na, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i, label %bb.bx, !prof !112

bb.bx:                                            ; preds = %bb.bw
  %.not.i24.i = icmp ugt i32 %i.mz, %i.my
  br i1 %.not.i24.i, label %.preheader.i.i, label %..critedge_crit_edge.i.i.i.i, !prof !112

.preheader.i.i:                                   ; preds = %bb.bx, %.preheader.i.i
  %.043.i.i = phi i32 [ %i.nd, %.preheader.i.i ], [ %i.my, %bb.bx ] ; 2 uses
  %i.nb = lshr i32 %.043.i.i, 1
  %i.nc = add i32 %.043.i.i, 8
  %i.nd = add i32 %i.nc, %i.nb                    ; 7 uses
  %i.ne = icmp ugt i32 %i.mz, %i.nd
  br i1 %i.ne, label %.preheader.i.i, label %.thread.i.i, !llvm.loop !1

.thread.i.i:                                      ; preds = %.preheader.i.i
  %i.nf = icmp ugt i32 %i.nd, 536870911
  br i1 %i.nf, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %bb.by, !prof !112

bb.by:                                            ; preds = %.thread.i.i
  %.not49.i.i = icmp eq i32 %i.my, 0
  %i.ng = getelementptr inbounds nuw i8, ptr %12, i64 88 ; 3 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !197 ; 2 uses
  br i1 %.not49.i.i, label %bb.bz, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %.not9.i.i.i.i = icmp eq ptr %i.nh, null
  br i1 %.not9.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ni = shl nuw i32 %i.nd, 3
  %i.nj = zext i32 %i.ni to i64
  %i.nk = call ptr @hb_malloc(i64 noundef %i.nj) #21 ; 4 uses
  %.not10.i.i.i.i = icmp eq ptr %i.nk, null
  br i1 %.not10.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %bb.cb, !prof !112

bb.cb:                                            ; preds = %bb.ca
  %i.nl = load i32, ptr %i.mw, align 4, !tbaa !195 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, label %bb.cc, !prof !112

bb.cc:                                            ; preds = %bb.cb
  %i.nm = zext i32 %i.nl to i64
  %i.nn = shl nuw nsw i64 %i.nm, 3
  %i.no = load ptr, ptr %i.ng, align 8, !tbaa !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nk, ptr readonly align 1 %i.no, i64 %i.nn, i1 false), !alias.scope !3019
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i: ; preds = %bb.bz, %bb.by
  %i.np = phi ptr [ null, %bb.bz ], [ %i.nh, %bb.by ]
  %i.nq = shl nuw i32 %i.nd, 3
  %i.nr = zext i32 %i.nq to i64
  %i.ns = call ptr @hb_realloc(ptr noundef %i.np, i64 noundef %i.nr) #21 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ns, null
  br i1 %.not22.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, !prof !198

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.ca
  %i.nt = load i32, ptr %i.mk, align 8, !tbaa !196 ; 2 uses
  %.not23.i.i = icmp ugt i32 %i.nd, %i.nt
  br i1 %.not23.i.i, label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, label %..critedge_crit_edge.i.i.i.i, !prof !174

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %.thread.i.i
  %.sink.i.ph.in.i = phi i32 [ %i.my, %.thread.i.i ], [ %i.nt, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i ]
  %.sink.i.ph.i = xor i32 %.sink.i.ph.in.i, -1
  store i32 %.sink.i.ph.i, ptr %i.mk, align 8, !tbaa !196
  br label %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i, %bb.cc, %bb.cb
  %.1.i.i42.i.i = phi ptr [ %i.ns, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.i.i ], [ %i.nk, %bb.cc ], [ %i.nk, %bb.cb ]
  store ptr %.1.i.i42.i.i, ptr %i.ng, align 8, !tbaa !197
  store i32 %i.nd, ptr %i.mk, align 8, !tbaa !196
  br label %..critedge_crit_edge.i.i.i.i

..critedge_crit_edge.i.i.i.i:                     ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE14realloc_vectorIS2_TnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPS2_j11hb_priorityILj0EE.exit.thread53.i.i, %bb.bx
  %.pre.i.i.i.i = load i32, ptr %i.mw, align 4, !tbaa !195
  br label %.critedge.i.i.i.i

_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i: ; preds = %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread30.i, %bb.bw
  %i.nu = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.nu, ptr @_hb_CrapPool, align 16
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit"
  %i.nv = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.mx, %"_ZorI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE24hb_filter_iter_factory_tIZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSO_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISO_Efp_EEEOSO_OSU_.exit" ] ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !197
  %i.ny = add i32 %i.nv, 1
  store i32 %i.ny, ptr %i.mw, align 4, !tbaa !195
  %i.nz = zext i32 %i.nv to i64
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nz
  store ptr null, ptr %i.oa, align 8, !tbaa !200
  br label %_ZN22hb_serialize_context_tC2EPvm.exit.i

_ZN22hb_serialize_context_tC2EPvm.exit.i:         ; preds = %.critedge.i.i.i.i, %_ZN11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE5allocEjb.exit.thread27.i
  store atomic i32 1, ptr %i.ml monotonic, align 8
  store atomic i8 1, ptr %i.mm monotonic, align 4
  store atomic ptr null, ptr %i.mn monotonic, align 8
  store i8 1, ptr %i.mo, align 8, !tbaa !188
  store ptr null, ptr %i.mq, align 8, !tbaa !189
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.mp, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i32 %i.jv, ptr %11, align 8
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 0, ptr %.sroa.4249.0..sroa_idx, align 4
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %.sroa.5152.0, ptr %.sroa.5250.0..sroa_idx, align 8
  %.sroa.6251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store i32 %.sroa.13.0.lcssa, ptr %.sroa.6251.0..sroa_idx, align 8
  %.sroa.7252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 2 uses
  store i32 %.sroa.22.0.lcssa, ptr %.sroa.7252.0..sroa_idx, align 4
  %.sroa.8253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  store i32 %.sroa.27.0.lcssa, ptr %.sroa.8253.0..sroa_idx, align 8
  %.sroa.9254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 0, ptr %.sroa.9254.0..sroa_idx, align 4
  %.sroa.10255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  store i64 %.sroa.33.sroa.0.0.insert.insert, ptr %.sroa.10255.0..sroa_idx, align 8
  %.sroa.11256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 3 uses
  store i32 1, ptr %.sroa.11256.0..sroa_idx, align 8
  %.sroa.13258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %i.c, ptr %.sroa.13258.0..sroa_idx, align 8
  %.sroa.14259.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr @_ZL11hb_identity, ptr %.sroa.14259.0..sroa_idx, align 8
  %.sroa.15260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr @_ZL8hb_first, ptr %.sroa.15260.0..sroa_idx, align 8
  %i.ob = load ptr, ptr %i.ms, align 8, !tbaa !191 ; 7 uses
  %i.oc = load i32, ptr %i.mr, align 4, !tbaa !190 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.oc, 0
  br i1 %.not11.i.i.i.i.i, label %bb.cd, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEEEvP22hb_serialize_context_tT_.exit.thread.i", !prof !219

bb.cd:                                            ; preds = %_ZN22hb_serialize_context_tC2EPvm.exit.i
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 2 ; 5 uses
  %i.oe = ptrtoint ptr %i.ob to i64
  %i.of = load ptr, ptr %i.mt, align 8, !tbaa !192
  %i.og = ptrtoint ptr %i.of to i64
  %i.oh = sub i64 %i.og, %i.oe
  %i.oi = icmp slt i64 %i.oh, 2
  br i1 %i.oi, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEEEvP22hb_serialize_context_tT_.exit.thread.sink.split.i", label %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i, !prof !112

_ZL9hb_memsetPvij.exit.i.i.i.i.i.i:               ; preds = %bb.cd
  store i16 0, ptr %i.ob, align 1
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ms, align 8, !tbaa !191 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 2
  store ptr %i.oj, ptr %i.ms, align 8, !tbaa !191
  %i.ok = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %i.ok, label %"_ZN2OT6Layout6CommonL18Coverage_serializeI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tINS1_8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEEEvP22hb_serialize_context_tT_.exit.i", label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i
  %i.ol = call fastcc noundef i32 @"_ZNK4$_32clIR13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSC_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSO_0EEEEN10_hb_head_tIjJDTcl4implclsr3stdE7forwardIT_Efp_Ecv11hb_priorityILj16EE_EEEEE4typeEOSX_"(ptr noundef nonnull align 8 dereferenceable(72) %11)
  %.sroa.048.0.copyload.i.i.i = load i32, ptr %11, align 8 ; 5 uses
  %.sroa.853.0.copyload.i.i.i = load ptr, ptr %.sroa.5250.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1358.0.copyload.i.i.i = load i32, ptr %.sroa.6251.0..sroa_idx, align 8
  %.sroa.24.0.copyload.i.i.i = load i32, ptr %.sroa.7252.0..sroa_idx, align 4
  %.sroa.28.0.copyload.i.i.i = load i32, ptr %.sroa.8253.0..sroa_idx, align 8
  %.sroa.3470.0.copyload.i.i.i = load i32, ptr %.sroa.10255.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %.sroa.39.0.copyload.i.i.i = load i32, ptr %.sroa.39.0..sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.40.0.copyload.i.i.i = load i32, ptr %.sroa.11256.0..sroa_idx, align 8 ; 3 uses
  %.sroa.4173.0.copyload.i.i.i = load ptr, ptr %.sroa.13258.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !3020
  call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %10, ptr noundef nonnull align 8 dereferenceable(72) %11), !noalias !3020
  %i.om = load i32, ptr %.sroa.39.0..sroa_idx.i.i.i, align 4, !tbaa !693, !noalias !3023 ; 4 uses
  %i.on = load i32, ptr %.sroa.11256.0..sroa_idx, align 8, !tbaa !524, !noalias !3023
  %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.om to i64 ; 2 uses
  %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.oo, align 8, !alias.scope !3024, !noalias !3020
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 %i.on, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !3024, !noalias !3020
  %.sroa.0.0.copyload3.i.i.i.i.i.i = load i32, ptr %10, align 8, !noalias !3025
  %.sroa.0.0.copyload3.fr.i.i.i.i.i.i = freeze i32 %.sroa.0.0.copyload3.i.i.i.i.i.i ; 2 uses
  %.sroa.11.0..sroa_idx12.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.11.0.copyload13.i.i.i.i.i.i = load i32, ptr %.sroa.11.0..sroa_idx12.i.i.i.i.i.i, align 8, !noalias !3025 ; 2 uses
  %.sroa.23.0..sroa_idx21.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  %.sroa.23.0.copyload22.i.i.i.i.i.i = load i32, ptr %.sroa.23.0..sroa_idx21.i.i.i.i.i.i, align 8, !noalias !3025
  switch i32 %.sroa.0.0.copyload3.fr.i.i.i.i.i.i, label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" [
    i32 1, label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i
    i32 2, label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i
  ]

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !3025, !srcloc !212
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i"

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i: ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !noalias !3025, !srcloc !212
  br label %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i"

"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i": ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.us.us.i.preheader.i.i.i.i.i, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i.i.i.i.preheader.i.i.i.i, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout6Common8CoverageEEEPT_S6_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !3020
  %.not.i.i.i.i.i.i.i = icmp eq i32 %.sroa.048.0.copyload.i.i.i, %.sroa.0.0.copyload3.fr.i.i.i.i.i.i
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.853.0.copyload.i.i.i, i64 2 ; 6 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.sroa.853.0.copyload.i.i.i, i64 4 ; 3 uses
  %i.or = icmp eq i32 %.sroa.048.0.copyload.i.i.i, 1
  %.sroa.048.0.copyload.i.off.i.i = add i32 %.sroa.048.0.copyload.i.i.i, -1
  %switch.i.i = icmp ult i32 %.sroa.048.0.copyload.i.off.i.i, 2
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i.us.us.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.thread101.i.us.us.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568": ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE9hb_pair_tIjjEEdeEv.exit.i.i.i.i.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.thread.i.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568", %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i"
  %.sroa.3470.0.i.i.i.ph = phi i32 [ %i.qv, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ %.sroa.3470.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ]
  %.sroa.28.0.i.i.i.ph = phi i32 [ %.sroa.28.2.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ %.sroa.28.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ] ; 3 uses
  %.sroa.24.0.i.i.i.ph = phi i32 [ %.sroa.24.3.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ %.sroa.24.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ]
  %.sroa.1358.0.i.i.i.ph = phi i32 [ %.sroa.1358.3.ph.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ %.sroa.1358.0.copyload.i.i.i, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ]
  %.024.i.i.i.ph = phi i32 [ %.125.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ]
  %.023.i.i.i.ph = phi i32 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ -2, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ]
  %.021.i.i.i.ph = phi i32 [ %.122.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ 0, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ]
  %.0.i.i.i130.ph = phi i1 [ %.1.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit568" ], [ false, %"_ZNK9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjE3endEv.exit.i.i.i" ]
  %i.os = icmp ne i32 %.sroa.28.0.i.i.i.ph, %.sroa.23.0.copyload22.i.i.i.i.i.i
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit"
  %.sroa.3470.0.i.i.i.ph570 = phi i32 [ %.sroa.3470.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer" ], [ %i.pl, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.sroa.1358.0.i.i.i.ph571 = phi i32 [ %.sroa.1358.0.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer" ], [ %i.pk, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit" ] ; 6 uses
  %.024.i.i.i.ph572 = phi i32 [ %.024.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer" ], [ %.125.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.023.i.i.i.ph573 = phi i32 [ %.023.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer" ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.021.i.i.i.ph574 = phi i32 [ %.021.i.i.i.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer" ], [ %.122.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.0.i.i.i130.ph575 = phi i1 [ %.0.i.i.i130.ph, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer" ], [ %.1.i.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.loopexit" ]
  %.not.i.i.i.i.i.i.i.i = icmp ne i32 %.sroa.1358.0.i.i.i.ph571, %.sroa.11.0.copyload13.i.i.i.i.i.i
  %i.ot = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.os
  %.not.i.i.i.i.i.i = icmp ne i32 %.sroa.1358.0.i.i.i.ph571, %.sroa.11.0.copyload13.i.i.i.i.i.i
  %i.ou = zext nneg i32 %.sroa.1358.0.i.i.i.ph571 to i64
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr %i.oq, i64 %i.ou
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i"

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569", %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i
  %.sroa.3470.0.i.i.i = phi i32 [ %i.ra, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.sroa.3470.0.i.i.i.ph570, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569" ] ; 6 uses
  %.024.i.i.i = phi i32 [ %.125.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.024.i.i.i.ph572, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569" ] ; 2 uses
  %.023.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.023.i.i.i.ph573, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569" ] ; 3 uses
  %.021.i.i.i = phi i32 [ %.122.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.021.i.i.i.ph574, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569" ] ; 2 uses
  %.0.i.i.i130 = phi i1 [ %.1.i.i.i, %_ZN13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEE8__next__Ev.exit.i.i.i ], [ %.0.i.i.i130.ph575, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i.outer569" ] ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ce, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSM_0EEneERKSS_.exit.i.i.i", !prof !219

bb.ce:                                            ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i"
  switch i32 %.sroa.048.0.copyload.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSM_0EEneERKSS_.exit.thread.i.i.i" [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i
    i32 2, label %.split.i.i.i.i.i.i
  ]

.split.i.i.i.i.i.i:                               ; preds = %bb.ce
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ow = icmp ne i32 %.sroa.3470.0.i.i.i, %i.om
  %or.cond109.i.i.i = select i1 %i.ot, i1 %i.ow, i1 false
  br i1 %or.cond109.i.i.i, label %.thread214.i.i.i, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSM_0EEneERKSS_.exit.thread.i.i.i"

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i.i.i.i.i: ; preds = %bb.ce
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %.old.i.i.i = icmp ne i32 %.sroa.3470.0.i.i.i, %i.om
  %or.cond110.i.i.i = select i1 %.not.i.i.i.i.i.i, i1 %.old.i.i.i, i1 false
  br i1 %or.cond110.i.i.i, label %.thread.i.i.i131, label %"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSM_0EEneERKSS_.exit.thread.i.i.i"

"_ZNK13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSA_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSM_0EEneERKSS_.exit.i.i.i": ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE15hb_range_iter_tIjjEEZN5graph20LigatureSubstFormat16shrinkERNSB_24gsubgpos_graph_context_tEjj11hb_vector_tIjLb0EEjEUl9hb_pair_tIjjEE_RK4$_19LPv0EERK3$_6L24hb_function_sortedness_t1ELSN_0EEjEppEv.exit.i.i.i"
  %.old.old.not.i.i.i = icmp eq i32 %.sroa.3470.0.i.i.i, %i.om
end_hunk_11
begin_hunk_12_@_ZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INS0_10SmallTypesEE6subsetEP19hb_subset_context_t:bb.a
  %.not13.i.i.us = icmp ult i32 %.sroa.0204.sroa.0.1, %i.hr
  br i1 %.not13.i.i.us, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i.us", label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", !prof !219

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i.us": ; preds = %.lr.ph.split.i.i.preheader.split.us
  %i.iy = add nuw i32 %.sroa.0204.sroa.0.1, %i.iu
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.iz
  %i.jb = load i16, ptr %i.ja, align 1, !tbaa !211
  %.not5.i.i.us = icmp eq i16 %i.jb, 0
  br i1 %.not5.i.i.us, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit"

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i"
  %.sroa.0.08.i.i = phi i32 [ %.sroa.0.1.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i" ], [ %.sroa.0204.sroa.0.1, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %.not13.i.i = icmp ult i32 %.sroa.0.08.i.i, %i.hr
  br i1 %.not13.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i", label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i", !prof !219

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i": ; preds = %.lr.ph.split.i.i
  %i.jc = add nuw i32 %.sroa.0.08.i.i, %i.iu
  %i.jd = zext i32 %i.jc to i64
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %i.gh, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 1, !tbaa !211
  %.not5.i.i = icmp eq i16 %i.jf, 0
  br i1 %.not5.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i", label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i": ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i", %.lr.ph.split.i.i
  %i.jg = add i32 %.sroa.0.08.i.i, 1              ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.jg, %i.hr
  br i1 %.not2.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i", %.backedge.i.i.i.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.kc, %.backedge.i.i.i.i.i.i ], [ %i.jg, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i" ] ; 6 uses
  %i.jh = mul i32 %.sroa.0.1.i.i, 506952113
  %i.ji = and i32 %i.jh, 1073741823
  %i.jj = urem i32 %i.ji, %i.iw                   ; 2 uses
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [12 x i8], ptr %.fr, i64 %i.jk ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = load i32, ptr %i.jm, align 4            ; 2 uses
  %i.jo = and i32 %i.jn, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i
  %i.jp = load i32, ptr %i.jl, align 4, !tbaa !218
  %i.jq = icmp eq i32 %i.jp, %.sroa.0.1.i.i
  br i1 %i.jq, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.jr = load i32, ptr %i.jx, align 4, !tbaa !218
  %i.js = icmp eq i32 %i.jr, %.sroa.0.1.i.i
  br i1 %i.js, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ac
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jv, %bb.ac ], [ %i.jj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jt, %bb.ac ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.jt = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ju = add i32 %i.jt, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.jv = and i32 %i.ju, %i.ix                    ; 2 uses
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %.fr, i64 %i.jw ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.jz = load i32, ptr %i.jy, align 4            ; 2 uses
  %i.ka = and i32 %i.jz, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ka, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %bb.ac, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jz, %bb.ac ]
  %i.kb = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.kb, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.kc = add i32 %.sroa.0.1.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i.i108 = icmp eq i32 %i.kc, %i.hr
  br i1 %.not.i.i.i.i.i.i108, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !90

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i
  %.not.not.i.i = icmp eq i32 %.sroa.0.1.i.i, %i.hr
  br i1 %.not.not.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i, !llvm.loop !5012

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit": ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i.us"
  %i.kd = load ptr, ptr %i.gi, align 8, !tbaa !288 ; 4 uses
  %.not.i = icmp eq ptr %i.kd, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.ad

bb.ad:                                            ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit"
  %i.ke = mul i32 %.0.i.i.i.i.i.i.i, 506952113
  %i.kf = and i32 %i.ke, 1073741823
  %i.kg = load i32, ptr %i.gj, align 8, !tbaa !322
  %i.kh = urem i32 %i.kf, %i.kg                   ; 2 uses
  %i.ki = zext nneg i32 %i.kh to i64              ; 2 uses
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.kd, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kl = load i32, ptr %i.kk, align 4            ; 2 uses
  %i.km = and i32 %i.kl, 2
  %.not15.i.i.i = icmp eq i32 %i.km, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %bb.ad
  %i.kn = load i32, ptr %i.gk, align 4
  %i.ko = load i32, ptr %i.kj, align 4, !tbaa !218
  %i.kp = icmp eq i32 %i.ko, %.0.i.i.i.i.i.i.i
  br i1 %i.kp, label %._crit_edge.i.i, label %.lr.ph.i.i110

bb.ae:                                            ; preds = %.lr.ph.i.i110
  %i.kq = load i32, ptr %i.la, align 4, !tbaa !218
  %i.kr = icmp eq i32 %i.kq, %.0.i.i.i.i.i.i.i
  br i1 %i.kr, label %._crit_edge.i.i, label %.lr.ph.i.i110, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %bb.ae, %.lr.ph.i.i.i109
  %.lcssa10.i.i = phi i32 [ %i.kl, %.lr.ph.i.i.i109 ], [ %i.lc, %bb.ae ]
  %i.ks = phi i64 [ %i.ki, %.lr.ph.i.i.i109 ], [ %i.kz, %bb.ae ]
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %i.kd, i64 %i.ks
  %i.ku = trunc i32 %.lcssa10.i.i to i1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %spec.select.i.i = select i1 %i.ku, ptr %i.kv, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit

.lr.ph.i.i110:                                    ; preds = %.lr.ph.i.i.i109, %bb.ae
  %.01016.i13.i.i = phi i32 [ %i.ky, %bb.ae ], [ %i.kh, %.lr.ph.i.i.i109 ]
  %.017.i12.i.i = phi i32 [ %i.kw, %bb.ae ], [ 0, %.lr.ph.i.i.i109 ]
  %i.kw = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.kx = add i32 %i.kw, %.01016.i13.i.i
  %i.ky = and i32 %i.kx, %i.kn                    ; 2 uses
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.kd, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.lc = load i32, ptr %i.lb, align 4            ; 2 uses
  %i.ld = and i32 %i.lc, 2
  %.not.i.i.i111 = icmp eq i32 %i.ld, 0
  br i1 %.not.i.i.i111, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.ae, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit:          ; preds = %.lr.ph.i.i110, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit", %bb.ad, %._crit_edge.i.i
  %.0.i = phi ptr [ @minus_1, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit" ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @minus_1, %bb.ad ], [ @minus_1, %.lr.ph.i.i110 ]
  %i.le = load i32, ptr %.0.i, align 4, !tbaa !218
  %i.lf = load i32, ptr %i.cg, align 4, !tbaa !540 ; 3 uses
  %i.lg = load i32, ptr %7, align 8, !tbaa !538   ; 6 uses
  %.not.i112 = icmp slt i32 %i.lf, %i.lg
  br i1 %.not.i112, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.lh = add i32 %i.lf, 1                        ; 2 uses
  %i.li = icmp slt i32 %i.lg, 0
  br i1 %i.li, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread281, label %bb.ag, !prof !112

bb.ag:                                            ; preds = %bb.af
  %.not.i171 = icmp ugt i32 %i.lh, %i.lg
  br i1 %.not.i171, label %.preheader.i, label %..critedge_crit_edge.i, !prof !112

.preheader.i:                                     ; preds = %bb.ag, %.preheader.i
  %.043.i = phi i32 [ %i.ll, %.preheader.i ], [ %i.lg, %bb.ag ] ; 2 uses
  %i.lj = lshr i32 %.043.i, 1
  %i.lk = add i32 %.043.i, 8
  %i.ll = add i32 %i.lk, %i.lj                    ; 7 uses
  %i.lm = icmp ugt i32 %i.lh, %i.ll
  br i1 %i.lm, label %.preheader.i, label %.thread.i, !llvm.loop !40

.thread.i:                                        ; preds = %.preheader.i
  %i.ln = icmp ugt i32 %i.ll, 1073741823
  br i1 %i.ln, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread284, label %bb.ah, !prof !112

bb.ah:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.lg, 0
  %i.lo = load ptr, ptr %i.ce, align 8, !tbaa !539 ; 2 uses
  br i1 %.not49.i, label %bb.ai, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.ai:                                            ; preds = %bb.ah
  %.not9.i.i.i = icmp eq ptr %i.lo, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lp = shl nuw i32 %i.ll, 2
  %i.lq = zext i32 %i.lp to i64
  %i.lr = call ptr @hb_malloc(i64 noundef %i.lq) #21 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.lr, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.ak, !prof !112

bb.ak:                                            ; preds = %bb.aj
  %i.ls = load i32, ptr %i.cg, align 4, !tbaa !540 ; 2 uses
  %.not.i.i.i.i173 = icmp eq i32 %i.ls, 0
  br i1 %.not.i.i.i.i173, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit, label %bb.al, !prof !112

bb.al:                                            ; preds = %bb.ak
  %i.lt = zext i32 %i.ls to i64
  %i.lu = shl nuw nsw i64 %i.lt, 2
  %i.lv = load ptr, ptr %i.ce, align 8, !tbaa !539
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lr, ptr readonly align 1 %i.lv, i64 %i.lu, i1 false), !alias.scope !5034
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.ai, %bb.ah
  %i.lw = phi ptr [ null, %bb.ai ], [ %i.lo, %bb.ah ]
  %i.lx = shl nuw i32 %i.ll, 2
  %i.ly = zext i32 %i.lx to i64
  %i.lz = call ptr @hb_realloc(ptr noundef %i.lw, i64 noundef %i.ly) #21 ; 2 uses
  %.not22.i = icmp eq ptr %i.lz, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit, !prof !198

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.aj
  %i.ma = load i32, ptr %7, align 8, !tbaa !538   ; 2 uses
  %.not23.i = icmp ugt i32 %i.ll, %i.ma
  br i1 %.not23.i, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread284, label %..critedge_crit_edge.i, !prof !174

_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread284:  ; preds = %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.lg, %.thread.i ], [ %i.ma, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %7, align 8, !tbaa !538
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread281

_ZN11hb_vector_tIjLb1EE5allocEjb.exit:            ; preds = %bb.ak, %bb.al, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.lz, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %i.lr, %bb.al ], [ %i.lr, %bb.ak ]
  store ptr %.1.i.i42.i, ptr %i.ce, align 8, !tbaa !539
  store i32 %i.ll, ptr %7, align 8, !tbaa !538
  br label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %bb.ag, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit
  %.pre.i = load i32, ptr %i.cg, align 4, !tbaa !540
  br label %.critedge.i

_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread281:  ; preds = %bb.af, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread284
  store i32 %i.gl, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.mb = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.lf, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit ] ; 2 uses
  %i.mc = load ptr, ptr %i.ce, align 8, !tbaa !539
  %i.md = add i32 %i.mb, 1
  store i32 %i.md, ptr %i.cg, align 4, !tbaa !540
  %i.me = zext i32 %i.mb to i64
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.mc, i64 %i.me
  store i32 %i.le, ptr %i.mf, align 4, !tbaa !218
  br label %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread281, %.critedge.i
  %i.mg = load i16, ptr %i.ge, align 1, !tbaa !211 ; 2 uses
  %i.mh = call noundef i16 @llvm.bswap.i16(i16 %i.mg)
  %i.mi = zext i16 %i.mh to i32                   ; 5 uses
  %.not6.i.i.i126 = icmp eq i16 %i.mg, 0
  br i1 %.not6.i.i.i126, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141", label %.lr.ph.i.i.i127

.lr.ph.i.i.i127:                                  ; preds = %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit
  %i.mj = load ptr, ptr %i.z, align 8, !tbaa !288, !noalias !5035 ; 3 uses
  %.not.i.i.i.i.i.i128 = icmp eq ptr %i.mj, null
  %i.mk = load i32, ptr %i.gf, align 8, !noalias !5035
  br i1 %.not.i.i.i.i.i.i128, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i129.preheader

.lr.ph.split.i.i.i129.preheader:                  ; preds = %.lr.ph.i.i.i127
  %i.ml = load i32, ptr %i.gg, align 4
  br label %.lr.ph.split.i.i.i129

.lr.ph.split.i.i.i129:                            ; preds = %.lr.ph.split.i.i.i129.preheader, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138"
  %.sroa.0186.sroa.0.0 = phi i32 [ %i.nh, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138" ], [ 0, %.lr.ph.split.i.i.i129.preheader ] ; 5 uses
  %i.mm = mul i32 %.sroa.0186.sroa.0.0, 506952113
  %i.mn = and i32 %i.mm, 1073741823
  %i.mo = urem i32 %i.mn, %i.mk                   ; 2 uses
  %i.mp = zext nneg i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [12 x i8], ptr %i.mj, i64 %i.mp ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !noalias !5035 ; 2 uses
  %i.mt = and i32 %i.ms, 2
  %.not15.i.i.i.i.i.i.i.i130 = icmp eq i32 %i.mt, 0
  br i1 %.not15.i.i.i.i.i.i.i.i130, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138", label %.lr.ph.i.i.i.i.i.i.i.i131

.lr.ph.i.i.i.i.i.i.i.i131:                        ; preds = %.lr.ph.split.i.i.i129
  %i.mu = load i32, ptr %i.mq, align 4, !tbaa !218, !noalias !5035
  %i.mv = icmp eq i32 %i.mu, %.sroa.0186.sroa.0.0
  br i1 %i.mv, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", label %.lr.ph.i.i.i.i.i.i.i132

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i132
  %i.mw = load i32, ptr %i.nc, align 4, !tbaa !218, !noalias !5035
  %i.mx = icmp eq i32 %i.mw, %.sroa.0186.sroa.0.0
  br i1 %i.mx, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", label %.lr.ph.i.i.i.i.i.i.i132, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i132:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i131, %bb.am
  %.01016.i20.i.i.i.i.i.i.i133 = phi i32 [ %i.na, %bb.am ], [ %i.mo, %.lr.ph.i.i.i.i.i.i.i.i131 ]
  %.017.i19.i.i.i.i.i.i.i134 = phi i32 [ %i.my, %bb.am ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i131 ]
  %i.my = add i32 %.017.i19.i.i.i.i.i.i.i134, 1   ; 2 uses
  %i.mz = add i32 %i.my, %.01016.i20.i.i.i.i.i.i.i133
  %i.na = and i32 %i.mz, %i.ml                    ; 2 uses
  %i.nb = zext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [12 x i8], ptr %i.mj, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !noalias !5035 ; 2 uses
  %i.nf = and i32 %i.ne, 2
  %.not.i.i.i.i.i.i.i.i135 = icmp eq i32 %i.nf, 0
  br i1 %.not.i.i.i.i.i.i.i.i135, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138", label %bb.am, !llvm.loop !6

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136": ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i.i131
  %.lcssa17.i.i.i.i.i.i.i137 = phi i32 [ %i.ms, %.lr.ph.i.i.i.i.i.i.i.i131 ], [ %i.ne, %bb.am ]
  %i.ng = trunc i32 %.lcssa17.i.i.i.i.i.i.i137 to i1
  br i1 %i.ng, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141", label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138"

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138": ; preds = %.lr.ph.i.i.i.i.i.i.i132, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", %.lr.ph.split.i.i.i129
  %i.nh = add i32 %.sroa.0186.sroa.0.0, 1         ; 2 uses
  %.not.i.i.i139 = icmp eq i32 %i.nh, %i.mi
  br i1 %.not.i.i.i139, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i129, !llvm.loop !89

"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit
  %.sroa.0186.sroa.0.1 = phi i32 [ 0, %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit ], [ %.sroa.0186.sroa.0.0, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136" ] ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.0186.sroa.0.1, %i.mi
  br i1 %.not4.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i"
  %i.ni = phi i32 [ %i.oa, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0186.sroa.0.1, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141" ] ; 2 uses
  %.val2.val.i.i.i.i = load i16, ptr %i.ge, align 1, !tbaa !211
  %i.nj = call noundef i16 @llvm.bswap.i16(i16 %.val2.val.i.i.i.i)
  %i.nk = zext i16 %i.nj to i32
  %i.nl = mul nuw i32 %.fr11.i.i, %i.nk
  %i.nm = add i32 %i.nl, %i.ni
  %i.nn = load i32, ptr %i.gm, align 4, !tbaa !540 ; 3 uses
  %i.no = load i32, ptr %12, align 8, !tbaa !538
  %.not.i.i.i.i145 = icmp slt i32 %i.nn, %i.no
  br i1 %.not.i.i.i.i145, label %.critedge.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i144
  %i.np = add i32 %i.nn, 1
  %i.nq = call noundef zeroext i1 @_ZN11hb_vector_tIjLb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %12, i32 noundef %i.np, i1 noundef zeroext false)
  br i1 %i.nq, label %..critedge_crit_edge.i.i.i.i, label %bb.ao, !prof !219

..critedge_crit_edge.i.i.i.i:                     ; preds = %bb.an
  %.pre.i.i.i.i = load i32, ptr %i.gm, align 4, !tbaa !540
  br label %.critedge.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  store i32 %i.gl, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %.lr.ph.i.i144
  %i.nr = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.nn, %.lr.ph.i.i144 ] ; 2 uses
  %i.ns = load ptr, ptr %i.gn, align 8, !tbaa !539
  %i.nt = add i32 %i.nr, 1
  store i32 %i.nt, ptr %i.gm, align 4, !tbaa !540
  %i.nu = zext i32 %i.nr to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nu
  store i32 %i.nm, ptr %i.nv, align 4, !tbaa !218
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i:    ; preds = %.critedge.i.i.i.i, %bb.ao
  %i.nw = add i32 %i.ni, 1                        ; 2 uses
  %.not2.i.i.i.i.i.i146 = icmp eq i32 %i.nw, %i.mi
  br i1 %.not2.i.i.i.i.i.i146, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i147:                            ; preds = %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i
  %i.nx = load ptr, ptr %i.z, align 8, !tbaa !288 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i148 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i148, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.i.i.i149

.lr.ph.split.i.i.i.i.i.i149:                      ; preds = %.lr.ph.i.i.i.i.i.i147
  %i.ny = load i32, ptr %i.gf, align 8, !tbaa !322
  %i.nz = load i32, ptr %i.gg, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %.backedge.i.i.i.i.i.i158, %.lr.ph.split.i.i.i.i.i.i149
  %i.oa = phi i32 [ %i.nw, %.lr.ph.split.i.i.i.i.i.i149 ], [ %i.ow, %.backedge.i.i.i.i.i.i158 ] ; 6 uses
  %i.ob = mul i32 %i.oa, 506952113
  %i.oc = and i32 %i.ob, 1073741823
  %i.od = urem i32 %i.oc, %i.ny                   ; 2 uses
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [12 x i8], ptr %i.nx, i64 %i.oe ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 4
  %i.oh = load i32, ptr %i.og, align 4            ; 2 uses
  %i.oi = and i32 %i.oh, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i150 = icmp eq i32 %i.oi, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i150, label %.backedge.i.i.i.i.i.i158, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151

.lr.ph.i.i.i.i.i.i.i.i.i.i.i151:                  ; preds = %bb.ap
  %i.oj = load i32, ptr %i.of, align 4, !tbaa !218
  %i.ok = icmp eq i32 %i.oj, %i.oa
  br i1 %i.ok, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i.i.i152

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i152
  %i.ol = load i32, ptr %i.or, align 4, !tbaa !218
  %i.om = icmp eq i32 %i.ol, %i.oa
  br i1 %i.om, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i.i.i152, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i.i.i152:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151, %bb.aq
  %.01016.i20.i.i.i.i.i.i.i.i.i.i153 = phi i32 [ %i.op, %bb.aq ], [ %i.od, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151 ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i154 = phi i32 [ %i.on, %bb.aq ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151 ]
  %i.on = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i154, 1 ; 2 uses
  %i.oo = add i32 %i.on, %.01016.i20.i.i.i.i.i.i.i.i.i.i153
  %i.op = and i32 %i.oo, %i.nz                    ; 2 uses
  %i.oq = zext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw [12 x i8], ptr %i.nx, i64 %i.oq ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.ot = load i32, ptr %i.os, align 4            ; 2 uses
  %i.ou = and i32 %i.ot, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i155 = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i155, label %.backedge.i.i.i.i.i.i158, label %bb.aq, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156: ; preds = %bb.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151
  %.lcssa17.i.i.i.i.i.i.i.i.i.i157 = phi i32 [ %i.oh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151 ], [ %i.ot, %bb.aq ]
  %i.ov = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i157 to i1
  br i1 %i.ov, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i158

.backedge.i.i.i.i.i.i158:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i152, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156, %bb.ap
  %i.ow = add i32 %i.oa, 1                        ; 2 uses
  %.not.i.i.i.i.i.i159 = icmp eq i32 %i.ow, %i.mi
  br i1 %.not.i.i.i.i.i.i159, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %bb.ap, !llvm.loop !90

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156
  %.not.i.i160 = icmp eq i32 %i.oa, %i.mi
  br i1 %.not.i.i160, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkBasePosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i144, !llvm.loop !5020
end_hunk_12
begin_hunk_13_@_ZN2OT8OffsetToINS_6Layout9GPOS_impl13LigatureArrayENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_19MarkLigPosFormat1_2INS1_10SmallTypesEEEJNS1_6Common8Coverage6iter_tERKS5_P8hb_map_tR11hb_vector_tIjLb1EEEEEbP19hb_subset_context_tRKS6_PKT_DpOT0_:bb.a

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !273
  %i.ai = zext nneg i32 %i.ac to i64
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = zext i32 %i.af to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.ak, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  store i32 %i.y, ptr %i.w, align 4, !tbaa !272
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !273
  %i.an = zext i32 %i.x to i64
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %i.an
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i: ; preds = %bb.j, %bb.i
  %.0.i.i15 = phi ptr [ @_hb_CrapPool, %bb.i ], [ %i.ao, %bb.j ] ; 5 uses
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !214
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !271
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.at = load i32, ptr %i.q, align 4, !tbaa !190
  %i.au = or i32 %i.at, 1
  store i32 %i.au, ptr %i.q, align 4, !tbaa !190
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i
  %i.av = load i32, ptr %.0.i.i15, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 8
  store i32 %i.p, ptr %i.aw, align 4, !tbaa !304
  %i.ax = and i32 %i.av, -64
  %i.ay = or disjoint i32 %i.ax, 2
  store i32 %i.ay, ptr %.0.i.i15, align 4
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !214
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !315
  %i.bb = ptrtoint ptr %0 to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 4
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !316
  store i32 2, ptr %.0.i.i15, align 4
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GPOS_impl13LigatureArrayENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

bb.m:                                             ; preds = %bb.b
  tail call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %i.d)
  br label %_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GPOS_impl13LigatureArrayENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit

_ZN22hb_serialize_context_t8add_linkIN2OT8OffsetToINS1_6Layout9GPOS_impl13LigatureArrayENS1_7NumTypeILb1EtLj2EEEvLb1EEEEEvRT_jNS_8whence_tEj.exit: ; preds = %bb.l, %bb.c, %bb.m, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.m ], [ true, %bb.c ], [ true, %bb.l ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS0_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tS8_jPK8hb_map_tR11hb_vector_tIjLb1EE(ptr noundef nonnull align 1 dereferenceable(4) %0, ptr noundef %1, ptr noundef byval(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %6 = alloca %"struct.OT::Layout::Common::Coverage::iter_t", align 8 ; 4 uses
  %7 = alloca %struct.hb_zip_iter_t.1584, align 8 ; 6 uses
  %8 = alloca %struct.hb_zip_iter_t.1584, align 8 ; 6 uses
  %9 = alloca %struct.hb_filter_iter_t.1580, align 8 ; 14 uses
  %10 = alloca %struct.hb_filter_iter_t.1580, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !207  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !208  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191  ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !190
  %.not11.i.i = icmp eq i32 %i.i, 0
  br i1 %.not11.i.i, label %bb.b, label %select.unfold, !prof !219

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !192
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.j
  %i.o = icmp slt i64 %i.n, 2
  br i1 %i.o, label %.critedge.i.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i, !prof !112

.critedge.i.i.i:                                  ; preds = %bb.b
  store i32 4, ptr %i.h, align 4, !tbaa !190
  br label %select.unfold

_ZL9hb_memsetPvij.exit.i.i.i:                     ; preds = %bb.b
  store i16 0, ptr %i.g, align 1
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !191 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 2
  store ptr %i.p, ptr %i.f, align 8, !tbaa !191
  %i.q = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.q, label %select.unfold, label %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GPOS_impl13LigatureArrayEEEPT_S6_.exit, !prof !112

_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GPOS_impl13LigatureArrayEEEPT_S6_.exit: ; preds = %_ZL9hb_memsetPvij.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !5223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i16, ptr %0, align 1, !tbaa !211, !noalias !5224
  %i.t = tail call noundef i16 @llvm.bswap.i16(i16 %i.s)
  %.sroa.2.8.insert.ext.i.i.i.i.i = zext i16 %i.t to i64
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %i.r, ptr %.sroa.4212.0..sroa_idx, align 8, !noalias !5223
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %.sroa.2.8.insert.ext.i.i.i.i.i, ptr %.sroa.5213.0..sroa_idx, align 8, !noalias !5223
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEC2ERKSF_SI_SL_"(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull readonly align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 1 dereferenceable(1) @_ZL8hb_first)
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !5223
  %.sroa.0176.0.copyload = load i32, ptr %9, align 8 ; 5 uses
  %.sroa.8182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.8182.0.copyload = load ptr, ptr %.sroa.8182.0..sroa_idx, align 8 ; 3 uses
  %.sroa.13187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.13187.0.copyload = load i32, ptr %.sroa.13187.0..sroa_idx, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 20
  %.sroa.24.0.copyload = load i32, ptr %.sroa.24.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.28.0.copyload = load i32, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.35200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %.sroa.35200.0.copyload = load ptr, ptr %.sroa.35200.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 3 uses
  %.sroa.39.0.copyload = load i32, ptr %.sroa.39.0..sroa_idx, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8 ; 3 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21, !noalias !5225
  call void @llvm.experimental.noalias.scope.decl(metadata !5226)
  call void @llvm.experimental.noalias.scope.decl(metadata !5227)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !5228
  call void @_ZNK2OT6Layout6Common8Coverage6iter_t7__end__Ev(ptr dead_on_unwind nonnull writable sret(%"struct.OT::Layout::Common::Coverage::iter_t") align 8 %6, ptr noundef nonnull align 8 dereferenceable(64) %9), !noalias !5228
  %i.u = load i32, ptr %.sroa.39.0..sroa_idx, align 8, !tbaa !895, !noalias !5228 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.35200.0..sroa_idx, align 8, !noalias !5228
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.39.0..sroa_idx, align 8, !noalias !5228 ; 2 uses
  %.sroa.4.8.extract.trunc.i.i.i.i.i.i.i.i = trunc i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.v = icmp ugt i32 %i.u, %.sroa.4.8.extract.trunc.i.i.i.i.i.i.i.i
  br i1 %i.v, label %bb.c, label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit", !prof !112

bb.c:                                             ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GPOS_impl13LigatureArrayEEEPT_S6_.exit
  br label %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit"

"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit": ; preds = %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GPOS_impl13LigatureArrayEEEPT_S6_.exit, %bb.c
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.sroa.4.8.extract.trunc.i.i.i.i.i.i.i.i, %bb.c ], [ %i.u, %_ZN22hb_serialize_context_t10extend_minIN2OT6Layout9GPOS_impl13LigatureArrayEEEPT_S6_.exit ] ; 3 uses
  %.sroa.8.8.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i, 32
  %.sroa.8.8.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.8.8.extract.shift.i.i.i.i.i.i.i.i to i32
  %i.w = sub i32 %.sroa.4.8.extract.trunc.i.i.i.i.i.i.i.i, %.0.i.i.i.i.i.i.i.i.i.i
  %i.x = add i32 %.0.i.i.i.i.i.i.i.i.i.i, %.sroa.8.8.extract.trunc.i.i.i.i.i.i.i.i
  %i.y = zext i32 %.0.i.i.i.i.i.i.i.i.i.i to i64
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, i64 %i.y
  %.sroa.8.8.insert.ext.i.i.i.i.i.i.i.i = zext i32 %i.x to i64
  %.sroa.8.8.insert.shift.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.8.8.insert.ext.i.i.i.i.i.i.i.i, 32
  %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i = zext i32 %i.w to i64
  %.sroa.4.8.insert.insert.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.8.8.insert.shift.i.i.i.i.i.i.i.i, %.sroa.4.8.insert.ext.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !noalias !5225
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !5229, !noalias !5225
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.4.8.insert.insert.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !5229, !noalias !5225
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !5228
  %i.ab = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !555, !noalias !5225
  %.val.i.i.i = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !737, !noalias !5225
  call fastcc void @"_ZN16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEC2ERKSF_SI_SL_"(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %.val.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21, !noalias !5225
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.8182.0.copyload, i64 2 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.8182.0.copyload, i64 4 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 744
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 740
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.aq = load i32, ptr @_hb_NullPool, align 16
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.as = icmp eq i32 %.sroa.0176.0.copyload, 1
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.46.0.copyload, i64 28
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit"

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge", %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit"
  %.sroa.13187.0 = phi i32 [ %.sroa.13187.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit" ], [ %.sroa.13187.0.be, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge" ] ; 5 uses
  %.sroa.24.0 = phi i32 [ %.sroa.24.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit" ], [ %.sroa.24.0.be, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge" ]
  %.sroa.28.0 = phi i32 [ %.sroa.28.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit" ], [ %.sroa.28.0.be, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge" ] ; 3 uses
  %.sroa.35200.0 = phi ptr [ %.sroa.35200.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit" ], [ %.sroa.35200.0.be, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge" ] ; 3 uses
  %.sroa.39.0 = phi i32 [ %.sroa.39.0.copyload, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit" ], [ %.sroa.39.0.be, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge" ] ; 3 uses
  %.0218 = phi i1 [ false, %"_ZNK9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EE3endEv.exit" ], [ %.1.ph, %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge" ] ; 11 uses
  %i.aw = load i32, ptr %10, align 8, !tbaa !527
  %.not.i.i.i = icmp eq i32 %.sroa.0176.0.copyload, %i.aw
  br i1 %.not.i.i.i, label %bb.d, label %"_ZNK16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEneERKSN_.exit", !prof !219

bb.d:                                             ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit"
  switch i32 %.sroa.0176.0.copyload, label %.thread [
    i32 1, label %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i
    i32 2, label %.split.i.i
  ]

.split.i.i:                                       ; preds = %bb.d
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.ax = load i32, ptr %i.ac, align 8, !tbaa !535
  %.not.i.i.i.i = icmp ne i32 %.sroa.13187.0, %i.ax
  %i.ay = load i32, ptr %i.ad, align 8
  %i.az = icmp ne i32 %.sroa.28.0, %i.ay
  %i.ba = select i1 %.not.i.i.i.i, i1 true, i1 %i.az
  br i1 %i.ba, label %"_ZNK16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEneERKSN_.exit", label %.thread

_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i: ; preds = %bb.d
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.bb = load i32, ptr %i.ac, align 8, !tbaa !530
  %.not.i.i = icmp eq i32 %.sroa.13187.0, %i.bb
  br i1 %.not.i.i, label %.thread, label %"_ZNK16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEneERKSN_.exit"

"_ZNK16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEneERKSN_.exit": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit", %.split.i.i, %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i
  %i.bc = load ptr, ptr %i.ae, align 8, !tbaa !896
  %.not.i3.i.i = icmp ne ptr %.sroa.35200.0, %i.bc
  %i.bd = load i32, ptr %i.af, align 8
  %i.be = icmp ne i32 %.sroa.39.0, %i.bd
  %i.bf = select i1 %.not.i3.i.i, i1 true, i1 %i.be
  br i1 %i.bf, label %bb.e, label %.thread

bb.e:                                             ; preds = %"_ZNK16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEneERKSN_.exit"
  switch i32 %.sroa.0176.0.copyload, label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEdeEv.exit" [
    i32 1, label %bb.f
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.bg = load i16, ptr %i.ag, align 1, !tbaa !211
  %i.bh = call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %i.bi = zext i16 %i.bh to i32
  %.not.i.i.i.i.i.i.i.i.i = icmp ult i32 %.sroa.13187.0, %i.bi
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, !prof !219

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.bj = zext nneg i32 %.sroa.13187.0 to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.bj
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %bb.g ], [ @_hb_NullPool, %bb.f ]
  %i.bl = load i16, ptr %.0.i.i.i.i.i.i.i.i.i, align 1, !tbaa !211
  %i.bm = call noundef i16 @llvm.bswap.i16(i16 %i.bl)
  %i.bn = zext i16 %i.bm to i32
  br label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEdeEv.exit"

bb.h:                                             ; preds = %bb.e
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEdeEv.exit"

"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEdeEv.exit": ; preds = %bb.e, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i, %bb.h
  %.0.i.i.i.i.i.i.i = phi i32 [ %.sroa.28.0, %bb.h ], [ %i.bn, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.39.0, 0
  %spec.select.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @_hb_NullPool, ptr %.sroa.35200.0, !prof !112 ; 3 uses
  %i.bo = load i16, ptr %spec.select.i.i.i.i.i.i, align 1, !tbaa !211 ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  %i.bq = call i16 @llvm.bswap.i16(i16 %i.bo)
  %i.br = zext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %.0.i.i55 = select i1 %i.bp, ptr @_hb_NullPool, ptr %i.bs, !prof !112 ; 4 uses
  %i.bt = load i16, ptr %.0.i.i55, align 1, !tbaa !211
  %i.bu = call noundef i16 @llvm.bswap.i16(i16 %i.bt)
  %i.bv = zext i16 %i.bu to i32                   ; 2 uses
  %i.bw = mul i32 %3, %i.bv                       ; 6 uses
  %.not9.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not9.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEdeEv.exit"
  %i.bx = load ptr, ptr %i.ai, align 8, !tbaa !288, !noalias !5230 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i61 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i61, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.by = load i32, ptr %i.ak, align 8, !tbaa !322, !noalias !5230
  br label %bb.i

bb.i:                                             ; preds = %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i", %.lr.ph.split.i.i.i
  %.sroa.0163.sroa.0.0 = phi i32 [ 0, %.lr.ph.split.i.i.i ], [ %i.cw, %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i" ] ; 4 uses
  %i.bz = urem i32 %.sroa.0163.sroa.0.0, %3       ; 3 uses
  %i.ca = mul i32 %i.bz, 506952113
  %i.cb = and i32 %i.ca, 1073741823
  %i.cc = urem i32 %i.cb, %i.by                   ; 2 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.bx, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !noalias !5230 ; 2 uses
  %i.ch = and i32 %i.cg, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ch, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.i
  %i.ci = load i32, ptr %i.aj, align 4, !noalias !5230
  %i.cj = load i32, ptr %i.ce, align 4, !tbaa !218, !noalias !5230
  %i.ck = icmp eq i32 %i.cj, %i.bz
  br i1 %i.ck, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cl = load i32, ptr %i.cr, align 4, !tbaa !218, !noalias !5230
  %i.cm = icmp eq i32 %i.cl, %i.bz
  br i1 %i.cm, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.j
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.j ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cn, %bb.j ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cn = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.co = add i32 %i.cn, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.cp = and i32 %i.co, %i.ci                    ; 2 uses
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.bx, i64 %i.cq ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !noalias !5230 ; 2 uses
  %i.cu = and i32 %i.ct, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i", label %bb.j, !llvm.loop !6

"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.i.i.i": ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ct, %bb.j ]
  %i.cv = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.cv, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit", label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i"

"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.i.i.i", %bb.i
  %i.cw = add nuw i32 %.sroa.0163.sroa.0.0, 1     ; 2 uses
  %.not.i.i.i62 = icmp eq i32 %i.cw, %i.bw
  br i1 %.not.i.i.i62, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %bb.i, !llvm.loop !5210

"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit": ; preds = %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.i.i.i"
  %.not7.not.i.i = icmp eq i32 %.sroa.0163.sroa.0.0, %i.bw
  br i1 %.not7.not.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit"
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.i55, i64 2
  br label %bb.k

bb.k:                                             ; preds = %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEppEv.exit.i.i", %.lr.ph.i.i
  %.sroa.0.08.i.i = phi i32 [ %.sroa.0163.sroa.0.0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEppEv.exit.i.i" ] ; 3 uses
  %i.cy = udiv i32 %.sroa.0.08.i.i, %3            ; 2 uses
  %i.cz = urem i32 %.sroa.0.08.i.i, %3
  %.not.i.i.i.i.i.i.i.i.i67 = icmp ult i32 %i.cy, %i.bv
  br i1 %.not.i.i.i.i.i.i.i.i.i67, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.i.i", label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.thread.i.i", !prof !219

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.i.i": ; preds = %bb.k
  %i.da = mul i32 %i.cy, %3
  %i.db = add i32 %i.cz, %i.da
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 1, !tbaa !211
  %.not5.i.i = icmp eq i16 %i.de, 0
  br i1 %.not5.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.thread.i.i", label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.thread.i.i": ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.i.i", %bb.k
  %i.df = add i32 %.sroa.0.08.i.i, 1              ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.df, %i.bw
  br i1 %.not4.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.thread.i.i"
  %i.dg = load ptr, ptr %i.ai, align 8, !tbaa !288 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dh = load i32, ptr %i.ak, align 8, !tbaa !322
  br label %bb.l

bb.l:                                             ; preds = %.backedge.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.df, %.lr.ph.split.i.i.i.i.i.i ], [ %i.ef, %.backedge.i.i.i.i.i.i ] ; 4 uses
  %i.di = urem i32 %.sroa.0.1.i.i, %3             ; 3 uses
  %i.dj = mul i32 %i.di, 506952113
  %i.dk = and i32 %i.dj, 1073741823
  %i.dl = urem i32 %i.dk, %i.dh                   ; 2 uses
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4            ; 2 uses
  %i.dq = and i32 %i.dp, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.l
  %i.dr = load i32, ptr %i.aj, align 4
  %i.ds = load i32, ptr %i.dn, align 4, !tbaa !218
  %i.dt = icmp eq i32 %i.ds, %i.di
  br i1 %i.dt, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.du = load i32, ptr %i.ea, align 4, !tbaa !218
  %i.dv = icmp eq i32 %i.du, %i.di
  br i1 %i.dv, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m
  %.01016.i20.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dy, %bb.m ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dw, %bb.m ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dw = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dx = add i32 %i.dw, %.01016.i20.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = and i32 %i.dx, %i.dr                    ; 2 uses
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.dg, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = load i32, ptr %i.eb, align 4            ; 2 uses
  %i.ed = and i32 %i.ec, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %bb.m, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ec, %bb.m ]
  %i.ee = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ee, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %i.ef = add i32 %.sroa.0.1.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i.i68 = icmp eq i32 %i.ef, %i.bw
  br i1 %.not.i.i.i.i.i.i68, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %bb.l, !llvm.loop !5211

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not.not.i.i = icmp eq i32 %.sroa.0.1.i.i, %i.bw
  br i1 %.not.not.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread", label %bb.k, !llvm.loop !5212

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit": ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.i.i"
  %i.eg = load ptr, ptr %i.d, align 8, !tbaa !208 ; 4 uses
  %.sroa.0.0.copyload.i.i69 = load i16, ptr %i.g, align 1, !tbaa !282
  %i.eh = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i69)
  %i.ei = add i16 %i.eh, 1                        ; 3 uses
  %i.ej = call i16 @llvm.bswap.i16(i16 %i.ei)     ; 3 uses
  store i16 %i.ej, ptr %i.g, align 1, !tbaa !282
  %.not.i = icmp eq i16 %i.ei, 0
  br i1 %.not.i, label %.loopexit, label %bb.n, !prof !112

bb.n:                                             ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit"
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 44
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !190
  %.not11.i.i.i = icmp eq i32 %i.el, 0
  br i1 %.not11.i.i.i, label %bb.o, label %.loopexit, !prof !219

bb.o:                                             ; preds = %bb.n
  %i.em = zext i16 %i.ei to i64
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !191 ; 4 uses
  %i.es = ptrtoint ptr %i.ep to i64
  %i.et = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 4 uses
  %i.ev = icmp ugt i64 %i.eu, 2147483647
  br i1 %i.ev, label %.critedge.i.i.i.i, label %bb.p, !prof !112

bb.p:                                             ; preds = %bb.o
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !192
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = sub i64 %i.ey, %i.et
  %i.fa = icmp slt i64 %i.ez, %i.eu
  br i1 %i.fa, label %.critedge.i.i.i.i, label %bb.q, !prof !112

.critedge.i.i.i.i:                                ; preds = %bb.p, %bb.o
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eg, i64 44
  store i32 4, ptr %i.fb, align 4, !tbaa !190
  %.sroa.0.0.copyload.i5.pre.i = load i16, ptr %i.g, align 1, !tbaa !282
  br label %.loopexit

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i.not.i.i = icmp eq ptr %i.ep, %i.er
  br i1 %.not.i.i.i.not.i.i, label %_ZL9hb_memsetPvij.exit.i.i.i.i, label %bb.r, !prof !252

bb.r:                                             ; preds = %bb.q
  call void @llvm.memset.p0.i64(ptr align 1 %i.er, i8 0, i64 %i.eu, i1 false)
  %.pre.i.i.i.i = load ptr, ptr %i.eq, align 8, !tbaa !191
  br label %_ZL9hb_memsetPvij.exit.i.i.i.i

_ZL9hb_memsetPvij.exit.i.i.i.i:                   ; preds = %bb.r, %bb.q
  %i.fc = phi ptr [ %.pre.i.i.i.i, %bb.r ], [ %i.er, %bb.q ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.eu
  store ptr %i.fd, ptr %i.eq, align 8, !tbaa !191
  %i.fe = icmp eq ptr %i.fc, null
  %.sroa.0.0.copyload.i5.pre8.i = load i16, ptr %i.g, align 1, !tbaa !282 ; 2 uses
  br i1 %i.fe, label %.loopexit, label %bb.s, !prof !112

bb.s:                                             ; preds = %_ZL9hb_memsetPvij.exit.i.i.i.i
  %i.ff = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i5.pre8.i)
  %i.fg = zext i16 %i.ff to i64
  %i.fh = add nuw nsw i64 %i.fg, 4294967295
  %i.fi = and i64 %i.fh, 4294967295
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.fi ; 2 uses
  %i.fk = load i16, ptr %.0.i.i55, align 1, !tbaa !211
  %i.fl = call noundef i16 @llvm.bswap.i16(i16 %i.fk)
  %i.fm = zext i16 %i.fl to i32
  %i.fn = mul i32 %3, %i.fm                       ; 2 uses
  %.sroa.2.0.insert.ext.i70 = zext i32 %i.fn to i64 ; 3 uses
  %.sroa.2.0.insert.shift.i71 = shl nuw i64 %.sroa.2.0.insert.ext.i70, 32 ; 3 uses
  %.not9.i.i.i85 = icmp eq i32 %i.fn, 0
  br i1 %.not9.i.i.i85, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit", label %.lr.ph.i.i.i86

.lr.ph.i.i.i86:                                   ; preds = %bb.s
  %i.fo = load ptr, ptr %i.ai, align 8, !tbaa !288, !noalias !5231 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i87 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i.i.i.i.i.i87, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.us.i.preheader.i.i", label %.lr.ph.split.i.i.i88

"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.us.i.preheader.i.i": ; preds = %.lr.ph.i.i.i86
  %.sroa.0140.0.insert.insert144 = or disjoint i64 %.sroa.2.0.insert.shift.i71, %.sroa.2.0.insert.ext.i70
  br label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit"

.lr.ph.split.i.i.i88:                             ; preds = %.lr.ph.i.i.i86
  %i.fp = load i32, ptr %i.ak, align 8, !tbaa !322, !noalias !5231
  br label %bb.t

bb.t:                                             ; preds = %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i", %.lr.ph.split.i.i.i88
  %indvars.iv = phi i64 [ %indvars.iv.next, %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i" ], [ 0, %.lr.ph.split.i.i.i88 ] ; 2 uses
  %.sroa.0140.0 = phi i64 [ %.sroa.0140.0.insert.insert, %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i" ], [ %.sroa.2.0.insert.shift.i71, %.lr.ph.split.i.i.i88 ] ; 2 uses
  %i.fq = trunc nuw i64 %indvars.iv to i32
  %i.fr = urem i32 %i.fq, %3                      ; 3 uses
  %i.fs = mul i32 %i.fr, 506952113
  %i.ft = and i32 %i.fs, 1073741823
  %i.fu = urem i32 %i.ft, %i.fp                   ; 2 uses
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.fo, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.fy = load i32, ptr %i.fx, align 4, !noalias !5231 ; 2 uses
  %i.fz = and i32 %i.fy, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i89 = icmp eq i32 %i.fz, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i89, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i90

.lr.ph.i.i.i.i.i.i.i.i.i.i.i90:                   ; preds = %bb.t
  %i.ga = load i32, ptr %i.aj, align 4, !noalias !5231
  %i.gb = load i32, ptr %i.fw, align 4, !tbaa !218, !noalias !5231
  %i.gc = icmp eq i32 %i.gb, %i.fr
  br i1 %i.gc, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i91

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i91
  %i.gd = load i32, ptr %i.gj, align 4, !tbaa !218, !noalias !5231
  %i.ge = icmp eq i32 %i.gd, %i.fr
  br i1 %i.ge, label %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i91, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i.i.i91:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i90, %bb.u
  %.01016.i20.i.i.i.i.i.i.i.i.i.i92 = phi i32 [ %i.gh, %bb.u ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i90 ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i93 = phi i32 [ %i.gf, %bb.u ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i90 ]
  %i.gf = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i93, 1 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS0_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NS8_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tS8_jPK8hb_map_tR11hb_vector_tIjLb1EE:bb.a
  %i.it = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i.i.i.i108, 1 ; 2 uses
  %i.iu = add i32 %i.it, %.01016.i20.i.i.i.i.i.i.i.i.i.i.i.i.i107
  %i.iv = and i32 %i.iu, %i.io                    ; 2 uses
  %i.iw = zext i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [12 x i8], ptr %i.id, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4            ; 2 uses
  %i.ja = and i32 %i.iz, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i109 = icmp eq i32 %i.ja, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i109, label %.backedge.i.i.i.i.i.i112, label %bb.ac, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i110: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i105
  %.lcssa17.i.i.i.i.i.i.i.i.i.i.i.i.i111 = phi i32 [ %i.im, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i105 ], [ %i.iz, %bb.ac ]
  %i.jb = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i.i.i.i111 to i1
  br i1 %i.jb, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSH_0EEjEppEv.exit.i.i.i.i", label %.backedge.i.i.i.i.i.i112

.backedge.i.i.i.i.i.i112:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i106, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i110, %bb.ab
  %i.jc = add i32 %.sroa.033.1.i.i.i.i, 1         ; 2 uses
  %.not.i.i29.i.i.i.i = icmp eq i32 %i.jc, %.sroa.0140.4.extract.trunc
  br i1 %.not.i.i29.i.i.i.i, label %"_ZN19hb_subset_context_t8dispatchIN2OT6Layout9GPOS_impl12AnchorMatrixEJRKNS1_7NumTypeILb1EtLj2EEER16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS3_13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEEbPS_SI_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSN_0EEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKSI_DpOS13_.exit.i", label %bb.ab, !llvm.loop !5221

"_ZNR9hb_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSH_0EEjEppEv.exit.i.i.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i.i.i.i110
  %.not48.i.i.i.i = icmp eq i32 %.sroa.033.1.i.i.i.i, %.sroa.0140.4.extract.trunc
  br i1 %.not48.i.i.i.i, label %"_ZN19hb_subset_context_t8dispatchIN2OT6Layout9GPOS_impl12AnchorMatrixEJRKNS1_7NumTypeILb1EtLj2EEER16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS3_13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEEbPS_SI_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSN_0EEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKSI_DpOS13_.exit.i", label %bb.y

"_ZN19hb_subset_context_t8dispatchIN2OT6Layout9GPOS_impl12AnchorMatrixEJRKNS1_7NumTypeILb1EtLj2EEER16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS3_13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEEbPS_SI_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSN_0EEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKSI_DpOS13_.exit.i": ; preds = %"_ZNR9hb_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSH_0EEjEppEv.exit.i.i.i.i", %.lr.ph.i.i.i.i.i.i101, %bb.aa, %.backedge.i.i.i.i.i.i112
  %i.jd = call noundef i32 @_ZN22hb_serialize_context_t8pop_packEb(ptr noundef nonnull align 8 dereferenceable(144) %i.gq, i1 noundef zeroext true) ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.gq, i64 44 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !190
  %i.jg = icmp ne i32 %i.jf, 0
  %i.jh = icmp eq i32 %i.jd, 0
  %or.cond.not.i.i = or i1 %i.jh, %i.jg
  br i1 %or.cond.not.i.i, label %"_ZN2OT8OffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_13LigatureArrayEJRKS5_R16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS8_6subsetINS1_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSJ_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSO_0EEEEEbSQ_RKS6_PKSJ_DpOT0_.exit", label %bb.ad, !prof !252

bb.ad:                                            ; preds = %"_ZN19hb_subset_context_t8dispatchIN2OT6Layout9GPOS_impl12AnchorMatrixEJRKNS1_7NumTypeILb1EtLj2EEER16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS3_13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEEbPS_SI_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSN_0EEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKSI_DpOS13_.exit.i"
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gq, i64 72 ; 3 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !214 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 20 ; 3 uses
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !272 ; 2 uses
  %i.jm = add i32 %i.jl, 1                        ; 5 uses
  %i.jn = icmp slt i32 %i.jm, 0
  br i1 %i.jn, label %bb.ai, label %bb.ae, !prof !112

bb.ae:                                            ; preds = %bb.ad
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jp = call noundef zeroext i1 @_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i32 noundef %i.jm, i1 noundef zeroext false)
  br i1 %i.jp, label %bb.af, label %bb.ai, !prof !306

bb.af:                                            ; preds = %bb.ae
  %i.jq = load i32, ptr %i.jk, align 4, !tbaa !272 ; 3 uses
  %i.jr = icmp ugt i32 %i.jm, %i.jq
  br i1 %i.jr, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.js = sub nuw nsw i32 %i.jm, %i.jq
  %i.jt = mul i32 %i.js, 12                       ; 2 uses
  %.not.i.i.i.i.i.i14.i = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i14.i, label %bb.aj, label %bb.ah, !prof !112

bb.ah:                                            ; preds = %bb.ag
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !273
  %i.jw = zext nneg i32 %i.jq to i64
  %i.jx = getelementptr inbounds nuw [12 x i8], ptr %i.jv, i64 %i.jw
  %i.jy = zext i32 %i.jt to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.jx, i8 0, i64 %i.jy, i1 false)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) @_hb_CrapPool, ptr noundef nonnull align 16 dereferenceable(12) @_hb_NullPool, i64 12, i1 false)
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  store i32 %i.jm, ptr %i.jk, align 4, !tbaa !272
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !273
  %i.kb = zext i32 %i.jl to i64
  %i.kc = getelementptr inbounds nuw [12 x i8], ptr %i.ka, i64 %i.kb
  br label %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i

_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i: ; preds = %bb.aj, %bb.ai
  %.0.i.i13.i = phi ptr [ @_hb_CrapPool, %bb.ai ], [ %i.kc, %bb.aj ] ; 5 uses
  %i.kd = load ptr, ptr %i.ji, align 8, !tbaa !214
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !271
  %i.kg = icmp slt i32 %i.kf, 0
  br i1 %i.kg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.kh = load i32, ptr %i.je, align 4, !tbaa !190
  %i.ki = or i32 %i.kh, 1
  store i32 %i.ki, ptr %i.je, align 4, !tbaa !190
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_ZN11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE4pushEv.exit.i.i
  %i.kj = load i32, ptr %.0.i.i13.i, align 4
  %i.kk = getelementptr inbounds nuw i8, ptr %.0.i.i13.i, i64 8
  store i32 %i.jd, ptr %i.kk, align 4, !tbaa !304
  %i.kl = and i32 %i.kj, -64
  %i.km = or disjoint i32 %i.kl, 2
  store i32 %i.km, ptr %.0.i.i13.i, align 4
  %i.kn = load ptr, ptr %i.ji, align 8, !tbaa !214
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !315
  %i.kp = ptrtoint ptr %i.fj to i64
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i.i13.i, i64 4
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !316
  store i32 2, ptr %.0.i.i13.i, align 4
  br label %"_ZN2OT8OffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_13LigatureArrayEJRKS5_R16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS8_6subsetINS1_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSJ_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSO_0EEEEEbSQ_RKS6_PKSJ_DpOT0_.exit"

.loopexit.i:                                      ; preds = %_ZN22hb_serialize_context_t13allocate_sizeIN2OT8OffsetToINS1_6Layout9GPOS_impl6AnchorENS1_7NumTypeILb1EtLj2EEENS4_12AnchorMatrixELb1EEEEEPT_mb.exit.i.i.i.i.i.i, %bb.y, %.critedge.i.i.i28.i.i.i.i, %_ZL9hb_memsetPvij.exit.i.i.i.i.i.i.i, %.critedge.i.i.i.i.i.i.i, %bb.w, %bb.v
  call void @_ZN22hb_serialize_context_t11pop_discardEv(ptr noundef nonnull align 8 dereferenceable(144) %i.gq)
  br label %"_ZN2OT8OffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_13LigatureArrayEJRKS5_R16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS8_6subsetINS1_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSJ_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSO_0EEEEEbSQ_RKS6_PKSJ_DpOT0_.exit"

"_ZN2OT8OffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_13LigatureArrayEJRKS5_R16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS8_6subsetINS1_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSJ_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSO_0EEEEEbSQ_RKS6_PKSJ_DpOT0_.exit": ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit", %"_ZN19hb_subset_context_t8dispatchIN2OT6Layout9GPOS_impl12AnchorMatrixEJRKNS1_7NumTypeILb1EtLj2EEER16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS3_13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEEbPS_SI_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSN_0EEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKSI_DpOS13_.exit.i", %bb.al, %.loopexit.i
  %.0.i98 = phi i1 [ %.0218, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit" ], [ %.0218, %.loopexit.i ], [ true, %"_ZN19hb_subset_context_t8dispatchIN2OT6Layout9GPOS_impl12AnchorMatrixEJRKNS1_7NumTypeILb1EtLj2EEER16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS3_13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSI_6item_tEEE5valueEvE4typeELPv0EEEbPS_SI_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSN_0EEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKSI_DpOS13_.exit.i" ], [ true, %bb.al ] ; 2 uses
  %i.ku = load ptr, ptr %i.am, align 8, !tbaa !288 ; 4 uses
  %.not.i113 = icmp eq ptr %i.ku, null
  br i1 %.not.i113, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.am

bb.am:                                            ; preds = %"_ZN2OT8OffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_13LigatureArrayEJRKS5_R16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS8_6subsetINS1_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSJ_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSO_0EEEEEbSQ_RKS6_PKSJ_DpOT0_.exit"
  %i.kv = mul i32 %.0.i.i.i.i.i.i.i, 506952113
  %i.kw = and i32 %i.kv, 1073741823
  %i.kx = load i32, ptr %i.an, align 8, !tbaa !322
  %i.ky = urem i32 %i.kw, %i.kx                   ; 2 uses
  %i.kz = zext nneg i32 %i.ky to i64              ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.ku, i64 %i.kz ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  %i.lc = load i32, ptr %i.lb, align 4            ; 2 uses
  %i.ld = and i32 %i.lc, 2
  %.not15.i.i.i = icmp eq i32 %i.ld, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %.lr.ph.i.i.i115

.lr.ph.i.i.i115:                                  ; preds = %bb.am
  %i.le = load i32, ptr %i.ao, align 4
  %i.lf = load i32, ptr %i.la, align 4, !tbaa !218
  %i.lg = icmp eq i32 %i.lf, %.0.i.i.i.i.i.i.i
  br i1 %i.lg, label %._crit_edge.i.i, label %.lr.ph.i.i116

bb.an:                                            ; preds = %.lr.ph.i.i116
  %i.lh = load i32, ptr %i.lr, align 4, !tbaa !218
  %i.li = icmp eq i32 %i.lh, %.0.i.i.i.i.i.i.i
  br i1 %i.li, label %._crit_edge.i.i, label %.lr.ph.i.i116, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %bb.an, %.lr.ph.i.i.i115
  %.lcssa10.i.i = phi i32 [ %i.lc, %.lr.ph.i.i.i115 ], [ %i.lt, %bb.an ]
  %i.lj = phi i64 [ %i.kz, %.lr.ph.i.i.i115 ], [ %i.lq, %bb.an ]
  %i.lk = getelementptr inbounds nuw [12 x i8], ptr %i.ku, i64 %i.lj
  %i.ll = trunc i32 %.lcssa10.i.i to i1
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %spec.select.i.i = select i1 %i.ll, ptr %i.lm, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit

.lr.ph.i.i116:                                    ; preds = %.lr.ph.i.i.i115, %bb.an
  %.01016.i13.i.i = phi i32 [ %i.lp, %bb.an ], [ %i.ky, %.lr.ph.i.i.i115 ]
  %.017.i12.i.i = phi i32 [ %i.ln, %bb.an ], [ 0, %.lr.ph.i.i.i115 ]
  %i.ln = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.lo = add i32 %i.ln, %.01016.i13.i.i
  %i.lp = and i32 %i.lo, %i.le                    ; 2 uses
  %i.lq = zext i32 %i.lp to i64                   ; 2 uses
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.ku, i64 %i.lq ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lt = load i32, ptr %i.ls, align 4            ; 2 uses
  %i.lu = and i32 %i.lt, 2
  %.not.i.i.i117 = icmp eq i32 %i.lu, 0
  br i1 %.not.i.i.i117, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.an, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit:          ; preds = %.lr.ph.i.i116, %"_ZN2OT8OffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_13LigatureArrayEJRKS5_R16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS8_6subsetINS1_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSJ_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSO_0EEEEEbSQ_RKS6_PKSJ_DpOT0_.exit", %bb.am, %._crit_edge.i.i
  %.0.i118 = phi ptr [ @minus_1, %"_ZN2OT8OffsetToINS_6Layout9GPOS_impl12AnchorMatrixENS_7NumTypeILb1EtLj2EEEvLb1EE16serialize_subsetINS2_13LigatureArrayEJRKS5_R16hb_filter_iter_tI15hb_range_iter_tIjjEZNKS8_6subsetINS1_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSJ_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSJ_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE1_RK4$_19LSO_0EEEEEbSQ_RKS6_PKSJ_DpOT0_.exit" ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @minus_1, %bb.am ], [ @minus_1, %.lr.ph.i.i116 ]
  %i.lv = load i32, ptr %.0.i118, align 4, !tbaa !218
  %i.lw = load i32, ptr %i.ap, align 4, !tbaa !540 ; 3 uses
  %i.lx = load i32, ptr %5, align 8, !tbaa !538
  %.not.i119 = icmp slt i32 %i.lw, %i.lx
  br i1 %.not.i119, label %.critedge.i121, label %bb.ao

bb.ao:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.ly = add i32 %i.lw, 1
  %i.lz = call noundef zeroext i1 @_ZN11hb_vector_tIjLb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %i.ly, i1 noundef zeroext false)
  br i1 %i.lz, label %..critedge_crit_edge.i, label %bb.ap, !prof !219

..critedge_crit_edge.i:                           ; preds = %bb.ao
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !540
  br label %.critedge.i121

bb.ap:                                            ; preds = %bb.ao
  store i32 %i.aq, ptr @_hb_CrapPool, align 16
  br label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread"

.critedge.i121:                                   ; preds = %..critedge_crit_edge.i, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.ma = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.lw, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit ] ; 2 uses
  %i.mb = load ptr, ptr %i.ar, align 8, !tbaa !539
  %i.mc = add i32 %i.ma, 1
  store i32 %i.mc, ptr %i.ap, align 4, !tbaa !540
  %i.md = zext i32 %i.ma to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.md
  store i32 %i.lv, ptr %i.me, align 4, !tbaa !218
  br label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread"

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread": ; preds = %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i", %.lr.ph.i.i.i.i.i.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.thread.i.i", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEppEv.exit.i.i", %.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i, %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEdeEv.exit", %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit", %bb.ap, %.critedge.i121
  %.1.ph = phi i1 [ %.0.i98, %.critedge.i121 ], [ %.0.i98, %bb.ap ], [ %.0218, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS4_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSC_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSC_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19ETnSG_LSH_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISC_Efp_EEEOSC_OSV_.exit" ], [ %.0218, %"_ZN9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEdeEv.exit" ], [ %.0218, %.backedge.i.i.i.i.i.i ], [ %.0218, %.lr.ph.i.i.i ], [ %.0218, %.lr.ph.i.i.i.i.i.i ], [ %.0218, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEppEv.exit.i.i" ], [ %.0218, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EEbEdeEv.exit.thread.i.i" ], [ %.0218, %"_ZNK4$_23clIRZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS2_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSA_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_jEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardISA_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSA_OSR_.exit.thread.i.i.i" ]
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge.i.i, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread"
  %.sroa.13187.1 = phi i32 [ %.sroa.13187.0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread" ], [ %.sroa.13187.3313, %.backedge.i.i ] ; 6 uses
  %.sroa.24.1 = phi i32 [ %.sroa.24.0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread" ], [ %.sroa.24.3316, %.backedge.i.i ] ; 5 uses
  %.sroa.28.1 = phi i32 [ %.sroa.28.0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread" ], [ %.sroa.28.2319, %.backedge.i.i ] ; 4 uses
  %.sroa.35200.1 = phi ptr [ %.sroa.35200.0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread" ], [ %.sroa.35200.2322, %.backedge.i.i ] ; 2 uses
  %.sroa.39.1 = phi i32 [ %.sroa.39.0, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit.thread" ], [ %.sroa.39.2325, %.backedge.i.i ] ; 7 uses
  switch i32 %.sroa.0176.0.copyload, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i [
    i32 1, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328
    i32 2, label %bb.ar
  ]

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328: ; preds = %bb.aq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.mf = add i32 %.sroa.13187.1, 1
  %.not.i.i.i131.not332 = icmp eq i32 %.sroa.39.1, 0
  %.sroa.35200.2.idx333 = select i1 %.not.i.i.i131.not332, i64 0, i64 2, !prof !112
  %.sroa.39.2335 = call i32 @llvm.usub.sat.i32(i32 %.sroa.39.1, i32 1)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.mg = load i16, ptr %i.ag, align 1, !tbaa !211
  %i.mh = call noundef i16 @llvm.bswap.i16(i16 %i.mg)
  %i.mi = zext i16 %i.mh to i32
  %.not.i.i.i.i.i129 = icmp ult i32 %.sroa.13187.1, %i.mi
  br i1 %.not.i.i.i.i.i129, label %bb.as, label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i, !prof !219

bb.as:                                            ; preds = %bb.ar
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.mj = zext nneg i32 %.sroa.13187.1 to i64
  %i.mk = getelementptr inbounds nuw [6 x i8], ptr %i.ah, i64 %i.mj
  br label %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i

_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i = phi ptr [ %i.mk, %bb.as ], [ @_hb_Null_OT_RangeRecord, %bb.ar ]
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 2
  %i.mm = load i16, ptr %i.ml, align 1, !tbaa !211
  %i.mn = call noundef i16 @llvm.bswap.i16(i16 %i.mm)
  %i.mo = zext i16 %i.mn to i32
  %.not.i.i.i.i130 = icmp ult i32 %.sroa.28.1, %i.mo
  br i1 %.not.i.i.i.i130, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.mp = add i32 %.sroa.13187.1, 1               ; 4 uses
  %i.mq = load i16, ptr %i.ag, align 1, !tbaa !211
  %i.mr = call noundef i16 @llvm.bswap.i16(i16 %i.mq)
  %i.ms = zext i16 %i.mr to i32                   ; 2 uses
  %i.mt = icmp ult i32 %i.mp, %i.ms
  br i1 %i.mt, label %bb.au, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread

bb.au:                                            ; preds = %bb.at
  %i.mu = zext nneg i32 %i.mp to i64              ; 2 uses
  %i.mv = getelementptr inbounds nuw [6 x i8], ptr %i.ah, i64 %i.mu
  %i.mw = load i16, ptr %i.mv, align 1, !tbaa !211
  %i.mx = call noundef i16 @llvm.bswap.i16(i16 %i.mw)
  %i.my = zext i16 %i.mx to i32
  %i.mz = getelementptr inbounds nuw [6 x i8], ptr %.sroa.8182.0.copyload, i64 %i.mu
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load i16, ptr %i.na, align 1, !tbaa !211
  %i.nc = call noundef i16 @llvm.bswap.i16(i16 %i.nb)
  %i.nd = zext i16 %i.nc to i32                   ; 3 uses
  %i.ne = add i32 %.sroa.24.1, 1
  %.not1.i.i.i.i = icmp eq i32 %i.ne, %i.nd
  br i1 %.not1.i.i.i.i, label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread, label %.sink.split.i.i.i.i, !prof !219

bb.av:                                            ; preds = %_ZNK2OT7ArrayOfINS_6Layout6Common11RangeRecordINS1_10SmallTypesEEENS_7NumTypeILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.nf = add i32 %.sroa.24.1, 1
  %i.ng = add nuw nsw i32 %.sroa.28.1, 1
  br label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread

.sink.split.i.i.i.i:                              ; preds = %bb.au
  br label %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread: ; preds = %bb.at, %bb.av, %.sink.split.i.i.i.i, %bb.au
  %.sroa.13187.3.ph = phi i32 [ %i.ms, %.sink.split.i.i.i.i ], [ %i.mp, %bb.at ], [ %.sroa.13187.1, %bb.av ], [ %i.mp, %bb.au ]
  %.sroa.24.3.ph = phi i32 [ %i.nd, %.sink.split.i.i.i.i ], [ %.sroa.24.1, %bb.at ], [ %i.nf, %bb.av ], [ %i.nd, %bb.au ]
  %.sroa.28.2.ph = phi i32 [ 0, %.sink.split.i.i.i.i ], [ 0, %bb.at ], [ %i.ng, %bb.av ], [ %i.my, %bb.au ]
  %.not.i.i.i131.not309 = icmp eq i32 %.sroa.39.1, 0
  %.sroa.35200.2.idx310 = select i1 %.not.i.i.i131.not309, i64 0, i64 2, !prof !112
  %.sroa.39.2312 = call i32 @llvm.usub.sat.i32(i32 %.sroa.39.1, i32 1)
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  br label %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i

_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i: ; preds = %bb.aq
  %.not.i.i.i131.not = icmp eq i32 %.sroa.39.1, 0
  %.sroa.35200.2.idx = select i1 %.not.i.i.i131.not, i64 0, i64 2, !prof !112
  %.sroa.35200.2 = getelementptr inbounds nuw i8, ptr %.sroa.35200.1, i64 %.sroa.35200.2.idx
  %.sroa.39.2 = call i32 @llvm.usub.sat.i32(i32 %.sroa.39.1, i32 1)
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge"

"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i
  %.sroa.13187.0.be = phi i32 [ %.sroa.13187.1, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i ], [ %.sroa.13187.3313, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i ], [ %.sroa.13187.3313, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ]
  %.sroa.24.0.be = phi i32 [ %.sroa.24.1, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i ], [ %.sroa.24.3316, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i ], [ %.sroa.24.3316, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ]
  %.sroa.28.0.be = phi i32 [ %.sroa.28.1, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i ], [ %.sroa.28.2319, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i ], [ %.sroa.28.2319, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ]
  %.sroa.35200.0.be = phi ptr [ %.sroa.35200.2, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i ], [ %.sroa.35200.2322, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i ], [ %.sroa.35200.2322, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ]
  %.sroa.39.0.be = phi i32 [ %.sroa.39.2, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i ], [ %.sroa.39.2325, %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i ], [ %.sroa.39.2325, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i ]
  br label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit"

_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i: ; preds = %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328
  %.sroa.39.2325 = phi i32 [ %.sroa.39.2312, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread ], [ %.sroa.39.2335, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328 ] ; 3 uses
  %.sroa.35200.2.idx310.pn = phi i64 [ %.sroa.35200.2.idx310, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread ], [ %.sroa.35200.2.idx333, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328 ]
  %.sroa.28.2319 = phi i32 [ %.sroa.28.2.ph, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread ], [ %.sroa.28.1, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328 ] ; 4 uses
  %.sroa.24.3316 = phi i32 [ %.sroa.24.3.ph, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread ], [ %.sroa.24.1, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328 ] ; 3 uses
  %.sroa.13187.3313 = phi i32 [ %.sroa.13187.3.ph, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread ], [ %i.mf, %_ZNR9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEppEv.exit.i.thread328 ] ; 6 uses
  %.sroa.35200.2322 = getelementptr inbounds nuw i8, ptr %.sroa.35200.1, i64 %.sroa.35200.2.idx310.pn ; 3 uses
  %i.nh = load i16, ptr %i.ag, align 1, !tbaa !211
  %i.ni = call noundef i16 @llvm.bswap.i16(i16 %i.nh)
  %i.nj = zext i16 %i.ni to i32
  %i.nk = icmp uge i32 %.sroa.13187.3313, %i.nj
  %.not.i.i122 = icmp ult i32 %.sroa.39.1, 2
  %or.cond = select i1 %i.nk, i1 true, i1 %.not.i.i122
  br i1 %or.cond, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge", label %bb.aw

bb.aw:                                            ; preds = %_ZNK9hb_iter_tIN2OT6Layout6Common8Coverage6iter_tEjEcvbEv.exit.i.i.i.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21
  br i1 %i.as, label %bb.ax, label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSD_EEdeEv.exit.i.i

bb.ax:                                            ; preds = %bb.aw
  %i.nl = load i16, ptr %i.ag, align 1, !tbaa !211
  %i.nm = call noundef i16 @llvm.bswap.i16(i16 %i.nl)
  %i.nn = zext i16 %i.nm to i32
  %.not.i.i.i.i.i.i.i.i.i126 = icmp samesign ult i32 %.sroa.13187.3313, %i.nn
  br i1 %.not.i.i.i.i.i.i.i.i.i126, label %bb.ay, label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i127, !prof !219

bb.ay:                                            ; preds = %bb.ax
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !212
  %i.no = zext nneg i32 %.sroa.13187.3313 to i64
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.no
  br label %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i127

_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i127: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i.i128 = phi ptr [ %i.np, %bb.ay ], [ @_hb_NullPool, %bb.ax ]
  %i.nq = load i16, ptr %.0.i.i.i.i.i.i.i.i.i128, align 1, !tbaa !211
  %i.nr = call noundef i16 @llvm.bswap.i16(i16 %i.nq)
  %i.ns = zext i16 %i.nr to i32
  br label %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSD_EEdeEv.exit.i.i

_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSD_EEdeEv.exit.i.i: ; preds = %bb.aw, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i127
  %.0.i.i.i.i.i.i.i123 = phi i32 [ %i.ns, %_ZNK2OT6Layout6Common17CoverageFormat1_3INS0_10SmallTypesEE6iter_t9get_glyphEv.exit.i.i.i.i.i.i.i127 ], [ %.sroa.28.2319, %bb.aw ] ; 3 uses
  %i.nt = load ptr, ptr %i.at, align 8, !tbaa !288 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not.i.i.i.i.i, label %.backedge.i.i, label %bb.az

bb.az:                                            ; preds = %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSD_EEdeEv.exit.i.i
  %i.nu = mul i32 %.0.i.i.i.i.i.i.i123, 506952113
  %i.nv = and i32 %i.nu, 1073741823
  %i.nw = load i32, ptr %i.au, align 8, !tbaa !322
  %i.nx = urem i32 %i.nv, %i.nw                   ; 2 uses
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [12 x i8], ptr %i.nt, i64 %i.ny ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  %i.ob = load i32, ptr %i.oa, align 4            ; 2 uses
  %i.oc = and i32 %i.ob, 2
  %.not15.i.i.i.i.i.i.i = icmp eq i32 %i.oc, 0
  br i1 %.not15.i.i.i.i.i.i.i, label %.backedge.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.az
  %i.od = load i32, ptr %i.av, align 4
  %i.oe = load i32, ptr %i.nz, align 4, !tbaa !218
  %i.of = icmp eq i32 %i.oe, %.0.i.i.i.i.i.i.i123
  br i1 %i.of, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i124

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i124
  %i.og = load i32, ptr %i.om, align 4, !tbaa !218
  %i.oh = icmp eq i32 %i.og, %.0.i.i.i.i.i.i.i123
  br i1 %i.oh, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i124, !llvm.loop !6

.lr.ph.i.i.i.i.i.i124:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.ba
  %.01016.i20.i.i.i.i.i.i = phi i32 [ %i.ok, %bb.ba ], [ %i.nx, %.lr.ph.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i = phi i32 [ %i.oi, %bb.ba ], [ 0, %.lr.ph.i.i.i.i.i.i.i ]
  %i.oi = add i32 %.017.i19.i.i.i.i.i.i, 1        ; 2 uses
  %i.oj = add i32 %i.oi, %.01016.i20.i.i.i.i.i.i
  %i.ok = and i32 %i.oj, %i.od                    ; 2 uses
  %i.ol = zext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [12 x i8], ptr %i.nt, i64 %i.ol ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oo = load i32, ptr %i.on, align 4            ; 2 uses
  %i.op = and i32 %i.oo, 2
  %.not.i.i.i.i.i.i.i125 = icmp eq i32 %i.op, 0
  br i1 %.not.i.i.i.i.i.i.i125, label %.backedge.i.i, label %bb.ba, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i: ; preds = %bb.ba, %.lr.ph.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i = phi i32 [ %i.ob, %.lr.ph.i.i.i.i.i.i.i ], [ %i.oo, %bb.ba ]
  %i.oq = trunc i32 %.lcssa17.i.i.i.i.i.i to i1
  br i1 %i.oq, label %"_ZNR9hb_iter_tI16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS2_8OffsetToINS3_9GPOS_impl12AnchorMatrixENS2_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EE9hb_pair_tIjRSE_EEppEv.exit.backedge", label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i124, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i, %bb.az, %_ZN9hb_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEE9hb_pair_tIjRSD_EEdeEv.exit.i.i
  br label %bb.aq, !llvm.loop !5222

.thread:                                          ; preds = %"_ZNK16hb_filter_iter_tI13hb_zip_iter_tIN2OT6Layout6Common8Coverage6iter_tE10hb_array_tIKNS1_8OffsetToINS2_9GPOS_impl12AnchorMatrixENS1_7NumTypeILb1EtLj2EEEvLb1EEEEERK8hb_map_tRK3$_6LPv0EEneERKSN_.exit", %_ZNK2OT6Layout6Common8Coverage6iter_tneERKS3_.exit.i.i, %.split.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %select.unfold

.loopexit:                                        ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit", %bb.n, %_ZL9hb_memsetPvij.exit.i.i.i.i, %.critedge.i.i.i.i
  %.sroa.0.0.copyload.i5.i = phi i16 [ %.sroa.0.0.copyload.i5.pre.i, %.critedge.i.i.i.i ], [ %i.ej, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjEZNK2OT6Layout9GPOS_impl13LigatureArray6subsetINS5_6Common8Coverage6iter_tETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSD_6item_tEEE5valueEvE4typeELPv0EEEbP19hb_subset_context_tSD_jPK8hb_map_tR11hb_vector_tIjLb1EEEUljE_RK4$_19LSI_0EEZNKS8_ISB_TnSH_LSI_0EEEbSK_SD_jSN_SQ_EUljE0_L24hb_function_sortedness_t0ELSI_0EERK4$_33TnSH_LSI_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISD_Efp_EEEOSD_OS12_.exit" ], [ %i.ej, %bb.n ], [ %.sroa.0.0.copyload.i5.pre8.i, %_ZL9hb_memsetPvij.exit.i.i.i.i ]
  %i.or = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i5.i)
end_hunk_14
begin_hunk_15_@_ZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INS0_10SmallTypesEE6subsetEP19hb_subset_context_t:bb.a
  %.not13.i.i.us = icmp ult i32 %.sroa.0206.sroa.0.1, %i.hs
  br i1 %.not13.i.i.us, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i.us", label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", !prof !219

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i.us": ; preds = %.lr.ph.split.i.i.preheader.split.us
  %i.iz = add nuw i32 %.sroa.0206.sroa.0.1, %i.iv
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 1, !tbaa !211
  %.not5.i.i.us = icmp eq i16 %i.jc, 0
  br i1 %.not5.i.i.us, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit"

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i"
  %.sroa.0.08.i.i = phi i32 [ %.sroa.0.1.i.i, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i" ], [ %.sroa.0206.sroa.0.1, %.lr.ph.split.i.i.preheader ] ; 3 uses
  %.not13.i.i = icmp ult i32 %.sroa.0.08.i.i, %i.hs
  br i1 %.not13.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i", label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i", !prof !219

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i": ; preds = %.lr.ph.split.i.i
  %i.jd = add nuw i32 %.sroa.0.08.i.i, %i.iv
  %i.je = zext i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.gi, i64 %i.je
  %i.jg = load i16, ptr %i.jf, align 1, !tbaa !211
  %.not5.i.i = icmp eq i16 %i.jg, 0
  br i1 %.not5.i.i, label %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i", label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit"

"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i": ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i", %.lr.ph.split.i.i
  %i.jh = add i32 %.sroa.0.08.i.i, 1              ; 2 uses
  %.not2.i.i.i.i.i.i = icmp eq i32 %i.jh, %i.hs
  br i1 %.not2.i.i.i.i.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i", %.backedge.i.i.i.i.i.i
  %.sroa.0.1.i.i = phi i32 [ %i.kd, %.backedge.i.i.i.i.i.i ], [ %i.jh, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.thread.i.i" ] ; 6 uses
  %i.ji = mul i32 %.sroa.0.1.i.i, 506952113
  %i.jj = and i32 %i.ji, 1073741823
  %i.jk = urem i32 %i.jj, %i.ix                   ; 2 uses
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [12 x i8], ptr %.fr, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = load i32, ptr %i.jn, align 4            ; 2 uses
  %i.jp = and i32 %i.jo, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.jp, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i
  %i.jq = load i32, ptr %i.jm, align 4, !tbaa !218
  %i.jr = icmp eq i32 %i.jq, %.sroa.0.1.i.i
  br i1 %i.jr, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.js = load i32, ptr %i.jy, align 4, !tbaa !218
  %i.jt = icmp eq i32 %i.js, %.sroa.0.1.i.i
  br i1 %i.jt, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.ac
  %.01016.i20.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jw, %bb.ac ], [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ju, %bb.ac ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ju = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.jv = add i32 %i.ju, %.01016.i20.i.i.i.i.i.i.i.i.i.i
  %i.jw = and i32 %i.jv, %i.iy                    ; 2 uses
  %i.jx = zext i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [12 x i8], ptr %.fr, i64 %i.jx ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.ka = load i32, ptr %i.jz, align 4            ; 2 uses
  %i.kb = and i32 %i.ka, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.kb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i, label %bb.ac, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa17.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jo, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ka, %bb.ac ]
  %i.kc = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.kc, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.kd = add i32 %.sroa.0.1.i.i, 1               ; 2 uses
  %.not.i.i.i.i.i.i108 = icmp eq i32 %i.kd, %i.hs
  br i1 %.not.i.i.i.i.i.i108, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !90

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i
  %.not.not.i.i = icmp eq i32 %.sroa.0.1.i.i, %i.hs
  br i1 %.not.not.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i, !llvm.loop !5271

"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit": ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EEbEdeEv.exit.i.i.us"
  %i.ke = load ptr, ptr %i.gj, align 8, !tbaa !288 ; 4 uses
  %.not.i = icmp eq ptr %i.ke, null
  br i1 %.not.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.ad

bb.ad:                                            ; preds = %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit"
  %i.kf = mul i32 %.0.i.i.i.i.i.i.i, 506952113
  %i.kg = and i32 %i.kf, 1073741823
  %i.kh = load i32, ptr %i.gk, align 8, !tbaa !322
  %i.ki = urem i32 %i.kg, %i.kh                   ; 2 uses
  %i.kj = zext nneg i32 %i.ki to i64              ; 2 uses
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.kj ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.km = load i32, ptr %i.kl, align 4            ; 2 uses
  %i.kn = and i32 %i.km, 2
  %.not15.i.i.i = icmp eq i32 %i.kn, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %bb.ad
  %i.ko = load i32, ptr %i.gl, align 4
  %i.kp = load i32, ptr %i.kk, align 4, !tbaa !218
  %i.kq = icmp eq i32 %i.kp, %.0.i.i.i.i.i.i.i
  br i1 %i.kq, label %._crit_edge.i.i, label %.lr.ph.i.i110

bb.ae:                                            ; preds = %.lr.ph.i.i110
  %i.kr = load i32, ptr %i.lb, align 4, !tbaa !218
  %i.ks = icmp eq i32 %i.kr, %.0.i.i.i.i.i.i.i
  br i1 %i.ks, label %._crit_edge.i.i, label %.lr.ph.i.i110, !llvm.loop !6

._crit_edge.i.i:                                  ; preds = %bb.ae, %.lr.ph.i.i.i109
  %.lcssa10.i.i = phi i32 [ %i.km, %.lr.ph.i.i.i109 ], [ %i.ld, %bb.ae ]
  %i.kt = phi i64 [ %i.kj, %.lr.ph.i.i.i109 ], [ %i.la, %bb.ae ]
  %i.ku = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.kt
  %i.kv = trunc i32 %.lcssa10.i.i to i1
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %spec.select.i.i = select i1 %i.kv, ptr %i.kw, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit

.lr.ph.i.i110:                                    ; preds = %.lr.ph.i.i.i109, %bb.ae
  %.01016.i13.i.i = phi i32 [ %i.kz, %bb.ae ], [ %i.ki, %.lr.ph.i.i.i109 ]
  %.017.i12.i.i = phi i32 [ %i.kx, %bb.ae ], [ 0, %.lr.ph.i.i.i109 ]
  %i.kx = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.ky = add i32 %i.kx, %.01016.i13.i.i
  %i.kz = and i32 %i.ky, %i.ko                    ; 2 uses
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.ld = load i32, ptr %i.lc, align 4            ; 2 uses
  %i.le = and i32 %i.ld, 2
  %.not.i.i.i111 = icmp eq i32 %i.le, 0
  br i1 %.not.i.i.i111, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.ae, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit:          ; preds = %.lr.ph.i.i110, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit", %bb.ad, %._crit_edge.i.i
  %.0.i = phi ptr [ @minus_1, %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE_L24hb_function_sortedness_t0ELS9_0EERK4$_33TnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSQ_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISQ_Efp_EEEOSQ_OSV_.exit" ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @minus_1, %bb.ad ], [ @minus_1, %.lr.ph.i.i110 ]
  %i.lf = load i32, ptr %.0.i, align 4, !tbaa !218
  %i.lg = load i32, ptr %i.ch, align 4, !tbaa !540 ; 3 uses
  %i.lh = load i32, ptr %8, align 8, !tbaa !538   ; 6 uses
  %.not.i112 = icmp slt i32 %i.lg, %i.lh
  br i1 %.not.i112, label %.critedge.i, label %bb.af

bb.af:                                            ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.li = add i32 %i.lg, 1                        ; 2 uses
  %i.lj = icmp slt i32 %i.lh, 0
  br i1 %i.lj, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread283, label %bb.ag, !prof !112

bb.ag:                                            ; preds = %bb.af
  %.not.i173 = icmp ugt i32 %i.li, %i.lh
  br i1 %.not.i173, label %.preheader.i, label %..critedge_crit_edge.i, !prof !112

.preheader.i:                                     ; preds = %bb.ag, %.preheader.i
  %.043.i = phi i32 [ %i.lm, %.preheader.i ], [ %i.lh, %bb.ag ] ; 2 uses
  %i.lk = lshr i32 %.043.i, 1
  %i.ll = add i32 %.043.i, 8
  %i.lm = add i32 %i.ll, %i.lk                    ; 7 uses
  %i.ln = icmp ugt i32 %i.li, %i.lm
  br i1 %i.ln, label %.preheader.i, label %.thread.i, !llvm.loop !40

.thread.i:                                        ; preds = %.preheader.i
  %i.lo = icmp ugt i32 %i.lm, 1073741823
  br i1 %i.lo, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread286, label %bb.ah, !prof !112

bb.ah:                                            ; preds = %.thread.i
  %.not49.i = icmp eq i32 %i.lh, 0
  %i.lp = load ptr, ptr %i.cf, align 8, !tbaa !539 ; 2 uses
  br i1 %.not49.i, label %bb.ai, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i

bb.ai:                                            ; preds = %bb.ah
  %.not9.i.i.i = icmp eq ptr %i.lp, null
  br i1 %.not9.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.lq = shl nuw i32 %i.lm, 2
  %i.lr = zext i32 %i.lq to i64
  %i.ls = call ptr @hb_malloc(i64 noundef %i.lr) #21 ; 4 uses
  %.not10.i.i.i = icmp eq ptr %i.ls, null
  br i1 %.not10.i.i.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %bb.ak, !prof !112

bb.ak:                                            ; preds = %bb.aj
  %i.lt = load i32, ptr %i.ch, align 4, !tbaa !540 ; 2 uses
  %.not.i.i.i.i175 = icmp eq i32 %i.lt, 0
  br i1 %.not.i.i.i.i175, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit, label %bb.al, !prof !112

bb.al:                                            ; preds = %bb.ak
  %i.lu = zext i32 %i.lt to i64
  %i.lv = shl nuw nsw i64 %i.lu, 2
  %i.lw = load ptr, ptr %i.cf, align 8, !tbaa !539
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ls, ptr readonly align 1 %i.lw, i64 %i.lv, i1 false), !alias.scope !5295
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i: ; preds = %bb.ai, %bb.ah
  %i.lx = phi ptr [ null, %bb.ai ], [ %i.lp, %bb.ah ]
  %i.ly = shl nuw i32 %i.lm, 2
  %i.lz = zext i32 %i.ly to i64
  %i.ma = call ptr @hb_realloc(ptr noundef %i.lx, i64 noundef %i.lz) #21 ; 2 uses
  %.not22.i = icmp eq ptr %i.ma, null
  br i1 %.not22.i, label %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit, !prof !198

_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i: ; preds = %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i, %bb.aj
  %i.mb = load i32, ptr %8, align 8, !tbaa !538   ; 2 uses
  %.not23.i = icmp ugt i32 %i.lm, %i.mb
  br i1 %.not23.i, label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread286, label %..critedge_crit_edge.i, !prof !174

_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread286:  ; preds = %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %.thread.i
  %.sink.i.ph.in = phi i32 [ %i.lh, %.thread.i ], [ %i.mb, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i ]
  %.sink.i.ph = xor i32 %.sink.i.ph.in, -1
  store i32 %.sink.i.ph, ptr %8, align 8, !tbaa !538
  br label %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread283

_ZN11hb_vector_tIjLb1EE5allocEjb.exit:            ; preds = %bb.ak, %bb.al, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i
  %.1.i.i42.i = phi ptr [ %i.ma, %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.i ], [ %i.ls, %bb.al ], [ %i.ls, %bb.ak ]
  store ptr %.1.i.i42.i, ptr %i.cf, align 8, !tbaa !539
  store i32 %i.lm, ptr %8, align 8, !tbaa !538
  br label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %_ZN11hb_vector_tIjLb1EE14realloc_vectorIjTnPN12hb_enable_ifIXsr3std28is_trivially_copy_assignableIT_EE5valueEvE4typeELPv0EEEPjj11hb_priorityILj0EE.exit.thread53.i, %bb.ag, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit
  %.pre.i = load i32, ptr %i.ch, align 4, !tbaa !540
  br label %.critedge.i

_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread283:  ; preds = %bb.af, %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread286
  store i32 %i.gm, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit

.critedge.i:                                      ; preds = %..critedge_crit_edge.i, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.mc = phi i32 [ %.pre.i, %..critedge_crit_edge.i ], [ %i.lg, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit ] ; 2 uses
  %i.md = load ptr, ptr %i.cf, align 8, !tbaa !539
  %i.me = add i32 %i.mc, 1
  store i32 %i.me, ptr %i.ch, align 4, !tbaa !540
  %i.mf = zext i32 %i.mc to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %i.mf
  store i32 %i.lf, ptr %i.mg, align 4, !tbaa !218
  br label %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit

_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit:  ; preds = %_ZN11hb_vector_tIjLb1EE5allocEjb.exit.thread283, %.critedge.i
  %i.mh = load i16, ptr %i.gf, align 1, !tbaa !211 ; 2 uses
  %i.mi = call noundef i16 @llvm.bswap.i16(i16 %i.mh)
  %i.mj = zext i16 %i.mi to i32                   ; 5 uses
  %.not6.i.i.i126 = icmp eq i16 %i.mh, 0
  br i1 %.not6.i.i.i126, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141", label %.lr.ph.i.i.i127

.lr.ph.i.i.i127:                                  ; preds = %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit
  %i.mk = load ptr, ptr %i.aa, align 8, !tbaa !288, !noalias !5296 ; 3 uses
  %.not.i.i.i.i.i.i128 = icmp eq ptr %i.mk, null
  %i.ml = load i32, ptr %i.gg, align 8, !noalias !5296
  br i1 %.not.i.i.i.i.i.i128, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i129.preheader

.lr.ph.split.i.i.i129.preheader:                  ; preds = %.lr.ph.i.i.i127
  %i.mm = load i32, ptr %i.gh, align 4
  br label %.lr.ph.split.i.i.i129

.lr.ph.split.i.i.i129:                            ; preds = %.lr.ph.split.i.i.i129.preheader, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138"
  %.sroa.0188.sroa.0.0 = phi i32 [ %i.ni, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138" ], [ 0, %.lr.ph.split.i.i.i129.preheader ] ; 5 uses
  %i.mn = mul i32 %.sroa.0188.sroa.0.0, 506952113
  %i.mo = and i32 %i.mn, 1073741823
  %i.mp = urem i32 %i.mo, %i.ml                   ; 2 uses
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %i.mq ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %i.mt = load i32, ptr %i.ms, align 4, !noalias !5296 ; 2 uses
  %i.mu = and i32 %i.mt, 2
  %.not15.i.i.i.i.i.i.i.i130 = icmp eq i32 %i.mu, 0
  br i1 %.not15.i.i.i.i.i.i.i.i130, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138", label %.lr.ph.i.i.i.i.i.i.i.i131

.lr.ph.i.i.i.i.i.i.i.i131:                        ; preds = %.lr.ph.split.i.i.i129
  %i.mv = load i32, ptr %i.mr, align 4, !tbaa !218, !noalias !5296
  %i.mw = icmp eq i32 %i.mv, %.sroa.0188.sroa.0.0
  br i1 %i.mw, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", label %.lr.ph.i.i.i.i.i.i.i132

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i132
  %i.mx = load i32, ptr %i.nd, align 4, !tbaa !218, !noalias !5296
  %i.my = icmp eq i32 %i.mx, %.sroa.0188.sroa.0.0
  br i1 %i.my, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", label %.lr.ph.i.i.i.i.i.i.i132, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i132:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.i131, %bb.am
  %.01016.i20.i.i.i.i.i.i.i133 = phi i32 [ %i.nb, %bb.am ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i.i131 ]
  %.017.i19.i.i.i.i.i.i.i134 = phi i32 [ %i.mz, %bb.am ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i131 ]
  %i.mz = add i32 %.017.i19.i.i.i.i.i.i.i134, 1   ; 2 uses
  %i.na = add i32 %i.mz, %.01016.i20.i.i.i.i.i.i.i133
  %i.nb = and i32 %i.na, %i.mm                    ; 2 uses
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %i.mk, i64 %i.nc ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = load i32, ptr %i.ne, align 4, !noalias !5296 ; 2 uses
  %i.ng = and i32 %i.nf, 2
  %.not.i.i.i.i.i.i.i.i135 = icmp eq i32 %i.ng, 0
  br i1 %.not.i.i.i.i.i.i.i.i135, label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138", label %bb.am, !llvm.loop !6

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136": ; preds = %bb.am, %.lr.ph.i.i.i.i.i.i.i.i131
  %.lcssa17.i.i.i.i.i.i.i137 = phi i32 [ %i.mt, %.lr.ph.i.i.i.i.i.i.i.i131 ], [ %i.nf, %bb.am ]
  %i.nh = trunc i32 %.lcssa17.i.i.i.i.i.i.i137 to i1
  br i1 %i.nh, label %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141", label %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138"

"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.thread.i.i.i138": ; preds = %.lr.ph.i.i.i.i.i.i.i132, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", %.lr.ph.split.i.i.i129
  %i.ni = add i32 %.sroa.0188.sroa.0.0, 1         ; 2 uses
  %.not.i.i.i139 = icmp eq i32 %i.ni, %i.mj
  br i1 %.not.i.i.i139, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i129, !llvm.loop !89

"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141": ; preds = %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136", %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit
  %.sroa.0188.sroa.0.1 = phi i32 [ 0, %_ZN11hb_vector_tIjLb1EE4pushIJRjEEEPjDpOT_.exit ], [ %.sroa.0188.sroa.0.0, %"_ZNK4$_23clIR8hb_map_tjEEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOS4_OS5_.exit.i.i.i136" ] ; 2 uses
  %.not4.i.i = icmp eq i32 %.sroa.0188.sroa.0.1, %i.mj
  br i1 %.not4.i.i, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141", %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i"
  %i.nj = phi i32 [ %i.ob, %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i" ], [ %.sroa.0188.sroa.0.1, %"_ZorI15hb_range_iter_tIjjE24hb_filter_iter_factory_tIR8hb_map_tRK4$_19ETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSA_6item_tEEE5valueEvE4typeELPv0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISA_Efp_EEEOSA_OSG_.exit141" ] ; 2 uses
  %.val2.val.i.i.i.i = load i16, ptr %i.gf, align 1, !tbaa !211
  %i.nk = call noundef i16 @llvm.bswap.i16(i16 %.val2.val.i.i.i.i)
  %i.nl = zext i16 %i.nk to i32
  %i.nm = mul nuw i32 %.fr11.i.i, %i.nl
  %i.nn = add i32 %i.nm, %i.nj
  %i.no = load i32, ptr %i.gn, align 4, !tbaa !540 ; 3 uses
  %i.np = load i32, ptr %13, align 8, !tbaa !538
  %.not.i.i.i.i145 = icmp slt i32 %i.no, %i.np
  br i1 %.not.i.i.i.i145, label %.critedge.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i.i144
  %i.nq = add i32 %i.no, 1
  %i.nr = call noundef zeroext i1 @_ZN11hb_vector_tIjLb1EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %13, i32 noundef %i.nq, i1 noundef zeroext false)
  br i1 %i.nr, label %..critedge_crit_edge.i.i.i.i, label %bb.ao, !prof !219

..critedge_crit_edge.i.i.i.i:                     ; preds = %bb.an
  %.pre.i.i.i.i = load i32, ptr %i.gn, align 4, !tbaa !540
  br label %.critedge.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  store i32 %i.gm, ptr @_hb_CrapPool, align 16
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

.critedge.i.i.i.i:                                ; preds = %..critedge_crit_edge.i.i.i.i, %.lr.ph.i.i144
  %i.ns = phi i32 [ %.pre.i.i.i.i, %..critedge_crit_edge.i.i.i.i ], [ %i.no, %.lr.ph.i.i144 ] ; 2 uses
  %i.nt = load ptr, ptr %i.go, align 8, !tbaa !539
  %i.nu = add i32 %i.ns, 1
  store i32 %i.nu, ptr %i.gn, align 4, !tbaa !540
  %i.nv = zext i32 %i.ns to i64
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %i.nv
  store i32 %i.nn, ptr %i.nw, align 4, !tbaa !218
  br label %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i

_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i:    ; preds = %.critedge.i.i.i.i, %bb.ao
  %i.nx = add i32 %i.nj, 1                        ; 2 uses
  %.not2.i.i.i.i.i.i146 = icmp eq i32 %i.nx, %i.mj
  br i1 %.not2.i.i.i.i.i.i146, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i.i.i.i.i147

.lr.ph.i.i.i.i.i.i147:                            ; preds = %_ZN11hb_vector_tIjLb1EElsIjEERS0_OT_.exit.i.i
  %i.ny = load ptr, ptr %i.aa, align 8, !tbaa !288 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i148 = icmp eq ptr %i.ny, null
  br i1 %.not.i.i.i.i.i.i.i.i.i148, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.split.i.i.i.i.i.i149

.lr.ph.split.i.i.i.i.i.i149:                      ; preds = %.lr.ph.i.i.i.i.i.i147
  %i.nz = load i32, ptr %i.gg, align 8, !tbaa !322
  %i.oa = load i32, ptr %i.gh, align 4
  br label %bb.ap

bb.ap:                                            ; preds = %.backedge.i.i.i.i.i.i158, %.lr.ph.split.i.i.i.i.i.i149
  %i.ob = phi i32 [ %i.nx, %.lr.ph.split.i.i.i.i.i.i149 ], [ %i.ox, %.backedge.i.i.i.i.i.i158 ] ; 6 uses
  %i.oc = mul i32 %i.ob, 506952113
  %i.od = and i32 %i.oc, 1073741823
  %i.oe = urem i32 %i.od, %i.nz                   ; 2 uses
  %i.of = zext nneg i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.ny, i64 %i.of ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  %i.oi = load i32, ptr %i.oh, align 4            ; 2 uses
  %i.oj = and i32 %i.oi, 2
  %.not15.i.i.i.i.i.i.i.i.i.i.i150 = icmp eq i32 %i.oj, 0
  br i1 %.not15.i.i.i.i.i.i.i.i.i.i.i150, label %.backedge.i.i.i.i.i.i158, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151

.lr.ph.i.i.i.i.i.i.i.i.i.i.i151:                  ; preds = %bb.ap
  %i.ok = load i32, ptr %i.og, align 4, !tbaa !218
  %i.ol = icmp eq i32 %i.ok, %i.ob
  br i1 %i.ol, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i.i.i152

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i152
  %i.om = load i32, ptr %i.os, align 4, !tbaa !218
  %i.on = icmp eq i32 %i.om, %i.ob
  br i1 %i.on, label %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i.i.i152, !llvm.loop !6

.lr.ph.i.i.i.i.i.i.i.i.i.i152:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151, %bb.aq
  %.01016.i20.i.i.i.i.i.i.i.i.i.i153 = phi i32 [ %i.oq, %bb.aq ], [ %i.oe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151 ]
  %.017.i19.i.i.i.i.i.i.i.i.i.i154 = phi i32 [ %i.oo, %bb.aq ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151 ]
  %i.oo = add i32 %.017.i19.i.i.i.i.i.i.i.i.i.i154, 1 ; 2 uses
  %i.op = add i32 %i.oo, %.01016.i20.i.i.i.i.i.i.i.i.i.i153
  %i.oq = and i32 %i.op, %i.oa                    ; 2 uses
  %i.or = zext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [12 x i8], ptr %i.ny, i64 %i.or ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %i.ou = load i32, ptr %i.ot, align 4            ; 2 uses
  %i.ov = and i32 %i.ou, 2
  %.not.i.i.i.i.i.i.i.i.i.i.i155 = icmp eq i32 %i.ov, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i155, label %.backedge.i.i.i.i.i.i158, label %bb.aq, !llvm.loop !6

_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156: ; preds = %bb.aq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151
  %.lcssa17.i.i.i.i.i.i.i.i.i.i157 = phi i32 [ %i.oi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i151 ], [ %i.ou, %bb.aq ]
  %i.ow = trunc i32 %.lcssa17.i.i.i.i.i.i.i.i.i.i157 to i1
  br i1 %i.ow, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i", label %.backedge.i.i.i.i.i.i158

.backedge.i.i.i.i.i.i158:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i152, %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156, %bb.ap
  %i.ox = add i32 %i.ob, 1                        ; 2 uses
  %.not.i.i.i.i.i.i159 = icmp eq i32 %i.ox, %i.mj
  br i1 %.not.i.i.i.i.i.i159, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %bb.ap, !llvm.loop !90

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EEjEppEv.exit.i.i": ; preds = %_ZNK12hb_hashmap_tIjjLb1EE10fetch_itemERKjj.exit.i.i.i.i.i.i.i.i.i.i156
  %.not.i.i160 = icmp eq i32 %i.ob, %i.mj
  br i1 %.not.i.i160, label %"_ZorI13hb_map_iter_tI16hb_filter_iter_tI15hb_range_iter_tIjjER8hb_map_tRK4$_19LPv0EEZNK2OT6Layout9GPOS_impl20MarkMarkPosFormat1_2INSC_10SmallTypesEE6subsetEP19hb_subset_context_tEUljE0_L24hb_function_sortedness_t0ELS9_0EE9hb_sink_tIR11hb_vector_tIjLb1EEETnPN12hb_enable_ifIXsr17hb_is_iterator_ofIT_NSS_6item_tEEE5valueEvE4typeELS9_0EEDTclclsr3stdE7forwardIT0_Efp0_Eclsr3stdE7forwardISS_Efp_EEEOSS_OSX_.exit", label %.lr.ph.i.i144, !llvm.loop !5279
end_hunk_15
begin_hunk_16_@llvm.vector.reduce.add.v2i64
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { "function-inline-cost-multiplier"="2" }
attributes #23 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!91, !92}
!llvm.ident = !{!93}
!llvm.errno.tbaa = !{!98}

!0 = distinct !{!0, !170}
!1 = distinct !{!1, !170}
!2 = distinct !{!2, !170}
!3 = distinct !{!3, !170}
!4 = distinct !{!4, !170}
!5 = distinct !{!5, !170}
!6 = distinct !{!6, !170}
!7 = distinct !{!7, !170}
!8 = distinct !{!8, !170}
!9 = distinct !{!9, !170}
!10 = distinct !{!10, !170}
!11 = distinct !{!11, !170}
!12 = distinct !{!12, !170}
!13 = distinct !{!13, !170}
!14 = distinct !{!14, !170}
!15 = distinct !{!15, !170}
!16 = distinct !{!16, !170}
!17 = distinct !{!17, !170}
!18 = distinct !{!18, !170}
!19 = distinct !{!19, !170}
!20 = distinct !{!20, !170}
!21 = distinct !{!21, !170}
!22 = distinct !{!22, !170}
!23 = distinct !{!23, !170}
!24 = distinct !{!24, !170}
!25 = distinct !{!25, !170}
!26 = distinct !{!26, !170}
!27 = distinct !{!27, !170}
!28 = distinct !{!28, !170}
!29 = distinct !{!29, !170}
!30 = distinct !{!30, !170}
!31 = distinct !{!31, !170}
!32 = distinct !{!32, !170}
!33 = distinct !{!33, !170}
!34 = distinct !{!34, !170}
!35 = distinct !{!35, !170}
!36 = distinct !{!36, !170}
!37 = distinct !{!37, !170}
!38 = distinct !{!38, !170}
!39 = distinct !{!39, !170}
!40 = distinct !{!40, !170}
!41 = distinct !{!41, !170}
!42 = distinct !{!42, !170}
!43 = distinct !{!43, !170}
!44 = distinct !{!44, !170}
!45 = distinct !{!45, !170}
!46 = distinct !{!46, !170}
!47 = distinct !{!47, !170}
!48 = distinct !{!48, !170}
!49 = distinct !{!49, !170}
!50 = distinct !{!50, !170}
!51 = distinct !{!51, !170}
!52 = distinct !{!52, !170}
!53 = distinct !{!53, !170}
!54 = distinct !{!54, !170}
!55 = distinct !{!55, !170}
!56 = distinct !{!56, !170}
!57 = distinct !{!57, !170}
!58 = distinct !{!58, !170}
!59 = distinct !{!59, !170}
!60 = distinct !{!60, !170}
!61 = distinct !{!61, !170}
!62 = distinct !{!62, !170}
!63 = distinct !{!63, !170}
!64 = distinct !{!64, !170}
!65 = distinct !{!65, !170}
!66 = distinct !{!66, !170}
!67 = distinct !{!67, !170}
!68 = distinct !{!68, !170}
!69 = distinct !{!69, !170}
!70 = distinct !{!70, !170}
!71 = distinct !{!71, !170}
!72 = distinct !{!72, !170}
!73 = distinct !{!73, !170}
!74 = distinct !{!74, !170}
!75 = distinct !{!75, !170}
!76 = distinct !{!76, !170}
!77 = distinct !{!77, !170}
!78 = distinct !{!78, !170}
!79 = distinct !{!79, !170}
!80 = distinct !{!80, !170}
!81 = distinct !{!81, !170}
!82 = distinct !{!82, !170}
!83 = distinct !{!83, !170}
!84 = distinct !{!84, !170}
!85 = distinct !{!85, !170}
!86 = distinct !{!86, !170}
!87 = distinct !{!87, !170}
!88 = distinct !{!88, !170}
!89 = distinct !{!89, !170}
!90 = distinct !{!90, !170}
!91 = !{i32 8, !"PIC Level", i32 2}
!92 = !{i32 7, !"uwtable", i32 2}
!93 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!94 = !{!"Simple C++ TBAA"}
!95 = !{!"omnipotent char", !94, i64 0}
!96 = !{!"int", !95, i64 0}
!97 = !{!"__libc_errno", !96, i64 0}
!98 = !{!97, !96, i64 0}
!99 = !{!"_ZTS11hb_atomic_tIiE", !96, i64 0}
!100 = !{!"_ZTS20hb_reference_count_t", !99, i64 0}
!101 = !{!"bool", !95, i64 0}
!102 = !{!"_ZTS11hb_atomic_tIbE", !101, i64 0}
!103 = !{!"any pointer", !95, i64 0}
!104 = !{!"p1 _ZTS20hb_user_data_array_t", !103, i64 0}
!105 = !{!"_ZTS11hb_atomic_tIP20hb_user_data_array_tE", !104, i64 0}
!106 = !{!"_ZTS18hb_object_header_t", !100, i64 0, !102, i64 4, !105, i64 8}
!107 = !{!"p1 omnipotent char", !103, i64 0}
!108 = !{!"_ZTS16hb_memory_mode_t", !95, i64 0}
!109 = !{!"_ZTS9hb_blob_t", !106, i64 0, !107, i64 16, !96, i64 24, !108, i64 28, !103, i64 32, !103, i64 40}
!110 = !{!109, !107, i64 16}
!111 = !{!109, !96, i64 24}
!112 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!113 = !{!"p1 _ZTS8hb_map_t", !103, i64 0}
!114 = !{!"p1 _ZTS9hb_face_t", !103, i64 0}
!115 = !{!"p1 _ZTSN2OT25cff1_subset_accelerator_tE", !103, i64 0}
!116 = !{!"_ZTS11hb_atomic_tIPN2OT25cff1_subset_accelerator_tEE", !115, i64 0}
!117 = !{!"_ZTS16hb_lazy_loader_tIN2OT25cff1_subset_accelerator_tE21hb_face_lazy_loader_tIS1_Lj1EE9hb_face_tLj1ES1_E", !116, i64 0}
!118 = !{!"_ZTS21hb_face_lazy_loader_tIN2OT25cff1_subset_accelerator_tELj1EE", !117, i64 0}
!119 = !{!"p1 _ZTSN2OT25cff2_subset_accelerator_tE", !103, i64 0}
!120 = !{!"_ZTS11hb_atomic_tIPN2OT25cff2_subset_accelerator_tEE", !119, i64 0}
!121 = !{!"_ZTS16hb_lazy_loader_tIN2OT25cff2_subset_accelerator_tE21hb_face_lazy_loader_tIS1_Lj2EE9hb_face_tLj2ES1_E", !120, i64 0}
!122 = !{!"_ZTS21hb_face_lazy_loader_tIN2OT25cff2_subset_accelerator_tELj2EE", !121, i64 0}
!123 = !{!"_ZTS11hb_atomic_tIjE", !96, i64 0}
!124 = !{!"p1 _ZTSN12hb_bit_set_t10page_map_tE", !103, i64 0}
!125 = !{!"_ZTS11hb_vector_tIN12hb_bit_set_t10page_map_tELb1EE", !96, i64 0, !96, i64 4, !124, i64 8}
!126 = !{!"p1 _ZTS13hb_bit_page_t", !103, i64 0}
!127 = !{!"_ZTS11hb_vector_tI13hb_bit_page_tLb0EE", !96, i64 0, !96, i64 4, !126, i64 8}
!128 = !{!"_ZTS12hb_bit_set_t", !101, i64 0, !96, i64 4, !123, i64 8, !125, i64 16, !127, i64 32}
!129 = !{!"_ZTS23hb_bit_set_invertible_t", !128, i64 0, !101, i64 48}
!130 = !{!"_ZTS14hb_sparseset_tI23hb_bit_set_invertible_tE", !106, i64 0, !129, i64 16}
!131 = !{!"_ZTS8hb_set_t", !130, i64 0}
!132 = !{!"p1 _ZTS9hb_pair_tIjjE", !103, i64 0}
!133 = !{!"_ZTS11hb_vector_tI9hb_pair_tIjjELb1EE", !96, i64 0, !96, i64 4, !132, i64 8}
!134 = !{!"short", !95, i64 0}
!135 = !{!"p1 _ZTSN12hb_hashmap_tIjjLb1EE6item_tE", !103, i64 0}
!136 = !{!"_ZTS12hb_hashmap_tIjjLb1EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !135, i64 40}
!137 = !{!"_ZTS8hb_map_t", !136, i64 0}
!138 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE6item_tE", !103, i64 0}
!139 = !{!"_ZTS12hb_hashmap_tIjN2hb10unique_ptrI8hb_set_tEELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !138, i64 40}
!140 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10shared_ptrI8hb_set_tEELb0EE6item_tE", !103, i64 0}
!141 = !{!"_ZTS12hb_hashmap_tIjN2hb10shared_ptrI8hb_set_tEELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !140, i64 40}
!142 = !{!"p1 _ZTSN12hb_hashmap_tIjPKN2OT7FeatureELb0EE6item_tE", !103, i64 0}
!143 = !{!"_ZTS12hb_hashmap_tIjPKN2OT7FeatureELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !142, i64 40}
!144 = !{!"p1 _ZTSN12hb_hashmap_tIj9hb_pair_tIPKvS2_ELb0EE6item_tE", !103, i64 0}
!145 = !{!"_ZTS12hb_hashmap_tIj9hb_pair_tIPKvS2_ELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !144, i64 40}
!146 = !{!"p1 _ZTS14hb_inc_bimap_t", !103, i64 0}
!147 = !{!"_ZTS11hb_vector_tI14hb_inc_bimap_tLb0EE", !96, i64 0, !96, i64 4, !146, i64 8}
!148 = !{!"p1 _ZTSN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tE", !103, i64 0}
!149 = !{!"_ZTS12hb_hashmap_tIj9hb_pair_tIjiELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !148, i64 40}
!150 = !{!"p1 _ZTSN12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE6item_tE", !103, i64 0}
!151 = !{!"_ZTS12hb_hashmap_tIjN2hb10unique_ptrI9hb_blob_tEELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !150, i64 40}
!152 = !{!"p1 _ZTSN12hb_hashmap_tIj6TripleLb0EE6item_tE", !103, i64 0}
!153 = !{!"_ZTS12hb_hashmap_tIj6TripleLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !152, i64 40}
!154 = !{!"p1 int", !103, i64 0}
!155 = !{!"_ZTS11hb_vector_tIiLb0EE", !96, i64 0, !96, i64 4, !154, i64 8}
!156 = !{!"p1 _ZTSN12hb_hashmap_tIj15TripleDistancesLb0EE6item_tE", !103, i64 0}
!157 = !{!"_ZTS12hb_hashmap_tIj15TripleDistancesLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !156, i64 40}
!158 = !{!"p1 _ZTSN12hb_hashmap_tIjdLb0EE6item_tE", !103, i64 0}
!159 = !{!"_ZTS12hb_hashmap_tIjdLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !158, i64 40}
!160 = !{!"_ZTS11hb_vector_tIjLb0EE", !96, i64 0, !96, i64 4, !154, i64 8}
!161 = !{!"p1 _ZTSN12hb_hashmap_tIj22contour_point_vector_tLb0EE6item_tE", !103, i64 0}
!162 = !{!"_ZTS12hb_hashmap_tIj22contour_point_vector_tLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !161, i64 40}
!163 = !{!"_ZTS16head_maxp_info_t", !96, i64 0, !96, i64 4, !96, i64 8, !96, i64 12, !96, i64 16, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !96, i64 36, !101, i64 40}
!164 = !{!"_ZTS10os2_info_t", !96, i64 0, !96, i64 4}
!165 = !{!"p1 _ZTS23hb_subset_accelerator_t", !103, i64 0}
!166 = !{!"_ZTS16hb_subset_plan_t", !106, i64 0, !101, i64 16, !96, i64 20, !101, i64 24, !101, i64 25, !113, i64 32, !113, i64 40, !113, i64 48, !114, i64 56, !118, i64 64, !122, i64 72, !114, i64 80, !96, i64 88, !101, i64 92, !101, i64 93, !101, i64 94, !101, i64 95, !101, i64 96, !101, i64 97, !101, i64 98, !131, i64 104, !133, i64 176, !133, i64 192, !131, i64 208, !131, i64 280, !131, i64 352, !131, i64 424, !131, i64 496, !131, i64 568, !131, i64 640, !137, i64 712, !131, i64 760, !131, i64 832, !131, i64 904, !131, i64 976, !131, i64 1048, !137, i64 1120, !137, i64 1168, !137, i64 1216, !139, i64 1264, !139, i64 1312, !137, i64 1360, !137, i64 1408, !137, i64 1456, !137, i64 1504, !141, i64 1552, !141, i64 1600, !143, i64 1648, !143, i64 1696, !131, i64 1744, !131, i64 1816, !145, i64 1888, !145, i64 1936, !137, i64 1984, !137, i64 2032, !147, i64 2080, !149, i64 2096, !137, i64 2144, !149, i64 2192, !147, i64 2240, !151, i64 2256, !153, i64 2304, !155, i64 2352, !153, i64 2368, !157, i64 2416, !137, i64 2464, !153, i64 2512, !153, i64 2560, !159, i64 2608, !137, i64 2656, !160, i64 2704, !149, i64 2720, !149, i64 2768, !160, i64 2816, !160, i64 2832, !162, i64 2848, !131, i64 2896, !149, i64 2968, !147, i64 3016, !163, i64 3032, !164, i64 3076, !165, i64 3088, !165, i64 3096}
!167 = !{!166, !114, i64 56}
!168 = !{!"_ZTS11hb_vector_tIcLb0EE", !96, i64 0, !96, i64 4, !107, i64 8}
!169 = !{!168, !96, i64 0}
!170 = !{!"llvm.loop.mustprogress"}
!171 = !{!168, !107, i64 8}
!172 = !{!168, !96, i64 4}
!173 = !{!"branch_weights", !"expected", i32 1912905, i32 2145570743}
!174 = !{!"branch_weights", i32 0, i32 -2147483648}
!175 = !{!"_ZTS20hb_serialize_error_t", !95, i64 0}
!176 = !{!"p1 _ZTSN22hb_serialize_context_t8object_tE", !103, i64 0}
!177 = !{!"any p2 pointer", !103, i64 0}
!178 = !{!"p2 _ZTSN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tE", !177, i64 0}
!179 = !{!"_ZTS11hb_vector_tIPN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tELb0EE", !96, i64 0, !96, i64 4, !178, i64 8}
!180 = !{!"_ZTS14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE", !176, i64 0, !179, i64 8}
!181 = !{!"p2 _ZTSN22hb_serialize_context_t8object_tE", !177, i64 0}
!182 = !{!"_ZTS11hb_vector_tIPN22hb_serialize_context_t8object_tELb0EE", !96, i64 0, !96, i64 4, !181, i64 8}
!183 = !{!"p1 _ZTSN12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE6item_tE", !103, i64 0}
!184 = !{!"_ZTS12hb_hashmap_tIPKN22hb_serialize_context_t8object_tEjLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !183, i64 40}
!185 = !{!"_ZTS22hb_serialize_context_t", !107, i64 0, !107, i64 8, !107, i64 16, !107, i64 24, !107, i64 32, !96, i64 40, !175, i64 44, !180, i64 48, !176, i64 72, !182, i64 80, !184, i64 96}
!186 = !{!185, !107, i64 0}
!187 = !{!185, !107, i64 24}
!188 = !{!184, !101, i64 16}
!189 = !{!184, !183, i64 40}
!190 = !{!185, !175, i64 44}
!191 = !{!185, !107, i64 8}
!192 = !{!185, !107, i64 16}
!193 = !{!185, !107, i64 32}
!194 = !{!185, !96, i64 40}
!195 = !{!182, !96, i64 4}
!196 = !{!182, !96, i64 0}
!197 = !{!182, !181, i64 8}
!198 = !{!"branch_weights", !"expected", i32 1914247, i32 2145569401}
!199 = !{!"branch_weights", i32 1, i32 2147483647}
!200 = !{!176, !176, i64 0}
!201 = !{!"_ZTS21hb_dispatch_context_tI19hb_subset_context_tbLj0EE", !96, i64 0}
!202 = !{!"p1 _ZTS9hb_blob_t", !103, i64 0}
!203 = !{!"p1 _ZTS16hb_subset_plan_t", !103, i64 0}
!204 = !{!"p1 _ZTS22hb_serialize_context_t", !103, i64 0}
!205 = !{!"_ZTS19hb_subset_context_t", !201, i64 0, !202, i64 8, !203, i64 16, !204, i64 24, !96, i64 32}
!206 = !{!205, !202, i64 8}
!207 = !{!205, !203, i64 16}
!208 = !{!205, !204, i64 24}
!209 = !{!205, !96, i64 32}
!210 = !{!"_ZTS11hb_packed_tItE", !134, i64 0}
!211 = !{!210, !134, i64 0}
!212 = !{i64 3991855}
!213 = !{i8 0, i8 2}
!214 = !{!185, !176, i64 72}
!215 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!216 = !{!185, !96, i64 84}
!217 = !{!"branch_weights", i32 4001, i32 4000000}
!218 = !{!96, !96, i64 0}
!219 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!220 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!221 = !{!101, !101, i64 0}
!222 = !{!180, !176, i64 0}
!223 = !{!179, !96, i64 4}
!224 = !{!179, !178, i64 8}
!225 = !{!"p1 _ZTSN14hb_free_pool_tIN22hb_serialize_context_t8object_tELj32EE7chunk_tE", !103, i64 0}
!226 = !{!225, !225, i64 0}
!227 = !{!179, !96, i64 0}
!228 = !{!166, !165, i64 3088}
!229 = !{!151, !101, i64 16}
!230 = !{}
!231 = !{!151, !150, i64 40}
!232 = !{!151, !96, i64 32}
!233 = !{!"_ZTSN2hb10unique_ptrI9hb_blob_tEE", !202, i64 0}
!234 = !{!233, !202, i64 0}
!235 = !{!"_ZTS21hb_dispatch_context_tI21hb_sanitize_context_tbLj0EE", !96, i64 0}
!236 = !{!235, !96, i64 0}
!237 = !{!"_ZTS21hb_sanitize_context_t", !235, i64 0, !107, i64 8, !107, i64 16, !96, i64 24, !96, i64 28, !96, i64 32, !96, i64 36, !101, i64 40, !202, i64 48, !96, i64 56, !101, i64 60, !101, i64 61}
!238 = !{!237, !202, i64 48}
!239 = !{!237, !101, i64 61}
!240 = !{!237, !96, i64 56}
!241 = !{!237, !101, i64 60}
!242 = !{!237, !101, i64 40}
!243 = !{!237, !107, i64 16}
!244 = !{!237, !107, i64 8}
!245 = !{!237, !96, i64 24}
!246 = !{!237, !96, i64 28}
!247 = !{!237, !96, i64 36}
!248 = !{!"branch_weights", i32 2000, i32 2002}
!249 = !{!"branch_weights", i32 1073205, i32 2146410443}
!250 = !{!"_ZTS11hb_packed_tIjE", !96, i64 0}
!251 = !{!250, !96, i64 0}
!252 = !{!"branch_weights", i32 2002, i32 2000}
!253 = !{!"p1 _ZTSN2OT20MarkGlyphSetsFormat1E", !103, i64 0}
!254 = !{!253, !253, i64 0}
!255 = !{!151, !96, i64 24}
!256 = !{!151, !96, i64 28}
!257 = !{!151, !96, i64 20}
!258 = !{!151, !134, i64 18}
!259 = !{!129, !101, i64 48}
!260 = !{!128, !96, i64 4}
!261 = !{!128, !96, i64 36}
!262 = !{!"_ZTS16hb_vector_size_tIyLj64EE", !95, i64 0}
!263 = !{!"_ZTS13hb_bit_page_t", !96, i64 0, !262, i64 8}
!264 = !{!263, !96, i64 0}
!265 = !{!"long long", !95, i64 0}
!266 = !{!265, !265, i64 0}
!267 = !{!184, !96, i64 24}
!268 = !{!184, !96, i64 20}
!269 = !{!"p1 _ZTSN22hb_serialize_context_t8object_t6link_tE", !103, i64 0}
!270 = !{!"_ZTS11hb_vector_tIN22hb_serialize_context_t8object_t6link_tELb0EE", !96, i64 0, !96, i64 4, !269, i64 8}
!271 = !{!270, !96, i64 0}
!272 = !{!270, !96, i64 4}
!273 = !{!270, !269, i64 8}
!274 = !{!"_ZTSN22hb_serialize_context_t8object_tE", !107, i64 0, !107, i64 8, !270, i64 16, !270, i64 32, !176, i64 48}
!275 = !{!274, !176, i64 48}
!276 = !{!103, !103, i64 0}
!277 = !{!180, !96, i64 12}
!278 = !{!107, !107, i64 0}
!279 = !{!274, !96, i64 20}
!280 = !{!274, !96, i64 36}
!281 = !{!166, !101, i64 92}
!282 = !{!95, !95, i64 0}
!283 = !{!155, !96, i64 4}
!284 = !{!"p1 _ZTSN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE6item_tE", !103, i64 0}
!285 = !{!"_ZTS12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !284, i64 40}
!286 = !{!285, !101, i64 16}
!287 = !{!136, !101, i64 16}
!288 = !{!136, !135, i64 40}
!289 = !{!"p1 _ZTSN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tE", !103, i64 0}
!290 = !{!"_ZTS11hb_vector_tIN2OT18TupleVariationDataINS0_7NumTypeILb1EtLj2EEEE18tuple_variations_tELb0EE", !96, i64 0, !96, i64 4, !289, i64 8}
!291 = !{!"p1 _ZTS12hb_hashmap_tIj6TripleLb0EE", !103, i64 0}
!292 = !{!"_ZTS11hb_vector_tI12hb_hashmap_tIj6TripleLb0EELb0EE", !96, i64 0, !96, i64 4, !291, i64 8}
!293 = !{!"p2 _ZTS12hb_hashmap_tIj6TripleLb0EE", !177, i64 0}
!294 = !{!"_ZTS11hb_vector_tIPK12hb_hashmap_tIj6TripleLb0EELb0EE", !96, i64 0, !96, i64 4, !293, i64 8}
!295 = !{!"p1 _ZTS11hb_vector_tIiLb0EE", !103, i64 0}
!296 = !{!"_ZTS11hb_vector_tIS_IiLb0EELb0EE", !96, i64 0, !96, i64 4, !295, i64 8}
!297 = !{!"p1 _ZTSN2OT20delta_row_encoding_tE", !103, i64 0}
!298 = !{!"_ZTS11hb_vector_tIN2OT20delta_row_encoding_tELb0EE", !96, i64 0, !96, i64 4, !297, i64 8}
!299 = !{!"_ZTSN2OT17item_variations_tE", !290, i64 0, !160, i64 16, !292, i64 32, !294, i64 48, !285, i64 64, !296, i64 112, !298, i64 128, !137, i64 144, !101, i64 192}
!300 = !{!299, !101, i64 192}
!301 = !{!147, !146, i64 8}
!302 = !{!147, !96, i64 4}
!303 = !{!"_ZTSN22hb_serialize_context_t8object_t6link_tE", !96, i64 0, !96, i64 0, !96, i64 0, !96, i64 0, !96, i64 4, !96, i64 8}
!304 = !{!303, !96, i64 8}
!305 = !{!166, !101, i64 97}
!306 = !{!"branch_weights", i32 2146410443, i32 1073205}
!307 = !{!166, !101, i64 98}
!308 = !{!153, !96, i64 20}
!309 = !{!290, !289, i64 8}
!310 = !{!290, !96, i64 4}
!311 = !{!"p1 _ZTSN2OT13tuple_delta_tE", !103, i64 0}
!312 = !{!"_ZTS11hb_vector_tIN2OT13tuple_delta_tELb0EE", !96, i64 0, !96, i64 4, !311, i64 8}
!313 = !{!312, !96, i64 4}
!314 = !{!312, !96, i64 0}
!315 = !{!274, !107, i64 0}
!316 = !{!303, !96, i64 4}
!317 = !{!149, !96, i64 28}
!318 = !{!149, !148, i64 40}
!319 = !{!"_ZTS9hb_pair_tIjiE", !96, i64 0, !96, i64 4}
!320 = !{!319, !96, i64 0}
!321 = !{!"branch_weights", i32 1, i32 127}
!322 = !{!136, !96, i64 32}
!323 = !{!298, !96, i64 0}
!324 = !{!298, !96, i64 4}
!325 = !{!298, !297, i64 8}
!326 = !{!"p2 _ZTS11hb_vector_tIiLb0EE", !177, i64 0}
!327 = !{!"_ZTS11hb_vector_tIPKS_IiLb0EELb0EE", !96, i64 0, !96, i64 4, !326, i64 8}
!328 = !{!327, !96, i64 0}
!329 = !{!327, !96, i64 4}
!330 = !{!327, !326, i64 8}
!331 = !{!"_ZTS11hb_vector_tIhLb0EE", !96, i64 0, !96, i64 4, !107, i64 8}
!332 = !{!331, !96, i64 0}
!333 = !{!331, !96, i64 4}
!334 = !{!331, !107, i64 8}
!335 = !{!296, !96, i64 0}
!336 = !{!296, !96, i64 4}
!337 = !{!296, !295, i64 8}
!338 = !{!155, !96, i64 0}
!339 = !{!155, !154, i64 8}
!340 = !{!285, !284, i64 40}
!341 = !{!294, !96, i64 0}
!342 = !{!294, !96, i64 4}
!343 = !{!294, !293, i64 8}
!344 = !{!160, !96, i64 0}
!345 = !{!160, !96, i64 4}
!346 = !{!160, !154, i64 8}
!347 = !{!290, !96, i64 0}
!348 = !{!136, !96, i64 20}
!349 = !{!"p1 _ZTSN12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE6item_tE", !103, i64 0}
!350 = !{!"_ZTS12hb_hashmap_tIPK11hb_vector_tIbLb0EES0_IhLb0EELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !349, i64 40}
!351 = !{!350, !101, i64 16}
!352 = !{!350, !349, i64 40}
!353 = !{!"p1 _ZTSN12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE6item_tE", !103, i64 0}
!354 = !{!"_ZTS12hb_hashmap_tIPK11hb_vector_tIbLb0EEjLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !353, i64 40}
!355 = !{!354, !101, i64 16}
!356 = !{!312, !311, i64 8}
!357 = !{!134, !134, i64 0}
!358 = !{!349, !349, i64 0}
!359 = !{!354, !353, i64 40}
!360 = !{!353, !353, i64 0}
!361 = !{!299, !96, i64 4}
!362 = !{!299, !96, i64 20}
!363 = !{!"p1 _ZTS11hb_vector_tIhLb0EE", !103, i64 0}
!364 = !{!"_ZTSN2OT18TupleVariationDataINS_7NumTypeILb1EtLj2EEEE18tuple_variations_tE", !312, i64 0, !350, i64 16, !354, i64 64, !363, i64 112, !96, i64 120, !101, i64 124, !101, i64 125}
!365 = !{!364, !96, i64 4}
!366 = !{!153, !96, i64 28}
!367 = !{!153, !152, i64 40}
!368 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!369 = !{!"p1 _ZTSN12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE6item_tE", !103, i64 0}
!370 = !{!"_ZTS12hb_hashmap_tIjPK11hb_vector_tIiLb0EELb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !369, i64 40}
!371 = !{!370, !101, i64 16}
!372 = !{!370, !369, i64 40}
!373 = !{!"p1 _ZTSN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_tE", !103, i64 0}
!374 = !{!"_ZTS12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE", !106, i64 0, !101, i64 16, !134, i64 18, !96, i64 20, !96, i64 24, !96, i64 28, !96, i64 32, !373, i64 40}
!375 = !{!374, !101, i64 16}
!376 = !{!374, !373, i64 40}
!377 = !{!"p1 bool", !103, i64 0}
!378 = !{!"_ZTS11hb_vector_tIbLb0EE", !96, i64 0, !96, i64 4, !377, i64 8}
!379 = !{!"p1 float", !103, i64 0}
!380 = !{!"_ZTS11hb_vector_tIfLb0EE", !96, i64 0, !96, i64 4, !379, i64 8}
!381 = !{!"p1 _ZTSN2OT7HBFixedINS_7NumTypeILb1EsLj2EEELj14EEE", !103, i64 0}
!382 = !{!"_ZTS11hb_vector_tIN2OT7HBFixedINS0_7NumTypeILb1EsLj2EEELj14EEELb0EE", !96, i64 0, !96, i64 4, !381, i64 8}
!383 = !{!"_ZTSN2OT13tuple_delta_tE", !153, i64 0, !378, i64 48, !380, i64 64, !380, i64 80, !331, i64 96, !331, i64 112, !382, i64 128, !382, i64 144}
!384 = !{!285, !96, i64 32}
!385 = !{!"_ZTSN12hb_hashmap_tIPKS_Ij6TripleLb0EEjLb0EE6item_tE", !291, i64 0, !96, i64 8, !96, i64 8, !96, i64 8, !96, i64 12}
!386 = !{!385, !291, i64 0}
!387 = !{!285, !96, i64 28}
!388 = !{!380, !96, i64 4}
!389 = !{!"float", !95, i64 0}
!390 = !{!389, !389, i64 0}
!391 = !{!295, !295, i64 0}
!392 = !{!"llvm.loop.unroll.disable"}
!393 = !{!374, !96, i64 32}
!394 = !{!"_ZTSN12hb_hashmap_tIPK11hb_vector_tIiLb0EEjLb0EE6item_tE", !295, i64 0, !96, i64 8, !96, i64 8, !96, i64 8, !96, i64 12}
!395 = !{!394, !295, i64 0}
!396 = !{!"llvm.loop.isvectorized", i32 1}
!397 = !{!"llvm.loop.unroll.runtime.disable"}
!398 = !{!"branch_weights", i32 8, i32 24}
end_hunk_16
